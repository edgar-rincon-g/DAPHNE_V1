# DAPHNE V1 constraints
# Edgar Rincon Gil <edgar.rincon.g@gmail.com>

create_clock -name adn2814_clk  -period 16.000  [get_ports adn2814_data_p]                      # Good
create_clock -name sysclk       -period 10.000  [get_ports sysclk_p]                            # Good
#create_clock -name gbe_refclk   -period 8.000   [get_ports gbe_refclk_p]                       # Supposed unused
create_clock -name daq_refclk   -period 8.317   [get_ports daq_refclk_p]                        # Good

# rename the auto-generated clocks...

create_generated_clock -name local_clk62p5  [get_pins endpoint_inst/mmcm0_inst/CLKOUT0]
create_generated_clock -name sclk200        [get_pins endpoint_inst/mmcm0_inst/CLKOUT1]
create_generated_clock -name sclk100        [get_pins endpoint_inst/mmcm0_inst/CLKOUT2]
create_generated_clock -name mmcm0_clkfbout [get_pins endpoint_inst/mmcm0_inst/CLKFBOUT]

create_generated_clock -name ep_clk62p5      [get_pins endpoint_inst/pdts_endpoint_inst/pdts_endpoint_inst/rxcdr/mmcm/CLKOUT0]
create_generated_clock -name ep_clk4x        [get_pins endpoint_inst/pdts_endpoint_inst/pdts_endpoint_inst/rxcdr/mmcm/CLKOUT1]
create_generated_clock -name ep_clk2x        [get_pins endpoint_inst/pdts_endpoint_inst/pdts_endpoint_inst/rxcdr/mmcm/CLKOUT1]
create_generated_clock -name ep_clkfbout     [get_pins endpoint_inst/pdts_endpoint_inst/pdts_endpoint_inst/rxcdr/mmcm/CLKFBOUT] 

create_generated_clock -name oeiclk [get_pins phy_inst/U0/core_clocking_i/mmcm_adv_inst/CLKOUT0] 
create_generated_clock -name oeihclk [get_pins phy_inst/U0/core_clocking_i/mmcm_adv_inst/CLKOUT1]
create_generated_clock -name oei_clkfbout [get_pins phy_inst/U0/core_clocking_i/mmcm_adv_inst/CLKFBOUT]

create_generated_clock -name daqclk0      [get_pins core_inst/core_mgt4_inst/daq_quad_inst/U0/gt_usrclk_source/txoutclk_mmcm0_i/mmcm_adv_inst/CLKOUT0]
create_generated_clock -name daqclk1      [get_pins core_inst/core_mgt4_inst/daq_quad_inst/U0/gt_usrclk_source/txoutclk_mmcm0_i/mmcm_adv_inst/CLKOUT1]
create_generated_clock -name daq_clkfbout [get_pins core_inst/core_mgt4_inst/daq_quad_inst/U0/gt_usrclk_source/txoutclk_mmcm0_i/mmcm_adv_inst/CLKFBOUT]

create_generated_clock -name fclk0           -master_clock ep_clk62p5 [get_pins endpoint_inst/mmcm1_inst/CLKOUT0]
create_generated_clock -name mclk0           -master_clock ep_clk62p5 [get_pins endpoint_inst/mmcm1_inst/CLKOUT1]
create_generated_clock -name mmcm1_clkfbout0 -master_clock ep_clk62p5 [get_pins endpoint_inst/mmcm1_inst/CLKFBOUT]
create_generated_clock -name fclk1           -master_clock local_clk62p5 [get_pins endpoint_inst/mmcm1_inst/CLKOUT0]
create_generated_clock -name mclk1           -master_clock local_clk62p5 [get_pins endpoint_inst/mmcm1_inst/CLKOUT1]
create_generated_clock -name mmcm1_clkfbout1 -master_clock local_clk62p5 [get_pins endpoint_inst/mmcm1_inst/CLKFBOUT]

set_clock_groups -name async_groups -asynchronous \
-group {sysclk sclk100 mmcm0_clkfbout} -group {sclk200} -group {local_clk62p5} \
-group {mclk0 fclk0 mmcm1_clkfbout0} -group {mclk1 fclk1 mmcm1_clkfbout1} \
-group {oeiclk oeihclk oei_clkfbout} -group {daqclk0 daqclk1 daq_clkfbout} \
-group {ep_clk62p5 ep_clk4x ep_clk2x ep_clkfbout} -group {adn2814_clk} 

