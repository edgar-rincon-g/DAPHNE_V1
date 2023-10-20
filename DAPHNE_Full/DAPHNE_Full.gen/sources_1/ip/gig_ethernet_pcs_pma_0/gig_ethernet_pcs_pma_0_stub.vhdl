-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Fri Oct 20 09:55:08 2023
-- Host        : danielA running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/daniel.avila/Documents/GitHub/DAPHNE_V1/DAPHNE_Full/DAPHNE_Full.gen/sources_1/ip/gig_ethernet_pcs_pma_0/gig_ethernet_pcs_pma_0_stub.vhdl
-- Design      : gig_ethernet_pcs_pma_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tfbg676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity gig_ethernet_pcs_pma_0 is
  Port ( 
    gtrefclk : in STD_LOGIC;
    gtrefclk_bufg : in STD_LOGIC;
    txp : out STD_LOGIC;
    txn : out STD_LOGIC;
    rxp : in STD_LOGIC;
    rxn : in STD_LOGIC;
    resetdone : out STD_LOGIC;
    cplllock : out STD_LOGIC;
    mmcm_reset : out STD_LOGIC;
    txoutclk : out STD_LOGIC;
    rxoutclk : out STD_LOGIC;
    userclk : in STD_LOGIC;
    userclk2 : in STD_LOGIC;
    rxuserclk : in STD_LOGIC;
    rxuserclk2 : in STD_LOGIC;
    pma_reset : in STD_LOGIC;
    mmcm_locked : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    gmii_txd : in STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_tx_en : in STD_LOGIC;
    gmii_tx_er : in STD_LOGIC;
    gmii_rxd : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_rx_dv : out STD_LOGIC;
    gmii_rx_er : out STD_LOGIC;
    gmii_isolate : out STD_LOGIC;
    mdc : in STD_LOGIC;
    mdio_i : in STD_LOGIC;
    mdio_o : out STD_LOGIC;
    mdio_t : out STD_LOGIC;
    phyaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    configuration_vector : in STD_LOGIC_VECTOR ( 4 downto 0 );
    configuration_valid : in STD_LOGIC;
    an_interrupt : out STD_LOGIC;
    an_adv_config_vector : in STD_LOGIC_VECTOR ( 15 downto 0 );
    an_adv_config_val : in STD_LOGIC;
    an_restart_config : in STD_LOGIC;
    status_vector : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reset : in STD_LOGIC;
    signal_detect : in STD_LOGIC;
    gt0_pll0outclk_in : in STD_LOGIC;
    gt0_pll0outrefclk_in : in STD_LOGIC;
    gt0_pll1outclk_in : in STD_LOGIC;
    gt0_pll1outrefclk_in : in STD_LOGIC;
    gt0_pll0refclklost_in : in STD_LOGIC;
    gt0_pll0lock_in : in STD_LOGIC;
    gt0_pll0reset_out : out STD_LOGIC
  );

end gig_ethernet_pcs_pma_0;

architecture stub of gig_ethernet_pcs_pma_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "gtrefclk,gtrefclk_bufg,txp,txn,rxp,rxn,resetdone,cplllock,mmcm_reset,txoutclk,rxoutclk,userclk,userclk2,rxuserclk,rxuserclk2,pma_reset,mmcm_locked,independent_clock_bufg,gmii_txd[7:0],gmii_tx_en,gmii_tx_er,gmii_rxd[7:0],gmii_rx_dv,gmii_rx_er,gmii_isolate,mdc,mdio_i,mdio_o,mdio_t,phyaddr[4:0],configuration_vector[4:0],configuration_valid,an_interrupt,an_adv_config_vector[15:0],an_adv_config_val,an_restart_config,status_vector[15:0],reset,signal_detect,gt0_pll0outclk_in,gt0_pll0outrefclk_in,gt0_pll1outclk_in,gt0_pll1outrefclk_in,gt0_pll0refclklost_in,gt0_pll0lock_in,gt0_pll0reset_out";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "gig_ethernet_pcs_pma_v16_2_12,Vivado 2023.1";
begin
end;
