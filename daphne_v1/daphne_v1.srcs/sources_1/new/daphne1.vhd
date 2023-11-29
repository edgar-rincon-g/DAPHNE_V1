----------------------------------------------------------------------------------
-- Company: Universidad EIA
-- Engineer: Daniel Avila Gomez
-- 
-- Create Date: 01.11.2023 13:27:54
-- Design Name: DAPHNE V1 Firmware Top Module
-- Module Name: daphne1 - Behavioral
-- Project Name: DAPHNE V1
-- Target Devices: XC7A200T-2FBG676C
-- Tool Versions: 2023.1
-- Description: 
-- Instantiates the top module for the DAPHNE V1 Board
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.02 - File Modified
-- Additional Comments:
-- Added new version of the self trigger Module that includes the Neural Network
-- Self Trigger, has a new output but is unused by the DAPHNE board as of this version
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

library UNIMACRO;
use UNIMACRO.VComponents.all;

use work.daphne1_package.all;

entity daphne1 is
    Port ( 
        -- System General Connections
    -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------    
        reset_n                     : in std_logic;                             -- Active LOW Async Reset from the Microcontroller
        gpi, gpo                    : in std_logic;
        sysclk_p, sysclk_n          : in std_logic;                             -- System Clock LVDS 100 MHz from Local Oscillator
        
        -- AFE Interface, LVDS, 5 AFE chips, each AFE has 8 DATA + 1 FCLK + 1DCLK outputs
    -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        afe_p, afe_n                : array_5x8_type;                           -- (7...0 Data)
        afe_dclk_p, afe_dclk_n      : in std_logic_vector(4 downto 0);          -- DCLK
        afe_fclk_p, afe_fclk_n      : in std_logic_vector(4 downto 0);          -- FCLK
        afe_clk_p, afe_clk_n        : out std_logic;                            -- Copy of 62.5 MHz master clock sent to AFEs
        
        -- Two high speed links to DAQ
        -- For FELIX links use TX only, disable RX, line rate = 4.809Gbps, refclk = 120.237 MHz
    -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        -- DAQ0
        daq0_tx_p, daq0_tx_n        : out std_logic;
        daq0_rx_p, daq0_rx_n        : in std_logic;
        daq0_sfp_abs                : in std_logic;
        daq0_sfp_los                : in std_logic;
        daq0_sfp_tx_dis             : out std_logic;
        daq0_sfp_scl, daq0_sfp_sda  : out std_logic;                            -- SFP I2C interface (optional)
    -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        -- DAQ1    
--        daq1_tx_p, daq1_tx_n        : out std_logic;
--        daq1_rx_p, daq1_rx_n        : in std_logic;
        daq1_sfp_abs                : in std_logic;
        daq1_sfp_los                : in std_logic;
        daq1_sfp_tx_dis             : out std_logic;
        daq1_sfp_scl, daq1_sfp_sda  : out std_logic;                            -- SFP I2C interface (optional)
        
        -- One MGT used for GbE interface, quad 213, channel 0
    -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        daq_refclk_p, daq_refclk_n  : in std_logic;                             -- MGT REFCLK for GbE, LVDS, 125.000 MHz, quad 213, refclk0
        
        -- Timing Endpoint Interface (SFP)
    -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        cdr_sfp_los                 : in std_logic;                             -- Loss of signal
        cdr_sfp_abs                 : in std_logic;                             -- High if module is absent
        cdr_sfp_tx_dis              : out std_logic;                            -- High to disable timing SFP TX
--        cdr_sfp_tx_p, cdr_sfp_tx_n  : out std_logic;                            -- Send data upstream (optional)
        
        -- Timing Endpoint Interface (CDR chip)
    -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--        cdr_clk_p, cdr_clk_n        : in std_logic;                             -- LVDS recovered clock 312MHz (not used anymore) ?
        cdr_data_p, cdr_data_n      : in std_logic;                             -- LVDS recovered serial data (actually the clock)
        cdr_los                     : in std_logic;                             -- Loss of signal
        cdr_lol                     : in std_logic;                             -- Loss of lock
        
        -- SPI slave interface for communication with uC
    -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        spi_clk                     : in std_logic;
        spi_csn                     : in std_logic;
        spi_mosi                    : in std_logic;
        spi_miso                    : out std_logic;
        spi_irq                     : out std_logic;
        
        -- Misc Board I/O
    -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        led                         : out std_logic_vector(5 downto 0)          -- DAPHNE PCB LEDs are active LOW
    );