# tell vivado about places where signals cross clock domains so timing can be ignored here...

#set_false_path -from [get_pins fe_inst/gen_afe[*].afe_inst/auto_fsm_inst/done_reg_reg/C]      
#set_false_path -from [get_pins fe_inst/gen_afe[*].afe_inst/auto_fsm_inst/warn_reg_reg/C]      
#set_false_path -from [get_pins fe_inst/gen_afe[*].afe_inst/auto_fsm_inst/errcnt_reg_reg[*]/C] 
set_false_path -from [get_pins trig_gbe*_reg_reg/C] -to [get_pins trig_sync_reg/D]
set_false_path -to [get_pins led0_reg_reg[*]/C]
set_false_path -from [get_pins test_reg_reg[*]/C]
set_false_path -from [get_ports gbe_sfp_??s]
set_false_path -from [get_ports cdr_sfp_??s]
set_false_path -from [get_ports daq?_sfp_??s]
set_false_path -from [get_pins st_enable_reg_reg[*]/C]
set_false_path -from [get_pins outmode_reg_reg[*]/C]
set_false_path -from [get_pins threshold_reg_reg[*]/C]
set_false_path -from [get_pins daq_out_param_reg_reg[*]/C]
set_false_path -from [get_pins core_inst/input_inst/*select_reg_reg*/C]

set_property CLOCK_DEDICATED_ROUTE BACKBONE [get_nets endpoint_inst/sysclk_ibuf]

# SYSCLK is LVDS 100MHz comes in on bank 33, VCCO=2.5V.
# Use internal LVDS 100 ohm termination. On schematic this is FPGA_MCLK1.
#mclk
set_property PACKAGE_PIN  AA4 [get_ports {sysclk_p}]            # Good FPGA_MCLK1_P
set_property PACKAGE_PIN  AB4 [get_ports {sysclk_n}]            # Good FPGA_MCLK1_N
set_property IOSTANDARD LVDS_25 [get_ports {sysclk_p}]          # Good
set_property IOSTANDARD LVDS_25 [get_ports {sysclk_n}]          # Good
set_property DIFF_TERM TRUE [get_ports {sysclk_p}]              # Good
set_property DIFF_TERM TRUE [get_ports {sysclk_n}]              # Good

#clk625
# LVDS output clock to AFEs (on schematic 62.5MHz_FPGA_)

set_property PACKAGE_PIN  AF5   [get_ports {afe_clk_p}]         # Good
set_property PACKAGE_PIN  AF4   [get_ports {afe_clk_n}]         # Good
set_property IOSTANDARD LVDS_25 [get_ports {afe_clk_?}]         # Good

# external trigger is from rear panel SMB connector (on schematic net is GPI)
# I/O bank 35, VCCO=3.3V. NOTE: this input is INVERTED by the OPTOCOUPER!

####### External trigger not located on this pin
#set_property PACKAGE_PIN D5 [get_ports {trig_ext}]
#set_property IOSTANDARD LVTTL [get_ports {trig_ext}]
set_property PACKAGE_PIN D5 [get_ports {gpi}]                   # Good
set_property PACKAGE_PIN D4 [get_ports {gpo}]                   # Good
set_property IOSTANDARD LVTTL [get_ports {gp?}]                 # Good

### Timing interface signals (LVDS)

set_property PACKAGE_PIN V6 [get_ports {cdr_sfp_tx_p}]          # Good
set_property PACKAGE_PIN W6 [get_ports {cdr_sfp_tx_n}]          # Good
set_property PACKAGE_PIN AB2 [get_ports {cdr_clk_p}]            # Was adn2814  # Good
set_property PACKAGE_PIN AC2 [get_ports {cdr_clk_n}]            # Was adn2814  # Good
set_property PACKAGE_PIN AC3 [get_ports {cdr_data_p}]           # Was adn2814  # Good
set_property PACKAGE_PIN AD3 [get_ports {cdr_data_n}]           # Was adn2814  # Good

