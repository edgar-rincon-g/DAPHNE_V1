----------------------------------------------------------------------------------
-- Company: Universidad EIA
-- Engineer: Daniel Avila Gomez
-- 
-- Create Date: 11.10.2023 13:53:23
-- Design Name: DAPHNE V1 Firmware Top Module
-- Module Name: daphne1_arch - Behavioral
-- Project Name: DAPHNE V1
-- Target Devices: XC7A200T-2FBG676C
-- Tool Versions: 2023.1
-- Description: 
-- Instantiates the top module for the DAPHNE V1 Board
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
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

entity daphne1_arch is
    Port ( 
        reset_n: in std_logic; -- Acive LOW async reset from the microcontroller
        gpi, gpo: in std_logic;
        sysclk_p, sysclk_n: in std_logic; -- System Clock LVDS 100 MHz from local oscillator
        
        -- AFE Interface, LVDS, 5 AFE chips, each AFE has 8 DATA + 1 FCLK + 1DCLK outputs
        afe_p, afe_n: array_5x8_type; -- (7...0 Data)
        afe_dclk_p, afe_dclk_n: in std_logic_vector(4 downto 0); -- DCLK
        afe_fclk_p, afe_fclk_n: in std_logic_vector(4 downto 0); -- FCLK
        afe_clk_p, afe_clk_n: out std_logic; -- Copy of 62.5 MHz master clock sent to AFEs
        
        -- Two high speed links to DAQ
        -- For FELIX links use TX only, disable RX, line rate = 4.809Gbps, refclk = 120.237 MHz
        daq0_tx_p, daq0_tx_n: out std_logic;
        daq0_sfp_abs: in std_logic;
        daq0_sfp_los: in std_logic;
        daq0_sfp_tx_dis: out std_logic;
        daq0_sfp_scl, daq0_sfp_sda : out std_logic; -- SFP I2C interface (optional)
        
        daq1_tx_p, daq1_tx_n: out std_logic;
        daq1_sfp_abs: in std_logic;
        daq1_sfp_los: in std_logic;
        daq1_sfp_tx_dis: out std_logic;
        daq1_sfp_scl, daq1_sfp_sda : out std_logic; -- SFP I2C interface (optional)
        
        -- One MGT used for GbE interface, quad 213, channel 0
        daq_refclk_p, daq_refclk_n: in std_logic; -- MGT REFCLK for GbE, LVDS, 125.000 MHz, quad 216, refclk0
        
        -- Timing Endpoint Interface (SFP)
        cdr_sfp_los: in std_logic; -- Loss of signal
        cdr_sfp_abs: in std_logic; -- High if module is absent
        cdr_sfp_tx_dis: out std_logic; -- High to disable timing SFP TX
        cdr_sfp_tx_p, cdr_sfp_tx_n: out std_logic; -- Send data upstream (optional)

        -- Timing Endpoint Interface (CDR chip)
        --cdr_clk_p, cdr_clk_n: in std_logic; -- LVDS recovered clock 312MHz (not used anymore) ?
        cdr_data_p, cdr_data_n: in std_logic; -- LVDS recovered serial data (actually the clock)
        cdr_los: in std_logic; -- Loss of signal
        cdr_lol: in std_logic; -- Loss of lock
        
        -- SPI slave interface for communication with uC
        spi_clk: in std_logic;
        spi_csn: in std_logic;
        spi_mosi: in std_logic;
        spi_miso: out std_logic;
        spi_irq: out std_logic;
        
        -- Misc Board I/O
        led: out std_logic_vector(5 downto 0) -- DAPHNE PCB LEDs are active LOW
    );
end daphne1_arch;

architecture Behavioral of daphne1_arch is

-- Overall System Auxiliary Signals Declaration
---------------------------------------------------------------------------------------------------------------------
signal async_rst    :   std_logic;
signal sys_clk100   :   std_logic;
signal sys_clk125   :   std_logic;
signal sys_clk200   :   std_logic;
signal sys_clk62_5  :   std_logic;

-- MMCM Timing Endpoint Auxiliary Signals Declaration
---------------------------------------------------------------------------------------------------------------------
signal mmcm0_locked :   std_logic;

-- AFE5808A Auxiliary Signals Declaration
---------------------------------------------------------------------------------------------------------------------
signal afe_data     :   std_logic_vector(13 downto 0);
signal afe_se_clk   :   std_logic;
signal data_rdy     :   std_logic := '0';

-- Self Trigger Auxiliary Signals Declaration
---------------------------------------------------------------------------------------------------------------------
signal st_axi_data  :   std_logic_vector(7 downto 0);
signal st_axi_valid :   std_logic;
signal st_axi_ready :   std_logic;
signal st_axi_last  :   std_logic;
signal st_axi_user  :   std_logic;

