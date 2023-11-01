// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Mon Oct 23 14:33:50 2023
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
MRt/fEyis4wPyA==
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