set_property IOSTANDARD LVDS_25 [get_ports {cdr_sfp_tx_?}]      # Good
set_property IOSTANDARD LVDS_25 [get_ports {cdr_clk_?}]         # Was adn2814  # Good
set_property IOSTANDARD LVDS_25 [get_ports {cdr_data_?}]        # Was adn2814  # Good
set_property DIFF_TERM TRUE [get_ports {cdr_sfp_tx_?}]          # Good
set_property DIFF_TERM TRUE [get_ports {cdr_clk_?}]             # Was adn2814  # Good
set_property DIFF_TERM TRUE [get_ports {cdr_data_?}]            # Was adn2814  # Good

### Timing interface signals (single ended LVTTL)

set_property PACKAGE_PIN D6 [get_ports {cdr_los}]       # Was adn2814_los # Good
set_property PACKAGE_PIN H8 [get_ports {cdr_lol}]       # Was adn2814_los # Good
set_property IOSTANDARD LVTTL [get_ports {cdr_lo?}]     # Was adn2814_los # Good

set_property PACKAGE_PIN G7 [get_ports {cdr_sfp_los}]       # Good
set_property PACKAGE_PIN F8 [get_ports {cdr_sfp_abs}]       # Good
set_property PACKAGE_PIN H7 [get_ports {cdr_sfp_tx_dis}]    # Good
set_property IOSTANDARD LVTTL [get_ports {cdr_sfp_los}]     # Good
set_property IOSTANDARD LVTTL [get_ports {cdr_sfp_abs}]     # Good
set_property IOSTANDARD LVTTL [get_ports {cdr_sfp_tx_dis}]  # Good

# reset pin is from uC, I/O bank 35, VCCO=3.3V note ACTIVE LOW on DAPHNE

set_property PACKAGE_PIN J8 [get_ports {reset_n}]           # Good
set_property IOSTANDARD LVTTL [get_ports {reset_n}]         # Good


# Rename AFE LVDS buses so that AFE channels will be 
# consistant with the DAPHNE2 front panel, which should 
# read 0-4 (Left to Right)

# LVDS inputs from AFE 0 (Bank 12) on schematic 0, front panel 0

set_property PACKAGE_PIN  Y15  [get_ports {afe_p[0][0]}]        # Good
set_property PACKAGE_PIN  AA15 [get_ports {afe_n[0][0]}]        # Good
set_property PACKAGE_PIN  AB16 [get_ports {afe_p[0][1]}]        # Good
set_property PACKAGE_PIN  AC16 [get_ports {afe_n[0][1]}]        # Good
set_property PACKAGE_PIN  AA17 [get_ports {afe_p[0][2]}]        # Good
set_property PACKAGE_PIN  AB17 [get_ports {afe_n[0][2]}]        # Good
set_property PACKAGE_PIN  AE18 [get_ports {afe_p[0][3]}]        # Good
set_property PACKAGE_PIN  AF18 [get_ports {afe_n[0][3]}]        # Good
set_property PACKAGE_PIN  AC18 [get_ports {afe_p[0][4]}]        # Good
set_property PACKAGE_PIN  AD18 [get_ports {afe_n[0][4]}]        # Good
set_property PACKAGE_PIN  AF19 [get_ports {afe_p[0][5]}]        # Good
set_property PACKAGE_PIN  AF20 [get_ports {afe_n[0][5]}]        # Good
set_property PACKAGE_PIN  AD20 [get_ports {afe_p[0][6]}]        # Good
set_property PACKAGE_PIN  AE20 [get_ports {afe_n[0][6]}]        # Good
set_property PACKAGE_PIN  AD21 [get_ports {afe_p[0][7]}]        # Good
set_property PACKAGE_PIN  AE21 [get_ports {afe_n[0][7]}]        # Good
set_property PACKAGE_PIN  AA20 [get_ports {afe_fclk_p[0]}]      # Frame clock P     # Good
set_property PACKAGE_PIN  AB20 [get_ports {afe_fclk_n[0]}]      # Frame clock N     # Good
set_property PACKAGE_PIN  AA19 [get_ports {afe_dclk_p[0]}]      # Digital clock P   # Good
set_property PACKAGE_PIN  AB19 [get_ports {afe_dclk_n[0]}]      # Digital clock N   # Good

# LVDS inputs from AFE 1 (Bank 16) on schematic 1, front panel 4