end daphne1;

architecture daphne1_arch of daphne1 is

-- Main System Auxiliary Signals Declaration
--------------------------------------------------------------------------------------------------------------------------------------------------------------------
signal async_rst                                        : std_logic;
signal sys_clk62_5, sys_clk100, sys_clk125, sys_clk200  : std_logic;

-- MMCM Timing Endpoint Auxiliary Signals Declaration
--------------------------------------------------------------------------------------------------------------------------------------------------------------------
signal mmcm0_locked                                     : std_logic;

-- AFE5808A Auxiliary Signals Declaration
--------------------------------------------------------------------------------------------------------------------------------------------------------------------
signal afe_data                                         : std_logic_vector(13 downto 0);
signal afe_se_clk                                       : std_logic;
signal data_rdy, pll_afe_lck                            : std_logic;
signal align_ph_sel                                     : std_logic_vector(1 downto 0);
signal align_ph_ovfl, align_bitslip_on                  : std_logic;

-- Self Trigger Auxiliary Signals Declaration
--------------------------------------------------------------------------------------------------------------------------------------------------------------------
signal filt_out, fifo_i, fifo_o                         : std_logic_vector(13 downto 0);
signal st_calc_value_out                                : std_logic_vector(47 downto 0);
signal trigger, fifo_rd_out, fifo_wr_out                : std_logic;
signal fifo_a_empty, fifo_a_full, fifo_full, fifo_empty : std_logic;
signal fifo_wr_err, fifo_rd_err                         : std_logic;
signal st_axi_data                                      : std_logic_vector(7 downto 0);
signal st_axi_valid, st_axi_ready                       : std_logic;
signal st_axi_last, st_axi_user                         : std_logic;

-- Ethernet Module Auxiliary Signals Declaration
--------------------------------------------------------------------------------------------------------------------------------------------------------------------
signal eth_com_rx_axi_data                              : std_logic_vector(7 downto 0);
signal eth_com_rx_axi_ready, eth_com_rx_axi_valid       : std_logic;
signal eth_com_rx_axi_last, eth_com_rx_axi_user         : std_logic;
signal eth_com_rx_payload                               : std_logic_vector(7 downto 0);
signal eth_trig_reg, valid_last                         : std_logic;        

-- External Trigger From Ethernet Signals Declaration
--------------------------------------------------------------------------------------------------------------------------------------------------------------------
signal eth_com_rx_payload_reg                           : std_logic_vector(7 downto 0);
signal ext_trig                                         : std_logic;        

-- External Trigger From Ethernet Signals Declaration
--------------------------------------------------------------------------------------------------------------------------------------------------------------------
signal eth_read_reg, ext_read                           : std_logic;

-- Components Declaration
--------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Timing Endpoint Module
--------------------------------------------------------------------------------------------------------------------------------------------------------------------
component endpoint
    Port (
        -- System Clocking and Reset Inputs
    -------------------------------------------------------------------------------------------------------------------------------------------
        reset_async                 : in std_logic;
        sysclk_p, sysclk_n          : in std_logic;
        
        -- External CDR chip interface: ignore CLKOUT, LOS, and LOL
    -------------------------------------------------------------------------------------------------------------------------------------------
        cdr_data_p, cdr_data_n      : in std_logic;         -- LVDS recovered serial data ACKCHYUALLY the clock!

        -- Misc Interface Signals
    -------------------------------------------------------------------------------------------------------------------------------------------
--        mmcm1_rst                   : in std_logic;
--        mmcm1_lck                   : out std_logic;
        mmcm0_lck                   : out std_logic;
        
        -- System Output Clocks
    -------------------------------------------------------------------------------------------------------------------------------------------
        sys_clk100                  : out std_logic;
        sys_clk125                  : out std_logic; 
        sys_clk200                  : out std_logic;
        sys_clk62_5                 : out std_logic;
        afe_clk_p, afe_clk_n        : out std_logic         -- Copy of 62.5 MHz master clock sent to AFEs
    );
end component endpoint;

