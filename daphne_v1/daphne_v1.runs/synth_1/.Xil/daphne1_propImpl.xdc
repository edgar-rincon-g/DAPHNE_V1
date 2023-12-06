set_property SRC_FILE_INFO {cfile:c:/Users/edgar.rincon/Documents/DUNE/Github/DAPHNE_V1/daphne_v1/daphne_v1.gen/sources_1/ip/gig_ethernet_pcs_pma_0/synth/gig_ethernet_pcs_pma_0.xdc rfile:../../../daphne_v1.gen/sources_1/ip/gig_ethernet_pcs_pma_0/synth/gig_ethernet_pcs_pma_0.xdc id:1 order:EARLY scoped_inst:ETH_MOD/ETH_PHY_COM/U0} [current_design]
set_property SRC_FILE_INFO {cfile:C:/Users/edgar.rincon/Documents/DUNE/Github/DAPHNE_V1/daphne_v1/daphne_v1.srcs/constrs_1/new/daphne_constraints.xdc rfile:../../../daphne_v1.srcs/constrs_1/new/daphne_constraints.xdc id:2} [current_design]
current_instance ETH_MOD/ETH_PHY_COM/U0
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
set_property src_info {type:XDC file:2 line:53 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC BUFGCTRL_X0Y2                      [get_cells ETH_MOD/ETH_PHY_COM/U0/core_clocking_i/bufg_userclk2]
set_property src_info {type:XDC file:2 line:124 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AA4                       [get_ports {sysclk_p}]
set_property src_info {type:XDC file:2 line:125 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AB4                       [get_ports {sysclk_n}]
set_property src_info {type:XDC file:2 line:133 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AF5                       [get_ports {afe_clk_p}]
set_property src_info {type:XDC file:2 line:134 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AF4                       [get_ports {afe_clk_n}]
set_property src_info {type:XDC file:2 line:140 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN D5                         [get_ports {gpi}]
set_property src_info {type:XDC file:2 line:141 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN D4                         [get_ports {gpo}]
set_property src_info {type:XDC file:2 line:150 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AC3                        [get_ports {cdr_data_p}]
set_property src_info {type:XDC file:2 line:151 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AD3                        [get_ports {cdr_data_n}]
set_property src_info {type:XDC file:2 line:162 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN D6                         [get_ports {cdr_los}]
set_property src_info {type:XDC file:2 line:163 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN H8                         [get_ports {cdr_lol}]
set_property src_info {type:XDC file:2 line:166 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN G7                         [get_ports {cdr_sfp_los}]
set_property src_info {type:XDC file:2 line:167 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN F8                         [get_ports {cdr_sfp_abs}]
set_property src_info {type:XDC file:2 line:168 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN H7                         [get_ports {cdr_sfp_tx_dis}]
set_property src_info {type:XDC file:2 line:174 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN J8                         [get_ports {reset_n}]
set_property src_info {type:XDC file:2 line:184 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  Y15                       [get_ports {afe_p[0][0]}]
set_property src_info {type:XDC file:2 line:185 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AA15                      [get_ports {afe_n[0][0]}]
set_property src_info {type:XDC file:2 line:186 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AB16                      [get_ports {afe_p[0][1]}]
set_property src_info {type:XDC file:2 line:187 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AC16                      [get_ports {afe_n[0][1]}]
set_property src_info {type:XDC file:2 line:188 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AA17                      [get_ports {afe_p[0][2]}]
set_property src_info {type:XDC file:2 line:189 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AB17                      [get_ports {afe_n[0][2]}]
set_property src_info {type:XDC file:2 line:190 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AE18                      [get_ports {afe_p[0][3]}]
set_property src_info {type:XDC file:2 line:191 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AF18                      [get_ports {afe_n[0][3]}]
set_property src_info {type:XDC file:2 line:192 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AC18                      [get_ports {afe_p[0][4]}]
set_property src_info {type:XDC file:2 line:193 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AD18                      [get_ports {afe_n[0][4]}]
set_property src_info {type:XDC file:2 line:194 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AF19                      [get_ports {afe_p[0][5]}]
set_property src_info {type:XDC file:2 line:195 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AF20                      [get_ports {afe_n[0][5]}]
set_property src_info {type:XDC file:2 line:196 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AD20                      [get_ports {afe_p[0][6]}]
set_property src_info {type:XDC file:2 line:197 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AE20                      [get_ports {afe_n[0][6]}]
set_property src_info {type:XDC file:2 line:198 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AD21                      [get_ports {afe_p[0][7]}]
set_property src_info {type:XDC file:2 line:199 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AE21                      [get_ports {afe_n[0][7]}]
set_property src_info {type:XDC file:2 line:200 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AA20                      [get_ports {afe_fclk_p[0]}]
set_property src_info {type:XDC file:2 line:201 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AB20                      [get_ports {afe_fclk_n[0]}]
set_property src_info {type:XDC file:2 line:202 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AA19                      [get_ports {afe_dclk_p[0]}]
set_property src_info {type:XDC file:2 line:203 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AB19                      [get_ports {afe_dclk_n[0]}]
set_property src_info {type:XDC file:2 line:207 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  B25                       [get_ports {afe_p[1][0]}]
set_property src_info {type:XDC file:2 line:208 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  A25                       [get_ports {afe_n[1][0]}]
set_property src_info {type:XDC file:2 line:209 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  A23                       [get_ports {afe_p[1][1]}]
set_property src_info {type:XDC file:2 line:210 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  A24                       [get_ports {afe_n[1][1]}]
set_property src_info {type:XDC file:2 line:211 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  E21                       [get_ports {afe_p[1][2]}]
set_property src_info {type:XDC file:2 line:212 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  D21                       [get_ports {afe_n[1][2]}]
set_property src_info {type:XDC file:2 line:213 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  C21                       [get_ports {afe_p[1][3]}]
set_property src_info {type:XDC file:2 line:214 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  B21                       [get_ports {afe_n[1][3]}]
set_property src_info {type:XDC file:2 line:215 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  B19                       [get_ports {afe_p[1][4]}]
set_property src_info {type:XDC file:2 line:216 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  A19                       [get_ports {afe_n[1][4]}]
set_property src_info {type:XDC file:2 line:217 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  A17                       [get_ports {afe_p[1][5]}]
set_property src_info {type:XDC file:2 line:218 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  A18                       [get_ports {afe_n[1][5]}]
set_property src_info {type:XDC file:2 line:219 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  C17                       [get_ports {afe_p[1][6]}]
set_property src_info {type:XDC file:2 line:220 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  B17                       [get_ports {afe_n[1][6]}]
set_property src_info {type:XDC file:2 line:221 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  E16                       [get_ports {afe_p[1][7]}]
set_property src_info {type:XDC file:2 line:222 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  D16                       [get_ports {afe_n[1][7]}]
set_property src_info {type:XDC file:2 line:223 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  D19                       [get_ports {afe_fclk_p[1]}]
set_property src_info {type:XDC file:2 line:224 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  C19                       [get_ports {afe_fclk_n[1]}]
set_property src_info {type:XDC file:2 line:225 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  D18                       [get_ports {afe_dclk_p[1]}]
set_property src_info {type:XDC file:2 line:226 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  C18                       [get_ports {afe_dclk_n[1]}]
set_property src_info {type:XDC file:2 line:230 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  K22                       [get_ports {afe_p[2][0]}]
set_property src_info {type:XDC file:2 line:231 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  K23                       [get_ports {afe_n[2][0]}]
set_property src_info {type:XDC file:2 line:232 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  J24                       [get_ports {afe_p[2][1]}]
set_property src_info {type:XDC file:2 line:233 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  H24                       [get_ports {afe_n[2][1]}]
set_property src_info {type:XDC file:2 line:234 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  J25                       [get_ports {afe_p[2][2]}]
set_property src_info {type:XDC file:2 line:235 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  J26                       [get_ports {afe_n[2][2]}]
set_property src_info {type:XDC file:2 line:236 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  H26                       [get_ports {afe_p[2][3]}]
set_property src_info {type:XDC file:2 line:237 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  G26                       [get_ports {afe_n[2][3]}]
set_property src_info {type:XDC file:2 line:238 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  E25                       [get_ports {afe_p[2][4]}]
set_property src_info {type:XDC file:2 line:239 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  D25                       [get_ports {afe_n[2][4]}]
set_property src_info {type:XDC file:2 line:240 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  E26                       [get_ports {afe_p[2][5]}]
set_property src_info {type:XDC file:2 line:241 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  D26                       [get_ports {afe_n[2][5]}]
set_property src_info {type:XDC file:2 line:242 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  F23                       [get_ports {afe_p[2][6]}]
set_property src_info {type:XDC file:2 line:243 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  E23                       [get_ports {afe_n[2][6]}]
set_property src_info {type:XDC file:2 line:244 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  G22                       [get_ports {afe_p[2][7]}]
set_property src_info {type:XDC file:2 line:245 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  F22                       [get_ports {afe_n[2][7]}]
set_property src_info {type:XDC file:2 line:246 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  H21                       [get_ports {afe_fclk_p[2]}]
set_property src_info {type:XDC file:2 line:247 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  H22                       [get_ports {afe_fclk_n[2]}]
set_property src_info {type:XDC file:2 line:248 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  K21                       [get_ports {afe_dclk_p[2]}]
set_property src_info {type:XDC file:2 line:249 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  J21                       [get_ports {afe_dclk_n[2]}]
set_property src_info {type:XDC file:2 line:253 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  T24                       [get_ports {afe_p[3][0]}]
set_property src_info {type:XDC file:2 line:254 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  T25                       [get_ports {afe_n[3][0]}]
set_property src_info {type:XDC file:2 line:255 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  T23                       [get_ports {afe_p[3][1]}]
set_property src_info {type:XDC file:2 line:256 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  R23                       [get_ports {afe_n[3][1]}]
set_property src_info {type:XDC file:2 line:257 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  R25                       [get_ports {afe_p[3][2]}]
set_property src_info {type:XDC file:2 line:258 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  P25                       [get_ports {afe_n[3][2]}]
set_property src_info {type:XDC file:2 line:259 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  R26                       [get_ports {afe_p[3][3]}]
set_property src_info {type:XDC file:2 line:260 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  P26                       [get_ports {afe_n[3][3]}]
set_property src_info {type:XDC file:2 line:261 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  N26                       [get_ports {afe_p[3][4]}]
set_property src_info {type:XDC file:2 line:262 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  M26                       [get_ports {afe_n[3][4]}]
set_property src_info {type:XDC file:2 line:263 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  M24                       [get_ports {afe_p[3][5]}]
set_property src_info {type:XDC file:2 line:264 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  M25                       [get_ports {afe_n[3][5]}]
set_property src_info {type:XDC file:2 line:265 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  L24                       [get_ports {afe_p[3][6]}]
set_property src_info {type:XDC file:2 line:266 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  L25                       [get_ports {afe_n[3][6]}]
set_property src_info {type:XDC file:2 line:267 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  K25                       [get_ports {afe_p[3][7]}]
set_property src_info {type:XDC file:2 line:268 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  K26                       [get_ports {afe_n[3][7]}]
set_property src_info {type:XDC file:2 line:269 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  M21                       [get_ports {afe_fclk_p[3]}]
set_property src_info {type:XDC file:2 line:270 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  M22                       [get_ports {afe_fclk_n[3]}]
set_property src_info {type:XDC file:2 line:271 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  N21                       [get_ports {afe_dclk_p[3]}]
set_property src_info {type:XDC file:2 line:272 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  N22                       [get_ports {afe_dclk_n[3]}]
set_property src_info {type:XDC file:2 line:276 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  W20                       [get_ports {afe_p[4][0]}]
set_property src_info {type:XDC file:2 line:277 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  Y20                       [get_ports {afe_n[4][0]}]
set_property src_info {type:XDC file:2 line:278 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  Y22                       [get_ports {afe_p[4][1]}]
set_property src_info {type:XDC file:2 line:279 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  Y23                       [get_ports {afe_n[4][1]}]
set_property src_info {type:XDC file:2 line:280 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AA22                      [get_ports {afe_p[4][2]}]
set_property src_info {type:XDC file:2 line:281 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AA23                      [get_ports {afe_n[4][2]}]
set_property src_info {type:XDC file:2 line:282 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AB24                      [get_ports {afe_p[4][3]}]
set_property src_info {type:XDC file:2 line:283 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AC24                      [get_ports {afe_n[4][3]}]
set_property src_info {type:XDC file:2 line:284 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AB26                      [get_ports {afe_p[4][4]}]
set_property src_info {type:XDC file:2 line:285 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AC26                      [get_ports {afe_n[4][4]}]
set_property src_info {type:XDC file:2 line:286 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  Y25                       [get_ports {afe_p[4][5]}]
set_property src_info {type:XDC file:2 line:287 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AA25                      [get_ports {afe_n[4][5]}]
set_property src_info {type:XDC file:2 line:288 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  W25                       [get_ports {afe_p[4][6]}]
set_property src_info {type:XDC file:2 line:289 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  Y26                       [get_ports {afe_n[4][6]}]
set_property src_info {type:XDC file:2 line:290 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  V26                       [get_ports {afe_p[4][7]}]
set_property src_info {type:XDC file:2 line:291 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  W26                       [get_ports {afe_n[4][7]}]
set_property src_info {type:XDC file:2 line:292 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  U21                       [get_ports {afe_fclk_p[4]}]
set_property src_info {type:XDC file:2 line:293 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  V21                       [get_ports {afe_fclk_n[4]}]
set_property src_info {type:XDC file:2 line:294 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  U22                       [get_ports {afe_dclk_p[4]}]
set_property src_info {type:XDC file:2 line:295 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  V22                       [get_ports {afe_dclk_n[4]}]
set_property src_info {type:XDC file:2 line:303 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN K6                         [get_ports {spi_csn}]
set_property src_info {type:XDC file:2 line:304 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN G4                         [get_ports {spi_clk}]
set_property src_info {type:XDC file:2 line:305 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN F4                         [get_ports {spi_miso}]
set_property src_info {type:XDC file:2 line:306 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN G5                         [get_ports {spi_mosi}]
set_property src_info {type:XDC file:2 line:307 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN F5                         [get_ports {spi_irq}]
set_property src_info {type:XDC file:2 line:316 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC B7                                 [get_ports {daq0_tx_p}]
set_property src_info {type:XDC file:2 line:317 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC A7                                 [get_ports {daq0_tx_n}]
set_property src_info {type:XDC file:2 line:318 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC B11                                [get_ports {daq0_rx_p}]
set_property src_info {type:XDC file:2 line:319 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC A11                                [get_ports {daq0_rx_n}]
set_property src_info {type:XDC file:2 line:322 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN H6                         [get_ports {daq0_sfp_los}]
set_property src_info {type:XDC file:2 line:323 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN J6                         [get_ports {daq0_sfp_abs}]
set_property src_info {type:XDC file:2 line:324 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN G6                         [get_ports {daq0_sfp_tx_dis}]
set_property src_info {type:XDC file:2 line:325 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN H9                         [get_ports {daq0_sfp_scl}]
set_property src_info {type:XDC file:2 line:326 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN G9                         [get_ports {daq0_sfp_sda}]
set_property src_info {type:XDC file:2 line:339 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN L8                         [get_ports {daq1_sfp_los}]
set_property src_info {type:XDC file:2 line:340 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN K7                         [get_ports {daq1_sfp_abs}]
set_property src_info {type:XDC file:2 line:341 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN K8                         [get_ports {daq1_sfp_tx_dis}]
set_property src_info {type:XDC file:2 line:342 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN J4                         [get_ports {daq1_sfp_scl}]
set_property src_info {type:XDC file:2 line:343 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN H4                         [get_ports {daq1_sfp_sda}]
set_property src_info {type:XDC file:2 line:347 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC E11                                [get_ports daq_refclk_n]
set_property src_info {type:XDC file:2 line:348 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC F11                                [get_ports daq_refclk_p]
set_property src_info {type:XDC file:2 line:352 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN D3                         [get_ports {led[5]}]
set_property src_info {type:XDC file:2 line:353 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN A4                         [get_ports {led[4]}]
set_property src_info {type:XDC file:2 line:354 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN B4                         [get_ports {led[3]}]
set_property src_info {type:XDC file:2 line:355 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN A5                         [get_ports {led[2]}]
set_property src_info {type:XDC file:2 line:356 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN B5                         [get_ports {led[1]}]
set_property src_info {type:XDC file:2 line:357 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN C4                         [get_ports {led[0]}]