set_property PACKAGE_PIN  B25 [get_ports {afe_p[1][0]}]         # Good
set_property PACKAGE_PIN  A25 [get_ports {afe_n[1][0]}]         # Good
set_property PACKAGE_PIN  A23 [get_ports {afe_p[1][1]}]         # Good
set_property PACKAGE_PIN  A24 [get_ports {afe_n[1][1]}]         # Good
set_property PACKAGE_PIN  E21 [get_ports {afe_p[1][2]}]         # Good
set_property PACKAGE_PIN  D21 [get_ports {afe_n[1][2]}]         # Good
set_property PACKAGE_PIN  C21 [get_ports {afe_p[1][3]}]         # Good
set_property PACKAGE_PIN  B21 [get_ports {afe_n[1][3]}]         # Good
set_property PACKAGE_PIN  B19 [get_ports {afe_p[1][4]}]         # Good
set_property PACKAGE_PIN  A19 [get_ports {afe_n[1][4]}]         # Good
set_property PACKAGE_PIN  A17 [get_ports {afe_p[1][5]}]         # Good
set_property PACKAGE_PIN  A18 [get_ports {afe_n[1][5]}]         # Good
set_property PACKAGE_PIN  C17 [get_ports {afe_p[1][6]}]         # Good
set_property PACKAGE_PIN  B17 [get_ports {afe_n[1][6]}]         # Good
set_property PACKAGE_PIN  E16 [get_ports {afe_p[1][7]}]         # Good
set_property PACKAGE_PIN  D16 [get_ports {afe_n[1][7]}]         # Good
set_property PACKAGE_PIN  D19 [get_ports {afe_fclk_p[1]}]       # Frame clock P     # Good
set_property PACKAGE_PIN  C19 [get_ports {afe_fclk_n[1]}]       # Frame clock N     # Good
set_property PACKAGE_PIN  D18 [get_ports {afe_dclk_p[1]}]       # Digital clock P   # Good
set_property PACKAGE_PIN  C18 [get_ports {afe_dclk_n[1]}]       # Digital clock N   # Good

# LVDS inputs from AFE 2 (Bank 15) on schematic 2, front panel 3

set_property PACKAGE_PIN  K22 [get_ports {afe_p[2][0]}]         # Good
set_property PACKAGE_PIN  K23 [get_ports {afe_n[2][0]}]         # Good
set_property PACKAGE_PIN  J24 [get_ports {afe_p[2][1]}]         # Good
set_property PACKAGE_PIN  H24 [get_ports {afe_n[2][1]}]         # Good
set_property PACKAGE_PIN  J25 [get_ports {afe_p[2][2]}]         # Good
set_property PACKAGE_PIN  J26 [get_ports {afe_n[2][2]}]         # Good
set_property PACKAGE_PIN  H26 [get_ports {afe_p[2][3]}]         # Good
set_property PACKAGE_PIN  G26 [get_ports {afe_n[2][3]}]         # Good
set_property PACKAGE_PIN  E25 [get_ports {afe_p[2][4]}]         # Good
set_property PACKAGE_PIN  D25 [get_ports {afe_n[2][4]}]         # Good
set_property PACKAGE_PIN  E26 [get_ports {afe_p[2][5]}]         # Good
set_property PACKAGE_PIN  D26 [get_ports {afe_n[2][5]}]         # Good
set_property PACKAGE_PIN  F23 [get_ports {afe_p[2][6]}]         # Good
set_property PACKAGE_PIN  E23 [get_ports {afe_n[2][6]}]         # Good
set_property PACKAGE_PIN  G22 [get_ports {afe_p[2][7]}]         # Good
set_property PACKAGE_PIN  F22 [get_ports {afe_n[2][7]}]         # Good
set_property PACKAGE_PIN  H21 [get_ports {afe_fclk_p[2]}]       # Frame clock P     # Good
set_property PACKAGE_PIN  H22 [get_ports {afe_fclk_n[2]}]       # Frame clock N     # Good
set_property PACKAGE_PIN  K21 [get_ports {afe_dclk_p[2]}]       # Digital clock P   # Good
set_property PACKAGE_PIN  J21 [get_ports {afe_dclk_n[2]}]       # Digital clock N   # Good

# LVDS inputs from AFE 3 (Bank 14) on schematic 3, front panel 2

