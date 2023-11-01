----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.10.2023 17:16:01
-- Design Name: 
-- Module Name: eth_core - ethCore_arch
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity eth_core is
--  Port ( );
end eth_core;

architecture ethCore_arch of eth_core is

-- Core Internal Connections
-------------------------------------------------------------------------------------------------------------------------------------------------
-- Ethernet PHY Signals
signal status_vector : std_logic_vector(15 downto 0);

-- Core components addition
-------------------------------------------------------------------------------------------------------------------------------------------------
-- Ethernet PHY Controller
component gig_ethernet_pcs_pma_0
    Port (
        -- Transceiver Interface
    ---------------------------------------------------------------------------------------------------------------------------------------------
        gtrefclk_p                  : in  std_logic;                          
        gtrefclk_n                  : in  std_logic;                      
        
        gtrefclk_out                : out std_logic;                           -- Very high quality clock for GT transceiver.
        gtrefclk_bufg_out           : out std_logic;                           
      
        txp                         : out std_logic;                    -- Differential +ve of serial transmission from PMA to PMD.
        txn                         : out std_logic;                    -- Differential -ve of serial transmission from PMA to PMD.
        rxp                         : in std_logic;                     -- Differential +ve for serial reception from PMD to PMA.
        rxn                         : in std_logic;                     -- Differential -ve for serial reception from PMD to PMA.
        resetdone                   : out std_logic;                           -- The GT transceiver has completed its reset cycle
        userclk_out                 : out std_logic;                           
        userclk2_out                : out std_logic;                           
        rxuserclk_out               : out std_logic;                         
        rxuserclk2_out              : out std_logic;                         
        pma_reset_out               : out std_logic;                           -- transceiver PMA reset signal
        mmcm_locked_out             : out std_logic;                           -- MMCM Locked
        independent_clock_bufg      : in std_logic;                   

        -- GMII Interface
    ---------------------------------------------------------------------------------------------------------------------------------------------
        gmii_txd                    : in std_logic_vector(7 downto 0);  -- Transmit data from client MAC.
        gmii_tx_en                  : in std_logic;                     -- Transmit control signal from client MAC.
        gmii_tx_er                  : in std_logic;                     -- Transmit control signal from client MAC.
        gmii_rxd                    : out std_logic_vector(7 downto 0); -- Received Data to client MAC.
        gmii_rx_dv                  : out std_logic;                    -- Received control signal to client MAC.
        gmii_rx_er                  : out std_logic;                    -- Received control signal to client MAC.
        gmii_isolate                : out std_logic;                    -- Tristate control to electrically isolate GMII.

        -- Management: Alternative to MDIO Interface
---------------------------------------------------------------------------------------------------------------------------------------------
        configuration_vector        : in std_logic_vector(4 downto 0);  -- Alternative to MDIO interface.
        an_interrupt                : out std_logic;                    -- Interrupt to processor to signal that Auto-Negotiation has completed
        an_adv_config_vector        : in std_logic_vector(15 downto 0); -- Alternate interface to program REG4 (AN ADV)
        an_restart_config           : in std_logic;                     -- Alternate signal to modify AN restart bit in REG0

        -- General IO's
---------------------------------------------------------------------------------------------------------------------------------------------
        status_vector               : out std_logic_vector(15 downto 0); -- Core status.
        reset                       : in std_logic;                     -- Asynchronous reset for entire core.
     
        signal_detect               : in std_logic;                      -- Input from PMD to indicate presence of optical input.
        gt0_pll0outclk_out          : out std_logic;
        gt0_pll0outrefclk_out       : out std_logic;
        gt0_pll1outclk_out          : out std_logic;
        gt0_pll1outrefclk_out       : out std_logic;
        gt0_pll0refclklost_out      : out std_logic;
        gt0_pll0lock_out            : out std_logic
    );
end component gig_ethernet_pcs_pma_0;

begin

-- Ethernet PHY Component Instantiation
-------------------------------------------------------------------------------------------------------------
ETH_PHY_COM : gig_ethernet_pcs_pma_0
    port map (
        -- Transceiver Interface
    ---------------------------------------------------------------------------------------------------------------------------------------------
        gtrefclk_p                  => daq_refclk_p_ibuf,                          
        gtrefclk_n                  => daq_refclk_n_ibuf,                      
        
        gtrefclk_out                => open,                -- Very high quality clock for GT transceiver.
        gtrefclk_bufg_out           => open,                           
      
        txp                         => ,                    -- Differential +ve of serial transmission from PMA to PMD.
        txn                         => ,                    -- Differential -ve of serial transmission from PMA to PMD.
        rxp                         => ,                    -- Differential +ve for serial reception from PMD to PMA.
        rxn                         => ,                    -- Differential -ve for serial reception from PMD to PMA.
        resetdone                   => ,                    -- The GT transceiver has completed its reset cycle
        userclk_out                 => ,                           
        userclk2_out                => ,                           
        rxuserclk_out               => ,                         
        rxuserclk2_out              => ,                         
        pma_reset_out               => ,                    -- transceiver PMA reset signal
        mmcm_locked_out             => ,                    -- MMCM Locked
        independent_clock_bufg      => ,                   

        -- GMII Interface
    ---------------------------------------------------------------------------------------------------------------------------------------------
        gmii_txd                    => ,                    -- Transmit data from client MAC.
        gmii_tx_en                  => ,                    -- Transmit control signal from client MAC.
        gmii_tx_er                  => ,                    -- Transmit control signal from client MAC.
        gmii_rxd                    => ,                    -- Received Data to client MAC.
        gmii_rx_dv                  => ,                    -- Received control signal to client MAC.
        gmii_rx_er                  => ,                    -- Received control signal to client MAC.
        gmii_isolate                => open,                -- Tristate control to electrically isolate GMII.

        -- Management: Alternative to MDIO Interface
---------------------------------------------------------------------------------------------------------------------------------------------
        configuration_vector        => ,                    -- Alternative to MDIO interface.
        an_interrupt                => ,                    -- Interrupt to processor to signal that Auto-Negotiation has completed
        an_adv_config_vector        => ,                    -- Alternate interface to program REG4 (AN ADV)
        an_restart_config           => ,                    -- Alternate signal to modify AN restart bit in REG0

        -- General IO's
---------------------------------------------------------------------------------------------------------------------------------------------
        status_vector               => status_vector,       -- Core status.
        reset                       => ,                    -- Asynchronous reset for entire core.
     
        signal_detect               => '1',                 -- Input from PMD to indicate presence of optical input.
        gt0_pll0outclk_out          => open,
        gt0_pll0outrefclk_out       => open,
        gt0_pll1outclk_out          => open,
        gt0_pll1outrefclk_out       => open,
        gt0_pll0refclklost_out      => open,
        gt0_pll0lock_out            => open
    );

end ethCore_arch;
