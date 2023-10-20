// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Fri Oct 20 09:55:08 2023
// Host        : danielA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/daniel.avila/Documents/GitHub/DAPHNE_V1/DAPHNE_Full/DAPHNE_Full.gen/sources_1/ip/gig_ethernet_pcs_pma_0/gig_ethernet_pcs_pma_0_sim_netlist.v
// Design      : gig_ethernet_pcs_pma_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* EXAMPLE_SIMULATION = "0" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "gig_ethernet_pcs_pma_v16_2_12,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module gig_ethernet_pcs_pma_0
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
  gig_ethernet_pcs_pma_0_block U0
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

  gig_ethernet_pcs_pma_0_GTWIZARD_init U0
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
  gig_ethernet_pcs_pma_0_gtwizard_gtrxreset_seq gtrxreset_seq_i
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
  gig_ethernet_pcs_pma_0_RX_STARTUP_FSM gt0_rxresetfsm_i
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
  gig_ethernet_pcs_pma_0_TX_STARTUP_FSM gt0_txresetfsm_i
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
  gig_ethernet_pcs_pma_0_GTWIZARD_multi_gt gtwizard_i
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

  gig_ethernet_pcs_pma_0_GTWIZARD_GT gt0_GTWIZARD_i
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

module gig_ethernet_pcs_pma_0_RX_STARTUP_FSM
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
  gig_ethernet_pcs_pma_0_sync_block_13 sync_RXRESETDONE
       (.data_out(rxresetdone_s2),
        .data_sync_reg1_0(data_sync_reg1),
        .independent_clock_bufg(independent_clock_bufg));
  gig_ethernet_pcs_pma_0_sync_block_14 sync_data_valid
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
  gig_ethernet_pcs_pma_0_sync_block_15 sync_mmcm_lock_reclocked
       (.SR(sync_mmcm_lock_reclocked_n_0),
        .data_out(mmcm_lock_i),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_locked(mmcm_locked));
  gig_ethernet_pcs_pma_0_sync_block_16 sync_pll0lock
       (.\FSM_sequential_rx_state_reg[1] (sync_pll0lock_n_0),
        .Q(rx_state[3:1]),
        .gt0_pll0lock_in(gt0_pll0lock_in),
        .independent_clock_bufg(independent_clock_bufg),
        .rxresetdone_s3(rxresetdone_s3));
  gig_ethernet_pcs_pma_0_sync_block_17 sync_run_phase_alignment_int
       (.data_in(run_phase_alignment_int_reg_n_0),
        .data_out(run_phase_alignment_int_s2),
        .userclk(userclk));
  gig_ethernet_pcs_pma_0_sync_block_18 sync_rx_fsm_reset_done_int
       (.data_in(data_in),
        .data_out(rx_fsm_reset_done_int_s2),
        .userclk(userclk));
  gig_ethernet_pcs_pma_0_sync_block_19 sync_time_out_wait_bypass
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

module gig_ethernet_pcs_pma_0_TX_STARTUP_FSM
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
  gig_ethernet_pcs_pma_0_sync_block_7 sync_PLL0LOCK
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
  gig_ethernet_pcs_pma_0_sync_block_8 sync_TXRESETDONE
       (.data_out(txresetdone_s2),
        .data_sync_reg1_0(data_sync_reg1),
        .independent_clock_bufg(independent_clock_bufg));
  gig_ethernet_pcs_pma_0_sync_block_9 sync_mmcm_lock_reclocked
       (.SR(sync_mmcm_lock_reclocked_n_0),
        .data_out(mmcm_lock_i),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_locked(mmcm_locked));
  gig_ethernet_pcs_pma_0_sync_block_10 sync_run_phase_alignment_int
       (.data_in(run_phase_alignment_int_reg_n_0),
        .data_out(data_out),
        .userclk(userclk));
  gig_ethernet_pcs_pma_0_sync_block_11 sync_time_out_wait_bypass
       (.data_in(time_out_wait_bypass_reg_n_0),
        .data_out(time_out_wait_bypass_s2),
        .independent_clock_bufg(independent_clock_bufg));
  gig_ethernet_pcs_pma_0_sync_block_12 sync_tx_fsm_reset_done_int
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
module gig_ethernet_pcs_pma_0_block
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
  gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_v16_2_12 gig_ethernet_pcs_pma_0_core
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
  gig_ethernet_pcs_pma_0_sync_block sync_block_rx_reset_done
       (.data_in(transceiver_inst_n_6),
        .data_out(rx_reset_done_i),
        .userclk2(userclk2));
  gig_ethernet_pcs_pma_0_sync_block_0 sync_block_tx_reset_done
       (.data_in(transceiver_inst_n_5),
        .resetdone(resetdone),
        .resetdone_0(rx_reset_done_i),
        .userclk2(userclk2));
  gig_ethernet_pcs_pma_0_transceiver transceiver_inst
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

module gig_ethernet_pcs_pma_0_gtwizard_gtrxreset_seq
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
  gig_ethernet_pcs_pma_0_reset_sync_4 sync_gtrxreset_in
       (.SR(SR),
        .gtrefclk_bufg(gtrefclk_bufg),
        .reset_out(gtrxreset_in_sync));
  gig_ethernet_pcs_pma_0_reset_sync_5 sync_rst_sync
       (.gtrefclk_bufg(gtrefclk_bufg),
        .reset_out(rst_sync),
        .reset_sync5_0(reset_sync5));
  gig_ethernet_pcs_pma_0_sync_block_6 sync_rxpmaresetdone
       (.data_in(data_in),
        .data_out(rxpmaresetdone_sync),
        .gtrefclk_bufg(gtrefclk_bufg));
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
module gig_ethernet_pcs_pma_0_reset_sync_5
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

module gig_ethernet_pcs_pma_0_reset_wtd_timer
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
module gig_ethernet_pcs_pma_0_sync_block_15
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
module gig_ethernet_pcs_pma_0_sync_block_16
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
module gig_ethernet_pcs_pma_0_sync_block_17
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
module gig_ethernet_pcs_pma_0_sync_block_18
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
module gig_ethernet_pcs_pma_0_sync_block_7
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

module gig_ethernet_pcs_pma_0_transceiver
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

  gig_ethernet_pcs_pma_0_GTWIZARD gtwizard_inst
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 320032)
`pragma protect data_block
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
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