set_property PACKAGE_PIN  T24 [get_ports {afe_p[3][0]}]         # Good
set_property PACKAGE_PIN  T25 [get_ports {afe_n[3][0]}]         # Good
set_property PACKAGE_PIN  T23 [get_ports {afe_p[3][1]}]         # Good
set_property PACKAGE_PIN  R23 [get_ports {afe_n[3][1]}]         # Good
set_property PACKAGE_PIN  R25 [get_ports {afe_p[3][2]}]         # Good
set_property PACKAGE_PIN  P25 [get_ports {afe_n[3][2]}]         # Good
set_property PACKAGE_PIN  R26 [get_ports {afe_p[3][3]}]         # Good
set_property PACKAGE_PIN  P26 [get_ports {afe_n[3][3]}]         # Good
set_property PACKAGE_PIN  N26 [get_ports {afe_p[3][4]}]         # Good
set_property PACKAGE_PIN  M26 [get_ports {afe_n[3][4]}]         # Good
set_property PACKAGE_PIN  M24 [get_ports {afe_p[3][5]}]         # Good
set_property PACKAGE_PIN  M25 [get_ports {afe_n[3][5]}]         # Good
set_property PACKAGE_PIN  L24 [get_ports {afe_p[3][6]}]         # Good
set_property PACKAGE_PIN  L25 [get_ports {afe_n[3][6]}]         # Good
set_property PACKAGE_PIN  K25 [get_ports {afe_p[3][7]}]         # Good
set_property PACKAGE_PIN  K26 [get_ports {afe_n[3][7]}]         # Good
set_property PACKAGE_PIN  M21  [get_ports {afe_fclk_p[3]}]      # Frame clock P     # Good
set_property PACKAGE_PIN  M22  [get_ports {afe_fclk_n[3]}]      # Frame clock N     # Good
set_property PACKAGE_PIN  N21  [get_ports {afe_dclk_p[3]}]      # Digital clock P   # Good
set_property PACKAGE_PIN  N22  [get_ports {afe_dclk_n[3]}]      # Digital clock N   # Good


# LVDS inputs from AFE 4 (Bank 13) on schematic 4, front panel 1

set_property PACKAGE_PIN  W20  [get_ports {afe_p[4][0]}]        # Good
set_property PACKAGE_PIN  Y20  [get_ports {afe_n[4][0]}]        # Good
set_property PACKAGE_PIN  Y22  [get_ports {afe_p[4][1]}]        # Good
set_property PACKAGE_PIN  Y23  [get_ports {afe_n[4][1]}]        # Good
set_property PACKAGE_PIN  AA22 [get_ports {afe_p[4][2]}]        # Good
set_property PACKAGE_PIN  AA23 [get_ports {afe_n[4][2]}]        # Good
set_property PACKAGE_PIN  AB24 [get_ports {afe_p[4][3]}]        # Good
set_property PACKAGE_PIN  AC24 [get_ports {afe_n[4][3]}]        # Good
set_property PACKAGE_PIN  AB26 [get_ports {afe_p[4][4]}]        # Good
set_property PACKAGE_PIN  AC26 [get_ports {afe_n[4][4]}]        # Good
set_property PACKAGE_PIN  Y25  [get_ports {afe_p[4][5]}]        # Good
set_property PACKAGE_PIN  AA25 [get_ports {afe_n[4][5]}]        # Good
set_property PACKAGE_PIN  W25  [get_ports {afe_p[4][6]}]        # Good
set_property PACKAGE_PIN  Y26  [get_ports {afe_n[4][6]}]        # Good
set_property PACKAGE_PIN  V26  [get_ports {afe_p[4][7]}]        # Good
set_property PACKAGE_PIN  W26  [get_ports {afe_n[4][7]}]        # Good
set_property PACKAGE_PIN  U21  [get_ports {afe_fclk_p[4]}]      # Frame clock P     # Good
set_property PACKAGE_PIN  V21  [get_ports {afe_fclk_n[4]}]      # Frame clock N     # Good
set_property PACKAGE_PIN  U22  [get_ports {afe_dclk_p[4]}]      # Digital clock P   # Good
set_property PACKAGE_PIN  V22  [get_ports {afe_dclk_n[4]}]      # Digital clock N   # Good

