// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Mon Oct 23 13:21:28 2023
// Host        : danielA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ gig_ethernet_pcs_pma_0_stub.v
// Design      : gig_ethernet_pcs_pma_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "gig_ethernet_pcs_pma_v16_2_12,Vivado 2023.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(gtrefclk_p, gtrefclk_n, gtrefclk_out, 
  gtrefclk_bufg_out, txp, txn, rxp, rxn, resetdone, userclk_out, userclk2_out, rxuserclk_out, 
  rxuserclk2_out, pma_reset_out, mmcm_locked_out, independent_clock_bufg, gmii_txd, 
  gmii_tx_en, gmii_tx_er, gmii_rxd, gmii_rx_dv, gmii_rx_er, gmii_isolate, configuration_vector, 
  an_interrupt, an_adv_config_vector, an_restart_config, status_vector, reset, signal_detect, 
  gt0_pll0outclk_out, gt0_pll0outrefclk_out, gt0_pll1outclk_out, gt0_pll1outrefclk_out, 
  gt0_pll0refclklost_out, gt0_pll0lock_out)
/* synthesis syn_black_box black_box_pad_pin="gtrefclk_p,gtrefclk_n,txp,txn,rxp,rxn,resetdone,pma_reset_out,mmcm_locked_out,gmii_txd[7:0],gmii_tx_en,gmii_tx_er,gmii_rxd[7:0],gmii_rx_dv,gmii_rx_er,gmii_isolate,configuration_vector[4:0],an_interrupt,an_adv_config_vector[15:0],an_restart_config,status_vector[15:0],reset,signal_detect,gt0_pll0outrefclk_out,gt0_pll1outrefclk_out,gt0_pll0refclklost_out,gt0_pll0lock_out" */
/* synthesis syn_force_seq_prim="gtrefclk_out" */
/* synthesis syn_force_seq_prim="gtrefclk_bufg_out" */
/* synthesis syn_force_seq_prim="userclk_out" */
/* synthesis syn_force_seq_prim="userclk2_out" */
/* synthesis syn_force_seq_prim="rxuserclk_out" */
/* synthesis syn_force_seq_prim="rxuserclk2_out" */
/* synthesis syn_force_seq_prim="independent_clock_bufg" */
/* synthesis syn_force_seq_prim="gt0_pll0outclk_out" */
/* synthesis syn_force_seq_prim="gt0_pll1outclk_out" */;
  input gtrefclk_p;
  input gtrefclk_n;
  output gtrefclk_out /* synthesis syn_isclock = 1 */;
  output gtrefclk_bufg_out /* synthesis syn_isclock = 1 */;
  output txp;
  output txn;
  input rxp;
  input rxn;
  output resetdone;
  output userclk_out /* synthesis syn_isclock = 1 */;
  output userclk2_out /* synthesis syn_isclock = 1 */;
  output rxuserclk_out /* synthesis syn_isclock = 1 */;
  output rxuserclk2_out /* synthesis syn_isclock = 1 */;
  output pma_reset_out;
  output mmcm_locked_out;
  input independent_clock_bufg /* synthesis syn_isclock = 1 */;
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
  output gt0_pll0outclk_out /* synthesis syn_isclock = 1 */;
  output gt0_pll0outrefclk_out;
  output gt0_pll1outclk_out /* synthesis syn_isclock = 1 */;
  output gt0_pll1outrefclk_out;
  output gt0_pll0refclklost_out;
  output gt0_pll0lock_out;
endmodule
