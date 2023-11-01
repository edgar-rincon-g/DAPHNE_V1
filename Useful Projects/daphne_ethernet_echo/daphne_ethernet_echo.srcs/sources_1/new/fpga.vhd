----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.10.2023 08:39:31
-- Design Name: 
-- Module Name: fpga - fpga_arch
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
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

entity fpga is
    Port ( 
        -- System Inputs
        reset_n: in std_logic; -- Acive LOW async reset from the microcontroller
        sysclk_p, sysclk_n: in std_logic; -- System Clock LVDS 100 MHz from local oscillator
        
        -- Two high speed links to DAQ
        -- For FELIX links use TX only, disable RX, line rate = 4.809Gbps, refclk = 120.237 MHz
        daq0_tx_p, daq0_tx_n: out std_logic;
        daq0_rx_p, daq0_rx_n: in std_logic;
        daq0_sfp_abs: in std_logic;
        daq0_sfp_los: in std_logic;
        daq0_sfp_tx_dis: out std_logic;
        daq0_sfp_scl, daq0_sfp_sda : out std_logic; -- SFP I2C interface (optional)
        
        -- Two high speed links to DAQ, all two channels in quad 213 are used
        -- For FELIX links use TX only, disable RX, line rate = 4.809Gbps, refclk = 120.237 MHz
        daq_refclk_p, daq_refclk_n: in std_logic; -- MGT REFCLK for DAQ, LVDS, 125.000 MHz, quad 213, refclk0
        
        -- Misc Board I/O
        led : out std_logic_vector(5 downto 0) -- DAPHNE PCB LEDs are active LOW
    );
end fpga;

architecture fpga_arch of fpga is

-- Timing Endpoint Module
component endpoint 
    Port ( 
        -- System Clocking and Reset Inputs
        ----------------------------------------------------------------------------------------------------------------------
        reset_async                 : in std_logic;
        sysclk_p, sysclk_n          : in std_logic;
        
        -- External CDR chip interface: ignore CLKOUT, LOS, and LOL
        ----------------------------------------------------------------------------------------------------------------------
--        cdr_data_p, cdr_data_n      : in std_logic;         -- LVDS recovered serial data ACKCHYUALLY the clock!

        -- Misc Interface Signals
        ----------------------------------------------------------------------------------------------------------------------
--        mmcm1_rst                   : in std_logic;
--        mmcm1_lck                   : out std_logic;
        mmcm0_lck                   : out std_logic;
        
        -- System Output Clocks
        ----------------------------------------------------------------------------------------------------------------------
        sys_clk100                  : out std_logic;
        sys_clk125                  : out std_logic; 
        sys_clk200                  : out std_logic
--        sys_clk62_5                 : out std_logic;
--        afe_clk_p, afe_clk_n        : out std_logic         -- Copy of 62.5 MHz master clock sent to AFEs
    );
end component endpoint;

-- Ethernet Frame Module
component fpga_core 
    Generic (
        -- Target ("SIM", "GENERIC", "XILINX", "ALTERA")
        TARGET : string := "GENERIC";
        -- IODDR style ("IODDR", "IODDR2")
        -- Use IODDR for Virtex-4, Virtex-5, Virtex-6, 7 Series, Ultrascale
        -- Use IODDR2 for Spartan-6
        IODDR_STYLE : string := "IODDR2";
        -- Clock input style ("BUFG", "BUFR", "BUFIO", "BUFIO2")
        -- Use BUFR for Virtex-5, Virtex-6, 7-series
        -- Use BUFG for Ultrascale
        -- Use BUFIO2 for Spartan-6
        CLOCK_INPUT_STYLE : string := "BUFIO2";
        MAC_TX_FIFO_DEPTH : integer := 4096;
        MAC_RX_FIFO_DEPTH : integer := 4096;
        AXI_FIFO_DEPTH : integer := 8192       
    );
    Port (
        -- Clock: 125MHz
        -- Asynchronous reset
        clk : in std_logic;
        rst : in std_logic; -- All modules are reset with a '1', but what about the PHY?
        
        -- GPIO
        led : out std_logic_vector(5 downto 0);
        
        -- Ethernet: 1000BASE-T GMII
        phy_rx_clk : in std_logic;
        phy_rxd : in std_logic_vector(7 downto 0);
        phy_rx_dv : in std_logic;
        phy_rx_er : in std_logic;
        phy_gtx_clk : out std_logic;
        phy_tx_clk : in std_logic;
        phy_txd : out std_logic_vector(7 downto 0);
        phy_tx_en : out std_logic;
        phy_tx_er : out std_logic;
        phy_reset_n : out std_logic
    );
