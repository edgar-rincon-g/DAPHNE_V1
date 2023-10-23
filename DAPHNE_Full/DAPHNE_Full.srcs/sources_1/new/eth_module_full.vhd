----------------------------------------------------------------------------------
-- Company: Universidad EIA
-- Engineer: Daniel Avila Gomez
-- 
-- Create Date: 20.10.2023 10:38:55
-- Design Name: DAPHNE V1 Ethernet Module
-- Module Name: eth_module_full - eth_arch
-- Project Name: DAPHNE V1
-- Target Devices: XC7A200T-2FBG676C
-- Tool Versions: 2023.1
-- Description: 
-- Creates a full Ethernet Module with a GMII Interface for the SFP 1Gigabit Module
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
--library UNISIM;
--use UNISIM.VComponents.all;

entity eth_module_full is
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
end eth_module_full;

architecture eth_arch of eth_module_full is

-- Internal Clocks
---------------------------------------------------------------------------------------------------------------------
signal oei_clk                          :   std_logic;

-- MAC and PHY Communication Signals Declaration
---------------------------------------------------------------------------------------------------------------------
signal mac_gmii_txd, mac_gmii_rxd       :   std_logic_vector(7 downto 0);
signal mac_gmii_tx_en, mac_gmii_tx_er   :   std_logic;
signal mac_gmii_rx_dv, mac_gmii_rx_er   :   std_logic;   
signal cfg_ifg_aux                      :   std_logic_vector(7 downto 0);

-- PHY Auxiliary Signals Declaration
---------------------------------------------------------------------------------------------------------------------
signal gbe_refclk_bufg_out              : std_logic;
signal status_vector                    : std_logic_vector(15 downto 0);

-- AXI between MAC and Ethernet modules
signal rx_axis_tdata, tx_axis_tdata     : std_logic_vector(7 downto 0);
signal rx_axis_tvalid, tx_axis_tvalid   : std_logic;
signal rx_axis_tready, tx_axis_tready   : std_logic;
signal rx_axis_tlast, tx_axis_tlast     : std_logic;
signal rx_axis_tuser, tx_axis_tuser     : std_logic;

-- Components Declaration
---------------------------------------------------------------------------------------------------------------------
-- Gigabit Ethernet PHY Module Declaration
component gig_ethernet_pcs_pma_0 is
    Generic
    (
        EXAMPLE_SIMULATION                      : integer   := 0
    );
    Port (
        -- Transceiver Interface
        ---------------------
        gtrefclk_p               : in  std_logic;                          
        gtrefclk_n               : in  std_logic;                    
        gtrefclk_out             : out std_logic;                    -- Very high quality clock for GT transceiver.
        gtrefclk_bufg_out        : out std_logic;                           
        txp                      : out std_logic;                    -- Differential +ve of serial transmission from PMA to PMD.
        txn                      : out std_logic;                    -- Differential -ve of serial transmission from PMA to PMD.
        rxp                      : in std_logic;                     -- Differential +ve for serial reception from PMD to PMA.
        rxn                      : in std_logic;                     -- Differential -ve for serial reception from PMD to PMA.
        resetdone                : out std_logic;                    -- The GT transceiver has completed its reset cycle
        userclk_out              : out std_logic;                           
        userclk2_out             : out std_logic;                           
        rxuserclk_out            : out std_logic;                         
        rxuserclk2_out           : out std_logic;                         
        pma_reset_out            : out std_logic;                    -- transceiver PMA reset signal
        mmcm_locked_out          : out std_logic;                    -- MMCM Locked
        independent_clock_bufg   : in std_logic;                   
        -- GMII Interface
        -----------------
        gmii_txd                 : in std_logic_vector(7 downto 0);  -- Transmit data from client MAC.
        gmii_tx_en               : in std_logic;                     -- Transmit control signal from client MAC.
        gmii_tx_er               : in std_logic;                     -- Transmit control signal from client MAC.
        gmii_rxd                 : out std_logic_vector(7 downto 0); -- Received Data to client MAC.
        gmii_rx_dv               : out std_logic;                    -- Received control signal to client MAC.
        gmii_rx_er               : out std_logic;                    -- Received control signal to client MAC.
        gmii_isolate             : out std_logic;                    -- Tristate control to electrically isolate GMII.
        -- Management: Alternative to MDIO Interface
        --------------------------------------------
        configuration_vector     : in std_logic_vector(4 downto 0);  -- Alternative to MDIO interface.
        an_interrupt             : out std_logic;                    -- Interrupt to processor to signal that Auto-Negotiation has completed
        an_adv_config_vector     : in std_logic_vector(15 downto 0); -- Alternate interface to program REG4 (AN ADV)
        an_restart_config        : in std_logic;                     -- Alternate signal to modify AN restart bit in REG0
        -- General IO's
        ---------------
        status_vector            : out std_logic_vector(15 downto 0); -- Core status.
        reset                    : in std_logic;                      -- Asynchronous reset for entire core.
        signal_detect            : in std_logic;                      -- Input from PMD to indicate presence of optical input.
        gt0_pll0outclk_out       : out std_logic;
        gt0_pll0outrefclk_out    : out std_logic;
        gt0_pll1outclk_out       : out std_logic;
        gt0_pll1outrefclk_out    : out std_logic;
        gt0_pll0refclklost_out   : out std_logic;
        gt0_pll0lock_out         : out std_logic    
    );