-- AFE5808A Data Acquisition/Capturing - Aligning Module
--------------------------------------------------------------------------------------------------------------------------------------------------------------------
component AcquisitionManager is
    Generic (
        n_ch    : integer   := 1
    );
    Port ( 
        -- Module Inputs
-----------------------------------------------------------------------------------------------------------------------------------
        in_P_clk_dt_ports   : in std_logic;                     -- Digital Bit Clock Differential P Input
        in_N_clk_dt_ports   : in std_logic;                     -- Digital Bit Clock Differential N Input
        in_P_clk_fr_ports   : in std_logic;                     -- Frame Clock Differential P Input
        in_N_clk_fr_ports   : in std_logic;                     -- Frame Clock Differential N Input
        in_P_data_ports     : in std_logic;                     -- Data Differential P Input
        in_N_data_ports     : in std_logic;                     -- Data Differential N Input
        sys_clk             : in std_logic;                     -- System Clock 100 MHz
        glob_rst            : in std_logic;                     -- System Reset, Active HIGH
        alignment_mode      : in std_logic;                     -- '0' Automatic Alignment, '1' Manual Alignment
        train_pat_act       : in std_logic;                     -- Specific Training Pattern Active in the AFE Outputs
        custom_pat_act      : in std_logic;                     -- Custom Training Pattern Active in the AFE Outputs 
        
        -- Module Outputs
-----------------------------------------------------------------------------------------------------------------------------------
        phase_selected      : out std_logic_vector(1 downto 0); -- Selected Phase to Align the Data
        ph_overflow         : out std_logic;                    -- Phase Overflowed (Digital Bit Clock Alignment)
        bistlip_on          : out std_logic;                    -- Bitslip Being Executed      
        dt_rdy              : out std_logic;                    -- Data Aligned
        clk_div             : out std_logic;                    -- Synthetic AFE Frame CLock Derived from Digital Clock (In Phase)
        pll_lck_o           : out std_logic;                    -- AFE Digital Clock PLL Locked
        data_output         : out std_logic_vector(13 downto 0) -- Output of the Iserdese Modules
    );
end component AcquisitionManager;