end component fpga_core;

-- Ethernet PHY Interface Module
component gig_ethernet_pcs_pma_0 
    Port(
        -- Transceiver Interface
        ---------------------
        gtrefclk_p               : in  std_logic;                          
        gtrefclk_n               : in  std_logic;           
        gtrefclk_out             : out std_logic;                           -- Very high quality clock for GT transceiver.
        gtrefclk_bufg_out        : out std_logic;                           
        txp                  : out std_logic;                    -- Differential +ve of serial transmission from PMA to PMD.
        txn                  : out std_logic;                    -- Differential -ve of serial transmission from PMA to PMD.
        rxp                  : in std_logic;                     -- Differential +ve for serial reception from PMD to PMA.
        rxn                  : in std_logic;                     -- Differential -ve for serial reception from PMD to PMA.
        resetdone                : out std_logic;                           -- The GT transceiver has completed its reset cycle
        userclk_out              : out std_logic;                           
        userclk2_out             : out std_logic;                           
        rxuserclk_out              : out std_logic;                         
        rxuserclk2_out             : out std_logic;                         
        pma_reset_out            : out std_logic;                           -- transceiver PMA reset signal
        mmcm_locked_out          : out std_logic;                           -- MMCM Locked
        independent_clock_bufg : in std_logic;       
        -- GMII Interface
        -----------------
        gmii_txd             : in std_logic_vector(7 downto 0);  -- Transmit data from client MAC.
        gmii_tx_en           : in std_logic;                     -- Transmit control signal from client MAC.
        gmii_tx_er           : in std_logic;                     -- Transmit control signal from client MAC.
        gmii_rxd             : out std_logic_vector(7 downto 0); -- Received Data to client MAC.
        gmii_rx_dv           : out std_logic;                    -- Received control signal to client MAC.
        gmii_rx_er           : out std_logic;                    -- Received control signal to client MAC.
        gmii_isolate         : out std_logic;                    -- Tristate control to electrically isolate GMII.
        -- Management: Alternative to MDIO Interface
        --------------------------------------------
        configuration_vector : in std_logic_vector(4 downto 0);  -- Alternative to MDIO interface.
        an_interrupt         : out std_logic;                    -- Interrupt to processor to signal that Auto-Negotiation has completed
        an_adv_config_vector : in std_logic_vector(15 downto 0); -- Alternate interface to program REG4 (AN ADV)
        an_restart_config    : in std_logic;                     -- Alternate signal to modify AN restart bit in REG0
        -- General IO's
        ---------------
        status_vector        : out std_logic_vector(15 downto 0); -- Core status.
        reset                : in std_logic;                     -- Asynchronous reset for entire core.
        signal_detect         : in std_logic;                      -- Input from PMD to indicate presence of optical input.
        gt0_pll0outclk_out     : out std_logic;
        gt0_pll0outrefclk_out  : out std_logic;
        gt0_pll1outclk_out     : out std_logic;
        gt0_pll1outrefclk_out  : out std_logic;
        gt0_pll0refclklost_out : out std_logic;
        gt0_pll0lock_out       : out std_logic
    );
end component gig_ethernet_pcs_pma_0;

-- FPGA Internal Connections
signal rst : std_logic;

signal sys_clk100 : std_logic;
signal sys_clk125 : std_logic;
signal sys_clk200 : std_logic;

signal led_o : std_logic_vector(5 downto 0);

signal gmii_phy_rxd  : std_logic_vector(7 downto 0);
signal gmii_phy_rx_dv : std_logic;
signal gmii_phy_rx_er : std_logic;
--signal gmii_phy_gtx_clk : std_logic;
signal gmii_phy_txd  : std_logic_vector(7 downto 0);
signal gmii_phy_tx_en : std_logic;
signal gmii_phy_tx_er : std_logic;
signal gmii_phy_reset_n : std_logic;

signal daq_refclk_p_ibuf : std_logic;
signal daq_refclk_n_ibuf : std_logic;
signal oeiclk : std_logic;
signal status_vector : std_logic_vector(15 downto 0);

begin
    
    -- Input Reset Modification
    rst <= not(reset_n);

    -- Ethernet frame component instantiation
----------------------------------------------------------------------------------------------------------------------------------------------
    SYS_TIMING : endpoint
        port map (
            reset_async             => rst,
            sysclk_p                => sysclk_p,
            sysclk_n                => sysclk_n,
            mmcm0_lck               => open,
            sys_clk100              => sys_clk100,
            sys_clk125              => sys_clk125, 
            sys_clk200              => sys_clk200
        );
        
    -- Ethernet frame component instantiation
