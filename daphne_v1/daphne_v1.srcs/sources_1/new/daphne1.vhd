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
signal async_rst                                            : std_logic;
signal sys_clk62_5, sys_clk100, sys_clk125, sys_clk200      : std_logic;

-- MMCM Timing Endpoint Auxiliary Signals Declaration
--------------------------------------------------------------------------------------------------------------------------------------------------------------------
signal mmcm0_locked                                         : std_logic;

-- AFE5808A Auxiliary Signals Declaration
--------------------------------------------------------------------------------------------------------------------------------------------------------------------
signal afe_data                                             : std_logic_vector(13 downto 0);
signal afe_se_clk                                           : std_logic;
signal data_dig_rdy, data_rdy, pll_afe_lck                  : std_logic;
signal align_ph_sel                                         : std_logic_vector(1 downto 0);
signal align_ph_ovfl, align_bitslip_on                      : std_logic;

-- Self Trigger & FIFO Auxiliary Signals Declaration
--------------------------------------------------------------------------------------------------------------------------------------------------------------------
signal trigger                                              : std_logic;
signal filt_out, fifo_i, fifo_o                             : std_logic_vector(13 downto 0);
signal st_calc_value_out                                    : std_logic_vector(47 downto 0);
signal dp_trig_ctrl, dp_rd_ctrl, fifo_rd_out, fifo_wr_out   : std_logic;
signal fifo_a_empty, fifo_a_full, fifo_full, fifo_empty     : std_logic;
signal fifo_wr_err, fifo_rd_err                             : std_logic;
signal fifo_axi_data                                        : std_logic_vector(7 downto 0);
signal fifo_axi_valid, fifo_axi_ready                       : std_logic;
signal fifo_axi_last, fifo_axi_user                         : std_logic;

-- Ethernet Module Auxiliary Signals Declaration
--------------------------------------------------------------------------------------------------------------------------------------------------------------------
signal eth_com_rx_axi_data                                  : std_logic_vector(7 downto 0);
signal eth_com_rx_axi_ready, eth_com_rx_axi_valid           : std_logic;
signal eth_com_rx_axi_last, eth_com_rx_axi_user             : std_logic;
signal eth_com_rx_payload                                   : std_logic_vector(7 downto 0);   

-- External Commands From Ethernet Signals Declaration
--------------------------------------------------------------------------------------------------------------------------------------------------------------------
signal eth_com_rx_payload_reg                               : std_logic_vector(7 downto 0);     -- Payload Command Signal
signal eth_new_comm_given                                   : std_logic;                        -- New Command Received Signal
signal eth_trig_reg, eth_read_reg                           : std_logic;                        -- External Trigger/Read Registers From Ethernet Signal Declaration
signal ext_trig, ext_read                                   : std_logic;                        -- External Trigger/Read From Ethernet Signal Declaration 
signal eth_cust_train_reg, eth_deskew_train_reg             : std_logic;                        -- External Training Patterns Registers From Ethernet Signal Declaration
signal ext_cust_train_active, ext_deskew_train_active       : std_logic := '0';                        -- External Training Patterns From Ethernet Signal Declaration

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
        afe_clk_p, afe_clk_n        : out std_logic             -- Copy of 62.5 MHz master clock sent to AFEs
    );
end component endpoint;

-- AFE5808A Data Acquisition/Capturing - Aligning Module
--------------------------------------------------------------------------------------------------------------------------------------------------------------------
component AcquisitionManager 
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
        dt_dig_rdy          : out std_logic;                    -- Digital Clock Aligned With Data
        dt_rdy              : out std_logic;                    -- Data Completely Aligned
        clk_div             : out std_logic;                    -- Synthetic AFE Frame CLock Derived from Digital Clock (In Phase)
        pll_lck_o           : out std_logic;                    -- AFE Digital Clock PLL Locked
        data_output         : out std_logic_vector(13 downto 0) -- Output of the Iserdese Modules
    );
end component AcquisitionManager;