-- Components Declaration
---------------------------------------------------------------------------------------------------------------------
-- Timing Endpoint Module
component endpoint 
    Port ( 
        -- System Clocking and Reset Inputs
        ----------------------------------------------------------------------------------------------------------------------
        reset_async                 : in std_logic;
        sysclk_p, sysclk_n          : in std_logic;
        
        -- External CDR chip interface: ignore CLKOUT, LOS, and LOL
        ----------------------------------------------------------------------------------------------------------------------
        cdr_data_p, cdr_data_n      : in std_logic;         -- LVDS recovered serial data ACKCHYUALLY the clock!

        -- Misc Interface Signals
        ----------------------------------------------------------------------------------------------------------------------
--        mmcm1_rst                   : in std_logic;
--        mmcm1_lck                   : out std_logic;
        mmcm0_lck                   : out std_logic;
        
        -- System Output Clocks
        ----------------------------------------------------------------------------------------------------------------------
        sys_clk100                  : out std_logic;
        sys_clk125                  : out std_logic; 
        sys_clk200                  : out std_logic;
        sys_clk62_5                 : out std_logic;
        afe_clk_p, afe_clk_n        : out std_logic         -- Copy of 62.5 MHz master clock sent to AFEs
    );
end component endpoint;

-- Acquisition Module
component AcquisitionManager 
    Generic (
        n_ch : integer := 1
    );
    Port ( 
        in_P_clk_dt_ports   : in std_logic;
        in_N_clk_dt_ports   : in std_logic;
        in_P_clk_fr_ports   : in std_logic;
        in_N_clk_fr_ports   : in std_logic;
        in_P_data_ports     : in std_logic;
        in_N_data_ports     : in std_logic;
        sys_clk             : in std_logic;
        glob_rst            : in std_logic;
        alignment_mode      : in std_logic;
        train_pat_act       : in std_logic;
        custom_pat_act      : in std_logic;
        ----------------------------------------------------------------------------
        phase_selected      : out std_logic_vector(1 downto 0);
        ph_overflow         : out std_logic;
        bistlip_on          : out std_logic;       
        dt_rdy              : out std_logic;
        clk_div             : out std_logic;
        data_output         : out std_logic_vector(13 downto 0) -- Was 5 downto 0, used to show only some outputs of the Iserdese
    );
end component AcquisitionManager;

-- Self Trigger Module
component selfTrigger_Module 
    Port ( 
        afe_data            : in std_logic_vector(13 downto 0);
        dt_rdy              : in std_logic;
        rst                 : in std_logic;
        clk                 : in std_logic;
        rd_clk              : in std_logic;
        sys_clk             : in std_logic;
        rd_ctrl             : in std_logic;
        wr_enable_signal    : in std_logic;
        rd_enable_signal    : in std_logic;
        filt_out            : out std_logic_vector(13 downto 0);
        xcorr_out           : out std_logic_vector(47 downto 0);
        xcorr_data_out      : out std_logic_vector(13 downto 0);
        trigger             : out std_logic;
--        state_val : out std_logic_vector(2 downto 0);
        fifo_rd_out         : out std_logic;
        fifo_o              : out std_logic_vector(13 downto 0);
        fifo_a_empty        : out std_logic;
        fifo_a_full         : out std_logic;
        fifo_empty          : out std_logic;
        fifo_full           : out std_logic;
        fifo_wr_err         : out std_logic;
        fifo_rd_err         : out std_logic;
        axi_data            : out std_logic_vector(7 downto 0);
        axi_valid           : out std_logic;
        axi_ready           : in std_logic;
        axi_last            : out std_logic;
        axi_user            : out std_logic
    );
end component selfTrigger_Module;

-- Ethernet Streaming Module
component eth_module_full 
    Port ( 
        -- Module Inputs        
        -------------------------------------------------------------------------------------------------------------
        gbe_refclk_p_ibuf, gbe_refclk_n_ibuf    : in std_logic;
        
        -- Module outputs
        -------------------------------------------------------------------------------------------------------------
        gbe_tx_p, gbe_tx_n                      : out std_logic;
        gbe_rx_p, gbe_rx_n                      : in std_logic; 
        
        -- System Signals
        -------------------------------------------------------------------------------------------------------------
        sys_clk125                              : in std_logic;
        sys_clk200                              : in std_logic;
        async_rst                               : in std_logic;
        
        -- Ethernet Module Inputs
        -------------------------------------------------------------------------------------------------------------
        eth_axis_tdata                          : in std_logic_vector(7 downto 0);
        eth_axis_tvalid                         : in std_logic;
        eth_axis_tready                         : out std_logic;
        eth_axis_tlast                          : in std_logic;
        eth_axis_tuser                          : in std_logic
    );