-- Self Trigger to AXI Stream Module
--------------------------------------------------------------------------------------------------------------------------------------------------------------------
component selfTrigger_Module 
    Port ( 
        -- Module Inputs
    ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        afe_data            : in std_logic_vector(13 downto 0);     -- Aligned Data to Save from AFE
        dt_rdy              : in std_logic;                         -- Data Aligned
        rst                 : in std_logic;                         -- Async Reset
        clk                 : in std_logic;                         -- AFE Divided Clock Used by the High Pass Filter (62.5 MHz) And the Write Clock of the FIFO 
        rd_clk              : in std_logic;                         -- Read Clock Used by the FIFO (62.5 MHz) Asynchronous to WR_CLK    
        sys_clk             : in std_logic;                         -- This is AXI Stream Clock (125 MHz)
        rd_ctrl             : in std_logic;                         -- Read Control Input ('0' Don't read the FIFO after a save, '1' Read the FIFO as soon as it stops saving)
        wr_enable_signal    : in std_logic;                         -- Auxiliar External Write Enable for the FIFO
        rd_enable_signal    : in std_logic;                         -- Auxiliar External Read Enable for the FIFO
        
        -- Module Outputs
    ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        filt_out            : out std_logic_vector(13 downto 0);    -- Output of the filter
        calc_value_out      : out std_logic_vector(47 downto 0);    -- Output of the Self Trigger Module (Calculated Correlation or Calculated Sigmoid Prediction)
        net_agg             : out std_logic_vector(47 downto 0);    -- Output of the Seff Trigger Neural Network (Aggregation of Output Neuron)
        fifo_input_data     : out std_logic_vector(13 downto 0);    -- Output of the Self Trigger Correlation Module (Internally connected to the FIFO, 64 Registers Delayed AFE Data)
        trigger             : out std_logic;                        -- Trigger Output
        fifo_rd_out         : out std_logic;                        -- Real Read Enable used for the FIFO (Mapped Internally)
        fifo_wr_out         : out std_logic;                        -- Real Write Enable used for the FIFO (Mapped Internally)
        fifo_o              : out std_logic_vector(13 downto 0);    -- Output Data of the FIFO    
        fifo_a_empty        : out std_logic;                        -- Almost Empty Flag of the FIFO
        fifo_a_full         : out std_logic;                        -- Amost Full Flag of the FIFO (Interpreted as the real Full of the FIFO)
        fifo_empty          : out std_logic;                        -- Empty Flag of the FIFO
        fifo_full           : out std_logic;                        -- Full Flag of the FIFO
        fifo_wr_err         : out std_logic;                        -- Write Error Flag of the FIFO (Internally Generated Not Real One)
        fifo_rd_err         : out std_logic;                        -- Read Error Flag of the FIFO (Internally Generated Not Real One)
        axi_data            : out std_logic_vector(7 downto 0);     -- Output Data of the FIFO in AXI Stream Interface
        axi_valid           : out std_logic;                        -- AXI Stream Valid from the FIFO Read Process
        axi_ready           : in std_logic;                         -- AXI Stream Ready for the FIFO Read Process
        axi_last            : out std_logic;                        -- AXI Stream Last from the FIFO Read Process
        axi_user            : out std_logic                         -- AXI Stream User from the FIFO Read Process (Always '1')
    );
end component selfTrigger_Module;

-- Ethernet Streaming Module
--------------------------------------------------------------------------------------------------------------------------------------------------------------------
component eth_core is
    Port (       
        -- GTP Inputs and Outputs
-------------------------------------------------------------------------------------------------------------------------------------------------------
        gtp_refclk_p, gtp_refclk_n          : in std_logic;                         -- GTP Ref Clock Inputs (Direct to Top Level)        
        gtp_tx_p, gtp_tx_n                  : out std_logic;                        -- GTP Differential Tx Outputs (Direct to Top Level)
        gtp_rx_p, gtp_rx_n                  : in std_logic;                         -- GTP Differential Rx Inputs (Direct to Top Level)
        
        -- General Core System Inputs
-------------------------------------------------------------------------------------------------------------------------------------------------------
        rst                                 : in std_logic;                         -- System Reset
        clk125, clk200                      : in std_logic;                         -- System Clocks
        
        -- AXI Stream Module Tx Input
-------------------------------------------------------------------------------------------------------------------------------------------------------
        eth_tx_axis_tdata                   : in std_logic_vector(7 downto 0);
        eth_tx_axis_tvalid                  : in std_logic;
        eth_tx_axis_tready                  : out std_logic;
        eth_tx_axis_tlast                   : in std_logic;
        eth_tx_axis_tuser                   : in std_logic;
        
        -- AXI Stream Module Rx Output
-------------------------------------------------------------------------------------------------------------------------------------------------------
        eth_rx_axis_tdata                   : out std_logic_vector(7 downto 0);
        eth_rx_axis_tvalid                  : out std_logic;
        eth_rx_axis_tready                  : in std_logic;
        eth_rx_axis_tlast                   : out std_logic;
        eth_rx_axis_tuser                   : out std_logic;
        
        -- Misc Core Outputs
-------------------------------------------------------------------------------------------------------------------------------------------------------
        eth_payload                         : out std_logic_vector(7 downto 0)
    );
end component eth_core;

begin   

    -- System Reset
------------------------------------------------------------------------------------------------------------------------------------------------------------------
    async_rst               <= not(reset_n);
    
    -- System Timing Endpoint Module Instantiation
------------------------------------------------------------------------------------------------------------------------------------------------------------------
    SYS_TIMING_ENPT : endpoint
        port map (
            -- System Clocking and Reset Inputs
        -------------------------------------------------------------------------------------------------------------------------------------------
            reset_async                 => async_rst,
            sysclk_p                    => sysclk_p, 
            sysclk_n                    => sysclk_n,
            
            -- External CDR chip interface: ignore CLKOUT, LOS, and LOL
        -------------------------------------------------------------------------------------------------------------------------------------------
            cdr_data_p                  => cdr_data_p,
            cdr_data_n                  => cdr_data_n,          -- LVDS recovered serial data ACKCHYUALLY the clock!
    
            -- Misc Interface Signals
        -------------------------------------------------------------------------------------------------------------------------------------------
            mmcm0_lck                   => mmcm0_locked,
            
            -- System Output Clocks
        -------------------------------------------------------------------------------------------------------------------------------------------
            sys_clk100                  => sys_clk100,
            sys_clk125                  => sys_clk125, 
            sys_clk200                  => sys_clk200,
            sys_clk62_5                 => sys_clk62_5,
            afe_clk_p                   => afe_clk_p,           -- Copy of 62.5 MHz master clock sent to AFEs
            afe_clk_n                   => afe_clk_n            -- Copy of 62.5 MHz master clock sent to AFEs
        );
     
    -- AFE5808A - 0, Channel 0
------------------------------------------------------------------------------------------------------------------------------------------------------------------
    AFE0_CH_0 : AcquisitionManager
        generic map (
            n_ch                        => 1
        )
        port map ( 
            -- Module Inputs
    -----------------------------------------------------------------------------------------------------------------------------------
            in_P_clk_dt_ports           => afe_dclk_p(1),       -- Digital Bit Clock Differential P Input
            in_N_clk_dt_ports           => afe_dclk_n(1),       -- Digital Bit Clock Differential N Input
            in_P_clk_fr_ports           => afe_fclk_p(1),       -- Frame Clock Differential P Input
            in_N_clk_fr_ports           => afe_fclk_n(1),       -- Frame Clock Differential N Input
            in_P_data_ports             => afe_p(1)(7),         -- Data Differential P Input
            in_N_data_ports             => afe_n(1)(7),         -- Data Differential N Input
            sys_clk                     => sys_clk100,          -- System Clock 100 MHz
            glob_rst                    => async_rst,           -- System Reset, Active HIGH
            alignment_mode              => '0',                 -- '0' Automatic Alignment, '1' Manual Alignment
            train_pat_act               => '0',                 -- Specific Training Pattern Active in the AFE Outputs
            custom_pat_act              => '0',                 -- Custom Training Pattern Active in the AFE Outputs 
            
            -- Module Outputs
    -----------------------------------------------------------------------------------------------------------------------------------
            phase_selected              => align_ph_sel,        -- Selected Phase to Align the Data
            ph_overflow                 => align_ph_ovfl,       -- Phase Overflowed (Digital Bit Clock Alignment)
            bistlip_on                  => align_bitslip_on,    -- Bitslip Being Executed      
            dt_rdy                      => data_rdy,            -- Data Aligned
            clk_div                     => afe_se_clk,          -- Synthetic AFE Frame CLock Derived from Digital Clock (In Phase)
            pll_lck_o                   => pll_afe_lck,         -- AFE Digital Clock PLL Locked
            data_output                 => afe_data             -- Output of the Iserdese Modules
        );
        
    -- AFE5808A #0, Self Trigger for the Channel 0 Instantiation 
------------------------------------------------------------------------------------------------------------------------------------------------------------------    
    AFE0_ST_CH_0 : selfTrigger_Module 
        port map ( 
            -- Module Inputs
        ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
            afe_data                    => afe_data,            -- Aligned Data to Save from AFE
            dt_rdy                      => data_rdy,            -- Data Aligned
            rst                         => async_rst,           -- Async Reset
            clk                         => afe_se_clk,          -- AFE Divided Clock Used by the High Pass Filter (62.5 MHz) And the Write Clock of the FIFO 
            rd_clk                      => sys_clk62_5,         -- Read Clock Used by the FIFO (62.5 MHz) Asynchronous to WR_CLK    
            sys_clk                     => sys_clk125,          -- This is AXI Clock, not System Clock 100 Mhz. Was initially sys_clk100,
            rd_ctrl                     => '1',                 -- Read Control Input ('0' Don't read the FIFO after a save, '1' Read the FIFO as soon as it stops saving)
            wr_enable_signal            => ext_trig,            -- Auxiliar External Write Enable for the FIFO
            rd_enable_signal            => ext_read,            -- Auxiliar External Read Enable for the FIFO
            
            -- Module Outputs
        ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
            filt_out                    => filt_out,            -- Output of the filter            
            calc_value_out              => st_calc_value_out,   -- Output of the Self Trigger Module (Calculated Correlation or Calculated Sigmoid Prediction)
            net_agg                     => open,                -- Output of the Seff Trigger Neural Network (Aggregation of Output Neuron) -- UNUSED!
            fifo_input_data             => fifo_i,              -- Output of the Self Trigger Neural Network Module (Internally connected to the FIFO, 79 Registers Delayed AFE Data)
            trigger                     => trigger,             -- Trigger Output
            fifo_rd_out                 => fifo_rd_out,         -- Real Read Enable used for the FIFO (Mapped Internally)
            fifo_wr_out                 => fifo_wr_out,         -- Real Write Enable used for the FIFO (Mapped Internally)
            fifo_o                      => fifo_o,              -- Output Data of the FIFO    
            fifo_a_empty                => fifo_a_empty,        -- Almost Empty Flag of the FIFO
            fifo_a_full                 => fifo_a_full,         -- Amost Full Flag of the FIFO (Interpreted as the real Full of the FIFO)
            fifo_empty                  => fifo_empty,          -- Empty Flag of the FIFO
            fifo_full                   => fifo_full,           -- Full Flag of the FIFO
            fifo_wr_err                 => fifo_wr_err,         -- Write Error Flag of the FIFO (Internally Generated Not Real One)
            fifo_rd_err                 => fifo_rd_err,         -- Read Error Flag of the FIFO (Internally Generated Not Real One)
            axi_data                    => st_axi_data,         -- Output Data of the FIFO in AXI Stream Interface
            axi_valid                   => st_axi_valid,        -- AXI Stream Valid from the FIFO Read Process
            axi_ready                   => st_axi_ready,        -- AXI Stream Ready for the FIFO Read Process
            axi_last                    => st_axi_last,         -- AXI Stream Last from the FIFO Read Process
            axi_user                    => st_axi_user          -- AXI Stream User from the FIFO Read Process (Always '1')
        );
        
    -- DAPHNE Ethernet Streaming Module
------------------------------------------------------------------------------------------------------------------------------------------------------------------
    ETH_MOD : eth_core
        port map ( 
            -- GTP Inputs and Outputs
    -------------------------------------------------------------------------------------------------------------------------------------------------------
            gtp_refclk_p                => daq_refclk_p,        -- GTP Ref Clock Input P (Direct to Top Level)        
            gtp_refclk_n                => daq_refclk_n,        -- GTP Ref Clock Input N (Direct to Top Level)        
            gtp_tx_p                    => daq0_tx_p,           -- GTP Differential Tx Output P (Direct to Top Level)
            gtp_tx_n                    => daq0_tx_n,           -- GTP Differential Tx Output N (Direct to Top Level)
            gtp_rx_p                    => daq0_rx_p,           -- GTP Differential Tx Output P (Direct to Top Level)
            gtp_rx_n                    => daq0_rx_n,           -- GTP Differential Rx Input N (Direct to Top Level)
            
            -- General Core System Inputs
    -------------------------------------------------------------------------------------------------------------------------------------------------------
            rst                         => async_rst,           -- System Reset
            clk125                      => sys_clk125,          -- System Clock 125 MHz
            clk200                      => sys_clk200,          -- System Clock 200 MHz
            
            -- AXI Stream Module Tx Input
    -------------------------------------------------------------------------------------------------------------------------------------------------------
            eth_tx_axis_tdata           => st_axi_data,         -- Connect to Self Trigger Module
            eth_tx_axis_tvalid          => st_axi_valid,        -- Connect to Self Trigger Module
            eth_tx_axis_tready          => st_axi_ready,        -- Connect to Self Trigger Module
            eth_tx_axis_tlast           => st_axi_last,         -- Connect to Self Trigger Module
            eth_tx_axis_tuser           => st_axi_user,         -- Connect to Self Trigger Module
            
            -- AXI Stream Module Rx Output
    -------------------------------------------------------------------------------------------------------------------------------------------------------
            eth_rx_axis_tdata           => open,                -- Reserved For Future Use...  
            eth_rx_axis_tvalid          => open,                -- Reserved For Future Use...
            eth_rx_axis_tready          => '1',                 -- Reserved For Future Use...
            eth_rx_axis_tlast           => open,                -- Reserved For Future Use...
            eth_rx_axis_tuser           => open,                -- Reserved For Future Use...
            
            -- Misc Core Outputs
    -------------------------------------------------------------------------------------------------------------------------------------------------------
            eth_payload                 => eth_com_rx_payload
        );
        
    -- Generate External Trigger from Ethernet Commands
------------------------------------------------------------------------------------------------------------------------------------------------------------------
    -- Generate an external trigger using ethernet commands (One letter or symbol from the keyboard).
    -- Use the letter 't' in Lowercase to generate an external trigger for DAPHNE V1.
    -- This external trigger is generated by constantly checking the first byte of the payload sent by the ethernet frame.
    -- This uses a clocked process that depends on the WR_CLK of the FIFO, specifically on its falling edge in order to guarantee
    -- That "the center" of the Data will be sampled by the rising edge of the clock, avoiding possible misalignments.
    -- If the data equals the letter 't', it asks if it was seen in the cycle before that in order to generate only a pulse with 
    -- A width of one CLK Cycle, if it matches this case, the trigger happens, else it stays off
    
    ETH_TRIG_PROC : process(afe_se_clk, async_rst, eth_com_rx_payload, eth_com_rx_payload_reg)
        begin
            if falling_edge(afe_se_clk) then
                if (async_rst = '1') then
                    eth_trig_reg <= '0';
                else
                    -- Assign the value to a register to keep track fo the last payload given to the FPGA
                    eth_com_rx_payload_reg <= eth_com_rx_payload;
                    
                    -- Let's see if the data has changed
                    if (eth_com_rx_payload /= eth_com_rx_payload_reg) then
                        -- The data has changed, therefore it is time to see if the payload condition to trigger is met
                        if (eth_com_rx_payload = X"74") then
                            -- If the payload condition is met, generate a trigger
                            eth_trig_reg <= '1';
                        else
                            -- Do not generate a trigger
                            eth_trig_reg <= '0';
                        end if;
                    else
                        -- Do not generate a trigger
                        eth_trig_reg <= '0';
                    end if;
                end if;    
            end if;
    end process ETH_TRIG_PROC;
    
    -- External Triggers OR Gate Control
    ext_trig                <= eth_trig_reg; -- OR gpi;
    
    -- Generate External Read from Ethernet Commands
------------------------------------------------------------------------------------------------------------------------------------------------------------------
    -- Creates a signal to read the FIFO externally by using the keys on the keyboard.
    -- Specifically use the letter 'r'.
    -- Exactly the same behaviour as the external trigger generation
    ETH_READ_PROC : process(afe_se_clk, async_rst, eth_com_rx_payload, eth_com_rx_payload_reg)
        begin
            if falling_edge(afe_se_clk) then
                if (async_rst = '1') then
                    eth_read_reg <= '0';
                else
                    -- Assign the value to a register to keep track fo the last payload given to the FPGA
                    eth_com_rx_payload_reg <= eth_com_rx_payload;
                    
                    -- Let's see if the data has changed
                    if (eth_com_rx_payload /= eth_com_rx_payload_reg) then
                        -- The data has changed, therefore it is time to see if the payload condition to trigger is met
                        if (eth_com_rx_payload = X"72") then
                            -- If the payload condition is met, generate a trigger
                            eth_read_reg <= '1';
                        else
                            -- Do not generate a trigger
                            eth_read_reg <= '0';
                        end if;
                    else
                        -- Do not generate a trigger
                        eth_read_reg <= '0';
                    end if;
                end if;    
            end if;
    end process ETH_READ_PROC;
    
    -- External Triggers OR Gate Control
    ext_read                <= eth_read_reg; 
        
    -- Ethernet SFP Link Control Signals
------------------------------------------------------------------------------------------------------------------------------------------------------------------
    -- Enable DAQ Link SFP Transmitters...
    daq0_sfp_tx_dis         <= '0';
    daq1_sfp_tx_dis         <= '0';
    
    -- DAQ SFP I2C Interface, reserved for future use...
    daq0_sfp_scl            <= 'Z';
    daq0_sfp_sda            <= 'Z';
    daq1_sfp_scl            <= 'Z';
    daq1_sfp_sda            <= 'Z';
    
    -- Board Misc Output
------------------------------------------------------------------------------------------------------------------------------------------------------------------
    -- LED Connections (Mapped to Ethernet Rx To Check Connection Status)
--    led(5 downto 2)                   <= not(eth_com_rx_payload(3 downto 0)); -- Works to see if the Rx ETH Part is working
    led(0) <= not(data_rdy);
    led(1) <= not(pll_afe_lck);
--    led(1) <= not(trigger);
--    led(2) <= not(fifo_wr_out);
--    led(3) <= not(fifo_rd_out);
    led(2) <= not(fifo_empty);
    led(3) <= not(fifo_a_full);
--    led(5)
    led(4) <= not(st_axi_ready);

end daphne1_arch;