-- Data Pre Processing Module - Includes Self Trigger Core
--------------------------------------------------------------------------------------------------------------------------------------------------------------------
component DataPreProcessingManager 
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
        afe_fifo_a_full     : in std_logic;                         -- FIFO Almost Full Flag
        afe_fifo_empty      : in std_logic;                         -- FIFO Empty Flag
        
        -- Module Outputs
    ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        trig_ctrl           : out std_logic;                        -- Real Write Enable used for the FIFO Module
        read_ctrl           : out std_logic;                        -- Real Read Enable used for the FIFO Module 
        filt_out            : out std_logic_vector(13 downto 0);    -- Output of the filter
        calc_value_out      : out std_logic_vector(47 downto 0);    -- Output of the Self Trigger Module (Calculated Correlation or Calculated Sigmoid Prediction)
        --net_agg             : out std_logic_vector(47 downto 0);    -- Output of the Seff Trigger Neural Network (Aggregation of Output Neuron)
        buff_data           : out std_logic_vector(13 downto 0);    -- Output of the Self Trigger Correlation Module (Internally connected to the FIFO, 64 Registers Delayed AFE Data)
        trigger             : out std_logic                         -- Non Controlled Trigger Output
    );
end component DataPreProcessingManager;

-- FIFO Memory With AXI Stream Output Module 
--------------------------------------------------------------------------------------------------------------------------------------------------------------------
component AXI_FIFO_Adapter
    Generic (
        -- Frequency of the Write Clock (MHz)
        WR_CLK_FREQ         : real          := 100.0;
        -- Frequency of the Read Clock (MHz)
        RD_CLK_FREQ         : real          := 100.0;
        -- FIFO Important Parameters
        data_width          : integer       := 14;
        fifoPointersLength  : integer       := 11;
        AEMPTY_OFF          : bit_vector    := X"0080";                                 -- Almost Empty Offset
        AFULL_OFF           : bit_vector    := X"0080"                                  -- Almost Full Offset
    );
    Port (
        -- Module Inputs
    ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        d_i                 : in std_logic_vector((data_width - 1) downto 0);           -- Parallel Data Input for the FIFO
        dt_rdy              : in std_logic;                                             -- Data Ready Flag from Acquisition Module
        wr_enable           : in std_logic;                                             -- Write Enable Control Signal for the FIFO
        rd_enable           : in std_logic;                                             -- Read Enable Control Signal for the FIFO
        wr_clk              : in std_logic;                                             -- Write Clock for the FIFO
        rd_clk              : in std_logic;                                             -- Read Clock for the FIFO
        m_axi_clk           : in std_logic;                                             -- AXI Stream Interface Clock
        rst                 : in std_logic;                                             -- Async Reset
    
        -- Module Outputs
    ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        a_empty             : out std_logic;                                            -- Almost Empty Flag of the FIFO
        a_full              : out std_logic;                                            -- Almost Full Flag of the FIFO
        empty               : out std_logic;                                            -- Empty Flag of the FIFO
        full                : out std_logic;                                            -- Full Flag of the FIFO 
        wr_err              : out std_logic;                                            -- Write Error Flag of the FIFO
        rd_err              : out std_logic;                                            -- Read Error Flag of the FIFO
        wr_count            : out std_logic_vector((fifoPointersLength - 1) downto 0);  -- Write Pointer of the FIFO
        rd_count            : out std_logic_vector((fifoPointersLength - 1) downto 0);  -- Read Pointer of the FIFO
        fifo_o              : out std_logic_vector(13 downto 0);                        -- Parallel Data Output of the FIFO
        m_axi_fifo_tdata    : out std_logic_vector((data_width/2) downto 0);            -- AXI Stream Data from the FIFO
        m_axi_fifo_tvalid   : out std_logic;                                            -- AXI Stream Valid Control Signal
        m_axi_fifo_tready   : in std_logic;                                             -- AXI Stream Ready Control Signal
        m_axi_fifo_tlast    : out std_logic;                                            -- AXI Stream Last Control Signal
        m_axi_fifo_tuser    : out std_logic                                             -- AXI Stream User Control Signal (Errors in the data)
    );