end component gig_ethernet_pcs_pma_0;

---------------------------------------------------------------------------------------------------------------------
-- Gigabit Ethernet MAC Module Declaration
component  eth_mac_1g_gmii_fifo_mod is
    Generic
    (
        -- target ("SIM", "GENERIC", "XILINX", "ALTERA")
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
        AXIS_DATA_WIDTH : integer := 8;
        MIN_FRAME_LENGTH : integer := 64;
        TX_FIFO_DEPTH : integer := 4096;
        RX_FIFO_DEPTH : integer := 4096
    );
    Port (
        gtx_clk                 : in std_logic;
        gtx_rst                 : in std_logic;
        logic_clk               : in std_logic;
        logic_rst               : in std_logic;
        -- AXI input
        ------------------------------------------------------------------------
        tx_axis_tdata           : in std_logic_vector((AXIS_DATA_WIDTH - 1) downto 0);
        tx_axis_tkeep           : in std_logic_vector(0 downto 0);
        tx_axis_tvalid          : in std_logic;
        tx_axis_tready          : out std_logic;
        tx_axis_tlast           : in std_logic;
        tx_axis_tuser           : in std_logic;
        -- AXI output
        ------------------------------------------------------------------------
        rx_axis_tdata           : out std_logic_vector((AXIS_DATA_WIDTH - 1) downto 0);
        rx_axis_tkeep           : out std_logic_vector(0 downto 0);
        rx_axis_tvalid          : out std_logic;
        rx_axis_tready          : in std_logic;
        rx_axis_tlast           : out std_logic;
        rx_axis_tuser           : out std_logic;
        -- GMII interface
        ------------------------------------------------------------------------
        gmii_rx_clk             : in std_logic;
        gmii_rxd                : in std_logic_vector(7 downto 0);
        gmii_rx_dv              : in std_logic;
        gmii_rx_er              : in std_logic;
        mii_tx_clk              : in std_logic;
        gmii_tx_clk             : out std_logic;
        gmii_txd                : out std_logic_vector(7 downto 0);
        gmii_tx_en              : out std_logic;
        gmii_tx_er              : out std_logic;
        -- Status
        ------------------------------------------------------------------------
        tx_error_underflow      : out std_logic;
        tx_fifo_overflow        : out std_logic;
        tx_fifo_bad_frame       : out std_logic;
        tx_fifo_good_frame      : out std_logic;
        rx_error_bad_frame      : out std_logic;
        rx_error_bad_fcs        : out std_logic;
        rx_fifo_overflow        : out std_logic;
        rx_fifo_bad_frame       : out std_logic;
        rx_fifo_good_frame      : out std_logic;
        speed                   : out std_logic_vector(1 downto 0);
        -- Configuration
        ------------------------------------------------------------------------
        cfg_ifg                 : in std_logic_vector(7 downto 0);
        cfg_tx_enable           : in std_logic;
        cfg_rx_enable           : in std_logic
    );
end component eth_mac_1g_gmii_fifo_mod;