end component eth_module_full;

begin

    -- System Reset
--------------------------------------------------------------------------------------------------------------------------------
    async_rst <= reset_n;
    
    -- System Timing Endpoint Module
--------------------------------------------------------------------------------------------------------------------------------
    SYS_TIMING_EPNT : endpoint 
        port map ( 
            ----------------------------------------------------------------------------------------------------------------------
            reset_async         => async_rst,
            sysclk_p            => sysclk_p,
            sysclk_n            => sysclk_n,
            ----------------------------------------------------------------------------------------------------------------------
            cdr_data_p          => cdr_data_p,
            cdr_data_n          => cdr_data_n,
            ----------------------------------------------------------------------------------------------------------------------
--            mmcm1_rst           => ,                  -- MMCM1 Not Declared
--            mmcm1_lck           => ,                  -- MMCM1 Not Declared
            mmcm0_lck           => mmcm0_locked,
            ----------------------------------------------------------------------------------------------------------------------
            sys_clk100          => sys_clk100,
            sys_clk125          => sys_clk125, 
            sys_clk200          => sys_clk200,
            sys_clk62_5         => sys_clk62_5,
            afe_clk_p           => afe_clk_p, 
            afe_clk_n           => afe_clk_n            -- Copy of 62.5 MHz master clock sent to AFEs
        );

    -- AFE5808A - 0, Channel 0
--------------------------------------------------------------------------------------------------------------------------------
    AFE0_CH_0 : AcquisitionManager 
        generic map (
            n_ch => 1
        )
        port map ( 
            in_P_clk_dt_ports   => afe_dclk_p(0),
            in_N_clk_dt_ports   => afe_dclk_n(0),
            in_P_clk_fr_ports   => afe_fclk_p(0),
            in_N_clk_fr_ports   => afe_fclk_n(0),
            in_P_data_ports     => afe_p(0)(0),
            in_N_data_ports     => afe_n(0)(0),
            sys_clk             => sys_clk100,
            glob_rst            => async_rst,
            alignment_mode      => '0',
            train_pat_act       => '0',
            custom_pat_act      => '0',
            ----------------------------------------------------------------------------
            phase_selected      => open,
            ph_overflow         => open,
            bistlip_on          => open,     
            dt_rdy              => data_rdy,
            clk_div             => afe_se_clk,
            data_output         => afe_data
        );
        
    -- AFE5808A - 0, Self Trigger 0
--------------------------------------------------------------------------------------------------------------------------------
    AFE0_ST_0 : selfTrigger_Module 
        port map ( 
            afe_data            => afe_data,
            dt_rdy              => data_rdy,
            rst                 => async_rst,
            clk                 => afe_se_clk,
            rd_clk              => sys_clk62_5,
            sys_clk             => sys_clk100,
            rd_ctrl             => '1',
            wr_enable_signal    => gpi,
            rd_enable_signal    => gpo,
            filt_out            => open,
            xcorr_out           => open,
            xcorr_data_out      => open,
            trigger             => open,--led(1),
            fifo_rd_out         => open,
            fifo_o              => open,
            fifo_a_empty        => open,
            fifo_a_full         => open,--led(1),
            fifo_empty          => open,--led(2),
            fifo_full           => open,
            fifo_wr_err         => open,--led(3),
            fifo_rd_err         => open,--led(4),--open,
            axi_data            => st_axi_data,
            axi_valid           => st_axi_valid,
            axi_ready           => st_axi_ready,
            axi_last            => st_axi_last,
            axi_user            => st_axi_user
        );      
        
    -- AFE5808A - 0, Ethernet Streaming Module
--------------------------------------------------------------------------------------------------------------------------------
    ETH0 : eth_module_full 
        port map ( 
            gbe_refclk_p_ibuf       => daq_refclk_p,
            gbe_refclk_n_ibuf       => daq_refclk_n,
            gbe_tx_p                => daq0_tx_p,
            gbe_tx_n                => daq0_tx_n,
            gbe_rx_p                => '0',             -- Module Unused
            gbe_rx_n                => '0',             -- Module Unused
            sys_clk125              => sys_clk125,
            sys_clk200              => sys_clk200,
            async_rst               => async_rst,
            eth_axis_tdata          => st_axi_data,
            eth_axis_tvalid         => st_axi_valid,
            eth_axis_tready         => st_axi_ready,
            eth_axis_tlast          => st_axi_last,
            eth_axis_tuser          => st_axi_user
        );
        
    -- Board Misc Output
--------------------------------------------------------------------------------------------------------------------------------
    led(0) <= data_rdy;  
    led(4 downto 1) <= st_axi_data(3 downto 0);
        
end Behavioral;