end component AXI_FIFO_Adapter;

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
            in_P_clk_dt_ports           => afe_dclk_p(1),           -- Digital Bit Clock Differential P Input
            in_N_clk_dt_ports           => afe_dclk_n(1),           -- Digital Bit Clock Differential N Input
            in_P_clk_fr_ports           => afe_fclk_p(1),           -- Frame Clock Differential P Input
            in_N_clk_fr_ports           => afe_fclk_n(1),           -- Frame Clock Differential N Input
            in_P_data_ports             => afe_p(1)(7),             -- Data Differential P Input
            in_N_data_ports             => afe_n(1)(7),             -- Data Differential N Input
            sys_clk                     => sys_clk100,              -- System Clock 100 MHz
            glob_rst                    => async_rst,               -- System Reset, Active HIGH
            alignment_mode              => '1',                     -- '0' Automatic Alignment, '1' Manual Alignment
            train_pat_act               => ext_deskew_train_active, -- Specific Training Pattern Active in the AFE Outputs
            custom_pat_act              => ext_cust_train_active,   -- Custom Training Pattern Active in the AFE Outputs 
            
            -- Module Outputs
    -----------------------------------------------------------------------------------------------------------------------------------
            phase_selected              => align_ph_sel,            -- Selected Phase to Align the Data
            ph_overflow                 => align_ph_ovfl,           -- Phase Overflowed (Digital Bit Clock Alignment)
            bistlip_on                  => align_bitslip_on,        -- Bitslip Being Executed      
            dt_dig_rdy                  => data_dig_rdy,            -- Digital Clock Aligned With Data
            dt_rdy                      => data_rdy,                -- Data Completely Aligned
            clk_div                     => afe_se_clk,              -- Synthetic AFE Frame CLock Derived from Digital Clock (In Phase)
            pll_lck_o                   => pll_afe_lck,             -- AFE Digital Clock PLL Locked
            data_output                 => afe_data                 -- Output of the Iserdese Modules
        );
        
    -- AFE5808A #0, Data Pre Processing for the Channel 0 Instantiation 
