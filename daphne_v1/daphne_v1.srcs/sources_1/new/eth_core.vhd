----------------------------------------------------------------------------------
-- Company: Universidad EIA
-- Engineer: Daniel Avila Gomez - dniel.avila@eia.edu.co
-- 
-- Create Date: 31.10.2023 17:16:01
-- Design Name: Full UDP/IP Ethernet Module Stack With PHY 
-- Module Name: eth_core - ethCore_arch
-- Project Name: DAPHNE V1 
-- Target Devices: XC7A200T-2FBG676C
-- Tool Versions: 2023.1
-- Description: 
-- Creates a full ethernet module that includes ARP, UDP, IP, MAC and PHY Modules
-- Uses AXI Stream to receive and transmit its data
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- Modifications in the MAC module since it was originally designed to link with a
-- PHY device outside the FPGA, but in DAPHNE the PHY is also inside the FPGA!
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity eth_core is
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
end eth_core;

architecture ethCore_arch of eth_core is

-- Core Internal Connections
-------------------------------------------------------------------------------------------------------------------------------------------------

-- Master Clock for the Core (PHY - MAC Link)
signal eth_mstr_clk                         : std_logic;
-- PHY - MAC Link Specific Signals
signal gmii_phy_txd, gmii_phy_rxd           : std_logic_vector(7 downto 0);
signal gmii_phy_tx_en, gmii_phy_rx_dv       : std_logic;
signal gmii_phy_tx_er, gmii_phy_rx_er       : std_logic;
signal gmii_phy_reset_n                     : std_logic;

-- PHY Ref Clock Input Buffers Signals
signal gtp_refclk_p_ibuf, gtp_refclk_n_ibuf : std_logic;

-- Ethernet PHY Specific Signals
signal status_vector                        : std_logic_vector(15 downto 0);

-- Core Components Addition
-------------------------------------------------------------------------------------------------------------------------------------------------------

-- Ethernet MAC - UDP/IP Stack
-------------------------------------------------------------------------------------------------------------------------------------------------------
component eth_mac_stack 
    Generic (
        -- Target ("SIM", "GENERIC", "XILINX", "ALTERA")
        TARGET              : string    := "GENERIC";
        -- IODDR Style ("IODDR", "IODDR2")
        -- Use IODDR for Virtex-4, Virtex-5, Virtex-6, 7 Series, Ultrascale
        -- Use IODDR2 for Spartan-6
        IODDR_STYLE         : string    := "IODDR2";
        -- Clock Input Style ("BUFG", "BUFR", "BUFIO", "BUFIO2")
        -- Use BUFR for Virtex-5, Virtex-6, 7 Series
        -- Use BUFG for Ultrascale
        -- Use BUFIO2 for Spartan-6
        CLOCK_INPUT_STYLE   : string    := "BUFIO2";
        MAC_TX_FIFO_DEPTH   : integer   := 4096;
        MAC_RX_FIFO_DEPTH   : integer   := 4096;
        AXI_FIFO_DEPTH      : integer   := 8192
    );
    Port (
        -- Clock: 125 MHz
        -- Asynchronous Reset
-------------------------------------------------------------------------------------------------------------------------------------------------------
        clk                             : in std_logic;
        rst                             : in std_logic;                     -- All modules are reset active High 
        
        -- Misc GPIO
-------------------------------------------------------------------------------------------------------------------------------------------------------
        eth_rx_last_payload             : out std_logic_vector(7 downto 0);
        
        -- Ethernet: 1000BASE-T GMII
-------------------------------------------------------------------------------------------------------------------------------------------------------
        phy_rx_clk                      : in std_logic;
        phy_rxd                         : in std_logic_vector(7 downto 0);
        phy_rx_dv                       : in std_logic;
        phy_rx_er                       : in std_logic;
        phy_gtx_clk                     : out std_logic;
        phy_tx_clk                      : in std_logic;
        phy_txd                         : out std_logic_vector(7 downto 0);
        phy_tx_en                       : out std_logic;
        phy_tx_er                       : out std_logic;
        phy_reset_n                     : out std_logic;
        
        -- AXI Stream Module Tx Input
-------------------------------------------------------------------------------------------------------------------------------------------------------
        eth_udp_tx_payload_axis_tdata   : in std_logic_vector(7 downto 0);
        eth_udp_tx_payload_axis_tvalid  : in std_logic;
        eth_udp_tx_payload_axis_tready  : out std_logic;
        eth_udp_tx_payload_axis_tlast   : in std_logic;
        eth_udp_tx_payload_axis_tuser   : in std_logic;
        
        -- AXI Stream Module Rx Output
-------------------------------------------------------------------------------------------------------------------------------------------------------
        eth_udp_rx_payload_axis_tdata   : out std_logic_vector(7 downto 0);
        eth_udp_rx_payload_axis_tvalid  : out std_logic;
        eth_udp_rx_payload_axis_tready  : in std_logic;
        eth_udp_rx_payload_axis_tlast   : out std_logic;
        eth_udp_rx_payload_axis_tuser   : out std_logic
    );