set_property IOSTANDARD LVDS_25 [get_ports {afe_?[?][?]}]       # Good
set_property IOSTANDARD LVDS_25 [get_ports {afe_?clk_?[?]}]     # Good
set_property DIFF_TERM TRUE [get_ports {afe_?[?][?]}]           # Good
set_property DIFF_TERM TRUE [get_ports {afe_?clk_?[?]}]         # Good

### Simple SPI slave interface used for slow controls communication with the uC

set_property PACKAGE_PIN K6 [get_ports {spi_csn}]           # Good
set_property PACKAGE_PIN G4 [get_ports {spi_clk}]           # Good
set_property PACKAGE_PIN F4 [get_ports {spi_miso}]          # Good
set_property PACKAGE_PIN G5 [get_ports {spi_mosi}]          # Good
set_property PACKAGE_PIN F5 [get_ports {spi_irq}]           # Good
set_property IOSTANDARD LVTTL [get_ports {spi_*}]           # Good


### DAQ link 1, channel 1 Quad 213, X0Y5

set_property LOC GTPE2_CHANNEL_X0Y5 [get_cells core_inst/daq_quad_inst/U0/daphne2_daq_txonly_init_i/daphne2_daq_txonly_i/gt1_daphne2_daq_txonly_i/gtpe2_i] # Review this

set_property PACKAGE_PIN H6[get_ports {daq0_sfp_los}]       # Was daq1    # Good
set_property PACKAGE_PIN J6 [get_ports {daq0_sfp_abs}]      # Was daq1    # Good
set_property PACKAGE_PIN G6 [get_ports {daq0_sfp_tx_dis}]   # Was daq1    # Good
set_property PACKAGE_PIN H9 [get_ports {daq0_sfp_scl}]      # Was daq1    # Good
set_property PACKAGE_PIN G9 [get_ports {daq0_sfp_sda}]      # Was daq1    # Good
set_property IOSTANDARD LVTTL [get_ports {daq0_sfp_*}]      # Was daq1    # Good

### DAQ link 0, channel 0 Quad 213, X0Y4

set_property LOC GTPE2_CHANNEL_X0Y4 [get_cells core_inst/daq_quad_inst/U0/daphne2_daq_txonly_init_i/daphne2_daq_txonly_i/gt0_daphne2_daq_txonly_i/gtpe2_i] # Review this

set_property PACKAGE_PIN L8[get_ports {daq1_sfp_los}]       # Was daq0    # Good
set_property PACKAGE_PIN K7[get_ports {daq1_sfp_abs}]       # Was daq0    # Good
set_property PACKAGE_PIN K8 [get_ports {daq1_sfp_tx_dis}]   # Was daq0    # Good
set_property PACKAGE_PIN J4 [get_ports {daq1_sfp_scl}]      # Was daq0    # Good
set_property PACKAGE_PIN H4 [get_ports {daq1_sfp_sda}]      # Was daq0    # Good
set_property IOSTANDARD LVTTL [get_ports {daq1_sfp_*}]      # Was daq0    # Good

# 4 DAQ outputs are in QUAD216, uses refclk0 on this quad...

set_property LOC E11 [get_ports daq_refclk_n]               # Good
set_property LOC F11 [get_ports daq_refclk_p]               # Good


# All 6 user LEDS are in bank 35, VCCO=3.3V, all LEDs Active High

# Assign LED7 to debug header pin 1
# set_property PACKAGE_PIN C3 [get_ports {led[7]}]

# Assign LED6 to debug header pin 2
# set_property PACKAGE_PIN F3 [get_ports {led[6]}]

# LED[5..0] map to user StatLED[5..0] on DAPHNE
set_property PACKAGE_PIN D3 [get_ports {led[5]}]        # Good
set_property PACKAGE_PIN A4 [get_ports {led[4]}]        # Good
set_property PACKAGE_PIN B4 [get_ports {led[3]}]        # Good
set_property PACKAGE_PIN A5 [get_ports {led[2]}]        # Good
set_property PACKAGE_PIN B5 [get_ports {led[1]}]        # Good
set_property PACKAGE_PIN C4 [get_ports {led[0]}]        # Good
set_property IOSTANDARD LVTTL [get_ports {led[?]}]      # Good


# #############################################################################
# General bitstream constraints...

set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]