------------------------------------------------------------------------------------------------------------------------------------------------------------------    
    AFE0_DPP_CH_0 : DataPreProcessingManager 
        port map ( 
            -- Module Inputs
        ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
            afe_data                    => afe_data,            -- Aligned Data to Save from AFE
            dt_rdy                      => data_dig_rdy,        -- Data Aligned
            rst                         => async_rst,           -- Async Reset
            clk                         => afe_se_clk,          -- AFE Divided Clock Used by the High Pass Filter (62.5 MHz) And the Write Clock of the FIFO 
            rd_clk                      => sys_clk62_5,         -- Read Clock Used by the FIFO (62.5 MHz) Asynchronous to WR_CLK    
            sys_clk                     => sys_clk125,          -- This is AXI Clock, not System Clock 100 Mhz. Was initially sys_clk100,
            rd_ctrl                     => '1',                 -- Read Control Input ('0' Don't read the FIFO after a save, '1' Read the FIFO as soon as it stops saving)
            wr_enable_signal            => ext_trig,            -- Auxiliar External Write Enable for the FIFO
            rd_enable_signal            => ext_read,            -- Auxiliar External Read Enable for the FIFO
            afe_fifo_a_full             => fifo_a_full,         -- FIFO Almost Full Flag
            afe_fifo_empty              => fifo_empty,          -- FIFO Empty Flag
            
            -- Module Outputs
        ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
            buff_data                   => fifo_i,              -- Output Delayed Data of the Data Pre Processing Module (64 Registers Delayed AFE Data)
            trigger                     => trigger,             -- Non Controlled Trigger Output
            trig_ctrl                   => dp_trig_ctrl,        -- Data Pre Processing Trigger Signal to FIFO
            read_ctrl                   => dp_rd_ctrl,          -- Data Pre Processing Read Signal to FIFO
            filt_out                    => filt_out,            -- Output of the filter            
            calc_value_out              => st_calc_value_out   -- Output of the Self Trigger Module (Calculated Correlation or Calculated Sigmoid Prediction)
            --net_agg                     => open                 -- Output of the Seff Trigger Neural Network (Aggregation of Output Neuron) -- UNUSED!
        );
        
    -- AFE5808A #0, FIFO Component for the Channel 0 Instantiation
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    AFE0_AXI_FIFO_CH_0 : AXI_FIFO_Adapter
        generic map (
            WR_CLK_FREQ                 => 62.5,                -- Frequency of the Write Clock (MHz)    
            RD_CLK_FREQ                 => 62.5,                -- Frequency of the Read Clock (MHz)
            AEMPTY_OFF                  => X"6",                -- FIFO Important Parameters
            AFULL_OFF                   => X"8"                 -- FIFO Important Parameters
        )
        port map (
            -- Module Inputs
    -------------------------------------------------------------------------------------------------------------------------------------------------------
            d_i                         => fifo_i,              -- Connect to Output of the Buffer From Data pre Processing Module
            dt_rdy                      => data_dig_rdy,
            wr_enable                   => dp_trig_ctrl,
            rd_enable                   => dp_rd_ctrl,
            wr_clk                      => afe_se_clk,
            rd_clk                      => sys_clk62_5,
            m_axi_clk                   => sys_clk125,
            rst                         => async_rst,    
            
            -- Module Outputs
    -------------------------------------------------------------------------------------------------------------------------------------------------------  
            a_empty                     => fifo_a_empty,
            a_full                      => fifo_a_full,
            empty                       => fifo_empty,
            full                        => fifo_full,
            wr_err                      => fifo_wr_err,
            rd_err                      => fifo_rd_err,
            wr_count                    => open,
            rd_count                    => open,
            fifo_o                      => fifo_o,
            m_axi_fifo_tdata            => fifo_axi_data,       -- Output Data of the FIFO in AXI Stream Interface
            m_axi_fifo_tvalid           => fifo_axi_valid,      -- AXI Stream Valid from the FIFO Read Process
            m_axi_fifo_tready           => fifo_axi_ready,      -- AXI Stream Ready for the FIFO Read Process
            m_axi_fifo_tlast            => fifo_axi_last,       -- AXI Stream Last from the FIFO Read Process
            m_axi_fifo_tuser            => fifo_axi_user        -- AXI Stream User from the FIFO Read Process (Always '1')
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
            eth_tx_axis_tdata           => fifo_axi_data,       -- Connect to Self Trigger Module
            eth_tx_axis_tvalid          => fifo_axi_valid,      -- Connect to Self Trigger Module
            eth_tx_axis_tready          => fifo_axi_ready,      -- Connect to Self Trigger Module
            eth_tx_axis_tlast           => fifo_axi_last,       -- Connect to Self Trigger Module
            eth_tx_axis_tuser           => fifo_axi_user,       -- Connect to Self Trigger Module
            
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
        
    -- Create External Commands Using The Ethernet Rx Payload 
------------------------------------------------------------------------------------------------------------------------------------------------------------------
    -------------------------------------------------------- COMMAND GENERATOR -------------------------------------------------------- 
-----------------------------------------------------------------------------------------------------------------------------------------------------------------    
    -- Generate an external command using ethernet protocol (One letter or symbol from the keyboard).
    -- This external command is generated by constantly checking the first byte of the payload sent by the ethernet frame.
    -- This uses a clocked process that depends on the WR_CLK of the FIFO, specifically on its falling edge in order to guarantee
    -- That "the center" of the Data will be sampled by the rising edge of the clock, avoiding possible misalignments 
    -- (Related to the trigger and FIFO reading commands).
    -- It asks if this payload (letter) was seen in the cycle before in order to generate only a pulse with 
    -- A width of one CLK Cycle, if it matches this case, enables the new command received signal, else it stays off.
    ETH_PAYLOAD_GEN_PROC : process(afe_se_clk, async_rst, eth_com_rx_payload, eth_com_rx_payload_reg)
        begin
            if falling_edge(afe_se_clk) then
                if (async_rst = '1') then
                    eth_new_comm_given <= '0';
                else
                    -- Assign the value to a register to keep track fo the last payload given to the FPGA
                    eth_com_rx_payload_reg <= eth_com_rx_payload;
                    
                    -- Let's see if the data has changed
                    if (eth_com_rx_payload /= eth_com_rx_payload_reg) then
                        -- The data has changed, therefore notify the FPGA that a new command has been sent
                        eth_new_comm_given <= '1';
                    else
                        -- No new commands were given
                        eth_new_comm_given <= '0';
                    end if;
                end if;    
            end if;
    end process ETH_PAYLOAD_GEN_PROC;    
    
    -------------------------------------------------------- COMMAND DECODER -------------------------------------------------------- 
-----------------------------------------------------------------------------------------------------------------------------------------------------------------    
    -- With a new command being given, a decoder changes different signals, this decoder is created as a combinatorial process 
    ETH_PAYLOAD_COMM_DECO : process(eth_new_comm_given, eth_com_rx_payload, eth_cust_train_reg)
        begin
            -- Generate the proper output according to the payload
            case (eth_com_rx_payload) is
            
                when X"74" =>
                    -- Use the letter 't' in Lowercase to generate an external trigger for DAPHNE V1.
                    if (eth_new_comm_given = '1') then
                        -- Ask if it is valid, generate a trigger if it is 
                        eth_trig_reg <= '1';
                    else
                        -- Do not generate a trigger since the payload is not a new command (Keep the signal low)
                        eth_trig_reg <= '0';
                    end if;
                    -- Other signals not used by this case must be kept low/unmodified
                    eth_read_reg <= '0';
                    eth_deskew_train_reg <= '0';
                    eth_cust_train_reg <= '0';
                    
--                when X"72" =>
--                    -- Must re design this operation since it has CDC exceptions to resolve
--                    -- Use the letter 'r' in Lowercase to generate an external read for the FIFOs in DAPHNE V1.
--                    if (eth_new_comm_given = '1') then
--                        -- If the payload condition is met, generate a read operation
--                        eth_read_reg <= '1';
--                    else
--                        -- Do not generate a read operation since the payload is not a new command (Keep the signal low)
--                        eth_read_reg <= '0';
--                    end if;
--                    -- Other signals not used by this case must be kept low/unmodified
--                    eth_trig_reg <= '0';

                when X"64" =>
                    -- Use the letter 'd' in Lowercase to tell DAPHNE V1 that the deskew training pattern si active at the AFE5808A outputs.
                    eth_deskew_train_reg <= '1';
                    -- Other signals not used by this case must be kept low/unmodified
                    eth_read_reg <= '0';
                    eth_trig_reg <= '0';
                    eth_cust_train_reg <= '0';
                    
                when X"63" =>
                    -- Use the letter 'c' in Lowercase to tell DAPHNE V1 that the custom training pattern si active at the AFE5808A outputs.
                    eth_cust_train_reg <= '1';
                    -- Other signals not used by this case must be kept low/unmodified
                    eth_read_reg <= '0';
                    eth_trig_reg <= '0';
                    eth_deskew_train_reg <= '0';
                    
                when others => 
                    -- No other commands have been assigned therefore keep any controlled signals in this process low
                    eth_trig_reg <= '0';
                    eth_read_reg <= '0';
                    eth_deskew_train_reg <= '0';
                    eth_cust_train_reg <= '0';
                    
            end case;
    end process ETH_PAYLOAD_COMM_DECO;   
    
    -- Generate The Signals That Control FPGA Behaviour According To The Decoder
------------------------------------------------------------------------------------------------------------------------------------------------------------------    
    ext_trig                <= eth_trig_reg OR gpi;             -- External Triggers OR Gate Control                              
    ext_read                <= eth_read_reg;                    -- External Read Control
    ext_cust_train_active   <= eth_cust_train_reg;              -- External Input For the Custom Training Pattern Being Active
    ext_deskew_train_active <= eth_deskew_train_reg;            -- External Input For the Deskew Training Pattern Being Active
        
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
    led(0) <= not(pll_afe_lck);
    led(2 downto 1) <= not(align_ph_sel);
    led(3) <= not(align_ph_ovfl);
    led(4) <= not(align_bitslip_on);
    led(5) <= not(data_rdy);
--    led(1) <= not(trigger);
--    led(2) <= not(fifo_wr_out);
--    led(3) <= not(fifo_rd_out);
--    led(2) <= not(fifo_empty);
--    led(3) <= not(fifo_a_full);
--    led(4) <= not(st_axi_ready);

end daphne1_arch;