end component eth_mac_stack;

-- Ethernet PHY Controller
-------------------------------------------------------------------------------------------------------------------------------------------------------
component gig_ethernet_pcs_pma_0
    Port (
        -- Transceiver Interface
-------------------------------------------------------------------------------------------------------------------------------------------------------
        gtrefclk_p                      : in  std_logic;                          
        gtrefclk_n                      : in  std_logic;                              
        gtrefclk_out                    : out std_logic;                        -- Very high quality clock for GT transceiver.
        gtrefclk_bufg_out               : out std_logic;                                
        txp                             : out std_logic;                        -- Differential +ve of serial transmission from PMA to PMD.
        txn                             : out std_logic;                        -- Differential -ve of serial transmission from PMA to PMD.
        rxp                             : in std_logic;                         -- Differential +ve for serial reception from PMD to PMA.
        rxn                             : in std_logic;                         -- Differential -ve for serial reception from PMD to PMA.
        resetdone                       : out std_logic;                        -- The GT transceiver has completed its reset cycle
        userclk_out                     : out std_logic;                           
        userclk2_out                    : out std_logic;                           
        rxuserclk_out                   : out std_logic;                         
        rxuserclk2_out                  : out std_logic;                         
        pma_reset_out                   : out std_logic;                        -- transceiver PMA reset signal
        mmcm_locked_out                 : out std_logic;                        -- MMCM Locked
        independent_clock_bufg          : in std_logic;                   

        -- GMII Interface
-------------------------------------------------------------------------------------------------------------------------------------------------------
        gmii_txd                        : in std_logic_vector(7 downto 0);      -- Transmit data from client MAC.
        gmii_tx_en                      : in std_logic;                         -- Transmit control signal from client MAC.
        gmii_tx_er                      : in std_logic;                         -- Transmit control signal from client MAC.
        gmii_rxd                        : out std_logic_vector(7 downto 0);     -- Received Data to client MAC.
        gmii_rx_dv                      : out std_logic;                        -- Received control signal to client MAC.
        gmii_rx_er                      : out std_logic;                        -- Received control signal to client MAC.
        gmii_isolate                    : out std_logic;                        -- Tristate control to electrically isolate GMII.

        -- Management: Alternative to MDIO Interface
-------------------------------------------------------------------------------------------------------------------------------------------------------
        configuration_vector            : in std_logic_vector(4 downto 0);      -- Alternative to MDIO interface.
        an_interrupt                    : out std_logic;                        -- Interrupt to processor to signal that Auto-Negotiation has completed
        an_adv_config_vector            : in std_logic_vector(15 downto 0);     -- Alternate interface to program REG4 (AN ADV)
        an_restart_config               : in std_logic;                         -- Alternate signal to modify AN restart bit in REG0

        -- General IO's
-------------------------------------------------------------------------------------------------------------------------------------------------------
        status_vector                   : out std_logic_vector(15 downto 0);    -- Core status.
        reset                           : in std_logic;                         -- Asynchronous reset for entire core.     
        signal_detect                   : in std_logic;                         -- Input from PMD to indicate presence of optical input.
        gt0_pll0outclk_out              : out std_logic;
        gt0_pll0outrefclk_out           : out std_logic;
        gt0_pll1outclk_out              : out std_logic;
        gt0_pll1outrefclk_out           : out std_logic;
        gt0_pll0refclklost_out          : out std_logic;
        gt0_pll0lock_out                : out std_logic
    );