---------------------------------------------------------------------------------------------------------------------
-- Gigabit Ethernet MAC Module Declaration
component eth_axi_core is
    Generic
    (
        UDP_CHECKSUM_PAYLOAD_FIFO_DEPTH : integer := 8192;
        INTERNAL_AXI_FIFO_DEPTH : integer := 8192
    );
    Port (
        -- Clock: 125 MHz
        -- Asynchronous reset
        -----------------------------------------------------------
        sys_clk                         : in std_logic;
        async_rst                       : in std_logic;
        -- AXI Data Stream Signals (Receiver)
        -----------------------------------------------------------
        rx_axis_tdata                   : in std_logic_vector(7 downto 0);
        rx_axis_tvalid                  : in std_logic;
        rx_axis_tready                  : out std_logic;
        rx_axis_tlast                   : in std_logic;
        rx_axis_tuser                   : in std_logic;
        -- AXI Data Stream Signals (Transmitter)
        -----------------------------------------------------------
        tx_axis_tdata                   : out std_logic_vector(7 downto 0);
        tx_axis_tvalid                  : out std_logic;
        tx_axis_tready                  : in std_logic;
        tx_axis_tlast                   : out std_logic;
        tx_axis_tuser                   : out std_logic;
        -- AXI Stream Ethernet Receiver Final Output
        -----------------------------------------------------------
        m_fifo_udp_payload_axis_tdata   : out std_logic_vector(7 downto 0);
        m_fifo_udp_payload_axis_tvalid  : out std_logic;
        m_fifo_udp_payload_axis_tready  : in std_logic;
        m_fifo_udp_payload_axis_tlast   : out std_logic;
        m_fifo_udp_payload_axis_tuser   : out std_logic;
        -- AXI Stream Ethernet Transmitter Initial Input
        -----------------------------------------------------------
        s_fifo_udp_payload_axis_tdata   : in std_logic_vector(7 downto 0);
        s_fifo_udp_payload_axis_tvalid  : in std_logic;
        s_fifo_udp_payload_axis_tready  : out std_logic;
        s_fifo_udp_payload_axis_tlast   : in std_logic;
        s_fifo_udp_payload_axis_tuser   : in std_logic;
        -- Ethernet & MAC Configuration
        -----------------------------------------------------------
        local_mac                       : in std_logic_vector(47 downto 0);
        local_ip                        : in std_logic_vector(31 downto 0);
        gateway_ip                      : in std_logic_vector(31 downto 0);
        subnet_mask                     : in std_logic_vector(31 downto 0);
        dest_ip                         : in std_logic_vector(31 downto 0);
        local_port                      : in std_logic_vector(15 downto 0);
        dest_port                       : in std_logic_vector(15 downto 0);
        udp_length                      : in std_logic_vector(15 downto 0)
    );
end component eth_axi_core;

begin

    -- Ethernet PHY Control
--------------------------------------------------------------------------------------------------------------------------------
    ETH_PHY_COM : gig_ethernet_pcs_pma_0 
    port map (
        -- Transceiver Interface
        ---------------------
        gtrefclk_p              => gbe_refclk_p_ibuf,                          
        gtrefclk_n              => gbe_refclk_n_ibuf,                 
        gtrefclk_out            => open,
        gtrefclk_bufg_out       => gbe_refclk_bufg_out,     -- Constant 125MHz derived from REFCLK                       
        txp                     => gbe_tx_p,
        txn                     => gbe_tx_n,
        rxp                     => gbe_rx_p,
        rxn                     => gbe_rx_n,
        resetdone               => open,
        userclk_out             => open,                          
        userclk2_out            => oei_clk,                 -- 125MHz Clock to drive OEI logic, does it run constantly?                          
        rxuserclk_out           => open,                    
        rxuserclk2_out          => open,                        
        pma_reset_out           => open,
        mmcm_locked_out         => open,
        independent_clock_bufg  => sys_clk200,              -- 200MHz System Clock always running     
        gmii_txd                => mac_gmii_txd, 
        gmii_tx_en              => mac_gmii_tx_en, 
        gmii_tx_er              => mac_gmii_tx_er,     
        gmii_rxd                => mac_gmii_rxd, 
        gmii_rx_dv              => mac_gmii_rx_dv,                 
        gmii_rx_er              => mac_gmii_rx_er,                  
        gmii_isolate            => open,                
        configuration_vector    => "10000",                 -- Autoneg = 1, Isolate = 0, PowerDown = 0, Loopback = 0, Unidir = 0, see PG047 Table 43
        an_interrupt            => open,
        an_adv_config_vector    => X"0020",                 -- AN FD, see PG047 Table 44
        an_restart_config       => '0',
        status_vector           => status_vector,           -- See PG047 Table 45
        reset                   => async_rst,               -- GbE is reset async
        signal_detect           => '1',                     -- No optics, signal is always present
        gt0_pll0outclk_out      => open,
        gt0_pll0outrefclk_out   => open,
        gt0_pll1outclk_out      => open,
        gt0_pll1outrefclk_out   => open,
        gt0_pll0refclklost_out  => open,
        gt0_pll0lock_out        => open    
    );
    
    -- Ethernet MAC Control
