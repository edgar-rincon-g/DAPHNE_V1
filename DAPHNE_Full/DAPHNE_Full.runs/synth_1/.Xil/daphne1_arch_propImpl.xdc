set_property SRC_FILE_INFO {cfile:c:/Users/daniel.avila/Documents/GitHub/DAPHNE_V1/DAPHNE_Full/DAPHNE_Full.gen/sources_1/ip/gig_ethernet_pcs_pma_0/synth/gig_ethernet_pcs_pma_0.xdc rfile:../../../DAPHNE_Full.gen/sources_1/ip/gig_ethernet_pcs_pma_0/synth/gig_ethernet_pcs_pma_0.xdc id:1 order:EARLY scoped_inst:ETH0/ETH_PHY_COM/U0} [current_design]
set_property SRC_FILE_INFO {cfile:C:/Users/daniel.avila/Documents/GitHub/DAPHNE_V1/xilinx/constraints.xdc rfile:../../../../xilinx/constraints.xdc id:2} [current_design]
current_instance ETH0/ETH_PHY_COM/U0
set_property src_info {type:SCOPED_XDC file:1 line:62 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -scope -quiet -type CDC -id {CDC-10} -user "gig_ethernet_pcs_pma" -tags "11999" -desc "The CDC-10 warning is waived as it is in the reset path which is a level signal so safe to ignore" -from [get_pins -of [get_cells -hier -filter {name =~ */gt0_*xresetfsm_i/*x_fsm_reset_done_int_reg*}] -filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */sync_block_*x_reset_done/data_sync_reg1*}] -filter {name =~ *D}]
set_property src_info {type:SCOPED_XDC file:1 line:66 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -scope -quiet -type CDC -id {CDC-13} -user "gig_ethernet_pcs_pma" -tags "11999" -desc "The CDC-13 warning is waived, in RTl ASYNC reg primitive decalared, it is falsely reported by the tool. This can be ignored" -from [get_pins -of [get_cells -hier -filter {name =~ */reclock_encommaalign/reset_sync6*}] -filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */gt0_GTWIZARD_i/gtxe2_i*}] -filter {name =~ *RX*COMMAALIGNEN}]
set_property src_info {type:SCOPED_XDC file:1 line:68 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -scope -quiet -type CDC -id {CDC-10} -user "gig_ethernet_pcs_pma" -tags "11999" -desc "The CDC-10 warning is waived as it is in the reset path which is a level signal so safe to ignore" -from [get_pins -of [get_cells -hier -filter {name =~ */gt*_*x_auto_phase_align_i/PHASE_ALIGNMENT_DONE_reg*}] -filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */sync_block_*x_reset_done/data_sync_reg1*}] -filter {name =~ *D}]
set_property src_info {type:SCOPED_XDC file:1 line:72 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -scope -quiet -type CDC -id {CDC-11} -user "gig_ethernet_pcs_pma" -tags "11999" -desc "The CDC-11 warning is waived as this is within the GT Wizard" -from [get_pins -of [get_cells -hier -filter {name =~ */CPLL_RESET_reg*}] -filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */reset_sync1*}] -filter {name =~ *PRE}]
set_property src_info {type:SCOPED_XDC file:1 line:76 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -scope -quiet -type CDC -id {CDC-10} -user "gig_ethernet_pcs_pma" -tags "11999" -desc "The CDC-10 warning is waived as it is in the reset path which is a level signal so safe to ignore" -from [get_pins -of [get_cells -hier -filter {name =~ */SYNC_UNIDIRECTIONAL_ENABLE_RXOUTCLK_INST/data_sync_reg6*}] -filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */SYNC_XMIT_*_TXOUTCLK/data_sync_reg1*}] -filter {name =~ *D}]
current_instance
set_property src_info {type:XDC file:2 line:31 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -datapath_only -from [get_cells -of_objects [get_pins -of_objects [get_nets -segments -of_objects [get_pins -of_objects [get_cells ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/rx_fifo/fifo_inst/s_rst_sync2_reg_reg] -filter {REF_PIN_NAME == D}]] -filter {IS_LEAF && DIRECTION == OUT}]] -to [get_cells ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/rx_fifo/fifo_inst/s_rst_sync2_reg_reg] 8.000
set_property src_info {type:XDC file:2 line:33 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -datapath_only -from [get_cells -of_objects [get_pins -of_objects [get_nets -segments -of_objects [get_pins -of_objects [get_cells ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/rx_fifo/fifo_inst/m_rst_sync2_reg_reg] -filter {REF_PIN_NAME == D}]] -filter {IS_LEAF && DIRECTION == OUT}]] -to [get_cells ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/rx_fifo/fifo_inst/m_rst_sync2_reg_reg] 8.000
set_property src_info {type:XDC file:2 line:35 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -datapath_only -from [get_cells {{ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/rx_fifo/fifo_inst/rd_ptr_reg_reg[*]} {ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/rx_fifo/fifo_inst/rd_ptr_gray_reg_reg[*]}}] -to [get_cells {ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/rx_fifo/fifo_inst/rd_ptr_gray_sync1_reg_reg[*]}] 8.000
set_property src_info {type:XDC file:2 line:38 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -datapath_only -from [get_cells -quiet {{ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/rx_fifo/fifo_inst/wr_ptr_reg_reg[*]} {ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/rx_fifo/fifo_inst/wr_ptr_gray_reg_reg[*]} {ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/rx_fifo/fifo_inst/wr_ptr_sync_gray_reg_reg[*]}}] -to [get_cells {ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/rx_fifo/fifo_inst/wr_ptr_gray_sync1_reg_reg[*]}] 8.000
set_property src_info {type:XDC file:2 line:41 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -datapath_only -from [get_cells ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/rx_fifo/fifo_inst/wr_ptr_update_reg_reg] -to [get_cells ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/rx_fifo/fifo_inst/wr_ptr_update_sync1_reg_reg] 8.000
set_property src_info {type:XDC file:2 line:42 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -datapath_only -from [get_cells ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/rx_fifo/fifo_inst/wr_ptr_update_sync3_reg_reg] -to [get_cells ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/rx_fifo/fifo_inst/wr_ptr_update_ack_sync1_reg_reg] 8.000
set_property src_info {type:XDC file:2 line:44 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -datapath_only -from [get_cells -of_objects [get_pins -of_objects [get_nets -segments -of_objects [get_pins -of_objects [get_cells ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/tx_fifo/fifo_inst/s_rst_sync2_reg_reg] -filter {REF_PIN_NAME == D}]] -filter {IS_LEAF && DIRECTION == OUT}]] -to [get_cells ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/tx_fifo/fifo_inst/s_rst_sync2_reg_reg] 8.000
set_property src_info {type:XDC file:2 line:46 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -datapath_only -from [get_cells -of_objects [get_pins -of_objects [get_nets -segments -of_objects [get_pins -of_objects [get_cells ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/tx_fifo/fifo_inst/m_rst_sync2_reg_reg] -filter {REF_PIN_NAME == D}]] -filter {IS_LEAF && DIRECTION == OUT}]] -to [get_cells ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/tx_fifo/fifo_inst/m_rst_sync2_reg_reg] 8.000
set_property src_info {type:XDC file:2 line:48 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -datapath_only -from [get_cells {{ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/tx_fifo/fifo_inst/rd_ptr_reg_reg[*]} {ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/tx_fifo/fifo_inst/rd_ptr_gray_reg_reg[*]}}] -to [get_cells {ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/tx_fifo/fifo_inst/rd_ptr_gray_sync1_reg_reg[*]}] 8.000
set_property src_info {type:XDC file:2 line:51 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -datapath_only -from [get_cells -quiet {{ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/tx_fifo/fifo_inst/wr_ptr_reg_reg[*]} {ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/tx_fifo/fifo_inst/wr_ptr_gray_reg_reg[*]} {ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/tx_fifo/fifo_inst/wr_ptr_sync_gray_reg_reg[*]}}] -to [get_cells {ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/tx_fifo/fifo_inst/wr_ptr_gray_sync1_reg_reg[*]}] 8.000
set_property src_info {type:XDC file:2 line:54 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -datapath_only -from [get_cells ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/tx_fifo/fifo_inst/wr_ptr_update_reg_reg] -to [get_cells ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/tx_fifo/fifo_inst/wr_ptr_update_sync1_reg_reg] 8.000
set_property src_info {type:XDC file:2 line:55 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -datapath_only -from [get_cells ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/tx_fifo/fifo_inst/wr_ptr_update_sync3_reg_reg] -to [get_cells ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/tx_fifo/fifo_inst/wr_ptr_update_ack_sync1_reg_reg] 8.000
set_property src_info {type:XDC file:2 line:84 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -datapath_only -from [get_cells ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/eth_mac_1g_gmii_inst/mii_select_reg_reg] -to [get_cells {ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/eth_mac_1g_gmii_inst/tx_mii_select_sync_reg[0]}] 8.000
set_property src_info {type:XDC file:2 line:86 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -datapath_only -from [get_cells ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/eth_mac_1g_gmii_inst/mii_select_reg_reg] -to [get_cells {ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/eth_mac_1g_gmii_inst/rx_mii_select_sync_reg[0]}] 8.000
set_property src_info {type:XDC file:2 line:88 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -datapath_only -from [get_cells {ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/eth_mac_1g_gmii_inst/rx_prescale_reg[2]}] -to [get_cells {ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/eth_mac_1g_gmii_inst/rx_prescale_sync_reg[0]}] 8.000
set_property src_info {type:XDC file:2 line:133 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC BUFGCTRL_X0Y2 [get_cells ETH0/ETH_PHY_COM/U0/core_clocking_i/bufg_userclk2]
set_property src_info {type:XDC file:2 line:199 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AA4 [get_ports {sysclk_p}]
set_property src_info {type:XDC file:2 line:200 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AB4 [get_ports {sysclk_n}]
set_property src_info {type:XDC file:2 line:209 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AF5   [get_ports {afe_clk_p}]
set_property src_info {type:XDC file:2 line:210 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AF4   [get_ports {afe_clk_n}]
set_property src_info {type:XDC file:2 line:219 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN D5 [get_ports {gpi}]
set_property src_info {type:XDC file:2 line:220 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN D4 [get_ports {gpo}]
set_property src_info {type:XDC file:2 line:229 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AC3 [get_ports {cdr_data_p}]
set_property src_info {type:XDC file:2 line:230 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AD3 [get_ports {cdr_data_n}]
set_property src_info {type:XDC file:2 line:241 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN D6 [get_ports {cdr_los}]
set_property src_info {type:XDC file:2 line:242 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN H8 [get_ports {cdr_lol}]
set_property src_info {type:XDC file:2 line:245 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN G7 [get_ports {cdr_sfp_los}]
set_property src_info {type:XDC file:2 line:246 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN F8 [get_ports {cdr_sfp_abs}]
set_property src_info {type:XDC file:2 line:247 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN H7 [get_ports {cdr_sfp_tx_dis}]
set_property src_info {type:XDC file:2 line:254 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN J8 [get_ports {reset_n}]
set_property src_info {type:XDC file:2 line:264 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  Y15  [get_ports {afe_p[0][0]}]
set_property src_info {type:XDC file:2 line:265 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AA15 [get_ports {afe_n[0][0]}]
set_property src_info {type:XDC file:2 line:266 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AB16 [get_ports {afe_p[0][1]}]
set_property src_info {type:XDC file:2 line:267 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AC16 [get_ports {afe_n[0][1]}]
set_property src_info {type:XDC file:2 line:268 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AA17 [get_ports {afe_p[0][2]}]
set_property src_info {type:XDC file:2 line:269 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AB17 [get_ports {afe_n[0][2]}]
set_property src_info {type:XDC file:2 line:270 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AE18 [get_ports {afe_p[0][3]}]
set_property src_info {type:XDC file:2 line:271 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AF18 [get_ports {afe_n[0][3]}]
set_property src_info {type:XDC file:2 line:272 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AC18 [get_ports {afe_p[0][4]}]
set_property src_info {type:XDC file:2 line:273 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AD18 [get_ports {afe_n[0][4]}]
set_property src_info {type:XDC file:2 line:274 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AF19 [get_ports {afe_p[0][5]}]
set_property src_info {type:XDC file:2 line:275 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AF20 [get_ports {afe_n[0][5]}]
set_property src_info {type:XDC file:2 line:276 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AD20 [get_ports {afe_p[0][6]}]
set_property src_info {type:XDC file:2 line:277 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AE20 [get_ports {afe_n[0][6]}]
set_property src_info {type:XDC file:2 line:278 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AD21 [get_ports {afe_p[0][7]}]
set_property src_info {type:XDC file:2 line:279 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AE21 [get_ports {afe_n[0][7]}]
set_property src_info {type:XDC file:2 line:280 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AA20 [get_ports {afe_fclk_p[0]}]
set_property src_info {type:XDC file:2 line:281 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AB20 [get_ports {afe_fclk_n[0]}]
set_property src_info {type:XDC file:2 line:282 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AA19 [get_ports {afe_dclk_p[0]}]
set_property src_info {type:XDC file:2 line:283 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AB19 [get_ports {afe_dclk_n[0]}]
set_property src_info {type:XDC file:2 line:287 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  B25 [get_ports {afe_p[1][0]}]
set_property src_info {type:XDC file:2 line:288 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  A25 [get_ports {afe_n[1][0]}]
set_property src_info {type:XDC file:2 line:289 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  A23 [get_ports {afe_p[1][1]}]
set_property src_info {type:XDC file:2 line:290 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  A24 [get_ports {afe_n[1][1]}]
set_property src_info {type:XDC file:2 line:291 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  E21 [get_ports {afe_p[1][2]}]
set_property src_info {type:XDC file:2 line:292 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  D21 [get_ports {afe_n[1][2]}]
set_property src_info {type:XDC file:2 line:293 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  C21 [get_ports {afe_p[1][3]}]
set_property src_info {type:XDC file:2 line:294 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  B21 [get_ports {afe_n[1][3]}]
set_property src_info {type:XDC file:2 line:295 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  B19 [get_ports {afe_p[1][4]}]
set_property src_info {type:XDC file:2 line:296 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  A19 [get_ports {afe_n[1][4]}]
set_property src_info {type:XDC file:2 line:297 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  A17 [get_ports {afe_p[1][5]}]
set_property src_info {type:XDC file:2 line:298 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  A18 [get_ports {afe_n[1][5]}]
set_property src_info {type:XDC file:2 line:299 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  C17 [get_ports {afe_p[1][6]}]
set_property src_info {type:XDC file:2 line:300 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  B17 [get_ports {afe_n[1][6]}]
set_property src_info {type:XDC file:2 line:301 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  E16 [get_ports {afe_p[1][7]}]
set_property src_info {type:XDC file:2 line:302 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  D16 [get_ports {afe_n[1][7]}]
set_property src_info {type:XDC file:2 line:303 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  D19 [get_ports {afe_fclk_p[1]}]
set_property src_info {type:XDC file:2 line:304 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  C19 [get_ports {afe_fclk_n[1]}]
set_property src_info {type:XDC file:2 line:305 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  D18 [get_ports {afe_dclk_p[1]}]
set_property src_info {type:XDC file:2 line:306 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  C18 [get_ports {afe_dclk_n[1]}]
set_property src_info {type:XDC file:2 line:310 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  K22 [get_ports {afe_p[2][0]}]
set_property src_info {type:XDC file:2 line:311 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  K23 [get_ports {afe_n[2][0]}]
set_property src_info {type:XDC file:2 line:312 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  J24 [get_ports {afe_p[2][1]}]
set_property src_info {type:XDC file:2 line:313 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  H24 [get_ports {afe_n[2][1]}]
set_property src_info {type:XDC file:2 line:314 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  J25 [get_ports {afe_p[2][2]}]
set_property src_info {type:XDC file:2 line:315 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  J26 [get_ports {afe_n[2][2]}]
set_property src_info {type:XDC file:2 line:316 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  H26 [get_ports {afe_p[2][3]}]
set_property src_info {type:XDC file:2 line:317 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  G26 [get_ports {afe_n[2][3]}]
set_property src_info {type:XDC file:2 line:318 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  E25 [get_ports {afe_p[2][4]}]
set_property src_info {type:XDC file:2 line:319 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  D25 [get_ports {afe_n[2][4]}]
set_property src_info {type:XDC file:2 line:320 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  E26 [get_ports {afe_p[2][5]}]
set_property src_info {type:XDC file:2 line:321 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  D26 [get_ports {afe_n[2][5]}]
set_property src_info {type:XDC file:2 line:322 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  F23 [get_ports {afe_p[2][6]}]
set_property src_info {type:XDC file:2 line:323 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  E23 [get_ports {afe_n[2][6]}]
set_property src_info {type:XDC file:2 line:324 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  G22 [get_ports {afe_p[2][7]}]
set_property src_info {type:XDC file:2 line:325 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  F22 [get_ports {afe_n[2][7]}]
set_property src_info {type:XDC file:2 line:326 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  H21 [get_ports {afe_fclk_p[2]}]
set_property src_info {type:XDC file:2 line:327 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  H22 [get_ports {afe_fclk_n[2]}]
set_property src_info {type:XDC file:2 line:328 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  K21 [get_ports {afe_dclk_p[2]}]
set_property src_info {type:XDC file:2 line:329 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  J21 [get_ports {afe_dclk_n[2]}]
set_property src_info {type:XDC file:2 line:333 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  T24 [get_ports {afe_p[3][0]}]
set_property src_info {type:XDC file:2 line:334 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  T25 [get_ports {afe_n[3][0]}]
set_property src_info {type:XDC file:2 line:335 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  T23 [get_ports {afe_p[3][1]}]
set_property src_info {type:XDC file:2 line:336 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  R23 [get_ports {afe_n[3][1]}]
set_property src_info {type:XDC file:2 line:337 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  R25 [get_ports {afe_p[3][2]}]
set_property src_info {type:XDC file:2 line:338 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  P25 [get_ports {afe_n[3][2]}]
set_property src_info {type:XDC file:2 line:339 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  R26 [get_ports {afe_p[3][3]}]
set_property src_info {type:XDC file:2 line:340 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  P26 [get_ports {afe_n[3][3]}]
set_property src_info {type:XDC file:2 line:341 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  N26 [get_ports {afe_p[3][4]}]
set_property src_info {type:XDC file:2 line:342 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  M26 [get_ports {afe_n[3][4]}]
set_property src_info {type:XDC file:2 line:343 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  M24 [get_ports {afe_p[3][5]}]
set_property src_info {type:XDC file:2 line:344 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  M25 [get_ports {afe_n[3][5]}]
set_property src_info {type:XDC file:2 line:345 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  L24 [get_ports {afe_p[3][6]}]
set_property src_info {type:XDC file:2 line:346 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  L25 [get_ports {afe_n[3][6]}]
set_property src_info {type:XDC file:2 line:347 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  K25 [get_ports {afe_p[3][7]}]
set_property src_info {type:XDC file:2 line:348 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  K26 [get_ports {afe_n[3][7]}]
set_property src_info {type:XDC file:2 line:349 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  M21  [get_ports {afe_fclk_p[3]}]
set_property src_info {type:XDC file:2 line:350 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  M22  [get_ports {afe_fclk_n[3]}]
set_property src_info {type:XDC file:2 line:351 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  N21  [get_ports {afe_dclk_p[3]}]
set_property src_info {type:XDC file:2 line:352 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  N22  [get_ports {afe_dclk_n[3]}]
set_property src_info {type:XDC file:2 line:357 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  W20  [get_ports {afe_p[4][0]}]
set_property src_info {type:XDC file:2 line:358 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  Y20  [get_ports {afe_n[4][0]}]
set_property src_info {type:XDC file:2 line:359 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  Y22  [get_ports {afe_p[4][1]}]
set_property src_info {type:XDC file:2 line:360 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  Y23  [get_ports {afe_n[4][1]}]
set_property src_info {type:XDC file:2 line:361 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AA22 [get_ports {afe_p[4][2]}]
set_property src_info {type:XDC file:2 line:362 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AA23 [get_ports {afe_n[4][2]}]
set_property src_info {type:XDC file:2 line:363 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AB24 [get_ports {afe_p[4][3]}]
set_property src_info {type:XDC file:2 line:364 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AC24 [get_ports {afe_n[4][3]}]
set_property src_info {type:XDC file:2 line:365 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AB26 [get_ports {afe_p[4][4]}]
set_property src_info {type:XDC file:2 line:366 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AC26 [get_ports {afe_n[4][4]}]
set_property src_info {type:XDC file:2 line:367 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  Y25  [get_ports {afe_p[4][5]}]
set_property src_info {type:XDC file:2 line:368 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AA25 [get_ports {afe_n[4][5]}]
set_property src_info {type:XDC file:2 line:369 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  W25  [get_ports {afe_p[4][6]}]
set_property src_info {type:XDC file:2 line:370 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  Y26  [get_ports {afe_n[4][6]}]
set_property src_info {type:XDC file:2 line:371 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  V26  [get_ports {afe_p[4][7]}]
set_property src_info {type:XDC file:2 line:372 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  W26  [get_ports {afe_n[4][7]}]
set_property src_info {type:XDC file:2 line:373 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  U21  [get_ports {afe_fclk_p[4]}]
set_property src_info {type:XDC file:2 line:374 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  V21  [get_ports {afe_fclk_n[4]}]
set_property src_info {type:XDC file:2 line:375 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  U22  [get_ports {afe_dclk_p[4]}]
set_property src_info {type:XDC file:2 line:376 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  V22  [get_ports {afe_dclk_n[4]}]
set_property src_info {type:XDC file:2 line:385 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN K6 [get_ports {spi_csn}]
set_property src_info {type:XDC file:2 line:386 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN G4 [get_ports {spi_clk}]
set_property src_info {type:XDC file:2 line:387 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN F4 [get_ports {spi_miso}]
set_property src_info {type:XDC file:2 line:388 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN G5 [get_ports {spi_mosi}]
set_property src_info {type:XDC file:2 line:389 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN F5 [get_ports {spi_irq}]
set_property src_info {type:XDC file:2 line:399 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC B7 [get_ports {daq0_tx_p}]
set_property src_info {type:XDC file:2 line:400 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC A7 [get_ports {daq0_tx_n}]
set_property src_info {type:XDC file:2 line:403 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN H6 [get_ports {daq0_sfp_los}]
set_property src_info {type:XDC file:2 line:404 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN J6 [get_ports {daq0_sfp_abs}]
set_property src_info {type:XDC file:2 line:405 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN G6 [get_ports {daq0_sfp_tx_dis}]
set_property src_info {type:XDC file:2 line:406 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN H9 [get_ports {daq0_sfp_scl}]
set_property src_info {type:XDC file:2 line:407 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN G9 [get_ports {daq0_sfp_sda}]
set_property src_info {type:XDC file:2 line:418 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN L8 [get_ports {daq1_sfp_los}]
set_property src_info {type:XDC file:2 line:419 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN K7 [get_ports {daq1_sfp_abs}]
set_property src_info {type:XDC file:2 line:420 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN K8 [get_ports {daq1_sfp_tx_dis}]
set_property src_info {type:XDC file:2 line:421 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN J4 [get_ports {daq1_sfp_scl}]
set_property src_info {type:XDC file:2 line:422 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN H4 [get_ports {daq1_sfp_sda}]
set_property src_info {type:XDC file:2 line:427 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC E11 [get_ports daq_refclk_n]
set_property src_info {type:XDC file:2 line:428 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC F11 [get_ports daq_refclk_p]
set_property src_info {type:XDC file:2 line:440 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN D3 [get_ports {led[5]}]
set_property src_info {type:XDC file:2 line:441 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN A4 [get_ports {led[4]}]
set_property src_info {type:XDC file:2 line:442 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN B4 [get_ports {led[3]}]
set_property src_info {type:XDC file:2 line:443 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN A5 [get_ports {led[2]}]
set_property src_info {type:XDC file:2 line:444 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN B5 [get_ports {led[1]}]
set_property src_info {type:XDC file:2 line:445 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN C4 [get_ports {led[0]}]