end component gig_ethernet_pcs_pma_0;

begin

    -- Ethernet PHY Input Buffers Instantiation
----------------------------------------------------------------------------------------------------------------------------------------------------------------
    -- Must manually add IBUFs for refclk inputs
    -- See http://forums.xilinx.com/t5/Implementation/Vivado-IBUFDS-GTE2-driven-by-IBUF/td-p/383187
----------------------------------------------------------------------------------------------------------------------------------------------------------------
    GTP_REFCLK_P_COM : IBUF
    port map (
        O                               => gtp_refclk_p_ibuf,   -- Buffer output
        I                               => gtp_refclk_p         -- Buffer input (connect directly to top-level port)
    );
----------------------------------------------------------------------------------------------------------------------------------------------------------------
    GTP_REFCLK_N_COM : IBUF
    port map (
        O                               => gtp_refclk_n_ibuf,   -- Buffer output
        I                               => gtp_refclk_n         -- Buffer input (connect directly to top-level port)
    );

    -- Ethernet PHY Component Instantiation
----------------------------------------------------------------------------------------------------------------------------------------------------------------
    ETH_PHY_COM : gig_ethernet_pcs_pma_0
        port map (
            -- Transceiver Interface
    ----------------------------------------------------------------------------------------------------------------------------------------------------------
            gtrefclk_p                  => gtp_refclk_p_ibuf,                          
            gtrefclk_n                  => gtp_refclk_n_ibuf,                             
            gtrefclk_out                => open,                -- Very high quality clock for GT transceiver.
            gtrefclk_bufg_out           => open,                -- Constant 125 MHz Derived from REFCLK                
            txp                         => gtp_tx_p,            -- Differential +ve of serial transmission from PMA to PMD.
            txn                         => gtp_tx_n,            -- Differential -ve of serial transmission from PMA to PMD.
            rxp                         => gtp_rx_p,            -- Differential +ve for serial reception from PMD to PMA.
            rxn                         => gtp_rx_n,            -- Differential -ve for serial reception from PMD to PMA.
            resetdone                   => open,                -- The GT transceiver has completed its reset cycle
            userclk_out                 => open,                           
            userclk2_out                => eth_mstr_clk,        -- 125 MHz Clock to Drive the PHY - MAC Link logic       
            rxuserclk_out               => open,                         
            rxuserclk2_out              => open,                         
            pma_reset_out               => open,                -- transceiver PMA reset signal
            mmcm_locked_out             => open,                -- MMCM Locked
            independent_clock_bufg      => clk200,              -- 200 MHz System Clock Always Running
    
            -- GMII Interface
    ----------------------------------------------------------------------------------------------------------------------------------------------------------
            gmii_txd                    => gmii_phy_txd,        -- Transmit data from client MAC.
            gmii_tx_en                  => gmii_phy_tx_en,      -- Transmit control signal from client MAC.
            gmii_tx_er                  => gmii_phy_tx_er,      -- Transmit control signal from client MAC.
            gmii_rxd                    => gmii_phy_rxd,        -- Received Data to client MAC.
            gmii_rx_dv                  => gmii_phy_rx_dv,      -- Received control signal to client MAC.
            gmii_rx_er                  => gmii_phy_rx_er,      -- Received control signal to client MAC.
            gmii_isolate                => open,                -- Tristate control to electrically isolate GMII.
    
            -- Management: Alternative to MDIO Interface
    ----------------------------------------------------------------------------------------------------------------------------------------------------------
            configuration_vector        => "10000",             -- Alternative to MDIO interface. Autoneg=1, Isolate=0, PowerDown=0, Loopback=0, Unidir=0 
            an_interrupt                => open,                -- Interrupt to processor to signal that Auto-Negotiation has completed
            an_adv_config_vector        => X"0020",             -- Alternate interface to program REG4 (AN ADV) - AN FD, see PG047 Table 44 
            an_restart_config           => '0',                 -- Alternate signal to modify AN restart bit in REG0
    
            -- General IO's
    ----------------------------------------------------------------------------------------------------------------------------------------------------------
            status_vector               => status_vector,       -- Core status. See PG047 Table 45
            reset                       => gmii_phy_reset_n,    -- Asynchronous reset for entire core. GbE is reset async         
            signal_detect               => '1',                 -- Input from PMD to indicate presence of optical input. No optics, signal is always present
            gt0_pll0outclk_out          => open,
            gt0_pll0outrefclk_out       => open,
            gt0_pll1outclk_out          => open,
            gt0_pll1outrefclk_out       => open,
            gt0_pll0refclklost_out      => open,
            gt0_pll0lock_out            => open
        );
        
    -- Ethernet MAC - UDP/IP Stack Component Instantiation
