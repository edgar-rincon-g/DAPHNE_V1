// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Fri Oct 20 09:55:07 2023
// Host        : danielA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ gig_ethernet_pcs_pma_0_sim_netlist.v
// Design      : gig_ethernet_pcs_pma_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* EXAMPLE_SIMULATION = "0" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "gig_ethernet_pcs_pma_v16_2_12,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (gtrefclk,
    gtrefclk_bufg,
    txp,
    txn,
    rxp,
    rxn,
    resetdone,
    cplllock,
    mmcm_reset,
    txoutclk,
    rxoutclk,
    userclk,
    userclk2,
    rxuserclk,
    rxuserclk2,
    pma_reset,
    mmcm_locked,
    independent_clock_bufg,
    gmii_txd,
    gmii_tx_en,
    gmii_tx_er,
    gmii_rxd,
    gmii_rx_dv,
    gmii_rx_er,
    gmii_isolate,
    mdc,
    mdio_i,
    mdio_o,
    mdio_t,
    phyaddr,
    configuration_vector,
    configuration_valid,
    an_interrupt,
    an_adv_config_vector,
    an_adv_config_val,
    an_restart_config,
    status_vector,
    reset,
    signal_detect,
    gt0_pll0outclk_in,
    gt0_pll0outrefclk_in,
    gt0_pll1outclk_in,
    gt0_pll1outrefclk_in,
    gt0_pll0refclklost_in,
    gt0_pll0lock_in,
    gt0_pll0reset_out);
  input gtrefclk;
  input gtrefclk_bufg;
  output txp;
  output txn;
  input rxp;
  input rxn;
  output resetdone;
  output cplllock;
  output mmcm_reset;
  output txoutclk;
  output rxoutclk;
  input userclk;
  input userclk2;
  input rxuserclk;
  input rxuserclk2;
  input pma_reset;
  input mmcm_locked;
  input independent_clock_bufg;
  input [7:0]gmii_txd;
  input gmii_tx_en;
  input gmii_tx_er;
  output [7:0]gmii_rxd;
  output gmii_rx_dv;
  output gmii_rx_er;
  output gmii_isolate;
  input mdc;
  input mdio_i;
  output mdio_o;
  output mdio_t;
  input [4:0]phyaddr;
  input [4:0]configuration_vector;
  input configuration_valid;
  output an_interrupt;
  input [15:0]an_adv_config_vector;
  input an_adv_config_val;
  input an_restart_config;
  output [15:0]status_vector;
  input reset;
  input signal_detect;
  input gt0_pll0outclk_in;
  input gt0_pll0outrefclk_in;
  input gt0_pll1outclk_in;
  input gt0_pll1outrefclk_in;
  input gt0_pll0refclklost_in;
  input gt0_pll0lock_in;
  output gt0_pll0reset_out;

  wire \<const0> ;
  wire \<const1> ;
  wire an_adv_config_val;
  wire [15:0]an_adv_config_vector;
  wire an_interrupt;
  wire an_restart_config;
  wire configuration_valid;
  wire [4:0]configuration_vector;
  wire cplllock;
  wire gmii_isolate;
  wire gmii_rx_dv;
  wire gmii_rx_er;
  wire [7:0]gmii_rxd;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire [7:0]gmii_txd;
  wire gt0_pll0lock_in;
  wire gt0_pll0outclk_in;
  wire gt0_pll0outrefclk_in;
  wire gt0_pll0refclklost_in;
  wire gt0_pll0reset_out;
  wire gt0_pll1outclk_in;
  wire gt0_pll1outrefclk_in;
  wire gtrefclk_bufg;
  wire independent_clock_bufg;
  wire mdc;
  wire mdio_i;
  wire mdio_o;
  wire mdio_t;
  wire mmcm_locked;
  wire mmcm_reset;
  wire [4:0]phyaddr;
  wire pma_reset;
  wire reset;
  wire resetdone;
  wire rxn;
  wire rxoutclk;
  wire rxp;
  wire signal_detect;
  wire [15:0]\^status_vector ;
  wire txn;
  wire txoutclk;
  wire txp;
  wire userclk;
  wire userclk2;
  wire [11:7]NLW_U0_status_vector_UNCONNECTED;

  assign status_vector[15:12] = \^status_vector [15:12];
  assign status_vector[11] = \<const1> ;
  assign status_vector[10] = \<const0> ;
  assign status_vector[9:8] = \^status_vector [9:8];
  assign status_vector[7] = \<const0> ;
  assign status_vector[6:0] = \^status_vector [6:0];
  GND GND
       (.G(\<const0> ));
  (* EXAMPLE_SIMULATION = "0" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_block U0
       (.an_adv_config_val(an_adv_config_val),
        .an_adv_config_vector({an_adv_config_vector[15],1'b0,an_adv_config_vector[13:12],1'b0,1'b0,1'b0,an_adv_config_vector[8:7],1'b0,an_adv_config_vector[5],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .an_interrupt(an_interrupt),
        .an_restart_config(an_restart_config),
        .configuration_valid(configuration_valid),
        .configuration_vector(configuration_vector),
        .cplllock(cplllock),
        .gmii_isolate(gmii_isolate),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_er(gmii_rx_er),
        .gmii_rxd(gmii_rxd),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_er(gmii_tx_er),
        .gmii_txd(gmii_txd),
        .gt0_pll0lock_in(gt0_pll0lock_in),
        .gt0_pll0outclk_in(gt0_pll0outclk_in),
        .gt0_pll0outrefclk_in(gt0_pll0outrefclk_in),
        .gt0_pll0refclklost_in(gt0_pll0refclklost_in),
        .gt0_pll0reset_out(gt0_pll0reset_out),
        .gt0_pll1outclk_in(gt0_pll1outclk_in),
        .gt0_pll1outrefclk_in(gt0_pll1outrefclk_in),
        .gtrefclk(1'b0),
        .gtrefclk_bufg(gtrefclk_bufg),
        .independent_clock_bufg(independent_clock_bufg),
        .mdc(mdc),
        .mdio_i(mdio_i),
        .mdio_o(mdio_o),
        .mdio_t(mdio_t),
        .mmcm_locked(mmcm_locked),
        .mmcm_reset(mmcm_reset),
        .phyaddr(phyaddr),
        .pma_reset(pma_reset),
        .reset(reset),
        .resetdone(resetdone),
        .rxn(rxn),
        .rxoutclk(rxoutclk),
        .rxp(rxp),
        .rxuserclk(1'b0),
        .rxuserclk2(1'b0),
        .signal_detect(signal_detect),
        .status_vector(\^status_vector ),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp),
        .userclk(userclk),
        .userclk2(userclk2));
  VCC VCC
       (.P(\<const1> ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_GTWIZARD
   (txn,
    txp,
    rxoutclk,
    txoutclk,
    D,
    TXBUFSTATUS,
    RXBUFSTATUS,
    gtpe2_i,
    gtpe2_i_0,
    gtpe2_i_1,
    gtpe2_i_2,
    gtpe2_i_3,
    mmcm_reset,
    PLL0_RESET_reg,
    data_in,
    rx_fsm_reset_done_int_reg,
    gtrefclk_bufg,
    rxn,
    rxp,
    gt0_pll0outclk_in,
    gt0_pll0outrefclk_in,
    gt0_pll1outclk_in,
    gt0_pll1outrefclk_in,
    reset_out,
    reset,
    userclk,
    TXPD,
    RXPD,
    Q,
    gtpe2_i_4,
    gtpe2_i_5,
    gtpe2_i_6,
    independent_clock_bufg,
    pma_reset,
    gt0_gtrxreset_gt_d1_reg,
    gtpe2_i_7,
    gt0_pll0refclklost_in,
    mmcm_locked,
    gt0_pll0lock_in,
    data_out);
  output txn;
  output txp;
  output rxoutclk;
  output txoutclk;
  output [1:0]D;
  output [0:0]TXBUFSTATUS;
  output [0:0]RXBUFSTATUS;
  output [15:0]gtpe2_i;
  output [1:0]gtpe2_i_0;
  output [1:0]gtpe2_i_1;
  output [1:0]gtpe2_i_2;
  output [1:0]gtpe2_i_3;
  output mmcm_reset;
  output PLL0_RESET_reg;
  output data_in;
  output rx_fsm_reset_done_int_reg;
  input gtrefclk_bufg;
  input rxn;
  input rxp;
  input gt0_pll0outclk_in;
  input gt0_pll0outrefclk_in;
  input gt0_pll1outclk_in;
  input gt0_pll1outrefclk_in;
  input reset_out;
  input reset;
  input userclk;
  input [0:0]TXPD;
  input [0:0]RXPD;
  input [15:0]Q;
  input [1:0]gtpe2_i_4;
  input [1:0]gtpe2_i_5;
  input [1:0]gtpe2_i_6;
  input independent_clock_bufg;
  input pma_reset;
  input gt0_gtrxreset_gt_d1_reg;
  input gtpe2_i_7;
  input gt0_pll0refclklost_in;
  input mmcm_locked;
  input gt0_pll0lock_in;
  input data_out;

  wire [1:0]D;
  wire PLL0_RESET_reg;
  wire [15:0]Q;
  wire [0:0]RXBUFSTATUS;
  wire [0:0]RXPD;
  wire [0:0]TXBUFSTATUS;
  wire [0:0]TXPD;
  wire data_in;
  wire data_out;
  wire gt0_gtrxreset_gt_d1_reg;
  wire gt0_pll0lock_in;
  wire gt0_pll0outclk_in;
  wire gt0_pll0outrefclk_in;
  wire gt0_pll0refclklost_in;
  wire gt0_pll1outclk_in;
  wire gt0_pll1outrefclk_in;
  wire [15:0]gtpe2_i;
  wire [1:0]gtpe2_i_0;
  wire [1:0]gtpe2_i_1;
  wire [1:0]gtpe2_i_2;
  wire [1:0]gtpe2_i_3;
  wire [1:0]gtpe2_i_4;
  wire [1:0]gtpe2_i_5;
  wire [1:0]gtpe2_i_6;
  wire gtpe2_i_7;
  wire gtrefclk_bufg;
  wire independent_clock_bufg;
  wire mmcm_locked;
  wire mmcm_reset;
  wire pma_reset;
  wire reset;
  wire reset_out;
  wire rx_fsm_reset_done_int_reg;
  wire rxn;
  wire rxoutclk;
  wire rxp;
  wire txn;
  wire txoutclk;
  wire txp;
  wire userclk;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_GTWIZARD_init U0
       (.D(D),
        .Q(Q),
        .RXBUFSTATUS(RXBUFSTATUS),
        .RXPD(RXPD),
        .TXBUFSTATUS(TXBUFSTATUS),
        .TXPD(TXPD),
        .data_in(data_in),
        .data_out(data_out),
        .gt0_gtrxreset_gt_d1_reg_0(gt0_gtrxreset_gt_d1_reg),
        .gt0_pll0lock_in(gt0_pll0lock_in),
        .gt0_pll0outclk_in(gt0_pll0outclk_in),
        .gt0_pll0outrefclk_in(gt0_pll0outrefclk_in),
        .gt0_pll0refclklost_in(gt0_pll0refclklost_in),
        .gt0_pll1outclk_in(gt0_pll1outclk_in),
        .gt0_pll1outrefclk_in(gt0_pll1outrefclk_in),
        .gtpe2_i(gtpe2_i),
        .gtpe2_i_0(gtpe2_i_0),
        .gtpe2_i_1(gtpe2_i_1),
        .gtpe2_i_2(gtpe2_i_2),
        .gtpe2_i_3(gtpe2_i_3),
        .gtpe2_i_4(gtpe2_i_4),
        .gtpe2_i_5(gtpe2_i_5),
        .gtpe2_i_6(gtpe2_i_6),
        .gtpe2_i_7(gtpe2_i_7),
        .gtrefclk_bufg(gtrefclk_bufg),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_locked(mmcm_locked),
        .mmcm_reset(mmcm_reset),
        .pma_reset(pma_reset),
        .reset(reset),
        .reset_in(PLL0_RESET_reg),
        .reset_out(reset_out),
        .rx_fsm_reset_done_int_reg(rx_fsm_reset_done_int_reg),
        .rxn(rxn),
        .rxoutclk(rxoutclk),
        .rxp(rxp),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp),
        .userclk(userclk));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_GTWIZARD_GT
   (txn,
    txp,
    rxoutclk,
    gtpe2_i_0,
    txoutclk,
    gtpe2_i_1,
    D,
    TXBUFSTATUS,
    RXBUFSTATUS,
    gtpe2_i_2,
    gtpe2_i_3,
    gtpe2_i_4,
    gtpe2_i_5,
    gtpe2_i_6,
    gtrefclk_bufg,
    rxn,
    rxp,
    gt0_gttxreset_in0_out,
    gt0_pll0outclk_in,
    gt0_pll0outrefclk_in,
    gt0_pll1outclk_in,
    gt0_pll1outrefclk_in,
    reset_out,
    reset,
    gt0_rxuserrdy_t,
    userclk,
    TXPD,
    gt0_txuserrdy_t,
    RXPD,
    Q,
    gtpe2_i_7,
    gtpe2_i_8,
    gtpe2_i_9,
    SR,
    reset_sync5);
  output txn;
  output txp;
  output rxoutclk;
  output gtpe2_i_0;
  output txoutclk;
  output gtpe2_i_1;
  output [1:0]D;
  output [0:0]TXBUFSTATUS;
  output [0:0]RXBUFSTATUS;
  output [15:0]gtpe2_i_2;
  output [1:0]gtpe2_i_3;
  output [1:0]gtpe2_i_4;
  output [1:0]gtpe2_i_5;
  output [1:0]gtpe2_i_6;
  input gtrefclk_bufg;
  input rxn;
  input rxp;
  input gt0_gttxreset_in0_out;
  input gt0_pll0outclk_in;
  input gt0_pll0outrefclk_in;
  input gt0_pll1outclk_in;
  input gt0_pll1outrefclk_in;
  input reset_out;
  input reset;
  input gt0_rxuserrdy_t;
  input userclk;
  input [0:0]TXPD;
  input gt0_txuserrdy_t;
  input [0:0]RXPD;
  input [15:0]Q;
  input [1:0]gtpe2_i_7;
  input [1:0]gtpe2_i_8;
  input [1:0]gtpe2_i_9;
  input [0:0]SR;
  input reset_sync5;

  wire [1:0]D;
  wire [4:4]DRPADDR;
  wire GTRXRESET;
  wire [15:0]Q;
  wire [0:0]RXBUFSTATUS;
  wire [0:0]RXPD;
  wire [0:0]SR;
  wire [0:0]TXBUFSTATUS;
  wire [0:0]TXPD;
  wire gt0_gttxreset_in0_out;
  wire gt0_pll0outclk_in;
  wire gt0_pll0outrefclk_in;
  wire gt0_pll1outclk_in;
  wire gt0_pll1outrefclk_in;
  wire gt0_rxuserrdy_t;
  wire gt0_txuserrdy_t;
  wire gtpe2_i_0;
  wire gtpe2_i_1;
  wire [15:0]gtpe2_i_2;
  wire [1:0]gtpe2_i_3;
  wire [1:0]gtpe2_i_4;
  wire [1:0]gtpe2_i_5;
  wire [1:0]gtpe2_i_6;
  wire [1:0]gtpe2_i_7;
  wire [1:0]gtpe2_i_8;
  wire [1:0]gtpe2_i_9;
  wire gtpe2_i_n_0;
  wire gtpe2_i_n_1;
  wire gtpe2_i_n_102;
  wire gtpe2_i_n_104;
  wire gtpe2_i_n_105;
  wire gtpe2_i_n_14;
  wire gtpe2_i_n_28;
  wire gtpe2_i_n_29;
  wire gtpe2_i_n_39;
  wire gtpe2_i_n_40;
  wire gtpe2_i_n_43;
  wire gtpe2_i_n_48;
  wire gtpe2_i_n_49;
  wire gtpe2_i_n_50;
  wire gtpe2_i_n_51;
  wire gtpe2_i_n_52;
  wire gtpe2_i_n_53;
  wire gtpe2_i_n_54;
  wire gtpe2_i_n_55;
  wire gtpe2_i_n_56;
  wire gtpe2_i_n_57;
  wire gtpe2_i_n_58;
  wire gtpe2_i_n_59;
  wire gtpe2_i_n_60;
  wire gtpe2_i_n_61;
  wire gtpe2_i_n_62;
  wire gtpe2_i_n_63;
  wire gtpe2_i_n_64;
  wire gtpe2_i_n_65;
  wire gtpe2_i_n_66;
  wire gtpe2_i_n_67;
  wire gtpe2_i_n_68;
  wire gtpe2_i_n_69;
  wire gtpe2_i_n_7;
  wire gtpe2_i_n_70;
  wire gtpe2_i_n_71;
  wire gtpe2_i_n_72;
  wire gtpe2_i_n_73;
  wire gtpe2_i_n_74;
  wire gtpe2_i_n_75;
  wire gtpe2_i_n_76;
  wire gtpe2_i_n_77;
  wire gtpe2_i_n_78;
  wire gtpe2_i_n_8;
  wire gtrefclk_bufg;
  wire gtrxreset_seq_i_n_1;
  wire gtrxreset_seq_i_n_10;
  wire gtrxreset_seq_i_n_11;
  wire gtrxreset_seq_i_n_12;
  wire gtrxreset_seq_i_n_13;
  wire gtrxreset_seq_i_n_14;
  wire gtrxreset_seq_i_n_15;
  wire gtrxreset_seq_i_n_16;
  wire gtrxreset_seq_i_n_17;
  wire gtrxreset_seq_i_n_18;
  wire gtrxreset_seq_i_n_2;
  wire gtrxreset_seq_i_n_3;
  wire gtrxreset_seq_i_n_4;
  wire gtrxreset_seq_i_n_5;
  wire gtrxreset_seq_i_n_6;
  wire gtrxreset_seq_i_n_7;
  wire gtrxreset_seq_i_n_8;
  wire gtrxreset_seq_i_n_9;
  wire reset;
  wire reset_out;
  wire reset_sync5;
  wire rxn;
  wire rxoutclk;
  wire rxp;
  wire txn;
  wire txoutclk;
  wire txp;
  wire userclk;
  wire NLW_gtpe2_i_PHYSTATUS_UNCONNECTED;
  wire NLW_gtpe2_i_PMARSVDOUT0_UNCONNECTED;
  wire NLW_gtpe2_i_PMARSVDOUT1_UNCONNECTED;
  wire NLW_gtpe2_i_RXCDRLOCK_UNCONNECTED;
  wire NLW_gtpe2_i_RXCHANBONDSEQ_UNCONNECTED;
  wire NLW_gtpe2_i_RXCHANISALIGNED_UNCONNECTED;
  wire NLW_gtpe2_i_RXCHANREALIGN_UNCONNECTED;
  wire NLW_gtpe2_i_RXCOMINITDET_UNCONNECTED;
  wire NLW_gtpe2_i_RXCOMSASDET_UNCONNECTED;
  wire NLW_gtpe2_i_RXCOMWAKEDET_UNCONNECTED;
  wire NLW_gtpe2_i_RXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtpe2_i_RXELECIDLE_UNCONNECTED;
  wire NLW_gtpe2_i_RXHEADERVALID_UNCONNECTED;
  wire NLW_gtpe2_i_RXOSINTDONE_UNCONNECTED;
  wire NLW_gtpe2_i_RXOSINTSTARTED_UNCONNECTED;
  wire NLW_gtpe2_i_RXOSINTSTROBEDONE_UNCONNECTED;
  wire NLW_gtpe2_i_RXOSINTSTROBESTARTED_UNCONNECTED;
  wire NLW_gtpe2_i_RXOUTCLKFABRIC_UNCONNECTED;
  wire NLW_gtpe2_i_RXOUTCLKPCS_UNCONNECTED;
  wire NLW_gtpe2_i_RXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtpe2_i_RXRATEDONE_UNCONNECTED;
  wire NLW_gtpe2_i_RXSYNCDONE_UNCONNECTED;
  wire NLW_gtpe2_i_RXSYNCOUT_UNCONNECTED;
  wire NLW_gtpe2_i_RXVALID_UNCONNECTED;
  wire NLW_gtpe2_i_TXCOMFINISH_UNCONNECTED;
  wire NLW_gtpe2_i_TXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtpe2_i_TXGEARBOXREADY_UNCONNECTED;
  wire NLW_gtpe2_i_TXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtpe2_i_TXPHINITDONE_UNCONNECTED;
  wire NLW_gtpe2_i_TXRATEDONE_UNCONNECTED;
  wire NLW_gtpe2_i_TXSYNCDONE_UNCONNECTED;
  wire NLW_gtpe2_i_TXSYNCOUT_UNCONNECTED;
  wire [15:0]NLW_gtpe2_i_PCSRSVDOUT_UNCONNECTED;
  wire [3:2]NLW_gtpe2_i_RXCHARISCOMMA_UNCONNECTED;
  wire [3:2]NLW_gtpe2_i_RXCHARISK_UNCONNECTED;
  wire [3:0]NLW_gtpe2_i_RXCHBONDO_UNCONNECTED;
  wire [31:16]NLW_gtpe2_i_RXDATA_UNCONNECTED;
  wire [1:0]NLW_gtpe2_i_RXDATAVALID_UNCONNECTED;
  wire [3:2]NLW_gtpe2_i_RXDISPERR_UNCONNECTED;
  wire [2:0]NLW_gtpe2_i_RXHEADER_UNCONNECTED;
  wire [3:2]NLW_gtpe2_i_RXNOTINTABLE_UNCONNECTED;
  wire [4:0]NLW_gtpe2_i_RXPHMONITOR_UNCONNECTED;
  wire [4:0]NLW_gtpe2_i_RXPHSLIPMONITOR_UNCONNECTED;
  wire [1:0]NLW_gtpe2_i_RXSTARTOFSEQ_UNCONNECTED;
  wire [2:0]NLW_gtpe2_i_RXSTATUS_UNCONNECTED;

  (* box_type = "PRIMITIVE" *) 
  GTPE2_CHANNEL #(
    .ACJTAG_DEBUG_MODE(1'b0),
    .ACJTAG_MODE(1'b0),
    .ACJTAG_RESET(1'b0),
    .ADAPT_CFG0(20'b00000000000000000000),
    .ALIGN_COMMA_DOUBLE("FALSE"),
    .ALIGN_COMMA_ENABLE(10'b0001111111),
    .ALIGN_COMMA_WORD(2),
    .ALIGN_MCOMMA_DET("TRUE"),
    .ALIGN_MCOMMA_VALUE(10'b1010000011),
    .ALIGN_PCOMMA_DET("TRUE"),
    .ALIGN_PCOMMA_VALUE(10'b0101111100),
    .CBCC_DATA_SOURCE_SEL("DECODED"),
    .CFOK_CFG(43'b1001001000000000000000001000000111010000000),
    .CFOK_CFG2(7'b0100000),
    .CFOK_CFG3(7'b0100000),
    .CFOK_CFG4(1'b0),
    .CFOK_CFG5(2'b00),
    .CFOK_CFG6(4'b0000),
    .CHAN_BOND_KEEP_ALIGN("FALSE"),
    .CHAN_BOND_MAX_SKEW(1),
    .CHAN_BOND_SEQ_1_1(10'b0000000000),
    .CHAN_BOND_SEQ_1_2(10'b0000000000),
    .CHAN_BOND_SEQ_1_3(10'b0000000000),
    .CHAN_BOND_SEQ_1_4(10'b0000000000),
    .CHAN_BOND_SEQ_1_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_1(10'b0000000000),
    .CHAN_BOND_SEQ_2_2(10'b0000000000),
    .CHAN_BOND_SEQ_2_3(10'b0000000000),
    .CHAN_BOND_SEQ_2_4(10'b0000000000),
    .CHAN_BOND_SEQ_2_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_USE("FALSE"),
    .CHAN_BOND_SEQ_LEN(1),
    .CLK_COMMON_SWING(1'b0),
    .CLK_CORRECT_USE("TRUE"),
    .CLK_COR_KEEP_IDLE("FALSE"),
    .CLK_COR_MAX_LAT(36),
    .CLK_COR_MIN_LAT(33),
    .CLK_COR_PRECEDENCE("TRUE"),
    .CLK_COR_REPEAT_WAIT(0),
    .CLK_COR_SEQ_1_1(10'b0110111100),
    .CLK_COR_SEQ_1_2(10'b0001010000),
    .CLK_COR_SEQ_1_3(10'b0000000000),
    .CLK_COR_SEQ_1_4(10'b0000000000),
    .CLK_COR_SEQ_1_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_1(10'b0110111100),
    .CLK_COR_SEQ_2_2(10'b0010110101),
    .CLK_COR_SEQ_2_3(10'b0000000000),
    .CLK_COR_SEQ_2_4(10'b0000000000),
    .CLK_COR_SEQ_2_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_USE("TRUE"),
    .CLK_COR_SEQ_LEN(2),
    .DEC_MCOMMA_DETECT("TRUE"),
    .DEC_PCOMMA_DETECT("TRUE"),
    .DEC_VALID_COMMA_ONLY("FALSE"),
    .DMONITOR_CFG(24'h000A00),
    .ES_CLK_PHASE_SEL(1'b0),
    .ES_CONTROL(6'b000000),
    .ES_ERRDET_EN("FALSE"),
    .ES_EYE_SCAN_EN("FALSE"),
    .ES_HORZ_OFFSET(12'h010),
    .ES_PMA_CFG(10'b0000000000),
    .ES_PRESCALE(5'b00000),
    .ES_QUALIFIER(80'h00000000000000000000),
    .ES_QUAL_MASK(80'h00000000000000000000),
    .ES_SDATA_MASK(80'h00000000000000000000),
    .ES_VERT_OFFSET(9'b000000000),
    .FTS_DESKEW_SEQ_ENABLE(4'b1111),
    .FTS_LANE_DESKEW_CFG(4'b1111),
    .FTS_LANE_DESKEW_EN("FALSE"),
    .GEARBOX_MODE(3'b000),
    .IS_CLKRSVD0_INVERTED(1'b0),
    .IS_CLKRSVD1_INVERTED(1'b0),
    .IS_DMONITORCLK_INVERTED(1'b0),
    .IS_DRPCLK_INVERTED(1'b0),
    .IS_RXUSRCLK2_INVERTED(1'b0),
    .IS_RXUSRCLK_INVERTED(1'b0),
    .IS_SIGVALIDCLK_INVERTED(1'b0),
    .IS_TXPHDLYTSTCLK_INVERTED(1'b0),
    .IS_TXUSRCLK2_INVERTED(1'b0),
    .IS_TXUSRCLK_INVERTED(1'b0),
    .LOOPBACK_CFG(1'b0),
    .OUTREFCLK_SEL_INV(2'b11),
    .PCS_PCIE_EN("FALSE"),
    .PCS_RSVD_ATTR(48'h000000000000),
    .PD_TRANS_TIME_FROM_P2(12'h03C),
    .PD_TRANS_TIME_NONE_P2(8'h19),
    .PD_TRANS_TIME_TO_P2(8'h64),
    .PMA_LOOPBACK_CFG(1'b0),
    .PMA_RSV(32'h00000333),
    .PMA_RSV2(32'h00002040),
    .PMA_RSV3(2'b00),
    .PMA_RSV4(4'b0000),
    .PMA_RSV5(1'b0),
    .PMA_RSV6(1'b0),
    .PMA_RSV7(1'b0),
    .RXBUFRESET_TIME(5'b00001),
    .RXBUF_ADDR_MODE("FULL"),
    .RXBUF_EIDLE_HI_CNT(4'b1000),
    .RXBUF_EIDLE_LO_CNT(4'b0000),
    .RXBUF_EN("TRUE"),
    .RXBUF_RESET_ON_CB_CHANGE("TRUE"),
    .RXBUF_RESET_ON_COMMAALIGN("FALSE"),
    .RXBUF_RESET_ON_EIDLE("FALSE"),
    .RXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .RXBUF_THRESH_OVFLW(61),
    .RXBUF_THRESH_OVRD("FALSE"),
    .RXBUF_THRESH_UNDFLW(8),
    .RXCDRFREQRESET_TIME(5'b00001),
    .RXCDRPHRESET_TIME(5'b00001),
    .RXCDR_CFG(83'h0000107FE106001041010),
    .RXCDR_FR_RESET_ON_EIDLE(1'b0),
    .RXCDR_HOLD_DURING_EIDLE(1'b0),
    .RXCDR_LOCK_CFG(6'b001001),
    .RXCDR_PH_RESET_ON_EIDLE(1'b0),
    .RXDLY_CFG(16'h001F),
    .RXDLY_LCFG(9'h030),
    .RXDLY_TAP_CFG(16'h0000),
    .RXGEARBOX_EN("FALSE"),
    .RXISCANRESET_TIME(5'b00001),
    .RXLPMRESET_TIME(7'b0001111),
    .RXLPM_BIAS_STARTUP_DISABLE(1'b0),
    .RXLPM_CFG(4'b0110),
    .RXLPM_CFG1(1'b0),
    .RXLPM_CM_CFG(1'b0),
    .RXLPM_GC_CFG(9'b111100010),
    .RXLPM_GC_CFG2(3'b001),
    .RXLPM_HF_CFG(14'b00001111110000),
    .RXLPM_HF_CFG2(5'b01010),
    .RXLPM_HF_CFG3(4'b0000),
    .RXLPM_HOLD_DURING_EIDLE(1'b0),
    .RXLPM_INCM_CFG(1'b1),
    .RXLPM_IPCM_CFG(1'b0),
    .RXLPM_LF_CFG(18'b000000001111110000),
    .RXLPM_LF_CFG2(5'b01010),
    .RXLPM_OSINT_CFG(3'b100),
    .RXOOB_CFG(7'b0000110),
    .RXOOB_CLK_CFG("PMA"),
    .RXOSCALRESET_TIME(5'b00011),
    .RXOSCALRESET_TIMEOUT(5'b00000),
    .RXOUT_DIV(4),
    .RXPCSRESET_TIME(5'b00001),
    .RXPHDLY_CFG(24'h084020),
    .RXPH_CFG(24'hC00002),
    .RXPH_MONITOR_SEL(5'b00000),
    .RXPI_CFG0(3'b000),
    .RXPI_CFG1(1'b1),
    .RXPI_CFG2(1'b1),
    .RXPMARESET_TIME(5'b00011),
    .RXPRBS_ERR_LOOPBACK(1'b0),
    .RXSLIDE_AUTO_WAIT(7),
    .RXSLIDE_MODE("OFF"),
    .RXSYNC_MULTILANE(1'b0),
    .RXSYNC_OVRD(1'b0),
    .RXSYNC_SKIP_DA(1'b0),
    .RX_BIAS_CFG(16'b0000111100110011),
    .RX_BUFFER_CFG(6'b000000),
    .RX_CLK25_DIV(5),
    .RX_CLKMUX_EN(1'b1),
    .RX_CM_SEL(2'b11),
    .RX_CM_TRIM(4'b1010),
    .RX_DATA_WIDTH(20),
    .RX_DDI_SEL(6'b000000),
    .RX_DEBUG_CFG(14'b00000000000000),
    .RX_DEFER_RESET_BUF_EN("TRUE"),
    .RX_DISPERR_SEQ_MATCH("TRUE"),
    .RX_OS_CFG(13'b0000010000000),
    .RX_SIG_VALID_DLY(10),
    .RX_XCLK_SEL("RXREC"),
    .SAS_MAX_COM(64),
    .SAS_MIN_COM(36),
    .SATA_BURST_SEQ_LEN(4'b1111),
    .SATA_BURST_VAL(3'b100),
    .SATA_EIDLE_VAL(3'b100),
    .SATA_MAX_BURST(8),
    .SATA_MAX_INIT(21),
    .SATA_MAX_WAKE(7),
    .SATA_MIN_BURST(4),
    .SATA_MIN_INIT(12),
    .SATA_MIN_WAKE(4),
    .SATA_PLL_CFG("VCO_3000MHZ"),
    .SHOW_REALIGN_COMMA("TRUE"),
    .SIM_RECEIVER_DETECT_PASS("TRUE"),
    .SIM_RESET_SPEEDUP("FALSE"),
    .SIM_TX_EIDLE_DRIVE_LEVEL("X"),
    .SIM_VERSION("2.0"),
    .TERM_RCAL_CFG(15'b100001000010000),
    .TERM_RCAL_OVRD(3'b000),
    .TRANS_TIME_RATE(8'h0E),
    .TST_RSV(32'h00000000),
    .TXBUF_EN("TRUE"),
    .TXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .TXDLY_CFG(16'h001F),
    .TXDLY_LCFG(9'h030),
    .TXDLY_TAP_CFG(16'h0000),
    .TXGEARBOX_EN("FALSE"),
    .TXOOB_CFG(1'b0),
    .TXOUT_DIV(4),
    .TXPCSRESET_TIME(5'b00001),
    .TXPHDLY_CFG(24'h084020),
    .TXPH_CFG(16'h0780),
    .TXPH_MONITOR_SEL(5'b00000),
    .TXPI_CFG0(2'b00),
    .TXPI_CFG1(2'b00),
    .TXPI_CFG2(2'b00),
    .TXPI_CFG3(1'b0),
    .TXPI_CFG4(1'b0),
    .TXPI_CFG5(3'b000),
    .TXPI_GREY_SEL(1'b0),
    .TXPI_INVSTROBE_SEL(1'b0),
    .TXPI_PPMCLK_SEL("TXUSRCLK2"),
    .TXPI_PPM_CFG(8'b00000000),
    .TXPI_SYNFREQ_PPM(3'b001),
    .TXPMARESET_TIME(5'b00001),
    .TXSYNC_MULTILANE(1'b0),
    .TXSYNC_OVRD(1'b0),
    .TXSYNC_SKIP_DA(1'b0),
    .TX_CLK25_DIV(5),
    .TX_CLKMUX_EN(1'b1),
    .TX_DATA_WIDTH(20),
    .TX_DEEMPH0(6'b000000),
    .TX_DEEMPH1(6'b000000),
    .TX_DRIVE_MODE("DIRECT"),
    .TX_EIDLE_ASSERT_DELAY(3'b110),
    .TX_EIDLE_DEASSERT_DELAY(3'b100),
    .TX_LOOPBACK_DRIVE_HIZ("FALSE"),
    .TX_MAINCURSOR_SEL(1'b0),
    .TX_MARGIN_FULL_0(7'b1001110),
    .TX_MARGIN_FULL_1(7'b1001001),
    .TX_MARGIN_FULL_2(7'b1000101),
    .TX_MARGIN_FULL_3(7'b1000010),
    .TX_MARGIN_FULL_4(7'b1000000),
    .TX_MARGIN_LOW_0(7'b1000110),
    .TX_MARGIN_LOW_1(7'b1000100),
    .TX_MARGIN_LOW_2(7'b1000010),
    .TX_MARGIN_LOW_3(7'b1000000),
    .TX_MARGIN_LOW_4(7'b1000000),
    .TX_PREDRIVER_MODE(1'b0),
    .TX_RXDETECT_CFG(14'h1832),
    .TX_RXDETECT_REF(3'b100),
    .TX_XCLK_SEL("TXOUT"),
    .UCODEER_CLR(1'b0),
    .USE_PCS_CLK_PHASE_SEL(1'b0)) 
    gtpe2_i
       (.CFGRESET(1'b0),
        .CLKRSVD0(1'b0),
        .CLKRSVD1(1'b0),
        .DMONFIFORESET(1'b0),
        .DMONITORCLK(1'b0),
        .DMONITOROUT({gtpe2_i_n_48,gtpe2_i_n_49,gtpe2_i_n_50,gtpe2_i_n_51,gtpe2_i_n_52,gtpe2_i_n_53,gtpe2_i_n_54,gtpe2_i_n_55,gtpe2_i_n_56,gtpe2_i_n_57,gtpe2_i_n_58,gtpe2_i_n_59,gtpe2_i_n_60,gtpe2_i_n_61,gtpe2_i_n_62}),
        .DRPADDR({1'b0,1'b0,1'b0,1'b0,DRPADDR,1'b0,1'b0,1'b0,DRPADDR}),
        .DRPCLK(gtrefclk_bufg),
        .DRPDI({gtrxreset_seq_i_n_2,gtrxreset_seq_i_n_3,gtrxreset_seq_i_n_4,gtrxreset_seq_i_n_5,gtrxreset_seq_i_n_6,gtrxreset_seq_i_n_7,gtrxreset_seq_i_n_8,gtrxreset_seq_i_n_9,gtrxreset_seq_i_n_10,gtrxreset_seq_i_n_11,gtrxreset_seq_i_n_12,gtrxreset_seq_i_n_13,gtrxreset_seq_i_n_14,gtrxreset_seq_i_n_15,gtrxreset_seq_i_n_16,gtrxreset_seq_i_n_17}),
        .DRPDO({gtpe2_i_n_63,gtpe2_i_n_64,gtpe2_i_n_65,gtpe2_i_n_66,gtpe2_i_n_67,gtpe2_i_n_68,gtpe2_i_n_69,gtpe2_i_n_70,gtpe2_i_n_71,gtpe2_i_n_72,gtpe2_i_n_73,gtpe2_i_n_74,gtpe2_i_n_75,gtpe2_i_n_76,gtpe2_i_n_77,gtpe2_i_n_78}),
        .DRPEN(gtrxreset_seq_i_n_18),
        .DRPRDY(gtpe2_i_n_0),
        .DRPWE(gtrxreset_seq_i_n_1),
        .EYESCANDATAERROR(gtpe2_i_n_1),
        .EYESCANMODE(1'b0),
        .EYESCANRESET(1'b0),
        .EYESCANTRIGGER(1'b0),
        .GTPRXN(rxn),
        .GTPRXP(rxp),
        .GTPTXN(txn),
        .GTPTXP(txp),
        .GTRESETSEL(1'b0),
        .GTRSVD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .GTRXRESET(GTRXRESET),
        .GTTXRESET(gt0_gttxreset_in0_out),
        .LOOPBACK({1'b0,1'b0,1'b0}),
        .PCSRSVDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCSRSVDOUT(NLW_gtpe2_i_PCSRSVDOUT_UNCONNECTED[15:0]),
        .PHYSTATUS(NLW_gtpe2_i_PHYSTATUS_UNCONNECTED),
        .PLL0CLK(gt0_pll0outclk_in),
        .PLL0REFCLK(gt0_pll0outrefclk_in),
        .PLL1CLK(gt0_pll1outclk_in),
        .PLL1REFCLK(gt0_pll1outrefclk_in),
        .PMARSVDIN0(1'b0),
        .PMARSVDIN1(1'b0),
        .PMARSVDIN2(1'b0),
        .PMARSVDIN3(1'b0),
        .PMARSVDIN4(1'b0),
        .PMARSVDOUT0(NLW_gtpe2_i_PMARSVDOUT0_UNCONNECTED),
        .PMARSVDOUT1(NLW_gtpe2_i_PMARSVDOUT1_UNCONNECTED),
        .RESETOVRD(1'b0),
        .RX8B10BEN(1'b1),
        .RXADAPTSELTEST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RXBUFRESET(1'b0),
        .RXBUFSTATUS({RXBUFSTATUS,gtpe2_i_n_104,gtpe2_i_n_105}),
        .RXBYTEISALIGNED(gtpe2_i_n_7),
        .RXBYTEREALIGN(gtpe2_i_n_8),
        .RXCDRFREQRESET(1'b0),
        .RXCDRHOLD(1'b0),
        .RXCDRLOCK(NLW_gtpe2_i_RXCDRLOCK_UNCONNECTED),
        .RXCDROVRDEN(1'b0),
        .RXCDRRESET(1'b0),
        .RXCDRRESETRSV(1'b0),
        .RXCHANBONDSEQ(NLW_gtpe2_i_RXCHANBONDSEQ_UNCONNECTED),
        .RXCHANISALIGNED(NLW_gtpe2_i_RXCHANISALIGNED_UNCONNECTED),
        .RXCHANREALIGN(NLW_gtpe2_i_RXCHANREALIGN_UNCONNECTED),
        .RXCHARISCOMMA({NLW_gtpe2_i_RXCHARISCOMMA_UNCONNECTED[3:2],gtpe2_i_3}),
        .RXCHARISK({NLW_gtpe2_i_RXCHARISK_UNCONNECTED[3:2],gtpe2_i_4}),
        .RXCHBONDEN(1'b0),
        .RXCHBONDI({1'b0,1'b0,1'b0,1'b0}),
        .RXCHBONDLEVEL({1'b0,1'b0,1'b0}),
        .RXCHBONDMASTER(1'b0),
        .RXCHBONDO(NLW_gtpe2_i_RXCHBONDO_UNCONNECTED[3:0]),
        .RXCHBONDSLAVE(1'b0),
        .RXCLKCORCNT(D),
        .RXCOMINITDET(NLW_gtpe2_i_RXCOMINITDET_UNCONNECTED),
        .RXCOMMADET(gtpe2_i_n_14),
        .RXCOMMADETEN(1'b1),
        .RXCOMSASDET(NLW_gtpe2_i_RXCOMSASDET_UNCONNECTED),
        .RXCOMWAKEDET(NLW_gtpe2_i_RXCOMWAKEDET_UNCONNECTED),
        .RXDATA({NLW_gtpe2_i_RXDATA_UNCONNECTED[31:16],gtpe2_i_2}),
        .RXDATAVALID(NLW_gtpe2_i_RXDATAVALID_UNCONNECTED[1:0]),
        .RXDDIEN(1'b0),
        .RXDFEXYDEN(1'b0),
        .RXDISPERR({NLW_gtpe2_i_RXDISPERR_UNCONNECTED[3:2],gtpe2_i_5}),
        .RXDLYBYPASS(1'b1),
        .RXDLYEN(1'b0),
        .RXDLYOVRDEN(1'b0),
        .RXDLYSRESET(1'b0),
        .RXDLYSRESETDONE(NLW_gtpe2_i_RXDLYSRESETDONE_UNCONNECTED),
        .RXELECIDLE(NLW_gtpe2_i_RXELECIDLE_UNCONNECTED),
        .RXELECIDLEMODE({1'b1,1'b1}),
        .RXGEARBOXSLIP(1'b0),
        .RXHEADER(NLW_gtpe2_i_RXHEADER_UNCONNECTED[2:0]),
        .RXHEADERVALID(NLW_gtpe2_i_RXHEADERVALID_UNCONNECTED),
        .RXLPMHFHOLD(1'b0),
        .RXLPMHFOVRDEN(1'b0),
        .RXLPMLFHOLD(1'b0),
        .RXLPMLFOVRDEN(1'b0),
        .RXLPMOSINTNTRLEN(1'b0),
        .RXLPMRESET(1'b0),
        .RXMCOMMAALIGNEN(reset_out),
        .RXNOTINTABLE({NLW_gtpe2_i_RXNOTINTABLE_UNCONNECTED[3:2],gtpe2_i_6}),
        .RXOOBRESET(1'b0),
        .RXOSCALRESET(1'b0),
        .RXOSHOLD(1'b0),
        .RXOSINTCFG({1'b0,1'b0,1'b1,1'b0}),
        .RXOSINTDONE(NLW_gtpe2_i_RXOSINTDONE_UNCONNECTED),
        .RXOSINTEN(1'b1),
        .RXOSINTHOLD(1'b0),
        .RXOSINTID0({1'b0,1'b0,1'b0,1'b0}),
        .RXOSINTNTRLEN(1'b0),
        .RXOSINTOVRDEN(1'b0),
        .RXOSINTPD(1'b0),
        .RXOSINTSTARTED(NLW_gtpe2_i_RXOSINTSTARTED_UNCONNECTED),
        .RXOSINTSTROBE(1'b0),
        .RXOSINTSTROBEDONE(NLW_gtpe2_i_RXOSINTSTROBEDONE_UNCONNECTED),
        .RXOSINTSTROBESTARTED(NLW_gtpe2_i_RXOSINTSTROBESTARTED_UNCONNECTED),
        .RXOSINTTESTOVRDEN(1'b0),
        .RXOSOVRDEN(1'b0),
        .RXOUTCLK(rxoutclk),
        .RXOUTCLKFABRIC(NLW_gtpe2_i_RXOUTCLKFABRIC_UNCONNECTED),
        .RXOUTCLKPCS(NLW_gtpe2_i_RXOUTCLKPCS_UNCONNECTED),
        .RXOUTCLKSEL({1'b0,1'b1,1'b0}),
        .RXPCOMMAALIGNEN(reset_out),
        .RXPCSRESET(reset),
        .RXPD({RXPD,RXPD}),
        .RXPHALIGN(1'b0),
        .RXPHALIGNDONE(NLW_gtpe2_i_RXPHALIGNDONE_UNCONNECTED),
        .RXPHALIGNEN(1'b0),
        .RXPHDLYPD(1'b0),
        .RXPHDLYRESET(1'b0),
        .RXPHMONITOR(NLW_gtpe2_i_RXPHMONITOR_UNCONNECTED[4:0]),
        .RXPHOVRDEN(1'b0),
        .RXPHSLIPMONITOR(NLW_gtpe2_i_RXPHSLIPMONITOR_UNCONNECTED[4:0]),
        .RXPMARESET(1'b0),
        .RXPMARESETDONE(gtpe2_i_n_28),
        .RXPOLARITY(1'b0),
        .RXPRBSCNTRESET(1'b0),
        .RXPRBSERR(gtpe2_i_n_29),
        .RXPRBSSEL({1'b0,1'b0,1'b0}),
        .RXRATE({1'b0,1'b0,1'b0}),
        .RXRATEDONE(NLW_gtpe2_i_RXRATEDONE_UNCONNECTED),
        .RXRATEMODE(1'b0),
        .RXRESETDONE(gtpe2_i_0),
        .RXSLIDE(1'b0),
        .RXSTARTOFSEQ(NLW_gtpe2_i_RXSTARTOFSEQ_UNCONNECTED[1:0]),
        .RXSTATUS(NLW_gtpe2_i_RXSTATUS_UNCONNECTED[2:0]),
        .RXSYNCALLIN(1'b0),
        .RXSYNCDONE(NLW_gtpe2_i_RXSYNCDONE_UNCONNECTED),
        .RXSYNCIN(1'b0),
        .RXSYNCMODE(1'b0),
        .RXSYNCOUT(NLW_gtpe2_i_RXSYNCOUT_UNCONNECTED),
        .RXSYSCLKSEL({1'b0,1'b0}),
        .RXUSERRDY(gt0_rxuserrdy_t),
        .RXUSRCLK(userclk),
        .RXUSRCLK2(userclk),
        .RXVALID(NLW_gtpe2_i_RXVALID_UNCONNECTED),
        .SETERRSTATUS(1'b0),
        .SIGVALIDCLK(1'b0),
        .TSTIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .TX8B10BBYPASS({1'b0,1'b0,1'b0,1'b0}),
        .TX8B10BEN(1'b1),
        .TXBUFDIFFCTRL({1'b1,1'b0,1'b0}),
        .TXBUFSTATUS({TXBUFSTATUS,gtpe2_i_n_102}),
        .TXCHARDISPMODE({1'b0,1'b0,gtpe2_i_7}),
        .TXCHARDISPVAL({1'b0,1'b0,gtpe2_i_8}),
        .TXCHARISK({1'b0,1'b0,gtpe2_i_9}),
        .TXCOMFINISH(NLW_gtpe2_i_TXCOMFINISH_UNCONNECTED),
        .TXCOMINIT(1'b0),
        .TXCOMSAS(1'b0),
        .TXCOMWAKE(1'b0),
        .TXDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q}),
        .TXDEEMPH(1'b0),
        .TXDETECTRX(1'b0),
        .TXDIFFCTRL({1'b1,1'b0,1'b0,1'b0}),
        .TXDIFFPD(1'b0),
        .TXDLYBYPASS(1'b1),
        .TXDLYEN(1'b0),
        .TXDLYHOLD(1'b0),
        .TXDLYOVRDEN(1'b0),
        .TXDLYSRESET(1'b0),
        .TXDLYSRESETDONE(NLW_gtpe2_i_TXDLYSRESETDONE_UNCONNECTED),
        .TXDLYUPDOWN(1'b0),
        .TXELECIDLE(TXPD),
        .TXGEARBOXREADY(NLW_gtpe2_i_TXGEARBOXREADY_UNCONNECTED),
        .TXHEADER({1'b0,1'b0,1'b0}),
        .TXINHIBIT(1'b0),
        .TXMAINCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXMARGIN({1'b0,1'b0,1'b0}),
        .TXOUTCLK(txoutclk),
        .TXOUTCLKFABRIC(gtpe2_i_n_39),
        .TXOUTCLKPCS(gtpe2_i_n_40),
        .TXOUTCLKSEL({1'b1,1'b0,1'b0}),
        .TXPCSRESET(1'b0),
        .TXPD({TXPD,TXPD}),
        .TXPDELECIDLEMODE(1'b0),
        .TXPHALIGN(1'b0),
        .TXPHALIGNDONE(NLW_gtpe2_i_TXPHALIGNDONE_UNCONNECTED),
        .TXPHALIGNEN(1'b0),
        .TXPHDLYPD(1'b0),
        .TXPHDLYRESET(1'b0),
        .TXPHDLYTSTCLK(1'b0),
        .TXPHINIT(1'b0),
        .TXPHINITDONE(NLW_gtpe2_i_TXPHINITDONE_UNCONNECTED),
        .TXPHOVRDEN(1'b0),
        .TXPIPPMEN(1'b0),
        .TXPIPPMOVRDEN(1'b0),
        .TXPIPPMPD(1'b0),
        .TXPIPPMSEL(1'b1),
        .TXPIPPMSTEPSIZE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPISOPD(1'b0),
        .TXPMARESET(1'b0),
        .TXPMARESETDONE(gtpe2_i_n_43),
        .TXPOLARITY(1'b0),
        .TXPOSTCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPOSTCURSORINV(1'b0),
        .TXPRBSFORCEERR(1'b0),
        .TXPRBSSEL({1'b0,1'b0,1'b0}),
        .TXPRECURSOR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPRECURSORINV(1'b0),
        .TXRATE({1'b0,1'b0,1'b0}),
        .TXRATEDONE(NLW_gtpe2_i_TXRATEDONE_UNCONNECTED),
        .TXRATEMODE(1'b0),
        .TXRESETDONE(gtpe2_i_1),
        .TXSEQUENCE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXSTARTSEQ(1'b0),
        .TXSWING(1'b0),
        .TXSYNCALLIN(1'b0),
        .TXSYNCDONE(NLW_gtpe2_i_TXSYNCDONE_UNCONNECTED),
        .TXSYNCIN(1'b0),
        .TXSYNCMODE(1'b0),
        .TXSYNCOUT(NLW_gtpe2_i_TXSYNCOUT_UNCONNECTED),
        .TXSYSCLKSEL({1'b0,1'b0}),
        .TXUSERRDY(gt0_txuserrdy_t),
        .TXUSRCLK(userclk),
        .TXUSRCLK2(userclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_gtwizard_gtrxreset_seq gtrxreset_seq_i
       (.D({gtpe2_i_n_63,gtpe2_i_n_64,gtpe2_i_n_65,gtpe2_i_n_66,gtpe2_i_n_67,gtpe2_i_n_68,gtpe2_i_n_69,gtpe2_i_n_70,gtpe2_i_n_71,gtpe2_i_n_72,gtpe2_i_n_73,gtpe2_i_n_74,gtpe2_i_n_75,gtpe2_i_n_76,gtpe2_i_n_77,gtpe2_i_n_78}),
        .DRPADDR(DRPADDR),
        .DRPDI({gtrxreset_seq_i_n_2,gtrxreset_seq_i_n_3,gtrxreset_seq_i_n_4,gtrxreset_seq_i_n_5,gtrxreset_seq_i_n_6,gtrxreset_seq_i_n_7,gtrxreset_seq_i_n_8,gtrxreset_seq_i_n_9,gtrxreset_seq_i_n_10,gtrxreset_seq_i_n_11,gtrxreset_seq_i_n_12,gtrxreset_seq_i_n_13,gtrxreset_seq_i_n_14,gtrxreset_seq_i_n_15,gtrxreset_seq_i_n_16,gtrxreset_seq_i_n_17}),
        .\FSM_onehot_state_reg[5]_0 (gtrxreset_seq_i_n_1),
        .\FSM_onehot_state_reg[7]_0 (gtrxreset_seq_i_n_18),
        .GTRXRESET(GTRXRESET),
        .SR(SR),
        .data_in(gtpe2_i_n_28),
        .gtrefclk_bufg(gtrefclk_bufg),
        .\original_rd_data_reg[0]_0 (gtpe2_i_n_0),
        .reset_sync5(reset_sync5));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_GTWIZARD_init
   (txn,
    txp,
    rxoutclk,
    txoutclk,
    D,
    TXBUFSTATUS,
    RXBUFSTATUS,
    gtpe2_i,
    gtpe2_i_0,
    gtpe2_i_1,
    gtpe2_i_2,
    gtpe2_i_3,
    mmcm_reset,
    reset_in,
    data_in,
    rx_fsm_reset_done_int_reg,
    gtrefclk_bufg,
    rxn,
    rxp,
    gt0_pll0outclk_in,
    gt0_pll0outrefclk_in,
    gt0_pll1outclk_in,
    gt0_pll1outrefclk_in,
    reset_out,
    reset,
    userclk,
    TXPD,
    RXPD,
    Q,
    gtpe2_i_4,
    gtpe2_i_5,
    gtpe2_i_6,
    independent_clock_bufg,
    pma_reset,
    gt0_gtrxreset_gt_d1_reg_0,
    gtpe2_i_7,
    gt0_pll0refclklost_in,
    mmcm_locked,
    gt0_pll0lock_in,
    data_out);
  output txn;
  output txp;
  output rxoutclk;
  output txoutclk;
  output [1:0]D;
  output [0:0]TXBUFSTATUS;
  output [0:0]RXBUFSTATUS;
  output [15:0]gtpe2_i;
  output [1:0]gtpe2_i_0;
  output [1:0]gtpe2_i_1;
  output [1:0]gtpe2_i_2;
  output [1:0]gtpe2_i_3;
  output mmcm_reset;
  output reset_in;
  output data_in;
  output rx_fsm_reset_done_int_reg;
  input gtrefclk_bufg;
  input rxn;
  input rxp;
  input gt0_pll0outclk_in;
  input gt0_pll0outrefclk_in;
  input gt0_pll1outclk_in;
  input gt0_pll1outrefclk_in;
  input reset_out;
  input reset;
  input userclk;
  input [0:0]TXPD;
  input [0:0]RXPD;
  input [15:0]Q;
  input [1:0]gtpe2_i_4;
  input [1:0]gtpe2_i_5;
  input [1:0]gtpe2_i_6;
  input independent_clock_bufg;
  input pma_reset;
  input gt0_gtrxreset_gt_d1_reg_0;
  input gtpe2_i_7;
  input gt0_pll0refclklost_in;
  input mmcm_locked;
  input gt0_pll0lock_in;
  input data_out;

  wire [1:0]D;
  wire [15:0]Q;
  wire [0:0]RXBUFSTATUS;
  wire [0:0]RXPD;
  wire [0:0]TXBUFSTATUS;
  wire [0:0]TXPD;
  wire [13:1]data0;
  wire data_in;
  wire data_out;
  wire gt0_gtrxreset_gt;
  wire gt0_gtrxreset_gt_d1;
  wire gt0_gtrxreset_gt_d1_reg_0;
  wire gt0_gttxreset_in0_out;
  wire gt0_pll0lock_in;
  wire gt0_pll0outclk_in;
  wire gt0_pll0outrefclk_in;
  wire gt0_pll0refclklost_in;
  wire gt0_pll1outclk_in;
  wire gt0_pll1outrefclk_in;
  wire [13:0]gt0_rx_cdrlock_counter;
  wire gt0_rx_cdrlock_counter0_carry__0_n_0;
  wire gt0_rx_cdrlock_counter0_carry__0_n_1;
  wire gt0_rx_cdrlock_counter0_carry__0_n_2;
  wire gt0_rx_cdrlock_counter0_carry__0_n_3;
  wire gt0_rx_cdrlock_counter0_carry__1_n_0;
  wire gt0_rx_cdrlock_counter0_carry__1_n_1;
  wire gt0_rx_cdrlock_counter0_carry__1_n_2;
  wire gt0_rx_cdrlock_counter0_carry__1_n_3;
  wire gt0_rx_cdrlock_counter0_carry_n_0;
  wire gt0_rx_cdrlock_counter0_carry_n_1;
  wire gt0_rx_cdrlock_counter0_carry_n_2;
  wire gt0_rx_cdrlock_counter0_carry_n_3;
  wire \gt0_rx_cdrlock_counter[0]_i_2_n_0 ;
  wire \gt0_rx_cdrlock_counter[13]_i_2_n_0 ;
  wire \gt0_rx_cdrlock_counter[13]_i_3_n_0 ;
  wire \gt0_rx_cdrlock_counter[13]_i_4_n_0 ;
  wire [13:0]gt0_rx_cdrlock_counter_0;
  wire gt0_rx_cdrlocked_i_1_n_0;
  wire gt0_rx_cdrlocked_reg_n_0;
  wire gt0_rxuserrdy_t;
  wire gt0_txuserrdy_t;
  wire [15:0]gtpe2_i;
  wire [1:0]gtpe2_i_0;
  wire [1:0]gtpe2_i_1;
  wire [1:0]gtpe2_i_2;
  wire [1:0]gtpe2_i_3;
  wire [1:0]gtpe2_i_4;
  wire [1:0]gtpe2_i_5;
  wire [1:0]gtpe2_i_6;
  wire gtpe2_i_7;
  wire gtrefclk_bufg;
  wire gtwizard_i_n_3;
  wire gtwizard_i_n_5;
  wire independent_clock_bufg;
  wire mmcm_locked;
  wire mmcm_reset;
  wire pma_reset;
  wire reset;
  wire reset_in;
  wire reset_out;
  wire rx_fsm_reset_done_int_reg;
  wire rxn;
  wire rxoutclk;
  wire rxp;
  wire txn;
  wire txoutclk;
  wire txp;
  wire userclk;
  wire [3:0]NLW_gt0_rx_cdrlock_counter0_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_gt0_rx_cdrlock_counter0_carry__2_O_UNCONNECTED;

  FDRE gt0_gtrxreset_gt_d1_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_gtrxreset_gt),
        .Q(gt0_gtrxreset_gt_d1),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gt0_rx_cdrlock_counter0_carry
       (.CI(1'b0),
        .CO({gt0_rx_cdrlock_counter0_carry_n_0,gt0_rx_cdrlock_counter0_carry_n_1,gt0_rx_cdrlock_counter0_carry_n_2,gt0_rx_cdrlock_counter0_carry_n_3}),
        .CYINIT(gt0_rx_cdrlock_counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(gt0_rx_cdrlock_counter[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gt0_rx_cdrlock_counter0_carry__0
       (.CI(gt0_rx_cdrlock_counter0_carry_n_0),
        .CO({gt0_rx_cdrlock_counter0_carry__0_n_0,gt0_rx_cdrlock_counter0_carry__0_n_1,gt0_rx_cdrlock_counter0_carry__0_n_2,gt0_rx_cdrlock_counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(gt0_rx_cdrlock_counter[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gt0_rx_cdrlock_counter0_carry__1
       (.CI(gt0_rx_cdrlock_counter0_carry__0_n_0),
        .CO({gt0_rx_cdrlock_counter0_carry__1_n_0,gt0_rx_cdrlock_counter0_carry__1_n_1,gt0_rx_cdrlock_counter0_carry__1_n_2,gt0_rx_cdrlock_counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(gt0_rx_cdrlock_counter[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gt0_rx_cdrlock_counter0_carry__2
       (.CI(gt0_rx_cdrlock_counter0_carry__1_n_0),
        .CO(NLW_gt0_rx_cdrlock_counter0_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_gt0_rx_cdrlock_counter0_carry__2_O_UNCONNECTED[3:1],data0[13]}),
        .S({1'b0,1'b0,1'b0,gt0_rx_cdrlock_counter[13]}));
  LUT2 #(
    .INIT(4'h2)) 
    \gt0_rx_cdrlock_counter[0]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[0]_i_2_n_0 ),
        .I1(gt0_rx_cdrlock_counter[0]),
        .O(gt0_rx_cdrlock_counter_0[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \gt0_rx_cdrlock_counter[0]_i_2 
       (.I0(\gt0_rx_cdrlock_counter[13]_i_4_n_0 ),
        .I1(gt0_rx_cdrlock_counter[4]),
        .I2(gt0_rx_cdrlock_counter[5]),
        .I3(gt0_rx_cdrlock_counter[7]),
        .I4(gt0_rx_cdrlock_counter[6]),
        .I5(\gt0_rx_cdrlock_counter[13]_i_2_n_0 ),
        .O(\gt0_rx_cdrlock_counter[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0001)) 
    \gt0_rx_cdrlock_counter[10]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[13]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[13]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[13]_i_4_n_0 ),
        .I3(gt0_rx_cdrlock_counter[0]),
        .I4(data0[10]),
        .O(gt0_rx_cdrlock_counter_0[10]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[11]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[13]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[13]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[13]_i_4_n_0 ),
        .I3(gt0_rx_cdrlock_counter[0]),
        .I4(data0[11]),
        .O(gt0_rx_cdrlock_counter_0[11]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[12]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[13]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[13]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[13]_i_4_n_0 ),
        .I3(gt0_rx_cdrlock_counter[0]),
        .I4(data0[12]),
        .O(gt0_rx_cdrlock_counter_0[12]));
  LUT5 #(
    .INIT(32'hFFFF0001)) 
    \gt0_rx_cdrlock_counter[13]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[13]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[13]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[13]_i_4_n_0 ),
        .I3(gt0_rx_cdrlock_counter[0]),
        .I4(data0[13]),
        .O(gt0_rx_cdrlock_counter_0[13]));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \gt0_rx_cdrlock_counter[13]_i_2 
       (.I0(gt0_rx_cdrlock_counter[1]),
        .I1(gt0_rx_cdrlock_counter[12]),
        .I2(gt0_rx_cdrlock_counter[13]),
        .I3(gt0_rx_cdrlock_counter[3]),
        .I4(gt0_rx_cdrlock_counter[2]),
        .O(\gt0_rx_cdrlock_counter[13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \gt0_rx_cdrlock_counter[13]_i_3 
       (.I0(gt0_rx_cdrlock_counter[4]),
        .I1(gt0_rx_cdrlock_counter[5]),
        .I2(gt0_rx_cdrlock_counter[7]),
        .I3(gt0_rx_cdrlock_counter[6]),
        .O(\gt0_rx_cdrlock_counter[13]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \gt0_rx_cdrlock_counter[13]_i_4 
       (.I0(gt0_rx_cdrlock_counter[9]),
        .I1(gt0_rx_cdrlock_counter[8]),
        .I2(gt0_rx_cdrlock_counter[10]),
        .I3(gt0_rx_cdrlock_counter[11]),
        .O(\gt0_rx_cdrlock_counter[13]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[1]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[13]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[13]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[13]_i_4_n_0 ),
        .I3(gt0_rx_cdrlock_counter[0]),
        .I4(data0[1]),
        .O(gt0_rx_cdrlock_counter_0[1]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[2]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[13]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[13]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[13]_i_4_n_0 ),
        .I3(gt0_rx_cdrlock_counter[0]),
        .I4(data0[2]),
        .O(gt0_rx_cdrlock_counter_0[2]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[3]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[13]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[13]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[13]_i_4_n_0 ),
        .I3(gt0_rx_cdrlock_counter[0]),
        .I4(data0[3]),
        .O(gt0_rx_cdrlock_counter_0[3]));
  LUT5 #(
    .INIT(32'hFFFF0001)) 
    \gt0_rx_cdrlock_counter[4]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[13]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[13]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[13]_i_4_n_0 ),
        .I3(gt0_rx_cdrlock_counter[0]),
        .I4(data0[4]),
        .O(gt0_rx_cdrlock_counter_0[4]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[5]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[13]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[13]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[13]_i_4_n_0 ),
        .I3(gt0_rx_cdrlock_counter[0]),
        .I4(data0[5]),
        .O(gt0_rx_cdrlock_counter_0[5]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[6]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[13]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[13]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[13]_i_4_n_0 ),
        .I3(gt0_rx_cdrlock_counter[0]),
        .I4(data0[6]),
        .O(gt0_rx_cdrlock_counter_0[6]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[7]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[13]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[13]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[13]_i_4_n_0 ),
        .I3(gt0_rx_cdrlock_counter[0]),
        .I4(data0[7]),
        .O(gt0_rx_cdrlock_counter_0[7]));
  LUT5 #(
    .INIT(32'hFFFF0001)) 
    \gt0_rx_cdrlock_counter[8]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[13]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[13]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[13]_i_4_n_0 ),
        .I3(gt0_rx_cdrlock_counter[0]),
        .I4(data0[8]),
        .O(gt0_rx_cdrlock_counter_0[8]));
  LUT5 #(
    .INIT(32'hFFFF0001)) 
    \gt0_rx_cdrlock_counter[9]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[13]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[13]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[13]_i_4_n_0 ),
        .I3(gt0_rx_cdrlock_counter[0]),
        .I4(data0[9]),
        .O(gt0_rx_cdrlock_counter_0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[0] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[0]),
        .Q(gt0_rx_cdrlock_counter[0]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[10] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[10]),
        .Q(gt0_rx_cdrlock_counter[10]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[11] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[11]),
        .Q(gt0_rx_cdrlock_counter[11]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[12] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[12]),
        .Q(gt0_rx_cdrlock_counter[12]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[13] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[13]),
        .Q(gt0_rx_cdrlock_counter[13]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[1] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[1]),
        .Q(gt0_rx_cdrlock_counter[1]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[2] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[2]),
        .Q(gt0_rx_cdrlock_counter[2]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[3] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[3]),
        .Q(gt0_rx_cdrlock_counter[3]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[4] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[4]),
        .Q(gt0_rx_cdrlock_counter[4]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[5] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[5]),
        .Q(gt0_rx_cdrlock_counter[5]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[6] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[6]),
        .Q(gt0_rx_cdrlock_counter[6]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[7] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[7]),
        .Q(gt0_rx_cdrlock_counter[7]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[8] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[8]),
        .Q(gt0_rx_cdrlock_counter[8]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[9] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[9]),
        .Q(gt0_rx_cdrlock_counter[9]),
        .R(gt0_gtrxreset_gt_d1));
  LUT5 #(
    .INIT(32'hFFFF0001)) 
    gt0_rx_cdrlocked_i_1
       (.I0(\gt0_rx_cdrlock_counter[13]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[13]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[13]_i_4_n_0 ),
        .I3(gt0_rx_cdrlock_counter[0]),
        .I4(gt0_rx_cdrlocked_reg_n_0),
        .O(gt0_rx_cdrlocked_i_1_n_0));
  FDRE gt0_rx_cdrlocked_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlocked_i_1_n_0),
        .Q(gt0_rx_cdrlocked_reg_n_0),
        .R(gt0_gtrxreset_gt_d1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_RX_STARTUP_FSM gt0_rxresetfsm_i
       (.data_in(rx_fsm_reset_done_int_reg),
        .data_out(data_out),
        .data_sync_reg1(gtwizard_i_n_3),
        .gt0_gtrxreset_gt(gt0_gtrxreset_gt),
        .gt0_gtrxreset_gt_d1_reg(gt0_gtrxreset_gt_d1_reg_0),
        .gt0_pll0lock_in(gt0_pll0lock_in),
        .gt0_rxuserrdy_t(gt0_rxuserrdy_t),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_locked(mmcm_locked),
        .pma_reset(pma_reset),
        .reset_time_out_reg_0(gt0_rx_cdrlocked_reg_n_0),
        .userclk(userclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_TX_STARTUP_FSM gt0_txresetfsm_i
       (.PLL0_RESET_reg_0(reset_in),
        .data_in(data_in),
        .data_sync_reg1(gtwizard_i_n_5),
        .gt0_gttxreset_in0_out(gt0_gttxreset_in0_out),
        .gt0_pll0lock_in(gt0_pll0lock_in),
        .gt0_pll0refclklost_in(gt0_pll0refclklost_in),
        .gt0_txuserrdy_t(gt0_txuserrdy_t),
        .gtpe2_i(gtpe2_i_7),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_locked(mmcm_locked),
        .mmcm_reset(mmcm_reset),
        .pma_reset(pma_reset),
        .userclk(userclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_GTWIZARD_multi_gt gtwizard_i
       (.D(D),
        .Q(Q),
        .RXBUFSTATUS(RXBUFSTATUS),
        .RXPD(RXPD),
        .SR(gt0_gtrxreset_gt_d1),
        .TXBUFSTATUS(TXBUFSTATUS),
        .TXPD(TXPD),
        .gt0_gttxreset_in0_out(gt0_gttxreset_in0_out),
        .gt0_pll0outclk_in(gt0_pll0outclk_in),
        .gt0_pll0outrefclk_in(gt0_pll0outrefclk_in),
        .gt0_pll1outclk_in(gt0_pll1outclk_in),
        .gt0_pll1outrefclk_in(gt0_pll1outrefclk_in),
        .gt0_rxuserrdy_t(gt0_rxuserrdy_t),
        .gt0_txuserrdy_t(gt0_txuserrdy_t),
        .gtpe2_i(gtwizard_i_n_3),
        .gtpe2_i_0(gtwizard_i_n_5),
        .gtpe2_i_1(gtpe2_i),
        .gtpe2_i_2(gtpe2_i_0),
        .gtpe2_i_3(gtpe2_i_1),
        .gtpe2_i_4(gtpe2_i_2),
        .gtpe2_i_5(gtpe2_i_3),
        .gtpe2_i_6(gtpe2_i_4),
        .gtpe2_i_7(gtpe2_i_5),
        .gtpe2_i_8(gtpe2_i_6),
        .gtrefclk_bufg(gtrefclk_bufg),
        .reset(reset),
        .reset_out(reset_out),
        .reset_sync5(reset_in),
        .rxn(rxn),
        .rxoutclk(rxoutclk),
        .rxp(rxp),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp),
        .userclk(userclk));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_GTWIZARD_multi_gt
   (txn,
    txp,
    rxoutclk,
    gtpe2_i,
    txoutclk,
    gtpe2_i_0,
    D,
    TXBUFSTATUS,
    RXBUFSTATUS,
    gtpe2_i_1,
    gtpe2_i_2,
    gtpe2_i_3,
    gtpe2_i_4,
    gtpe2_i_5,
    gtrefclk_bufg,
    rxn,
    rxp,
    gt0_gttxreset_in0_out,
    gt0_pll0outclk_in,
    gt0_pll0outrefclk_in,
    gt0_pll1outclk_in,
    gt0_pll1outrefclk_in,
    reset_out,
    reset,
    gt0_rxuserrdy_t,
    userclk,
    TXPD,
    gt0_txuserrdy_t,
    RXPD,
    Q,
    gtpe2_i_6,
    gtpe2_i_7,
    gtpe2_i_8,
    SR,
    reset_sync5);
  output txn;
  output txp;
  output rxoutclk;
  output gtpe2_i;
  output txoutclk;
  output gtpe2_i_0;
  output [1:0]D;
  output [0:0]TXBUFSTATUS;
  output [0:0]RXBUFSTATUS;
  output [15:0]gtpe2_i_1;
  output [1:0]gtpe2_i_2;
  output [1:0]gtpe2_i_3;
  output [1:0]gtpe2_i_4;
  output [1:0]gtpe2_i_5;
  input gtrefclk_bufg;
  input rxn;
  input rxp;
  input gt0_gttxreset_in0_out;
  input gt0_pll0outclk_in;
  input gt0_pll0outrefclk_in;
  input gt0_pll1outclk_in;
  input gt0_pll1outrefclk_in;
  input reset_out;
  input reset;
  input gt0_rxuserrdy_t;
  input userclk;
  input [0:0]TXPD;
  input gt0_txuserrdy_t;
  input [0:0]RXPD;
  input [15:0]Q;
  input [1:0]gtpe2_i_6;
  input [1:0]gtpe2_i_7;
  input [1:0]gtpe2_i_8;
  input [0:0]SR;
  input reset_sync5;

  wire [1:0]D;
  wire [15:0]Q;
  wire [0:0]RXBUFSTATUS;
  wire [0:0]RXPD;
  wire [0:0]SR;
  wire [0:0]TXBUFSTATUS;
  wire [0:0]TXPD;
  wire gt0_gttxreset_in0_out;
  wire gt0_pll0outclk_in;
  wire gt0_pll0outrefclk_in;
  wire gt0_pll1outclk_in;
  wire gt0_pll1outrefclk_in;
  wire gt0_rxuserrdy_t;
  wire gt0_txuserrdy_t;
  wire gtpe2_i;
  wire gtpe2_i_0;
  wire [15:0]gtpe2_i_1;
  wire [1:0]gtpe2_i_2;
  wire [1:0]gtpe2_i_3;
  wire [1:0]gtpe2_i_4;
  wire [1:0]gtpe2_i_5;
  wire [1:0]gtpe2_i_6;
  wire [1:0]gtpe2_i_7;
  wire [1:0]gtpe2_i_8;
  wire gtrefclk_bufg;
  wire reset;
  wire reset_out;
  wire reset_sync5;
  wire rxn;
  wire rxoutclk;
  wire rxp;
  wire txn;
  wire txoutclk;
  wire txp;
  wire userclk;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_GTWIZARD_GT gt0_GTWIZARD_i
       (.D(D),
        .Q(Q),
        .RXBUFSTATUS(RXBUFSTATUS),
        .RXPD(RXPD),
        .SR(SR),
        .TXBUFSTATUS(TXBUFSTATUS),
        .TXPD(TXPD),
        .gt0_gttxreset_in0_out(gt0_gttxreset_in0_out),
        .gt0_pll0outclk_in(gt0_pll0outclk_in),
        .gt0_pll0outrefclk_in(gt0_pll0outrefclk_in),
        .gt0_pll1outclk_in(gt0_pll1outclk_in),
        .gt0_pll1outrefclk_in(gt0_pll1outrefclk_in),
        .gt0_rxuserrdy_t(gt0_rxuserrdy_t),
        .gt0_txuserrdy_t(gt0_txuserrdy_t),
        .gtpe2_i_0(gtpe2_i),
        .gtpe2_i_1(gtpe2_i_0),
        .gtpe2_i_2(gtpe2_i_1),
        .gtpe2_i_3(gtpe2_i_2),
        .gtpe2_i_4(gtpe2_i_3),
        .gtpe2_i_5(gtpe2_i_4),
        .gtpe2_i_6(gtpe2_i_5),
        .gtpe2_i_7(gtpe2_i_6),
        .gtpe2_i_8(gtpe2_i_7),
        .gtpe2_i_9(gtpe2_i_8),
        .gtrefclk_bufg(gtrefclk_bufg),
        .reset(reset),
        .reset_out(reset_out),
        .reset_sync5(reset_sync5),
        .rxn(rxn),
        .rxoutclk(rxoutclk),
        .rxp(rxp),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp),
        .userclk(userclk));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_RX_STARTUP_FSM
   (data_in,
    gt0_rxuserrdy_t,
    gt0_gtrxreset_gt,
    independent_clock_bufg,
    userclk,
    pma_reset,
    reset_time_out_reg_0,
    gt0_gtrxreset_gt_d1_reg,
    data_sync_reg1,
    mmcm_locked,
    data_out,
    gt0_pll0lock_in);
  output data_in;
  output gt0_rxuserrdy_t;
  output gt0_gtrxreset_gt;
  input independent_clock_bufg;
  input userclk;
  input pma_reset;
  input reset_time_out_reg_0;
  input gt0_gtrxreset_gt_d1_reg;
  input data_sync_reg1;
  input mmcm_locked;
  input data_out;
  input gt0_pll0lock_in;

  wire \FSM_sequential_rx_state[0]_i_2_n_0 ;
  wire \FSM_sequential_rx_state[0]_i_3_n_0 ;
  wire \FSM_sequential_rx_state[2]_i_2_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_4_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_6_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_7_n_0 ;
  wire GTRXRESET;
  wire RXUSERRDY_i_1_n_0;
  wire check_tlock_max_i_1_n_0;
  wire check_tlock_max_reg_n_0;
  wire data_in;
  wire data_out;
  wire data_sync_reg1;
  wire gt0_gtrxreset_gt;
  wire gt0_gtrxreset_gt_d1_reg;
  wire gt0_pll0lock_in;
  wire gt0_rxuserrdy_t;
  wire gtrxreset_i_i_1_n_0;
  wire independent_clock_bufg;
  wire init_wait_count;
  wire \init_wait_count[0]_i_1__0_n_0 ;
  wire \init_wait_count[6]_i_3__0_n_0 ;
  wire \init_wait_count[6]_i_4__0_n_0 ;
  wire [6:0]init_wait_count_reg;
  wire init_wait_done;
  wire init_wait_done_i_1__0_n_0;
  wire init_wait_done_reg_n_0;
  wire \mmcm_lock_count[7]_i_2__0_n_0 ;
  wire \mmcm_lock_count[7]_i_4__0_n_0 ;
  wire [7:0]mmcm_lock_count_reg;
  wire mmcm_lock_i;
  wire mmcm_lock_reclocked;
  wire mmcm_lock_reclocked_i_1_n_0;
  wire mmcm_lock_reclocked_i_2__0_n_0;
  wire mmcm_locked;
  wire [6:1]p_0_in__2;
  wire [7:0]p_0_in__3;
  wire pma_reset;
  wire reset_time_out_i_3__0_n_0;
  wire reset_time_out_i_5_n_0;
  wire reset_time_out_reg_0;
  wire reset_time_out_reg_n_0;
  wire run_phase_alignment_int_i_1__0_n_0;
  wire run_phase_alignment_int_reg_n_0;
  wire run_phase_alignment_int_s2;
  wire run_phase_alignment_int_s3_reg_n_0;
  wire rx_fsm_reset_done_int_s2;
  wire rx_fsm_reset_done_int_s3;
  wire [3:0]rx_state;
  wire [3:0]rx_state__0;
  wire rxresetdone_s2;
  wire rxresetdone_s3;
  wire sync_data_valid_n_0;
  wire sync_data_valid_n_4;
  wire sync_data_valid_n_5;
  wire sync_mmcm_lock_reclocked_n_0;
  wire sync_pll0lock_n_0;
  wire time_out_100us_i_1_n_0;
  wire time_out_100us_i_2_n_0;
  wire time_out_100us_i_3_n_0;
  wire time_out_100us_i_4_n_0;
  wire time_out_100us_i_5_n_0;
  wire time_out_100us_i_6_n_0;
  wire time_out_100us_reg_n_0;
  wire time_out_1us_i_1_n_0;
  wire time_out_1us_i_2_n_0;
  wire time_out_1us_i_3_n_0;
  wire time_out_1us_reg_n_0;
  wire time_out_2ms_i_1_n_0;
  wire time_out_2ms_i_2_n_0;
  wire time_out_2ms_i_3__0_n_0;
  wire time_out_2ms_i_4_n_0;
  wire time_out_2ms_reg_n_0;
  wire time_out_counter;
  wire \time_out_counter[0]_i_3_n_0 ;
  wire [19:0]time_out_counter_reg;
  wire \time_out_counter_reg[0]_i_2__0_n_0 ;
  wire \time_out_counter_reg[0]_i_2__0_n_1 ;
  wire \time_out_counter_reg[0]_i_2__0_n_2 ;
  wire \time_out_counter_reg[0]_i_2__0_n_3 ;
  wire \time_out_counter_reg[0]_i_2__0_n_4 ;
  wire \time_out_counter_reg[0]_i_2__0_n_5 ;
  wire \time_out_counter_reg[0]_i_2__0_n_6 ;
  wire \time_out_counter_reg[0]_i_2__0_n_7 ;
  wire \time_out_counter_reg[12]_i_1__0_n_0 ;
  wire \time_out_counter_reg[12]_i_1__0_n_1 ;
  wire \time_out_counter_reg[12]_i_1__0_n_2 ;
  wire \time_out_counter_reg[12]_i_1__0_n_3 ;
  wire \time_out_counter_reg[12]_i_1__0_n_4 ;
  wire \time_out_counter_reg[12]_i_1__0_n_5 ;
  wire \time_out_counter_reg[12]_i_1__0_n_6 ;
  wire \time_out_counter_reg[12]_i_1__0_n_7 ;
  wire \time_out_counter_reg[16]_i_1__0_n_1 ;
  wire \time_out_counter_reg[16]_i_1__0_n_2 ;
  wire \time_out_counter_reg[16]_i_1__0_n_3 ;
  wire \time_out_counter_reg[16]_i_1__0_n_4 ;
  wire \time_out_counter_reg[16]_i_1__0_n_5 ;
  wire \time_out_counter_reg[16]_i_1__0_n_6 ;
  wire \time_out_counter_reg[16]_i_1__0_n_7 ;
  wire \time_out_counter_reg[4]_i_1__0_n_0 ;
  wire \time_out_counter_reg[4]_i_1__0_n_1 ;
  wire \time_out_counter_reg[4]_i_1__0_n_2 ;
  wire \time_out_counter_reg[4]_i_1__0_n_3 ;
  wire \time_out_counter_reg[4]_i_1__0_n_4 ;
  wire \time_out_counter_reg[4]_i_1__0_n_5 ;
  wire \time_out_counter_reg[4]_i_1__0_n_6 ;
  wire \time_out_counter_reg[4]_i_1__0_n_7 ;
  wire \time_out_counter_reg[8]_i_1__0_n_0 ;
  wire \time_out_counter_reg[8]_i_1__0_n_1 ;
  wire \time_out_counter_reg[8]_i_1__0_n_2 ;
  wire \time_out_counter_reg[8]_i_1__0_n_3 ;
  wire \time_out_counter_reg[8]_i_1__0_n_4 ;
  wire \time_out_counter_reg[8]_i_1__0_n_5 ;
  wire \time_out_counter_reg[8]_i_1__0_n_6 ;
  wire \time_out_counter_reg[8]_i_1__0_n_7 ;
  wire time_out_wait_bypass_i_1_n_0;
  wire time_out_wait_bypass_i_2__0_n_0;
  wire time_out_wait_bypass_i_3__0_n_0;
  wire time_out_wait_bypass_i_4__0_n_0;
  wire time_out_wait_bypass_reg_n_0;
  wire time_out_wait_bypass_s2;
  wire time_out_wait_bypass_s3;
  wire time_tlock_max;
  wire time_tlock_max1;
  wire time_tlock_max1_carry__0_i_1_n_0;
  wire time_tlock_max1_carry__0_i_2_n_0;
  wire time_tlock_max1_carry__0_i_3_n_0;
  wire time_tlock_max1_carry__0_i_4_n_0;
  wire time_tlock_max1_carry__0_i_5_n_0;
  wire time_tlock_max1_carry__0_i_6_n_0;
  wire time_tlock_max1_carry__0_n_0;
  wire time_tlock_max1_carry__0_n_1;
  wire time_tlock_max1_carry__0_n_2;
  wire time_tlock_max1_carry__0_n_3;
  wire time_tlock_max1_carry__1_i_1_n_0;
  wire time_tlock_max1_carry__1_i_2_n_0;
  wire time_tlock_max1_carry__1_i_3_n_0;
  wire time_tlock_max1_carry__1_i_4_n_0;
  wire time_tlock_max1_carry__1_n_3;
  wire time_tlock_max1_carry_i_1_n_0;
  wire time_tlock_max1_carry_i_2_n_0;
  wire time_tlock_max1_carry_i_3_n_0;
  wire time_tlock_max1_carry_i_4_n_0;
  wire time_tlock_max1_carry_i_5_n_0;
  wire time_tlock_max1_carry_i_6_n_0;
  wire time_tlock_max1_carry_i_7_n_0;
  wire time_tlock_max1_carry_i_8_n_0;
  wire time_tlock_max1_carry_n_0;
  wire time_tlock_max1_carry_n_1;
  wire time_tlock_max1_carry_n_2;
  wire time_tlock_max1_carry_n_3;
  wire time_tlock_max_i_1_n_0;
  wire userclk;
  wire \wait_bypass_count[0]_i_1__0_n_0 ;
  wire \wait_bypass_count[0]_i_2__0_n_0 ;
  wire \wait_bypass_count[0]_i_4_n_0 ;
  wire [12:0]wait_bypass_count_reg;
  wire \wait_bypass_count_reg[0]_i_3__0_n_0 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_1 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_2 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_3 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_4 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_5 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_6 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_7 ;
  wire \wait_bypass_count_reg[12]_i_1__0_n_7 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_0 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_1 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_2 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_3 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_4 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_5 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_6 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_7 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_0 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_1 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_2 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_3 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_4 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_5 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_6 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_7 ;
  wire [3:0]wait_time_cnt0__0;
  wire \wait_time_cnt[1]_i_1__0_n_0 ;
  wire \wait_time_cnt[4]_i_1__0_n_0 ;
  wire \wait_time_cnt[5]_i_1__0_n_0 ;
  wire \wait_time_cnt[6]_i_1_n_0 ;
  wire \wait_time_cnt[6]_i_2__0_n_0 ;
  wire \wait_time_cnt[6]_i_3__0_n_0 ;
  wire \wait_time_cnt[6]_i_4__0_n_0 ;
  wire [6:0]wait_time_cnt_reg;
  wire [3:3]\NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED ;
  wire [3:0]NLW_time_tlock_max1_carry_O_UNCONNECTED;
  wire [3:0]NLW_time_tlock_max1_carry__0_O_UNCONNECTED;
  wire [3:2]NLW_time_tlock_max1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_time_tlock_max1_carry__1_O_UNCONNECTED;
  wire [3:0]\NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED ;
  wire [3:1]\NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hF4FFFCFF00FF00FF)) 
    \FSM_sequential_rx_state[0]_i_2 
       (.I0(rx_state[2]),
        .I1(time_out_2ms_reg_n_0),
        .I2(rx_state[3]),
        .I3(rx_state[0]),
        .I4(reset_time_out_reg_n_0),
        .I5(rx_state[1]),
        .O(\FSM_sequential_rx_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_rx_state[0]_i_3 
       (.I0(rx_state[2]),
        .I1(rx_state[3]),
        .O(\FSM_sequential_rx_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h003F0040000F0040)) 
    \FSM_sequential_rx_state[2]_i_1 
       (.I0(time_out_2ms_reg_n_0),
        .I1(rx_state[1]),
        .I2(rx_state[0]),
        .I3(rx_state[3]),
        .I4(rx_state[2]),
        .I5(\FSM_sequential_rx_state[2]_i_2_n_0 ),
        .O(rx_state__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_rx_state[2]_i_2 
       (.I0(reset_time_out_reg_n_0),
        .I1(time_tlock_max),
        .O(\FSM_sequential_rx_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT5 #(
    .INIT(32'hDCDC505C)) 
    \FSM_sequential_rx_state[3]_i_4 
       (.I0(time_out_2ms_reg_n_0),
        .I1(rx_state[2]),
        .I2(rx_state[1]),
        .I3(time_tlock_max),
        .I4(reset_time_out_reg_n_0),
        .O(\FSM_sequential_rx_state[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \FSM_sequential_rx_state[3]_i_6 
       (.I0(time_out_2ms_reg_n_0),
        .I1(reset_time_out_reg_n_0),
        .I2(rx_state[2]),
        .I3(rx_state[1]),
        .O(\FSM_sequential_rx_state[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \FSM_sequential_rx_state[3]_i_7 
       (.I0(init_wait_done_reg_n_0),
        .I1(rx_state[2]),
        .I2(reset_time_out_reg_0),
        .I3(rx_state[1]),
        .I4(rx_state[0]),
        .O(\FSM_sequential_rx_state[3]_i_7_n_0 ));
  (* FSM_ENCODED_STATES = "release_pll_reset:0011,verify_recclk_stable:0100,wait_for_pll_lock:0010,fsm_done:1010,assert_all_resets:0001,init:0000,wait_reset_done:0111,monitor_data_valid:1001,wait_for_rxusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[0] 
       (.C(independent_clock_bufg),
        .CE(sync_data_valid_n_0),
        .D(rx_state__0[0]),
        .Q(rx_state[0]),
        .R(pma_reset));
  (* FSM_ENCODED_STATES = "release_pll_reset:0011,verify_recclk_stable:0100,wait_for_pll_lock:0010,fsm_done:1010,assert_all_resets:0001,init:0000,wait_reset_done:0111,monitor_data_valid:1001,wait_for_rxusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[1] 
       (.C(independent_clock_bufg),
        .CE(sync_data_valid_n_0),
        .D(rx_state__0[1]),
        .Q(rx_state[1]),
        .R(pma_reset));
  (* FSM_ENCODED_STATES = "release_pll_reset:0011,verify_recclk_stable:0100,wait_for_pll_lock:0010,fsm_done:1010,assert_all_resets:0001,init:0000,wait_reset_done:0111,monitor_data_valid:1001,wait_for_rxusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[2] 
       (.C(independent_clock_bufg),
        .CE(sync_data_valid_n_0),
        .D(rx_state__0[2]),
        .Q(rx_state[2]),
        .R(pma_reset));
  (* FSM_ENCODED_STATES = "release_pll_reset:0011,verify_recclk_stable:0100,wait_for_pll_lock:0010,fsm_done:1010,assert_all_resets:0001,init:0000,wait_reset_done:0111,monitor_data_valid:1001,wait_for_rxusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[3] 
       (.C(independent_clock_bufg),
        .CE(sync_data_valid_n_0),
        .D(rx_state__0[3]),
        .Q(rx_state[3]),
        .R(pma_reset));
  LUT5 #(
    .INIT(32'hFFFB4000)) 
    RXUSERRDY_i_1
       (.I0(rx_state[3]),
        .I1(rx_state[0]),
        .I2(rx_state[2]),
        .I3(rx_state[1]),
        .I4(gt0_rxuserrdy_t),
        .O(RXUSERRDY_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    RXUSERRDY_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(RXUSERRDY_i_1_n_0),
        .Q(gt0_rxuserrdy_t),
        .R(pma_reset));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    check_tlock_max_i_1
       (.I0(check_tlock_max_reg_n_0),
        .I1(rx_state[3]),
        .I2(rx_state[1]),
        .I3(rx_state[0]),
        .I4(rx_state[2]),
        .O(check_tlock_max_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    check_tlock_max_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(check_tlock_max_i_1_n_0),
        .Q(check_tlock_max_reg_n_0),
        .R(pma_reset));
  LUT3 #(
    .INIT(8'hEA)) 
    gt0_gtrxreset_gt_d1_i_1
       (.I0(GTRXRESET),
        .I1(data_in),
        .I2(gt0_gtrxreset_gt_d1_reg),
        .O(gt0_gtrxreset_gt));
  LUT5 #(
    .INIT(32'hFFFD0004)) 
    gtrxreset_i_i_1
       (.I0(rx_state[2]),
        .I1(rx_state[0]),
        .I2(rx_state[3]),
        .I3(rx_state[1]),
        .I4(GTRXRESET),
        .O(gtrxreset_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    gtrxreset_i_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gtrxreset_i_i_1_n_0),
        .Q(GTRXRESET),
        .R(pma_reset));
  LUT1 #(
    .INIT(2'h1)) 
    \init_wait_count[0]_i_1__0 
       (.I0(init_wait_count_reg[0]),
        .O(\init_wait_count[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \init_wait_count[1]_i_1__0 
       (.I0(init_wait_count_reg[1]),
        .I1(init_wait_count_reg[0]),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \init_wait_count[2]_i_1__0 
       (.I0(init_wait_count_reg[2]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[0]),
        .O(p_0_in__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \init_wait_count[3]_i_1__0 
       (.I0(init_wait_count_reg[1]),
        .I1(init_wait_count_reg[2]),
        .I2(init_wait_count_reg[0]),
        .I3(init_wait_count_reg[3]),
        .O(p_0_in__2[3]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \init_wait_count[4]_i_1__0 
       (.I0(init_wait_count_reg[4]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[2]),
        .I3(init_wait_count_reg[0]),
        .I4(init_wait_count_reg[3]),
        .O(p_0_in__2[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \init_wait_count[5]_i_1__0 
       (.I0(init_wait_count_reg[5]),
        .I1(init_wait_count_reg[3]),
        .I2(init_wait_count_reg[0]),
        .I3(init_wait_count_reg[2]),
        .I4(init_wait_count_reg[1]),
        .I5(init_wait_count_reg[4]),
        .O(p_0_in__2[5]));
  LUT6 #(
    .INIT(64'hFFFBFFFFFFFFFFFF)) 
    \init_wait_count[6]_i_1__0 
       (.I0(init_wait_count_reg[0]),
        .I1(init_wait_count_reg[6]),
        .I2(init_wait_count_reg[4]),
        .I3(\init_wait_count[6]_i_3__0_n_0 ),
        .I4(init_wait_count_reg[5]),
        .I5(init_wait_count_reg[3]),
        .O(init_wait_count));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \init_wait_count[6]_i_2__0 
       (.I0(init_wait_count_reg[6]),
        .I1(init_wait_count_reg[4]),
        .I2(\init_wait_count[6]_i_4__0_n_0 ),
        .I3(init_wait_count_reg[5]),
        .O(p_0_in__2[6]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \init_wait_count[6]_i_3__0 
       (.I0(init_wait_count_reg[2]),
        .I1(init_wait_count_reg[1]),
        .O(\init_wait_count[6]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \init_wait_count[6]_i_4__0 
       (.I0(init_wait_count_reg[3]),
        .I1(init_wait_count_reg[0]),
        .I2(init_wait_count_reg[2]),
        .I3(init_wait_count_reg[1]),
        .O(\init_wait_count[6]_i_4__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[0] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(pma_reset),
        .D(\init_wait_count[0]_i_1__0_n_0 ),
        .Q(init_wait_count_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[1] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(pma_reset),
        .D(p_0_in__2[1]),
        .Q(init_wait_count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[2] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(pma_reset),
        .D(p_0_in__2[2]),
        .Q(init_wait_count_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[3] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(pma_reset),
        .D(p_0_in__2[3]),
        .Q(init_wait_count_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[4] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(pma_reset),
        .D(p_0_in__2[4]),
        .Q(init_wait_count_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[5] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(pma_reset),
        .D(p_0_in__2[5]),
        .Q(init_wait_count_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[6] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(pma_reset),
        .D(p_0_in__2[6]),
        .Q(init_wait_count_reg[6]));
  LUT2 #(
    .INIT(4'hE)) 
    init_wait_done_i_1__0
       (.I0(init_wait_done),
        .I1(init_wait_done_reg_n_0),
        .O(init_wait_done_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    init_wait_done_i_2__0
       (.I0(init_wait_count_reg[3]),
        .I1(init_wait_count_reg[5]),
        .I2(\init_wait_count[6]_i_3__0_n_0 ),
        .I3(init_wait_count_reg[4]),
        .I4(init_wait_count_reg[6]),
        .I5(init_wait_count_reg[0]),
        .O(init_wait_done));
  FDCE #(
    .INIT(1'b0)) 
    init_wait_done_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .CLR(pma_reset),
        .D(init_wait_done_i_1__0_n_0),
        .Q(init_wait_done_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[0]_i_1__0 
       (.I0(mmcm_lock_count_reg[0]),
        .O(p_0_in__3[0]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mmcm_lock_count[1]_i_1__0 
       (.I0(mmcm_lock_count_reg[1]),
        .I1(mmcm_lock_count_reg[0]),
        .O(p_0_in__3[1]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \mmcm_lock_count[2]_i_1__0 
       (.I0(mmcm_lock_count_reg[2]),
        .I1(mmcm_lock_count_reg[1]),
        .I2(mmcm_lock_count_reg[0]),
        .O(p_0_in__3[2]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \mmcm_lock_count[3]_i_1__0 
       (.I0(mmcm_lock_count_reg[0]),
        .I1(mmcm_lock_count_reg[1]),
        .I2(mmcm_lock_count_reg[2]),
        .I3(mmcm_lock_count_reg[3]),
        .O(p_0_in__3[3]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \mmcm_lock_count[4]_i_1__0 
       (.I0(mmcm_lock_count_reg[4]),
        .I1(mmcm_lock_count_reg[0]),
        .I2(mmcm_lock_count_reg[1]),
        .I3(mmcm_lock_count_reg[2]),
        .I4(mmcm_lock_count_reg[3]),
        .O(p_0_in__3[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \mmcm_lock_count[5]_i_1__0 
       (.I0(mmcm_lock_count_reg[5]),
        .I1(mmcm_lock_count_reg[3]),
        .I2(mmcm_lock_count_reg[2]),
        .I3(mmcm_lock_count_reg[1]),
        .I4(mmcm_lock_count_reg[0]),
        .I5(mmcm_lock_count_reg[4]),
        .O(p_0_in__3[5]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \mmcm_lock_count[6]_i_1__0 
       (.I0(mmcm_lock_count_reg[6]),
        .I1(mmcm_lock_count_reg[4]),
        .I2(\mmcm_lock_count[7]_i_4__0_n_0 ),
        .I3(mmcm_lock_count_reg[5]),
        .O(p_0_in__3[6]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \mmcm_lock_count[7]_i_2__0 
       (.I0(mmcm_lock_count_reg[6]),
        .I1(mmcm_lock_count_reg[4]),
        .I2(\mmcm_lock_count[7]_i_4__0_n_0 ),
        .I3(mmcm_lock_count_reg[5]),
        .I4(mmcm_lock_count_reg[7]),
        .O(\mmcm_lock_count[7]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \mmcm_lock_count[7]_i_3__0 
       (.I0(mmcm_lock_count_reg[7]),
        .I1(mmcm_lock_count_reg[5]),
        .I2(\mmcm_lock_count[7]_i_4__0_n_0 ),
        .I3(mmcm_lock_count_reg[4]),
        .I4(mmcm_lock_count_reg[6]),
        .O(p_0_in__3[7]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \mmcm_lock_count[7]_i_4__0 
       (.I0(mmcm_lock_count_reg[3]),
        .I1(mmcm_lock_count_reg[2]),
        .I2(mmcm_lock_count_reg[1]),
        .I3(mmcm_lock_count_reg[0]),
        .O(\mmcm_lock_count[7]_i_4__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[0] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(p_0_in__3[0]),
        .Q(mmcm_lock_count_reg[0]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[1] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(p_0_in__3[1]),
        .Q(mmcm_lock_count_reg[1]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[2] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(p_0_in__3[2]),
        .Q(mmcm_lock_count_reg[2]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[3] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(p_0_in__3[3]),
        .Q(mmcm_lock_count_reg[3]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[4] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(p_0_in__3[4]),
        .Q(mmcm_lock_count_reg[4]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[5] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(p_0_in__3[5]),
        .Q(mmcm_lock_count_reg[5]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[6] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(p_0_in__3[6]),
        .Q(mmcm_lock_count_reg[6]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[7] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(p_0_in__3[7]),
        .Q(mmcm_lock_count_reg[7]),
        .R(sync_mmcm_lock_reclocked_n_0));
  LUT5 #(
    .INIT(32'hEAAA0000)) 
    mmcm_lock_reclocked_i_1
       (.I0(mmcm_lock_reclocked),
        .I1(mmcm_lock_count_reg[7]),
        .I2(mmcm_lock_reclocked_i_2__0_n_0),
        .I3(mmcm_lock_count_reg[6]),
        .I4(mmcm_lock_i),
        .O(mmcm_lock_reclocked_i_1_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    mmcm_lock_reclocked_i_2__0
       (.I0(mmcm_lock_count_reg[5]),
        .I1(mmcm_lock_count_reg[3]),
        .I2(mmcm_lock_count_reg[2]),
        .I3(mmcm_lock_count_reg[1]),
        .I4(mmcm_lock_count_reg[0]),
        .I5(mmcm_lock_count_reg[4]),
        .O(mmcm_lock_reclocked_i_2__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    mmcm_lock_reclocked_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(mmcm_lock_reclocked_i_1_n_0),
        .Q(mmcm_lock_reclocked),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT5 #(
    .INIT(32'h001F0011)) 
    reset_time_out_i_3__0
       (.I0(rx_state[3]),
        .I1(rx_state[2]),
        .I2(rx_state[0]),
        .I3(rx_state[1]),
        .I4(reset_time_out_reg_0),
        .O(reset_time_out_i_3__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT5 #(
    .INIT(32'h0C3C0EFC)) 
    reset_time_out_i_5
       (.I0(reset_time_out_reg_0),
        .I1(rx_state[0]),
        .I2(rx_state[3]),
        .I3(rx_state[2]),
        .I4(rx_state[1]),
        .O(reset_time_out_i_5_n_0));
  FDSE #(
    .INIT(1'b0)) 
    reset_time_out_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(sync_data_valid_n_4),
        .Q(reset_time_out_reg_n_0),
        .S(pma_reset));
  LUT5 #(
    .INIT(32'hFEFF0010)) 
    run_phase_alignment_int_i_1__0
       (.I0(rx_state[2]),
        .I1(rx_state[1]),
        .I2(rx_state[3]),
        .I3(rx_state[0]),
        .I4(run_phase_alignment_int_reg_n_0),
        .O(run_phase_alignment_int_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(run_phase_alignment_int_i_1__0_n_0),
        .Q(run_phase_alignment_int_reg_n_0),
        .R(pma_reset));
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_s3_reg
       (.C(userclk),
        .CE(1'b1),
        .D(run_phase_alignment_int_s2),
        .Q(run_phase_alignment_int_s3_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rx_fsm_reset_done_int_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(sync_data_valid_n_5),
        .Q(data_in),
        .R(pma_reset));
  FDRE #(
    .INIT(1'b0)) 
    rx_fsm_reset_done_int_s3_reg
       (.C(userclk),
        .CE(1'b1),
        .D(rx_fsm_reset_done_int_s2),
        .Q(rx_fsm_reset_done_int_s3),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rxresetdone_s3_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(rxresetdone_s2),
        .Q(rxresetdone_s3),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_13 sync_RXRESETDONE
       (.data_out(rxresetdone_s2),
        .data_sync_reg1_0(data_sync_reg1),
        .independent_clock_bufg(independent_clock_bufg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_14 sync_data_valid
       (.D({rx_state__0[3],rx_state__0[1:0]}),
        .E(sync_data_valid_n_0),
        .\FSM_sequential_rx_state_reg[0] (\wait_time_cnt[6]_i_2__0_n_0 ),
        .\FSM_sequential_rx_state_reg[0]_0 (\FSM_sequential_rx_state[3]_i_4_n_0 ),
        .\FSM_sequential_rx_state_reg[0]_1 (\FSM_sequential_rx_state[3]_i_7_n_0 ),
        .\FSM_sequential_rx_state_reg[0]_2 (\FSM_sequential_rx_state[0]_i_2_n_0 ),
        .\FSM_sequential_rx_state_reg[0]_3 (\FSM_sequential_rx_state[0]_i_3_n_0 ),
        .\FSM_sequential_rx_state_reg[1] (time_out_100us_reg_n_0),
        .\FSM_sequential_rx_state_reg[1]_0 (\FSM_sequential_rx_state[2]_i_2_n_0 ),
        .\FSM_sequential_rx_state_reg[3] (sync_data_valid_n_5),
        .\FSM_sequential_rx_state_reg[3]_0 (\FSM_sequential_rx_state[3]_i_6_n_0 ),
        .Q(rx_state),
        .data_in(data_in),
        .data_out(data_out),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_lock_reclocked(mmcm_lock_reclocked),
        .reset_time_out_reg(sync_data_valid_n_4),
        .reset_time_out_reg_0(reset_time_out_reg_n_0),
        .reset_time_out_reg_1(sync_pll0lock_n_0),
        .reset_time_out_reg_2(reset_time_out_i_3__0_n_0),
        .reset_time_out_reg_3(reset_time_out_i_5_n_0),
        .rx_fsm_reset_done_int_reg(time_out_1us_reg_n_0),
        .time_out_wait_bypass_s3(time_out_wait_bypass_s3),
        .time_tlock_max(time_tlock_max));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_15 sync_mmcm_lock_reclocked
       (.SR(sync_mmcm_lock_reclocked_n_0),
        .data_out(mmcm_lock_i),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_locked(mmcm_locked));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_16 sync_pll0lock
       (.\FSM_sequential_rx_state_reg[1] (sync_pll0lock_n_0),
        .Q(rx_state[3:1]),
        .gt0_pll0lock_in(gt0_pll0lock_in),
        .independent_clock_bufg(independent_clock_bufg),
        .rxresetdone_s3(rxresetdone_s3));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_17 sync_run_phase_alignment_int
       (.data_in(run_phase_alignment_int_reg_n_0),
        .data_out(run_phase_alignment_int_s2),
        .userclk(userclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_18 sync_rx_fsm_reset_done_int
       (.data_in(data_in),
        .data_out(rx_fsm_reset_done_int_s2),
        .userclk(userclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_19 sync_time_out_wait_bypass
       (.data_in(time_out_wait_bypass_reg_n_0),
        .data_out(time_out_wait_bypass_s2),
        .independent_clock_bufg(independent_clock_bufg));
  LUT5 #(
    .INIT(32'hFFFF0100)) 
    time_out_100us_i_1
       (.I0(time_out_100us_i_2_n_0),
        .I1(time_out_100us_i_3_n_0),
        .I2(time_out_100us_i_4_n_0),
        .I3(time_out_100us_i_5_n_0),
        .I4(time_out_100us_reg_n_0),
        .O(time_out_100us_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF7F)) 
    time_out_100us_i_2
       (.I0(time_out_counter_reg[11]),
        .I1(time_out_counter_reg[14]),
        .I2(time_out_counter_reg[5]),
        .I3(time_out_counter_reg[8]),
        .I4(time_out_counter_reg[13]),
        .I5(time_out_100us_i_6_n_0),
        .O(time_out_100us_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    time_out_100us_i_3
       (.I0(time_out_counter_reg[18]),
        .I1(time_out_counter_reg[19]),
        .I2(time_out_counter_reg[16]),
        .I3(time_out_counter_reg[17]),
        .O(time_out_100us_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    time_out_100us_i_4
       (.I0(time_out_counter_reg[2]),
        .I1(time_out_counter_reg[3]),
        .I2(time_out_counter_reg[10]),
        .I3(time_out_counter_reg[9]),
        .O(time_out_100us_i_4_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    time_out_100us_i_5
       (.I0(time_out_counter_reg[0]),
        .I1(time_out_counter_reg[1]),
        .I2(time_out_counter_reg[4]),
        .I3(time_out_counter_reg[15]),
        .I4(time_out_counter_reg[12]),
        .O(time_out_100us_i_5_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    time_out_100us_i_6
       (.I0(time_out_counter_reg[7]),
        .I1(time_out_counter_reg[6]),
        .O(time_out_100us_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_100us_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_out_100us_i_1_n_0),
        .Q(time_out_100us_reg_n_0),
        .R(reset_time_out_reg_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00010000)) 
    time_out_1us_i_1
       (.I0(time_out_1us_i_2_n_0),
        .I1(time_out_counter_reg[19]),
        .I2(time_out_counter_reg[18]),
        .I3(time_out_1us_i_3_n_0),
        .I4(time_out_2ms_i_4_n_0),
        .I5(time_out_1us_reg_n_0),
        .O(time_out_1us_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'hE)) 
    time_out_1us_i_2
       (.I0(time_out_counter_reg[17]),
        .I1(time_out_counter_reg[16]),
        .O(time_out_1us_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    time_out_1us_i_3
       (.I0(time_out_counter_reg[13]),
        .I1(time_out_counter_reg[8]),
        .I2(time_out_counter_reg[9]),
        .I3(time_out_counter_reg[3]),
        .I4(time_out_counter_reg[2]),
        .I5(time_out_counter_reg[10]),
        .O(time_out_1us_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_1us_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_out_1us_i_1_n_0),
        .Q(time_out_1us_reg_n_0),
        .R(reset_time_out_reg_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00080000)) 
    time_out_2ms_i_1
       (.I0(time_out_counter_reg[9]),
        .I1(time_out_counter_reg[10]),
        .I2(time_out_2ms_i_2_n_0),
        .I3(time_out_2ms_i_3__0_n_0),
        .I4(time_out_2ms_i_4_n_0),
        .I5(time_out_2ms_reg_n_0),
        .O(time_out_2ms_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'hE)) 
    time_out_2ms_i_2
       (.I0(time_out_counter_reg[3]),
        .I1(time_out_counter_reg[2]),
        .O(time_out_2ms_i_2_n_0));
  LUT6 #(
    .INIT(64'hFDFFFFFFFFFFFFFF)) 
    time_out_2ms_i_3__0
       (.I0(time_out_counter_reg[13]),
        .I1(time_out_counter_reg[18]),
        .I2(time_out_counter_reg[17]),
        .I3(time_out_counter_reg[8]),
        .I4(time_out_counter_reg[16]),
        .I5(time_out_counter_reg[19]),
        .O(time_out_2ms_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    time_out_2ms_i_4
       (.I0(time_out_100us_i_5_n_0),
        .I1(time_out_counter_reg[14]),
        .I2(time_out_counter_reg[6]),
        .I3(time_out_counter_reg[11]),
        .I4(time_out_counter_reg[5]),
        .I5(time_out_counter_reg[7]),
        .O(time_out_2ms_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_2ms_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_out_2ms_i_1_n_0),
        .Q(time_out_2ms_reg_n_0),
        .R(reset_time_out_reg_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFF7FFFFFFFF)) 
    \time_out_counter[0]_i_1 
       (.I0(time_out_counter_reg[9]),
        .I1(time_out_counter_reg[10]),
        .I2(time_out_counter_reg[3]),
        .I3(time_out_counter_reg[2]),
        .I4(time_out_2ms_i_3__0_n_0),
        .I5(time_out_2ms_i_4_n_0),
        .O(time_out_counter));
  LUT1 #(
    .INIT(2'h1)) 
    \time_out_counter[0]_i_3 
       (.I0(time_out_counter_reg[0]),
        .O(\time_out_counter[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[0] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__0_n_7 ),
        .Q(time_out_counter_reg[0]),
        .R(reset_time_out_reg_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[0]_i_2__0 
       (.CI(1'b0),
        .CO({\time_out_counter_reg[0]_i_2__0_n_0 ,\time_out_counter_reg[0]_i_2__0_n_1 ,\time_out_counter_reg[0]_i_2__0_n_2 ,\time_out_counter_reg[0]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\time_out_counter_reg[0]_i_2__0_n_4 ,\time_out_counter_reg[0]_i_2__0_n_5 ,\time_out_counter_reg[0]_i_2__0_n_6 ,\time_out_counter_reg[0]_i_2__0_n_7 }),
        .S({time_out_counter_reg[3:1],\time_out_counter[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[10] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__0_n_5 ),
        .Q(time_out_counter_reg[10]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[11] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__0_n_4 ),
        .Q(time_out_counter_reg[11]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[12] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__0_n_7 ),
        .Q(time_out_counter_reg[12]),
        .R(reset_time_out_reg_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[12]_i_1__0 
       (.CI(\time_out_counter_reg[8]_i_1__0_n_0 ),
        .CO({\time_out_counter_reg[12]_i_1__0_n_0 ,\time_out_counter_reg[12]_i_1__0_n_1 ,\time_out_counter_reg[12]_i_1__0_n_2 ,\time_out_counter_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[12]_i_1__0_n_4 ,\time_out_counter_reg[12]_i_1__0_n_5 ,\time_out_counter_reg[12]_i_1__0_n_6 ,\time_out_counter_reg[12]_i_1__0_n_7 }),
        .S(time_out_counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[13] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__0_n_6 ),
        .Q(time_out_counter_reg[13]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[14] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__0_n_5 ),
        .Q(time_out_counter_reg[14]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[15] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__0_n_4 ),
        .Q(time_out_counter_reg[15]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[16] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1__0_n_7 ),
        .Q(time_out_counter_reg[16]),
        .R(reset_time_out_reg_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[16]_i_1__0 
       (.CI(\time_out_counter_reg[12]_i_1__0_n_0 ),
        .CO({\NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED [3],\time_out_counter_reg[16]_i_1__0_n_1 ,\time_out_counter_reg[16]_i_1__0_n_2 ,\time_out_counter_reg[16]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[16]_i_1__0_n_4 ,\time_out_counter_reg[16]_i_1__0_n_5 ,\time_out_counter_reg[16]_i_1__0_n_6 ,\time_out_counter_reg[16]_i_1__0_n_7 }),
        .S(time_out_counter_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[17] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1__0_n_6 ),
        .Q(time_out_counter_reg[17]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[18] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1__0_n_5 ),
        .Q(time_out_counter_reg[18]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[19] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1__0_n_4 ),
        .Q(time_out_counter_reg[19]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[1] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__0_n_6 ),
        .Q(time_out_counter_reg[1]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[2] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__0_n_5 ),
        .Q(time_out_counter_reg[2]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[3] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__0_n_4 ),
        .Q(time_out_counter_reg[3]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[4] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__0_n_7 ),
        .Q(time_out_counter_reg[4]),
        .R(reset_time_out_reg_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[4]_i_1__0 
       (.CI(\time_out_counter_reg[0]_i_2__0_n_0 ),
        .CO({\time_out_counter_reg[4]_i_1__0_n_0 ,\time_out_counter_reg[4]_i_1__0_n_1 ,\time_out_counter_reg[4]_i_1__0_n_2 ,\time_out_counter_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[4]_i_1__0_n_4 ,\time_out_counter_reg[4]_i_1__0_n_5 ,\time_out_counter_reg[4]_i_1__0_n_6 ,\time_out_counter_reg[4]_i_1__0_n_7 }),
        .S(time_out_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[5] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__0_n_6 ),
        .Q(time_out_counter_reg[5]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[6] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__0_n_5 ),
        .Q(time_out_counter_reg[6]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[7] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__0_n_4 ),
        .Q(time_out_counter_reg[7]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[8] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__0_n_7 ),
        .Q(time_out_counter_reg[8]),
        .R(reset_time_out_reg_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[8]_i_1__0 
       (.CI(\time_out_counter_reg[4]_i_1__0_n_0 ),
        .CO({\time_out_counter_reg[8]_i_1__0_n_0 ,\time_out_counter_reg[8]_i_1__0_n_1 ,\time_out_counter_reg[8]_i_1__0_n_2 ,\time_out_counter_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[8]_i_1__0_n_4 ,\time_out_counter_reg[8]_i_1__0_n_5 ,\time_out_counter_reg[8]_i_1__0_n_6 ,\time_out_counter_reg[8]_i_1__0_n_7 }),
        .S(time_out_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[9] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__0_n_6 ),
        .Q(time_out_counter_reg[9]),
        .R(reset_time_out_reg_n_0));
  LUT4 #(
    .INIT(16'hAB00)) 
    time_out_wait_bypass_i_1
       (.I0(time_out_wait_bypass_reg_n_0),
        .I1(rx_fsm_reset_done_int_s3),
        .I2(time_out_wait_bypass_i_2__0_n_0),
        .I3(run_phase_alignment_int_s3_reg_n_0),
        .O(time_out_wait_bypass_i_1_n_0));
  LUT5 #(
    .INIT(32'hFBFFFFFF)) 
    time_out_wait_bypass_i_2__0
       (.I0(time_out_wait_bypass_i_3__0_n_0),
        .I1(wait_bypass_count_reg[1]),
        .I2(wait_bypass_count_reg[11]),
        .I3(wait_bypass_count_reg[0]),
        .I4(time_out_wait_bypass_i_4__0_n_0),
        .O(time_out_wait_bypass_i_2__0_n_0));
  LUT4 #(
    .INIT(16'hDFFF)) 
    time_out_wait_bypass_i_3__0
       (.I0(wait_bypass_count_reg[9]),
        .I1(wait_bypass_count_reg[4]),
        .I2(wait_bypass_count_reg[12]),
        .I3(wait_bypass_count_reg[2]),
        .O(time_out_wait_bypass_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    time_out_wait_bypass_i_4__0
       (.I0(wait_bypass_count_reg[5]),
        .I1(wait_bypass_count_reg[7]),
        .I2(wait_bypass_count_reg[3]),
        .I3(wait_bypass_count_reg[6]),
        .I4(wait_bypass_count_reg[10]),
        .I5(wait_bypass_count_reg[8]),
        .O(time_out_wait_bypass_i_4__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_wait_bypass_reg
       (.C(userclk),
        .CE(1'b1),
        .D(time_out_wait_bypass_i_1_n_0),
        .Q(time_out_wait_bypass_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_wait_bypass_s3_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_out_wait_bypass_s2),
        .Q(time_out_wait_bypass_s3),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 time_tlock_max1_carry
       (.CI(1'b0),
        .CO({time_tlock_max1_carry_n_0,time_tlock_max1_carry_n_1,time_tlock_max1_carry_n_2,time_tlock_max1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({time_tlock_max1_carry_i_1_n_0,time_tlock_max1_carry_i_2_n_0,time_tlock_max1_carry_i_3_n_0,time_tlock_max1_carry_i_4_n_0}),
        .O(NLW_time_tlock_max1_carry_O_UNCONNECTED[3:0]),
        .S({time_tlock_max1_carry_i_5_n_0,time_tlock_max1_carry_i_6_n_0,time_tlock_max1_carry_i_7_n_0,time_tlock_max1_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 time_tlock_max1_carry__0
       (.CI(time_tlock_max1_carry_n_0),
        .CO({time_tlock_max1_carry__0_n_0,time_tlock_max1_carry__0_n_1,time_tlock_max1_carry__0_n_2,time_tlock_max1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({time_out_counter_reg[15],time_tlock_max1_carry__0_i_1_n_0,1'b0,time_tlock_max1_carry__0_i_2_n_0}),
        .O(NLW_time_tlock_max1_carry__0_O_UNCONNECTED[3:0]),
        .S({time_tlock_max1_carry__0_i_3_n_0,time_tlock_max1_carry__0_i_4_n_0,time_tlock_max1_carry__0_i_5_n_0,time_tlock_max1_carry__0_i_6_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    time_tlock_max1_carry__0_i_1
       (.I0(time_out_counter_reg[13]),
        .I1(time_out_counter_reg[12]),
        .O(time_tlock_max1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    time_tlock_max1_carry__0_i_2
       (.I0(time_out_counter_reg[8]),
        .I1(time_out_counter_reg[9]),
        .O(time_tlock_max1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    time_tlock_max1_carry__0_i_3
       (.I0(time_out_counter_reg[14]),
        .I1(time_out_counter_reg[15]),
        .O(time_tlock_max1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    time_tlock_max1_carry__0_i_4
       (.I0(time_out_counter_reg[12]),
        .I1(time_out_counter_reg[13]),
        .O(time_tlock_max1_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    time_tlock_max1_carry__0_i_5
       (.I0(time_out_counter_reg[10]),
        .I1(time_out_counter_reg[11]),
        .O(time_tlock_max1_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    time_tlock_max1_carry__0_i_6
       (.I0(time_out_counter_reg[9]),
        .I1(time_out_counter_reg[8]),
        .O(time_tlock_max1_carry__0_i_6_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 time_tlock_max1_carry__1
       (.CI(time_tlock_max1_carry__0_n_0),
        .CO({NLW_time_tlock_max1_carry__1_CO_UNCONNECTED[3:2],time_tlock_max1,time_tlock_max1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,time_tlock_max1_carry__1_i_1_n_0,time_tlock_max1_carry__1_i_2_n_0}),
        .O(NLW_time_tlock_max1_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,time_tlock_max1_carry__1_i_3_n_0,time_tlock_max1_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    time_tlock_max1_carry__1_i_1
       (.I0(time_out_counter_reg[19]),
        .I1(time_out_counter_reg[18]),
        .O(time_tlock_max1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    time_tlock_max1_carry__1_i_2
       (.I0(time_out_counter_reg[17]),
        .I1(time_out_counter_reg[16]),
        .O(time_tlock_max1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    time_tlock_max1_carry__1_i_3
       (.I0(time_out_counter_reg[18]),
        .I1(time_out_counter_reg[19]),
        .O(time_tlock_max1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    time_tlock_max1_carry__1_i_4
       (.I0(time_out_counter_reg[16]),
        .I1(time_out_counter_reg[17]),
        .O(time_tlock_max1_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    time_tlock_max1_carry_i_1
       (.I0(time_out_counter_reg[7]),
        .I1(time_out_counter_reg[6]),
        .O(time_tlock_max1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    time_tlock_max1_carry_i_2
       (.I0(time_out_counter_reg[4]),
        .I1(time_out_counter_reg[5]),
        .O(time_tlock_max1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    time_tlock_max1_carry_i_3
       (.I0(time_out_counter_reg[3]),
        .I1(time_out_counter_reg[2]),
        .O(time_tlock_max1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    time_tlock_max1_carry_i_4
       (.I0(time_out_counter_reg[0]),
        .I1(time_out_counter_reg[1]),
        .O(time_tlock_max1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    time_tlock_max1_carry_i_5
       (.I0(time_out_counter_reg[6]),
        .I1(time_out_counter_reg[7]),
        .O(time_tlock_max1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    time_tlock_max1_carry_i_6
       (.I0(time_out_counter_reg[5]),
        .I1(time_out_counter_reg[4]),
        .O(time_tlock_max1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    time_tlock_max1_carry_i_7
       (.I0(time_out_counter_reg[2]),
        .I1(time_out_counter_reg[3]),
        .O(time_tlock_max1_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    time_tlock_max1_carry_i_8
       (.I0(time_out_counter_reg[1]),
        .I1(time_out_counter_reg[0]),
        .O(time_tlock_max1_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    time_tlock_max_i_1
       (.I0(check_tlock_max_reg_n_0),
        .I1(time_tlock_max1),
        .I2(time_tlock_max),
        .O(time_tlock_max_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_tlock_max_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_tlock_max_i_1_n_0),
        .Q(time_tlock_max),
        .R(reset_time_out_reg_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_1__0 
       (.I0(run_phase_alignment_int_s3_reg_n_0),
        .O(\wait_bypass_count[0]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wait_bypass_count[0]_i_2__0 
       (.I0(time_out_wait_bypass_i_2__0_n_0),
        .I1(rx_fsm_reset_done_int_s3),
        .O(\wait_bypass_count[0]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_4 
       (.I0(wait_bypass_count_reg[0]),
        .O(\wait_bypass_count[0]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[0] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3__0_n_7 ),
        .Q(wait_bypass_count_reg[0]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_bypass_count_reg[0]_i_3__0 
       (.CI(1'b0),
        .CO({\wait_bypass_count_reg[0]_i_3__0_n_0 ,\wait_bypass_count_reg[0]_i_3__0_n_1 ,\wait_bypass_count_reg[0]_i_3__0_n_2 ,\wait_bypass_count_reg[0]_i_3__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\wait_bypass_count_reg[0]_i_3__0_n_4 ,\wait_bypass_count_reg[0]_i_3__0_n_5 ,\wait_bypass_count_reg[0]_i_3__0_n_6 ,\wait_bypass_count_reg[0]_i_3__0_n_7 }),
        .S({wait_bypass_count_reg[3:1],\wait_bypass_count[0]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[10] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1__0_n_5 ),
        .Q(wait_bypass_count_reg[10]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[11] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1__0_n_4 ),
        .Q(wait_bypass_count_reg[11]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[12] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1__0_n_7 ),
        .Q(wait_bypass_count_reg[12]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_bypass_count_reg[12]_i_1__0 
       (.CI(\wait_bypass_count_reg[8]_i_1__0_n_0 ),
        .CO(\NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED [3:1],\wait_bypass_count_reg[12]_i_1__0_n_7 }),
        .S({1'b0,1'b0,1'b0,wait_bypass_count_reg[12]}));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[1] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3__0_n_6 ),
        .Q(wait_bypass_count_reg[1]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[2] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3__0_n_5 ),
        .Q(wait_bypass_count_reg[2]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[3] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3__0_n_4 ),
        .Q(wait_bypass_count_reg[3]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[4] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1__0_n_7 ),
        .Q(wait_bypass_count_reg[4]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_bypass_count_reg[4]_i_1__0 
       (.CI(\wait_bypass_count_reg[0]_i_3__0_n_0 ),
        .CO({\wait_bypass_count_reg[4]_i_1__0_n_0 ,\wait_bypass_count_reg[4]_i_1__0_n_1 ,\wait_bypass_count_reg[4]_i_1__0_n_2 ,\wait_bypass_count_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[4]_i_1__0_n_4 ,\wait_bypass_count_reg[4]_i_1__0_n_5 ,\wait_bypass_count_reg[4]_i_1__0_n_6 ,\wait_bypass_count_reg[4]_i_1__0_n_7 }),
        .S(wait_bypass_count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[5] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1__0_n_6 ),
        .Q(wait_bypass_count_reg[5]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[6] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1__0_n_5 ),
        .Q(wait_bypass_count_reg[6]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[7] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1__0_n_4 ),
        .Q(wait_bypass_count_reg[7]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[8] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1__0_n_7 ),
        .Q(wait_bypass_count_reg[8]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_bypass_count_reg[8]_i_1__0 
       (.CI(\wait_bypass_count_reg[4]_i_1__0_n_0 ),
        .CO({\wait_bypass_count_reg[8]_i_1__0_n_0 ,\wait_bypass_count_reg[8]_i_1__0_n_1 ,\wait_bypass_count_reg[8]_i_1__0_n_2 ,\wait_bypass_count_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[8]_i_1__0_n_4 ,\wait_bypass_count_reg[8]_i_1__0_n_5 ,\wait_bypass_count_reg[8]_i_1__0_n_6 ,\wait_bypass_count_reg[8]_i_1__0_n_7 }),
        .S(wait_bypass_count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[9] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1__0_n_6 ),
        .Q(wait_bypass_count_reg[9]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_1__0 
       (.I0(wait_time_cnt_reg[0]),
        .O(wait_time_cnt0__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \wait_time_cnt[1]_i_1__0 
       (.I0(wait_time_cnt_reg[1]),
        .I1(wait_time_cnt_reg[0]),
        .O(\wait_time_cnt[1]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \wait_time_cnt[2]_i_1__0 
       (.I0(wait_time_cnt_reg[1]),
        .I1(wait_time_cnt_reg[0]),
        .I2(wait_time_cnt_reg[2]),
        .O(wait_time_cnt0__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \wait_time_cnt[3]_i_1__0 
       (.I0(wait_time_cnt_reg[2]),
        .I1(wait_time_cnt_reg[0]),
        .I2(wait_time_cnt_reg[1]),
        .I3(wait_time_cnt_reg[3]),
        .O(wait_time_cnt0__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \wait_time_cnt[4]_i_1__0 
       (.I0(wait_time_cnt_reg[4]),
        .I1(wait_time_cnt_reg[2]),
        .I2(wait_time_cnt_reg[0]),
        .I3(wait_time_cnt_reg[1]),
        .I4(wait_time_cnt_reg[3]),
        .O(\wait_time_cnt[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \wait_time_cnt[5]_i_1__0 
       (.I0(wait_time_cnt_reg[5]),
        .I1(wait_time_cnt_reg[3]),
        .I2(wait_time_cnt_reg[1]),
        .I3(wait_time_cnt_reg[0]),
        .I4(wait_time_cnt_reg[2]),
        .I5(wait_time_cnt_reg[4]),
        .O(\wait_time_cnt[5]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \wait_time_cnt[6]_i_1 
       (.I0(rx_state[0]),
        .I1(rx_state[1]),
        .I2(rx_state[3]),
        .O(\wait_time_cnt[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[6]_i_2__0 
       (.I0(wait_time_cnt_reg[6]),
        .I1(wait_time_cnt_reg[4]),
        .I2(\wait_time_cnt[6]_i_4__0_n_0 ),
        .I3(wait_time_cnt_reg[5]),
        .O(\wait_time_cnt[6]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'hAAA9)) 
    \wait_time_cnt[6]_i_3__0 
       (.I0(wait_time_cnt_reg[6]),
        .I1(wait_time_cnt_reg[4]),
        .I2(\wait_time_cnt[6]_i_4__0_n_0 ),
        .I3(wait_time_cnt_reg[5]),
        .O(\wait_time_cnt[6]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[6]_i_4__0 
       (.I0(wait_time_cnt_reg[3]),
        .I1(wait_time_cnt_reg[1]),
        .I2(wait_time_cnt_reg[0]),
        .I3(wait_time_cnt_reg[2]),
        .O(\wait_time_cnt[6]_i_4__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[0] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[6]_i_2__0_n_0 ),
        .D(wait_time_cnt0__0[0]),
        .Q(wait_time_cnt_reg[0]),
        .R(\wait_time_cnt[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[1] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[6]_i_2__0_n_0 ),
        .D(\wait_time_cnt[1]_i_1__0_n_0 ),
        .Q(wait_time_cnt_reg[1]),
        .R(\wait_time_cnt[6]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[2] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[6]_i_2__0_n_0 ),
        .D(wait_time_cnt0__0[2]),
        .Q(wait_time_cnt_reg[2]),
        .S(\wait_time_cnt[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[3] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[6]_i_2__0_n_0 ),
        .D(wait_time_cnt0__0[3]),
        .Q(wait_time_cnt_reg[3]),
        .R(\wait_time_cnt[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[4] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[6]_i_2__0_n_0 ),
        .D(\wait_time_cnt[4]_i_1__0_n_0 ),
        .Q(wait_time_cnt_reg[4]),
        .R(\wait_time_cnt[6]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[5] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[6]_i_2__0_n_0 ),
        .D(\wait_time_cnt[5]_i_1__0_n_0 ),
        .Q(wait_time_cnt_reg[5]),
        .S(\wait_time_cnt[6]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[6] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[6]_i_2__0_n_0 ),
        .D(\wait_time_cnt[6]_i_3__0_n_0 ),
        .Q(wait_time_cnt_reg[6]),
        .S(\wait_time_cnt[6]_i_1_n_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_TX_STARTUP_FSM
   (mmcm_reset,
    PLL0_RESET_reg_0,
    data_in,
    gt0_txuserrdy_t,
    gt0_gttxreset_in0_out,
    independent_clock_bufg,
    userclk,
    pma_reset,
    gtpe2_i,
    gt0_pll0refclklost_in,
    data_sync_reg1,
    mmcm_locked,
    gt0_pll0lock_in);
  output mmcm_reset;
  output PLL0_RESET_reg_0;
  output data_in;
  output gt0_txuserrdy_t;
  output gt0_gttxreset_in0_out;
  input independent_clock_bufg;
  input userclk;
  input pma_reset;
  input gtpe2_i;
  input gt0_pll0refclklost_in;
  input data_sync_reg1;
  input mmcm_locked;
  input gt0_pll0lock_in;

  wire \FSM_sequential_tx_state[0]_i_2_n_0 ;
  wire \FSM_sequential_tx_state[0]_i_3_n_0 ;
  wire \FSM_sequential_tx_state[2]_i_2_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_10_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_3_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_4_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_5_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_8_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_9_n_0 ;
  wire GTTXRESET;
  wire MMCM_RESET_i_1_n_0;
  wire PLL0_RESET_i_1_n_0;
  wire PLL0_RESET_i_2_n_0;
  wire PLL0_RESET_reg_0;
  wire TXUSERRDY_i_1_n_0;
  wire clear;
  wire data_in;
  wire data_out;
  wire data_sync_reg1;
  wire gt0_gttxreset_in0_out;
  wire gt0_pll0lock_in;
  wire gt0_pll0refclklost_in;
  wire gt0_txuserrdy_t;
  wire gtpe2_i;
  wire gttxreset_i_i_1_n_0;
  wire independent_clock_bufg;
  wire init_wait_count;
  wire \init_wait_count[0]_i_1_n_0 ;
  wire \init_wait_count[6]_i_3_n_0 ;
  wire \init_wait_count[6]_i_4_n_0 ;
  wire [6:0]init_wait_count_reg;
  wire init_wait_done;
  wire init_wait_done_i_1_n_0;
  wire init_wait_done_reg_n_0;
  wire \mmcm_lock_count[7]_i_2_n_0 ;
  wire \mmcm_lock_count[7]_i_4_n_0 ;
  wire [7:0]mmcm_lock_count_reg;
  wire mmcm_lock_i;
  wire mmcm_lock_reclocked;
  wire mmcm_lock_reclocked_i_1_n_0;
  wire mmcm_lock_reclocked_i_2_n_0;
  wire mmcm_locked;
  wire mmcm_reset;
  wire [6:1]p_0_in__0;
  wire [7:0]p_0_in__1;
  wire pll_reset_asserted_i_1_n_0;
  wire pll_reset_asserted_i_2_n_0;
  wire pll_reset_asserted_reg_n_0;
  wire pma_reset;
  wire refclk_stable_count;
  wire \refclk_stable_count[0]_i_10_n_0 ;
  wire \refclk_stable_count[0]_i_11_n_0 ;
  wire \refclk_stable_count[0]_i_3_n_0 ;
  wire \refclk_stable_count[0]_i_4_n_0 ;
  wire \refclk_stable_count[0]_i_5_n_0 ;
  wire \refclk_stable_count[0]_i_6_n_0 ;
  wire \refclk_stable_count[0]_i_7_n_0 ;
  wire \refclk_stable_count[0]_i_8_n_0 ;
  wire \refclk_stable_count[0]_i_9_n_0 ;
  wire [31:0]refclk_stable_count_reg;
  wire \refclk_stable_count_reg[0]_i_2_n_0 ;
  wire \refclk_stable_count_reg[0]_i_2_n_1 ;
  wire \refclk_stable_count_reg[0]_i_2_n_2 ;
  wire \refclk_stable_count_reg[0]_i_2_n_3 ;
  wire \refclk_stable_count_reg[0]_i_2_n_4 ;
  wire \refclk_stable_count_reg[0]_i_2_n_5 ;
  wire \refclk_stable_count_reg[0]_i_2_n_6 ;
  wire \refclk_stable_count_reg[0]_i_2_n_7 ;
  wire \refclk_stable_count_reg[12]_i_1_n_0 ;
  wire \refclk_stable_count_reg[12]_i_1_n_1 ;
  wire \refclk_stable_count_reg[12]_i_1_n_2 ;
  wire \refclk_stable_count_reg[12]_i_1_n_3 ;
  wire \refclk_stable_count_reg[12]_i_1_n_4 ;
  wire \refclk_stable_count_reg[12]_i_1_n_5 ;
  wire \refclk_stable_count_reg[12]_i_1_n_6 ;
  wire \refclk_stable_count_reg[12]_i_1_n_7 ;
  wire \refclk_stable_count_reg[16]_i_1_n_0 ;
  wire \refclk_stable_count_reg[16]_i_1_n_1 ;
  wire \refclk_stable_count_reg[16]_i_1_n_2 ;
  wire \refclk_stable_count_reg[16]_i_1_n_3 ;
  wire \refclk_stable_count_reg[16]_i_1_n_4 ;
  wire \refclk_stable_count_reg[16]_i_1_n_5 ;
  wire \refclk_stable_count_reg[16]_i_1_n_6 ;
  wire \refclk_stable_count_reg[16]_i_1_n_7 ;
  wire \refclk_stable_count_reg[20]_i_1_n_0 ;
  wire \refclk_stable_count_reg[20]_i_1_n_1 ;
  wire \refclk_stable_count_reg[20]_i_1_n_2 ;
  wire \refclk_stable_count_reg[20]_i_1_n_3 ;
  wire \refclk_stable_count_reg[20]_i_1_n_4 ;
  wire \refclk_stable_count_reg[20]_i_1_n_5 ;
  wire \refclk_stable_count_reg[20]_i_1_n_6 ;
  wire \refclk_stable_count_reg[20]_i_1_n_7 ;
  wire \refclk_stable_count_reg[24]_i_1_n_0 ;
  wire \refclk_stable_count_reg[24]_i_1_n_1 ;
  wire \refclk_stable_count_reg[24]_i_1_n_2 ;
  wire \refclk_stable_count_reg[24]_i_1_n_3 ;
  wire \refclk_stable_count_reg[24]_i_1_n_4 ;
  wire \refclk_stable_count_reg[24]_i_1_n_5 ;
  wire \refclk_stable_count_reg[24]_i_1_n_6 ;
  wire \refclk_stable_count_reg[24]_i_1_n_7 ;
  wire \refclk_stable_count_reg[28]_i_1_n_1 ;
  wire \refclk_stable_count_reg[28]_i_1_n_2 ;
  wire \refclk_stable_count_reg[28]_i_1_n_3 ;
  wire \refclk_stable_count_reg[28]_i_1_n_4 ;
  wire \refclk_stable_count_reg[28]_i_1_n_5 ;
  wire \refclk_stable_count_reg[28]_i_1_n_6 ;
  wire \refclk_stable_count_reg[28]_i_1_n_7 ;
  wire \refclk_stable_count_reg[4]_i_1_n_0 ;
  wire \refclk_stable_count_reg[4]_i_1_n_1 ;
  wire \refclk_stable_count_reg[4]_i_1_n_2 ;
  wire \refclk_stable_count_reg[4]_i_1_n_3 ;
  wire \refclk_stable_count_reg[4]_i_1_n_4 ;
  wire \refclk_stable_count_reg[4]_i_1_n_5 ;
  wire \refclk_stable_count_reg[4]_i_1_n_6 ;
  wire \refclk_stable_count_reg[4]_i_1_n_7 ;
  wire \refclk_stable_count_reg[8]_i_1_n_0 ;
  wire \refclk_stable_count_reg[8]_i_1_n_1 ;
  wire \refclk_stable_count_reg[8]_i_1_n_2 ;
  wire \refclk_stable_count_reg[8]_i_1_n_3 ;
  wire \refclk_stable_count_reg[8]_i_1_n_4 ;
  wire \refclk_stable_count_reg[8]_i_1_n_5 ;
  wire \refclk_stable_count_reg[8]_i_1_n_6 ;
  wire \refclk_stable_count_reg[8]_i_1_n_7 ;
  wire refclk_stable_i_1_n_0;
  wire refclk_stable_reg_n_0;
  wire reset_time_out;
  wire reset_time_out_i_2_n_0;
  wire run_phase_alignment_int_i_1_n_0;
  wire run_phase_alignment_int_reg_n_0;
  wire run_phase_alignment_int_s3;
  wire sel;
  wire sync_PLL0LOCK_n_0;
  wire sync_PLL0LOCK_n_1;
  wire sync_mmcm_lock_reclocked_n_0;
  wire time_out_2ms;
  wire time_out_2ms_i_1_n_0;
  wire time_out_2ms_i_3_n_0;
  wire time_out_2ms_i_4__0_n_0;
  wire time_out_2ms_i_5_n_0;
  wire time_out_2ms_reg_n_0;
  wire time_out_500us_i_1_n_0;
  wire time_out_500us_i_2_n_0;
  wire time_out_500us_i_3_n_0;
  wire time_out_500us_reg_n_0;
  wire time_out_counter;
  wire \time_out_counter[0]_i_3__0_n_0 ;
  wire \time_out_counter[0]_i_4_n_0 ;
  wire [18:0]time_out_counter_reg;
  wire \time_out_counter_reg[0]_i_2_n_0 ;
  wire \time_out_counter_reg[0]_i_2_n_1 ;
  wire \time_out_counter_reg[0]_i_2_n_2 ;
  wire \time_out_counter_reg[0]_i_2_n_3 ;
  wire \time_out_counter_reg[0]_i_2_n_4 ;
  wire \time_out_counter_reg[0]_i_2_n_5 ;
  wire \time_out_counter_reg[0]_i_2_n_6 ;
  wire \time_out_counter_reg[0]_i_2_n_7 ;
  wire \time_out_counter_reg[12]_i_1_n_0 ;
  wire \time_out_counter_reg[12]_i_1_n_1 ;
  wire \time_out_counter_reg[12]_i_1_n_2 ;
  wire \time_out_counter_reg[12]_i_1_n_3 ;
  wire \time_out_counter_reg[12]_i_1_n_4 ;
  wire \time_out_counter_reg[12]_i_1_n_5 ;
  wire \time_out_counter_reg[12]_i_1_n_6 ;
  wire \time_out_counter_reg[12]_i_1_n_7 ;
  wire \time_out_counter_reg[16]_i_1_n_2 ;
  wire \time_out_counter_reg[16]_i_1_n_3 ;
  wire \time_out_counter_reg[16]_i_1_n_5 ;
  wire \time_out_counter_reg[16]_i_1_n_6 ;
  wire \time_out_counter_reg[16]_i_1_n_7 ;
  wire \time_out_counter_reg[4]_i_1_n_0 ;
  wire \time_out_counter_reg[4]_i_1_n_1 ;
  wire \time_out_counter_reg[4]_i_1_n_2 ;
  wire \time_out_counter_reg[4]_i_1_n_3 ;
  wire \time_out_counter_reg[4]_i_1_n_4 ;
  wire \time_out_counter_reg[4]_i_1_n_5 ;
  wire \time_out_counter_reg[4]_i_1_n_6 ;
  wire \time_out_counter_reg[4]_i_1_n_7 ;
  wire \time_out_counter_reg[8]_i_1_n_0 ;
  wire \time_out_counter_reg[8]_i_1_n_1 ;
  wire \time_out_counter_reg[8]_i_1_n_2 ;
  wire \time_out_counter_reg[8]_i_1_n_3 ;
  wire \time_out_counter_reg[8]_i_1_n_4 ;
  wire \time_out_counter_reg[8]_i_1_n_5 ;
  wire \time_out_counter_reg[8]_i_1_n_6 ;
  wire \time_out_counter_reg[8]_i_1_n_7 ;
  wire time_out_wait_bypass_i_1_n_0;
  wire time_out_wait_bypass_i_2_n_0;
  wire time_out_wait_bypass_i_3_n_0;
  wire time_out_wait_bypass_i_4_n_0;
  wire time_out_wait_bypass_i_5_n_0;
  wire time_out_wait_bypass_reg_n_0;
  wire time_out_wait_bypass_s2;
  wire time_out_wait_bypass_s3;
  wire time_tlock_max_i_1_n_0;
  wire time_tlock_max_i_2_n_0;
  wire time_tlock_max_i_3_n_0;
  wire time_tlock_max_i_4_n_0;
  wire time_tlock_max_reg_n_0;
  wire tx_fsm_reset_done_int_i_1_n_0;
  wire tx_fsm_reset_done_int_s2;
  wire tx_fsm_reset_done_int_s3;
  wire [3:0]tx_state;
  wire [3:0]tx_state__0;
  wire txresetdone_s2;
  wire txresetdone_s3;
  wire userclk;
  wire \wait_bypass_count[0]_i_2_n_0 ;
  wire \wait_bypass_count[0]_i_4__0_n_0 ;
  wire [16:0]wait_bypass_count_reg;
  wire \wait_bypass_count_reg[0]_i_3_n_0 ;
  wire \wait_bypass_count_reg[0]_i_3_n_1 ;
  wire \wait_bypass_count_reg[0]_i_3_n_2 ;
  wire \wait_bypass_count_reg[0]_i_3_n_3 ;
  wire \wait_bypass_count_reg[0]_i_3_n_4 ;
  wire \wait_bypass_count_reg[0]_i_3_n_5 ;
  wire \wait_bypass_count_reg[0]_i_3_n_6 ;
  wire \wait_bypass_count_reg[0]_i_3_n_7 ;
  wire \wait_bypass_count_reg[12]_i_1_n_0 ;
  wire \wait_bypass_count_reg[12]_i_1_n_1 ;
  wire \wait_bypass_count_reg[12]_i_1_n_2 ;
  wire \wait_bypass_count_reg[12]_i_1_n_3 ;
  wire \wait_bypass_count_reg[12]_i_1_n_4 ;
  wire \wait_bypass_count_reg[12]_i_1_n_5 ;
  wire \wait_bypass_count_reg[12]_i_1_n_6 ;
  wire \wait_bypass_count_reg[12]_i_1_n_7 ;
  wire \wait_bypass_count_reg[16]_i_1_n_7 ;
  wire \wait_bypass_count_reg[4]_i_1_n_0 ;
  wire \wait_bypass_count_reg[4]_i_1_n_1 ;
  wire \wait_bypass_count_reg[4]_i_1_n_2 ;
  wire \wait_bypass_count_reg[4]_i_1_n_3 ;
  wire \wait_bypass_count_reg[4]_i_1_n_4 ;
  wire \wait_bypass_count_reg[4]_i_1_n_5 ;
  wire \wait_bypass_count_reg[4]_i_1_n_6 ;
  wire \wait_bypass_count_reg[4]_i_1_n_7 ;
  wire \wait_bypass_count_reg[8]_i_1_n_0 ;
  wire \wait_bypass_count_reg[8]_i_1_n_1 ;
  wire \wait_bypass_count_reg[8]_i_1_n_2 ;
  wire \wait_bypass_count_reg[8]_i_1_n_3 ;
  wire \wait_bypass_count_reg[8]_i_1_n_4 ;
  wire \wait_bypass_count_reg[8]_i_1_n_5 ;
  wire \wait_bypass_count_reg[8]_i_1_n_6 ;
  wire \wait_bypass_count_reg[8]_i_1_n_7 ;
  wire [3:0]wait_time_cnt0;
  wire wait_time_cnt0_0;
  wire \wait_time_cnt[1]_i_1_n_0 ;
  wire \wait_time_cnt[4]_i_1_n_0 ;
  wire \wait_time_cnt[5]_i_1_n_0 ;
  wire \wait_time_cnt[6]_i_3_n_0 ;
  wire \wait_time_cnt[6]_i_4_n_0 ;
  wire [6:0]wait_time_cnt_reg;
  wire [3:3]\NLW_refclk_stable_count_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_wait_bypass_count_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_wait_bypass_count_reg[16]_i_1_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hBFAABFFABAAABAFA)) 
    \FSM_sequential_tx_state[0]_i_1 
       (.I0(\FSM_sequential_tx_state[0]_i_2_n_0 ),
        .I1(\FSM_sequential_tx_state[0]_i_3_n_0 ),
        .I2(tx_state[2]),
        .I3(tx_state[1]),
        .I4(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .I5(time_out_2ms_reg_n_0),
        .O(tx_state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_tx_state[0]_i_2 
       (.I0(tx_state[3]),
        .I1(tx_state[0]),
        .O(\FSM_sequential_tx_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_tx_state[0]_i_3 
       (.I0(reset_time_out),
        .I1(time_out_500us_reg_n_0),
        .O(\FSM_sequential_tx_state[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT5 #(
    .INIT(32'h002C003C)) 
    \FSM_sequential_tx_state[1]_i_1 
       (.I0(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .I1(tx_state[1]),
        .I2(tx_state[0]),
        .I3(tx_state[3]),
        .I4(tx_state[2]),
        .O(tx_state__0[1]));
  LUT6 #(
    .INIT(64'h000500C000F000F0)) 
    \FSM_sequential_tx_state[2]_i_1 
       (.I0(time_out_2ms_reg_n_0),
        .I1(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .I2(tx_state[2]),
        .I3(tx_state[3]),
        .I4(tx_state[1]),
        .I5(tx_state[0]),
        .O(tx_state__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \FSM_sequential_tx_state[2]_i_2 
       (.I0(mmcm_lock_reclocked),
        .I1(time_tlock_max_reg_n_0),
        .I2(reset_time_out),
        .O(\FSM_sequential_tx_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_tx_state[3]_i_10 
       (.I0(reset_time_out),
        .I1(time_tlock_max_reg_n_0),
        .O(\FSM_sequential_tx_state[3]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT5 #(
    .INIT(32'hF4FF4444)) 
    \FSM_sequential_tx_state[3]_i_2 
       (.I0(time_out_wait_bypass_s3),
        .I1(tx_state[3]),
        .I2(reset_time_out),
        .I3(time_out_500us_reg_n_0),
        .I4(\FSM_sequential_tx_state[3]_i_8_n_0 ),
        .O(tx_state__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_tx_state[3]_i_3 
       (.I0(tx_state[2]),
        .I1(tx_state[1]),
        .O(\FSM_sequential_tx_state[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_tx_state[3]_i_4 
       (.I0(tx_state[3]),
        .I1(tx_state[0]),
        .O(\FSM_sequential_tx_state[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h88C888C8FFFF88C8)) 
    \FSM_sequential_tx_state[3]_i_5 
       (.I0(txresetdone_s3),
        .I1(\FSM_sequential_tx_state[3]_i_8_n_0 ),
        .I2(time_out_500us_reg_n_0),
        .I3(reset_time_out),
        .I4(\FSM_sequential_tx_state[3]_i_9_n_0 ),
        .I5(tx_state[0]),
        .O(\FSM_sequential_tx_state[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \FSM_sequential_tx_state[3]_i_8 
       (.I0(tx_state[0]),
        .I1(tx_state[3]),
        .I2(tx_state[1]),
        .I3(tx_state[2]),
        .O(\FSM_sequential_tx_state[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT4 #(
    .INIT(16'h1110)) 
    \FSM_sequential_tx_state[3]_i_9 
       (.I0(tx_state[1]),
        .I1(tx_state[2]),
        .I2(init_wait_done_reg_n_0),
        .I3(tx_state[3]),
        .O(\FSM_sequential_tx_state[3]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "wait_for_txoutclk:0100,release_pll_reset:0011,wait_for_pll_lock:0010,assert_all_resets:0001,init:0000,wait_reset_done:0111,reset_fsm_done:1001,wait_for_txusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[0] 
       (.C(independent_clock_bufg),
        .CE(sync_PLL0LOCK_n_0),
        .D(tx_state__0[0]),
        .Q(tx_state[0]),
        .R(pma_reset));
  (* FSM_ENCODED_STATES = "wait_for_txoutclk:0100,release_pll_reset:0011,wait_for_pll_lock:0010,assert_all_resets:0001,init:0000,wait_reset_done:0111,reset_fsm_done:1001,wait_for_txusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[1] 
       (.C(independent_clock_bufg),
        .CE(sync_PLL0LOCK_n_0),
        .D(tx_state__0[1]),
        .Q(tx_state[1]),
        .R(pma_reset));
  (* FSM_ENCODED_STATES = "wait_for_txoutclk:0100,release_pll_reset:0011,wait_for_pll_lock:0010,assert_all_resets:0001,init:0000,wait_reset_done:0111,reset_fsm_done:1001,wait_for_txusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[2] 
       (.C(independent_clock_bufg),
        .CE(sync_PLL0LOCK_n_0),
        .D(tx_state__0[2]),
        .Q(tx_state[2]),
        .R(pma_reset));
  (* FSM_ENCODED_STATES = "wait_for_txoutclk:0100,release_pll_reset:0011,wait_for_pll_lock:0010,assert_all_resets:0001,init:0000,wait_reset_done:0111,reset_fsm_done:1001,wait_for_txusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[3] 
       (.C(independent_clock_bufg),
        .CE(sync_PLL0LOCK_n_0),
        .D(tx_state__0[3]),
        .Q(tx_state[3]),
        .R(pma_reset));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT5 #(
    .INIT(32'hA8AAABAA)) 
    MMCM_RESET_i_1
       (.I0(mmcm_reset),
        .I1(tx_state[1]),
        .I2(tx_state[3]),
        .I3(tx_state[0]),
        .I4(tx_state[2]),
        .O(MMCM_RESET_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    MMCM_RESET_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(MMCM_RESET_i_1_n_0),
        .Q(mmcm_reset),
        .R(pma_reset));
  LUT5 #(
    .INIT(32'h1FFF1F00)) 
    PLL0_RESET_i_1
       (.I0(gt0_pll0refclklost_in),
        .I1(pll_reset_asserted_reg_n_0),
        .I2(refclk_stable_reg_n_0),
        .I3(PLL0_RESET_i_2_n_0),
        .I4(PLL0_RESET_reg_0),
        .O(PLL0_RESET_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    PLL0_RESET_i_2
       (.I0(tx_state[1]),
        .I1(tx_state[2]),
        .I2(tx_state[0]),
        .I3(tx_state[3]),
        .O(PLL0_RESET_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    PLL0_RESET_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(PLL0_RESET_i_1_n_0),
        .Q(PLL0_RESET_reg_0),
        .R(pma_reset));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT5 #(
    .INIT(32'hFEFF0800)) 
    TXUSERRDY_i_1
       (.I0(tx_state[2]),
        .I1(tx_state[1]),
        .I2(tx_state[3]),
        .I3(tx_state[0]),
        .I4(gt0_txuserrdy_t),
        .O(TXUSERRDY_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    TXUSERRDY_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(TXUSERRDY_i_1_n_0),
        .Q(gt0_txuserrdy_t),
        .R(pma_reset));
  LUT3 #(
    .INIT(8'hEA)) 
    gtpe2_i_i_3
       (.I0(GTTXRESET),
        .I1(data_in),
        .I2(gtpe2_i),
        .O(gt0_gttxreset_in0_out));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT5 #(
    .INIT(32'hFFFB0002)) 
    gttxreset_i_i_1
       (.I0(tx_state[0]),
        .I1(tx_state[2]),
        .I2(tx_state[1]),
        .I3(tx_state[3]),
        .I4(GTTXRESET),
        .O(gttxreset_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    gttxreset_i_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gttxreset_i_i_1_n_0),
        .Q(GTTXRESET),
        .R(pma_reset));
  LUT1 #(
    .INIT(2'h1)) 
    \init_wait_count[0]_i_1 
       (.I0(init_wait_count_reg[0]),
        .O(\init_wait_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \init_wait_count[1]_i_1 
       (.I0(init_wait_count_reg[1]),
        .I1(init_wait_count_reg[0]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \init_wait_count[2]_i_1 
       (.I0(init_wait_count_reg[2]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[0]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \init_wait_count[3]_i_1 
       (.I0(init_wait_count_reg[1]),
        .I1(init_wait_count_reg[2]),
        .I2(init_wait_count_reg[0]),
        .I3(init_wait_count_reg[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \init_wait_count[4]_i_1 
       (.I0(init_wait_count_reg[4]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[2]),
        .I3(init_wait_count_reg[0]),
        .I4(init_wait_count_reg[3]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \init_wait_count[5]_i_1 
       (.I0(init_wait_count_reg[5]),
        .I1(init_wait_count_reg[3]),
        .I2(init_wait_count_reg[0]),
        .I3(init_wait_count_reg[2]),
        .I4(init_wait_count_reg[1]),
        .I5(init_wait_count_reg[4]),
        .O(p_0_in__0[5]));
  LUT6 #(
    .INIT(64'hFFFBFFFFFFFFFFFF)) 
    \init_wait_count[6]_i_1 
       (.I0(init_wait_count_reg[0]),
        .I1(init_wait_count_reg[6]),
        .I2(init_wait_count_reg[4]),
        .I3(\init_wait_count[6]_i_3_n_0 ),
        .I4(init_wait_count_reg[5]),
        .I5(init_wait_count_reg[3]),
        .O(init_wait_count));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \init_wait_count[6]_i_2 
       (.I0(init_wait_count_reg[6]),
        .I1(init_wait_count_reg[4]),
        .I2(\init_wait_count[6]_i_4_n_0 ),
        .I3(init_wait_count_reg[5]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \init_wait_count[6]_i_3 
       (.I0(init_wait_count_reg[2]),
        .I1(init_wait_count_reg[1]),
        .O(\init_wait_count[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \init_wait_count[6]_i_4 
       (.I0(init_wait_count_reg[3]),
        .I1(init_wait_count_reg[0]),
        .I2(init_wait_count_reg[2]),
        .I3(init_wait_count_reg[1]),
        .O(\init_wait_count[6]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[0] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(pma_reset),
        .D(\init_wait_count[0]_i_1_n_0 ),
        .Q(init_wait_count_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[1] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(pma_reset),
        .D(p_0_in__0[1]),
        .Q(init_wait_count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[2] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(pma_reset),
        .D(p_0_in__0[2]),
        .Q(init_wait_count_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[3] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(pma_reset),
        .D(p_0_in__0[3]),
        .Q(init_wait_count_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[4] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(pma_reset),
        .D(p_0_in__0[4]),
        .Q(init_wait_count_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[5] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(pma_reset),
        .D(p_0_in__0[5]),
        .Q(init_wait_count_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[6] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(pma_reset),
        .D(p_0_in__0[6]),
        .Q(init_wait_count_reg[6]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT2 #(
    .INIT(4'hE)) 
    init_wait_done_i_1
       (.I0(init_wait_done),
        .I1(init_wait_done_reg_n_0),
        .O(init_wait_done_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    init_wait_done_i_2
       (.I0(init_wait_count_reg[3]),
        .I1(init_wait_count_reg[5]),
        .I2(\init_wait_count[6]_i_3_n_0 ),
        .I3(init_wait_count_reg[4]),
        .I4(init_wait_count_reg[6]),
        .I5(init_wait_count_reg[0]),
        .O(init_wait_done));
  FDCE #(
    .INIT(1'b0)) 
    init_wait_done_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .CLR(pma_reset),
        .D(init_wait_done_i_1_n_0),
        .Q(init_wait_done_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[0]_i_1 
       (.I0(mmcm_lock_count_reg[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mmcm_lock_count[1]_i_1 
       (.I0(mmcm_lock_count_reg[1]),
        .I1(mmcm_lock_count_reg[0]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \mmcm_lock_count[2]_i_1 
       (.I0(mmcm_lock_count_reg[2]),
        .I1(mmcm_lock_count_reg[1]),
        .I2(mmcm_lock_count_reg[0]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \mmcm_lock_count[3]_i_1 
       (.I0(mmcm_lock_count_reg[0]),
        .I1(mmcm_lock_count_reg[1]),
        .I2(mmcm_lock_count_reg[2]),
        .I3(mmcm_lock_count_reg[3]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \mmcm_lock_count[4]_i_1 
       (.I0(mmcm_lock_count_reg[4]),
        .I1(mmcm_lock_count_reg[0]),
        .I2(mmcm_lock_count_reg[1]),
        .I3(mmcm_lock_count_reg[2]),
        .I4(mmcm_lock_count_reg[3]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \mmcm_lock_count[5]_i_1 
       (.I0(mmcm_lock_count_reg[5]),
        .I1(mmcm_lock_count_reg[3]),
        .I2(mmcm_lock_count_reg[2]),
        .I3(mmcm_lock_count_reg[1]),
        .I4(mmcm_lock_count_reg[0]),
        .I5(mmcm_lock_count_reg[4]),
        .O(p_0_in__1[5]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \mmcm_lock_count[6]_i_1 
       (.I0(mmcm_lock_count_reg[6]),
        .I1(mmcm_lock_count_reg[4]),
        .I2(\mmcm_lock_count[7]_i_4_n_0 ),
        .I3(mmcm_lock_count_reg[5]),
        .O(p_0_in__1[6]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \mmcm_lock_count[7]_i_2 
       (.I0(mmcm_lock_count_reg[6]),
        .I1(mmcm_lock_count_reg[4]),
        .I2(\mmcm_lock_count[7]_i_4_n_0 ),
        .I3(mmcm_lock_count_reg[5]),
        .I4(mmcm_lock_count_reg[7]),
        .O(\mmcm_lock_count[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \mmcm_lock_count[7]_i_3 
       (.I0(mmcm_lock_count_reg[7]),
        .I1(mmcm_lock_count_reg[5]),
        .I2(\mmcm_lock_count[7]_i_4_n_0 ),
        .I3(mmcm_lock_count_reg[4]),
        .I4(mmcm_lock_count_reg[6]),
        .O(p_0_in__1[7]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \mmcm_lock_count[7]_i_4 
       (.I0(mmcm_lock_count_reg[3]),
        .I1(mmcm_lock_count_reg[2]),
        .I2(mmcm_lock_count_reg[1]),
        .I3(mmcm_lock_count_reg[0]),
        .O(\mmcm_lock_count[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[0] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(p_0_in__1[0]),
        .Q(mmcm_lock_count_reg[0]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[1] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(p_0_in__1[1]),
        .Q(mmcm_lock_count_reg[1]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[2] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(p_0_in__1[2]),
        .Q(mmcm_lock_count_reg[2]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[3] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(p_0_in__1[3]),
        .Q(mmcm_lock_count_reg[3]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[4] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(p_0_in__1[4]),
        .Q(mmcm_lock_count_reg[4]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[5] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(p_0_in__1[5]),
        .Q(mmcm_lock_count_reg[5]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[6] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(p_0_in__1[6]),
        .Q(mmcm_lock_count_reg[6]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[7] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(p_0_in__1[7]),
        .Q(mmcm_lock_count_reg[7]),
        .R(sync_mmcm_lock_reclocked_n_0));
  LUT5 #(
    .INIT(32'hEAAA0000)) 
    mmcm_lock_reclocked_i_1
       (.I0(mmcm_lock_reclocked),
        .I1(mmcm_lock_count_reg[7]),
        .I2(mmcm_lock_reclocked_i_2_n_0),
        .I3(mmcm_lock_count_reg[6]),
        .I4(mmcm_lock_i),
        .O(mmcm_lock_reclocked_i_1_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    mmcm_lock_reclocked_i_2
       (.I0(mmcm_lock_count_reg[5]),
        .I1(mmcm_lock_count_reg[3]),
        .I2(mmcm_lock_count_reg[2]),
        .I3(mmcm_lock_count_reg[1]),
        .I4(mmcm_lock_count_reg[0]),
        .I5(mmcm_lock_count_reg[4]),
        .O(mmcm_lock_reclocked_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    mmcm_lock_reclocked_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(mmcm_lock_reclocked_i_1_n_0),
        .Q(mmcm_lock_reclocked),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF0F0F0F00000F155)) 
    pll_reset_asserted_i_1
       (.I0(tx_state[3]),
        .I1(gt0_pll0refclklost_in),
        .I2(pll_reset_asserted_reg_n_0),
        .I3(refclk_stable_reg_n_0),
        .I4(tx_state[1]),
        .I5(pll_reset_asserted_i_2_n_0),
        .O(pll_reset_asserted_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    pll_reset_asserted_i_2
       (.I0(tx_state[0]),
        .I1(tx_state[3]),
        .I2(tx_state[2]),
        .O(pll_reset_asserted_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    pll_reset_asserted_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(pll_reset_asserted_i_1_n_0),
        .Q(pll_reset_asserted_reg_n_0),
        .R(pma_reset));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \refclk_stable_count[0]_i_1 
       (.I0(\refclk_stable_count[0]_i_3_n_0 ),
        .I1(\refclk_stable_count[0]_i_4_n_0 ),
        .I2(\refclk_stable_count[0]_i_5_n_0 ),
        .I3(\refclk_stable_count[0]_i_6_n_0 ),
        .O(refclk_stable_count));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \refclk_stable_count[0]_i_10 
       (.I0(refclk_stable_count_reg[24]),
        .I1(refclk_stable_count_reg[5]),
        .I2(refclk_stable_count_reg[3]),
        .I3(refclk_stable_count_reg[28]),
        .O(\refclk_stable_count[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \refclk_stable_count[0]_i_11 
       (.I0(refclk_stable_count_reg[11]),
        .I1(refclk_stable_count_reg[30]),
        .I2(refclk_stable_count_reg[15]),
        .I3(refclk_stable_count_reg[31]),
        .O(\refclk_stable_count[0]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \refclk_stable_count[0]_i_3 
       (.I0(refclk_stable_count_reg[21]),
        .I1(refclk_stable_count_reg[13]),
        .I2(refclk_stable_count_reg[29]),
        .I3(refclk_stable_count_reg[14]),
        .I4(\refclk_stable_count[0]_i_8_n_0 ),
        .O(\refclk_stable_count[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \refclk_stable_count[0]_i_4 
       (.I0(refclk_stable_count_reg[1]),
        .I1(refclk_stable_count_reg[6]),
        .I2(refclk_stable_count_reg[23]),
        .I3(refclk_stable_count_reg[9]),
        .I4(\refclk_stable_count[0]_i_9_n_0 ),
        .O(\refclk_stable_count[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \refclk_stable_count[0]_i_5 
       (.I0(refclk_stable_count_reg[20]),
        .I1(refclk_stable_count_reg[12]),
        .I2(refclk_stable_count_reg[16]),
        .I3(refclk_stable_count_reg[0]),
        .I4(\refclk_stable_count[0]_i_10_n_0 ),
        .O(\refclk_stable_count[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \refclk_stable_count[0]_i_6 
       (.I0(refclk_stable_count_reg[26]),
        .I1(refclk_stable_count_reg[19]),
        .I2(refclk_stable_count_reg[17]),
        .I3(refclk_stable_count_reg[10]),
        .I4(\refclk_stable_count[0]_i_11_n_0 ),
        .O(\refclk_stable_count[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \refclk_stable_count[0]_i_7 
       (.I0(refclk_stable_count_reg[0]),
        .O(\refclk_stable_count[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \refclk_stable_count[0]_i_8 
       (.I0(refclk_stable_count_reg[8]),
        .I1(refclk_stable_count_reg[7]),
        .I2(refclk_stable_count_reg[25]),
        .I3(refclk_stable_count_reg[2]),
        .O(\refclk_stable_count[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \refclk_stable_count[0]_i_9 
       (.I0(refclk_stable_count_reg[22]),
        .I1(refclk_stable_count_reg[4]),
        .I2(refclk_stable_count_reg[18]),
        .I3(refclk_stable_count_reg[27]),
        .O(\refclk_stable_count[0]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[0] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[0]_i_2_n_7 ),
        .Q(refclk_stable_count_reg[0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \refclk_stable_count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\refclk_stable_count_reg[0]_i_2_n_0 ,\refclk_stable_count_reg[0]_i_2_n_1 ,\refclk_stable_count_reg[0]_i_2_n_2 ,\refclk_stable_count_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\refclk_stable_count_reg[0]_i_2_n_4 ,\refclk_stable_count_reg[0]_i_2_n_5 ,\refclk_stable_count_reg[0]_i_2_n_6 ,\refclk_stable_count_reg[0]_i_2_n_7 }),
        .S({refclk_stable_count_reg[3:1],\refclk_stable_count[0]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[10] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[8]_i_1_n_5 ),
        .Q(refclk_stable_count_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[11] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[8]_i_1_n_4 ),
        .Q(refclk_stable_count_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[12] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[12]_i_1_n_7 ),
        .Q(refclk_stable_count_reg[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \refclk_stable_count_reg[12]_i_1 
       (.CI(\refclk_stable_count_reg[8]_i_1_n_0 ),
        .CO({\refclk_stable_count_reg[12]_i_1_n_0 ,\refclk_stable_count_reg[12]_i_1_n_1 ,\refclk_stable_count_reg[12]_i_1_n_2 ,\refclk_stable_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refclk_stable_count_reg[12]_i_1_n_4 ,\refclk_stable_count_reg[12]_i_1_n_5 ,\refclk_stable_count_reg[12]_i_1_n_6 ,\refclk_stable_count_reg[12]_i_1_n_7 }),
        .S(refclk_stable_count_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[13] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[12]_i_1_n_6 ),
        .Q(refclk_stable_count_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[14] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[12]_i_1_n_5 ),
        .Q(refclk_stable_count_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[15] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[12]_i_1_n_4 ),
        .Q(refclk_stable_count_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[16] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[16]_i_1_n_7 ),
        .Q(refclk_stable_count_reg[16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \refclk_stable_count_reg[16]_i_1 
       (.CI(\refclk_stable_count_reg[12]_i_1_n_0 ),
        .CO({\refclk_stable_count_reg[16]_i_1_n_0 ,\refclk_stable_count_reg[16]_i_1_n_1 ,\refclk_stable_count_reg[16]_i_1_n_2 ,\refclk_stable_count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refclk_stable_count_reg[16]_i_1_n_4 ,\refclk_stable_count_reg[16]_i_1_n_5 ,\refclk_stable_count_reg[16]_i_1_n_6 ,\refclk_stable_count_reg[16]_i_1_n_7 }),
        .S(refclk_stable_count_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[17] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[16]_i_1_n_6 ),
        .Q(refclk_stable_count_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[18] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[16]_i_1_n_5 ),
        .Q(refclk_stable_count_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[19] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[16]_i_1_n_4 ),
        .Q(refclk_stable_count_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[1] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[0]_i_2_n_6 ),
        .Q(refclk_stable_count_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[20] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[20]_i_1_n_7 ),
        .Q(refclk_stable_count_reg[20]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \refclk_stable_count_reg[20]_i_1 
       (.CI(\refclk_stable_count_reg[16]_i_1_n_0 ),
        .CO({\refclk_stable_count_reg[20]_i_1_n_0 ,\refclk_stable_count_reg[20]_i_1_n_1 ,\refclk_stable_count_reg[20]_i_1_n_2 ,\refclk_stable_count_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refclk_stable_count_reg[20]_i_1_n_4 ,\refclk_stable_count_reg[20]_i_1_n_5 ,\refclk_stable_count_reg[20]_i_1_n_6 ,\refclk_stable_count_reg[20]_i_1_n_7 }),
        .S(refclk_stable_count_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[21] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[20]_i_1_n_6 ),
        .Q(refclk_stable_count_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[22] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[20]_i_1_n_5 ),
        .Q(refclk_stable_count_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[23] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[20]_i_1_n_4 ),
        .Q(refclk_stable_count_reg[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[24] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[24]_i_1_n_7 ),
        .Q(refclk_stable_count_reg[24]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \refclk_stable_count_reg[24]_i_1 
       (.CI(\refclk_stable_count_reg[20]_i_1_n_0 ),
        .CO({\refclk_stable_count_reg[24]_i_1_n_0 ,\refclk_stable_count_reg[24]_i_1_n_1 ,\refclk_stable_count_reg[24]_i_1_n_2 ,\refclk_stable_count_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refclk_stable_count_reg[24]_i_1_n_4 ,\refclk_stable_count_reg[24]_i_1_n_5 ,\refclk_stable_count_reg[24]_i_1_n_6 ,\refclk_stable_count_reg[24]_i_1_n_7 }),
        .S(refclk_stable_count_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[25] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[24]_i_1_n_6 ),
        .Q(refclk_stable_count_reg[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[26] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[24]_i_1_n_5 ),
        .Q(refclk_stable_count_reg[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[27] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[24]_i_1_n_4 ),
        .Q(refclk_stable_count_reg[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[28] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[28]_i_1_n_7 ),
        .Q(refclk_stable_count_reg[28]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \refclk_stable_count_reg[28]_i_1 
       (.CI(\refclk_stable_count_reg[24]_i_1_n_0 ),
        .CO({\NLW_refclk_stable_count_reg[28]_i_1_CO_UNCONNECTED [3],\refclk_stable_count_reg[28]_i_1_n_1 ,\refclk_stable_count_reg[28]_i_1_n_2 ,\refclk_stable_count_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refclk_stable_count_reg[28]_i_1_n_4 ,\refclk_stable_count_reg[28]_i_1_n_5 ,\refclk_stable_count_reg[28]_i_1_n_6 ,\refclk_stable_count_reg[28]_i_1_n_7 }),
        .S(refclk_stable_count_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[29] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[28]_i_1_n_6 ),
        .Q(refclk_stable_count_reg[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[2] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[0]_i_2_n_5 ),
        .Q(refclk_stable_count_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[30] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[28]_i_1_n_5 ),
        .Q(refclk_stable_count_reg[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[31] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[28]_i_1_n_4 ),
        .Q(refclk_stable_count_reg[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[3] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[0]_i_2_n_4 ),
        .Q(refclk_stable_count_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[4] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[4]_i_1_n_7 ),
        .Q(refclk_stable_count_reg[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \refclk_stable_count_reg[4]_i_1 
       (.CI(\refclk_stable_count_reg[0]_i_2_n_0 ),
        .CO({\refclk_stable_count_reg[4]_i_1_n_0 ,\refclk_stable_count_reg[4]_i_1_n_1 ,\refclk_stable_count_reg[4]_i_1_n_2 ,\refclk_stable_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refclk_stable_count_reg[4]_i_1_n_4 ,\refclk_stable_count_reg[4]_i_1_n_5 ,\refclk_stable_count_reg[4]_i_1_n_6 ,\refclk_stable_count_reg[4]_i_1_n_7 }),
        .S(refclk_stable_count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[5] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[4]_i_1_n_6 ),
        .Q(refclk_stable_count_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[6] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[4]_i_1_n_5 ),
        .Q(refclk_stable_count_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[7] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[4]_i_1_n_4 ),
        .Q(refclk_stable_count_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[8] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[8]_i_1_n_7 ),
        .Q(refclk_stable_count_reg[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \refclk_stable_count_reg[8]_i_1 
       (.CI(\refclk_stable_count_reg[4]_i_1_n_0 ),
        .CO({\refclk_stable_count_reg[8]_i_1_n_0 ,\refclk_stable_count_reg[8]_i_1_n_1 ,\refclk_stable_count_reg[8]_i_1_n_2 ,\refclk_stable_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refclk_stable_count_reg[8]_i_1_n_4 ,\refclk_stable_count_reg[8]_i_1_n_5 ,\refclk_stable_count_reg[8]_i_1_n_6 ,\refclk_stable_count_reg[8]_i_1_n_7 }),
        .S(refclk_stable_count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[9] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[8]_i_1_n_6 ),
        .Q(refclk_stable_count_reg[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0004)) 
    refclk_stable_i_1
       (.I0(\refclk_stable_count[0]_i_6_n_0 ),
        .I1(\refclk_stable_count[0]_i_5_n_0 ),
        .I2(\refclk_stable_count[0]_i_4_n_0 ),
        .I3(\refclk_stable_count[0]_i_3_n_0 ),
        .O(refclk_stable_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    refclk_stable_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(refclk_stable_i_1_n_0),
        .Q(refclk_stable_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00AC000C000CF0FC)) 
    reset_time_out_i_2
       (.I0(txresetdone_s3),
        .I1(init_wait_done_reg_n_0),
        .I2(tx_state[0]),
        .I3(tx_state[3]),
        .I4(tx_state[1]),
        .I5(tx_state[2]),
        .O(reset_time_out_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    reset_time_out_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(sync_PLL0LOCK_n_1),
        .Q(reset_time_out),
        .R(pma_reset));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT5 #(
    .INIT(32'hFFEF0100)) 
    run_phase_alignment_int_i_1
       (.I0(tx_state[1]),
        .I1(tx_state[2]),
        .I2(tx_state[0]),
        .I3(tx_state[3]),
        .I4(run_phase_alignment_int_reg_n_0),
        .O(run_phase_alignment_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(run_phase_alignment_int_i_1_n_0),
        .Q(run_phase_alignment_int_reg_n_0),
        .R(pma_reset));
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_s3_reg
       (.C(userclk),
        .CE(1'b1),
        .D(data_out),
        .Q(run_phase_alignment_int_s3),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_7 sync_PLL0LOCK
       (.E(sync_PLL0LOCK_n_0),
        .\FSM_sequential_tx_state[3]_i_7_0 (refclk_stable_reg_n_0),
        .\FSM_sequential_tx_state[3]_i_7_1 (pll_reset_asserted_reg_n_0),
        .\FSM_sequential_tx_state_reg[0] (sel),
        .\FSM_sequential_tx_state_reg[0]_0 (\FSM_sequential_tx_state[3]_i_3_n_0 ),
        .\FSM_sequential_tx_state_reg[0]_1 (\FSM_sequential_tx_state[3]_i_4_n_0 ),
        .\FSM_sequential_tx_state_reg[0]_2 (\FSM_sequential_tx_state[3]_i_5_n_0 ),
        .\FSM_sequential_tx_state_reg[0]_3 (time_out_2ms_reg_n_0),
        .\FSM_sequential_tx_state_reg[0]_4 (\FSM_sequential_tx_state[3]_i_10_n_0 ),
        .\FSM_sequential_tx_state_reg[0]_5 (\FSM_sequential_tx_state[0]_i_2_n_0 ),
        .Q(tx_state),
        .gt0_pll0lock_in(gt0_pll0lock_in),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_lock_reclocked(mmcm_lock_reclocked),
        .reset_time_out(reset_time_out),
        .reset_time_out_reg(sync_PLL0LOCK_n_1),
        .reset_time_out_reg_0(init_wait_done_reg_n_0),
        .reset_time_out_reg_1(reset_time_out_i_2_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_8 sync_TXRESETDONE
       (.data_out(txresetdone_s2),
        .data_sync_reg1_0(data_sync_reg1),
        .independent_clock_bufg(independent_clock_bufg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_9 sync_mmcm_lock_reclocked
       (.SR(sync_mmcm_lock_reclocked_n_0),
        .data_out(mmcm_lock_i),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_locked(mmcm_locked));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_10 sync_run_phase_alignment_int
       (.data_in(run_phase_alignment_int_reg_n_0),
        .data_out(data_out),
        .userclk(userclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_11 sync_time_out_wait_bypass
       (.data_in(time_out_wait_bypass_reg_n_0),
        .data_out(time_out_wait_bypass_s2),
        .independent_clock_bufg(independent_clock_bufg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_12 sync_tx_fsm_reset_done_int
       (.data_in(data_in),
        .data_out(tx_fsm_reset_done_int_s2),
        .userclk(userclk));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    time_out_2ms_i_1
       (.I0(time_out_2ms_reg_n_0),
        .I1(time_out_2ms),
        .I2(reset_time_out),
        .O(time_out_2ms_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    time_out_2ms_i_2__0
       (.I0(time_out_counter_reg[14]),
        .I1(time_out_counter_reg[7]),
        .I2(time_out_2ms_i_3_n_0),
        .I3(time_out_2ms_i_4__0_n_0),
        .I4(\time_out_counter[0]_i_3__0_n_0 ),
        .I5(time_out_2ms_i_5_n_0),
        .O(time_out_2ms));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'h01)) 
    time_out_2ms_i_3
       (.I0(time_out_counter_reg[1]),
        .I1(time_out_counter_reg[3]),
        .I2(time_out_counter_reg[6]),
        .O(time_out_2ms_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    time_out_2ms_i_4__0
       (.I0(time_out_counter_reg[9]),
        .I1(time_out_counter_reg[0]),
        .I2(time_out_counter_reg[8]),
        .I3(time_out_counter_reg[13]),
        .I4(time_out_counter_reg[4]),
        .I5(time_out_counter_reg[2]),
        .O(time_out_2ms_i_4__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    time_out_2ms_i_5
       (.I0(time_out_counter_reg[16]),
        .I1(time_out_counter_reg[11]),
        .I2(time_out_counter_reg[15]),
        .O(time_out_2ms_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_2ms_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_out_2ms_i_1_n_0),
        .Q(time_out_2ms_reg_n_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h00AE)) 
    time_out_500us_i_1
       (.I0(time_out_500us_reg_n_0),
        .I1(time_out_500us_i_2_n_0),
        .I2(time_out_500us_i_3_n_0),
        .I3(reset_time_out),
        .O(time_out_500us_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    time_out_500us_i_2
       (.I0(time_out_2ms_i_4__0_n_0),
        .I1(time_out_counter_reg[1]),
        .I2(time_out_counter_reg[3]),
        .I3(time_out_counter_reg[6]),
        .I4(time_out_counter_reg[7]),
        .I5(time_out_counter_reg[14]),
        .O(time_out_500us_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT5 #(
    .INIT(32'hFFEFFFFF)) 
    time_out_500us_i_3
       (.I0(time_tlock_max_i_4_n_0),
        .I1(time_out_counter_reg[11]),
        .I2(time_out_counter_reg[16]),
        .I3(time_out_counter_reg[12]),
        .I4(time_out_counter_reg[15]),
        .O(time_out_500us_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_500us_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_out_500us_i_1_n_0),
        .Q(time_out_500us_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFBFFFF)) 
    \time_out_counter[0]_i_1__0 
       (.I0(time_out_counter_reg[15]),
        .I1(time_out_counter_reg[11]),
        .I2(time_out_counter_reg[16]),
        .I3(\time_out_counter[0]_i_3__0_n_0 ),
        .I4(time_out_500us_i_2_n_0),
        .O(time_out_counter));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT5 #(
    .INIT(32'hFFFFF7FF)) 
    \time_out_counter[0]_i_3__0 
       (.I0(time_out_counter_reg[17]),
        .I1(time_out_counter_reg[18]),
        .I2(time_out_counter_reg[10]),
        .I3(time_out_counter_reg[12]),
        .I4(time_out_counter_reg[5]),
        .O(\time_out_counter[0]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \time_out_counter[0]_i_4 
       (.I0(time_out_counter_reg[0]),
        .O(\time_out_counter[0]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[0] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_7 ),
        .Q(time_out_counter_reg[0]),
        .R(reset_time_out));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\time_out_counter_reg[0]_i_2_n_0 ,\time_out_counter_reg[0]_i_2_n_1 ,\time_out_counter_reg[0]_i_2_n_2 ,\time_out_counter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\time_out_counter_reg[0]_i_2_n_4 ,\time_out_counter_reg[0]_i_2_n_5 ,\time_out_counter_reg[0]_i_2_n_6 ,\time_out_counter_reg[0]_i_2_n_7 }),
        .S({time_out_counter_reg[3:1],\time_out_counter[0]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[10] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_5 ),
        .Q(time_out_counter_reg[10]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[11] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_4 ),
        .Q(time_out_counter_reg[11]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[12] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_7 ),
        .Q(time_out_counter_reg[12]),
        .R(reset_time_out));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[12]_i_1 
       (.CI(\time_out_counter_reg[8]_i_1_n_0 ),
        .CO({\time_out_counter_reg[12]_i_1_n_0 ,\time_out_counter_reg[12]_i_1_n_1 ,\time_out_counter_reg[12]_i_1_n_2 ,\time_out_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[12]_i_1_n_4 ,\time_out_counter_reg[12]_i_1_n_5 ,\time_out_counter_reg[12]_i_1_n_6 ,\time_out_counter_reg[12]_i_1_n_7 }),
        .S(time_out_counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[13] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_6 ),
        .Q(time_out_counter_reg[13]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[14] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_5 ),
        .Q(time_out_counter_reg[14]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[15] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_4 ),
        .Q(time_out_counter_reg[15]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[16] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1_n_7 ),
        .Q(time_out_counter_reg[16]),
        .R(reset_time_out));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[16]_i_1 
       (.CI(\time_out_counter_reg[12]_i_1_n_0 ),
        .CO({\NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED [3:2],\time_out_counter_reg[16]_i_1_n_2 ,\time_out_counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED [3],\time_out_counter_reg[16]_i_1_n_5 ,\time_out_counter_reg[16]_i_1_n_6 ,\time_out_counter_reg[16]_i_1_n_7 }),
        .S({1'b0,time_out_counter_reg[18:16]}));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[17] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1_n_6 ),
        .Q(time_out_counter_reg[17]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[18] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1_n_5 ),
        .Q(time_out_counter_reg[18]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[1] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_6 ),
        .Q(time_out_counter_reg[1]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[2] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_5 ),
        .Q(time_out_counter_reg[2]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[3] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_4 ),
        .Q(time_out_counter_reg[3]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[4] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_7 ),
        .Q(time_out_counter_reg[4]),
        .R(reset_time_out));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[4]_i_1 
       (.CI(\time_out_counter_reg[0]_i_2_n_0 ),
        .CO({\time_out_counter_reg[4]_i_1_n_0 ,\time_out_counter_reg[4]_i_1_n_1 ,\time_out_counter_reg[4]_i_1_n_2 ,\time_out_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[4]_i_1_n_4 ,\time_out_counter_reg[4]_i_1_n_5 ,\time_out_counter_reg[4]_i_1_n_6 ,\time_out_counter_reg[4]_i_1_n_7 }),
        .S(time_out_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[5] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_6 ),
        .Q(time_out_counter_reg[5]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[6] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_5 ),
        .Q(time_out_counter_reg[6]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[7] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_4 ),
        .Q(time_out_counter_reg[7]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[8] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_7 ),
        .Q(time_out_counter_reg[8]),
        .R(reset_time_out));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[8]_i_1 
       (.CI(\time_out_counter_reg[4]_i_1_n_0 ),
        .CO({\time_out_counter_reg[8]_i_1_n_0 ,\time_out_counter_reg[8]_i_1_n_1 ,\time_out_counter_reg[8]_i_1_n_2 ,\time_out_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[8]_i_1_n_4 ,\time_out_counter_reg[8]_i_1_n_5 ,\time_out_counter_reg[8]_i_1_n_6 ,\time_out_counter_reg[8]_i_1_n_7 }),
        .S(time_out_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[9] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_6 ),
        .Q(time_out_counter_reg[9]),
        .R(reset_time_out));
  LUT4 #(
    .INIT(16'hAB00)) 
    time_out_wait_bypass_i_1
       (.I0(time_out_wait_bypass_reg_n_0),
        .I1(tx_fsm_reset_done_int_s3),
        .I2(time_out_wait_bypass_i_2_n_0),
        .I3(run_phase_alignment_int_s3),
        .O(time_out_wait_bypass_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFEFFFFFFFFF)) 
    time_out_wait_bypass_i_2
       (.I0(time_out_wait_bypass_i_3_n_0),
        .I1(time_out_wait_bypass_i_4_n_0),
        .I2(wait_bypass_count_reg[5]),
        .I3(wait_bypass_count_reg[13]),
        .I4(wait_bypass_count_reg[11]),
        .I5(time_out_wait_bypass_i_5_n_0),
        .O(time_out_wait_bypass_i_2_n_0));
  LUT4 #(
    .INIT(16'hFF7F)) 
    time_out_wait_bypass_i_3
       (.I0(wait_bypass_count_reg[16]),
        .I1(wait_bypass_count_reg[9]),
        .I2(wait_bypass_count_reg[12]),
        .I3(wait_bypass_count_reg[10]),
        .O(time_out_wait_bypass_i_3_n_0));
  LUT4 #(
    .INIT(16'hDFFF)) 
    time_out_wait_bypass_i_4
       (.I0(wait_bypass_count_reg[4]),
        .I1(wait_bypass_count_reg[15]),
        .I2(wait_bypass_count_reg[6]),
        .I3(wait_bypass_count_reg[0]),
        .O(time_out_wait_bypass_i_4_n_0));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    time_out_wait_bypass_i_5
       (.I0(wait_bypass_count_reg[8]),
        .I1(wait_bypass_count_reg[1]),
        .I2(wait_bypass_count_reg[7]),
        .I3(wait_bypass_count_reg[14]),
        .I4(wait_bypass_count_reg[2]),
        .I5(wait_bypass_count_reg[3]),
        .O(time_out_wait_bypass_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_wait_bypass_reg
       (.C(userclk),
        .CE(1'b1),
        .D(time_out_wait_bypass_i_1_n_0),
        .Q(time_out_wait_bypass_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_wait_bypass_s3_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_out_wait_bypass_s2),
        .Q(time_out_wait_bypass_s3),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT5 #(
    .INIT(32'h0000AAAE)) 
    time_tlock_max_i_1
       (.I0(time_tlock_max_reg_n_0),
        .I1(time_tlock_max_i_2_n_0),
        .I2(time_tlock_max_i_3_n_0),
        .I3(time_tlock_max_i_4_n_0),
        .I4(reset_time_out),
        .O(time_tlock_max_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    time_tlock_max_i_2
       (.I0(time_out_counter_reg[6]),
        .I1(time_out_counter_reg[3]),
        .I2(time_out_counter_reg[1]),
        .I3(time_out_2ms_i_4__0_n_0),
        .O(time_tlock_max_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFBFFFFFFFF)) 
    time_tlock_max_i_3
       (.I0(time_out_counter_reg[15]),
        .I1(time_out_counter_reg[11]),
        .I2(time_out_counter_reg[16]),
        .I3(time_out_counter_reg[7]),
        .I4(time_out_counter_reg[12]),
        .I5(time_out_counter_reg[14]),
        .O(time_tlock_max_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    time_tlock_max_i_4
       (.I0(time_out_counter_reg[5]),
        .I1(time_out_counter_reg[17]),
        .I2(time_out_counter_reg[10]),
        .I3(time_out_counter_reg[18]),
        .O(time_tlock_max_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_tlock_max_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_tlock_max_i_1_n_0),
        .Q(time_tlock_max_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT5 #(
    .INIT(32'hFFFF1000)) 
    tx_fsm_reset_done_int_i_1
       (.I0(tx_state[1]),
        .I1(tx_state[2]),
        .I2(tx_state[0]),
        .I3(tx_state[3]),
        .I4(data_in),
        .O(tx_fsm_reset_done_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tx_fsm_reset_done_int_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(tx_fsm_reset_done_int_i_1_n_0),
        .Q(data_in),
        .R(pma_reset));
  FDRE #(
    .INIT(1'b0)) 
    tx_fsm_reset_done_int_s3_reg
       (.C(userclk),
        .CE(1'b1),
        .D(tx_fsm_reset_done_int_s2),
        .Q(tx_fsm_reset_done_int_s3),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    txresetdone_s3_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(txresetdone_s2),
        .Q(txresetdone_s3),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_1 
       (.I0(run_phase_alignment_int_s3),
        .O(clear));
  LUT2 #(
    .INIT(4'h2)) 
    \wait_bypass_count[0]_i_2 
       (.I0(time_out_wait_bypass_i_2_n_0),
        .I1(tx_fsm_reset_done_int_s3),
        .O(\wait_bypass_count[0]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_4__0 
       (.I0(wait_bypass_count_reg[0]),
        .O(\wait_bypass_count[0]_i_4__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[0] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3_n_7 ),
        .Q(wait_bypass_count_reg[0]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_bypass_count_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\wait_bypass_count_reg[0]_i_3_n_0 ,\wait_bypass_count_reg[0]_i_3_n_1 ,\wait_bypass_count_reg[0]_i_3_n_2 ,\wait_bypass_count_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\wait_bypass_count_reg[0]_i_3_n_4 ,\wait_bypass_count_reg[0]_i_3_n_5 ,\wait_bypass_count_reg[0]_i_3_n_6 ,\wait_bypass_count_reg[0]_i_3_n_7 }),
        .S({wait_bypass_count_reg[3:1],\wait_bypass_count[0]_i_4__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[10] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1_n_5 ),
        .Q(wait_bypass_count_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[11] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1_n_4 ),
        .Q(wait_bypass_count_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[12] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1_n_7 ),
        .Q(wait_bypass_count_reg[12]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_bypass_count_reg[12]_i_1 
       (.CI(\wait_bypass_count_reg[8]_i_1_n_0 ),
        .CO({\wait_bypass_count_reg[12]_i_1_n_0 ,\wait_bypass_count_reg[12]_i_1_n_1 ,\wait_bypass_count_reg[12]_i_1_n_2 ,\wait_bypass_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[12]_i_1_n_4 ,\wait_bypass_count_reg[12]_i_1_n_5 ,\wait_bypass_count_reg[12]_i_1_n_6 ,\wait_bypass_count_reg[12]_i_1_n_7 }),
        .S(wait_bypass_count_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[13] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1_n_6 ),
        .Q(wait_bypass_count_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[14] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1_n_5 ),
        .Q(wait_bypass_count_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[15] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1_n_4 ),
        .Q(wait_bypass_count_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[16] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[16]_i_1_n_7 ),
        .Q(wait_bypass_count_reg[16]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_bypass_count_reg[16]_i_1 
       (.CI(\wait_bypass_count_reg[12]_i_1_n_0 ),
        .CO(\NLW_wait_bypass_count_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_wait_bypass_count_reg[16]_i_1_O_UNCONNECTED [3:1],\wait_bypass_count_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,wait_bypass_count_reg[16]}));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[1] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3_n_6 ),
        .Q(wait_bypass_count_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[2] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3_n_5 ),
        .Q(wait_bypass_count_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[3] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3_n_4 ),
        .Q(wait_bypass_count_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[4] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1_n_7 ),
        .Q(wait_bypass_count_reg[4]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_bypass_count_reg[4]_i_1 
       (.CI(\wait_bypass_count_reg[0]_i_3_n_0 ),
        .CO({\wait_bypass_count_reg[4]_i_1_n_0 ,\wait_bypass_count_reg[4]_i_1_n_1 ,\wait_bypass_count_reg[4]_i_1_n_2 ,\wait_bypass_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[4]_i_1_n_4 ,\wait_bypass_count_reg[4]_i_1_n_5 ,\wait_bypass_count_reg[4]_i_1_n_6 ,\wait_bypass_count_reg[4]_i_1_n_7 }),
        .S(wait_bypass_count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[5] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1_n_6 ),
        .Q(wait_bypass_count_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[6] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1_n_5 ),
        .Q(wait_bypass_count_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[7] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1_n_4 ),
        .Q(wait_bypass_count_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[8] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1_n_7 ),
        .Q(wait_bypass_count_reg[8]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_bypass_count_reg[8]_i_1 
       (.CI(\wait_bypass_count_reg[4]_i_1_n_0 ),
        .CO({\wait_bypass_count_reg[8]_i_1_n_0 ,\wait_bypass_count_reg[8]_i_1_n_1 ,\wait_bypass_count_reg[8]_i_1_n_2 ,\wait_bypass_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[8]_i_1_n_4 ,\wait_bypass_count_reg[8]_i_1_n_5 ,\wait_bypass_count_reg[8]_i_1_n_6 ,\wait_bypass_count_reg[8]_i_1_n_7 }),
        .S(wait_bypass_count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[9] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1_n_6 ),
        .Q(wait_bypass_count_reg[9]),
        .R(clear));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_1 
       (.I0(wait_time_cnt_reg[0]),
        .O(wait_time_cnt0[0]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \wait_time_cnt[1]_i_1 
       (.I0(wait_time_cnt_reg[1]),
        .I1(wait_time_cnt_reg[0]),
        .O(\wait_time_cnt[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \wait_time_cnt[2]_i_1 
       (.I0(wait_time_cnt_reg[1]),
        .I1(wait_time_cnt_reg[0]),
        .I2(wait_time_cnt_reg[2]),
        .O(wait_time_cnt0[2]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \wait_time_cnt[3]_i_1 
       (.I0(wait_time_cnt_reg[2]),
        .I1(wait_time_cnt_reg[0]),
        .I2(wait_time_cnt_reg[1]),
        .I3(wait_time_cnt_reg[3]),
        .O(wait_time_cnt0[3]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \wait_time_cnt[4]_i_1 
       (.I0(wait_time_cnt_reg[4]),
        .I1(wait_time_cnt_reg[2]),
        .I2(wait_time_cnt_reg[0]),
        .I3(wait_time_cnt_reg[1]),
        .I4(wait_time_cnt_reg[3]),
        .O(\wait_time_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \wait_time_cnt[5]_i_1 
       (.I0(wait_time_cnt_reg[5]),
        .I1(wait_time_cnt_reg[3]),
        .I2(wait_time_cnt_reg[1]),
        .I3(wait_time_cnt_reg[0]),
        .I4(wait_time_cnt_reg[2]),
        .I5(wait_time_cnt_reg[4]),
        .O(\wait_time_cnt[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0070)) 
    \wait_time_cnt[6]_i_1__0 
       (.I0(tx_state[1]),
        .I1(tx_state[2]),
        .I2(tx_state[0]),
        .I3(tx_state[3]),
        .O(wait_time_cnt0_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[6]_i_2 
       (.I0(wait_time_cnt_reg[6]),
        .I1(wait_time_cnt_reg[4]),
        .I2(\wait_time_cnt[6]_i_4_n_0 ),
        .I3(wait_time_cnt_reg[5]),
        .O(sel));
  LUT4 #(
    .INIT(16'hAAA9)) 
    \wait_time_cnt[6]_i_3 
       (.I0(wait_time_cnt_reg[6]),
        .I1(wait_time_cnt_reg[4]),
        .I2(\wait_time_cnt[6]_i_4_n_0 ),
        .I3(wait_time_cnt_reg[5]),
        .O(\wait_time_cnt[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[6]_i_4 
       (.I0(wait_time_cnt_reg[3]),
        .I1(wait_time_cnt_reg[1]),
        .I2(wait_time_cnt_reg[0]),
        .I3(wait_time_cnt_reg[2]),
        .O(\wait_time_cnt[6]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[0] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(wait_time_cnt0[0]),
        .Q(wait_time_cnt_reg[0]),
        .R(wait_time_cnt0_0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[1] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(\wait_time_cnt[1]_i_1_n_0 ),
        .Q(wait_time_cnt_reg[1]),
        .R(wait_time_cnt0_0));
  FDSE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[2] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(wait_time_cnt0[2]),
        .Q(wait_time_cnt_reg[2]),
        .S(wait_time_cnt0_0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[3] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(wait_time_cnt0[3]),
        .Q(wait_time_cnt_reg[3]),
        .R(wait_time_cnt0_0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[4] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(\wait_time_cnt[4]_i_1_n_0 ),
        .Q(wait_time_cnt_reg[4]),
        .R(wait_time_cnt0_0));
  FDSE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[5] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(\wait_time_cnt[5]_i_1_n_0 ),
        .Q(wait_time_cnt_reg[5]),
        .S(wait_time_cnt0_0));
  FDSE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[6] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(\wait_time_cnt[6]_i_3_n_0 ),
        .Q(wait_time_cnt_reg[6]),
        .S(wait_time_cnt0_0));
endmodule

(* EXAMPLE_SIMULATION = "0" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_block
   (gtrefclk,
    gtrefclk_bufg,
    txp,
    txn,
    rxp,
    rxn,
    txoutclk,
    rxoutclk,
    resetdone,
    cplllock,
    mmcm_reset,
    mmcm_locked,
    userclk,
    userclk2,
    rxuserclk,
    rxuserclk2,
    independent_clock_bufg,
    pma_reset,
    gmii_txd,
    gmii_tx_en,
    gmii_tx_er,
    gmii_rxd,
    gmii_rx_dv,
    gmii_rx_er,
    gmii_isolate,
    mdc,
    mdio_i,
    mdio_o,
    mdio_t,
    phyaddr,
    configuration_vector,
    configuration_valid,
    an_interrupt,
    an_adv_config_vector,
    an_adv_config_val,
    an_restart_config,
    status_vector,
    reset,
    signal_detect,
    gt0_pll0outclk_in,
    gt0_pll0outrefclk_in,
    gt0_pll1outclk_in,
    gt0_pll1outrefclk_in,
    gt0_pll0refclklost_in,
    gt0_pll0lock_in,
    gt0_pll0reset_out);
  input gtrefclk;
  input gtrefclk_bufg;
  output txp;
  output txn;
  input rxp;
  input rxn;
  output txoutclk;
  output rxoutclk;
  output resetdone;
  output cplllock;
  output mmcm_reset;
  input mmcm_locked;
  input userclk;
  input userclk2;
  input rxuserclk;
  input rxuserclk2;
  input independent_clock_bufg;
  input pma_reset;
  input [7:0]gmii_txd;
  input gmii_tx_en;
  input gmii_tx_er;
  output [7:0]gmii_rxd;
  output gmii_rx_dv;
  output gmii_rx_er;
  output gmii_isolate;
  input mdc;
  input mdio_i;
  output mdio_o;
  output mdio_t;
  input [4:0]phyaddr;
  input [4:0]configuration_vector;
  input configuration_valid;
  output an_interrupt;
  input [15:0]an_adv_config_vector;
  input an_adv_config_val;
  input an_restart_config;
  output [15:0]status_vector;
  input reset;
  input signal_detect;
  input gt0_pll0outclk_in;
  input gt0_pll0outrefclk_in;
  input gt0_pll1outclk_in;
  input gt0_pll1outrefclk_in;
  input gt0_pll0refclklost_in;
  input gt0_pll0lock_in;
  output gt0_pll0reset_out;

  wire \<const0> ;
  wire an_adv_config_val;
  wire [15:0]an_adv_config_vector;
  wire an_interrupt;
  wire an_restart_config;
  wire configuration_valid;
  wire [4:0]configuration_vector;
  wire enablealign;
  wire gmii_isolate;
  wire gmii_rx_dv;
  wire gmii_rx_er;
  wire [7:0]gmii_rxd;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire [7:0]gmii_txd;
  wire gt0_pll0lock_in;
  wire gt0_pll0outclk_in;
  wire gt0_pll0outrefclk_in;
  wire gt0_pll0refclklost_in;
  wire gt0_pll0reset_out;
  wire gt0_pll1outclk_in;
  wire gt0_pll1outrefclk_in;
  wire gtrefclk_bufg;
  wire independent_clock_bufg;
  wire mdc;
  wire mdio_i;
  wire mdio_o;
  wire mdio_t;
  wire mgt_rx_reset;
  wire mgt_tx_reset;
  wire mmcm_locked;
  wire mmcm_reset;
  wire [4:0]phyaddr;
  wire pma_reset;
  wire powerdown;
  wire reset;
  wire resetdone;
  wire rx_reset_done_i;
  wire rxbuferr;
  wire rxchariscomma;
  wire rxcharisk;
  wire [1:0]rxclkcorcnt;
  wire [7:0]rxdata;
  wire rxdisperr;
  wire rxn;
  wire rxnotintable;
  wire rxoutclk;
  wire rxp;
  wire signal_detect;
  wire [15:0]\^status_vector ;
  wire transceiver_inst_n_5;
  wire transceiver_inst_n_6;
  wire txbuferr;
  wire txchardispmode;
  wire txchardispval;
  wire txcharisk;
  wire [7:0]txdata;
  wire txn;
  wire txoutclk;
  wire txp;
  wire userclk;
  wire userclk2;
  wire NLW_gig_ethernet_pcs_pma_0_core_an_enable_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_0_core_drp_den_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_0_core_drp_dwe_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_0_core_drp_req_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_0_core_en_cdet_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_0_core_ewrap_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_0_core_loc_ref_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_0_core_s_axi_arready_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_0_core_s_axi_awready_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_0_core_s_axi_bvalid_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_0_core_s_axi_rvalid_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_0_core_s_axi_wready_UNCONNECTED;
  wire [9:0]NLW_gig_ethernet_pcs_pma_0_core_drp_daddr_UNCONNECTED;
  wire [15:0]NLW_gig_ethernet_pcs_pma_0_core_drp_di_UNCONNECTED;
  wire [63:0]NLW_gig_ethernet_pcs_pma_0_core_rxphy_correction_timer_UNCONNECTED;
  wire [31:0]NLW_gig_ethernet_pcs_pma_0_core_rxphy_ns_field_UNCONNECTED;
  wire [47:0]NLW_gig_ethernet_pcs_pma_0_core_rxphy_s_field_UNCONNECTED;
  wire [1:0]NLW_gig_ethernet_pcs_pma_0_core_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_gig_ethernet_pcs_pma_0_core_s_axi_rdata_UNCONNECTED;
  wire [1:0]NLW_gig_ethernet_pcs_pma_0_core_s_axi_rresp_UNCONNECTED;
  wire [1:0]NLW_gig_ethernet_pcs_pma_0_core_speed_selection_UNCONNECTED;
  wire [11:7]NLW_gig_ethernet_pcs_pma_0_core_status_vector_UNCONNECTED;
  wire [9:0]NLW_gig_ethernet_pcs_pma_0_core_tx_code_group_UNCONNECTED;

  assign cplllock = gt0_pll0lock_in;
  assign status_vector[15:12] = \^status_vector [15:12];
  assign status_vector[11] = \<const0> ;
  assign status_vector[10] = \<const0> ;
  assign status_vector[9:8] = \^status_vector [9:8];
  assign status_vector[7] = \<const0> ;
  assign status_vector[6:0] = \^status_vector [6:0];
  GND GND
       (.G(\<const0> ));
  (* B_SHIFTER_ADDR = "10'b0101010000" *) 
  (* C_1588 = "0" *) 
  (* C_2_5G = "FALSE" *) 
  (* C_COMPONENT_NAME = "gig_ethernet_pcs_pma_0" *) 
  (* C_DYNAMIC_SWITCHING = "FALSE" *) 
  (* C_ELABORATION_TRANSIENT_DIR = "BlankString" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AN = "TRUE" *) 
  (* C_HAS_AXIL = "FALSE" *) 
  (* C_HAS_MDIO = "TRUE" *) 
  (* C_HAS_TEMAC = "TRUE" *) 
  (* C_IS_SGMII = "FALSE" *) 
  (* C_RX_GMII_CLK = "TXOUTCLK" *) 
  (* C_SGMII_FABRIC_BUFFER = "TRUE" *) 
  (* C_SGMII_PHY_MODE = "FALSE" *) 
  (* C_USE_LVDS = "FALSE" *) 
  (* C_USE_TBI = "FALSE" *) 
  (* C_USE_TRANSCEIVER = "TRUE" *) 
  (* GT_RX_BYTE_WIDTH = "1" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_v16_2_12 gig_ethernet_pcs_pma_0_core
       (.an_adv_config_val(an_adv_config_val),
        .an_adv_config_vector({an_adv_config_vector[15],1'b0,an_adv_config_vector[13:12],1'b0,1'b0,1'b0,an_adv_config_vector[8:7],1'b0,an_adv_config_vector[5],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .an_enable(NLW_gig_ethernet_pcs_pma_0_core_an_enable_UNCONNECTED),
        .an_interrupt(an_interrupt),
        .an_restart_config(an_restart_config),
        .basex_or_sgmii(1'b0),
        .configuration_valid(configuration_valid),
        .configuration_vector(configuration_vector),
        .correction_timer({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dcm_locked(mmcm_locked),
        .drp_daddr(NLW_gig_ethernet_pcs_pma_0_core_drp_daddr_UNCONNECTED[9:0]),
        .drp_dclk(1'b0),
        .drp_den(NLW_gig_ethernet_pcs_pma_0_core_drp_den_UNCONNECTED),
        .drp_di(NLW_gig_ethernet_pcs_pma_0_core_drp_di_UNCONNECTED[15:0]),
        .drp_do({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drp_drdy(1'b0),
        .drp_dwe(NLW_gig_ethernet_pcs_pma_0_core_drp_dwe_UNCONNECTED),
        .drp_gnt(1'b0),
        .drp_req(NLW_gig_ethernet_pcs_pma_0_core_drp_req_UNCONNECTED),
        .en_cdet(NLW_gig_ethernet_pcs_pma_0_core_en_cdet_UNCONNECTED),
        .enablealign(enablealign),
        .ewrap(NLW_gig_ethernet_pcs_pma_0_core_ewrap_UNCONNECTED),
        .gmii_isolate(gmii_isolate),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_er(gmii_rx_er),
        .gmii_rxd(gmii_rxd),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_er(gmii_tx_er),
        .gmii_txd(gmii_txd),
        .gtx_clk(1'b0),
        .link_timer_basex({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .link_timer_sgmii({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .link_timer_value({1'b0,1'b1,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b0,1'b1}),
        .loc_ref(NLW_gig_ethernet_pcs_pma_0_core_loc_ref_UNCONNECTED),
        .mdc(mdc),
        .mdio_in(mdio_i),
        .mdio_out(mdio_o),
        .mdio_tri(mdio_t),
        .mgt_rx_reset(mgt_rx_reset),
        .mgt_tx_reset(mgt_tx_reset),
        .phyad(phyaddr),
        .pma_rx_clk0(1'b0),
        .pma_rx_clk1(1'b0),
        .powerdown(powerdown),
        .reset(reset),
        .reset_done(resetdone),
        .rx_code_group0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_code_group1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_gt_nominal_latency({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0}),
        .rxbufstatus({rxbuferr,1'b0}),
        .rxchariscomma(rxchariscomma),
        .rxcharisk(rxcharisk),
        .rxclkcorcnt({1'b0,rxclkcorcnt}),
        .rxdata(rxdata),
        .rxdisperr(rxdisperr),
        .rxnotintable(rxnotintable),
        .rxphy_correction_timer(NLW_gig_ethernet_pcs_pma_0_core_rxphy_correction_timer_UNCONNECTED[63:0]),
        .rxphy_ns_field(NLW_gig_ethernet_pcs_pma_0_core_rxphy_ns_field_UNCONNECTED[31:0]),
        .rxphy_s_field(NLW_gig_ethernet_pcs_pma_0_core_rxphy_s_field_UNCONNECTED[47:0]),
        .rxrecclk(1'b0),
        .rxrundisp(1'b0),
        .s_axi_aclk(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_gig_ethernet_pcs_pma_0_core_s_axi_arready_UNCONNECTED),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_gig_ethernet_pcs_pma_0_core_s_axi_awready_UNCONNECTED),
        .s_axi_awvalid(1'b0),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_gig_ethernet_pcs_pma_0_core_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_gig_ethernet_pcs_pma_0_core_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_gig_ethernet_pcs_pma_0_core_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_resetn(1'b0),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_gig_ethernet_pcs_pma_0_core_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_gig_ethernet_pcs_pma_0_core_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wready(NLW_gig_ethernet_pcs_pma_0_core_s_axi_wready_UNCONNECTED),
        .s_axi_wvalid(1'b0),
        .signal_detect(signal_detect),
        .speed_is_100(1'b0),
        .speed_is_10_100(1'b0),
        .speed_selection(NLW_gig_ethernet_pcs_pma_0_core_speed_selection_UNCONNECTED[1:0]),
        .status_vector(\^status_vector ),
        .systemtimer_ns_field({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .systemtimer_s_field({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_code_group(NLW_gig_ethernet_pcs_pma_0_core_tx_code_group_UNCONNECTED[9:0]),
        .txbuferr(txbuferr),
        .txchardispmode(txchardispmode),
        .txchardispval(txchardispval),
        .txcharisk(txcharisk),
        .txdata(txdata),
        .userclk(1'b0),
        .userclk2(userclk2));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block sync_block_rx_reset_done
       (.data_in(transceiver_inst_n_6),
        .data_out(rx_reset_done_i),
        .userclk2(userclk2));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_0 sync_block_tx_reset_done
       (.data_in(transceiver_inst_n_5),
        .resetdone(resetdone),
        .resetdone_0(rx_reset_done_i),
        .userclk2(userclk2));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_transceiver transceiver_inst
       (.D(txdata),
        .Q(rxclkcorcnt),
        .SR(mgt_tx_reset),
        .data_in(transceiver_inst_n_5),
        .enablealign(enablealign),
        .gt0_pll0lock_in(gt0_pll0lock_in),
        .gt0_pll0outclk_in(gt0_pll0outclk_in),
        .gt0_pll0outrefclk_in(gt0_pll0outrefclk_in),
        .gt0_pll0refclklost_in(gt0_pll0refclklost_in),
        .gt0_pll0reset_out(gt0_pll0reset_out),
        .gt0_pll1outclk_in(gt0_pll1outclk_in),
        .gt0_pll1outrefclk_in(gt0_pll1outrefclk_in),
        .gtrefclk_bufg(gtrefclk_bufg),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_locked(mmcm_locked),
        .mmcm_reset(mmcm_reset),
        .pma_reset(pma_reset),
        .powerdown(powerdown),
        .reset_sync5(mgt_rx_reset),
        .rx_fsm_reset_done_int_reg(transceiver_inst_n_6),
        .rxbuferr(rxbuferr),
        .rxchariscomma(rxchariscomma),
        .rxcharisk(rxcharisk),
        .\rxdata_reg[7]_0 (rxdata),
        .rxdisperr(rxdisperr),
        .rxn(rxn),
        .rxnotintable(rxnotintable),
        .rxoutclk(rxoutclk),
        .rxp(rxp),
        .status_vector(\^status_vector [1]),
        .txbuferr(txbuferr),
        .txchardispmode_reg_reg_0(txchardispmode),
        .txchardispval_reg_reg_0(txchardispval),
        .txcharisk_reg_reg_0(txcharisk),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp),
        .userclk(userclk),
        .userclk2(userclk2));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_gtwizard_gtrxreset_seq
   (GTRXRESET,
    \FSM_onehot_state_reg[5]_0 ,
    DRPDI,
    \FSM_onehot_state_reg[7]_0 ,
    DRPADDR,
    gtrefclk_bufg,
    \original_rd_data_reg[0]_0 ,
    SR,
    data_in,
    reset_sync5,
    D);
  output GTRXRESET;
  output \FSM_onehot_state_reg[5]_0 ;
  output [15:0]DRPDI;
  output \FSM_onehot_state_reg[7]_0 ;
  output [0:0]DRPADDR;
  input gtrefclk_bufg;
  input \original_rd_data_reg[0]_0 ;
  input [0:0]SR;
  input data_in;
  input reset_sync5;
  input [15:0]D;

  wire [15:0]D;
  wire [0:0]DRPADDR;
  wire [15:0]DRPDI;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire \FSM_onehot_state[5]_i_1_n_0 ;
  wire \FSM_onehot_state[6]_i_1_n_0 ;
  wire \FSM_onehot_state[7]_i_1_n_0 ;
  wire \FSM_onehot_state_reg[5]_0 ;
  wire \FSM_onehot_state_reg[7]_0 ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[5] ;
  wire \FSM_onehot_state_reg_n_0_[7] ;
  wire GTRXRESET;
  wire [0:0]SR;
  wire data_in;
  wire drp_op_done;
  wire drp_op_done_o_i_1_n_0;
  wire flag;
  wire flag_i_1_n_0;
  wire flag_reg_n_0;
  wire gtrefclk_bufg;
  wire gtrxreset_i__0;
  wire gtrxreset_in_sync;
  wire gtrxreset_s;
  wire gtrxreset_ss;
  wire [15:0]in7;
  wire next_rd_data;
  wire [15:0]original_rd_data;
  wire original_rd_data0;
  wire \original_rd_data_reg[0]_0 ;
  wire p_0_in;
  wire p_1_in;
  wire p_2_in;
  wire p_3_in;
  wire \rd_data[0]_i_1_n_0 ;
  wire \rd_data[10]_i_1_n_0 ;
  wire \rd_data[11]_i_1_n_0 ;
  wire \rd_data[12]_i_1_n_0 ;
  wire \rd_data[13]_i_1_n_0 ;
  wire \rd_data[14]_i_1_n_0 ;
  wire \rd_data[15]_i_2_n_0 ;
  wire \rd_data[1]_i_1_n_0 ;
  wire \rd_data[2]_i_1_n_0 ;
  wire \rd_data[3]_i_1_n_0 ;
  wire \rd_data[4]_i_1_n_0 ;
  wire \rd_data[5]_i_1_n_0 ;
  wire \rd_data[6]_i_1_n_0 ;
  wire \rd_data[7]_i_1_n_0 ;
  wire \rd_data[8]_i_1_n_0 ;
  wire \rd_data[9]_i_1_n_0 ;
  wire \rd_data_reg_n_0_[11] ;
  wire reset_sync5;
  wire rst_sync;
  wire rxpmaresetdone_s;
  wire rxpmaresetdone_ss;
  wire rxpmaresetdone_sss;
  wire rxpmaresetdone_sync;

  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(p_2_in),
        .I1(\original_rd_data_reg[0]_0 ),
        .I2(flag),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\original_rd_data_reg[0]_0 ),
        .I1(flag),
        .I2(gtrxreset_ss),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(p_1_in),
        .I1(rxpmaresetdone_ss),
        .I2(rxpmaresetdone_sss),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT5 #(
    .INIT(32'hFFD0D0D0)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(rxpmaresetdone_sss),
        .I1(rxpmaresetdone_ss),
        .I2(p_1_in),
        .I3(\original_rd_data_reg[0]_0 ),
        .I4(p_3_in),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\original_rd_data_reg[0]_0 ),
        .I2(p_3_in),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(p_0_in),
        .I1(\original_rd_data_reg[0]_0 ),
        .O(\FSM_onehot_state[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_state[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\original_rd_data_reg[0]_0 ),
        .I2(p_0_in),
        .O(\FSM_onehot_state[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(gtrxreset_ss),
        .O(\FSM_onehot_state[7]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[0] 
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(flag));
  (* FSM_ENCODED_STATES = "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[1] 
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .PRE(rst_sync),
        .Q(\FSM_onehot_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(p_2_in));
  (* FSM_ENCODED_STATES = "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(p_1_in));
  (* FSM_ENCODED_STATES = "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(\FSM_onehot_state[4]_i_1_n_0 ),
        .Q(p_3_in));
  (* FSM_ENCODED_STATES = "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(\FSM_onehot_state[5]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[5] ));
  (* FSM_ENCODED_STATES = "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(\FSM_onehot_state[6]_i_1_n_0 ),
        .Q(p_0_in));
  (* FSM_ENCODED_STATES = "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[7] 
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(\FSM_onehot_state[7]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[7] ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    drp_op_done_o_i_1
       (.I0(flag),
        .I1(\original_rd_data_reg[0]_0 ),
        .I2(drp_op_done),
        .O(drp_op_done_o_i_1_n_0));
  FDCE drp_op_done_o_reg
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .CLR(gtrxreset_ss),
        .D(drp_op_done_o_i_1_n_0),
        .Q(drp_op_done));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
    flag_i_1
       (.I0(flag),
        .I1(flag_reg_n_0),
        .I2(p_2_in),
        .I3(p_1_in),
        .I4(\FSM_onehot_state_reg_n_0_[5] ),
        .I5(p_3_in),
        .O(flag_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    flag_reg
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .D(flag_i_1_n_0),
        .Q(flag_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    gtpe2_i_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(p_2_in),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(drp_op_done),
        .O(\FSM_onehot_state_reg[7]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    gtpe2_i_i_10
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(in7[9]),
        .I3(drp_op_done),
        .O(DRPDI[9]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    gtpe2_i_i_11
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(in7[8]),
        .I3(drp_op_done),
        .O(DRPDI[8]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    gtpe2_i_i_12
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(in7[7]),
        .I3(drp_op_done),
        .O(DRPDI[7]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    gtpe2_i_i_13
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(in7[6]),
        .I3(drp_op_done),
        .O(DRPDI[6]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    gtpe2_i_i_14
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(in7[5]),
        .I3(drp_op_done),
        .O(DRPDI[5]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    gtpe2_i_i_15
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(in7[4]),
        .I3(drp_op_done),
        .O(DRPDI[4]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    gtpe2_i_i_16
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(in7[3]),
        .I3(drp_op_done),
        .O(DRPDI[3]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    gtpe2_i_i_17
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(in7[2]),
        .I3(drp_op_done),
        .O(DRPDI[2]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    gtpe2_i_i_18
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(in7[1]),
        .I3(drp_op_done),
        .O(DRPDI[1]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    gtpe2_i_i_19
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(in7[0]),
        .I3(drp_op_done),
        .O(DRPDI[0]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    gtpe2_i_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(p_2_in),
        .I2(drp_op_done),
        .O(\FSM_onehot_state_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT1 #(
    .INIT(2'h1)) 
    gtpe2_i_i_20
       (.I0(drp_op_done),
        .O(DRPADDR));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    gtpe2_i_i_4
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(in7[15]),
        .I3(drp_op_done),
        .O(DRPDI[15]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    gtpe2_i_i_5
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(in7[14]),
        .I3(drp_op_done),
        .O(DRPDI[14]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    gtpe2_i_i_6
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(in7[13]),
        .I3(drp_op_done),
        .O(DRPDI[13]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    gtpe2_i_i_7
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(in7[12]),
        .I3(drp_op_done),
        .O(DRPDI[12]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'h08)) 
    gtpe2_i_i_8
       (.I0(\rd_data_reg_n_0_[11] ),
        .I1(p_2_in),
        .I2(drp_op_done),
        .O(DRPDI[11]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    gtpe2_i_i_9
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(in7[10]),
        .I3(drp_op_done),
        .O(DRPDI[10]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    gtrxreset_i
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(p_3_in),
        .I2(gtrxreset_ss),
        .I3(p_1_in),
        .I4(p_0_in),
        .I5(\FSM_onehot_state_reg_n_0_[5] ),
        .O(gtrxreset_i__0));
  FDCE gtrxreset_o_reg
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(gtrxreset_i__0),
        .Q(GTRXRESET));
  FDCE gtrxreset_s_reg
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(gtrxreset_in_sync),
        .Q(gtrxreset_s));
  FDCE gtrxreset_ss_reg
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(gtrxreset_s),
        .Q(gtrxreset_ss));
  LUT3 #(
    .INIT(8'h40)) 
    \original_rd_data[15]_i_1 
       (.I0(flag_reg_n_0),
        .I1(\original_rd_data_reg[0]_0 ),
        .I2(p_0_in),
        .O(original_rd_data0));
  FDRE \original_rd_data_reg[0] 
       (.C(gtrefclk_bufg),
        .CE(original_rd_data0),
        .D(D[0]),
        .Q(original_rd_data[0]),
        .R(1'b0));
  FDRE \original_rd_data_reg[10] 
       (.C(gtrefclk_bufg),
        .CE(original_rd_data0),
        .D(D[10]),
        .Q(original_rd_data[10]),
        .R(1'b0));
  FDRE \original_rd_data_reg[11] 
       (.C(gtrefclk_bufg),
        .CE(original_rd_data0),
        .D(D[11]),
        .Q(original_rd_data[11]),
        .R(1'b0));
  FDRE \original_rd_data_reg[12] 
       (.C(gtrefclk_bufg),
        .CE(original_rd_data0),
        .D(D[12]),
        .Q(original_rd_data[12]),
        .R(1'b0));
  FDRE \original_rd_data_reg[13] 
       (.C(gtrefclk_bufg),
        .CE(original_rd_data0),
        .D(D[13]),
        .Q(original_rd_data[13]),
        .R(1'b0));
  FDRE \original_rd_data_reg[14] 
       (.C(gtrefclk_bufg),
        .CE(original_rd_data0),
        .D(D[14]),
        .Q(original_rd_data[14]),
        .R(1'b0));
  FDRE \original_rd_data_reg[15] 
       (.C(gtrefclk_bufg),
        .CE(original_rd_data0),
        .D(D[15]),
        .Q(original_rd_data[15]),
        .R(1'b0));
  FDRE \original_rd_data_reg[1] 
       (.C(gtrefclk_bufg),
        .CE(original_rd_data0),
        .D(D[1]),
        .Q(original_rd_data[1]),
        .R(1'b0));
  FDRE \original_rd_data_reg[2] 
       (.C(gtrefclk_bufg),
        .CE(original_rd_data0),
        .D(D[2]),
        .Q(original_rd_data[2]),
        .R(1'b0));
  FDRE \original_rd_data_reg[3] 
       (.C(gtrefclk_bufg),
        .CE(original_rd_data0),
        .D(D[3]),
        .Q(original_rd_data[3]),
        .R(1'b0));
  FDRE \original_rd_data_reg[4] 
       (.C(gtrefclk_bufg),
        .CE(original_rd_data0),
        .D(D[4]),
        .Q(original_rd_data[4]),
        .R(1'b0));
  FDRE \original_rd_data_reg[5] 
       (.C(gtrefclk_bufg),
        .CE(original_rd_data0),
        .D(D[5]),
        .Q(original_rd_data[5]),
        .R(1'b0));
  FDRE \original_rd_data_reg[6] 
       (.C(gtrefclk_bufg),
        .CE(original_rd_data0),
        .D(D[6]),
        .Q(original_rd_data[6]),
        .R(1'b0));
  FDRE \original_rd_data_reg[7] 
       (.C(gtrefclk_bufg),
        .CE(original_rd_data0),
        .D(D[7]),
        .Q(original_rd_data[7]),
        .R(1'b0));
  FDRE \original_rd_data_reg[8] 
       (.C(gtrefclk_bufg),
        .CE(original_rd_data0),
        .D(D[8]),
        .Q(original_rd_data[8]),
        .R(1'b0));
  FDRE \original_rd_data_reg[9] 
       (.C(gtrefclk_bufg),
        .CE(original_rd_data0),
        .D(D[9]),
        .Q(original_rd_data[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[0]_i_1 
       (.I0(D[0]),
        .I1(original_rd_data[0]),
        .I2(flag_reg_n_0),
        .O(\rd_data[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[10]_i_1 
       (.I0(D[10]),
        .I1(original_rd_data[10]),
        .I2(flag_reg_n_0),
        .O(\rd_data[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[11]_i_1 
       (.I0(D[11]),
        .I1(original_rd_data[11]),
        .I2(flag_reg_n_0),
        .O(\rd_data[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[12]_i_1 
       (.I0(D[12]),
        .I1(original_rd_data[12]),
        .I2(flag_reg_n_0),
        .O(\rd_data[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[13]_i_1 
       (.I0(D[13]),
        .I1(original_rd_data[13]),
        .I2(flag_reg_n_0),
        .O(\rd_data[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[14]_i_1 
       (.I0(D[14]),
        .I1(original_rd_data[14]),
        .I2(flag_reg_n_0),
        .O(\rd_data[14]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rd_data[15]_i_1 
       (.I0(p_0_in),
        .I1(\original_rd_data_reg[0]_0 ),
        .O(next_rd_data));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[15]_i_2 
       (.I0(D[15]),
        .I1(original_rd_data[15]),
        .I2(flag_reg_n_0),
        .O(\rd_data[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[1]_i_1 
       (.I0(D[1]),
        .I1(original_rd_data[1]),
        .I2(flag_reg_n_0),
        .O(\rd_data[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[2]_i_1 
       (.I0(D[2]),
        .I1(original_rd_data[2]),
        .I2(flag_reg_n_0),
        .O(\rd_data[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[3]_i_1 
       (.I0(D[3]),
        .I1(original_rd_data[3]),
        .I2(flag_reg_n_0),
        .O(\rd_data[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[4]_i_1 
       (.I0(D[4]),
        .I1(original_rd_data[4]),
        .I2(flag_reg_n_0),
        .O(\rd_data[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[5]_i_1 
       (.I0(D[5]),
        .I1(original_rd_data[5]),
        .I2(flag_reg_n_0),
        .O(\rd_data[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[6]_i_1 
       (.I0(D[6]),
        .I1(original_rd_data[6]),
        .I2(flag_reg_n_0),
        .O(\rd_data[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[7]_i_1 
       (.I0(D[7]),
        .I1(original_rd_data[7]),
        .I2(flag_reg_n_0),
        .O(\rd_data[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[8]_i_1 
       (.I0(D[8]),
        .I1(original_rd_data[8]),
        .I2(flag_reg_n_0),
        .O(\rd_data[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[9]_i_1 
       (.I0(D[9]),
        .I1(original_rd_data[9]),
        .I2(flag_reg_n_0),
        .O(\rd_data[9]_i_1_n_0 ));
  FDCE \rd_data_reg[0] 
       (.C(gtrefclk_bufg),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[0]_i_1_n_0 ),
        .Q(in7[0]));
  FDCE \rd_data_reg[10] 
       (.C(gtrefclk_bufg),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[10]_i_1_n_0 ),
        .Q(in7[10]));
  FDCE \rd_data_reg[11] 
       (.C(gtrefclk_bufg),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[11]_i_1_n_0 ),
        .Q(\rd_data_reg_n_0_[11] ));
  FDCE \rd_data_reg[12] 
       (.C(gtrefclk_bufg),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[12]_i_1_n_0 ),
        .Q(in7[12]));
  FDCE \rd_data_reg[13] 
       (.C(gtrefclk_bufg),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[13]_i_1_n_0 ),
        .Q(in7[13]));
  FDCE \rd_data_reg[14] 
       (.C(gtrefclk_bufg),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[14]_i_1_n_0 ),
        .Q(in7[14]));
  FDCE \rd_data_reg[15] 
       (.C(gtrefclk_bufg),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[15]_i_2_n_0 ),
        .Q(in7[15]));
  FDCE \rd_data_reg[1] 
       (.C(gtrefclk_bufg),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[1]_i_1_n_0 ),
        .Q(in7[1]));
  FDCE \rd_data_reg[2] 
       (.C(gtrefclk_bufg),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[2]_i_1_n_0 ),
        .Q(in7[2]));
  FDCE \rd_data_reg[3] 
       (.C(gtrefclk_bufg),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[3]_i_1_n_0 ),
        .Q(in7[3]));
  FDCE \rd_data_reg[4] 
       (.C(gtrefclk_bufg),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[4]_i_1_n_0 ),
        .Q(in7[4]));
  FDCE \rd_data_reg[5] 
       (.C(gtrefclk_bufg),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[5]_i_1_n_0 ),
        .Q(in7[5]));
  FDCE \rd_data_reg[6] 
       (.C(gtrefclk_bufg),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[6]_i_1_n_0 ),
        .Q(in7[6]));
  FDCE \rd_data_reg[7] 
       (.C(gtrefclk_bufg),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[7]_i_1_n_0 ),
        .Q(in7[7]));
  FDCE \rd_data_reg[8] 
       (.C(gtrefclk_bufg),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[8]_i_1_n_0 ),
        .Q(in7[8]));
  FDCE \rd_data_reg[9] 
       (.C(gtrefclk_bufg),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[9]_i_1_n_0 ),
        .Q(in7[9]));
  FDCE rxpmaresetdone_s_reg
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(rxpmaresetdone_sync),
        .Q(rxpmaresetdone_s));
  FDCE rxpmaresetdone_ss_reg
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(rxpmaresetdone_s),
        .Q(rxpmaresetdone_ss));
  FDCE rxpmaresetdone_sss_reg
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(rxpmaresetdone_ss),
        .Q(rxpmaresetdone_sss));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_reset_sync_4 sync_gtrxreset_in
       (.SR(SR),
        .gtrefclk_bufg(gtrefclk_bufg),
        .reset_out(gtrxreset_in_sync));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_reset_sync_5 sync_rst_sync
       (.gtrefclk_bufg(gtrefclk_bufg),
        .reset_out(rst_sync),
        .reset_sync5_0(reset_sync5));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_6 sync_rxpmaresetdone
       (.data_in(data_in),
        .data_out(rxpmaresetdone_sync),
        .gtrefclk_bufg(gtrefclk_bufg));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_reset_sync
   (reset_out,
    userclk2,
    enablealign);
  output reset_out;
  input userclk2;
  input enablealign;

  wire enablealign;
  wire reset_out;
  wire reset_sync_reg1;
  wire reset_sync_reg2;
  wire reset_sync_reg3;
  wire reset_sync_reg4;
  wire reset_sync_reg5;
  wire userclk2;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync1
       (.C(userclk2),
        .CE(1'b1),
        .D(1'b0),
        .PRE(enablealign),
        .Q(reset_sync_reg1));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync2
       (.C(userclk2),
        .CE(1'b1),
        .D(reset_sync_reg1),
        .PRE(enablealign),
        .Q(reset_sync_reg2));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync3
       (.C(userclk2),
        .CE(1'b1),
        .D(reset_sync_reg2),
        .PRE(enablealign),
        .Q(reset_sync_reg3));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync4
       (.C(userclk2),
        .CE(1'b1),
        .D(reset_sync_reg3),
        .PRE(enablealign),
        .Q(reset_sync_reg4));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync5
       (.C(userclk2),
        .CE(1'b1),
        .D(reset_sync_reg4),
        .PRE(enablealign),
        .Q(reset_sync_reg5));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync6
       (.C(userclk2),
        .CE(1'b1),
        .D(reset_sync_reg5),
        .PRE(1'b0),
        .Q(reset_out));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_reset_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_reset_sync_1
   (reset_out,
    independent_clock_bufg,
    reset_sync5_0);
  output reset_out;
  input independent_clock_bufg;
  input [0:0]reset_sync5_0;

  wire independent_clock_bufg;
  wire reset_out;
  wire [0:0]reset_sync5_0;
  wire reset_sync_reg1;
  wire reset_sync_reg2;
  wire reset_sync_reg3;
  wire reset_sync_reg4;
  wire reset_sync_reg5;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(1'b0),
        .PRE(reset_sync5_0),
        .Q(reset_sync_reg1));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset_sync_reg1),
        .PRE(reset_sync5_0),
        .Q(reset_sync_reg2));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset_sync_reg2),
        .PRE(reset_sync5_0),
        .Q(reset_sync_reg3));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset_sync_reg3),
        .PRE(reset_sync5_0),
        .Q(reset_sync_reg4));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset_sync_reg4),
        .PRE(reset_sync5_0),
        .Q(reset_sync_reg5));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset_sync_reg5),
        .PRE(1'b0),
        .Q(reset_out));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_reset_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_reset_sync_2
   (reset_out,
    independent_clock_bufg,
    SR);
  output reset_out;
  input independent_clock_bufg;
  input [0:0]SR;

  wire [0:0]SR;
  wire independent_clock_bufg;
  wire reset_out;
  wire reset_sync_reg1;
  wire reset_sync_reg2;
  wire reset_sync_reg3;
  wire reset_sync_reg4;
  wire reset_sync_reg5;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(1'b0),
        .PRE(SR),
        .Q(reset_sync_reg1));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset_sync_reg1),
        .PRE(SR),
        .Q(reset_sync_reg2));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset_sync_reg2),
        .PRE(SR),
        .Q(reset_sync_reg3));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset_sync_reg3),
        .PRE(SR),
        .Q(reset_sync_reg4));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset_sync_reg4),
        .PRE(SR),
        .Q(reset_sync_reg5));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset_sync_reg5),
        .PRE(1'b0),
        .Q(reset_out));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_reset_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_reset_sync_4
   (reset_out,
    gtrefclk_bufg,
    SR);
  output reset_out;
  input gtrefclk_bufg;
  input [0:0]SR;

  wire [0:0]SR;
  wire gtrefclk_bufg;
  wire reset_out;
  wire reset_sync_reg1;
  wire reset_sync_reg2;
  wire reset_sync_reg3;
  wire reset_sync_reg4;
  wire reset_sync_reg5;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync1
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .D(1'b0),
        .PRE(SR),
        .Q(reset_sync_reg1));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync2
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .D(reset_sync_reg1),
        .PRE(SR),
        .Q(reset_sync_reg2));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync3
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .D(reset_sync_reg2),
        .PRE(SR),
        .Q(reset_sync_reg3));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync4
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .D(reset_sync_reg3),
        .PRE(SR),
        .Q(reset_sync_reg4));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync5
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .D(reset_sync_reg4),
        .PRE(SR),
        .Q(reset_sync_reg5));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync6
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .D(reset_sync_reg5),
        .PRE(1'b0),
        .Q(reset_out));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_reset_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_reset_sync_5
   (reset_out,
    gtrefclk_bufg,
    reset_sync5_0);
  output reset_out;
  input gtrefclk_bufg;
  input reset_sync5_0;

  wire gtrefclk_bufg;
  wire reset_out;
  wire reset_sync5_0;
  wire reset_sync_reg1;
  wire reset_sync_reg2;
  wire reset_sync_reg3;
  wire reset_sync_reg4;
  wire reset_sync_reg5;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync1
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .D(1'b0),
        .PRE(reset_sync5_0),
        .Q(reset_sync_reg1));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync2
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .D(reset_sync_reg1),
        .PRE(reset_sync5_0),
        .Q(reset_sync_reg2));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync3
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .D(reset_sync_reg2),
        .PRE(reset_sync5_0),
        .Q(reset_sync_reg3));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync4
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .D(reset_sync_reg3),
        .PRE(reset_sync5_0),
        .Q(reset_sync_reg4));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync5
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .D(reset_sync_reg4),
        .PRE(reset_sync5_0),
        .Q(reset_sync_reg5));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync6
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .D(reset_sync_reg5),
        .PRE(1'b0),
        .Q(reset_out));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_reset_wtd_timer
   (reset,
    independent_clock_bufg,
    data_out);
  output reset;
  input independent_clock_bufg;
  input data_out;

  wire \counter_stg1[5]_i_1_n_0 ;
  wire \counter_stg1[5]_i_3_n_0 ;
  wire [5:5]counter_stg1_reg;
  wire [4:0]counter_stg1_reg__0;
  wire \counter_stg2[0]_i_3_n_0 ;
  wire [11:0]counter_stg2_reg;
  wire \counter_stg2_reg[0]_i_2_n_0 ;
  wire \counter_stg2_reg[0]_i_2_n_1 ;
  wire \counter_stg2_reg[0]_i_2_n_2 ;
  wire \counter_stg2_reg[0]_i_2_n_3 ;
  wire \counter_stg2_reg[0]_i_2_n_4 ;
  wire \counter_stg2_reg[0]_i_2_n_5 ;
  wire \counter_stg2_reg[0]_i_2_n_6 ;
  wire \counter_stg2_reg[0]_i_2_n_7 ;
  wire \counter_stg2_reg[4]_i_1_n_0 ;
  wire \counter_stg2_reg[4]_i_1_n_1 ;
  wire \counter_stg2_reg[4]_i_1_n_2 ;
  wire \counter_stg2_reg[4]_i_1_n_3 ;
  wire \counter_stg2_reg[4]_i_1_n_4 ;
  wire \counter_stg2_reg[4]_i_1_n_5 ;
  wire \counter_stg2_reg[4]_i_1_n_6 ;
  wire \counter_stg2_reg[4]_i_1_n_7 ;
  wire \counter_stg2_reg[8]_i_1_n_1 ;
  wire \counter_stg2_reg[8]_i_1_n_2 ;
  wire \counter_stg2_reg[8]_i_1_n_3 ;
  wire \counter_stg2_reg[8]_i_1_n_4 ;
  wire \counter_stg2_reg[8]_i_1_n_5 ;
  wire \counter_stg2_reg[8]_i_1_n_6 ;
  wire \counter_stg2_reg[8]_i_1_n_7 ;
  wire counter_stg30;
  wire \counter_stg3[0]_i_3_n_0 ;
  wire \counter_stg3[0]_i_4_n_0 ;
  wire \counter_stg3[0]_i_5_n_0 ;
  wire [11:0]counter_stg3_reg;
  wire \counter_stg3_reg[0]_i_2_n_0 ;
  wire \counter_stg3_reg[0]_i_2_n_1 ;
  wire \counter_stg3_reg[0]_i_2_n_2 ;
  wire \counter_stg3_reg[0]_i_2_n_3 ;
  wire \counter_stg3_reg[0]_i_2_n_4 ;
  wire \counter_stg3_reg[0]_i_2_n_5 ;
  wire \counter_stg3_reg[0]_i_2_n_6 ;
  wire \counter_stg3_reg[0]_i_2_n_7 ;
  wire \counter_stg3_reg[4]_i_1_n_0 ;
  wire \counter_stg3_reg[4]_i_1_n_1 ;
  wire \counter_stg3_reg[4]_i_1_n_2 ;
  wire \counter_stg3_reg[4]_i_1_n_3 ;
  wire \counter_stg3_reg[4]_i_1_n_4 ;
  wire \counter_stg3_reg[4]_i_1_n_5 ;
  wire \counter_stg3_reg[4]_i_1_n_6 ;
  wire \counter_stg3_reg[4]_i_1_n_7 ;
  wire \counter_stg3_reg[8]_i_1_n_1 ;
  wire \counter_stg3_reg[8]_i_1_n_2 ;
  wire \counter_stg3_reg[8]_i_1_n_3 ;
  wire \counter_stg3_reg[8]_i_1_n_4 ;
  wire \counter_stg3_reg[8]_i_1_n_5 ;
  wire \counter_stg3_reg[8]_i_1_n_6 ;
  wire \counter_stg3_reg[8]_i_1_n_7 ;
  wire data_out;
  wire eqOp;
  wire independent_clock_bufg;
  wire [5:0]plusOp;
  wire reset;
  wire reset0;
  wire reset_i_2_n_0;
  wire reset_i_3_n_0;
  wire reset_i_4_n_0;
  wire reset_i_5_n_0;
  wire reset_i_6_n_0;
  wire reset_i_7_n_0;
  wire [3:3]\NLW_counter_stg2_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_stg3_reg[8]_i_1_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter_stg1[0]_i_1 
       (.I0(counter_stg1_reg__0[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter_stg1[1]_i_1 
       (.I0(counter_stg1_reg__0[1]),
        .I1(counter_stg1_reg__0[0]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \counter_stg1[2]_i_1 
       (.I0(counter_stg1_reg__0[2]),
        .I1(counter_stg1_reg__0[1]),
        .I2(counter_stg1_reg__0[0]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter_stg1[3]_i_1 
       (.I0(counter_stg1_reg__0[0]),
        .I1(counter_stg1_reg__0[1]),
        .I2(counter_stg1_reg__0[2]),
        .I3(counter_stg1_reg__0[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \counter_stg1[4]_i_1 
       (.I0(counter_stg1_reg__0[4]),
        .I1(counter_stg1_reg__0[0]),
        .I2(counter_stg1_reg__0[1]),
        .I3(counter_stg1_reg__0[2]),
        .I4(counter_stg1_reg__0[3]),
        .O(plusOp[4]));
  LUT3 #(
    .INIT(8'hEA)) 
    \counter_stg1[5]_i_1 
       (.I0(data_out),
        .I1(\counter_stg1[5]_i_3_n_0 ),
        .I2(reset0),
        .O(\counter_stg1[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \counter_stg1[5]_i_2 
       (.I0(counter_stg1_reg),
        .I1(counter_stg1_reg__0[3]),
        .I2(counter_stg1_reg__0[2]),
        .I3(counter_stg1_reg__0[1]),
        .I4(counter_stg1_reg__0[0]),
        .I5(counter_stg1_reg__0[4]),
        .O(plusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \counter_stg1[5]_i_3 
       (.I0(counter_stg1_reg__0[4]),
        .I1(counter_stg1_reg__0[0]),
        .I2(counter_stg1_reg__0[1]),
        .I3(counter_stg1_reg__0[2]),
        .I4(counter_stg1_reg__0[3]),
        .O(\counter_stg1[5]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg1_reg[0] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(counter_stg1_reg__0[0]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg1_reg[1] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(counter_stg1_reg__0[1]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg1_reg[2] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(counter_stg1_reg__0[2]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg1_reg[3] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(counter_stg1_reg__0[3]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg1_reg[4] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(counter_stg1_reg__0[4]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg1_reg[5] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(plusOp[5]),
        .Q(counter_stg1_reg),
        .R(\counter_stg1[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \counter_stg2[0]_i_1 
       (.I0(counter_stg1_reg),
        .I1(counter_stg1_reg__0[3]),
        .I2(counter_stg1_reg__0[2]),
        .I3(counter_stg1_reg__0[1]),
        .I4(counter_stg1_reg__0[0]),
        .I5(counter_stg1_reg__0[4]),
        .O(eqOp));
  LUT1 #(
    .INIT(2'h1)) 
    \counter_stg2[0]_i_3 
       (.I0(counter_stg2_reg[0]),
        .O(\counter_stg2[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[0] 
       (.C(independent_clock_bufg),
        .CE(eqOp),
        .D(\counter_stg2_reg[0]_i_2_n_7 ),
        .Q(counter_stg2_reg[0]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_stg2_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\counter_stg2_reg[0]_i_2_n_0 ,\counter_stg2_reg[0]_i_2_n_1 ,\counter_stg2_reg[0]_i_2_n_2 ,\counter_stg2_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_stg2_reg[0]_i_2_n_4 ,\counter_stg2_reg[0]_i_2_n_5 ,\counter_stg2_reg[0]_i_2_n_6 ,\counter_stg2_reg[0]_i_2_n_7 }),
        .S({counter_stg2_reg[3:1],\counter_stg2[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[10] 
       (.C(independent_clock_bufg),
        .CE(eqOp),
        .D(\counter_stg2_reg[8]_i_1_n_5 ),
        .Q(counter_stg2_reg[10]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[11] 
       (.C(independent_clock_bufg),
        .CE(eqOp),
        .D(\counter_stg2_reg[8]_i_1_n_4 ),
        .Q(counter_stg2_reg[11]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[1] 
       (.C(independent_clock_bufg),
        .CE(eqOp),
        .D(\counter_stg2_reg[0]_i_2_n_6 ),
        .Q(counter_stg2_reg[1]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[2] 
       (.C(independent_clock_bufg),
        .CE(eqOp),
        .D(\counter_stg2_reg[0]_i_2_n_5 ),
        .Q(counter_stg2_reg[2]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[3] 
       (.C(independent_clock_bufg),
        .CE(eqOp),
        .D(\counter_stg2_reg[0]_i_2_n_4 ),
        .Q(counter_stg2_reg[3]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[4] 
       (.C(independent_clock_bufg),
        .CE(eqOp),
        .D(\counter_stg2_reg[4]_i_1_n_7 ),
        .Q(counter_stg2_reg[4]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_stg2_reg[4]_i_1 
       (.CI(\counter_stg2_reg[0]_i_2_n_0 ),
        .CO({\counter_stg2_reg[4]_i_1_n_0 ,\counter_stg2_reg[4]_i_1_n_1 ,\counter_stg2_reg[4]_i_1_n_2 ,\counter_stg2_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_stg2_reg[4]_i_1_n_4 ,\counter_stg2_reg[4]_i_1_n_5 ,\counter_stg2_reg[4]_i_1_n_6 ,\counter_stg2_reg[4]_i_1_n_7 }),
        .S(counter_stg2_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[5] 
       (.C(independent_clock_bufg),
        .CE(eqOp),
        .D(\counter_stg2_reg[4]_i_1_n_6 ),
        .Q(counter_stg2_reg[5]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[6] 
       (.C(independent_clock_bufg),
        .CE(eqOp),
        .D(\counter_stg2_reg[4]_i_1_n_5 ),
        .Q(counter_stg2_reg[6]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[7] 
       (.C(independent_clock_bufg),
        .CE(eqOp),
        .D(\counter_stg2_reg[4]_i_1_n_4 ),
        .Q(counter_stg2_reg[7]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[8] 
       (.C(independent_clock_bufg),
        .CE(eqOp),
        .D(\counter_stg2_reg[8]_i_1_n_7 ),
        .Q(counter_stg2_reg[8]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_stg2_reg[8]_i_1 
       (.CI(\counter_stg2_reg[4]_i_1_n_0 ),
        .CO({\NLW_counter_stg2_reg[8]_i_1_CO_UNCONNECTED [3],\counter_stg2_reg[8]_i_1_n_1 ,\counter_stg2_reg[8]_i_1_n_2 ,\counter_stg2_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_stg2_reg[8]_i_1_n_4 ,\counter_stg2_reg[8]_i_1_n_5 ,\counter_stg2_reg[8]_i_1_n_6 ,\counter_stg2_reg[8]_i_1_n_7 }),
        .S(counter_stg2_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[9] 
       (.C(independent_clock_bufg),
        .CE(eqOp),
        .D(\counter_stg2_reg[8]_i_1_n_6 ),
        .Q(counter_stg2_reg[9]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \counter_stg3[0]_i_1 
       (.I0(\counter_stg1[5]_i_3_n_0 ),
        .I1(counter_stg2_reg[8]),
        .I2(counter_stg2_reg[4]),
        .I3(counter_stg2_reg[3]),
        .I4(\counter_stg3[0]_i_3_n_0 ),
        .I5(\counter_stg3[0]_i_4_n_0 ),
        .O(counter_stg30));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \counter_stg3[0]_i_3 
       (.I0(counter_stg2_reg[7]),
        .I1(counter_stg2_reg[6]),
        .I2(counter_stg2_reg[1]),
        .I3(counter_stg2_reg[2]),
        .O(\counter_stg3[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \counter_stg3[0]_i_4 
       (.I0(counter_stg2_reg[11]),
        .I1(counter_stg1_reg),
        .I2(counter_stg2_reg[5]),
        .I3(counter_stg2_reg[9]),
        .I4(counter_stg2_reg[0]),
        .I5(counter_stg2_reg[10]),
        .O(\counter_stg3[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter_stg3[0]_i_5 
       (.I0(counter_stg3_reg[0]),
        .O(\counter_stg3[0]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[0] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[0]_i_2_n_7 ),
        .Q(counter_stg3_reg[0]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_stg3_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\counter_stg3_reg[0]_i_2_n_0 ,\counter_stg3_reg[0]_i_2_n_1 ,\counter_stg3_reg[0]_i_2_n_2 ,\counter_stg3_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_stg3_reg[0]_i_2_n_4 ,\counter_stg3_reg[0]_i_2_n_5 ,\counter_stg3_reg[0]_i_2_n_6 ,\counter_stg3_reg[0]_i_2_n_7 }),
        .S({counter_stg3_reg[3:1],\counter_stg3[0]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[10] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[8]_i_1_n_5 ),
        .Q(counter_stg3_reg[10]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[11] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[8]_i_1_n_4 ),
        .Q(counter_stg3_reg[11]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[1] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[0]_i_2_n_6 ),
        .Q(counter_stg3_reg[1]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[2] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[0]_i_2_n_5 ),
        .Q(counter_stg3_reg[2]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[3] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[0]_i_2_n_4 ),
        .Q(counter_stg3_reg[3]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[4] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[4]_i_1_n_7 ),
        .Q(counter_stg3_reg[4]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_stg3_reg[4]_i_1 
       (.CI(\counter_stg3_reg[0]_i_2_n_0 ),
        .CO({\counter_stg3_reg[4]_i_1_n_0 ,\counter_stg3_reg[4]_i_1_n_1 ,\counter_stg3_reg[4]_i_1_n_2 ,\counter_stg3_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_stg3_reg[4]_i_1_n_4 ,\counter_stg3_reg[4]_i_1_n_5 ,\counter_stg3_reg[4]_i_1_n_6 ,\counter_stg3_reg[4]_i_1_n_7 }),
        .S(counter_stg3_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[5] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[4]_i_1_n_6 ),
        .Q(counter_stg3_reg[5]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[6] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[4]_i_1_n_5 ),
        .Q(counter_stg3_reg[6]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[7] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[4]_i_1_n_4 ),
        .Q(counter_stg3_reg[7]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[8] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[8]_i_1_n_7 ),
        .Q(counter_stg3_reg[8]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_stg3_reg[8]_i_1 
       (.CI(\counter_stg3_reg[4]_i_1_n_0 ),
        .CO({\NLW_counter_stg3_reg[8]_i_1_CO_UNCONNECTED [3],\counter_stg3_reg[8]_i_1_n_1 ,\counter_stg3_reg[8]_i_1_n_2 ,\counter_stg3_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_stg3_reg[8]_i_1_n_4 ,\counter_stg3_reg[8]_i_1_n_5 ,\counter_stg3_reg[8]_i_1_n_6 ,\counter_stg3_reg[8]_i_1_n_7 }),
        .S(counter_stg3_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[9] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[8]_i_1_n_6 ),
        .Q(counter_stg3_reg[9]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    reset_i_1
       (.I0(reset_i_2_n_0),
        .I1(reset_i_3_n_0),
        .I2(reset_i_4_n_0),
        .I3(reset_i_5_n_0),
        .I4(reset_i_6_n_0),
        .I5(reset_i_7_n_0),
        .O(reset0));
  LUT3 #(
    .INIT(8'h7F)) 
    reset_i_2
       (.I0(counter_stg2_reg[3]),
        .I1(counter_stg2_reg[4]),
        .I2(counter_stg2_reg[8]),
        .O(reset_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    reset_i_3
       (.I0(counter_stg3_reg[0]),
        .I1(counter_stg3_reg[8]),
        .I2(counter_stg2_reg[9]),
        .I3(counter_stg3_reg[10]),
        .O(reset_i_3_n_0));
  LUT4 #(
    .INIT(16'hEFFF)) 
    reset_i_4
       (.I0(counter_stg2_reg[7]),
        .I1(counter_stg2_reg[0]),
        .I2(counter_stg3_reg[6]),
        .I3(counter_stg3_reg[7]),
        .O(reset_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    reset_i_5
       (.I0(counter_stg2_reg[2]),
        .I1(counter_stg3_reg[2]),
        .I2(counter_stg3_reg[11]),
        .I3(counter_stg2_reg[5]),
        .O(reset_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFF7)) 
    reset_i_6
       (.I0(counter_stg3_reg[4]),
        .I1(counter_stg3_reg[5]),
        .I2(counter_stg2_reg[6]),
        .I3(counter_stg3_reg[1]),
        .O(reset_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFF7FFFFFFFF)) 
    reset_i_7
       (.I0(counter_stg2_reg[11]),
        .I1(counter_stg1_reg),
        .I2(counter_stg3_reg[9]),
        .I3(counter_stg2_reg[1]),
        .I4(counter_stg3_reg[3]),
        .I5(counter_stg2_reg[10]),
        .O(reset_i_7_n_0));
  FDRE reset_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset0),
        .Q(reset),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block
   (data_out,
    data_in,
    userclk2);
  output data_out;
  input data_in;
  input userclk2;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire userclk2;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(userclk2),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sync_block" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_0
   (resetdone,
    resetdone_0,
    data_in,
    userclk2);
  output resetdone;
  input resetdone_0;
  input data_in;
  input userclk2;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire resetdone;
  wire resetdone_0;
  wire userclk2;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(userclk2),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    resetdone_INST_0
       (.I0(data_out),
        .I1(resetdone_0),
        .O(resetdone));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sync_block" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_10
   (data_out,
    data_in,
    userclk);
  output data_out;
  input data_in;
  input userclk;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire userclk;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(userclk),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sync_block" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_11
   (data_out,
    data_in,
    independent_clock_bufg);
  output data_out;
  input data_in;
  input independent_clock_bufg;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire independent_clock_bufg;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sync_block" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_12
   (data_out,
    data_in,
    userclk);
  output data_out;
  input data_in;
  input userclk;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire userclk;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(userclk),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sync_block" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_13
   (data_out,
    data_sync_reg1_0,
    independent_clock_bufg);
  output data_out;
  input data_sync_reg1_0;
  input independent_clock_bufg;

  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_sync_reg1_0;
  wire independent_clock_bufg;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync_reg1_0),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sync_block" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_14
   (E,
    D,
    reset_time_out_reg,
    \FSM_sequential_rx_state_reg[3] ,
    reset_time_out_reg_0,
    \FSM_sequential_rx_state_reg[1] ,
    Q,
    \FSM_sequential_rx_state_reg[0] ,
    \FSM_sequential_rx_state_reg[0]_0 ,
    \FSM_sequential_rx_state_reg[0]_1 ,
    reset_time_out_reg_1,
    \FSM_sequential_rx_state_reg[0]_2 ,
    \FSM_sequential_rx_state_reg[0]_3 ,
    time_tlock_max,
    \FSM_sequential_rx_state_reg[1]_0 ,
    \FSM_sequential_rx_state_reg[3]_0 ,
    time_out_wait_bypass_s3,
    rx_fsm_reset_done_int_reg,
    mmcm_lock_reclocked,
    reset_time_out_reg_2,
    reset_time_out_reg_3,
    data_in,
    data_out,
    independent_clock_bufg);
  output [0:0]E;
  output [2:0]D;
  output reset_time_out_reg;
  output \FSM_sequential_rx_state_reg[3] ;
  input reset_time_out_reg_0;
  input \FSM_sequential_rx_state_reg[1] ;
  input [3:0]Q;
  input [0:0]\FSM_sequential_rx_state_reg[0] ;
  input \FSM_sequential_rx_state_reg[0]_0 ;
  input \FSM_sequential_rx_state_reg[0]_1 ;
  input reset_time_out_reg_1;
  input \FSM_sequential_rx_state_reg[0]_2 ;
  input \FSM_sequential_rx_state_reg[0]_3 ;
  input time_tlock_max;
  input \FSM_sequential_rx_state_reg[1]_0 ;
  input \FSM_sequential_rx_state_reg[3]_0 ;
  input time_out_wait_bypass_s3;
  input rx_fsm_reset_done_int_reg;
  input mmcm_lock_reclocked;
  input reset_time_out_reg_2;
  input reset_time_out_reg_3;
  input data_in;
  input data_out;
  input independent_clock_bufg;

  wire [2:0]D;
  wire [0:0]E;
  wire \FSM_sequential_rx_state[1]_i_2_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_3_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_5_n_0 ;
  wire [0:0]\FSM_sequential_rx_state_reg[0] ;
  wire \FSM_sequential_rx_state_reg[0]_0 ;
  wire \FSM_sequential_rx_state_reg[0]_1 ;
  wire \FSM_sequential_rx_state_reg[0]_2 ;
  wire \FSM_sequential_rx_state_reg[0]_3 ;
  wire \FSM_sequential_rx_state_reg[1] ;
  wire \FSM_sequential_rx_state_reg[1]_0 ;
  wire \FSM_sequential_rx_state_reg[3] ;
  wire \FSM_sequential_rx_state_reg[3]_0 ;
  wire [3:0]Q;
  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_valid_sync;
  wire independent_clock_bufg;
  wire mmcm_lock_reclocked;
  wire reset_time_out_i_2__0_n_0;
  wire reset_time_out_reg;
  wire reset_time_out_reg_0;
  wire reset_time_out_reg_1;
  wire reset_time_out_reg_2;
  wire reset_time_out_reg_3;
  wire rx_fsm_reset_done_int;
  wire rx_fsm_reset_done_int_i_3_n_0;
  wire rx_fsm_reset_done_int_reg;
  wire time_out_wait_bypass_s3;
  wire time_tlock_max;

  LUT6 #(
    .INIT(64'hFFFFFFFFAABAAAAA)) 
    \FSM_sequential_rx_state[0]_i_1 
       (.I0(\FSM_sequential_rx_state_reg[0]_2 ),
        .I1(Q[1]),
        .I2(\FSM_sequential_rx_state_reg[0]_3 ),
        .I3(reset_time_out_reg_0),
        .I4(time_tlock_max),
        .I5(\FSM_sequential_rx_state[1]_i_2_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0000000034342434)) 
    \FSM_sequential_rx_state[1]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(\FSM_sequential_rx_state_reg[1]_0 ),
        .I5(\FSM_sequential_rx_state[1]_i_2_n_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \FSM_sequential_rx_state[1]_i_2 
       (.I0(Q[3]),
        .I1(\FSM_sequential_rx_state_reg[1] ),
        .I2(reset_time_out_reg_0),
        .I3(data_valid_sync),
        .O(\FSM_sequential_rx_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F2F0FFF0F2)) 
    \FSM_sequential_rx_state[3]_i_1 
       (.I0(Q[1]),
        .I1(\FSM_sequential_rx_state_reg[0] ),
        .I2(\FSM_sequential_rx_state[3]_i_3_n_0 ),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(\FSM_sequential_rx_state_reg[0]_0 ),
        .O(E));
  LUT6 #(
    .INIT(64'hFEF0CC00FEFFCC00)) 
    \FSM_sequential_rx_state[3]_i_2 
       (.I0(\FSM_sequential_rx_state[3]_i_5_n_0 ),
        .I1(\FSM_sequential_rx_state_reg[3]_0 ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(time_out_wait_bypass_s3),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hFFFEFEFE)) 
    \FSM_sequential_rx_state[3]_i_3 
       (.I0(reset_time_out_i_2__0_n_0),
        .I1(\FSM_sequential_rx_state[1]_i_2_n_0 ),
        .I2(\FSM_sequential_rx_state_reg[0]_1 ),
        .I3(reset_time_out_reg_1),
        .I4(Q[0]),
        .O(\FSM_sequential_rx_state[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \FSM_sequential_rx_state[3]_i_5 
       (.I0(data_valid_sync),
        .I1(reset_time_out_reg_0),
        .I2(\FSM_sequential_rx_state_reg[1] ),
        .O(\FSM_sequential_rx_state[3]_i_5_n_0 ));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_out),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_valid_sync),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFEFFFE00)) 
    reset_time_out_i_1__0
       (.I0(reset_time_out_i_2__0_n_0),
        .I1(reset_time_out_reg_2),
        .I2(reset_time_out_reg_1),
        .I3(reset_time_out_reg_3),
        .I4(reset_time_out_reg_0),
        .O(reset_time_out_reg));
  LUT5 #(
    .INIT(32'h33CF00A0)) 
    reset_time_out_i_2__0
       (.I0(mmcm_lock_reclocked),
        .I1(data_valid_sync),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(reset_time_out_i_2__0_n_0));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    rx_fsm_reset_done_int_i_1
       (.I0(rx_fsm_reset_done_int),
        .I1(rx_fsm_reset_done_int_i_3_n_0),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(data_in),
        .O(\FSM_sequential_rx_state_reg[3] ));
  LUT5 #(
    .INIT(32'h00000400)) 
    rx_fsm_reset_done_int_i_2
       (.I0(reset_time_out_reg_0),
        .I1(rx_fsm_reset_done_int_reg),
        .I2(Q[0]),
        .I3(data_valid_sync),
        .I4(Q[2]),
        .O(rx_fsm_reset_done_int));
  LUT6 #(
    .INIT(64'h0C302C3C0C302C30)) 
    rx_fsm_reset_done_int_i_3
       (.I0(rx_fsm_reset_done_int_reg),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(data_valid_sync),
        .I4(reset_time_out_reg_0),
        .I5(\FSM_sequential_rx_state_reg[1] ),
        .O(rx_fsm_reset_done_int_i_3_n_0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sync_block" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_15
   (SR,
    data_out,
    mmcm_locked,
    independent_clock_bufg);
  output [0:0]SR;
  output data_out;
  input mmcm_locked;
  input independent_clock_bufg;

  wire [0:0]SR;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire independent_clock_bufg;
  wire mmcm_locked;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(mmcm_locked),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[7]_i_1__0 
       (.I0(data_out),
        .O(SR));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sync_block" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_16
   (\FSM_sequential_rx_state_reg[1] ,
    Q,
    rxresetdone_s3,
    gt0_pll0lock_in,
    independent_clock_bufg);
  output \FSM_sequential_rx_state_reg[1] ;
  input [2:0]Q;
  input rxresetdone_s3;
  input gt0_pll0lock_in;
  input independent_clock_bufg;

  wire \FSM_sequential_rx_state_reg[1] ;
  wire [2:0]Q;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire gt0_pll0lock_in;
  wire independent_clock_bufg;
  wire pll0lock_sync;
  wire rxresetdone_s3;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_pll0lock_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(pll0lock_sync),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h008800F0)) 
    reset_time_out_i_4__0
       (.I0(Q[0]),
        .I1(rxresetdone_s3),
        .I2(pll0lock_sync),
        .I3(Q[2]),
        .I4(Q[1]),
        .O(\FSM_sequential_rx_state_reg[1] ));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sync_block" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_17
   (data_out,
    data_in,
    userclk);
  output data_out;
  input data_in;
  input userclk;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire userclk;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(userclk),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sync_block" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_18
   (data_out,
    data_in,
    userclk);
  output data_out;
  input data_in;
  input userclk;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire userclk;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(userclk),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sync_block" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_19
   (data_out,
    data_in,
    independent_clock_bufg);
  output data_out;
  input data_in;
  input independent_clock_bufg;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire independent_clock_bufg;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sync_block" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_3
   (data_out,
    status_vector,
    independent_clock_bufg);
  output data_out;
  input [0:0]status_vector;
  input independent_clock_bufg;

  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire independent_clock_bufg;
  wire [0:0]status_vector;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(status_vector),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sync_block" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_6
   (data_out,
    data_in,
    gtrefclk_bufg);
  output data_out;
  input data_in;
  input gtrefclk_bufg;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire gtrefclk_bufg;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sync_block" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_7
   (E,
    reset_time_out_reg,
    \FSM_sequential_tx_state_reg[0] ,
    \FSM_sequential_tx_state_reg[0]_0 ,
    \FSM_sequential_tx_state_reg[0]_1 ,
    \FSM_sequential_tx_state_reg[0]_2 ,
    \FSM_sequential_tx_state_reg[0]_3 ,
    Q,
    mmcm_lock_reclocked,
    \FSM_sequential_tx_state_reg[0]_4 ,
    \FSM_sequential_tx_state_reg[0]_5 ,
    reset_time_out_reg_0,
    \FSM_sequential_tx_state[3]_i_7_0 ,
    \FSM_sequential_tx_state[3]_i_7_1 ,
    reset_time_out_reg_1,
    reset_time_out,
    gt0_pll0lock_in,
    independent_clock_bufg);
  output [0:0]E;
  output reset_time_out_reg;
  input [0:0]\FSM_sequential_tx_state_reg[0] ;
  input \FSM_sequential_tx_state_reg[0]_0 ;
  input \FSM_sequential_tx_state_reg[0]_1 ;
  input \FSM_sequential_tx_state_reg[0]_2 ;
  input \FSM_sequential_tx_state_reg[0]_3 ;
  input [3:0]Q;
  input mmcm_lock_reclocked;
  input \FSM_sequential_tx_state_reg[0]_4 ;
  input \FSM_sequential_tx_state_reg[0]_5 ;
  input reset_time_out_reg_0;
  input \FSM_sequential_tx_state[3]_i_7_0 ;
  input \FSM_sequential_tx_state[3]_i_7_1 ;
  input reset_time_out_reg_1;
  input reset_time_out;
  input gt0_pll0lock_in;
  input independent_clock_bufg;

  wire [0:0]E;
  wire \FSM_sequential_tx_state[3]_i_11_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_6_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_7_0 ;
  wire \FSM_sequential_tx_state[3]_i_7_1 ;
  wire \FSM_sequential_tx_state[3]_i_7_n_0 ;
  wire [0:0]\FSM_sequential_tx_state_reg[0] ;
  wire \FSM_sequential_tx_state_reg[0]_0 ;
  wire \FSM_sequential_tx_state_reg[0]_1 ;
  wire \FSM_sequential_tx_state_reg[0]_2 ;
  wire \FSM_sequential_tx_state_reg[0]_3 ;
  wire \FSM_sequential_tx_state_reg[0]_4 ;
  wire \FSM_sequential_tx_state_reg[0]_5 ;
  wire [3:0]Q;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire gt0_pll0lock_in;
  wire independent_clock_bufg;
  wire mmcm_lock_reclocked;
  wire pll0lock_sync;
  wire reset_time_out;
  wire reset_time_out_i_3_n_0;
  wire reset_time_out_i_4_n_0;
  wire reset_time_out_reg;
  wire reset_time_out_reg_0;
  wire reset_time_out_reg_1;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF01)) 
    \FSM_sequential_tx_state[3]_i_1 
       (.I0(\FSM_sequential_tx_state_reg[0] ),
        .I1(\FSM_sequential_tx_state_reg[0]_0 ),
        .I2(\FSM_sequential_tx_state_reg[0]_1 ),
        .I3(\FSM_sequential_tx_state_reg[0]_2 ),
        .I4(\FSM_sequential_tx_state[3]_i_6_n_0 ),
        .I5(\FSM_sequential_tx_state[3]_i_7_n_0 ),
        .O(E));
  LUT3 #(
    .INIT(8'hBF)) 
    \FSM_sequential_tx_state[3]_i_11 
       (.I0(pll0lock_sync),
        .I1(\FSM_sequential_tx_state[3]_i_7_0 ),
        .I2(\FSM_sequential_tx_state[3]_i_7_1 ),
        .O(\FSM_sequential_tx_state[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000E000)) 
    \FSM_sequential_tx_state[3]_i_6 
       (.I0(pll0lock_sync),
        .I1(\FSM_sequential_tx_state_reg[0]_3 ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\FSM_sequential_tx_state[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000DD000F)) 
    \FSM_sequential_tx_state[3]_i_7 
       (.I0(\FSM_sequential_tx_state_reg[0]_4 ),
        .I1(mmcm_lock_reclocked),
        .I2(\FSM_sequential_tx_state[3]_i_11_n_0 ),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(\FSM_sequential_tx_state_reg[0]_5 ),
        .O(\FSM_sequential_tx_state[3]_i_7_n_0 ));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_pll0lock_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(pll0lock_sync),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hEFE0)) 
    reset_time_out_i_1
       (.I0(reset_time_out_reg_1),
        .I1(reset_time_out_i_3_n_0),
        .I2(reset_time_out_i_4_n_0),
        .I3(reset_time_out),
        .O(reset_time_out_reg));
  LUT6 #(
    .INIT(64'h004F000000440000)) 
    reset_time_out_i_3
       (.I0(Q[2]),
        .I1(pll0lock_sync),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(mmcm_lock_reclocked),
        .O(reset_time_out_i_3_n_0));
  LUT6 #(
    .INIT(64'h0C0C08FF0C0C08FC)) 
    reset_time_out_i_4
       (.I0(pll0lock_sync),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(reset_time_out_reg_0),
        .O(reset_time_out_i_4_n_0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sync_block" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_8
   (data_out,
    data_sync_reg1_0,
    independent_clock_bufg);
  output data_out;
  input data_sync_reg1_0;
  input independent_clock_bufg;

  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_sync_reg1_0;
  wire independent_clock_bufg;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync_reg1_0),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sync_block" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_9
   (SR,
    data_out,
    mmcm_locked,
    independent_clock_bufg);
  output [0:0]SR;
  output data_out;
  input mmcm_locked;
  input independent_clock_bufg;

  wire [0:0]SR;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire independent_clock_bufg;
  wire mmcm_locked;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(mmcm_locked),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[7]_i_1 
       (.I0(data_out),
        .O(SR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_transceiver
   (gt0_pll0reset_out,
    txn,
    txp,
    rxoutclk,
    txoutclk,
    data_in,
    rx_fsm_reset_done_int_reg,
    rxchariscomma,
    rxcharisk,
    Q,
    \rxdata_reg[7]_0 ,
    rxdisperr,
    rxnotintable,
    rxbuferr,
    txbuferr,
    mmcm_reset,
    status_vector,
    independent_clock_bufg,
    userclk2,
    enablealign,
    SR,
    reset_sync5,
    gtrefclk_bufg,
    rxn,
    rxp,
    gt0_pll0outclk_in,
    gt0_pll0outrefclk_in,
    gt0_pll1outclk_in,
    gt0_pll1outrefclk_in,
    userclk,
    mmcm_locked,
    gt0_pll0lock_in,
    pma_reset,
    powerdown,
    D,
    txchardispmode_reg_reg_0,
    txchardispval_reg_reg_0,
    txcharisk_reg_reg_0,
    gt0_pll0refclklost_in);
  output gt0_pll0reset_out;
  output txn;
  output txp;
  output rxoutclk;
  output txoutclk;
  output data_in;
  output rx_fsm_reset_done_int_reg;
  output rxchariscomma;
  output rxcharisk;
  output [1:0]Q;
  output [7:0]\rxdata_reg[7]_0 ;
  output rxdisperr;
  output rxnotintable;
  output rxbuferr;
  output txbuferr;
  output mmcm_reset;
  input [0:0]status_vector;
  input independent_clock_bufg;
  input userclk2;
  input enablealign;
  input [0:0]SR;
  input [0:0]reset_sync5;
  input gtrefclk_bufg;
  input rxn;
  input rxp;
  input gt0_pll0outclk_in;
  input gt0_pll0outrefclk_in;
  input gt0_pll1outclk_in;
  input gt0_pll1outrefclk_in;
  input userclk;
  input mmcm_locked;
  input gt0_pll0lock_in;
  input pma_reset;
  input powerdown;
  input [7:0]D;
  input [0:0]txchardispmode_reg_reg_0;
  input [0:0]txchardispval_reg_reg_0;
  input [0:0]txcharisk_reg_reg_0;
  input gt0_pll0refclklost_in;

  wire [7:0]D;
  wire [1:0]Q;
  wire [0:0]SR;
  wire data_in;
  wire data_valid_reg2;
  wire enablealign;
  wire encommaalign_int;
  wire gt0_pll0lock_in;
  wire gt0_pll0outclk_in;
  wire gt0_pll0outrefclk_in;
  wire gt0_pll0refclklost_in;
  wire gt0_pll0reset_out;
  wire gt0_pll1outclk_in;
  wire gt0_pll1outrefclk_in;
  wire gtrefclk_bufg;
  wire gtwizard_inst_n_6;
  wire gtwizard_inst_n_7;
  wire independent_clock_bufg;
  wire mmcm_locked;
  wire mmcm_reset;
  wire p_0_in;
  wire [7:0]p_1_in;
  wire [0:0]p_1_in__0;
  wire [0:0]p_1_in__1;
  wire [0:0]p_1_in__2;
  wire pma_reset;
  wire powerdown;
  wire reset;
  wire [0:0]reset_sync5;
  wire rx_fsm_reset_done_int_reg;
  wire rxbuferr;
  wire rxchariscomma;
  wire [1:0]rxchariscomma_double;
  wire rxchariscomma_i_1_n_0;
  wire [1:0]rxchariscomma_int;
  wire [1:0]rxchariscomma_reg__0;
  wire rxcharisk;
  wire [1:0]rxcharisk_double;
  wire rxcharisk_i_1_n_0;
  wire [1:0]rxcharisk_int;
  wire [1:0]rxcharisk_reg__0;
  wire [1:0]rxclkcorcnt_double;
  wire [1:0]rxclkcorcnt_int;
  wire [1:0]rxclkcorcnt_reg;
  wire \rxdata[0]_i_1_n_0 ;
  wire \rxdata[1]_i_1_n_0 ;
  wire \rxdata[2]_i_1_n_0 ;
  wire \rxdata[3]_i_1_n_0 ;
  wire \rxdata[4]_i_1_n_0 ;
  wire \rxdata[5]_i_1_n_0 ;
  wire \rxdata[6]_i_1_n_0 ;
  wire \rxdata[7]_i_1_n_0 ;
  wire [15:0]rxdata_double;
  wire [15:0]rxdata_int;
  wire [15:0]rxdata_reg;
  wire [7:0]\rxdata_reg[7]_0 ;
  wire rxdisperr;
  wire [1:0]rxdisperr_double;
  wire rxdisperr_i_1_n_0;
  wire [1:0]rxdisperr_int;
  wire [1:0]rxdisperr_reg__0;
  wire rxn;
  wire rxnotintable;
  wire [1:0]rxnotintable_double;
  wire rxnotintable_i_1_n_0;
  wire [1:0]rxnotintable_int;
  wire [1:0]rxnotintable_reg__0;
  wire rxoutclk;
  wire rxp;
  wire rxpowerdown;
  wire rxpowerdown_double;
  wire rxpowerdown_reg__0;
  wire rxreset_int;
  wire [0:0]status_vector;
  wire toggle;
  wire toggle_i_1_n_0;
  wire txbuferr;
  wire [1:1]txbufstatus_reg;
  wire [1:0]txchardispmode_double;
  wire [1:0]txchardispmode_int;
  wire [0:0]txchardispmode_reg_reg_0;
  wire [1:0]txchardispval_double;
  wire [1:0]txchardispval_int;
  wire [0:0]txchardispval_reg_reg_0;
  wire [1:0]txcharisk_double;
  wire [1:0]txcharisk_int;
  wire [0:0]txcharisk_reg_reg_0;
  wire [15:0]txdata_double;
  wire [15:0]txdata_int;
  wire txn;
  wire txoutclk;
  wire txp;
  wire txpowerdown;
  wire txpowerdown_double;
  wire txpowerdown_reg__0;
  wire txreset_int;
  wire userclk;
  wire userclk2;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_GTWIZARD gtwizard_inst
       (.D(rxclkcorcnt_int),
        .PLL0_RESET_reg(gt0_pll0reset_out),
        .Q(txdata_int),
        .RXBUFSTATUS(gtwizard_inst_n_7),
        .RXPD(rxpowerdown),
        .TXBUFSTATUS(gtwizard_inst_n_6),
        .TXPD(txpowerdown),
        .data_in(data_in),
        .data_out(data_valid_reg2),
        .gt0_gtrxreset_gt_d1_reg(rxreset_int),
        .gt0_pll0lock_in(gt0_pll0lock_in),
        .gt0_pll0outclk_in(gt0_pll0outclk_in),
        .gt0_pll0outrefclk_in(gt0_pll0outrefclk_in),
        .gt0_pll0refclklost_in(gt0_pll0refclklost_in),
        .gt0_pll1outclk_in(gt0_pll1outclk_in),
        .gt0_pll1outrefclk_in(gt0_pll1outrefclk_in),
        .gtpe2_i(rxdata_int),
        .gtpe2_i_0(rxchariscomma_int),
        .gtpe2_i_1(rxcharisk_int),
        .gtpe2_i_2(rxdisperr_int),
        .gtpe2_i_3(rxnotintable_int),
        .gtpe2_i_4(txchardispmode_int),
        .gtpe2_i_5(txchardispval_int),
        .gtpe2_i_6(txcharisk_int),
        .gtpe2_i_7(txreset_int),
        .gtrefclk_bufg(gtrefclk_bufg),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_locked(mmcm_locked),
        .mmcm_reset(mmcm_reset),
        .pma_reset(pma_reset),
        .reset(reset),
        .reset_out(encommaalign_int),
        .rx_fsm_reset_done_int_reg(rx_fsm_reset_done_int_reg),
        .rxn(rxn),
        .rxoutclk(rxoutclk),
        .rxp(rxp),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp),
        .userclk(userclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_reset_sync reclock_encommaalign
       (.enablealign(enablealign),
        .reset_out(encommaalign_int),
        .userclk2(userclk2));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_reset_sync_1 reclock_rxreset
       (.independent_clock_bufg(independent_clock_bufg),
        .reset_out(rxreset_int),
        .reset_sync5_0(reset_sync5));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_reset_sync_2 reclock_txreset
       (.SR(SR),
        .independent_clock_bufg(independent_clock_bufg),
        .reset_out(txreset_int));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_reset_wtd_timer reset_wtd_timer
       (.data_out(data_valid_reg2),
        .independent_clock_bufg(independent_clock_bufg),
        .reset(reset));
  FDRE rxbuferr_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(p_0_in),
        .Q(rxbuferr),
        .R(1'b0));
  FDRE \rxbufstatus_reg_reg[2] 
       (.C(userclk),
        .CE(1'b1),
        .D(gtwizard_inst_n_7),
        .Q(p_0_in),
        .R(1'b0));
  FDRE \rxchariscomma_double_reg[0] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxchariscomma_reg__0[0]),
        .Q(rxchariscomma_double[0]),
        .R(reset_sync5));
  FDRE \rxchariscomma_double_reg[1] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxchariscomma_reg__0[1]),
        .Q(rxchariscomma_double[1]),
        .R(reset_sync5));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rxchariscomma_i_1
       (.I0(rxchariscomma_double[1]),
        .I1(toggle),
        .I2(rxchariscomma_double[0]),
        .O(rxchariscomma_i_1_n_0));
  FDRE rxchariscomma_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(rxchariscomma_i_1_n_0),
        .Q(rxchariscomma),
        .R(reset_sync5));
  FDRE \rxchariscomma_reg_reg[0] 
       (.C(userclk),
        .CE(1'b1),
        .D(rxchariscomma_int[0]),
        .Q(rxchariscomma_reg__0[0]),
        .R(1'b0));
  FDRE \rxchariscomma_reg_reg[1] 
       (.C(userclk),
        .CE(1'b1),
        .D(rxchariscomma_int[1]),
        .Q(rxchariscomma_reg__0[1]),
        .R(1'b0));
  FDRE \rxcharisk_double_reg[0] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxcharisk_reg__0[0]),
        .Q(rxcharisk_double[0]),
        .R(reset_sync5));
  FDRE \rxcharisk_double_reg[1] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxcharisk_reg__0[1]),
        .Q(rxcharisk_double[1]),
        .R(reset_sync5));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rxcharisk_i_1
       (.I0(rxcharisk_double[1]),
        .I1(toggle),
        .I2(rxcharisk_double[0]),
        .O(rxcharisk_i_1_n_0));
  FDRE rxcharisk_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(rxcharisk_i_1_n_0),
        .Q(rxcharisk),
        .R(reset_sync5));
  FDRE \rxcharisk_reg_reg[0] 
       (.C(userclk),
        .CE(1'b1),
        .D(rxcharisk_int[0]),
        .Q(rxcharisk_reg__0[0]),
        .R(1'b0));
  FDRE \rxcharisk_reg_reg[1] 
       (.C(userclk),
        .CE(1'b1),
        .D(rxcharisk_int[1]),
        .Q(rxcharisk_reg__0[1]),
        .R(1'b0));
  FDRE \rxclkcorcnt_double_reg[0] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxclkcorcnt_reg[0]),
        .Q(rxclkcorcnt_double[0]),
        .R(reset_sync5));
  FDRE \rxclkcorcnt_double_reg[1] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxclkcorcnt_reg[1]),
        .Q(rxclkcorcnt_double[1]),
        .R(reset_sync5));
  FDRE \rxclkcorcnt_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(rxclkcorcnt_double[0]),
        .Q(Q[0]),
        .R(reset_sync5));
  FDRE \rxclkcorcnt_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(rxclkcorcnt_double[1]),
        .Q(Q[1]),
        .R(reset_sync5));
  FDRE \rxclkcorcnt_reg_reg[0] 
       (.C(userclk),
        .CE(1'b1),
        .D(rxclkcorcnt_int[0]),
        .Q(rxclkcorcnt_reg[0]),
        .R(1'b0));
  FDRE \rxclkcorcnt_reg_reg[1] 
       (.C(userclk),
        .CE(1'b1),
        .D(rxclkcorcnt_int[1]),
        .Q(rxclkcorcnt_reg[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata[0]_i_1 
       (.I0(rxdata_double[8]),
        .I1(toggle),
        .I2(rxdata_double[0]),
        .O(\rxdata[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata[1]_i_1 
       (.I0(rxdata_double[9]),
        .I1(toggle),
        .I2(rxdata_double[1]),
        .O(\rxdata[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata[2]_i_1 
       (.I0(rxdata_double[10]),
        .I1(toggle),
        .I2(rxdata_double[2]),
        .O(\rxdata[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata[3]_i_1 
       (.I0(rxdata_double[11]),
        .I1(toggle),
        .I2(rxdata_double[3]),
        .O(\rxdata[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata[4]_i_1 
       (.I0(rxdata_double[12]),
        .I1(toggle),
        .I2(rxdata_double[4]),
        .O(\rxdata[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata[5]_i_1 
       (.I0(rxdata_double[13]),
        .I1(toggle),
        .I2(rxdata_double[5]),
        .O(\rxdata[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata[6]_i_1 
       (.I0(rxdata_double[14]),
        .I1(toggle),
        .I2(rxdata_double[6]),
        .O(\rxdata[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata[7]_i_1 
       (.I0(rxdata_double[15]),
        .I1(toggle),
        .I2(rxdata_double[7]),
        .O(\rxdata[7]_i_1_n_0 ));
  FDRE \rxdata_double_reg[0] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[0]),
        .Q(rxdata_double[0]),
        .R(reset_sync5));
  FDRE \rxdata_double_reg[10] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[10]),
        .Q(rxdata_double[10]),
        .R(reset_sync5));
  FDRE \rxdata_double_reg[11] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[11]),
        .Q(rxdata_double[11]),
        .R(reset_sync5));
  FDRE \rxdata_double_reg[12] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[12]),
        .Q(rxdata_double[12]),
        .R(reset_sync5));
  FDRE \rxdata_double_reg[13] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[13]),
        .Q(rxdata_double[13]),
        .R(reset_sync5));
  FDRE \rxdata_double_reg[14] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[14]),
        .Q(rxdata_double[14]),
        .R(reset_sync5));
  FDRE \rxdata_double_reg[15] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[15]),
        .Q(rxdata_double[15]),
        .R(reset_sync5));
  FDRE \rxdata_double_reg[1] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[1]),
        .Q(rxdata_double[1]),
        .R(reset_sync5));
  FDRE \rxdata_double_reg[2] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[2]),
        .Q(rxdata_double[2]),
        .R(reset_sync5));
  FDRE \rxdata_double_reg[3] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[3]),
        .Q(rxdata_double[3]),
        .R(reset_sync5));
  FDRE \rxdata_double_reg[4] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[4]),
        .Q(rxdata_double[4]),
        .R(reset_sync5));
  FDRE \rxdata_double_reg[5] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[5]),
        .Q(rxdata_double[5]),
        .R(reset_sync5));
  FDRE \rxdata_double_reg[6] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[6]),
        .Q(rxdata_double[6]),
        .R(reset_sync5));
  FDRE \rxdata_double_reg[7] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[7]),
        .Q(rxdata_double[7]),
        .R(reset_sync5));
  FDRE \rxdata_double_reg[8] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[8]),
        .Q(rxdata_double[8]),
        .R(reset_sync5));
  FDRE \rxdata_double_reg[9] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[9]),
        .Q(rxdata_double[9]),
        .R(reset_sync5));
  FDRE \rxdata_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\rxdata[0]_i_1_n_0 ),
        .Q(\rxdata_reg[7]_0 [0]),
        .R(reset_sync5));
  FDRE \rxdata_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\rxdata[1]_i_1_n_0 ),
        .Q(\rxdata_reg[7]_0 [1]),
        .R(reset_sync5));
  FDRE \rxdata_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\rxdata[2]_i_1_n_0 ),
        .Q(\rxdata_reg[7]_0 [2]),
        .R(reset_sync5));
  FDRE \rxdata_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\rxdata[3]_i_1_n_0 ),
        .Q(\rxdata_reg[7]_0 [3]),
        .R(reset_sync5));
  FDRE \rxdata_reg[4] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\rxdata[4]_i_1_n_0 ),
        .Q(\rxdata_reg[7]_0 [4]),
        .R(reset_sync5));
  FDRE \rxdata_reg[5] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\rxdata[5]_i_1_n_0 ),
        .Q(\rxdata_reg[7]_0 [5]),
        .R(reset_sync5));
  FDRE \rxdata_reg[6] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\rxdata[6]_i_1_n_0 ),
        .Q(\rxdata_reg[7]_0 [6]),
        .R(reset_sync5));
  FDRE \rxdata_reg[7] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\rxdata[7]_i_1_n_0 ),
        .Q(\rxdata_reg[7]_0 [7]),
        .R(reset_sync5));
  FDRE \rxdata_reg_reg[0] 
       (.C(userclk),
        .CE(1'b1),
        .D(rxdata_int[0]),
        .Q(rxdata_reg[0]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[10] 
       (.C(userclk),
        .CE(1'b1),
        .D(rxdata_int[10]),
        .Q(rxdata_reg[10]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[11] 
       (.C(userclk),
        .CE(1'b1),
        .D(rxdata_int[11]),
        .Q(rxdata_reg[11]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[12] 
       (.C(userclk),
        .CE(1'b1),
        .D(rxdata_int[12]),
        .Q(rxdata_reg[12]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[13] 
       (.C(userclk),
        .CE(1'b1),
        .D(rxdata_int[13]),
        .Q(rxdata_reg[13]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[14] 
       (.C(userclk),
        .CE(1'b1),
        .D(rxdata_int[14]),
        .Q(rxdata_reg[14]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[15] 
       (.C(userclk),
        .CE(1'b1),
        .D(rxdata_int[15]),
        .Q(rxdata_reg[15]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[1] 
       (.C(userclk),
        .CE(1'b1),
        .D(rxdata_int[1]),
        .Q(rxdata_reg[1]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[2] 
       (.C(userclk),
        .CE(1'b1),
        .D(rxdata_int[2]),
        .Q(rxdata_reg[2]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[3] 
       (.C(userclk),
        .CE(1'b1),
        .D(rxdata_int[3]),
        .Q(rxdata_reg[3]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[4] 
       (.C(userclk),
        .CE(1'b1),
        .D(rxdata_int[4]),
        .Q(rxdata_reg[4]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[5] 
       (.C(userclk),
        .CE(1'b1),
        .D(rxdata_int[5]),
        .Q(rxdata_reg[5]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[6] 
       (.C(userclk),
        .CE(1'b1),
        .D(rxdata_int[6]),
        .Q(rxdata_reg[6]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[7] 
       (.C(userclk),
        .CE(1'b1),
        .D(rxdata_int[7]),
        .Q(rxdata_reg[7]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[8] 
       (.C(userclk),
        .CE(1'b1),
        .D(rxdata_int[8]),
        .Q(rxdata_reg[8]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[9] 
       (.C(userclk),
        .CE(1'b1),
        .D(rxdata_int[9]),
        .Q(rxdata_reg[9]),
        .R(1'b0));
  FDRE \rxdisperr_double_reg[0] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdisperr_reg__0[0]),
        .Q(rxdisperr_double[0]),
        .R(reset_sync5));
  FDRE \rxdisperr_double_reg[1] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdisperr_reg__0[1]),
        .Q(rxdisperr_double[1]),
        .R(reset_sync5));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rxdisperr_i_1
       (.I0(rxdisperr_double[1]),
        .I1(toggle),
        .I2(rxdisperr_double[0]),
        .O(rxdisperr_i_1_n_0));
  FDRE rxdisperr_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(rxdisperr_i_1_n_0),
        .Q(rxdisperr),
        .R(reset_sync5));
  FDRE \rxdisperr_reg_reg[0] 
       (.C(userclk),
        .CE(1'b1),
        .D(rxdisperr_int[0]),
        .Q(rxdisperr_reg__0[0]),
        .R(1'b0));
  FDRE \rxdisperr_reg_reg[1] 
       (.C(userclk),
        .CE(1'b1),
        .D(rxdisperr_int[1]),
        .Q(rxdisperr_reg__0[1]),
        .R(1'b0));
  FDRE \rxnotintable_double_reg[0] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxnotintable_reg__0[0]),
        .Q(rxnotintable_double[0]),
        .R(reset_sync5));
  FDRE \rxnotintable_double_reg[1] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxnotintable_reg__0[1]),
        .Q(rxnotintable_double[1]),
        .R(reset_sync5));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rxnotintable_i_1
       (.I0(rxnotintable_double[1]),
        .I1(toggle),
        .I2(rxnotintable_double[0]),
        .O(rxnotintable_i_1_n_0));
  FDRE rxnotintable_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(rxnotintable_i_1_n_0),
        .Q(rxnotintable),
        .R(reset_sync5));
  FDRE \rxnotintable_reg_reg[0] 
       (.C(userclk),
        .CE(1'b1),
        .D(rxnotintable_int[0]),
        .Q(rxnotintable_reg__0[0]),
        .R(1'b0));
  FDRE \rxnotintable_reg_reg[1] 
       (.C(userclk),
        .CE(1'b1),
        .D(rxnotintable_int[1]),
        .Q(rxnotintable_reg__0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rxpowerdown_double_reg
       (.C(userclk2),
        .CE(toggle),
        .D(rxpowerdown_reg__0),
        .Q(rxpowerdown_double),
        .R(reset_sync5));
  FDRE #(
    .INIT(1'b0)) 
    rxpowerdown_reg
       (.C(userclk),
        .CE(1'b1),
        .D(rxpowerdown_double),
        .Q(rxpowerdown),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rxpowerdown_reg_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(powerdown),
        .Q(rxpowerdown_reg__0),
        .R(reset_sync5));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_3 sync_block_data_valid
       (.data_out(data_valid_reg2),
        .independent_clock_bufg(independent_clock_bufg),
        .status_vector(status_vector));
  LUT1 #(
    .INIT(2'h1)) 
    toggle_i_1
       (.I0(toggle),
        .O(toggle_i_1_n_0));
  FDRE toggle_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(toggle_i_1_n_0),
        .Q(toggle),
        .R(SR));
  FDRE txbuferr_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(txbufstatus_reg),
        .Q(txbuferr),
        .R(1'b0));
  FDRE \txbufstatus_reg_reg[1] 
       (.C(userclk),
        .CE(1'b1),
        .D(gtwizard_inst_n_6),
        .Q(txbufstatus_reg),
        .R(1'b0));
  FDRE \txchardispmode_double_reg[0] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(p_1_in__0),
        .Q(txchardispmode_double[0]),
        .R(SR));
  FDRE \txchardispmode_double_reg[1] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txchardispmode_reg_reg_0),
        .Q(txchardispmode_double[1]),
        .R(SR));
  FDRE \txchardispmode_int_reg[0] 
       (.C(userclk),
        .CE(1'b1),
        .D(txchardispmode_double[0]),
        .Q(txchardispmode_int[0]),
        .R(1'b0));
  FDRE \txchardispmode_int_reg[1] 
       (.C(userclk),
        .CE(1'b1),
        .D(txchardispmode_double[1]),
        .Q(txchardispmode_int[1]),
        .R(1'b0));
  FDRE txchardispmode_reg_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(txchardispmode_reg_reg_0),
        .Q(p_1_in__0),
        .R(SR));
  FDRE \txchardispval_double_reg[0] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(p_1_in__1),
        .Q(txchardispval_double[0]),
        .R(SR));
  FDRE \txchardispval_double_reg[1] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txchardispval_reg_reg_0),
        .Q(txchardispval_double[1]),
        .R(SR));
  FDRE \txchardispval_int_reg[0] 
       (.C(userclk),
        .CE(1'b1),
        .D(txchardispval_double[0]),
        .Q(txchardispval_int[0]),
        .R(1'b0));
  FDRE \txchardispval_int_reg[1] 
       (.C(userclk),
        .CE(1'b1),
        .D(txchardispval_double[1]),
        .Q(txchardispval_int[1]),
        .R(1'b0));
  FDRE txchardispval_reg_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(txchardispval_reg_reg_0),
        .Q(p_1_in__1),
        .R(SR));
  FDRE \txcharisk_double_reg[0] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(p_1_in__2),
        .Q(txcharisk_double[0]),
        .R(SR));
  FDRE \txcharisk_double_reg[1] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txcharisk_reg_reg_0),
        .Q(txcharisk_double[1]),
        .R(SR));
  FDRE \txcharisk_int_reg[0] 
       (.C(userclk),
        .CE(1'b1),
        .D(txcharisk_double[0]),
        .Q(txcharisk_int[0]),
        .R(1'b0));
  FDRE \txcharisk_int_reg[1] 
       (.C(userclk),
        .CE(1'b1),
        .D(txcharisk_double[1]),
        .Q(txcharisk_int[1]),
        .R(1'b0));
  FDRE txcharisk_reg_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(txcharisk_reg_reg_0),
        .Q(p_1_in__2),
        .R(SR));
  FDRE \txdata_double_reg[0] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(p_1_in[0]),
        .Q(txdata_double[0]),
        .R(SR));
  FDRE \txdata_double_reg[10] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(D[2]),
        .Q(txdata_double[10]),
        .R(SR));
  FDRE \txdata_double_reg[11] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(D[3]),
        .Q(txdata_double[11]),
        .R(SR));
  FDRE \txdata_double_reg[12] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(D[4]),
        .Q(txdata_double[12]),
        .R(SR));
  FDRE \txdata_double_reg[13] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(D[5]),
        .Q(txdata_double[13]),
        .R(SR));
  FDRE \txdata_double_reg[14] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(D[6]),
        .Q(txdata_double[14]),
        .R(SR));
  FDRE \txdata_double_reg[15] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(D[7]),
        .Q(txdata_double[15]),
        .R(SR));
  FDRE \txdata_double_reg[1] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(p_1_in[1]),
        .Q(txdata_double[1]),
        .R(SR));
  FDRE \txdata_double_reg[2] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(p_1_in[2]),
        .Q(txdata_double[2]),
        .R(SR));
  FDRE \txdata_double_reg[3] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(p_1_in[3]),
        .Q(txdata_double[3]),
        .R(SR));
  FDRE \txdata_double_reg[4] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(p_1_in[4]),
        .Q(txdata_double[4]),
        .R(SR));
  FDRE \txdata_double_reg[5] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(p_1_in[5]),
        .Q(txdata_double[5]),
        .R(SR));
  FDRE \txdata_double_reg[6] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(p_1_in[6]),
        .Q(txdata_double[6]),
        .R(SR));
  FDRE \txdata_double_reg[7] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(p_1_in[7]),
        .Q(txdata_double[7]),
        .R(SR));
  FDRE \txdata_double_reg[8] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(D[0]),
        .Q(txdata_double[8]),
        .R(SR));
  FDRE \txdata_double_reg[9] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(D[1]),
        .Q(txdata_double[9]),
        .R(SR));
  FDRE \txdata_int_reg[0] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[0]),
        .Q(txdata_int[0]),
        .R(1'b0));
  FDRE \txdata_int_reg[10] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[10]),
        .Q(txdata_int[10]),
        .R(1'b0));
  FDRE \txdata_int_reg[11] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[11]),
        .Q(txdata_int[11]),
        .R(1'b0));
  FDRE \txdata_int_reg[12] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[12]),
        .Q(txdata_int[12]),
        .R(1'b0));
  FDRE \txdata_int_reg[13] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[13]),
        .Q(txdata_int[13]),
        .R(1'b0));
  FDRE \txdata_int_reg[14] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[14]),
        .Q(txdata_int[14]),
        .R(1'b0));
  FDRE \txdata_int_reg[15] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[15]),
        .Q(txdata_int[15]),
        .R(1'b0));
  FDRE \txdata_int_reg[1] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[1]),
        .Q(txdata_int[1]),
        .R(1'b0));
  FDRE \txdata_int_reg[2] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[2]),
        .Q(txdata_int[2]),
        .R(1'b0));
  FDRE \txdata_int_reg[3] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[3]),
        .Q(txdata_int[3]),
        .R(1'b0));
  FDRE \txdata_int_reg[4] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[4]),
        .Q(txdata_int[4]),
        .R(1'b0));
  FDRE \txdata_int_reg[5] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[5]),
        .Q(txdata_int[5]),
        .R(1'b0));
  FDRE \txdata_int_reg[6] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[6]),
        .Q(txdata_int[6]),
        .R(1'b0));
  FDRE \txdata_int_reg[7] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[7]),
        .Q(txdata_int[7]),
        .R(1'b0));
  FDRE \txdata_int_reg[8] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[8]),
        .Q(txdata_int[8]),
        .R(1'b0));
  FDRE \txdata_int_reg[9] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[9]),
        .Q(txdata_int[9]),
        .R(1'b0));
  FDRE \txdata_reg_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(D[0]),
        .Q(p_1_in[0]),
        .R(SR));
  FDRE \txdata_reg_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(D[1]),
        .Q(p_1_in[1]),
        .R(SR));
  FDRE \txdata_reg_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(D[2]),
        .Q(p_1_in[2]),
        .R(SR));
  FDRE \txdata_reg_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(D[3]),
        .Q(p_1_in[3]),
        .R(SR));
  FDRE \txdata_reg_reg[4] 
       (.C(userclk2),
        .CE(1'b1),
        .D(D[4]),
        .Q(p_1_in[4]),
        .R(SR));
  FDRE \txdata_reg_reg[5] 
       (.C(userclk2),
        .CE(1'b1),
        .D(D[5]),
        .Q(p_1_in[5]),
        .R(SR));
  FDRE \txdata_reg_reg[6] 
       (.C(userclk2),
        .CE(1'b1),
        .D(D[6]),
        .Q(p_1_in[6]),
        .R(SR));
  FDRE \txdata_reg_reg[7] 
       (.C(userclk2),
        .CE(1'b1),
        .D(D[7]),
        .Q(p_1_in[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    txpowerdown_double_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(txpowerdown_reg__0),
        .Q(txpowerdown_double),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    txpowerdown_reg
       (.C(userclk),
        .CE(1'b1),
        .D(txpowerdown_double),
        .Q(txpowerdown),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    txpowerdown_reg_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(powerdown),
        .Q(txpowerdown_reg__0),
        .R(SR));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
AdcDLwZ0nnGzv5TDcZbvmo8juh/L7r5Ln9QY2yUn5cTlzy2XcpcLQGayMi2crxIOdsY0a0j06BBh
2G0Yx7+mmSCP8wBaCbZNdl9q6RkxtPSh6WAuSHXm6uCtOYYpNi8vS/HdDMnXPMzt3RbsKYIqV7TA
uwYWzyNkbHn95y3mdm4=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LWithB7I+qbCaWfpMubGNmSmgHQTq4UYcDCxKCGZmRe46zK0DYPMwqa5GFnuRTd3FLcOqJPS6XmG
upS2SKFium4YLYLo2TTqX4ynd/rCINfdlmkH8Qf0clbCGWyqDGZmilIblfHxH7pWFLRAkqEKfoPs
LcZnpqZSTfxd6NvWF1HzqDAdN8ul5soqkijwDoTeZgpCRISABxo2X+9pbEvxjIii8YJOTjOfgD9d
9oBJaUUuqzT410kXBpw5o92pxO1hRDwoBn1ADzSBD1ph1lPeA+sdioNX0AksR5VXueFkh49q2FLS
t8lv0fFY+H6zKnqaskZOCHhBv7SBQMJbhdZGtA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
rCud1181VYLRaXsjLGfLdVX3LCQlqn2v6niJakuMmKtjkJzI7B9gFJS3sqSNHbeZuKa1WgAzjHbs
782/OQwcUiZSzte8OOnp/Ncp5cBb1D/xqmyQCfF12Ev667AiqPOetB4/oQ8cjkL4smwUIaYhz33w
EIG3XPA9IdRjvXrNxe4=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DXao4pfwceV66rnzLhbOfqmEARlTM4vKYGyYX4E6d7LJsoPz+gxCUvB/ViSTAiO7RS8+AtiCVzLZ
ToDGmWLZ4Ze5wnDFZ416NMZyj6n+CgQm7XCNiJ5Alp6cqYuV8darL2RZKuXwALEROzxzzmIp25N2
8wzECnSVhSRxY/P5zFjz1E1jmZThbqx9s4Srrn1WxvGbaQQgeiMJFS6ZpOsFA8cQNzr+QST0cC8m
4fIj4W1v8Rq8IX474kT+xHw4tl5NNtLolLik2M+XcmGtoiImAcx4CN/8bamFysZlQXeUZYaiEAZh
ZRMAiBpNffv6cRi4gIxPFCm8eUyAznmrF2wQIg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UErr2ZCX/IFyYtSnmq21xHIJzK4+4p+E/FlW18iDcl2SLC/5hvI+kxU5WVAITsumau6B/okZ+uAL
vTFiJ18TQFW4M8sTAJo2HkDbz73ZRfokFv7xtgutGQIIsQ5q4BAOhooZUGqJ5aMv6WnC1ospr7ZA
F9lU5AprL4BnKLOBlA6KhGqIsvDscYzJ7fh0xyAXygRmYqCznbpNsHq0CXSbDefZUzg/LV99Fx12
geJxiAoaqchO+zxvkQH62W8ePXjE9m033DZjTHwPLnf/xwfSTVf0RSilZSo5X4RTScvvLhKbNCjv
n+Cmqtm/8rFjZg4rYBq8L3YhS1yI9zjpcotZug==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
A1+dG2S8/AoEy9EHY7xRy9I662+w0enYmA14dFejc491yGTFjnX6NNCtrTPTeCG78F1eJ0GN3DBo
FFvmEzFRDt6BF0Fzo+Ihcur3Bp0wusHy9eDlmWgPMvgoCf/wMpQogUXl/TsKSPfCKY9dZMAH8J4w
LP1dHzM9UeTQEqXl2DnwexGtOjb12cDa8hz7yD4/Ba9V0yvxilbqUBnszG6rRD/Qll1H7caly9Ni
N/9yZ5MYDJWR8RfVaq2R5v9aq6M9WTmitR5cN3JYnF72dCZ2GCjQIdX5sICewDfvOWqjQQeTBVtk
adNzZ5GKBoOxvp1c6nmeDnxaHBj3nj9a5FkZAw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KV/m9P9ZrqO7ZtXWWh19rPE5KmzOSDOzchxMolLN0TOl1YJxOsjrsWQ7/7pSQeESCAhu6cyQdOaI
yEcXjmHS4ohphSRR1HzPNar6mbaIc788TZqD+snPS5lT8jg0KMmJV3ULX2jYR1V7zIEy2nV79ho0
Y+aY4ZQHH4qRGVLhjX4gOBRUWJeDhDj8x2siH82nPaUZewwdP7RxElbypiopDx0PkruBXBap8Jwg
S27bALei3+ug5bMEK6Okfx8ReSbLiEYLOSkrwOZ0dCnSQmdAKQ1Wmn9YOes2Y1JbTM6lpyyjxnAK
FVzvhMLIEr9e0ybWMhOk575AKmEu+zO5tp5/rQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
G6jT5kkJYq9kHrjRy2NNDAsJwMcUAxTTSDBc1UGyogRouKd/lQ5TrsaxZU7PdQh4+dLMeAb9GTLN
mUF8VDY7TLE+VIdh4oqI5jJKSyh/hW6kFTVPXQgpTBTVbAysDLd5LTt2MTustEmSUd4ufdKqddSp
GRr8yaSfEQqW9P2gfYHOa4o2BgLrJ5tcVDhlgpTJTdW3Xq+Tx+ykDNpCOrJidKIkrnFdWB0UrYEQ
b2MLBNiPMJcDw6PTvYJ9TOH3DFNc4OgI1nU4COcSYU+gpMb8AYJKAGANknJ/tHb70W3b7RbY0ve+
TraEXB9+FfAl6T05Ksa1x+20LiqE+4bgfnPrEWI74oiGHYqe7WB+Bxis9Hbxqr5O2rpJ8I8GW6kR
o7iv49fdM+Nh17Y5fG+KgZ2I4azS7VdSoh7wydOFxSOo1I4MfeFa4W6S4n1IqlFWY/8tqkdoCLQP
XdLEWVESPK3ZCMUSa+w+msjGOeNZUy09Y+EiyY5y0UnTWur8/zFlfNBa

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XjuQri0CC9+3HgQKoYZx1bqSi79+B9g7kl/OOfe9fhHATgKwWKNx3svOkQqIdltwth7Dgiqf6d03
nVvr+gr2gHrFN7N0qa/uYh7vmVE1xGjXxyY7uyhsOR6LfugO9ki8lOO1++c2LQKxHDgQ8hKm1PLQ
kvb09oGJMMweKMiCcJ/10FvMQsr9/Ri8SFRet+X6HMBnAQkse7CEgjSB/F/kDDo+CDVVxJjFCFVE
Zxld+zWy9pSMeowKQUXwJsnG6u62+xe7Gh+A39kx25rfKNzxbzthIytOe6sCDvK7SFqpTRR8iHMw
7BSn6KHEY193DPwdHu2NKrAxLTlU59GaIHt0Og==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
xGKAIp/zmGrqlX57+IX8XiGsjdabkGADEJN+w1lpy1sOY8U687dSP/S+3A9LB+dxFopDf9evM+aJ
zfnPIRs88b+XNcr30VFsUKqol8/l8dKE335VUM7/KqjzoDeO9Im074rcNTNkrGihkLZg29+nc663
3Mp81nCgqIy0CjdjjNagQoybIfJypyUstIRQoUDgYy5+XFkOhi+YfLWplurnmVQMniJRgI6O/1Wy
W9Pz2Vp/coIqghLJ6rWwpcyelSEFsZohmhx5ISmWXdy1cJiJdAovZ30l1BoFu/YNw7R1Pqj9XEcl
HpPbXJK4OJ5Dq0kDlRkDoMsGGOwDymAnxmHP9w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
E2NG2WE/XLIrTJ//5zp4MZShIlYUEv9C8pP6NLFXlu83G5ifj6iYac4aMWAf+vzNST79R1A5mtMV
N2NIrv0Qv8LKRziZAPxeN6IJ7god6ZYYAJAISE2uuOcUD9vNDXnbKF9j6gngTchOzQxAi7V3sTzT
c/Van++s7tDuKNrW7ySkgAXZGz/DVfGWD8vCrKbR///Pfr4B3G1uu4w7je1FwfY2zgdFIgWn15gY
PHv2bhn60bFHlcjaKKH5VtCFbN76jdD182AP91tB9cTsYHQypzg6MGu99UwjP+b225lPmH5xHuBk
mKPETCrQgu1JNXUt6YUv/ZwMr0C4waD0BcvelA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 320176)
`pragma protect data_block
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
k/O/FpH8Nw==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
