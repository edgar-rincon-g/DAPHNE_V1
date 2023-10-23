// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Mon Oct 23 14:33:51 2023
// Host        : danielA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/daniel.avila/Documents/GitHub/DAPHNE_V1/DAPHNE_Full/DAPHNE_Full.gen/sources_1/ip/gig_ethernet_pcs_pma_0/gig_ethernet_pcs_pma_0_sim_netlist.v
// Design      : gig_ethernet_pcs_pma_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* EXAMPLE_SIMULATION = "0" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "gig_ethernet_pcs_pma_v16_2_12,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module gig_ethernet_pcs_pma_0
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
  gig_ethernet_pcs_pma_0_support U0
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

module gig_ethernet_pcs_pma_0_GTWIZARD
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

  gig_ethernet_pcs_pma_0_GTWIZARD_init U0
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

module gig_ethernet_pcs_pma_0_GTWIZARD_GT
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
  gig_ethernet_pcs_pma_0_gtwizard_gtrxreset_seq gtrxreset_seq_i
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

module gig_ethernet_pcs_pma_0_GTWIZARD_init
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
  gig_ethernet_pcs_pma_0_RX_STARTUP_FSM gt0_rxresetfsm_i
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
  gig_ethernet_pcs_pma_0_TX_STARTUP_FSM gt0_txresetfsm_i
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
  gig_ethernet_pcs_pma_0_GTWIZARD_multi_gt gtwizard_i
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

module gig_ethernet_pcs_pma_0_GTWIZARD_multi_gt
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

  gig_ethernet_pcs_pma_0_GTWIZARD_GT gt0_GTWIZARD_i
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

module gig_ethernet_pcs_pma_0_RX_STARTUP_FSM
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
  gig_ethernet_pcs_pma_0_sync_block_13 sync_RXRESETDONE
       (.data_out(rxresetdone_s2),
        .data_sync_reg1_0(data_sync_reg1),
        .independent_clock_bufg(independent_clock_bufg));
  gig_ethernet_pcs_pma_0_sync_block_14 sync_data_valid
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
  gig_ethernet_pcs_pma_0_sync_block_15 sync_mmcm_lock_reclocked
       (.SR(sync_mmcm_lock_reclocked_n_0),
        .data_out(mmcm_lock_i),
        .data_sync_reg1_0(data_sync_reg1_0),
        .independent_clock_bufg(independent_clock_bufg));
  gig_ethernet_pcs_pma_0_sync_block_16 sync_pll0lock
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
  gig_ethernet_pcs_pma_0_sync_block_17 sync_run_phase_alignment_int
       (.data_in(run_phase_alignment_int_reg_n_0),
        .data_out(run_phase_alignment_int_s2),
        .data_sync_reg1_0(data_sync_reg6));
  gig_ethernet_pcs_pma_0_sync_block_18 sync_rx_fsm_reset_done_int
       (.data_in(data_in),
        .data_out(rx_fsm_reset_done_int_s2),
        .data_sync_reg6_0(data_sync_reg6));
  gig_ethernet_pcs_pma_0_sync_block_19 sync_time_out_wait_bypass
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

module gig_ethernet_pcs_pma_0_TX_STARTUP_FSM
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
  gig_ethernet_pcs_pma_0_sync_block_7 sync_PLL0LOCK
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
  gig_ethernet_pcs_pma_0_sync_block_8 sync_TXRESETDONE
       (.data_out(txresetdone_s2),
        .data_sync_reg1_0(data_sync_reg1_0),
        .independent_clock_bufg(independent_clock_bufg));
  gig_ethernet_pcs_pma_0_sync_block_9 sync_mmcm_lock_reclocked
       (.SR(sync_mmcm_lock_reclocked_n_0),
        .data_out(mmcm_lock_i),
        .data_sync_reg1_0(data_sync_reg1_1),
        .independent_clock_bufg(independent_clock_bufg));
  gig_ethernet_pcs_pma_0_sync_block_10 sync_run_phase_alignment_int
       (.data_in(run_phase_alignment_int_reg_n_0),
        .data_out(data_out),
        .data_sync_reg6_0(data_sync_reg1));
  gig_ethernet_pcs_pma_0_sync_block_11 sync_time_out_wait_bypass
       (.data_in(time_out_wait_bypass_reg_n_0),
        .data_out(time_out_wait_bypass_s2),
        .independent_clock_bufg(independent_clock_bufg));
  gig_ethernet_pcs_pma_0_sync_block_12 sync_tx_fsm_reset_done_int
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