----------------------------------------------------------------------------------------------------------------------------------------------------------------
    ETH_MAC_UDP_STACK_COM : eth_mac_stack 
        generic map (
            TARGET                          => "XILINX",
            IODDR_STYLE                     => "IODDR",
            CLOCK_INPUT_STYLE               => "BUFR",
            MAC_TX_FIFO_DEPTH               => 8192,
            MAC_RX_FIFO_DEPTH               => 8192,
            AXI_FIFO_DEPTH                  => 8192
        )
        port map (
            -- Clock: 125 MHz
            -- Asynchronous Reset
    ----------------------------------------------------------------------------------------------------------------------------------------------------------
            clk                             => clk125,
            rst                             => rst,                     -- All modules are reset active High 
            
            -- Misc GPIO
    ----------------------------------------------------------------------------------------------------------------------------------------------------------
            eth_rx_last_payload             => eth_payload,
            
            -- Ethernet: 1000BASE-T GMII
    ----------------------------------------------------------------------------------------------------------------------------------------------------------
            phy_rx_clk                      => eth_mstr_clk,
            phy_rxd                         => gmii_phy_rxd,
            phy_rx_dv                       => gmii_phy_rx_dv,
            phy_rx_er                       => gmii_phy_rx_er,
            phy_gtx_clk                     => open,
            phy_tx_clk                      => eth_mstr_clk,
            phy_txd                         => gmii_phy_txd,
            phy_tx_en                       => gmii_phy_tx_en,
            phy_tx_er                       => gmii_phy_tx_er,
            phy_reset_n                     => gmii_phy_reset_n,
            
            -- AXI Stream Module Tx Input
    ----------------------------------------------------------------------------------------------------------------------------------------------------------
            eth_udp_tx_payload_axis_tdata   => eth_tx_axis_tdata,
            eth_udp_tx_payload_axis_tvalid  => eth_tx_axis_tvalid,
            eth_udp_tx_payload_axis_tready  => eth_tx_axis_tready,
            eth_udp_tx_payload_axis_tlast   => eth_tx_axis_tlast,
            eth_udp_tx_payload_axis_tuser   => eth_tx_axis_tuser,
            
            -- AXI Stream Module Rx Output
    ----------------------------------------------------------------------------------------------------------------------------------------------------------
            eth_udp_rx_payload_axis_tdata   => eth_rx_axis_tdata,
            eth_udp_rx_payload_axis_tvalid  => eth_rx_axis_tvalid,
            eth_udp_rx_payload_axis_tready  => eth_rx_axis_tready,
            eth_udp_rx_payload_axis_tlast   => eth_rx_axis_tlast,
            eth_udp_rx_payload_axis_tuser   => eth_rx_axis_tuser
        );

end ethCore_arch;
