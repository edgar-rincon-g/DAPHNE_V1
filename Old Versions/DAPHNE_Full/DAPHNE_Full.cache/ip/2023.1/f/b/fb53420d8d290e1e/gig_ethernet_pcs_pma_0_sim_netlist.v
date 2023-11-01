// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Mon Oct 23 13:21:28 2023
// Host        : danielA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ gig_ethernet_pcs_pma_0_sim_netlist.v
// Design      : gig_ethernet_pcs_pma_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* EXAMPLE_SIMULATION = "0" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "gig_ethernet_pcs_pma_v16_2_12,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (gtrefclk_p,
    gtrefclk_n,
    gtrefclk_out,
    gtrefclk_bufg_out,
    txp,
    txn,
    rxp,
    rxn,
    resetdone,
    userclk_out,
    userclk2_out,
    rxuserclk_out,
    rxuserclk2_out,
    pma_reset_out,
    mmcm_locked_out,
    independent_clock_bufg,
    gmii_txd,
    gmii_tx_en,
    gmii_tx_er,
    gmii_rxd,
    gmii_rx_dv,
    gmii_rx_er,
    gmii_isolate,
    configuration_vector,
    an_interrupt,
    an_adv_config_vector,
    an_restart_config,
    status_vector,
    reset,
    signal_detect,
    gt0_pll0outclk_out,
    gt0_pll0outrefclk_out,
    gt0_pll1outclk_out,
    gt0_pll1outrefclk_out,
    gt0_pll0refclklost_out,
    gt0_pll0lock_out);
  input gtrefclk_p;
  input gtrefclk_n;
  output gtrefclk_out;
  output gtrefclk_bufg_out;
  output txp;
  output txn;
  input rxp;
  input rxn;
  output resetdone;
  output userclk_out;
  output userclk2_out;
  output rxuserclk_out;
  output rxuserclk2_out;
  output pma_reset_out;
  output mmcm_locked_out;
  input independent_clock_bufg;
  input [7:0]gmii_txd;
  input gmii_tx_en;
  input gmii_tx_er;
  output [7:0]gmii_rxd;
  output gmii_rx_dv;
  output gmii_rx_er;
  output gmii_isolate;
  input [4:0]configuration_vector;
  output an_interrupt;
  input [15:0]an_adv_config_vector;
  input an_restart_config;
  output [15:0]status_vector;
  input reset;
  input signal_detect;
  output gt0_pll0outclk_out;
  output gt0_pll0outrefclk_out;
  output gt0_pll1outclk_out;
  output gt0_pll1outrefclk_out;
  output gt0_pll0refclklost_out;
  output gt0_pll0lock_out;

  wire \<const0> ;
  wire \<const1> ;
  wire [15:0]an_adv_config_vector;
  wire an_interrupt;
  wire an_restart_config;
  wire [4:0]configuration_vector;
  wire gmii_isolate;
  wire gmii_rx_dv;
  wire gmii_rx_er;
  wire [7:0]gmii_rxd;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire [7:0]gmii_txd;
  wire gt0_pll0lock_out;
  wire gt0_pll0outclk_out;
  wire gt0_pll0outrefclk_out;
  wire gt0_pll0refclklost_out;
  wire gt0_pll1outclk_out;
  wire gt0_pll1outrefclk_out;
  wire gtrefclk_bufg_out;
  wire gtrefclk_n;
  wire gtrefclk_out;
  wire gtrefclk_p;
  wire independent_clock_bufg;
  wire mmcm_locked_out;
  wire pma_reset_out;
  wire reset;
  wire resetdone;
  wire rxn;
  wire rxp;
  wire rxuserclk2_out;
  wire rxuserclk_out;
  wire signal_detect;
  wire [15:0]\^status_vector ;
  wire txn;
  wire txp;
  wire userclk2_out;
  wire userclk_out;
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_support U0
       (.an_adv_config_vector({an_adv_config_vector[15],1'b0,an_adv_config_vector[13:11],1'b0,1'b0,an_adv_config_vector[8:7],1'b0,an_adv_config_vector[5],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .an_interrupt(an_interrupt),
        .an_restart_config(an_restart_config),
        .configuration_vector(configuration_vector),
        .gmii_isolate(gmii_isolate),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_er(gmii_rx_er),
        .gmii_rxd(gmii_rxd),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_er(gmii_tx_er),
        .gmii_txd(gmii_txd),
        .gt0_pll0lock_out(gt0_pll0lock_out),
        .gt0_pll0outclk_out(gt0_pll0outclk_out),
        .gt0_pll0outrefclk_out(gt0_pll0outrefclk_out),
        .gt0_pll0refclklost_out(gt0_pll0refclklost_out),
        .gt0_pll1outclk_out(gt0_pll1outclk_out),
        .gt0_pll1outrefclk_out(gt0_pll1outrefclk_out),
        .gtrefclk_bufg_out(gtrefclk_bufg_out),
        .gtrefclk_n(gtrefclk_n),
        .gtrefclk_out(gtrefclk_out),
        .gtrefclk_p(gtrefclk_p),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_locked_out(mmcm_locked_out),
        .pma_reset_out(pma_reset_out),
        .reset(reset),
        .resetdone(resetdone),
        .rxn(rxn),
        .rxp(rxp),
        .rxuserclk2_out(rxuserclk2_out),
        .rxuserclk_out(rxuserclk_out),
        .signal_detect(signal_detect),
        .status_vector(\^status_vector ),
        .txn(txn),
        .txp(txp),
        .userclk2_out(userclk2_out),
        .userclk_out(userclk_out));
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
    CLK,
    rxn,
    rxp,
    gt0_pll0outclk_out,
    gt0_pll0outrefclk_out,
    gt0_pll1outclk_out,
    gt0_pll1outrefclk_out,
    reset_out,
    reset,
    gtpe2_i_4,
    TXPD,
    RXPD,
    Q,
    gtpe2_i_5,
    gtpe2_i_6,
    gtpe2_i_7,
    independent_clock_bufg,
    out,
    gt0_gtrxreset_gt_d1_reg,
    gtpe2_i_8,
    gt0_pll0refclklost_out,
    data_sync_reg1,
    gt0_pll0lock_out,
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
  input CLK;
  input rxn;
  input rxp;
  input gt0_pll0outclk_out;
  input gt0_pll0outrefclk_out;
  input gt0_pll1outclk_out;
  input gt0_pll1outrefclk_out;
  input reset_out;
  input reset;
  input gtpe2_i_4;
  input [0:0]TXPD;
  input [0:0]RXPD;
  input [15:0]Q;
  input [1:0]gtpe2_i_5;
  input [1:0]gtpe2_i_6;
  input [1:0]gtpe2_i_7;
  input independent_clock_bufg;
  input [0:0]out;
  input gt0_gtrxreset_gt_d1_reg;
  input gtpe2_i_8;
  input gt0_pll0refclklost_out;
  input data_sync_reg1;
  input gt0_pll0lock_out;
  input data_out;

  wire CLK;
  wire [1:0]D;
  wire PLL0_RESET_reg;
  wire [15:0]Q;
  wire [0:0]RXBUFSTATUS;
  wire [0:0]RXPD;
  wire [0:0]TXBUFSTATUS;
  wire [0:0]TXPD;
  wire data_in;
  wire data_out;
  wire data_sync_reg1;
  wire gt0_gtrxreset_gt_d1_reg;
  wire gt0_pll0lock_out;
  wire gt0_pll0outclk_out;
  wire gt0_pll0outrefclk_out;
  wire gt0_pll0refclklost_out;
  wire gt0_pll1outclk_out;
  wire gt0_pll1outrefclk_out;
  wire [15:0]gtpe2_i;
  wire [1:0]gtpe2_i_0;
  wire [1:0]gtpe2_i_1;
  wire [1:0]gtpe2_i_2;
  wire [1:0]gtpe2_i_3;
  wire gtpe2_i_4;
  wire [1:0]gtpe2_i_5;
  wire [1:0]gtpe2_i_6;
  wire [1:0]gtpe2_i_7;
  wire gtpe2_i_8;
  wire independent_clock_bufg;
  wire mmcm_reset;
  wire [0:0]out;
  wire reset;
  wire reset_out;
  wire rx_fsm_reset_done_int_reg;
  wire rxn;
  wire rxoutclk;
  wire rxp;
  wire txn;
  wire txoutclk;
  wire txp;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_GTWIZARD_init U0
       (.CLK(CLK),
        .D(D),
        .Q(Q),
        .RXBUFSTATUS(RXBUFSTATUS),
        .RXPD(RXPD),
        .TXBUFSTATUS(TXBUFSTATUS),
        .TXPD(TXPD),
        .data_in(data_in),
        .data_out(data_out),
        .data_sync_reg1(data_sync_reg1),
        .gt0_gtrxreset_gt_d1_reg_0(gt0_gtrxreset_gt_d1_reg),
        .gt0_pll0lock_out(gt0_pll0lock_out),
        .gt0_pll0outclk_out(gt0_pll0outclk_out),
        .gt0_pll0outrefclk_out(gt0_pll0outrefclk_out),
        .gt0_pll0refclklost_out(gt0_pll0refclklost_out),
        .gt0_pll1outclk_out(gt0_pll1outclk_out),
        .gt0_pll1outrefclk_out(gt0_pll1outrefclk_out),
        .gtpe2_i(gtpe2_i),
        .gtpe2_i_0(gtpe2_i_0),
        .gtpe2_i_1(gtpe2_i_1),
        .gtpe2_i_2(gtpe2_i_2),
        .gtpe2_i_3(gtpe2_i_3),
        .gtpe2_i_4(gtpe2_i_4),
        .gtpe2_i_5(gtpe2_i_5),
        .gtpe2_i_6(gtpe2_i_6),
        .gtpe2_i_7(gtpe2_i_7),
        .gtpe2_i_8(gtpe2_i_8),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_reset(mmcm_reset),
        .out(out),
        .reset(reset),
        .reset_in(PLL0_RESET_reg),
        .reset_out(reset_out),
        .rx_fsm_reset_done_int_reg(rx_fsm_reset_done_int_reg),
        .rxn(rxn),
        .rxoutclk(rxoutclk),
        .rxp(rxp),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp));
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
    CLK,
    rxn,
    rxp,
    gt0_gttxreset_in0_out,
    gt0_pll0outclk_out,
    gt0_pll0outrefclk_out,
    gt0_pll1outclk_out,
    gt0_pll1outrefclk_out,
    reset_out,
    reset,
    gt0_rxuserrdy_t,
    gtpe2_i_7,
    TXPD,
    gt0_txuserrdy_t,
    RXPD,
    Q,
    gtpe2_i_8,
    gtpe2_i_9,
    gtpe2_i_10,
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
  input CLK;
  input rxn;
  input rxp;
  input gt0_gttxreset_in0_out;
  input gt0_pll0outclk_out;
  input gt0_pll0outrefclk_out;
  input gt0_pll1outclk_out;
  input gt0_pll1outrefclk_out;
  input reset_out;
  input reset;
  input gt0_rxuserrdy_t;
  input gtpe2_i_7;
  input [0:0]TXPD;
  input gt0_txuserrdy_t;
  input [0:0]RXPD;
  input [15:0]Q;
  input [1:0]gtpe2_i_8;
  input [1:0]gtpe2_i_9;
  input [1:0]gtpe2_i_10;
  input [0:0]SR;
  input reset_sync5;

  wire CLK;
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
  wire gt0_pll0outclk_out;
  wire gt0_pll0outrefclk_out;
  wire gt0_pll1outclk_out;
  wire gt0_pll1outrefclk_out;
  wire gt0_rxuserrdy_t;
  wire gt0_txuserrdy_t;
  wire gtpe2_i_0;
  wire gtpe2_i_1;
  wire [1:0]gtpe2_i_10;
  wire [15:0]gtpe2_i_2;
  wire [1:0]gtpe2_i_3;
  wire [1:0]gtpe2_i_4;
  wire [1:0]gtpe2_i_5;
  wire [1:0]gtpe2_i_6;
  wire gtpe2_i_7;
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
        .DRPCLK(CLK),
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
        .PLL0CLK(gt0_pll0outclk_out),
        .PLL0REFCLK(gt0_pll0outrefclk_out),
        .PLL1CLK(gt0_pll1outclk_out),
        .PLL1REFCLK(gt0_pll1outrefclk_out),
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
        .RXUSRCLK(gtpe2_i_7),
        .RXUSRCLK2(gtpe2_i_7),
        .RXVALID(NLW_gtpe2_i_RXVALID_UNCONNECTED),
        .SETERRSTATUS(1'b0),
        .SIGVALIDCLK(1'b0),
        .TSTIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .TX8B10BBYPASS({1'b0,1'b0,1'b0,1'b0}),
        .TX8B10BEN(1'b1),
        .TXBUFDIFFCTRL({1'b1,1'b0,1'b0}),
        .TXBUFSTATUS({TXBUFSTATUS,gtpe2_i_n_102}),
        .TXCHARDISPMODE({1'b0,1'b0,gtpe2_i_8}),
        .TXCHARDISPVAL({1'b0,1'b0,gtpe2_i_9}),
        .TXCHARISK({1'b0,1'b0,gtpe2_i_10}),
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
        .TXUSRCLK(gtpe2_i_7),
        .TXUSRCLK2(gtpe2_i_7));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_gtwizard_gtrxreset_seq gtrxreset_seq_i
       (.CLK(CLK),
        .D({gtpe2_i_n_63,gtpe2_i_n_64,gtpe2_i_n_65,gtpe2_i_n_66,gtpe2_i_n_67,gtpe2_i_n_68,gtpe2_i_n_69,gtpe2_i_n_70,gtpe2_i_n_71,gtpe2_i_n_72,gtpe2_i_n_73,gtpe2_i_n_74,gtpe2_i_n_75,gtpe2_i_n_76,gtpe2_i_n_77,gtpe2_i_n_78}),
        .DRPADDR(DRPADDR),
        .DRPDI({gtrxreset_seq_i_n_2,gtrxreset_seq_i_n_3,gtrxreset_seq_i_n_4,gtrxreset_seq_i_n_5,gtrxreset_seq_i_n_6,gtrxreset_seq_i_n_7,gtrxreset_seq_i_n_8,gtrxreset_seq_i_n_9,gtrxreset_seq_i_n_10,gtrxreset_seq_i_n_11,gtrxreset_seq_i_n_12,gtrxreset_seq_i_n_13,gtrxreset_seq_i_n_14,gtrxreset_seq_i_n_15,gtrxreset_seq_i_n_16,gtrxreset_seq_i_n_17}),
        .\FSM_onehot_state_reg[5]_0 (gtrxreset_seq_i_n_1),
        .\FSM_onehot_state_reg[7]_0 (gtrxreset_seq_i_n_18),
        .GTRXRESET(GTRXRESET),
        .SR(SR),
        .data_in(gtpe2_i_n_28),
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
    CLK,
    rxn,
    rxp,
    gt0_pll0outclk_out,
    gt0_pll0outrefclk_out,
    gt0_pll1outclk_out,
    gt0_pll1outrefclk_out,
    reset_out,
    reset,
    gtpe2_i_4,
    TXPD,
    RXPD,
    Q,
    gtpe2_i_5,
    gtpe2_i_6,
    gtpe2_i_7,
    independent_clock_bufg,
    out,
    gt0_gtrxreset_gt_d1_reg_0,
    gtpe2_i_8,
    gt0_pll0refclklost_out,
    data_sync_reg1,
    gt0_pll0lock_out,
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
  input CLK;
  input rxn;
  input rxp;
  input gt0_pll0outclk_out;
  input gt0_pll0outrefclk_out;
  input gt0_pll1outclk_out;
  input gt0_pll1outrefclk_out;
  input reset_out;
  input reset;
  input gtpe2_i_4;
  input [0:0]TXPD;
  input [0:0]RXPD;
  input [15:0]Q;
  input [1:0]gtpe2_i_5;
  input [1:0]gtpe2_i_6;
  input [1:0]gtpe2_i_7;
  input independent_clock_bufg;
  input [0:0]out;
  input gt0_gtrxreset_gt_d1_reg_0;
  input gtpe2_i_8;
  input gt0_pll0refclklost_out;
  input data_sync_reg1;
  input gt0_pll0lock_out;
  input data_out;

  wire CLK;
  wire [1:0]D;
  wire [15:0]Q;
  wire [0:0]RXBUFSTATUS;
  wire [0:0]RXPD;
  wire [0:0]TXBUFSTATUS;
  wire [0:0]TXPD;
  wire [13:1]data0;
  wire data_in;
  wire data_out;
  wire data_sync_reg1;
  wire gt0_gtrxreset_gt;
  wire gt0_gtrxreset_gt_d1;
  wire gt0_gtrxreset_gt_d1_reg_0;
  wire gt0_gttxreset_in0_out;
  wire gt0_pll0lock_out;
  wire gt0_pll0outclk_out;
  wire gt0_pll0outrefclk_out;
  wire gt0_pll0refclklost_out;
  wire gt0_pll1outclk_out;
  wire gt0_pll1outrefclk_out;
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
  wire gtpe2_i_4;
  wire [1:0]gtpe2_i_5;
  wire [1:0]gtpe2_i_6;
  wire [1:0]gtpe2_i_7;
  wire gtpe2_i_8;
  wire gtwizard_i_n_3;
  wire gtwizard_i_n_5;
  wire independent_clock_bufg;
  wire mmcm_reset;
  wire [0:0]out;
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
        .data_sync_reg1_0(data_sync_reg1),
        .data_sync_reg6(gtpe2_i_4),
        .gt0_gtrxreset_gt(gt0_gtrxreset_gt),
        .gt0_gtrxreset_gt_d1_reg(gt0_gtrxreset_gt_d1_reg_0),
        .gt0_pll0lock_out(gt0_pll0lock_out),
        .gt0_rxuserrdy_t(gt0_rxuserrdy_t),
        .independent_clock_bufg(independent_clock_bufg),
        .out(out),
        .reset_time_out_reg_0(gt0_rx_cdrlocked_reg_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_TX_STARTUP_FSM gt0_txresetfsm_i
       (.PLL0_RESET_reg_0(reset_in),
        .data_in(data_in),
        .data_sync_reg1(gtpe2_i_4),
        .data_sync_reg1_0(gtwizard_i_n_5),
        .data_sync_reg1_1(data_sync_reg1),
        .gt0_gttxreset_in0_out(gt0_gttxreset_in0_out),
        .gt0_pll0lock_out(gt0_pll0lock_out),
        .gt0_pll0refclklost_out(gt0_pll0refclklost_out),
        .gt0_txuserrdy_t(gt0_txuserrdy_t),
        .gtpe2_i(gtpe2_i_8),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_reset(mmcm_reset),
        .out(out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_GTWIZARD_multi_gt gtwizard_i
       (.CLK(CLK),
        .D(D),
        .Q(Q),
        .RXBUFSTATUS(RXBUFSTATUS),
        .RXPD(RXPD),
        .SR(gt0_gtrxreset_gt_d1),
        .TXBUFSTATUS(TXBUFSTATUS),
        .TXPD(TXPD),
        .gt0_gttxreset_in0_out(gt0_gttxreset_in0_out),
        .gt0_pll0outclk_out(gt0_pll0outclk_out),
        .gt0_pll0outrefclk_out(gt0_pll0outrefclk_out),
        .gt0_pll1outclk_out(gt0_pll1outclk_out),
        .gt0_pll1outrefclk_out(gt0_pll1outrefclk_out),
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
        .gtpe2_i_9(gtpe2_i_7),
        .reset(reset),
        .reset_out(reset_out),
        .reset_sync5(reset_in),
        .rxn(rxn),
        .rxoutclk(rxoutclk),
        .rxp(rxp),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp));
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
    CLK,
    rxn,
    rxp,
    gt0_gttxreset_in0_out,
    gt0_pll0outclk_out,
    gt0_pll0outrefclk_out,
    gt0_pll1outclk_out,
    gt0_pll1outrefclk_out,
    reset_out,
    reset,
    gt0_rxuserrdy_t,
    gtpe2_i_6,
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
  input CLK;
  input rxn;
  input rxp;
  input gt0_gttxreset_in0_out;
  input gt0_pll0outclk_out;
  input gt0_pll0outrefclk_out;
  input gt0_pll1outclk_out;
  input gt0_pll1outrefclk_out;
  input reset_out;
  input reset;
  input gt0_rxuserrdy_t;
  input gtpe2_i_6;
  input [0:0]TXPD;
  input gt0_txuserrdy_t;
  input [0:0]RXPD;
  input [15:0]Q;
  input [1:0]gtpe2_i_7;
  input [1:0]gtpe2_i_8;
  input [1:0]gtpe2_i_9;
  input [0:0]SR;
  input reset_sync5;

  wire CLK;
  wire [1:0]D;
  wire [15:0]Q;
  wire [0:0]RXBUFSTATUS;
  wire [0:0]RXPD;
  wire [0:0]SR;
  wire [0:0]TXBUFSTATUS;
  wire [0:0]TXPD;
  wire gt0_gttxreset_in0_out;
  wire gt0_pll0outclk_out;
  wire gt0_pll0outrefclk_out;
  wire gt0_pll1outclk_out;
  wire gt0_pll1outrefclk_out;
  wire gt0_rxuserrdy_t;
  wire gt0_txuserrdy_t;
  wire gtpe2_i;
  wire gtpe2_i_0;
  wire [15:0]gtpe2_i_1;
  wire [1:0]gtpe2_i_2;
  wire [1:0]gtpe2_i_3;
  wire [1:0]gtpe2_i_4;
  wire [1:0]gtpe2_i_5;
  wire gtpe2_i_6;
  wire [1:0]gtpe2_i_7;
  wire [1:0]gtpe2_i_8;
  wire [1:0]gtpe2_i_9;
  wire reset;
  wire reset_out;
  wire reset_sync5;
  wire rxn;
  wire rxoutclk;
  wire rxp;
  wire txn;
  wire txoutclk;
  wire txp;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_GTWIZARD_GT gt0_GTWIZARD_i
       (.CLK(CLK),
        .D(D),
        .Q(Q),
        .RXBUFSTATUS(RXBUFSTATUS),
        .RXPD(RXPD),
        .SR(SR),
        .TXBUFSTATUS(TXBUFSTATUS),
        .TXPD(TXPD),
        .gt0_gttxreset_in0_out(gt0_gttxreset_in0_out),
        .gt0_pll0outclk_out(gt0_pll0outclk_out),
        .gt0_pll0outrefclk_out(gt0_pll0outrefclk_out),
        .gt0_pll1outclk_out(gt0_pll1outclk_out),
        .gt0_pll1outrefclk_out(gt0_pll1outrefclk_out),
        .gt0_rxuserrdy_t(gt0_rxuserrdy_t),
        .gt0_txuserrdy_t(gt0_txuserrdy_t),
        .gtpe2_i_0(gtpe2_i),
        .gtpe2_i_1(gtpe2_i_0),
        .gtpe2_i_10(gtpe2_i_9),
        .gtpe2_i_2(gtpe2_i_1),
        .gtpe2_i_3(gtpe2_i_2),
        .gtpe2_i_4(gtpe2_i_3),
        .gtpe2_i_5(gtpe2_i_4),
        .gtpe2_i_6(gtpe2_i_5),
        .gtpe2_i_7(gtpe2_i_6),
        .gtpe2_i_8(gtpe2_i_7),
        .gtpe2_i_9(gtpe2_i_8),
        .reset(reset),
        .reset_out(reset_out),
        .reset_sync5(reset_sync5),
        .rxn(rxn),
        .rxoutclk(rxoutclk),
        .rxp(rxp),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_RX_STARTUP_FSM
   (data_in,
    gt0_rxuserrdy_t,
    gt0_gtrxreset_gt,
    independent_clock_bufg,
    data_sync_reg6,
    out,
    gt0_gtrxreset_gt_d1_reg,
    reset_time_out_reg_0,
    data_sync_reg1,
    data_sync_reg1_0,
    data_out,
    gt0_pll0lock_out);
  output data_in;
  output gt0_rxuserrdy_t;
  output gt0_gtrxreset_gt;
  input independent_clock_bufg;
  input data_sync_reg6;
  input [0:0]out;
  input gt0_gtrxreset_gt_d1_reg;
  input reset_time_out_reg_0;
  input data_sync_reg1;
  input data_sync_reg1_0;
  input data_out;
  input gt0_pll0lock_out;

  wire \FSM_sequential_rx_state[0]_i_2_n_0 ;
  wire \FSM_sequential_rx_state[1]_i_2_n_0 ;
  wire \FSM_sequential_rx_state[2]_i_1_n_0 ;
  wire \FSM_sequential_rx_state[2]_i_2_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_10_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_3_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_5_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_8_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_9_n_0 ;
  wire GTRXRESET;
  wire RXUSERRDY_i_1_n_0;
  wire check_tlock_max_i_1_n_0;
  wire check_tlock_max_reg_n_0;
  wire data_in;
  wire data_out;
  wire data_sync_reg1;
  wire data_sync_reg1_0;
  wire data_sync_reg6;
  wire data_valid_sync;
  wire gt0_gtrxreset_gt;
  wire gt0_gtrxreset_gt_d1_reg;
  wire gt0_pll0lock_out;
  wire gt0_rxuserrdy_t;
  wire gtrxreset_i_i_1_n_0;
  wire independent_clock_bufg;
  wire init_wait_count;
  wire \init_wait_count[0]_i_1__0_n_0 ;
  wire \init_wait_count[3]_i_1__1_n_0 ;
  wire \init_wait_count[6]_i_3__0_n_0 ;
  wire \init_wait_count[6]_i_4__0_n_0 ;
  wire [6:0]init_wait_count_reg;
  wire init_wait_done;
  wire init_wait_done_i_1__1_n_0;
  wire init_wait_done_reg_n_0;
  wire \mmcm_lock_count[7]_i_2__0_n_0 ;
  wire \mmcm_lock_count[7]_i_4__0_n_0 ;
  wire [7:0]mmcm_lock_count_reg;
  wire mmcm_lock_i;
  wire mmcm_lock_reclocked;
  wire mmcm_lock_reclocked_i_1_n_0;
  wire mmcm_lock_reclocked_i_2__0_n_0;
  wire [0:0]out;
  wire [6:1]p_0_in__2;
  wire [7:0]p_0_in__3;
  wire reset_time_out_i_2__0_n_0;
  wire reset_time_out_i_3__0_n_0;
  wire reset_time_out_i_4__0_n_0;
  wire reset_time_out_i_6_n_0;
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
  wire sync_data_valid_n_4;
  wire sync_data_valid_n_5;
  wire sync_mmcm_lock_reclocked_n_0;
  wire sync_pll0lock_n_0;
  wire sync_pll0lock_n_1;
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
  wire time_out_2ms_i_3_n_0;
  wire time_out_2ms_i_4__0_n_0;
  wire time_out_2ms_i_5__0_n_0;
  wire time_out_2ms_i_6_n_0;
  wire time_out_2ms_reg_n_0;
  wire time_out_counter;
  wire \time_out_counter[0]_i_3__0_n_0 ;
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
  wire [6:0]wait_time_cnt0__0;
  wire \wait_time_cnt[1]_i_1__0_n_0 ;
  wire \wait_time_cnt[6]_i_1_n_0 ;
  wire \wait_time_cnt[6]_i_2__0_n_0 ;
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
    .INIT(64'hFFFFFFFF8000AF00)) 
    \FSM_sequential_rx_state[0]_i_2 
       (.I0(rx_state[1]),
        .I1(reset_time_out_reg_n_0),
        .I2(rx_state[2]),
        .I3(rx_state[0]),
        .I4(time_out_2ms_reg_n_0),
        .I5(rx_state[3]),
        .O(\FSM_sequential_rx_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF55FF55FF75FF55)) 
    \FSM_sequential_rx_state[1]_i_2 
       (.I0(rx_state[0]),
        .I1(reset_time_out_reg_n_0),
        .I2(time_tlock_max),
        .I3(rx_state[1]),
        .I4(rx_state[2]),
        .I5(rx_state[3]),
        .O(\FSM_sequential_rx_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000100005551555)) 
    \FSM_sequential_rx_state[2]_i_1 
       (.I0(rx_state[3]),
        .I1(rx_state[2]),
        .I2(rx_state[1]),
        .I3(rx_state[0]),
        .I4(time_out_2ms_reg_n_0),
        .I5(\FSM_sequential_rx_state[2]_i_2_n_0 ),
        .O(\FSM_sequential_rx_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1B1BFF1B1B1B1B1B)) 
    \FSM_sequential_rx_state[2]_i_2 
       (.I0(rx_state[3]),
        .I1(rx_state[2]),
        .I2(rx_state[1]),
        .I3(rx_state[0]),
        .I4(reset_time_out_reg_n_0),
        .I5(time_tlock_max),
        .O(\FSM_sequential_rx_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \FSM_sequential_rx_state[3]_i_10 
       (.I0(rx_state[3]),
        .I1(rx_state[1]),
        .I2(rx_state[2]),
        .I3(rx_state[0]),
        .I4(init_wait_done_reg_n_0),
        .O(\FSM_sequential_rx_state[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000151)) 
    \FSM_sequential_rx_state[3]_i_3 
       (.I0(rx_state[1]),
        .I1(reset_time_out_reg_0),
        .I2(rx_state[0]),
        .I3(mmcm_lock_reclocked),
        .I4(\FSM_sequential_rx_state[2]_i_2_n_0 ),
        .I5(\FSM_sequential_rx_state[3]_i_10_n_0 ),
        .O(\FSM_sequential_rx_state[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAEFFAEFFAEFFFFFF)) 
    \FSM_sequential_rx_state[3]_i_5 
       (.I0(rxresetdone_s3),
        .I1(time_out_2ms_reg_n_0),
        .I2(reset_time_out_reg_n_0),
        .I3(rx_state[1]),
        .I4(rx_state[2]),
        .I5(rx_state[3]),
        .O(\FSM_sequential_rx_state[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \FSM_sequential_rx_state[3]_i_8 
       (.I0(rx_state[1]),
        .I1(rx_state[2]),
        .I2(rx_state[3]),
        .O(\FSM_sequential_rx_state[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hDDD0000000000000)) 
    \FSM_sequential_rx_state[3]_i_9 
       (.I0(time_out_2ms_reg_n_0),
        .I1(reset_time_out_reg_n_0),
        .I2(rx_state[2]),
        .I3(rx_state[3]),
        .I4(rx_state[0]),
        .I5(rx_state[1]),
        .O(\FSM_sequential_rx_state[3]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "release_pll_reset:0011,verify_recclk_stable:0100,wait_for_pll_lock:0010,fsm_done:1010,assert_all_resets:0001,init:0000,wait_reset_done:0111,monitor_data_valid:1001,wait_for_rxusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[0] 
       (.C(independent_clock_bufg),
        .CE(sync_pll0lock_n_0),
        .D(rx_state__0[0]),
        .Q(rx_state[0]),
        .R(out));
  (* FSM_ENCODED_STATES = "release_pll_reset:0011,verify_recclk_stable:0100,wait_for_pll_lock:0010,fsm_done:1010,assert_all_resets:0001,init:0000,wait_reset_done:0111,monitor_data_valid:1001,wait_for_rxusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[1] 
       (.C(independent_clock_bufg),
        .CE(sync_pll0lock_n_0),
        .D(rx_state__0[1]),
        .Q(rx_state[1]),
        .R(out));
  (* FSM_ENCODED_STATES = "release_pll_reset:0011,verify_recclk_stable:0100,wait_for_pll_lock:0010,fsm_done:1010,assert_all_resets:0001,init:0000,wait_reset_done:0111,monitor_data_valid:1001,wait_for_rxusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[2] 
       (.C(independent_clock_bufg),
        .CE(sync_pll0lock_n_0),
        .D(\FSM_sequential_rx_state[2]_i_1_n_0 ),
        .Q(rx_state[2]),
        .R(out));
  (* FSM_ENCODED_STATES = "release_pll_reset:0011,verify_recclk_stable:0100,wait_for_pll_lock:0010,fsm_done:1010,assert_all_resets:0001,init:0000,wait_reset_done:0111,monitor_data_valid:1001,wait_for_rxusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[3] 
       (.C(independent_clock_bufg),
        .CE(sync_pll0lock_n_0),
        .D(rx_state__0[3]),
        .Q(rx_state[3]),
        .R(out));
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
        .R(out));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    check_tlock_max_i_1
       (.I0(rx_state[2]),
        .I1(rx_state[3]),
        .I2(rx_state[0]),
        .I3(rx_state[1]),
        .I4(check_tlock_max_reg_n_0),
        .O(check_tlock_max_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    check_tlock_max_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(check_tlock_max_i_1_n_0),
        .Q(check_tlock_max_reg_n_0),
        .R(out));
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
        .R(out));
  LUT1 #(
    .INIT(2'h1)) 
    \init_wait_count[0]_i_1__0 
       (.I0(init_wait_count_reg[0]),
        .O(\init_wait_count[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \init_wait_count[1]_i_1__0 
       (.I0(init_wait_count_reg[0]),
        .I1(init_wait_count_reg[1]),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \init_wait_count[2]_i_1__0 
       (.I0(init_wait_count_reg[2]),
        .I1(init_wait_count_reg[0]),
        .I2(init_wait_count_reg[1]),
        .O(p_0_in__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \init_wait_count[3]_i_1__1 
       (.I0(init_wait_count_reg[3]),
        .I1(init_wait_count_reg[0]),
        .I2(init_wait_count_reg[1]),
        .I3(init_wait_count_reg[2]),
        .O(\init_wait_count[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \init_wait_count[4]_i_1__0 
       (.I0(init_wait_count_reg[4]),
        .I1(init_wait_count_reg[2]),
        .I2(init_wait_count_reg[1]),
        .I3(init_wait_count_reg[0]),
        .I4(init_wait_count_reg[3]),
        .O(p_0_in__2[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \init_wait_count[5]_i_1__0 
       (.I0(init_wait_count_reg[5]),
        .I1(init_wait_count_reg[3]),
        .I2(init_wait_count_reg[0]),
        .I3(init_wait_count_reg[1]),
        .I4(init_wait_count_reg[2]),
        .I5(init_wait_count_reg[4]),
        .O(p_0_in__2[5]));
  LUT6 #(
    .INIT(64'hFEFFFFFFFFFFFFFF)) 
    \init_wait_count[6]_i_1__0 
       (.I0(\init_wait_count[6]_i_3__0_n_0 ),
        .I1(init_wait_count_reg[4]),
        .I2(init_wait_count_reg[0]),
        .I3(init_wait_count_reg[3]),
        .I4(init_wait_count_reg[6]),
        .I5(init_wait_count_reg[5]),
        .O(init_wait_count));
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    \init_wait_count[6]_i_2__0 
       (.I0(init_wait_count_reg[6]),
        .I1(init_wait_count_reg[4]),
        .I2(\init_wait_count[6]_i_4__0_n_0 ),
        .I3(init_wait_count_reg[3]),
        .I4(init_wait_count_reg[5]),
        .O(p_0_in__2[6]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \init_wait_count[6]_i_3__0 
       (.I0(init_wait_count_reg[1]),
        .I1(init_wait_count_reg[2]),
        .O(\init_wait_count[6]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \init_wait_count[6]_i_4__0 
       (.I0(init_wait_count_reg[2]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[0]),
        .O(\init_wait_count[6]_i_4__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[0] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(out),
        .D(\init_wait_count[0]_i_1__0_n_0 ),
        .Q(init_wait_count_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[1] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(out),
        .D(p_0_in__2[1]),
        .Q(init_wait_count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[2] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(out),
        .D(p_0_in__2[2]),
        .Q(init_wait_count_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[3] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(out),
        .D(\init_wait_count[3]_i_1__1_n_0 ),
        .Q(init_wait_count_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[4] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(out),
        .D(p_0_in__2[4]),
        .Q(init_wait_count_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[5] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(out),
        .D(p_0_in__2[5]),
        .Q(init_wait_count_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[6] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(out),
        .D(p_0_in__2[6]),
        .Q(init_wait_count_reg[6]));
  LUT2 #(
    .INIT(4'hE)) 
    init_wait_done_i_1__1
       (.I0(init_wait_done),
        .I1(init_wait_done_reg_n_0),
        .O(init_wait_done_i_1__1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    init_wait_done_i_2__0
       (.I0(init_wait_count_reg[5]),
        .I1(init_wait_count_reg[6]),
        .I2(init_wait_count_reg[3]),
        .I3(init_wait_count_reg[0]),
        .I4(init_wait_count_reg[4]),
        .I5(\init_wait_count[6]_i_3__0_n_0 ),
        .O(init_wait_done));
  FDCE #(
    .INIT(1'b0)) 
    init_wait_done_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .CLR(out),
        .D(init_wait_done_i_1__1_n_0),
        .Q(init_wait_done_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[0]_i_1__0 
       (.I0(mmcm_lock_count_reg[0]),
        .O(p_0_in__3[0]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mmcm_lock_count[1]_i_1__0 
       (.I0(mmcm_lock_count_reg[1]),
        .I1(mmcm_lock_count_reg[0]),
        .O(p_0_in__3[1]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \mmcm_lock_count[2]_i_1__0 
       (.I0(mmcm_lock_count_reg[2]),
        .I1(mmcm_lock_count_reg[1]),
        .I2(mmcm_lock_count_reg[0]),
        .O(p_0_in__3[2]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \mmcm_lock_count[3]_i_1__0 
       (.I0(mmcm_lock_count_reg[0]),
        .I1(mmcm_lock_count_reg[1]),
        .I2(mmcm_lock_count_reg[2]),
        .I3(mmcm_lock_count_reg[3]),
        .O(p_0_in__3[3]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \mmcm_lock_count[7]_i_3__0 
       (.I0(mmcm_lock_count_reg[7]),
        .I1(mmcm_lock_count_reg[5]),
        .I2(\mmcm_lock_count[7]_i_4__0_n_0 ),
        .I3(mmcm_lock_count_reg[4]),
        .I4(mmcm_lock_count_reg[6]),
        .O(p_0_in__3[7]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h2)) 
    reset_time_out_i_2__0
       (.I0(rx_state[1]),
        .I1(rxresetdone_s3),
        .O(reset_time_out_i_2__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'hB)) 
    reset_time_out_i_3__0
       (.I0(rx_state[3]),
        .I1(rx_state[2]),
        .O(reset_time_out_i_3__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'hFEAE)) 
    reset_time_out_i_4__0
       (.I0(rx_state[1]),
        .I1(reset_time_out_reg_0),
        .I2(rx_state[0]),
        .I3(mmcm_lock_reclocked),
        .O(reset_time_out_i_4__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'h55227762)) 
    reset_time_out_i_6
       (.I0(rx_state[3]),
        .I1(rx_state[2]),
        .I2(reset_time_out_reg_0),
        .I3(rx_state[0]),
        .I4(rx_state[1]),
        .O(reset_time_out_i_6_n_0));
  FDSE #(
    .INIT(1'b0)) 
    reset_time_out_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(sync_pll0lock_n_1),
        .Q(reset_time_out_reg_n_0),
        .S(out));
  LUT5 #(
    .INIT(32'hFFFB0002)) 
    run_phase_alignment_int_i_1__0
       (.I0(rx_state[3]),
        .I1(rx_state[0]),
        .I2(rx_state[2]),
        .I3(rx_state[1]),
        .I4(run_phase_alignment_int_reg_n_0),
        .O(run_phase_alignment_int_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(run_phase_alignment_int_i_1__0_n_0),
        .Q(run_phase_alignment_int_reg_n_0),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_s3_reg
       (.C(data_sync_reg6),
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
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    rx_fsm_reset_done_int_s3_reg
       (.C(data_sync_reg6),
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
        .\FSM_sequential_rx_state_reg[0] (\FSM_sequential_rx_state[0]_i_2_n_0 ),
        .\FSM_sequential_rx_state_reg[0]_0 (\FSM_sequential_rx_state[1]_i_2_n_0 ),
        .\FSM_sequential_rx_state_reg[3] (sync_data_valid_n_5),
        .\FSM_sequential_rx_state_reg[3]_0 (\FSM_sequential_rx_state[3]_i_8_n_0 ),
        .\FSM_sequential_rx_state_reg[3]_1 (\FSM_sequential_rx_state[3]_i_9_n_0 ),
        .Q(rx_state),
        .data_in(data_in),
        .data_out(data_valid_sync),
        .data_sync_reg1_0(data_out),
        .data_sync_reg6_0(sync_data_valid_n_4),
        .independent_clock_bufg(independent_clock_bufg),
        .rx_fsm_reset_done_int_reg(time_out_1us_reg_n_0),
        .rx_fsm_reset_done_int_reg_0(reset_time_out_reg_n_0),
        .rx_fsm_reset_done_int_reg_1(time_out_100us_reg_n_0),
        .time_out_wait_bypass_s3(time_out_wait_bypass_s3));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_15 sync_mmcm_lock_reclocked
       (.SR(sync_mmcm_lock_reclocked_n_0),
        .data_out(mmcm_lock_i),
        .data_sync_reg1_0(data_sync_reg1_0),
        .independent_clock_bufg(independent_clock_bufg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_16 sync_pll0lock
       (.E(sync_pll0lock_n_0),
        .\FSM_sequential_rx_state_reg[0] (\FSM_sequential_rx_state[3]_i_3_n_0 ),
        .\FSM_sequential_rx_state_reg[0]_0 (\wait_time_cnt[6]_i_2__0_n_0 ),
        .\FSM_sequential_rx_state_reg[0]_1 (\FSM_sequential_rx_state[3]_i_5_n_0 ),
        .\FSM_sequential_rx_state_reg[0]_2 (sync_data_valid_n_4),
        .\FSM_sequential_rx_state_reg[0]_3 (time_out_2ms_reg_n_0),
        .Q(rx_state),
        .data_out(data_valid_sync),
        .gt0_pll0lock_out(gt0_pll0lock_out),
        .independent_clock_bufg(independent_clock_bufg),
        .reset_time_out_reg(sync_pll0lock_n_1),
        .reset_time_out_reg_0(reset_time_out_i_2__0_n_0),
        .reset_time_out_reg_1(reset_time_out_i_3__0_n_0),
        .reset_time_out_reg_2(reset_time_out_i_4__0_n_0),
        .reset_time_out_reg_3(reset_time_out_i_6_n_0),
        .reset_time_out_reg_4(reset_time_out_reg_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_17 sync_run_phase_alignment_int
       (.data_in(run_phase_alignment_int_reg_n_0),
        .data_out(run_phase_alignment_int_s2),
        .data_sync_reg1_0(data_sync_reg6));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_18 sync_rx_fsm_reset_done_int
       (.data_in(data_in),
        .data_out(rx_fsm_reset_done_int_s2),
        .data_sync_reg6_0(data_sync_reg6));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_19 sync_time_out_wait_bypass
       (.data_in(time_out_wait_bypass_reg_n_0),
        .data_out(time_out_wait_bypass_s2),
        .independent_clock_bufg(independent_clock_bufg));
  LUT4 #(
    .INIT(16'hFF01)) 
    time_out_100us_i_1
       (.I0(time_out_100us_i_2_n_0),
        .I1(time_out_100us_i_3_n_0),
        .I2(time_out_100us_i_4_n_0),
        .I3(time_out_100us_reg_n_0),
        .O(time_out_100us_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    time_out_100us_i_2
       (.I0(time_out_counter_reg[18]),
        .I1(time_out_counter_reg[19]),
        .I2(time_out_counter_reg[17]),
        .I3(time_out_counter_reg[16]),
        .I4(time_out_counter_reg[15]),
        .O(time_out_100us_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBFFFFFF)) 
    time_out_100us_i_3
       (.I0(time_out_counter_reg[8]),
        .I1(time_out_counter_reg[9]),
        .I2(time_out_100us_i_5_n_0),
        .I3(time_out_counter_reg[10]),
        .I4(time_out_counter_reg[11]),
        .I5(time_out_100us_i_6_n_0),
        .O(time_out_100us_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFFFFFFF)) 
    time_out_100us_i_4
       (.I0(time_out_2ms_i_6_n_0),
        .I1(time_out_counter_reg[2]),
        .I2(time_out_counter_reg[3]),
        .I3(time_out_counter_reg[14]),
        .I4(time_out_counter_reg[4]),
        .I5(time_out_counter_reg[5]),
        .O(time_out_100us_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    time_out_100us_i_5
       (.I0(time_out_counter_reg[7]),
        .I1(time_out_counter_reg[6]),
        .O(time_out_100us_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'hE)) 
    time_out_100us_i_6
       (.I0(time_out_counter_reg[13]),
        .I1(time_out_counter_reg[12]),
        .O(time_out_100us_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_100us_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_out_100us_i_1_n_0),
        .Q(time_out_100us_reg_n_0),
        .R(reset_time_out_reg_n_0));
  LUT4 #(
    .INIT(16'hFF10)) 
    time_out_1us_i_1
       (.I0(time_out_2ms_i_2_n_0),
        .I1(time_out_100us_i_2_n_0),
        .I2(time_out_1us_i_2_n_0),
        .I3(time_out_1us_reg_n_0),
        .O(time_out_1us_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    time_out_1us_i_2
       (.I0(time_out_2ms_i_4__0_n_0),
        .I1(time_out_counter_reg[9]),
        .I2(time_out_counter_reg[8]),
        .I3(time_out_counter_reg[13]),
        .I4(time_out_counter_reg[10]),
        .I5(time_out_1us_i_3_n_0),
        .O(time_out_1us_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    time_out_1us_i_3
       (.I0(time_out_counter_reg[12]),
        .I1(time_out_counter_reg[14]),
        .I2(time_out_counter_reg[11]),
        .O(time_out_1us_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_1us_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_out_1us_i_1_n_0),
        .Q(time_out_1us_reg_n_0),
        .R(reset_time_out_reg_n_0));
  LUT5 #(
    .INIT(32'hFFFF0001)) 
    time_out_2ms_i_1
       (.I0(time_out_2ms_i_2_n_0),
        .I1(time_out_2ms_i_3_n_0),
        .I2(time_out_2ms_i_4__0_n_0),
        .I3(time_out_2ms_i_5__0_n_0),
        .I4(time_out_2ms_reg_n_0),
        .O(time_out_2ms_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFFFFFFF)) 
    time_out_2ms_i_2
       (.I0(time_out_2ms_i_6_n_0),
        .I1(time_out_counter_reg[2]),
        .I2(time_out_counter_reg[4]),
        .I3(time_out_counter_reg[7]),
        .I4(time_out_counter_reg[5]),
        .I5(time_out_counter_reg[6]),
        .O(time_out_2ms_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF7FF)) 
    time_out_2ms_i_3
       (.I0(time_out_counter_reg[9]),
        .I1(time_out_counter_reg[8]),
        .I2(time_out_counter_reg[15]),
        .I3(time_out_counter_reg[10]),
        .I4(time_out_counter_reg[17]),
        .I5(time_out_counter_reg[18]),
        .O(time_out_2ms_i_3_n_0));
  LUT3 #(
    .INIT(8'hBA)) 
    time_out_2ms_i_4__0
       (.I0(time_out_counter_reg[5]),
        .I1(time_out_counter_reg[4]),
        .I2(time_out_counter_reg[3]),
        .O(time_out_2ms_i_4__0_n_0));
  LUT6 #(
    .INIT(64'hFEFFFFFFFFFFFFFF)) 
    time_out_2ms_i_5__0
       (.I0(time_out_counter_reg[11]),
        .I1(time_out_counter_reg[14]),
        .I2(time_out_counter_reg[12]),
        .I3(time_out_counter_reg[13]),
        .I4(time_out_counter_reg[16]),
        .I5(time_out_counter_reg[19]),
        .O(time_out_2ms_i_5__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    time_out_2ms_i_6
       (.I0(time_out_counter_reg[1]),
        .I1(time_out_counter_reg[0]),
        .O(time_out_2ms_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_2ms_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_out_2ms_i_1_n_0),
        .Q(time_out_2ms_reg_n_0),
        .R(reset_time_out_reg_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEFE)) 
    \time_out_counter[0]_i_1 
       (.I0(time_out_2ms_i_2_n_0),
        .I1(time_out_2ms_i_3_n_0),
        .I2(time_out_counter_reg[3]),
        .I3(time_out_counter_reg[4]),
        .I4(time_out_counter_reg[5]),
        .I5(time_out_2ms_i_5__0_n_0),
        .O(time_out_counter));
  LUT1 #(
    .INIT(2'h1)) 
    \time_out_counter[0]_i_3__0 
       (.I0(time_out_counter_reg[0]),
        .O(\time_out_counter[0]_i_3__0_n_0 ));
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
        .S({time_out_counter_reg[3:1],\time_out_counter[0]_i_3__0_n_0 }));
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
       (.C(data_sync_reg6),
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
       (.I0(time_out_counter_reg[9]),
        .I1(time_out_counter_reg[8]),
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
       (.I0(time_out_counter_reg[11]),
        .I1(time_out_counter_reg[10]),
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
       (.I0(time_out_counter_reg[2]),
        .I1(time_out_counter_reg[3]),
        .O(time_tlock_max1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    time_tlock_max1_carry_i_4
       (.I0(time_out_counter_reg[1]),
        .I1(time_out_counter_reg[0]),
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
       (.I0(time_out_counter_reg[3]),
        .I1(time_out_counter_reg[2]),
        .O(time_tlock_max1_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    time_tlock_max1_carry_i_8
       (.I0(time_out_counter_reg[0]),
        .I1(time_out_counter_reg[1]),
        .O(time_tlock_max1_carry_i_8_n_0));
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
       (.C(data_sync_reg6),
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
       (.C(data_sync_reg6),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1__0_n_5 ),
        .Q(wait_bypass_count_reg[10]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[11] 
       (.C(data_sync_reg6),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1__0_n_4 ),
        .Q(wait_bypass_count_reg[11]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[12] 
       (.C(data_sync_reg6),
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
       (.C(data_sync_reg6),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3__0_n_6 ),
        .Q(wait_bypass_count_reg[1]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[2] 
       (.C(data_sync_reg6),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3__0_n_5 ),
        .Q(wait_bypass_count_reg[2]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[3] 
       (.C(data_sync_reg6),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3__0_n_4 ),
        .Q(wait_bypass_count_reg[3]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[4] 
       (.C(data_sync_reg6),
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
       (.C(data_sync_reg6),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1__0_n_6 ),
        .Q(wait_bypass_count_reg[5]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[6] 
       (.C(data_sync_reg6),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1__0_n_5 ),
        .Q(wait_bypass_count_reg[6]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[7] 
       (.C(data_sync_reg6),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1__0_n_4 ),
        .Q(wait_bypass_count_reg[7]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[8] 
       (.C(data_sync_reg6),
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
       (.C(data_sync_reg6),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1__0_n_6 ),
        .Q(wait_bypass_count_reg[9]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_1__0 
       (.I0(wait_time_cnt_reg[0]),
        .O(wait_time_cnt0__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \wait_time_cnt[3]_i_1__0 
       (.I0(wait_time_cnt_reg[2]),
        .I1(wait_time_cnt_reg[0]),
        .I2(wait_time_cnt_reg[1]),
        .I3(wait_time_cnt_reg[3]),
        .O(wait_time_cnt0__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \wait_time_cnt[4]_i_1__0 
       (.I0(wait_time_cnt_reg[4]),
        .I1(wait_time_cnt_reg[3]),
        .I2(wait_time_cnt_reg[2]),
        .I3(wait_time_cnt_reg[1]),
        .I4(wait_time_cnt_reg[0]),
        .O(wait_time_cnt0__0[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \wait_time_cnt[5]_i_1__0 
       (.I0(wait_time_cnt_reg[5]),
        .I1(wait_time_cnt_reg[4]),
        .I2(wait_time_cnt_reg[0]),
        .I3(wait_time_cnt_reg[1]),
        .I4(wait_time_cnt_reg[2]),
        .I5(wait_time_cnt_reg[3]),
        .O(wait_time_cnt0__0[5]));
  LUT3 #(
    .INIT(8'h04)) 
    \wait_time_cnt[6]_i_1 
       (.I0(rx_state[3]),
        .I1(rx_state[0]),
        .I2(rx_state[1]),
        .O(\wait_time_cnt[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \wait_time_cnt[6]_i_2__0 
       (.I0(wait_time_cnt_reg[6]),
        .I1(wait_time_cnt_reg[5]),
        .I2(wait_time_cnt_reg[4]),
        .I3(\wait_time_cnt[6]_i_4__0_n_0 ),
        .O(\wait_time_cnt[6]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'hA9AA)) 
    \wait_time_cnt[6]_i_3__0 
       (.I0(wait_time_cnt_reg[6]),
        .I1(wait_time_cnt_reg[5]),
        .I2(wait_time_cnt_reg[4]),
        .I3(\wait_time_cnt[6]_i_4__0_n_0 ),
        .O(wait_time_cnt0__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \wait_time_cnt[6]_i_4__0 
       (.I0(wait_time_cnt_reg[0]),
        .I1(wait_time_cnt_reg[1]),
        .I2(wait_time_cnt_reg[2]),
        .I3(wait_time_cnt_reg[3]),
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
        .D(wait_time_cnt0__0[4]),
        .Q(wait_time_cnt_reg[4]),
        .R(\wait_time_cnt[6]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[5] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[6]_i_2__0_n_0 ),
        .D(wait_time_cnt0__0[5]),
        .Q(wait_time_cnt_reg[5]),
        .S(\wait_time_cnt[6]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[6] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[6]_i_2__0_n_0 ),
        .D(wait_time_cnt0__0[6]),
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
    data_sync_reg1,
    out,
    gtpe2_i,
    gt0_pll0refclklost_out,
    data_sync_reg1_0,
    data_sync_reg1_1,
    gt0_pll0lock_out);
  output mmcm_reset;
  output PLL0_RESET_reg_0;
  output data_in;
  output gt0_txuserrdy_t;
  output gt0_gttxreset_in0_out;
  input independent_clock_bufg;
  input data_sync_reg1;
  input [0:0]out;
  input gtpe2_i;
  input gt0_pll0refclklost_out;
  input data_sync_reg1_0;
  input data_sync_reg1_1;
  input gt0_pll0lock_out;

  wire \FSM_sequential_tx_state[0]_i_1_n_0 ;
  wire \FSM_sequential_tx_state[0]_i_2_n_0 ;
  wire \FSM_sequential_tx_state[1]_i_2_n_0 ;
  wire \FSM_sequential_tx_state[2]_i_1_n_0 ;
  wire \FSM_sequential_tx_state[2]_i_2_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_5_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_6_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_7_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_8_n_0 ;
  wire GTTXRESET;
  wire MMCM_RESET_i_1_n_0;
  wire PLL0_RESET0;
  wire PLL0_RESET_i_1_n_0;
  wire PLL0_RESET_reg_0;
  wire TXUSERRDY_i_1_n_0;
  wire clear;
  wire data_in;
  wire data_out;
  wire data_sync_reg1;
  wire data_sync_reg1_0;
  wire data_sync_reg1_1;
  wire gt0_gttxreset_in0_out;
  wire gt0_pll0lock_out;
  wire gt0_pll0refclklost_out;
  wire gt0_txuserrdy_t;
  wire gtpe2_i;
  wire gttxreset_i_i_1_n_0;
  wire independent_clock_bufg;
  wire init_wait_count;
  wire \init_wait_count[0]_i_1_n_0 ;
  wire \init_wait_count[3]_i_1__0_n_0 ;
  wire \init_wait_count[6]_i_3_n_0 ;
  wire \init_wait_count[6]_i_4_n_0 ;
  wire [6:0]init_wait_count_reg;
  wire init_wait_done;
  wire init_wait_done_i_1__0_n_0;
  wire init_wait_done_reg_n_0;
  wire \mmcm_lock_count[7]_i_2_n_0 ;
  wire \mmcm_lock_count[7]_i_4_n_0 ;
  wire [7:0]mmcm_lock_count_reg;
  wire mmcm_lock_i;
  wire mmcm_lock_reclocked;
  wire mmcm_lock_reclocked_i_1_n_0;
  wire mmcm_lock_reclocked_i_2_n_0;
  wire mmcm_reset;
  wire [0:0]out;
  wire [6:1]p_0_in__0;
  wire [7:0]p_0_in__1;
  wire pll_reset_asserted_i_1_n_0;
  wire pll_reset_asserted_reg_n_0;
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
  wire time_out_2ms_i_3__0_n_0;
  wire time_out_2ms_i_4_n_0;
  wire time_out_2ms_i_5_n_0;
  wire time_out_2ms_reg_n_0;
  wire time_out_500us_i_1_n_0;
  wire time_out_500us_i_2_n_0;
  wire time_out_500us_i_3_n_0;
  wire time_out_500us_i_4_n_0;
  wire time_out_500us_i_5_n_0;
  wire time_out_500us_reg_n_0;
  wire time_out_counter;
  wire \time_out_counter[0]_i_3_n_0 ;
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
  wire time_tlock_max_i_5_n_0;
  wire time_tlock_max_reg_n_0;
  wire tx_fsm_reset_done_int_i_1_n_0;
  wire tx_fsm_reset_done_int_s2;
  wire tx_fsm_reset_done_int_s3;
  wire [3:0]tx_state;
  wire [3:1]tx_state__0;
  wire txresetdone_s2;
  wire txresetdone_s3;
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
  wire [6:0]wait_time_cnt0;
  wire wait_time_cnt0_0;
  wire \wait_time_cnt[1]_i_1_n_0 ;
  wire \wait_time_cnt[6]_i_4_n_0 ;
  wire [6:0]wait_time_cnt_reg;
  wire [3:3]\NLW_refclk_stable_count_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_wait_bypass_count_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_wait_bypass_count_reg[16]_i_1_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h55400000FFFFFFFF)) 
    \FSM_sequential_tx_state[0]_i_1 
       (.I0(\FSM_sequential_tx_state[3]_i_6_n_0 ),
        .I1(tx_state[1]),
        .I2(time_out_2ms_reg_n_0),
        .I3(tx_state[2]),
        .I4(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .I5(\FSM_sequential_tx_state[0]_i_2_n_0 ),
        .O(\FSM_sequential_tx_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_tx_state[0]_i_2 
       (.I0(tx_state[0]),
        .I1(tx_state[3]),
        .O(\FSM_sequential_tx_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT5 #(
    .INIT(32'h000F0D00)) 
    \FSM_sequential_tx_state[1]_i_1 
       (.I0(tx_state[2]),
        .I1(\FSM_sequential_tx_state[1]_i_2_n_0 ),
        .I2(tx_state[3]),
        .I3(tx_state[0]),
        .I4(tx_state[1]),
        .O(tx_state__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \FSM_sequential_tx_state[1]_i_2 
       (.I0(mmcm_lock_reclocked),
        .I1(time_tlock_max_reg_n_0),
        .I2(reset_time_out),
        .O(\FSM_sequential_tx_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0414040455555555)) 
    \FSM_sequential_tx_state[2]_i_1 
       (.I0(tx_state[3]),
        .I1(tx_state[2]),
        .I2(tx_state[0]),
        .I3(time_out_2ms_reg_n_0),
        .I4(tx_state[1]),
        .I5(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .O(\FSM_sequential_tx_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT5 #(
    .INIT(32'hBBBBBFBB)) 
    \FSM_sequential_tx_state[2]_i_2 
       (.I0(tx_state[1]),
        .I1(tx_state[2]),
        .I2(reset_time_out),
        .I3(time_tlock_max_reg_n_0),
        .I4(mmcm_lock_reclocked),
        .O(\FSM_sequential_tx_state[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h5C50)) 
    \FSM_sequential_tx_state[3]_i_2 
       (.I0(time_out_wait_bypass_s3),
        .I1(tx_state[0]),
        .I2(tx_state[3]),
        .I3(\FSM_sequential_tx_state[3]_i_6_n_0 ),
        .O(tx_state__0[3]));
  LUT6 #(
    .INIT(64'h040404040404FFF0)) 
    \FSM_sequential_tx_state[3]_i_5 
       (.I0(wait_time_cnt_reg[6]),
        .I1(\FSM_sequential_tx_state[3]_i_8_n_0 ),
        .I2(tx_state[3]),
        .I3(init_wait_done_reg_n_0),
        .I4(tx_state[2]),
        .I5(tx_state[1]),
        .O(\FSM_sequential_tx_state[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'h8088)) 
    \FSM_sequential_tx_state[3]_i_6 
       (.I0(tx_state[1]),
        .I1(tx_state[2]),
        .I2(reset_time_out),
        .I3(time_out_500us_reg_n_0),
        .O(\FSM_sequential_tx_state[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_tx_state[3]_i_7 
       (.I0(reset_time_out),
        .I1(time_tlock_max_reg_n_0),
        .O(\FSM_sequential_tx_state[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_sequential_tx_state[3]_i_8 
       (.I0(wait_time_cnt_reg[3]),
        .I1(wait_time_cnt_reg[2]),
        .I2(wait_time_cnt_reg[1]),
        .I3(wait_time_cnt_reg[0]),
        .I4(wait_time_cnt_reg[4]),
        .I5(wait_time_cnt_reg[5]),
        .O(\FSM_sequential_tx_state[3]_i_8_n_0 ));
  (* FSM_ENCODED_STATES = "wait_for_txoutclk:0100,release_pll_reset:0011,wait_for_pll_lock:0010,assert_all_resets:0001,init:0000,wait_reset_done:0111,reset_fsm_done:1001,wait_for_txusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[0] 
       (.C(independent_clock_bufg),
        .CE(sync_PLL0LOCK_n_0),
        .D(\FSM_sequential_tx_state[0]_i_1_n_0 ),
        .Q(tx_state[0]),
        .R(out));
  (* FSM_ENCODED_STATES = "wait_for_txoutclk:0100,release_pll_reset:0011,wait_for_pll_lock:0010,assert_all_resets:0001,init:0000,wait_reset_done:0111,reset_fsm_done:1001,wait_for_txusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[1] 
       (.C(independent_clock_bufg),
        .CE(sync_PLL0LOCK_n_0),
        .D(tx_state__0[1]),
        .Q(tx_state[1]),
        .R(out));
  (* FSM_ENCODED_STATES = "wait_for_txoutclk:0100,release_pll_reset:0011,wait_for_pll_lock:0010,assert_all_resets:0001,init:0000,wait_reset_done:0111,reset_fsm_done:1001,wait_for_txusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[2] 
       (.C(independent_clock_bufg),
        .CE(sync_PLL0LOCK_n_0),
        .D(\FSM_sequential_tx_state[2]_i_1_n_0 ),
        .Q(tx_state[2]),
        .R(out));
  (* FSM_ENCODED_STATES = "wait_for_txoutclk:0100,release_pll_reset:0011,wait_for_pll_lock:0010,assert_all_resets:0001,init:0000,wait_reset_done:0111,reset_fsm_done:1001,wait_for_txusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[3] 
       (.C(independent_clock_bufg),
        .CE(sync_PLL0LOCK_n_0),
        .D(tx_state__0[3]),
        .Q(tx_state[3]),
        .R(out));
  LUT5 #(
    .INIT(32'hFFDF0010)) 
    MMCM_RESET_i_1
       (.I0(tx_state[2]),
        .I1(tx_state[3]),
        .I2(tx_state[0]),
        .I3(tx_state[1]),
        .I4(mmcm_reset),
        .O(MMCM_RESET_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    MMCM_RESET_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(MMCM_RESET_i_1_n_0),
        .Q(mmcm_reset),
        .R(out));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    PLL0_RESET_i_1
       (.I0(PLL0_RESET0),
        .I1(tx_state[1]),
        .I2(tx_state[3]),
        .I3(tx_state[0]),
        .I4(tx_state[2]),
        .I5(PLL0_RESET_reg_0),
        .O(PLL0_RESET_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    PLL0_RESET_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(PLL0_RESET_i_1_n_0),
        .Q(PLL0_RESET_reg_0),
        .R(out));
  LUT5 #(
    .INIT(32'hFFFB4000)) 
    TXUSERRDY_i_1
       (.I0(tx_state[3]),
        .I1(tx_state[0]),
        .I2(tx_state[1]),
        .I3(tx_state[2]),
        .I4(gt0_txuserrdy_t),
        .O(TXUSERRDY_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    TXUSERRDY_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(TXUSERRDY_i_1_n_0),
        .Q(gt0_txuserrdy_t),
        .R(out));
  LUT3 #(
    .INIT(8'hEA)) 
    gtpe2_i_i_3
       (.I0(GTTXRESET),
        .I1(data_in),
        .I2(gtpe2_i),
        .O(gt0_gttxreset_in0_out));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
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
        .R(out));
  LUT1 #(
    .INIT(2'h1)) 
    \init_wait_count[0]_i_1 
       (.I0(init_wait_count_reg[0]),
        .O(\init_wait_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \init_wait_count[1]_i_1 
       (.I0(init_wait_count_reg[0]),
        .I1(init_wait_count_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \init_wait_count[2]_i_1 
       (.I0(init_wait_count_reg[2]),
        .I1(init_wait_count_reg[0]),
        .I2(init_wait_count_reg[1]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \init_wait_count[3]_i_1__0 
       (.I0(init_wait_count_reg[3]),
        .I1(init_wait_count_reg[0]),
        .I2(init_wait_count_reg[1]),
        .I3(init_wait_count_reg[2]),
        .O(\init_wait_count[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \init_wait_count[4]_i_1 
       (.I0(init_wait_count_reg[4]),
        .I1(init_wait_count_reg[2]),
        .I2(init_wait_count_reg[1]),
        .I3(init_wait_count_reg[0]),
        .I4(init_wait_count_reg[3]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \init_wait_count[5]_i_1 
       (.I0(init_wait_count_reg[5]),
        .I1(init_wait_count_reg[3]),
        .I2(init_wait_count_reg[0]),
        .I3(init_wait_count_reg[1]),
        .I4(init_wait_count_reg[2]),
        .I5(init_wait_count_reg[4]),
        .O(p_0_in__0[5]));
  LUT6 #(
    .INIT(64'hFEFFFFFFFFFFFFFF)) 
    \init_wait_count[6]_i_1 
       (.I0(\init_wait_count[6]_i_3_n_0 ),
        .I1(init_wait_count_reg[4]),
        .I2(init_wait_count_reg[0]),
        .I3(init_wait_count_reg[3]),
        .I4(init_wait_count_reg[6]),
        .I5(init_wait_count_reg[5]),
        .O(init_wait_count));
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    \init_wait_count[6]_i_2 
       (.I0(init_wait_count_reg[6]),
        .I1(init_wait_count_reg[4]),
        .I2(\init_wait_count[6]_i_4_n_0 ),
        .I3(init_wait_count_reg[3]),
        .I4(init_wait_count_reg[5]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \init_wait_count[6]_i_3 
       (.I0(init_wait_count_reg[1]),
        .I1(init_wait_count_reg[2]),
        .O(\init_wait_count[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \init_wait_count[6]_i_4 
       (.I0(init_wait_count_reg[2]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[0]),
        .O(\init_wait_count[6]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[0] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(out),
        .D(\init_wait_count[0]_i_1_n_0 ),
        .Q(init_wait_count_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[1] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(out),
        .D(p_0_in__0[1]),
        .Q(init_wait_count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[2] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(out),
        .D(p_0_in__0[2]),
        .Q(init_wait_count_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[3] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(out),
        .D(\init_wait_count[3]_i_1__0_n_0 ),
        .Q(init_wait_count_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[4] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(out),
        .D(p_0_in__0[4]),
        .Q(init_wait_count_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[5] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(out),
        .D(p_0_in__0[5]),
        .Q(init_wait_count_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[6] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(out),
        .D(p_0_in__0[6]),
        .Q(init_wait_count_reg[6]));
  LUT2 #(
    .INIT(4'hE)) 
    init_wait_done_i_1__0
       (.I0(init_wait_done),
        .I1(init_wait_done_reg_n_0),
        .O(init_wait_done_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    init_wait_done_i_2
       (.I0(init_wait_count_reg[5]),
        .I1(init_wait_count_reg[6]),
        .I2(init_wait_count_reg[3]),
        .I3(init_wait_count_reg[0]),
        .I4(init_wait_count_reg[4]),
        .I5(\init_wait_count[6]_i_3_n_0 ),
        .O(init_wait_done));
  FDCE #(
    .INIT(1'b0)) 
    init_wait_done_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .CLR(out),
        .D(init_wait_done_i_1__0_n_0),
        .Q(init_wait_done_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[0]_i_1 
       (.I0(mmcm_lock_count_reg[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mmcm_lock_count[1]_i_1 
       (.I0(mmcm_lock_count_reg[1]),
        .I1(mmcm_lock_count_reg[0]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \mmcm_lock_count[2]_i_1 
       (.I0(mmcm_lock_count_reg[2]),
        .I1(mmcm_lock_count_reg[1]),
        .I2(mmcm_lock_count_reg[0]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \mmcm_lock_count[3]_i_1 
       (.I0(mmcm_lock_count_reg[0]),
        .I1(mmcm_lock_count_reg[1]),
        .I2(mmcm_lock_count_reg[2]),
        .I3(mmcm_lock_count_reg[3]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \mmcm_lock_count[7]_i_3 
       (.I0(mmcm_lock_count_reg[7]),
        .I1(mmcm_lock_count_reg[5]),
        .I2(\mmcm_lock_count[7]_i_4_n_0 ),
        .I3(mmcm_lock_count_reg[4]),
        .I4(mmcm_lock_count_reg[6]),
        .O(p_0_in__1[7]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
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
    .INIT(64'hFFFFFF3F00000020)) 
    pll_reset_asserted_i_1
       (.I0(PLL0_RESET0),
        .I1(tx_state[1]),
        .I2(tx_state[0]),
        .I3(tx_state[3]),
        .I4(tx_state[2]),
        .I5(pll_reset_asserted_reg_n_0),
        .O(pll_reset_asserted_i_1_n_0));
  LUT3 #(
    .INIT(8'h57)) 
    pll_reset_asserted_i_2
       (.I0(refclk_stable_reg_n_0),
        .I1(pll_reset_asserted_reg_n_0),
        .I2(gt0_pll0refclklost_out),
        .O(PLL0_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    pll_reset_asserted_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(pll_reset_asserted_i_1_n_0),
        .Q(pll_reset_asserted_reg_n_0),
        .R(out));
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
       (.I0(refclk_stable_count_reg[28]),
        .I1(refclk_stable_count_reg[21]),
        .I2(refclk_stable_count_reg[23]),
        .I3(refclk_stable_count_reg[25]),
        .O(\refclk_stable_count[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \refclk_stable_count[0]_i_11 
       (.I0(refclk_stable_count_reg[26]),
        .I1(refclk_stable_count_reg[11]),
        .I2(refclk_stable_count_reg[13]),
        .I3(refclk_stable_count_reg[20]),
        .O(\refclk_stable_count[0]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \refclk_stable_count[0]_i_3 
       (.I0(refclk_stable_count_reg[18]),
        .I1(refclk_stable_count_reg[6]),
        .I2(refclk_stable_count_reg[22]),
        .I3(refclk_stable_count_reg[29]),
        .I4(\refclk_stable_count[0]_i_8_n_0 ),
        .O(\refclk_stable_count[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \refclk_stable_count[0]_i_4 
       (.I0(refclk_stable_count_reg[0]),
        .I1(refclk_stable_count_reg[14]),
        .I2(refclk_stable_count_reg[31]),
        .I3(refclk_stable_count_reg[8]),
        .I4(\refclk_stable_count[0]_i_9_n_0 ),
        .O(\refclk_stable_count[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00001000)) 
    \refclk_stable_count[0]_i_5 
       (.I0(refclk_stable_count_reg[17]),
        .I1(refclk_stable_count_reg[12]),
        .I2(refclk_stable_count_reg[19]),
        .I3(refclk_stable_count_reg[16]),
        .I4(\refclk_stable_count[0]_i_10_n_0 ),
        .O(\refclk_stable_count[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \refclk_stable_count[0]_i_6 
       (.I0(refclk_stable_count_reg[1]),
        .I1(refclk_stable_count_reg[7]),
        .I2(refclk_stable_count_reg[30]),
        .I3(refclk_stable_count_reg[9]),
        .I4(\refclk_stable_count[0]_i_11_n_0 ),
        .O(\refclk_stable_count[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \refclk_stable_count[0]_i_7 
       (.I0(refclk_stable_count_reg[0]),
        .O(\refclk_stable_count[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \refclk_stable_count[0]_i_8 
       (.I0(refclk_stable_count_reg[10]),
        .I1(refclk_stable_count_reg[27]),
        .I2(refclk_stable_count_reg[3]),
        .I3(refclk_stable_count_reg[2]),
        .O(\refclk_stable_count[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \refclk_stable_count[0]_i_9 
       (.I0(refclk_stable_count_reg[4]),
        .I1(refclk_stable_count_reg[24]),
        .I2(refclk_stable_count_reg[15]),
        .I3(refclk_stable_count_reg[5]),
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
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    reset_time_out_i_2
       (.I0(tx_state[2]),
        .I1(tx_state[3]),
        .I2(tx_state[0]),
        .O(reset_time_out_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    reset_time_out_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(sync_PLL0LOCK_n_1),
        .Q(reset_time_out),
        .R(out));
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
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_s3_reg
       (.C(data_sync_reg1),
        .CE(1'b1),
        .D(data_out),
        .Q(run_phase_alignment_int_s3),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_7 sync_PLL0LOCK
       (.E(sync_PLL0LOCK_n_0),
        .\FSM_sequential_tx_state_reg[0] (\FSM_sequential_tx_state[3]_i_5_n_0 ),
        .\FSM_sequential_tx_state_reg[0]_0 (time_out_500us_reg_n_0),
        .\FSM_sequential_tx_state_reg[0]_1 (time_out_2ms_reg_n_0),
        .\FSM_sequential_tx_state_reg[0]_2 (\FSM_sequential_tx_state[3]_i_7_n_0 ),
        .\FSM_sequential_tx_state_reg[0]_3 (refclk_stable_reg_n_0),
        .\FSM_sequential_tx_state_reg[0]_4 (pll_reset_asserted_reg_n_0),
        .Q(tx_state),
        .gt0_pll0lock_out(gt0_pll0lock_out),
        .independent_clock_bufg(independent_clock_bufg),
        .init_wait_done_reg(sync_PLL0LOCK_n_1),
        .mmcm_lock_reclocked(mmcm_lock_reclocked),
        .reset_time_out(reset_time_out),
        .reset_time_out_reg(init_wait_done_reg_n_0),
        .reset_time_out_reg_0(reset_time_out_i_2_n_0),
        .txresetdone_s3(txresetdone_s3));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_8 sync_TXRESETDONE
       (.data_out(txresetdone_s2),
        .data_sync_reg1_0(data_sync_reg1_0),
        .independent_clock_bufg(independent_clock_bufg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_9 sync_mmcm_lock_reclocked
       (.SR(sync_mmcm_lock_reclocked_n_0),
        .data_out(mmcm_lock_i),
        .data_sync_reg1_0(data_sync_reg1_1),
        .independent_clock_bufg(independent_clock_bufg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_10 sync_run_phase_alignment_int
       (.data_in(run_phase_alignment_int_reg_n_0),
        .data_out(data_out),
        .data_sync_reg6_0(data_sync_reg1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_11 sync_time_out_wait_bypass
       (.data_in(time_out_wait_bypass_reg_n_0),
        .data_out(time_out_wait_bypass_s2),
        .independent_clock_bufg(independent_clock_bufg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_12 sync_tx_fsm_reset_done_int
       (.data_in(data_in),
        .data_out(tx_fsm_reset_done_int_s2),
        .data_sync_reg1_0(data_sync_reg1));
  LUT3 #(
    .INIT(8'h0E)) 
    time_out_2ms_i_1
       (.I0(time_out_2ms_reg_n_0),
        .I1(time_out_2ms),
        .I2(reset_time_out),
        .O(time_out_2ms_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000010)) 
    time_out_2ms_i_2__0
       (.I0(time_out_500us_i_3_n_0),
        .I1(time_out_2ms_i_3__0_n_0),
        .I2(time_out_2ms_i_4_n_0),
        .I3(time_out_2ms_i_5_n_0),
        .I4(time_out_500us_i_4_n_0),
        .O(time_out_2ms));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    time_out_2ms_i_3__0
       (.I0(time_out_counter_reg[3]),
        .I1(time_out_counter_reg[5]),
        .I2(time_out_counter_reg[9]),
        .I3(time_out_counter_reg[10]),
        .O(time_out_2ms_i_3__0_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    time_out_2ms_i_4
       (.I0(time_out_counter_reg[1]),
        .I1(time_out_counter_reg[2]),
        .I2(time_out_counter_reg[0]),
        .O(time_out_2ms_i_4_n_0));
  LUT6 #(
    .INIT(64'hFEFFFFFFFFFFFFFF)) 
    time_out_2ms_i_5
       (.I0(time_out_counter_reg[16]),
        .I1(time_out_counter_reg[15]),
        .I2(time_out_counter_reg[4]),
        .I3(time_out_counter_reg[18]),
        .I4(time_out_counter_reg[11]),
        .I5(time_out_counter_reg[17]),
        .O(time_out_2ms_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_2ms_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_out_2ms_i_1_n_0),
        .Q(time_out_2ms_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000AAAAAABA)) 
    time_out_500us_i_1
       (.I0(time_out_500us_reg_n_0),
        .I1(time_out_500us_i_2_n_0),
        .I2(time_out_500us_i_3_n_0),
        .I3(time_tlock_max_i_5_n_0),
        .I4(time_out_500us_i_4_n_0),
        .I5(reset_time_out),
        .O(time_out_500us_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFBFFFF)) 
    time_out_500us_i_2
       (.I0(time_out_counter_reg[11]),
        .I1(time_out_counter_reg[16]),
        .I2(time_out_counter_reg[18]),
        .I3(time_out_counter_reg[17]),
        .I4(time_out_counter_reg[15]),
        .I5(time_out_500us_i_5_n_0),
        .O(time_out_500us_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'h0D)) 
    time_out_500us_i_3
       (.I0(time_out_counter_reg[12]),
        .I1(time_out_counter_reg[13]),
        .I2(time_out_counter_reg[14]),
        .O(time_out_500us_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    time_out_500us_i_4
       (.I0(time_out_counter_reg[13]),
        .I1(time_out_counter_reg[8]),
        .I2(time_out_counter_reg[6]),
        .I3(time_out_counter_reg[7]),
        .I4(time_out_counter_reg[14]),
        .O(time_out_500us_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h7)) 
    time_out_500us_i_5
       (.I0(time_out_counter_reg[9]),
        .I1(time_out_counter_reg[10]),
        .O(time_out_500us_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_500us_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_out_500us_i_1_n_0),
        .Q(time_out_500us_reg_n_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \time_out_counter[0]_i_1__0 
       (.I0(time_out_2ms),
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
        .S({time_out_counter_reg[3:1],\time_out_counter[0]_i_3_n_0 }));
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
       (.C(data_sync_reg1),
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
  LUT6 #(
    .INIT(64'h00000000AAAAAAAB)) 
    time_tlock_max_i_1
       (.I0(time_tlock_max_reg_n_0),
        .I1(time_tlock_max_i_2_n_0),
        .I2(time_tlock_max_i_3_n_0),
        .I3(time_tlock_max_i_4_n_0),
        .I4(time_tlock_max_i_5_n_0),
        .I5(reset_time_out),
        .O(time_tlock_max_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    time_tlock_max_i_2
       (.I0(time_out_counter_reg[7]),
        .I1(time_out_counter_reg[11]),
        .I2(time_out_counter_reg[12]),
        .O(time_tlock_max_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    time_tlock_max_i_3
       (.I0(time_out_counter_reg[17]),
        .I1(time_out_counter_reg[6]),
        .I2(time_out_counter_reg[14]),
        .I3(time_out_counter_reg[18]),
        .O(time_tlock_max_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFFF)) 
    time_tlock_max_i_4
       (.I0(time_out_counter_reg[13]),
        .I1(time_out_counter_reg[8]),
        .I2(time_out_counter_reg[9]),
        .I3(time_out_counter_reg[10]),
        .I4(time_out_counter_reg[15]),
        .I5(time_out_counter_reg[16]),
        .O(time_tlock_max_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    time_tlock_max_i_5
       (.I0(time_out_counter_reg[4]),
        .I1(time_out_counter_reg[5]),
        .I2(time_out_counter_reg[3]),
        .I3(time_out_counter_reg[0]),
        .I4(time_out_counter_reg[2]),
        .I5(time_out_counter_reg[1]),
        .O(time_tlock_max_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_tlock_max_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_tlock_max_i_1_n_0),
        .Q(time_tlock_max_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFF0008)) 
    tx_fsm_reset_done_int_i_1
       (.I0(tx_state[3]),
        .I1(tx_state[0]),
        .I2(tx_state[1]),
        .I3(tx_state[2]),
        .I4(data_in),
        .O(tx_fsm_reset_done_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tx_fsm_reset_done_int_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(tx_fsm_reset_done_int_i_1_n_0),
        .Q(data_in),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    tx_fsm_reset_done_int_s3_reg
       (.C(data_sync_reg1),
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
       (.C(data_sync_reg1),
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
       (.C(data_sync_reg1),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1_n_5 ),
        .Q(wait_bypass_count_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[11] 
       (.C(data_sync_reg1),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1_n_4 ),
        .Q(wait_bypass_count_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[12] 
       (.C(data_sync_reg1),
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
       (.C(data_sync_reg1),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1_n_6 ),
        .Q(wait_bypass_count_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[14] 
       (.C(data_sync_reg1),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1_n_5 ),
        .Q(wait_bypass_count_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[15] 
       (.C(data_sync_reg1),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1_n_4 ),
        .Q(wait_bypass_count_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[16] 
       (.C(data_sync_reg1),
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
       (.C(data_sync_reg1),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3_n_6 ),
        .Q(wait_bypass_count_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[2] 
       (.C(data_sync_reg1),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3_n_5 ),
        .Q(wait_bypass_count_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[3] 
       (.C(data_sync_reg1),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3_n_4 ),
        .Q(wait_bypass_count_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[4] 
       (.C(data_sync_reg1),
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
       (.C(data_sync_reg1),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1_n_6 ),
        .Q(wait_bypass_count_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[6] 
       (.C(data_sync_reg1),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1_n_5 ),
        .Q(wait_bypass_count_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[7] 
       (.C(data_sync_reg1),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1_n_4 ),
        .Q(wait_bypass_count_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[8] 
       (.C(data_sync_reg1),
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
       (.C(data_sync_reg1),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1_n_6 ),
        .Q(wait_bypass_count_reg[9]),
        .R(clear));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_1 
       (.I0(wait_time_cnt_reg[0]),
        .O(wait_time_cnt0[0]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \wait_time_cnt[3]_i_1 
       (.I0(wait_time_cnt_reg[2]),
        .I1(wait_time_cnt_reg[0]),
        .I2(wait_time_cnt_reg[1]),
        .I3(wait_time_cnt_reg[3]),
        .O(wait_time_cnt0[3]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \wait_time_cnt[4]_i_1 
       (.I0(wait_time_cnt_reg[4]),
        .I1(wait_time_cnt_reg[3]),
        .I2(wait_time_cnt_reg[2]),
        .I3(wait_time_cnt_reg[1]),
        .I4(wait_time_cnt_reg[0]),
        .O(wait_time_cnt0[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \wait_time_cnt[5]_i_1 
       (.I0(wait_time_cnt_reg[5]),
        .I1(wait_time_cnt_reg[4]),
        .I2(wait_time_cnt_reg[0]),
        .I3(wait_time_cnt_reg[1]),
        .I4(wait_time_cnt_reg[2]),
        .I5(wait_time_cnt_reg[3]),
        .O(wait_time_cnt0[5]));
  LUT4 #(
    .INIT(16'h0444)) 
    \wait_time_cnt[6]_i_1__0 
       (.I0(tx_state[3]),
        .I1(tx_state[0]),
        .I2(tx_state[1]),
        .I3(tx_state[2]),
        .O(wait_time_cnt0_0));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \wait_time_cnt[6]_i_2 
       (.I0(wait_time_cnt_reg[6]),
        .I1(wait_time_cnt_reg[5]),
        .I2(wait_time_cnt_reg[4]),
        .I3(\wait_time_cnt[6]_i_4_n_0 ),
        .O(sel));
  LUT4 #(
    .INIT(16'hA9AA)) 
    \wait_time_cnt[6]_i_3 
       (.I0(wait_time_cnt_reg[6]),
        .I1(wait_time_cnt_reg[5]),
        .I2(wait_time_cnt_reg[4]),
        .I3(\wait_time_cnt[6]_i_4_n_0 ),
        .O(wait_time_cnt0[6]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \wait_time_cnt[6]_i_4 
       (.I0(wait_time_cnt_reg[0]),
        .I1(wait_time_cnt_reg[1]),
        .I2(wait_time_cnt_reg[2]),
        .I3(wait_time_cnt_reg[3]),
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
        .D(wait_time_cnt0[4]),
        .Q(wait_time_cnt_reg[4]),
        .R(wait_time_cnt0_0));
  FDSE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[5] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(wait_time_cnt0[5]),
        .Q(wait_time_cnt_reg[5]),
        .S(wait_time_cnt0_0));
  FDSE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[6] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(wait_time_cnt0[6]),
        .Q(wait_time_cnt_reg[6]),
        .S(wait_time_cnt0_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_block
   (gmii_rxd,
    gmii_rx_dv,
    gmii_rx_er,
    gmii_isolate,
    an_interrupt,
    status_vector,
    resetdone,
    txn,
    txp,
    rxoutclk,
    txoutclk,
    mmcm_reset,
    gt0_pll0reset_out,
    out,
    signal_detect,
    userclk2,
    data_in,
    gmii_txd,
    gmii_tx_en,
    gmii_tx_er,
    an_adv_config_vector,
    an_restart_config,
    configuration_vector,
    CLK,
    rxn,
    rxp,
    gt0_pll0outclk_out,
    gt0_pll0outrefclk_out,
    gt0_pll1outclk_out,
    gt0_pll1outrefclk_out,
    gtpe2_i,
    independent_clock_bufg,
    gt0_pll0refclklost_out,
    gt0_pll0lock_out);
  output [7:0]gmii_rxd;
  output gmii_rx_dv;
  output gmii_rx_er;
  output gmii_isolate;
  output an_interrupt;
  output [12:0]status_vector;
  output resetdone;
  output txn;
  output txp;
  output rxoutclk;
  output txoutclk;
  output mmcm_reset;
  output gt0_pll0reset_out;
  input [0:0]out;
  input signal_detect;
  input userclk2;
  input data_in;
  input [7:0]gmii_txd;
  input gmii_tx_en;
  input gmii_tx_er;
  input [6:0]an_adv_config_vector;
  input an_restart_config;
  input [4:0]configuration_vector;
  input CLK;
  input rxn;
  input rxp;
  input gt0_pll0outclk_out;
  input gt0_pll0outrefclk_out;
  input gt0_pll1outclk_out;
  input gt0_pll1outrefclk_out;
  input gtpe2_i;
  input independent_clock_bufg;
  input gt0_pll0refclklost_out;
  input gt0_pll0lock_out;

  wire CLK;
  wire [6:0]an_adv_config_vector;
  wire an_interrupt;
  wire an_restart_config;
  wire [4:0]configuration_vector;
  wire data_in;
  wire enablealign;
  wire gmii_isolate;
  wire gmii_rx_dv;
  wire gmii_rx_er;
  wire [7:0]gmii_rxd;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire [7:0]gmii_txd;
  wire gt0_pll0lock_out;
  wire gt0_pll0outclk_out;
  wire gt0_pll0outrefclk_out;
  wire gt0_pll0refclklost_out;
  wire gt0_pll0reset_out;
  wire gt0_pll1outclk_out;
  wire gt0_pll1outrefclk_out;
  wire gtpe2_i;
  wire independent_clock_bufg;
  wire mgt_rx_reset;
  wire mgt_tx_reset;
  wire mmcm_reset;
  wire [0:0]out;
  wire powerdown;
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
  wire [12:0]status_vector;
  wire transceiver_inst_n_12;
  wire transceiver_inst_n_13;
  wire txbuferr;
  wire txchardispmode;
  wire txchardispval;
  wire txcharisk;
  wire [7:0]txdata;
  wire txn;
  wire txoutclk;
  wire txp;
  wire userclk2;
  wire NLW_gig_ethernet_pcs_pma_0_core_an_enable_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_0_core_drp_den_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_0_core_drp_dwe_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_0_core_drp_req_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_0_core_en_cdet_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_0_core_ewrap_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_0_core_loc_ref_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_0_core_mdio_out_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_0_core_mdio_tri_UNCONNECTED;
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

  (* B_SHIFTER_ADDR = "10'b0101010000" *) 
  (* C_1588 = "0" *) 
  (* C_2_5G = "FALSE" *) 
  (* C_COMPONENT_NAME = "gig_ethernet_pcs_pma_0" *) 
  (* C_DYNAMIC_SWITCHING = "FALSE" *) 
  (* C_ELABORATION_TRANSIENT_DIR = "BlankString" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AN = "TRUE" *) 
  (* C_HAS_AXIL = "FALSE" *) 
  (* C_HAS_MDIO = "FALSE" *) 
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
       (.an_adv_config_val(1'b0),
        .an_adv_config_vector({an_adv_config_vector[6],1'b0,an_adv_config_vector[5:3],1'b0,1'b0,an_adv_config_vector[2:1],1'b0,an_adv_config_vector[0],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .an_enable(NLW_gig_ethernet_pcs_pma_0_core_an_enable_UNCONNECTED),
        .an_interrupt(an_interrupt),
        .an_restart_config(an_restart_config),
        .basex_or_sgmii(1'b0),
        .configuration_valid(1'b0),
        .configuration_vector(configuration_vector),
        .correction_timer({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dcm_locked(data_in),
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
        .mdc(1'b0),
        .mdio_in(1'b0),
        .mdio_out(NLW_gig_ethernet_pcs_pma_0_core_mdio_out_UNCONNECTED),
        .mdio_tri(NLW_gig_ethernet_pcs_pma_0_core_mdio_tri_UNCONNECTED),
        .mgt_rx_reset(mgt_rx_reset),
        .mgt_tx_reset(mgt_tx_reset),
        .phyad({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pma_rx_clk0(1'b0),
        .pma_rx_clk1(1'b0),
        .powerdown(powerdown),
        .reset(out),
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
        .status_vector({status_vector[12:9],NLW_gig_ethernet_pcs_pma_0_core_status_vector_UNCONNECTED[11:10],status_vector[8:7],NLW_gig_ethernet_pcs_pma_0_core_status_vector_UNCONNECTED[7],status_vector[6:0]}),
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
       (.data_in(transceiver_inst_n_13),
        .data_out(rx_reset_done_i),
        .userclk2(userclk2));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_0 sync_block_tx_reset_done
       (.data_in(transceiver_inst_n_12),
        .resetdone(resetdone),
        .resetdone_0(rx_reset_done_i),
        .userclk2(userclk2));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_transceiver transceiver_inst
       (.CLK(CLK),
        .D(txchardispmode),
        .Q(rxclkcorcnt),
        .SR(mgt_tx_reset),
        .data_in(transceiver_inst_n_12),
        .data_sync_reg1(data_in),
        .enablealign(enablealign),
        .gt0_pll0lock_out(gt0_pll0lock_out),
        .gt0_pll0outclk_out(gt0_pll0outclk_out),
        .gt0_pll0outrefclk_out(gt0_pll0outrefclk_out),
        .gt0_pll0refclklost_out(gt0_pll0refclklost_out),
        .gt0_pll1outclk_out(gt0_pll1outclk_out),
        .gt0_pll1outrefclk_out(gt0_pll1outrefclk_out),
        .gtpe2_i(gtpe2_i),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_reset(mmcm_reset),
        .out(out),
        .powerdown(powerdown),
        .reset_in(gt0_pll0reset_out),
        .reset_sync5(mgt_rx_reset),
        .rx_fsm_reset_done_int_reg(transceiver_inst_n_13),
        .rxbufstatus(rxbuferr),
        .rxchariscomma(rxchariscomma),
        .rxcharisk(rxcharisk),
        .\rxdata_reg[7]_0 (rxdata),
        .rxdisperr(rxdisperr),
        .rxn(rxn),
        .rxnotintable(rxnotintable),
        .rxoutclk(rxoutclk),
        .rxp(rxp),
        .status_vector(status_vector[1]),
        .txbuferr(txbuferr),
        .txchardispval_reg_reg_0(txchardispval),
        .txcharisk_reg_reg_0(txcharisk),
        .\txdata_reg_reg[7]_0 (txdata),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp),
        .userclk2(userclk2));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_clocking
   (gtrefclk_out,
    gtrefclk_bufg,
    mmcm_locked,
    userclk,
    userclk2,
    rxuserclk2_out,
    gtrefclk_p,
    gtrefclk_n,
    txoutclk,
    mmcm_reset,
    rxoutclk);
  output gtrefclk_out;
  output gtrefclk_bufg;
  output mmcm_locked;
  output userclk;
  output userclk2;
  output rxuserclk2_out;
  input gtrefclk_p;
  input gtrefclk_n;
  input txoutclk;
  input mmcm_reset;
  input rxoutclk;

  wire clkfbout;
  wire clkout0;
  wire clkout1;
  wire gtrefclk_bufg;
  wire gtrefclk_n;
  wire gtrefclk_out;
  wire gtrefclk_p;
  wire mmcm_locked;
  wire mmcm_reset;
  wire rxoutclk;
  wire rxuserclk2_out;
  wire txoutclk;
  wire txoutclk_bufg;
  wire userclk;
  wire userclk2;
  wire NLW_ibufds_gtrefclk_ODIV2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_adv_inst_DO_UNCONNECTED;

  (* box_type = "PRIMITIVE" *) 
  BUFG bufg_gtrefclk
       (.I(gtrefclk_out),
        .O(gtrefclk_bufg));
  (* box_type = "PRIMITIVE" *) 
  BUFG bufg_txoutclk
       (.I(txoutclk),
        .O(txoutclk_bufg));
  (* box_type = "PRIMITIVE" *) 
  BUFG bufg_userclk
       (.I(clkout1),
        .O(userclk));
  (* box_type = "PRIMITIVE" *) 
  BUFG bufg_userclk2
       (.I(clkout0),
        .O(userclk2));
  (* box_type = "PRIMITIVE" *) 
  IBUFDS_GTE2 #(
    .CLKCM_CFG("TRUE"),
    .CLKRCV_TRST("TRUE"),
    .CLKSWING_CFG(2'b11)) 
    ibufds_gtrefclk
       (.CEB(1'b0),
        .I(gtrefclk_p),
        .IB(gtrefclk_n),
        .O(gtrefclk_out),
        .ODIV2(NLW_ibufds_gtrefclk_ODIV2_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(16.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(16.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(8.000000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(16),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("INTERNAL"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.000000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout),
        .CLKFBOUT(clkfbout),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(txoutclk_bufg),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clkout0),
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(clkout1),
        .CLKOUT1B(NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcm_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(mmcm_locked),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(mmcm_reset));
  (* box_type = "PRIMITIVE" *) 
  BUFG rxrecclkbufg
       (.I(rxoutclk),
        .O(rxuserclk2_out));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_common_reset
   (PLL0RESET,
    independent_clock_bufg,
    out,
    gt0_pll0reset_out,
    cpll_reset_i);
  output PLL0RESET;
  input independent_clock_bufg;
  input [0:0]out;
  input gt0_pll0reset_out;
  input cpll_reset_i;

  wire COMMON_RESET;
  wire COMMON_RESET_i_1_n_0;
  wire PLL0RESET;
  wire common_reset_asserted;
  wire common_reset_asserted_i_1_n_0;
  wire cpll_reset_i;
  wire gt0_pll0reset_out;
  wire independent_clock_bufg;
  wire \init_wait_count[7]_i_1_n_0 ;
  wire \init_wait_count[7]_i_3_n_0 ;
  wire \init_wait_count[7]_i_4_n_0 ;
  wire [7:0]init_wait_count_reg;
  wire init_wait_done;
  wire init_wait_done_i_1_n_0;
  wire [0:0]out;
  wire [7:0]plusOp;
  wire state;
  wire state_i_1_n_0;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h74)) 
    COMMON_RESET_i_1
       (.I0(common_reset_asserted),
        .I1(state),
        .I2(COMMON_RESET),
        .O(COMMON_RESET_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    COMMON_RESET_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(COMMON_RESET_i_1_n_0),
        .Q(COMMON_RESET),
        .R(out));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    common_reset_asserted_i_1
       (.I0(state),
        .I1(common_reset_asserted),
        .O(common_reset_asserted_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    common_reset_asserted_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(common_reset_asserted_i_1_n_0),
        .Q(common_reset_asserted),
        .R(out));
  LUT3 #(
    .INIT(8'hFE)) 
    gtpe2_common_i_i_1
       (.I0(COMMON_RESET),
        .I1(gt0_pll0reset_out),
        .I2(cpll_reset_i),
        .O(PLL0RESET));
  LUT1 #(
    .INIT(2'h1)) 
    \init_wait_count[0]_i_1__1 
       (.I0(init_wait_count_reg[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \init_wait_count[1]_i_1__1 
       (.I0(init_wait_count_reg[0]),
        .I1(init_wait_count_reg[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \init_wait_count[2]_i_1__1 
       (.I0(init_wait_count_reg[2]),
        .I1(init_wait_count_reg[0]),
        .I2(init_wait_count_reg[1]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \init_wait_count[3]_i_1 
       (.I0(init_wait_count_reg[3]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[0]),
        .I3(init_wait_count_reg[2]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \init_wait_count[4]_i_1__1 
       (.I0(init_wait_count_reg[4]),
        .I1(init_wait_count_reg[2]),
        .I2(init_wait_count_reg[0]),
        .I3(init_wait_count_reg[1]),
        .I4(init_wait_count_reg[3]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \init_wait_count[5]_i_1__1 
       (.I0(init_wait_count_reg[5]),
        .I1(init_wait_count_reg[2]),
        .I2(init_wait_count_reg[0]),
        .I3(init_wait_count_reg[1]),
        .I4(init_wait_count_reg[3]),
        .I5(init_wait_count_reg[4]),
        .O(plusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \init_wait_count[6]_i_1__1 
       (.I0(init_wait_count_reg[6]),
        .I1(\init_wait_count[7]_i_4_n_0 ),
        .I2(init_wait_count_reg[5]),
        .O(plusOp[6]));
  LUT5 #(
    .INIT(32'hEFFFFFFF)) 
    \init_wait_count[7]_i_1 
       (.I0(\init_wait_count[7]_i_3_n_0 ),
        .I1(init_wait_count_reg[7]),
        .I2(init_wait_count_reg[2]),
        .I3(init_wait_count_reg[3]),
        .I4(init_wait_count_reg[6]),
        .O(\init_wait_count[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \init_wait_count[7]_i_2 
       (.I0(init_wait_count_reg[7]),
        .I1(init_wait_count_reg[5]),
        .I2(\init_wait_count[7]_i_4_n_0 ),
        .I3(init_wait_count_reg[6]),
        .O(plusOp[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \init_wait_count[7]_i_3 
       (.I0(init_wait_count_reg[1]),
        .I1(init_wait_count_reg[0]),
        .I2(init_wait_count_reg[5]),
        .I3(init_wait_count_reg[4]),
        .O(\init_wait_count[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \init_wait_count[7]_i_4 
       (.I0(init_wait_count_reg[4]),
        .I1(init_wait_count_reg[3]),
        .I2(init_wait_count_reg[1]),
        .I3(init_wait_count_reg[0]),
        .I4(init_wait_count_reg[2]),
        .O(\init_wait_count[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[0] 
       (.C(independent_clock_bufg),
        .CE(\init_wait_count[7]_i_1_n_0 ),
        .D(plusOp[0]),
        .Q(init_wait_count_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[1] 
       (.C(independent_clock_bufg),
        .CE(\init_wait_count[7]_i_1_n_0 ),
        .D(plusOp[1]),
        .Q(init_wait_count_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[2] 
       (.C(independent_clock_bufg),
        .CE(\init_wait_count[7]_i_1_n_0 ),
        .D(plusOp[2]),
        .Q(init_wait_count_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[3] 
       (.C(independent_clock_bufg),
        .CE(\init_wait_count[7]_i_1_n_0 ),
        .D(plusOp[3]),
        .Q(init_wait_count_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[4] 
       (.C(independent_clock_bufg),
        .CE(\init_wait_count[7]_i_1_n_0 ),
        .D(plusOp[4]),
        .Q(init_wait_count_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[5] 
       (.C(independent_clock_bufg),
        .CE(\init_wait_count[7]_i_1_n_0 ),
        .D(plusOp[5]),
        .Q(init_wait_count_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[6] 
       (.C(independent_clock_bufg),
        .CE(\init_wait_count[7]_i_1_n_0 ),
        .D(plusOp[6]),
        .Q(init_wait_count_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[7] 
       (.C(independent_clock_bufg),
        .CE(\init_wait_count[7]_i_1_n_0 ),
        .D(plusOp[7]),
        .Q(init_wait_count_reg[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hABAAAAAAAAAAAAAA)) 
    init_wait_done_i_1
       (.I0(init_wait_done),
        .I1(\init_wait_count[7]_i_3_n_0 ),
        .I2(init_wait_count_reg[7]),
        .I3(init_wait_count_reg[2]),
        .I4(init_wait_count_reg[3]),
        .I5(init_wait_count_reg[6]),
        .O(init_wait_done_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    init_wait_done_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(init_wait_done_i_1_n_0),
        .Q(init_wait_done),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    state_i_1
       (.I0(init_wait_done),
        .I1(state),
        .O(state_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    state_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(state_i_1_n_0),
        .Q(state),
        .R(out));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_gt_common
   (gt0_pll0lock_out,
    gt0_pll0outclk_out,
    gt0_pll0outrefclk_out,
    gt0_pll0refclklost_out,
    gt0_pll1outclk_out,
    gt0_pll1outrefclk_out,
    cpll_reset_i,
    gtrefclk_out,
    independent_clock_bufg,
    PLL0RESET,
    gtrefclk_bufg);
  output gt0_pll0lock_out;
  output gt0_pll0outclk_out;
  output gt0_pll0outrefclk_out;
  output gt0_pll0refclklost_out;
  output gt0_pll1outclk_out;
  output gt0_pll1outrefclk_out;
  output cpll_reset_i;
  input gtrefclk_out;
  input independent_clock_bufg;
  input PLL0RESET;
  input gtrefclk_bufg;

  wire PLL0PD;
  wire PLL0RESET;
  wire cpll_reset_i;
  wire \cpllpd_wait_reg[31]_srl32_n_1 ;
  wire \cpllpd_wait_reg[63]_srl32_n_1 ;
  wire \cpllpd_wait_reg[94]_srl31_n_0 ;
  wire \cpllreset_wait_reg[126]_srl31_n_0 ;
  wire \cpllreset_wait_reg[31]_srl32_n_1 ;
  wire \cpllreset_wait_reg[63]_srl32_n_1 ;
  wire \cpllreset_wait_reg[95]_srl32_n_1 ;
  wire gt0_pll0lock_out;
  wire gt0_pll0outclk_out;
  wire gt0_pll0outrefclk_out;
  wire gt0_pll0refclklost_out;
  wire gt0_pll1outclk_out;
  wire gt0_pll1outrefclk_out;
  wire gtrefclk_bufg;
  wire gtrefclk_out;
  wire independent_clock_bufg;
  wire \NLW_cpllpd_wait_reg[31]_srl32_Q_UNCONNECTED ;
  wire \NLW_cpllpd_wait_reg[63]_srl32_Q_UNCONNECTED ;
  wire \NLW_cpllpd_wait_reg[94]_srl31_Q31_UNCONNECTED ;
  wire \NLW_cpllreset_wait_reg[126]_srl31_Q31_UNCONNECTED ;
  wire \NLW_cpllreset_wait_reg[31]_srl32_Q_UNCONNECTED ;
  wire \NLW_cpllreset_wait_reg[63]_srl32_Q_UNCONNECTED ;
  wire \NLW_cpllreset_wait_reg[95]_srl32_Q_UNCONNECTED ;
  wire NLW_gtpe2_common_i_DRPRDY_UNCONNECTED;
  wire NLW_gtpe2_common_i_PLL0FBCLKLOST_UNCONNECTED;
  wire NLW_gtpe2_common_i_PLL1FBCLKLOST_UNCONNECTED;
  wire NLW_gtpe2_common_i_PLL1LOCK_UNCONNECTED;
  wire NLW_gtpe2_common_i_PLL1REFCLKLOST_UNCONNECTED;
  wire NLW_gtpe2_common_i_REFCLKOUTMONITOR0_UNCONNECTED;
  wire NLW_gtpe2_common_i_REFCLKOUTMONITOR1_UNCONNECTED;
  wire [7:0]NLW_gtpe2_common_i_DMONITOROUT_UNCONNECTED;
  wire [15:0]NLW_gtpe2_common_i_DRPDO_UNCONNECTED;
  wire [15:0]NLW_gtpe2_common_i_PMARSVDOUT_UNCONNECTED;

  (* srl_bus_name = "U0/\\core_gt_common_i/cpllpd_wait_reg " *) 
  (* srl_name = "U0/\\core_gt_common_i/cpllpd_wait_reg[31]_srl32 " *) 
  SRLC32E #(
    .INIT(32'hFFFFFFFF)) 
    \cpllpd_wait_reg[31]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(gtrefclk_bufg),
        .D(1'b0),
        .Q(\NLW_cpllpd_wait_reg[31]_srl32_Q_UNCONNECTED ),
        .Q31(\cpllpd_wait_reg[31]_srl32_n_1 ));
  (* srl_bus_name = "U0/\\core_gt_common_i/cpllpd_wait_reg " *) 
  (* srl_name = "U0/\\core_gt_common_i/cpllpd_wait_reg[63]_srl32 " *) 
  SRLC32E #(
    .INIT(32'hFFFFFFFF)) 
    \cpllpd_wait_reg[63]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(gtrefclk_bufg),
        .D(\cpllpd_wait_reg[31]_srl32_n_1 ),
        .Q(\NLW_cpllpd_wait_reg[63]_srl32_Q_UNCONNECTED ),
        .Q31(\cpllpd_wait_reg[63]_srl32_n_1 ));
  (* srl_bus_name = "U0/\\core_gt_common_i/cpllpd_wait_reg " *) 
  (* srl_name = "U0/\\core_gt_common_i/cpllpd_wait_reg[94]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h7FFFFFFF)) 
    \cpllpd_wait_reg[94]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(gtrefclk_bufg),
        .D(\cpllpd_wait_reg[63]_srl32_n_1 ),
        .Q(\cpllpd_wait_reg[94]_srl31_n_0 ),
        .Q31(\NLW_cpllpd_wait_reg[94]_srl31_Q31_UNCONNECTED ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    \cpllpd_wait_reg[95] 
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .D(\cpllpd_wait_reg[94]_srl31_n_0 ),
        .Q(PLL0PD),
        .R(1'b0));
  (* srl_bus_name = "U0/\\core_gt_common_i/cpllreset_wait_reg " *) 
  (* srl_name = "U0/\\core_gt_common_i/cpllreset_wait_reg[126]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \cpllreset_wait_reg[126]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(gtrefclk_bufg),
        .D(\cpllreset_wait_reg[95]_srl32_n_1 ),
        .Q(\cpllreset_wait_reg[126]_srl31_n_0 ),
        .Q31(\NLW_cpllreset_wait_reg[126]_srl31_Q31_UNCONNECTED ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \cpllreset_wait_reg[127] 
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .D(\cpllreset_wait_reg[126]_srl31_n_0 ),
        .Q(cpll_reset_i),
        .R(1'b0));
  (* srl_bus_name = "U0/\\core_gt_common_i/cpllreset_wait_reg " *) 
  (* srl_name = "U0/\\core_gt_common_i/cpllreset_wait_reg[31]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h000000FF)) 
    \cpllreset_wait_reg[31]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(gtrefclk_bufg),
        .D(1'b0),
        .Q(\NLW_cpllreset_wait_reg[31]_srl32_Q_UNCONNECTED ),
        .Q31(\cpllreset_wait_reg[31]_srl32_n_1 ));
  (* srl_bus_name = "U0/\\core_gt_common_i/cpllreset_wait_reg " *) 
  (* srl_name = "U0/\\core_gt_common_i/cpllreset_wait_reg[63]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \cpllreset_wait_reg[63]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(gtrefclk_bufg),
        .D(\cpllreset_wait_reg[31]_srl32_n_1 ),
        .Q(\NLW_cpllreset_wait_reg[63]_srl32_Q_UNCONNECTED ),
        .Q31(\cpllreset_wait_reg[63]_srl32_n_1 ));
  (* srl_bus_name = "U0/\\core_gt_common_i/cpllreset_wait_reg " *) 
  (* srl_name = "U0/\\core_gt_common_i/cpllreset_wait_reg[95]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \cpllreset_wait_reg[95]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(gtrefclk_bufg),
        .D(\cpllreset_wait_reg[63]_srl32_n_1 ),
        .Q(\NLW_cpllreset_wait_reg[95]_srl32_Q_UNCONNECTED ),
        .Q31(\cpllreset_wait_reg[95]_srl32_n_1 ));
  (* box_type = "PRIMITIVE" *) 
  GTPE2_COMMON #(
    .BIAS_CFG(64'h0000000000050001),
    .COMMON_CFG(32'h00000000),
    .IS_DRPCLK_INVERTED(1'b0),
    .IS_GTGREFCLK0_INVERTED(1'b0),
    .IS_GTGREFCLK1_INVERTED(1'b0),
    .IS_PLL0LOCKDETCLK_INVERTED(1'b0),
    .IS_PLL1LOCKDETCLK_INVERTED(1'b0),
    .PLL0_CFG(27'h01F03DC),
    .PLL0_DMON_CFG(1'b0),
    .PLL0_FBDIV(4),
    .PLL0_FBDIV_45(5),
    .PLL0_INIT_CFG(24'h00001E),
    .PLL0_LOCK_CFG(9'h1E8),
    .PLL0_REFCLK_DIV(1),
    .PLL1_CFG(27'h01F03DC),
    .PLL1_DMON_CFG(1'b0),
    .PLL1_FBDIV(1),
    .PLL1_FBDIV_45(4),
    .PLL1_INIT_CFG(24'h00001E),
    .PLL1_LOCK_CFG(9'h1E8),
    .PLL1_REFCLK_DIV(1),
    .PLL_CLKOUT_CFG(8'b00000000),
    .RSVD_ATTR0(16'h0000),
    .RSVD_ATTR1(16'h0000),
    .SIM_PLL0REFCLK_SEL(3'b001),
    .SIM_PLL1REFCLK_SEL(3'b001),
    .SIM_RESET_SPEEDUP("FALSE"),
    .SIM_VERSION("2.0")) 
    gtpe2_common_i
       (.BGBYPASSB(1'b1),
        .BGMONITORENB(1'b1),
        .BGPDB(1'b1),
        .BGRCALOVRD({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .BGRCALOVRDENB(1'b1),
        .DMONITOROUT(NLW_gtpe2_common_i_DMONITOROUT_UNCONNECTED[7:0]),
        .DRPADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DRPCLK(1'b0),
        .DRPDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DRPDO(NLW_gtpe2_common_i_DRPDO_UNCONNECTED[15:0]),
        .DRPEN(1'b0),
        .DRPRDY(NLW_gtpe2_common_i_DRPRDY_UNCONNECTED),
        .DRPWE(1'b0),
        .GTEASTREFCLK0(1'b0),
        .GTEASTREFCLK1(1'b0),
        .GTGREFCLK0(1'b0),
        .GTGREFCLK1(1'b0),
        .GTREFCLK0(gtrefclk_out),
        .GTREFCLK1(1'b0),
        .GTWESTREFCLK0(1'b0),
        .GTWESTREFCLK1(1'b0),
        .PLL0FBCLKLOST(NLW_gtpe2_common_i_PLL0FBCLKLOST_UNCONNECTED),
        .PLL0LOCK(gt0_pll0lock_out),
        .PLL0LOCKDETCLK(independent_clock_bufg),
        .PLL0LOCKEN(1'b1),
        .PLL0OUTCLK(gt0_pll0outclk_out),
        .PLL0OUTREFCLK(gt0_pll0outrefclk_out),
        .PLL0PD(PLL0PD),
        .PLL0REFCLKLOST(gt0_pll0refclklost_out),
        .PLL0REFCLKSEL({1'b0,1'b0,1'b1}),
        .PLL0RESET(PLL0RESET),
        .PLL1FBCLKLOST(NLW_gtpe2_common_i_PLL1FBCLKLOST_UNCONNECTED),
        .PLL1LOCK(NLW_gtpe2_common_i_PLL1LOCK_UNCONNECTED),
        .PLL1LOCKDETCLK(1'b0),
        .PLL1LOCKEN(1'b1),
        .PLL1OUTCLK(gt0_pll1outclk_out),
        .PLL1OUTREFCLK(gt0_pll1outrefclk_out),
        .PLL1PD(1'b1),
        .PLL1REFCLKLOST(NLW_gtpe2_common_i_PLL1REFCLKLOST_UNCONNECTED),
        .PLL1REFCLKSEL({1'b0,1'b0,1'b1}),
        .PLL1RESET(1'b0),
        .PLLRSVD1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PLLRSVD2({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PMARSVD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PMARSVDOUT(NLW_gtpe2_common_i_PMARSVDOUT_UNCONNECTED[15:0]),
        .RCALENB(1'b1),
        .REFCLKOUTMONITOR0(NLW_gtpe2_common_i_REFCLKOUTMONITOR0_UNCONNECTED),
        .REFCLKOUTMONITOR1(NLW_gtpe2_common_i_REFCLKOUTMONITOR1_UNCONNECTED));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_gtwizard_gtrxreset_seq
   (GTRXRESET,
    \FSM_onehot_state_reg[5]_0 ,
    DRPDI,
    \FSM_onehot_state_reg[7]_0 ,
    DRPADDR,
    CLK,
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
  input CLK;
  input \original_rd_data_reg[0]_0 ;
  input [0:0]SR;
  input data_in;
  input reset_sync5;
  input [15:0]D;

  wire CLK;
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

  (* SOFT_HLUTNM = "soft_lutpair116" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(p_1_in),
        .I1(rxpmaresetdone_ss),
        .I2(rxpmaresetdone_sss),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT5 #(
    .INIT(32'hFFD0D0D0)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(rxpmaresetdone_sss),
        .I1(rxpmaresetdone_ss),
        .I2(p_1_in),
        .I3(\original_rd_data_reg[0]_0 ),
        .I4(p_3_in),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\original_rd_data_reg[0]_0 ),
        .I2(p_3_in),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(p_0_in),
        .I1(\original_rd_data_reg[0]_0 ),
        .O(\FSM_onehot_state[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
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
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(flag));
  (* FSM_ENCODED_STATES = "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .PRE(rst_sync),
        .Q(\FSM_onehot_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(p_2_in));
  (* FSM_ENCODED_STATES = "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(p_1_in));
  (* FSM_ENCODED_STATES = "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(\FSM_onehot_state[4]_i_1_n_0 ),
        .Q(p_3_in));
  (* FSM_ENCODED_STATES = "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(\FSM_onehot_state[5]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[5] ));
  (* FSM_ENCODED_STATES = "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(\FSM_onehot_state[6]_i_1_n_0 ),
        .Q(p_0_in));
  (* FSM_ENCODED_STATES = "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(\FSM_onehot_state[7]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[7] ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    drp_op_done_o_i_1
       (.I0(flag),
        .I1(\original_rd_data_reg[0]_0 ),
        .I2(drp_op_done),
        .O(drp_op_done_o_i_1_n_0));
  FDCE drp_op_done_o_reg
       (.C(CLK),
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
       (.C(CLK),
        .CE(1'b1),
        .D(flag_i_1_n_0),
        .Q(flag_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    gtpe2_i_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(p_2_in),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(drp_op_done),
        .O(\FSM_onehot_state_reg[7]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    gtpe2_i_i_10
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(in7[9]),
        .I3(drp_op_done),
        .O(DRPDI[9]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    gtpe2_i_i_11
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(in7[8]),
        .I3(drp_op_done),
        .O(DRPDI[8]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    gtpe2_i_i_12
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(in7[7]),
        .I3(drp_op_done),
        .O(DRPDI[7]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    gtpe2_i_i_13
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(in7[6]),
        .I3(drp_op_done),
        .O(DRPDI[6]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    gtpe2_i_i_14
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(in7[5]),
        .I3(drp_op_done),
        .O(DRPDI[5]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    gtpe2_i_i_15
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(in7[4]),
        .I3(drp_op_done),
        .O(DRPDI[4]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    gtpe2_i_i_16
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(in7[3]),
        .I3(drp_op_done),
        .O(DRPDI[3]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    gtpe2_i_i_17
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(in7[2]),
        .I3(drp_op_done),
        .O(DRPDI[2]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    gtpe2_i_i_18
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(in7[1]),
        .I3(drp_op_done),
        .O(DRPDI[1]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    gtpe2_i_i_19
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(in7[0]),
        .I3(drp_op_done),
        .O(DRPDI[0]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    gtpe2_i_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(p_2_in),
        .I2(drp_op_done),
        .O(\FSM_onehot_state_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT1 #(
    .INIT(2'h1)) 
    gtpe2_i_i_20
       (.I0(drp_op_done),
        .O(DRPADDR));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    gtpe2_i_i_4
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(in7[15]),
        .I3(drp_op_done),
        .O(DRPDI[15]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    gtpe2_i_i_5
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(in7[14]),
        .I3(drp_op_done),
        .O(DRPDI[14]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    gtpe2_i_i_6
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(in7[13]),
        .I3(drp_op_done),
        .O(DRPDI[13]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    gtpe2_i_i_7
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(in7[12]),
        .I3(drp_op_done),
        .O(DRPDI[12]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'h08)) 
    gtpe2_i_i_8
       (.I0(\rd_data_reg_n_0_[11] ),
        .I1(p_2_in),
        .I2(drp_op_done),
        .O(DRPDI[11]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
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
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(gtrxreset_i__0),
        .Q(GTRXRESET));
  FDCE gtrxreset_s_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(gtrxreset_in_sync),
        .Q(gtrxreset_s));
  FDCE gtrxreset_ss_reg
       (.C(CLK),
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
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[0]),
        .Q(original_rd_data[0]),
        .R(1'b0));
  FDRE \original_rd_data_reg[10] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[10]),
        .Q(original_rd_data[10]),
        .R(1'b0));
  FDRE \original_rd_data_reg[11] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[11]),
        .Q(original_rd_data[11]),
        .R(1'b0));
  FDRE \original_rd_data_reg[12] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[12]),
        .Q(original_rd_data[12]),
        .R(1'b0));
  FDRE \original_rd_data_reg[13] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[13]),
        .Q(original_rd_data[13]),
        .R(1'b0));
  FDRE \original_rd_data_reg[14] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[14]),
        .Q(original_rd_data[14]),
        .R(1'b0));
  FDRE \original_rd_data_reg[15] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[15]),
        .Q(original_rd_data[15]),
        .R(1'b0));
  FDRE \original_rd_data_reg[1] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[1]),
        .Q(original_rd_data[1]),
        .R(1'b0));
  FDRE \original_rd_data_reg[2] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[2]),
        .Q(original_rd_data[2]),
        .R(1'b0));
  FDRE \original_rd_data_reg[3] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[3]),
        .Q(original_rd_data[3]),
        .R(1'b0));
  FDRE \original_rd_data_reg[4] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[4]),
        .Q(original_rd_data[4]),
        .R(1'b0));
  FDRE \original_rd_data_reg[5] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[5]),
        .Q(original_rd_data[5]),
        .R(1'b0));
  FDRE \original_rd_data_reg[6] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[6]),
        .Q(original_rd_data[6]),
        .R(1'b0));
  FDRE \original_rd_data_reg[7] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[7]),
        .Q(original_rd_data[7]),
        .R(1'b0));
  FDRE \original_rd_data_reg[8] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[8]),
        .Q(original_rd_data[8]),
        .R(1'b0));
  FDRE \original_rd_data_reg[9] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[9]),
        .Q(original_rd_data[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[0]_i_1 
       (.I0(D[0]),
        .I1(original_rd_data[0]),
        .I2(flag_reg_n_0),
        .O(\rd_data[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[10]_i_1 
       (.I0(D[10]),
        .I1(original_rd_data[10]),
        .I2(flag_reg_n_0),
        .O(\rd_data[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[11]_i_1 
       (.I0(D[11]),
        .I1(original_rd_data[11]),
        .I2(flag_reg_n_0),
        .O(\rd_data[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[12]_i_1 
       (.I0(D[12]),
        .I1(original_rd_data[12]),
        .I2(flag_reg_n_0),
        .O(\rd_data[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[13]_i_1 
       (.I0(D[13]),
        .I1(original_rd_data[13]),
        .I2(flag_reg_n_0),
        .O(\rd_data[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[15]_i_2 
       (.I0(D[15]),
        .I1(original_rd_data[15]),
        .I2(flag_reg_n_0),
        .O(\rd_data[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[1]_i_1 
       (.I0(D[1]),
        .I1(original_rd_data[1]),
        .I2(flag_reg_n_0),
        .O(\rd_data[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[2]_i_1 
       (.I0(D[2]),
        .I1(original_rd_data[2]),
        .I2(flag_reg_n_0),
        .O(\rd_data[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[3]_i_1 
       (.I0(D[3]),
        .I1(original_rd_data[3]),
        .I2(flag_reg_n_0),
        .O(\rd_data[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[4]_i_1 
       (.I0(D[4]),
        .I1(original_rd_data[4]),
        .I2(flag_reg_n_0),
        .O(\rd_data[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[5]_i_1 
       (.I0(D[5]),
        .I1(original_rd_data[5]),
        .I2(flag_reg_n_0),
        .O(\rd_data[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[6]_i_1 
       (.I0(D[6]),
        .I1(original_rd_data[6]),
        .I2(flag_reg_n_0),
        .O(\rd_data[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[7]_i_1 
       (.I0(D[7]),
        .I1(original_rd_data[7]),
        .I2(flag_reg_n_0),
        .O(\rd_data[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[8]_i_1 
       (.I0(D[8]),
        .I1(original_rd_data[8]),
        .I2(flag_reg_n_0),
        .O(\rd_data[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[9]_i_1 
       (.I0(D[9]),
        .I1(original_rd_data[9]),
        .I2(flag_reg_n_0),
        .O(\rd_data[9]_i_1_n_0 ));
  FDCE \rd_data_reg[0] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[0]_i_1_n_0 ),
        .Q(in7[0]));
  FDCE \rd_data_reg[10] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[10]_i_1_n_0 ),
        .Q(in7[10]));
  FDCE \rd_data_reg[11] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[11]_i_1_n_0 ),
        .Q(\rd_data_reg_n_0_[11] ));
  FDCE \rd_data_reg[12] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[12]_i_1_n_0 ),
        .Q(in7[12]));
  FDCE \rd_data_reg[13] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[13]_i_1_n_0 ),
        .Q(in7[13]));
  FDCE \rd_data_reg[14] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[14]_i_1_n_0 ),
        .Q(in7[14]));
  FDCE \rd_data_reg[15] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[15]_i_2_n_0 ),
        .Q(in7[15]));
  FDCE \rd_data_reg[1] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[1]_i_1_n_0 ),
        .Q(in7[1]));
  FDCE \rd_data_reg[2] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[2]_i_1_n_0 ),
        .Q(in7[2]));
  FDCE \rd_data_reg[3] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[3]_i_1_n_0 ),
        .Q(in7[3]));
  FDCE \rd_data_reg[4] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[4]_i_1_n_0 ),
        .Q(in7[4]));
  FDCE \rd_data_reg[5] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[5]_i_1_n_0 ),
        .Q(in7[5]));
  FDCE \rd_data_reg[6] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[6]_i_1_n_0 ),
        .Q(in7[6]));
  FDCE \rd_data_reg[7] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[7]_i_1_n_0 ),
        .Q(in7[7]));
  FDCE \rd_data_reg[8] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[8]_i_1_n_0 ),
        .Q(in7[8]));
  FDCE \rd_data_reg[9] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[9]_i_1_n_0 ),
        .Q(in7[9]));
  FDCE rxpmaresetdone_s_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(rxpmaresetdone_sync),
        .Q(rxpmaresetdone_s));
  FDCE rxpmaresetdone_ss_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(rxpmaresetdone_s),
        .Q(rxpmaresetdone_ss));
  FDCE rxpmaresetdone_sss_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(rxpmaresetdone_ss),
        .Q(rxpmaresetdone_sss));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_reset_sync_4 sync_gtrxreset_in
       (.CLK(CLK),
        .SR(SR),
        .reset_out(gtrxreset_in_sync));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_reset_sync_5 sync_rst_sync
       (.CLK(CLK),
        .reset_out(rst_sync),
        .reset_sync5_0(reset_sync5));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_6 sync_rxpmaresetdone
       (.CLK(CLK),
        .data_in(data_in),
        .data_out(rxpmaresetdone_sync));
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
    CLK,
    SR);
  output reset_out;
  input CLK;
  input [0:0]SR;

  wire CLK;
  wire [0:0]SR;
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
       (.C(CLK),
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
       (.C(CLK),
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
       (.C(CLK),
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
       (.C(CLK),
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
       (.C(CLK),
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
       (.C(CLK),
        .CE(1'b1),
        .D(reset_sync_reg5),
        .PRE(1'b0),
        .Q(reset_out));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_reset_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_reset_sync_5
   (reset_out,
    CLK,
    reset_sync5_0);
  output reset_out;
  input CLK;
  input reset_sync5_0;

  wire CLK;
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
       (.C(CLK),
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
       (.C(CLK),
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
       (.C(CLK),
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
       (.C(CLK),
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
       (.C(CLK),
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
       (.C(CLK),
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
  wire reset_i_8_n_0;
  wire [3:3]\NLW_counter_stg2_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_stg3_reg[8]_i_1_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \counter_stg1[0]_i_1 
       (.I0(counter_stg1_reg__0[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter_stg1[1]_i_1 
       (.I0(counter_stg1_reg__0[1]),
        .I1(counter_stg1_reg__0[0]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \counter_stg1[2]_i_1 
       (.I0(counter_stg1_reg__0[2]),
        .I1(counter_stg1_reg__0[1]),
        .I2(counter_stg1_reg__0[0]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter_stg1[3]_i_1 
       (.I0(counter_stg1_reg__0[0]),
        .I1(counter_stg1_reg__0[1]),
        .I2(counter_stg1_reg__0[2]),
        .I3(counter_stg1_reg__0[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
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
    .INIT(8'hBA)) 
    \counter_stg1[5]_i_1 
       (.I0(data_out),
        .I1(reset_i_2_n_0),
        .I2(eqOp),
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
    .INIT(64'h2000000000000000)) 
    \counter_stg3[0]_i_1 
       (.I0(eqOp),
        .I1(\counter_stg3[0]_i_3_n_0 ),
        .I2(counter_stg2_reg[3]),
        .I3(counter_stg2_reg[8]),
        .I4(counter_stg2_reg[11]),
        .I5(counter_stg2_reg[4]),
        .O(counter_stg30));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \counter_stg3[0]_i_3 
       (.I0(counter_stg2_reg[10]),
        .I1(counter_stg2_reg[5]),
        .I2(counter_stg2_reg[2]),
        .I3(counter_stg2_reg[6]),
        .I4(\counter_stg3[0]_i_5_n_0 ),
        .O(\counter_stg3[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter_stg3[0]_i_4 
       (.I0(counter_stg3_reg[0]),
        .O(\counter_stg3[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \counter_stg3[0]_i_5 
       (.I0(counter_stg2_reg[9]),
        .I1(counter_stg2_reg[7]),
        .I2(counter_stg2_reg[1]),
        .I3(counter_stg2_reg[0]),
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
        .S({counter_stg3_reg[3:1],\counter_stg3[0]_i_4_n_0 }));
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
  LUT2 #(
    .INIT(4'h2)) 
    reset_i_1
       (.I0(counter_stg1_reg),
        .I1(reset_i_2_n_0),
        .O(reset0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    reset_i_2
       (.I0(reset_i_3_n_0),
        .I1(reset_i_4_n_0),
        .I2(reset_i_5_n_0),
        .I3(reset_i_6_n_0),
        .I4(reset_i_7_n_0),
        .I5(reset_i_8_n_0),
        .O(reset_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    reset_i_3
       (.I0(counter_stg3_reg[9]),
        .I1(counter_stg3_reg[8]),
        .I2(counter_stg3_reg[11]),
        .I3(counter_stg3_reg[1]),
        .O(reset_i_3_n_0));
  LUT4 #(
    .INIT(16'hFF7F)) 
    reset_i_4
       (.I0(counter_stg3_reg[6]),
        .I1(counter_stg2_reg[10]),
        .I2(counter_stg3_reg[4]),
        .I3(counter_stg3_reg[0]),
        .O(reset_i_4_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    reset_i_5
       (.I0(counter_stg2_reg[3]),
        .I1(counter_stg2_reg[8]),
        .I2(counter_stg2_reg[11]),
        .I3(counter_stg2_reg[4]),
        .O(reset_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    reset_i_6
       (.I0(counter_stg2_reg[7]),
        .I1(counter_stg3_reg[10]),
        .I2(counter_stg2_reg[2]),
        .I3(counter_stg3_reg[3]),
        .O(reset_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFDF)) 
    reset_i_7
       (.I0(counter_stg3_reg[7]),
        .I1(counter_stg2_reg[5]),
        .I2(counter_stg3_reg[5]),
        .I3(counter_stg3_reg[2]),
        .O(reset_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    reset_i_8
       (.I0(counter_stg2_reg[9]),
        .I1(counter_stg2_reg[6]),
        .I2(counter_stg2_reg[1]),
        .I3(counter_stg2_reg[0]),
        .O(reset_i_8_n_0));
  FDRE reset_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset0),
        .Q(reset),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_resets
   (out,
    independent_clock_bufg,
    reset);
  output [0:0]out;
  input independent_clock_bufg;
  input reset;

  wire independent_clock_bufg;
  (* async_reg = "true" *) wire [3:0]pma_reset_pipe;
  wire reset;

  assign out[0] = pma_reset_pipe[3];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE \pma_reset_pipe_reg[0] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(1'b0),
        .PRE(reset),
        .Q(pma_reset_pipe[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE \pma_reset_pipe_reg[1] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(pma_reset_pipe[0]),
        .PRE(reset),
        .Q(pma_reset_pipe[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE \pma_reset_pipe_reg[2] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(pma_reset_pipe[1]),
        .PRE(reset),
        .Q(pma_reset_pipe[2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE \pma_reset_pipe_reg[3] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(pma_reset_pipe[2]),
        .PRE(reset),
        .Q(pma_reset_pipe[3]));
endmodule

(* EXAMPLE_SIMULATION = "0" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_support
   (gtrefclk_p,
    gtrefclk_n,
    gtrefclk_out,
    gtrefclk_bufg_out,
    txp,
    txn,
    rxp,
    rxn,
    userclk_out,
    userclk2_out,
    rxuserclk_out,
    rxuserclk2_out,
    pma_reset_out,
    mmcm_locked_out,
    resetdone,
    independent_clock_bufg,
    gmii_txd,
    gmii_tx_en,
    gmii_tx_er,
    gmii_rxd,
    gmii_rx_dv,
    gmii_rx_er,
    gmii_isolate,
    configuration_vector,
    an_interrupt,
    an_adv_config_vector,
    an_restart_config,
    status_vector,
    reset,
    signal_detect,
    gt0_pll0outclk_out,
    gt0_pll0outrefclk_out,
    gt0_pll1outclk_out,
    gt0_pll1outrefclk_out,
    gt0_pll0refclklost_out,
    gt0_pll0lock_out);
  input gtrefclk_p;
  input gtrefclk_n;
  output gtrefclk_out;
  output gtrefclk_bufg_out;
  output txp;
  output txn;
  input rxp;
  input rxn;
  output userclk_out;
  output userclk2_out;
  output rxuserclk_out;
  output rxuserclk2_out;
  output pma_reset_out;
  output mmcm_locked_out;
  output resetdone;
  input independent_clock_bufg;
  input [7:0]gmii_txd;
  input gmii_tx_en;
  input gmii_tx_er;
  output [7:0]gmii_rxd;
  output gmii_rx_dv;
  output gmii_rx_er;
  output gmii_isolate;
  input [4:0]configuration_vector;
  output an_interrupt;
  input [15:0]an_adv_config_vector;
  input an_restart_config;
  output [15:0]status_vector;
  input reset;
  input signal_detect;
  output gt0_pll0outclk_out;
  output gt0_pll0outrefclk_out;
  output gt0_pll1outclk_out;
  output gt0_pll1outrefclk_out;
  output gt0_pll0refclklost_out;
  output gt0_pll0lock_out;

  wire \<const0> ;
  wire PLL0RESET;
  wire [15:0]an_adv_config_vector;
  wire an_interrupt;
  wire an_restart_config;
  wire [4:0]configuration_vector;
  wire cpll_reset_i;
  wire gmii_isolate;
  wire gmii_rx_dv;
  wire gmii_rx_er;
  wire [7:0]gmii_rxd;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire [7:0]gmii_txd;
  wire gt0_pll0lock_out;
  wire gt0_pll0outclk_out;
  wire gt0_pll0outrefclk_out;
  wire gt0_pll0refclklost_out;
  wire gt0_pll0reset_out;
  wire gt0_pll1outclk_out;
  wire gt0_pll1outrefclk_out;
  wire gtrefclk_bufg_out;
  wire gtrefclk_n;
  wire gtrefclk_out;
  wire gtrefclk_p;
  wire independent_clock_bufg;
  wire mmcm_locked_out;
  wire mmcm_reset;
  wire pma_reset_out;
  wire reset;
  wire resetdone;
  wire rxn;
  wire rxoutclk;
  wire rxp;
  wire rxuserclk2_out;
  wire signal_detect;
  wire [15:0]\^status_vector ;
  wire txn;
  wire txoutclk;
  wire txp;
  wire userclk2_out;
  wire userclk_out;

  assign rxuserclk_out = rxuserclk2_out;
  assign status_vector[15:12] = \^status_vector [15:12];
  assign status_vector[11] = \<const0> ;
  assign status_vector[10] = \<const0> ;
  assign status_vector[9:8] = \^status_vector [9:8];
  assign status_vector[7] = \<const0> ;
  assign status_vector[6:0] = \^status_vector [6:0];
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_clocking core_clocking_i
       (.gtrefclk_bufg(gtrefclk_bufg_out),
        .gtrefclk_n(gtrefclk_n),
        .gtrefclk_out(gtrefclk_out),
        .gtrefclk_p(gtrefclk_p),
        .mmcm_locked(mmcm_locked_out),
        .mmcm_reset(mmcm_reset),
        .rxoutclk(rxoutclk),
        .rxuserclk2_out(rxuserclk2_out),
        .txoutclk(txoutclk),
        .userclk(userclk_out),
        .userclk2(userclk2_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_gt_common core_gt_common_i
       (.PLL0RESET(PLL0RESET),
        .cpll_reset_i(cpll_reset_i),
        .gt0_pll0lock_out(gt0_pll0lock_out),
        .gt0_pll0outclk_out(gt0_pll0outclk_out),
        .gt0_pll0outrefclk_out(gt0_pll0outrefclk_out),
        .gt0_pll0refclklost_out(gt0_pll0refclklost_out),
        .gt0_pll1outclk_out(gt0_pll1outclk_out),
        .gt0_pll1outrefclk_out(gt0_pll1outrefclk_out),
        .gtrefclk_bufg(gtrefclk_bufg_out),
        .gtrefclk_out(gtrefclk_out),
        .independent_clock_bufg(independent_clock_bufg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_common_reset core_gt_common_reset_i
       (.PLL0RESET(PLL0RESET),
        .cpll_reset_i(cpll_reset_i),
        .gt0_pll0reset_out(gt0_pll0reset_out),
        .independent_clock_bufg(independent_clock_bufg),
        .out(pma_reset_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_resets core_resets_i
       (.independent_clock_bufg(independent_clock_bufg),
        .out(pma_reset_out),
        .reset(reset));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_block pcs_pma_block_i
       (.CLK(gtrefclk_bufg_out),
        .an_adv_config_vector({an_adv_config_vector[15],an_adv_config_vector[13:11],an_adv_config_vector[8:7],an_adv_config_vector[5]}),
        .an_interrupt(an_interrupt),
        .an_restart_config(an_restart_config),
        .configuration_vector(configuration_vector),
        .data_in(mmcm_locked_out),
        .gmii_isolate(gmii_isolate),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_er(gmii_rx_er),
        .gmii_rxd(gmii_rxd),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_er(gmii_tx_er),
        .gmii_txd(gmii_txd),
        .gt0_pll0lock_out(gt0_pll0lock_out),
        .gt0_pll0outclk_out(gt0_pll0outclk_out),
        .gt0_pll0outrefclk_out(gt0_pll0outrefclk_out),
        .gt0_pll0refclklost_out(gt0_pll0refclklost_out),
        .gt0_pll0reset_out(gt0_pll0reset_out),
        .gt0_pll1outclk_out(gt0_pll1outclk_out),
        .gt0_pll1outrefclk_out(gt0_pll1outrefclk_out),
        .gtpe2_i(userclk_out),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_reset(mmcm_reset),
        .out(pma_reset_out),
        .resetdone(resetdone),
        .rxn(rxn),
        .rxoutclk(rxoutclk),
        .rxp(rxp),
        .signal_detect(signal_detect),
        .status_vector({\^status_vector [15:12],\^status_vector [9:8],\^status_vector [6:0]}),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp),
        .userclk2(userclk2_out));
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
    data_sync_reg6_0);
  output data_out;
  input data_in;
  input data_sync_reg6_0;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_sync_reg6_0;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(data_sync_reg6_0),
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
       (.C(data_sync_reg6_0),
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
       (.C(data_sync_reg6_0),
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
       (.C(data_sync_reg6_0),
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
       (.C(data_sync_reg6_0),
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
       (.C(data_sync_reg6_0),
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
    data_sync_reg1_0);
  output data_out;
  input data_in;
  input data_sync_reg1_0;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_sync_reg1_0;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(data_sync_reg1_0),
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
       (.C(data_sync_reg1_0),
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
       (.C(data_sync_reg1_0),
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
       (.C(data_sync_reg1_0),
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
       (.C(data_sync_reg1_0),
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
       (.C(data_sync_reg1_0),
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
   (D,
    data_out,
    data_sync_reg6_0,
    \FSM_sequential_rx_state_reg[3] ,
    \FSM_sequential_rx_state_reg[3]_0 ,
    Q,
    time_out_wait_bypass_s3,
    \FSM_sequential_rx_state_reg[3]_1 ,
    rx_fsm_reset_done_int_reg,
    rx_fsm_reset_done_int_reg_0,
    rx_fsm_reset_done_int_reg_1,
    \FSM_sequential_rx_state_reg[0] ,
    \FSM_sequential_rx_state_reg[0]_0 ,
    data_in,
    data_sync_reg1_0,
    independent_clock_bufg);
  output [2:0]D;
  output data_out;
  output data_sync_reg6_0;
  output \FSM_sequential_rx_state_reg[3] ;
  input \FSM_sequential_rx_state_reg[3]_0 ;
  input [3:0]Q;
  input time_out_wait_bypass_s3;
  input \FSM_sequential_rx_state_reg[3]_1 ;
  input rx_fsm_reset_done_int_reg;
  input rx_fsm_reset_done_int_reg_0;
  input rx_fsm_reset_done_int_reg_1;
  input \FSM_sequential_rx_state_reg[0] ;
  input \FSM_sequential_rx_state_reg[0]_0 ;
  input data_in;
  input data_sync_reg1_0;
  input independent_clock_bufg;

  wire [2:0]D;
  wire \FSM_sequential_rx_state[3]_i_7_n_0 ;
  wire \FSM_sequential_rx_state_reg[0] ;
  wire \FSM_sequential_rx_state_reg[0]_0 ;
  wire \FSM_sequential_rx_state_reg[3] ;
  wire \FSM_sequential_rx_state_reg[3]_0 ;
  wire \FSM_sequential_rx_state_reg[3]_1 ;
  wire [3:0]Q;
  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_sync_reg1_0;
  wire data_sync_reg6_0;
  wire independent_clock_bufg;
  wire rx_fsm_reset_done_int;
  wire rx_fsm_reset_done_int_i_3_n_0;
  wire rx_fsm_reset_done_int_reg;
  wire rx_fsm_reset_done_int_reg_0;
  wire rx_fsm_reset_done_int_reg_1;
  wire time_out_wait_bypass_s3;

  LUT5 #(
    .INIT(32'hA8FFA8A8)) 
    \FSM_sequential_rx_state[0]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(\FSM_sequential_rx_state[3]_i_7_n_0 ),
        .I3(\FSM_sequential_rx_state_reg[0] ),
        .I4(\FSM_sequential_rx_state_reg[0]_0 ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h03443377)) 
    \FSM_sequential_rx_state[1]_i_1 
       (.I0(\FSM_sequential_rx_state[3]_i_7_n_0 ),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\FSM_sequential_rx_state_reg[0]_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hDDDFFFFFDDDF0000)) 
    \FSM_sequential_rx_state[3]_i_2 
       (.I0(\FSM_sequential_rx_state[3]_i_7_n_0 ),
        .I1(\FSM_sequential_rx_state_reg[3]_0 ),
        .I2(Q[0]),
        .I3(time_out_wait_bypass_s3),
        .I4(Q[3]),
        .I5(\FSM_sequential_rx_state_reg[3]_1 ),
        .O(D[2]));
  LUT4 #(
    .INIT(16'h30E0)) 
    \FSM_sequential_rx_state[3]_i_6 
       (.I0(\FSM_sequential_rx_state[3]_i_7_n_0 ),
        .I1(data_out),
        .I2(Q[3]),
        .I3(Q[1]),
        .O(data_sync_reg6_0));
  LUT4 #(
    .INIT(16'h04FF)) 
    \FSM_sequential_rx_state[3]_i_7 
       (.I0(data_out),
        .I1(rx_fsm_reset_done_int_reg_1),
        .I2(rx_fsm_reset_done_int_reg_0),
        .I3(Q[0]),
        .O(\FSM_sequential_rx_state[3]_i_7_n_0 ));
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
    .INIT(32'h00100000)) 
    rx_fsm_reset_done_int_i_2
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(rx_fsm_reset_done_int_reg),
        .I3(rx_fsm_reset_done_int_reg_0),
        .I4(data_out),
        .O(rx_fsm_reset_done_int));
  LUT6 #(
    .INIT(64'h0000CFCC3B3B0000)) 
    rx_fsm_reset_done_int_i_3
       (.I0(rx_fsm_reset_done_int_reg),
        .I1(data_out),
        .I2(rx_fsm_reset_done_int_reg_0),
        .I3(rx_fsm_reset_done_int_reg_1),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(rx_fsm_reset_done_int_i_3_n_0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sync_block" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_15
   (SR,
    data_out,
    data_sync_reg1_0,
    independent_clock_bufg);
  output [0:0]SR;
  output data_out;
  input data_sync_reg1_0;
  input independent_clock_bufg;

  wire [0:0]SR;
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
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[7]_i_1__0 
       (.I0(data_out),
        .O(SR));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sync_block" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_16
   (E,
    reset_time_out_reg,
    \FSM_sequential_rx_state_reg[0] ,
    \FSM_sequential_rx_state_reg[0]_0 ,
    Q,
    \FSM_sequential_rx_state_reg[0]_1 ,
    \FSM_sequential_rx_state_reg[0]_2 ,
    \FSM_sequential_rx_state_reg[0]_3 ,
    data_out,
    reset_time_out_reg_0,
    reset_time_out_reg_1,
    reset_time_out_reg_2,
    reset_time_out_reg_3,
    reset_time_out_reg_4,
    gt0_pll0lock_out,
    independent_clock_bufg);
  output [0:0]E;
  output reset_time_out_reg;
  input \FSM_sequential_rx_state_reg[0] ;
  input [0:0]\FSM_sequential_rx_state_reg[0]_0 ;
  input [3:0]Q;
  input \FSM_sequential_rx_state_reg[0]_1 ;
  input \FSM_sequential_rx_state_reg[0]_2 ;
  input \FSM_sequential_rx_state_reg[0]_3 ;
  input data_out;
  input reset_time_out_reg_0;
  input reset_time_out_reg_1;
  input reset_time_out_reg_2;
  input reset_time_out_reg_3;
  input reset_time_out_reg_4;
  input gt0_pll0lock_out;
  input independent_clock_bufg;

  wire [0:0]E;
  wire \FSM_sequential_rx_state[3]_i_4_n_0 ;
  wire \FSM_sequential_rx_state_reg[0] ;
  wire [0:0]\FSM_sequential_rx_state_reg[0]_0 ;
  wire \FSM_sequential_rx_state_reg[0]_1 ;
  wire \FSM_sequential_rx_state_reg[0]_2 ;
  wire \FSM_sequential_rx_state_reg[0]_3 ;
  wire [3:0]Q;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire gt0_pll0lock_out;
  wire independent_clock_bufg;
  wire pll0lock_sync;
  wire reset_time_out_i_5_n_0;
  wire reset_time_out_reg;
  wire reset_time_out_reg_0;
  wire reset_time_out_reg_1;
  wire reset_time_out_reg_2;
  wire reset_time_out_reg_3;
  wire reset_time_out_reg_4;

  LUT6 #(
    .INIT(64'hFFFFFFFF01550101)) 
    \FSM_sequential_rx_state[3]_i_1 
       (.I0(\FSM_sequential_rx_state_reg[0] ),
        .I1(\FSM_sequential_rx_state_reg[0]_0 ),
        .I2(Q[0]),
        .I3(\FSM_sequential_rx_state[3]_i_4_n_0 ),
        .I4(\FSM_sequential_rx_state_reg[0]_1 ),
        .I5(\FSM_sequential_rx_state_reg[0]_2 ),
        .O(E));
  LUT6 #(
    .INIT(64'h0001FFFF00000000)) 
    \FSM_sequential_rx_state[3]_i_4 
       (.I0(\FSM_sequential_rx_state_reg[0]_3 ),
        .I1(pll0lock_sync),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\FSM_sequential_rx_state[3]_i_4_n_0 ));
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
        .D(gt0_pll0lock_out),
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
  LUT6 #(
    .INIT(64'hFF10FFFFFF100000)) 
    reset_time_out_i_1__0
       (.I0(reset_time_out_reg_0),
        .I1(reset_time_out_reg_1),
        .I2(reset_time_out_reg_2),
        .I3(reset_time_out_i_5_n_0),
        .I4(reset_time_out_reg_3),
        .I5(reset_time_out_reg_4),
        .O(reset_time_out_reg));
  LUT6 #(
    .INIT(64'h10DD10DDDC11DCDD)) 
    reset_time_out_i_5
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(pll0lock_sync),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(data_out),
        .O(reset_time_out_i_5_n_0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sync_block" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_17
   (data_out,
    data_in,
    data_sync_reg1_0);
  output data_out;
  input data_in;
  input data_sync_reg1_0;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_sync_reg1_0;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(data_sync_reg1_0),
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
       (.C(data_sync_reg1_0),
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
       (.C(data_sync_reg1_0),
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
       (.C(data_sync_reg1_0),
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
       (.C(data_sync_reg1_0),
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
       (.C(data_sync_reg1_0),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sync_block" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_18
   (data_out,
    data_in,
    data_sync_reg6_0);
  output data_out;
  input data_in;
  input data_sync_reg6_0;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_sync_reg6_0;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(data_sync_reg6_0),
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
       (.C(data_sync_reg6_0),
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
       (.C(data_sync_reg6_0),
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
       (.C(data_sync_reg6_0),
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
       (.C(data_sync_reg6_0),
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
       (.C(data_sync_reg6_0),
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
    CLK);
  output data_out;
  input data_in;
  input CLK;

  wire CLK;
  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(CLK),
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
       (.C(CLK),
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
       (.C(CLK),
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
       (.C(CLK),
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
       (.C(CLK),
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
       (.C(CLK),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sync_block" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_sync_block_7
   (E,
    init_wait_done_reg,
    Q,
    mmcm_lock_reclocked,
    txresetdone_s3,
    \FSM_sequential_tx_state_reg[0] ,
    reset_time_out_reg,
    reset_time_out,
    \FSM_sequential_tx_state_reg[0]_0 ,
    \FSM_sequential_tx_state_reg[0]_1 ,
    \FSM_sequential_tx_state_reg[0]_2 ,
    \FSM_sequential_tx_state_reg[0]_3 ,
    \FSM_sequential_tx_state_reg[0]_4 ,
    reset_time_out_reg_0,
    gt0_pll0lock_out,
    independent_clock_bufg);
  output [0:0]E;
  output init_wait_done_reg;
  input [3:0]Q;
  input mmcm_lock_reclocked;
  input txresetdone_s3;
  input \FSM_sequential_tx_state_reg[0] ;
  input reset_time_out_reg;
  input reset_time_out;
  input \FSM_sequential_tx_state_reg[0]_0 ;
  input \FSM_sequential_tx_state_reg[0]_1 ;
  input \FSM_sequential_tx_state_reg[0]_2 ;
  input \FSM_sequential_tx_state_reg[0]_3 ;
  input \FSM_sequential_tx_state_reg[0]_4 ;
  input reset_time_out_reg_0;
  input gt0_pll0lock_out;
  input independent_clock_bufg;

  wire [0:0]E;
  wire \FSM_sequential_tx_state[3]_i_3_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_4_n_0 ;
  wire \FSM_sequential_tx_state_reg[0] ;
  wire \FSM_sequential_tx_state_reg[0]_0 ;
  wire \FSM_sequential_tx_state_reg[0]_1 ;
  wire \FSM_sequential_tx_state_reg[0]_2 ;
  wire \FSM_sequential_tx_state_reg[0]_3 ;
  wire \FSM_sequential_tx_state_reg[0]_4 ;
  wire [3:0]Q;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire gt0_pll0lock_out;
  wire independent_clock_bufg;
  wire init_wait_done_reg;
  wire mmcm_lock_reclocked;
  wire pll0lock_sync;
  wire reset_time_out;
  wire reset_time_out_i_3_n_0;
  wire reset_time_out_i_4_n_0;
  wire reset_time_out_reg;
  wire reset_time_out_reg_0;
  wire txresetdone_s3;

  LUT6 #(
    .INIT(64'h0151FFFF01510000)) 
    \FSM_sequential_tx_state[3]_i_1 
       (.I0(Q[3]),
        .I1(\FSM_sequential_tx_state[3]_i_3_n_0 ),
        .I2(Q[1]),
        .I3(\FSM_sequential_tx_state[3]_i_4_n_0 ),
        .I4(Q[0]),
        .I5(\FSM_sequential_tx_state_reg[0] ),
        .O(E));
  LUT6 #(
    .INIT(64'h2F202F2F2F2F2F2F)) 
    \FSM_sequential_tx_state[3]_i_3 
       (.I0(\FSM_sequential_tx_state_reg[0]_2 ),
        .I1(mmcm_lock_reclocked),
        .I2(Q[2]),
        .I3(pll0lock_sync),
        .I4(\FSM_sequential_tx_state_reg[0]_3 ),
        .I5(\FSM_sequential_tx_state_reg[0]_4 ),
        .O(\FSM_sequential_tx_state[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h45004500450045FF)) 
    \FSM_sequential_tx_state[3]_i_4 
       (.I0(txresetdone_s3),
        .I1(reset_time_out),
        .I2(\FSM_sequential_tx_state_reg[0]_0 ),
        .I3(Q[2]),
        .I4(pll0lock_sync),
        .I5(\FSM_sequential_tx_state_reg[0]_1 ),
        .O(\FSM_sequential_tx_state[3]_i_4_n_0 ));
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
        .D(gt0_pll0lock_out),
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
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    reset_time_out_i_1
       (.I0(reset_time_out_reg),
        .I1(Q[3]),
        .I2(reset_time_out_reg_0),
        .I3(reset_time_out_i_3_n_0),
        .I4(reset_time_out_i_4_n_0),
        .I5(reset_time_out),
        .O(init_wait_done_reg));
  LUT6 #(
    .INIT(64'hF4F4FF0F0404FF0F)) 
    reset_time_out_i_3
       (.I0(Q[3]),
        .I1(pll0lock_sync),
        .I2(Q[2]),
        .I3(mmcm_lock_reclocked),
        .I4(Q[1]),
        .I5(txresetdone_s3),
        .O(reset_time_out_i_3_n_0));
  LUT6 #(
    .INIT(64'h000FCCCE000FCC0E)) 
    reset_time_out_i_4
       (.I0(reset_time_out_reg),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(pll0lock_sync),
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
    data_sync_reg1_0,
    independent_clock_bufg);
  output [0:0]SR;
  output data_out;
  input data_sync_reg1_0;
  input independent_clock_bufg;

  wire [0:0]SR;
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
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[7]_i_1 
       (.I0(data_out),
        .O(SR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_transceiver
   (txn,
    txp,
    rxoutclk,
    txoutclk,
    rxchariscomma,
    rxcharisk,
    rxdisperr,
    rxnotintable,
    rxbufstatus,
    txbuferr,
    mmcm_reset,
    reset_in,
    data_in,
    rx_fsm_reset_done_int_reg,
    Q,
    \rxdata_reg[7]_0 ,
    CLK,
    rxn,
    rxp,
    gt0_pll0outclk_out,
    gt0_pll0outrefclk_out,
    gt0_pll1outclk_out,
    gt0_pll1outrefclk_out,
    gtpe2_i,
    independent_clock_bufg,
    SR,
    userclk2,
    reset_sync5,
    powerdown,
    D,
    txchardispval_reg_reg_0,
    txcharisk_reg_reg_0,
    out,
    gt0_pll0refclklost_out,
    status_vector,
    enablealign,
    data_sync_reg1,
    gt0_pll0lock_out,
    \txdata_reg_reg[7]_0 );
  output txn;
  output txp;
  output rxoutclk;
  output txoutclk;
  output [0:0]rxchariscomma;
  output [0:0]rxcharisk;
  output [0:0]rxdisperr;
  output [0:0]rxnotintable;
  output [0:0]rxbufstatus;
  output txbuferr;
  output mmcm_reset;
  output reset_in;
  output data_in;
  output rx_fsm_reset_done_int_reg;
  output [1:0]Q;
  output [7:0]\rxdata_reg[7]_0 ;
  input CLK;
  input rxn;
  input rxp;
  input gt0_pll0outclk_out;
  input gt0_pll0outrefclk_out;
  input gt0_pll1outclk_out;
  input gt0_pll1outrefclk_out;
  input gtpe2_i;
  input independent_clock_bufg;
  input [0:0]SR;
  input userclk2;
  input [0:0]reset_sync5;
  input powerdown;
  input [0:0]D;
  input [0:0]txchardispval_reg_reg_0;
  input [0:0]txcharisk_reg_reg_0;
  input [0:0]out;
  input gt0_pll0refclklost_out;
  input [0:0]status_vector;
  input enablealign;
  input data_sync_reg1;
  input gt0_pll0lock_out;
  input [7:0]\txdata_reg_reg[7]_0 ;

  wire CLK;
  wire [0:0]D;
  wire [1:0]Q;
  wire [0:0]SR;
  wire data_in;
  wire data_sync_reg1;
  wire data_valid_reg2;
  wire enablealign;
  wire encommaalign_int;
  wire gt0_pll0lock_out;
  wire gt0_pll0outclk_out;
  wire gt0_pll0outrefclk_out;
  wire gt0_pll0refclklost_out;
  wire gt0_pll1outclk_out;
  wire gt0_pll1outrefclk_out;
  wire gtpe2_i;
  wire gtwizard_inst_n_6;
  wire gtwizard_inst_n_7;
  wire independent_clock_bufg;
  wire mmcm_reset;
  wire [0:0]out;
  wire p_0_in;
  wire powerdown;
  wire reset;
  wire reset_in;
  wire [0:0]reset_sync5;
  wire rx_fsm_reset_done_int_reg;
  wire [0:0]rxbufstatus;
  wire [0:0]rxchariscomma;
  wire [1:0]rxchariscomma_double;
  wire rxchariscomma_i_1_n_0;
  wire [1:0]rxchariscomma_int;
  wire [1:0]rxchariscomma_reg__0;
  wire [0:0]rxcharisk;
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
  wire [0:0]rxdisperr;
  wire [1:0]rxdisperr_double;
  wire rxdisperr_i_1_n_0;
  wire [1:0]rxdisperr_int;
  wire [1:0]rxdisperr_reg__0;
  wire rxn;
  wire [0:0]rxnotintable;
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
  wire txchardispmode_reg;
  wire [1:0]txchardispval_double;
  wire [1:0]txchardispval_int;
  wire txchardispval_reg;
  wire [0:0]txchardispval_reg_reg_0;
  wire [1:0]txcharisk_double;
  wire [1:0]txcharisk_int;
  wire txcharisk_reg;
  wire [0:0]txcharisk_reg_reg_0;
  wire [15:0]txdata_double;
  wire [15:0]txdata_int;
  wire [7:0]txdata_reg;
  wire [7:0]\txdata_reg_reg[7]_0 ;
  wire txn;
  wire txoutclk;
  wire txp;
  wire txpowerdown;
  wire txpowerdown_double;
  wire txpowerdown_reg__0;
  wire txreset_int;
  wire userclk2;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_0_GTWIZARD gtwizard_inst
       (.CLK(CLK),
        .D(rxclkcorcnt_int),
        .PLL0_RESET_reg(reset_in),
        .Q(txdata_int),
        .RXBUFSTATUS(gtwizard_inst_n_7),
        .RXPD(rxpowerdown),
        .TXBUFSTATUS(gtwizard_inst_n_6),
        .TXPD(txpowerdown),
        .data_in(data_in),
        .data_out(data_valid_reg2),
        .data_sync_reg1(data_sync_reg1),
        .gt0_gtrxreset_gt_d1_reg(rxreset_int),
        .gt0_pll0lock_out(gt0_pll0lock_out),
        .gt0_pll0outclk_out(gt0_pll0outclk_out),
        .gt0_pll0outrefclk_out(gt0_pll0outrefclk_out),
        .gt0_pll0refclklost_out(gt0_pll0refclklost_out),
        .gt0_pll1outclk_out(gt0_pll1outclk_out),
        .gt0_pll1outrefclk_out(gt0_pll1outrefclk_out),
        .gtpe2_i(rxdata_int),
        .gtpe2_i_0(rxchariscomma_int),
        .gtpe2_i_1(rxcharisk_int),
        .gtpe2_i_2(rxdisperr_int),
        .gtpe2_i_3(rxnotintable_int),
        .gtpe2_i_4(gtpe2_i),
        .gtpe2_i_5(txchardispmode_int),
        .gtpe2_i_6(txchardispval_int),
        .gtpe2_i_7(txcharisk_int),
        .gtpe2_i_8(txreset_int),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_reset(mmcm_reset),
        .out(out),
        .reset(reset),
        .reset_out(encommaalign_int),
        .rx_fsm_reset_done_int_reg(rx_fsm_reset_done_int_reg),
        .rxn(rxn),
        .rxoutclk(rxoutclk),
        .rxp(rxp),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp));
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
        .Q(rxbufstatus),
        .R(1'b0));
  FDRE \rxbufstatus_reg_reg[2] 
       (.C(gtpe2_i),
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
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
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
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(rxchariscomma_int[0]),
        .Q(rxchariscomma_reg__0[0]),
        .R(1'b0));
  FDRE \rxchariscomma_reg_reg[1] 
       (.C(gtpe2_i),
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
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
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
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(rxcharisk_int[0]),
        .Q(rxcharisk_reg__0[0]),
        .R(1'b0));
  FDRE \rxcharisk_reg_reg[1] 
       (.C(gtpe2_i),
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
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(rxclkcorcnt_int[0]),
        .Q(rxclkcorcnt_reg[0]),
        .R(1'b0));
  FDRE \rxclkcorcnt_reg_reg[1] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(rxclkcorcnt_int[1]),
        .Q(rxclkcorcnt_reg[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata[0]_i_1 
       (.I0(rxdata_double[8]),
        .I1(toggle),
        .I2(rxdata_double[0]),
        .O(\rxdata[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata[1]_i_1 
       (.I0(rxdata_double[9]),
        .I1(toggle),
        .I2(rxdata_double[1]),
        .O(\rxdata[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata[2]_i_1 
       (.I0(rxdata_double[10]),
        .I1(toggle),
        .I2(rxdata_double[2]),
        .O(\rxdata[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata[3]_i_1 
       (.I0(rxdata_double[11]),
        .I1(toggle),
        .I2(rxdata_double[3]),
        .O(\rxdata[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata[4]_i_1 
       (.I0(rxdata_double[12]),
        .I1(toggle),
        .I2(rxdata_double[4]),
        .O(\rxdata[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata[5]_i_1 
       (.I0(rxdata_double[13]),
        .I1(toggle),
        .I2(rxdata_double[5]),
        .O(\rxdata[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata[6]_i_1 
       (.I0(rxdata_double[14]),
        .I1(toggle),
        .I2(rxdata_double[6]),
        .O(\rxdata[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
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
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(rxdata_int[0]),
        .Q(rxdata_reg[0]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[10] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(rxdata_int[10]),
        .Q(rxdata_reg[10]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[11] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(rxdata_int[11]),
        .Q(rxdata_reg[11]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[12] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(rxdata_int[12]),
        .Q(rxdata_reg[12]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[13] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(rxdata_int[13]),
        .Q(rxdata_reg[13]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[14] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(rxdata_int[14]),
        .Q(rxdata_reg[14]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[15] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(rxdata_int[15]),
        .Q(rxdata_reg[15]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[1] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(rxdata_int[1]),
        .Q(rxdata_reg[1]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[2] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(rxdata_int[2]),
        .Q(rxdata_reg[2]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[3] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(rxdata_int[3]),
        .Q(rxdata_reg[3]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[4] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(rxdata_int[4]),
        .Q(rxdata_reg[4]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[5] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(rxdata_int[5]),
        .Q(rxdata_reg[5]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[6] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(rxdata_int[6]),
        .Q(rxdata_reg[6]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[7] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(rxdata_int[7]),
        .Q(rxdata_reg[7]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[8] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(rxdata_int[8]),
        .Q(rxdata_reg[8]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[9] 
       (.C(gtpe2_i),
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
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
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
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(rxdisperr_int[0]),
        .Q(rxdisperr_reg__0[0]),
        .R(1'b0));
  FDRE \rxdisperr_reg_reg[1] 
       (.C(gtpe2_i),
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
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
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
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(rxnotintable_int[0]),
        .Q(rxnotintable_reg__0[0]),
        .R(1'b0));
  FDRE \rxnotintable_reg_reg[1] 
       (.C(gtpe2_i),
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
       (.C(gtpe2_i),
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
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(gtwizard_inst_n_6),
        .Q(txbufstatus_reg),
        .R(1'b0));
  FDRE \txchardispmode_double_reg[0] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txchardispmode_reg),
        .Q(txchardispmode_double[0]),
        .R(SR));
  FDRE \txchardispmode_double_reg[1] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(D),
        .Q(txchardispmode_double[1]),
        .R(SR));
  FDRE \txchardispmode_int_reg[0] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(txchardispmode_double[0]),
        .Q(txchardispmode_int[0]),
        .R(1'b0));
  FDRE \txchardispmode_int_reg[1] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(txchardispmode_double[1]),
        .Q(txchardispmode_int[1]),
        .R(1'b0));
  FDRE txchardispmode_reg_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(D),
        .Q(txchardispmode_reg),
        .R(SR));
  FDRE \txchardispval_double_reg[0] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txchardispval_reg),
        .Q(txchardispval_double[0]),
        .R(SR));
  FDRE \txchardispval_double_reg[1] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txchardispval_reg_reg_0),
        .Q(txchardispval_double[1]),
        .R(SR));
  FDRE \txchardispval_int_reg[0] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(txchardispval_double[0]),
        .Q(txchardispval_int[0]),
        .R(1'b0));
  FDRE \txchardispval_int_reg[1] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(txchardispval_double[1]),
        .Q(txchardispval_int[1]),
        .R(1'b0));
  FDRE txchardispval_reg_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(txchardispval_reg_reg_0),
        .Q(txchardispval_reg),
        .R(SR));
  FDRE \txcharisk_double_reg[0] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txcharisk_reg),
        .Q(txcharisk_double[0]),
        .R(SR));
  FDRE \txcharisk_double_reg[1] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txcharisk_reg_reg_0),
        .Q(txcharisk_double[1]),
        .R(SR));
  FDRE \txcharisk_int_reg[0] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(txcharisk_double[0]),
        .Q(txcharisk_int[0]),
        .R(1'b0));
  FDRE \txcharisk_int_reg[1] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(txcharisk_double[1]),
        .Q(txcharisk_int[1]),
        .R(1'b0));
  FDRE txcharisk_reg_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(txcharisk_reg_reg_0),
        .Q(txcharisk_reg),
        .R(SR));
  FDRE \txdata_double_reg[0] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txdata_reg[0]),
        .Q(txdata_double[0]),
        .R(SR));
  FDRE \txdata_double_reg[10] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(\txdata_reg_reg[7]_0 [2]),
        .Q(txdata_double[10]),
        .R(SR));
  FDRE \txdata_double_reg[11] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(\txdata_reg_reg[7]_0 [3]),
        .Q(txdata_double[11]),
        .R(SR));
  FDRE \txdata_double_reg[12] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(\txdata_reg_reg[7]_0 [4]),
        .Q(txdata_double[12]),
        .R(SR));
  FDRE \txdata_double_reg[13] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(\txdata_reg_reg[7]_0 [5]),
        .Q(txdata_double[13]),
        .R(SR));
  FDRE \txdata_double_reg[14] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(\txdata_reg_reg[7]_0 [6]),
        .Q(txdata_double[14]),
        .R(SR));
  FDRE \txdata_double_reg[15] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(\txdata_reg_reg[7]_0 [7]),
        .Q(txdata_double[15]),
        .R(SR));
  FDRE \txdata_double_reg[1] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txdata_reg[1]),
        .Q(txdata_double[1]),
        .R(SR));
  FDRE \txdata_double_reg[2] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txdata_reg[2]),
        .Q(txdata_double[2]),
        .R(SR));
  FDRE \txdata_double_reg[3] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txdata_reg[3]),
        .Q(txdata_double[3]),
        .R(SR));
  FDRE \txdata_double_reg[4] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txdata_reg[4]),
        .Q(txdata_double[4]),
        .R(SR));
  FDRE \txdata_double_reg[5] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txdata_reg[5]),
        .Q(txdata_double[5]),
        .R(SR));
  FDRE \txdata_double_reg[6] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txdata_reg[6]),
        .Q(txdata_double[6]),
        .R(SR));
  FDRE \txdata_double_reg[7] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txdata_reg[7]),
        .Q(txdata_double[7]),
        .R(SR));
  FDRE \txdata_double_reg[8] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(\txdata_reg_reg[7]_0 [0]),
        .Q(txdata_double[8]),
        .R(SR));
  FDRE \txdata_double_reg[9] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(\txdata_reg_reg[7]_0 [1]),
        .Q(txdata_double[9]),
        .R(SR));
  FDRE \txdata_int_reg[0] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(txdata_double[0]),
        .Q(txdata_int[0]),
        .R(1'b0));
  FDRE \txdata_int_reg[10] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(txdata_double[10]),
        .Q(txdata_int[10]),
        .R(1'b0));
  FDRE \txdata_int_reg[11] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(txdata_double[11]),
        .Q(txdata_int[11]),
        .R(1'b0));
  FDRE \txdata_int_reg[12] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(txdata_double[12]),
        .Q(txdata_int[12]),
        .R(1'b0));
  FDRE \txdata_int_reg[13] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(txdata_double[13]),
        .Q(txdata_int[13]),
        .R(1'b0));
  FDRE \txdata_int_reg[14] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(txdata_double[14]),
        .Q(txdata_int[14]),
        .R(1'b0));
  FDRE \txdata_int_reg[15] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(txdata_double[15]),
        .Q(txdata_int[15]),
        .R(1'b0));
  FDRE \txdata_int_reg[1] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(txdata_double[1]),
        .Q(txdata_int[1]),
        .R(1'b0));
  FDRE \txdata_int_reg[2] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(txdata_double[2]),
        .Q(txdata_int[2]),
        .R(1'b0));
  FDRE \txdata_int_reg[3] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(txdata_double[3]),
        .Q(txdata_int[3]),
        .R(1'b0));
  FDRE \txdata_int_reg[4] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(txdata_double[4]),
        .Q(txdata_int[4]),
        .R(1'b0));
  FDRE \txdata_int_reg[5] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(txdata_double[5]),
        .Q(txdata_int[5]),
        .R(1'b0));
  FDRE \txdata_int_reg[6] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(txdata_double[6]),
        .Q(txdata_int[6]),
        .R(1'b0));
  FDRE \txdata_int_reg[7] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(txdata_double[7]),
        .Q(txdata_int[7]),
        .R(1'b0));
  FDRE \txdata_int_reg[8] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(txdata_double[8]),
        .Q(txdata_int[8]),
        .R(1'b0));
  FDRE \txdata_int_reg[9] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(txdata_double[9]),
        .Q(txdata_int[9]),
        .R(1'b0));
  FDRE \txdata_reg_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\txdata_reg_reg[7]_0 [0]),
        .Q(txdata_reg[0]),
        .R(SR));
  FDRE \txdata_reg_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\txdata_reg_reg[7]_0 [1]),
        .Q(txdata_reg[1]),
        .R(SR));
  FDRE \txdata_reg_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\txdata_reg_reg[7]_0 [2]),
        .Q(txdata_reg[2]),
        .R(SR));
  FDRE \txdata_reg_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\txdata_reg_reg[7]_0 [3]),
        .Q(txdata_reg[3]),
        .R(SR));
  FDRE \txdata_reg_reg[4] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\txdata_reg_reg[7]_0 [4]),
        .Q(txdata_reg[4]),
        .R(SR));
  FDRE \txdata_reg_reg[5] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\txdata_reg_reg[7]_0 [5]),
        .Q(txdata_reg[5]),
        .R(SR));
  FDRE \txdata_reg_reg[6] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\txdata_reg_reg[7]_0 [6]),
        .Q(txdata_reg[6]),
        .R(SR));
  FDRE \txdata_reg_reg[7] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\txdata_reg_reg[7]_0 [7]),
        .Q(txdata_reg[7]),
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
       (.C(gtpe2_i),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 247504)
`pragma protect data_block
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
XVUX/SWRFcMPkw==
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