----------------------------------------------------------------------------------------------------------------------------------------------
    ETH_FRAME : fpga_core 
        generic map (
            TARGET                  => "XILINX",
            IODDR_STYLE             => "IODDR",
            CLOCK_INPUT_STYLE       => "BUFR",
            MAC_TX_FIFO_DEPTH       => 8192,
            MAC_RX_FIFO_DEPTH       => 8192,
            AXI_FIFO_DEPTH          => 8192       
        )
        port map (
            -- Clock: 125MHz
            -- Asynchronous reset
            clk                     => sys_clk125,
            rst                     => rst, -- All modules are reset with a '1', but what about the PHY?
            -- GPIO
            led                     => led_o,            
            -- Ethernet: 1000BASE-T GMII
            phy_rx_clk              => oeiclk,
            phy_rxd                 => gmii_phy_rxd, 
            phy_rx_dv               => gmii_phy_rx_dv, 
            phy_rx_er               => gmii_phy_rx_er, 
            phy_gtx_clk             => open, --gmii_phy_gtx_clk, 
            phy_tx_clk              => oeiclk, 
            phy_txd                 => gmii_phy_txd, 
            phy_tx_en               => gmii_phy_tx_en, 
            phy_tx_er               => gmii_phy_tx_er, 
            phy_reset_n             => gmii_phy_reset_n
        );
        
    -- Ethernet PHY IBUF components instantiation
----------------------------------------------------------------------------------------------------------------------------------------------
    -- Must manually add IBUFs for refclk inputs
    -- See http://forums.xilinx.com/t5/Implementation/Vivado-IBUFDS-GTE2-driven-by-IBUF/td-p/383187
    DAQ_REFCLK_P_IBUF_COM : IBUF port map ( I => daq_refclk_p, O => daq_refclk_p_ibuf );
    DAQ_REFCLK_N_IBUF_COM : IBUF port map ( I => daq_refclk_n, O => daq_refclk_n_ibuf );
    
    -- Ethernet PHY component instantiation
----------------------------------------------------------------------------------------------------------------------------------------------
    ETH_PHY_COM : gig_ethernet_pcs_pma_0
        port map (
            gtrefclk_p              => daq_refclk_p_ibuf,                          
            gtrefclk_n              => daq_refclk_n_ibuf,           
            gtrefclk_out            => open,
            gtrefclk_bufg_out       => open,                           
            txp                     => daq0_tx_p,
            txn                     => daq0_tx_n,
            rxp                     => daq0_rx_p,
            rxn                     => daq0_rx_n,
            resetdone               => open,
            userclk_out             => open,                           
            userclk2_out            => oeiclk,                           
            rxuserclk_out           => open,                         
            rxuserclk2_out          => open,                         
            pma_reset_out           => open,
            mmcm_locked_out         => open,
            independent_clock_bufg  => sys_clk200,       
            gmii_txd                => gmii_phy_txd,
            gmii_tx_en              => gmii_phy_tx_en,
            gmii_tx_er              => gmii_phy_tx_er,
            gmii_rxd                => gmii_phy_rxd,
            gmii_rx_dv              => gmii_phy_rx_dv,
            gmii_rx_er              => gmii_phy_rx_er,
            gmii_isolate            => open,
            configuration_vector    => "10000",  -- Autoneg=1, Isolate=0, PowerDown=0, Loopback=0, Unidir=0 
            an_interrupt            => open,
            an_adv_config_vector    => X"0020",
            an_restart_config       => '0',
            status_vector           => status_vector,
            reset                   => gmii_phy_reset_n,
            signal_detect           => '1',
            gt0_pll0outclk_out      => open,
            gt0_pll0outrefclk_out   => open,
            gt0_pll1outclk_out      => open,
            gt0_pll1outrefclk_out   => open,
            gt0_pll0refclklost_out  => open,
            gt0_pll0lock_out        => open    
        );
        
    -- Board LEDs Output
----------------------------------------------------------------------------------------------------------------------------------------------
    led <= not(led_o);
    
    -- Enable DAQ Link SFP Transmitters...
----------------------------------------------------------------------------------------------------------------------------------------------
    daq0_sfp_tx_dis <= '0';
    
    -- DAQ SFP I2C Interface, reserved for future use...
----------------------------------------------------------------------------------------------------------------------------------------------
    daq0_sfp_scl <= 'Z';    
    daq0_sfp_sda <= 'Z';

end fpga_arch;