module gig_ethernet_pcs_pma_0_block
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
  gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_v16_2_12 gig_ethernet_pcs_pma_0_core
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
  gig_ethernet_pcs_pma_0_sync_block sync_block_rx_reset_done
       (.data_in(transceiver_inst_n_13),
        .data_out(rx_reset_done_i),
        .userclk2(userclk2));
  gig_ethernet_pcs_pma_0_sync_block_0 sync_block_tx_reset_done
       (.data_in(transceiver_inst_n_12),
        .resetdone(resetdone),
        .resetdone_0(rx_reset_done_i),
        .userclk2(userclk2));
  gig_ethernet_pcs_pma_0_transceiver transceiver_inst
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

module gig_ethernet_pcs_pma_0_clocking
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

module gig_ethernet_pcs_pma_0_common_reset
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

module gig_ethernet_pcs_pma_0_gt_common
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

module gig_ethernet_pcs_pma_0_gtwizard_gtrxreset_seq
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
  gig_ethernet_pcs_pma_0_reset_sync_4 sync_gtrxreset_in
       (.CLK(CLK),
        .SR(SR),
        .reset_out(gtrxreset_in_sync));
  gig_ethernet_pcs_pma_0_reset_sync_5 sync_rst_sync
       (.CLK(CLK),
        .reset_out(rst_sync),
        .reset_sync5_0(reset_sync5));
  gig_ethernet_pcs_pma_0_sync_block_6 sync_rxpmaresetdone
       (.CLK(CLK),
        .data_in(data_in),
        .data_out(rxpmaresetdone_sync));
endmodule

module gig_ethernet_pcs_pma_0_reset_sync
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
module gig_ethernet_pcs_pma_0_reset_sync_1
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
module gig_ethernet_pcs_pma_0_reset_sync_2
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
module gig_ethernet_pcs_pma_0_reset_sync_4
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
module gig_ethernet_pcs_pma_0_reset_sync_5
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

module gig_ethernet_pcs_pma_0_reset_wtd_timer
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

module gig_ethernet_pcs_pma_0_resets
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
module gig_ethernet_pcs_pma_0_support
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
  gig_ethernet_pcs_pma_0_clocking core_clocking_i
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
  gig_ethernet_pcs_pma_0_gt_common core_gt_common_i
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
  gig_ethernet_pcs_pma_0_common_reset core_gt_common_reset_i
       (.PLL0RESET(PLL0RESET),
        .cpll_reset_i(cpll_reset_i),
        .gt0_pll0reset_out(gt0_pll0reset_out),
        .independent_clock_bufg(independent_clock_bufg),
        .out(pma_reset_out));
  gig_ethernet_pcs_pma_0_resets core_resets_i
       (.independent_clock_bufg(independent_clock_bufg),
        .out(pma_reset_out),
        .reset(reset));
  gig_ethernet_pcs_pma_0_block pcs_pma_block_i
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

module gig_ethernet_pcs_pma_0_sync_block
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
module gig_ethernet_pcs_pma_0_sync_block_0
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
module gig_ethernet_pcs_pma_0_sync_block_10
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
module gig_ethernet_pcs_pma_0_sync_block_11
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
module gig_ethernet_pcs_pma_0_sync_block_12
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
module gig_ethernet_pcs_pma_0_sync_block_13
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
module gig_ethernet_pcs_pma_0_sync_block_14
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
module gig_ethernet_pcs_pma_0_sync_block_15
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
module gig_ethernet_pcs_pma_0_sync_block_16
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
module gig_ethernet_pcs_pma_0_sync_block_17
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
module gig_ethernet_pcs_pma_0_sync_block_18
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
module gig_ethernet_pcs_pma_0_sync_block_19
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
module gig_ethernet_pcs_pma_0_sync_block_3
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
module gig_ethernet_pcs_pma_0_sync_block_6
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
module gig_ethernet_pcs_pma_0_sync_block_7
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
module gig_ethernet_pcs_pma_0_sync_block_8
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
module gig_ethernet_pcs_pma_0_sync_block_9
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

module gig_ethernet_pcs_pma_0_transceiver
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

  gig_ethernet_pcs_pma_0_GTWIZARD gtwizard_inst
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
  gig_ethernet_pcs_pma_0_reset_sync reclock_encommaalign
       (.enablealign(enablealign),
        .reset_out(encommaalign_int),
        .userclk2(userclk2));
  gig_ethernet_pcs_pma_0_reset_sync_1 reclock_rxreset
       (.independent_clock_bufg(independent_clock_bufg),
        .reset_out(rxreset_int),
        .reset_sync5_0(reset_sync5));
  gig_ethernet_pcs_pma_0_reset_sync_2 reclock_txreset
       (.SR(SR),
        .independent_clock_bufg(independent_clock_bufg),
        .reset_out(txreset_int));
  gig_ethernet_pcs_pma_0_reset_wtd_timer reset_wtd_timer
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
  gig_ethernet_pcs_pma_0_sync_block_3 sync_block_data_valid
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 247440)
`pragma protect data_block
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
601a
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