--------------------------------------------------------------------------------------------------------------------------------
    ETH_MAC_COM : eth_mac_1g_gmii_fifo_mod 
    generic map (
        TARGET => "XILINX",
        IODDR_STYLE => "IODDR",
        CLOCK_INPUT_STYLE => "BUFR",
        TX_FIFO_DEPTH => 8192,
        RX_FIFO_DEPTH => 4096
    )
    port map (
        gtx_clk                 => sys_clk125,
        gtx_rst                 => async_rst,
        logic_clk               => sys_clk125,
        logic_rst               => async_rst,
        tx_axis_tdata           => tx_axis_tdata,
        tx_axis_tkeep           => "0",
        tx_axis_tvalid          => tx_axis_tvalid,
        tx_axis_tready          => tx_axis_tready,
        tx_axis_tlast           => tx_axis_tlast,
        tx_axis_tuser           => tx_axis_tuser,
        rx_axis_tdata           => rx_axis_tdata,
        rx_axis_tkeep           => open,
        rx_axis_tvalid          => rx_axis_tvalid,
        rx_axis_tready          => rx_axis_tready,
        rx_axis_tlast           => rx_axis_tlast,
        rx_axis_tuser           => rx_axis_tuser,
        gmii_rx_clk             => oei_clk,
        gmii_rxd                => mac_gmii_rxd,
        gmii_rx_dv              => mac_gmii_rx_dv,
        gmii_rx_er              => mac_gmii_rx_er,
        mii_tx_clk              => oei_clk,
        gmii_tx_clk             => open,
        gmii_txd                => mac_gmii_txd,
        gmii_tx_en              => mac_gmii_tx_en,
        gmii_tx_er              => mac_gmii_tx_er,
        tx_error_underflow      => open,
        tx_fifo_overflow        => open,
        tx_fifo_bad_frame       => open,
        tx_fifo_good_frame      => open,
        rx_error_bad_frame      => open,
        rx_error_bad_fcs        => open,
        rx_fifo_overflow        => open,
        rx_fifo_bad_frame       => open,
        rx_fifo_good_frame      => open,
        speed                   => open,
        cfg_ifg                 => cfg_ifg_aux,
        cfg_tx_enable           => '1',
        cfg_rx_enable           => '1'
    );
    
    -- Ethernet Frame Decomposition & Generator 
--------------------------------------------------------------------------------------------------------------------------------
    ETH_FR_GEN : eth_axi_core 
    port map (
        sys_clk                         => sys_clk125,
        async_rst                       => async_rst,
        rx_axis_tdata                   => rx_axis_tdata,
        rx_axis_tvalid                  => rx_axis_tvalid,
        rx_axis_tready                  => rx_axis_tready,
        rx_axis_tlast                   => rx_axis_tlast,
        rx_axis_tuser                   => rx_axis_tuser,
        tx_axis_tdata                   => tx_axis_tdata,
        tx_axis_tvalid                  => tx_axis_tvalid,
        tx_axis_tready                  => tx_axis_tready,
        tx_axis_tlast                   => tx_axis_tlast,
        tx_axis_tuser                   => tx_axis_tuser,
        m_fifo_udp_payload_axis_tdata   => open,
        m_fifo_udp_payload_axis_tvalid  => open,
        m_fifo_udp_payload_axis_tready  => '1',
        m_fifo_udp_payload_axis_tlast   => open,
        m_fifo_udp_payload_axis_tuser   => open,
        s_fifo_udp_payload_axis_tdata   => eth_axis_tdata,
        s_fifo_udp_payload_axis_tvalid  => eth_axis_tvalid,
        s_fifo_udp_payload_axis_tready  => eth_axis_tready,
        s_fifo_udp_payload_axis_tlast   => eth_axis_tlast,
        s_fifo_udp_payload_axis_tuser   => eth_axis_tuser,
        local_mac                       => X"020000000000",
        local_ip                        => X"C0A80080",
        gateway_ip                      => X"C0A80001",
        subnet_mask                     => X"FFFFFF00",
        dest_ip                         => X"C0A80066",
        local_port                      => X"04D2",
        dest_port                       => X"1246",
        udp_length                      => X"0009"
    );
    
end eth_arch;
