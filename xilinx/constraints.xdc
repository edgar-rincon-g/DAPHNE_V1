

# SYSCLK is LVDS 100MHz comes in on bank 33, VCCO=2.5V.
# Use internal LVDS 100 ohm termination. On schematic this is FPGA_MCLK1.
#mclk
set_property PACKAGE_PIN  AA4 [get_ports {sysclk_p}]
set_property PACKAGE_PIN  AB4 [get_ports {sysclk_n}]
set_property IOSTANDARD LVDS_25 [get_ports {sysclk_p}]
set_property IOSTANDARD LVDS_25 [get_ports {sysclk_n}]
set_property DIFF_TERM TRUE [get_ports {sysclk_p}]
set_property DIFF_TERM TRUE [get_ports {sysclk_n}]

#clk625
# LVDS output clock to AFEs (on schematic 62.5MHz_FPGA_)

set_property PACKAGE_PIN  AF5   [get_ports {afe_clk_p}]
set_property PACKAGE_PIN  AF4   [get_ports {afe_clk_n}]
set_property IOSTANDARD LVDS_25 [get_ports {afe_clk_?}]

# external trigger is from rear panel SMB connector (on schematic net is GPI)
# I/O bank 35, VCCO=3.3V. NOTE: this input is INVERTED by the OPTOCOUPER!

set_property PACKAGE_PIN D5 [get_ports {trig_ext}]
set_property IOSTANDARD LVTTL [get_ports {trig_ext}]

### Timing interface signals (LVDS)

set_property PACKAGE_PIN V6 [get_ports {cdr_sfp_tx_p}]
set_property PACKAGE_PIN W6 [get_ports {cdr_sfp_tx_n}]
set_property PACKAGE_PIN AB2 [get_ports {adn2814_clk_p}]
set_property PACKAGE_PIN AC2 [get_ports {adn2814_clk_n}]
set_property PACKAGE_PIN AC3 [get_ports {adn2814_data_p}]
set_property PACKAGE_PIN AD3 [get_ports {adn2814_data_n}]

set_property IOSTANDARD LVDS_25 [get_ports {cdr_sfp_tx_?}]
set_property IOSTANDARD LVDS_25 [get_ports {adn2814_clk_?}]
set_property IOSTANDARD LVDS_25 [get_ports {adn2814_data_?}]
set_property DIFF_TERM TRUE [get_ports {cdr_sfp_tx_?}]
set_property DIFF_TERM TRUE [get_ports {adn2814_clk_?}]
set_property DIFF_TERM TRUE [get_ports {adn2814_data_?}]

### Timing interface signals (single ended LVTTL)

set_property PACKAGE_PIN D6 [get_ports {adn2814_los}]
set_property PACKAGE_PIN H8 [get_ports {adn2814_lol}]
set_property IOSTANDARD LVTTL [get_ports {adn2814_lo?}]

set_property PACKAGE_PIN G7 [get_ports {cdr_sfp_los}]
set_property PACKAGE_PIN F8 [get_ports {cdr_sfp_abs}]
set_property PACKAGE_PIN H7 [get_ports {cdr_sfp_tx_dis}]
set_property IOSTANDARD LVTTL [get_ports {cdr_sfp_los}]
set_property IOSTANDARD LVTTL [get_ports {cdr_sfp_abs}]
set_property IOSTANDARD LVTTL [get_ports {cdr_sfp_tx_dis}]

# reset pin is from uC, I/O bank 35, VCCO=3.3V note ACTIVE LOW on DAPHNE

set_property PACKAGE_PIN J8 [get_ports {reset_n}]
set_property IOSTANDARD LVTTL [get_ports {reset_n}]


# Rename AFE LVDS buses so that AFE channels will be 
# consistant with the DAPHNE2 front panel, which should 
# read 0-4 (Left to Right)

# LVDS inputs from AFE 0 (Bank 12) on schematic 0, front panel 0

set_property PACKAGE_PIN  Y15  [get_ports {afe_p[0][0]}]
set_property PACKAGE_PIN  AA15 [get_ports {afe_n[0][0]}]
set_property PACKAGE_PIN  AB16 [get_ports {afe_p[0][1]}]
set_property PACKAGE_PIN  AC16 [get_ports {afe_n[0][1]}]
set_property PACKAGE_PIN  AA17 [get_ports {afe_p[0][2]}]
set_property PACKAGE_PIN  AB17 [get_ports {afe_n[0][2]}]
set_property PACKAGE_PIN  AE18 [get_ports {afe_p[0][3]}]
set_property PACKAGE_PIN  AF18 [get_ports {afe_n[0][3]}]
set_property PACKAGE_PIN  AC18 [get_ports {afe_p[0][4]}]
set_property PACKAGE_PIN  AD18 [get_ports {afe_n[0][4]}]
set_property PACKAGE_PIN  AF19 [get_ports {afe_p[0][5]}]
set_property PACKAGE_PIN  AF20 [get_ports {afe_n[0][5]}]
set_property PACKAGE_PIN  AD20 [get_ports {afe_p[0][6]}]
set_property PACKAGE_PIN  AE20 [get_ports {afe_n[0][6]}]
set_property PACKAGE_PIN  AD21 [get_ports {afe_p[0][7]}]
set_property PACKAGE_PIN  AE21 [get_ports {afe_n[0][7]}]
set_property PACKAGE_PIN  AA20 [get_ports {afe_p[0][8]}] #Frame clock
set_property PACKAGE_PIN  AB20 [get_ports {afe_n[0][8]}] #Frame clock

# LVDS inputs from AFE 1 (Bank 16) on schematic 1, front panel 4

set_property PACKAGE_PIN  B25 [get_ports {afe_p[4][0]}]
set_property PACKAGE_PIN  A25 [get_ports {afe_n[4][0]}]
set_property PACKAGE_PIN  A23 [get_ports {afe_p[4][1]}]
set_property PACKAGE_PIN  A24 [get_ports {afe_n[4][1]}]
set_property PACKAGE_PIN  E21 [get_ports {afe_p[4][2]}]
set_property PACKAGE_PIN  D21 [get_ports {afe_n[4][2]}]
set_property PACKAGE_PIN  C21 [get_ports {afe_p[4][3]}]
set_property PACKAGE_PIN  B21 [get_ports {afe_n[4][3]}]
set_property PACKAGE_PIN  B19 [get_ports {afe_p[4][4]}]
set_property PACKAGE_PIN  A19 [get_ports {afe_n[4][4]}]
set_property PACKAGE_PIN  A17 [get_ports {afe_p[4][5]}]
set_property PACKAGE_PIN  A18 [get_ports {afe_n[4][5]}]
set_property PACKAGE_PIN  C17 [get_ports {afe_p[4][6]}]
set_property PACKAGE_PIN  B17 [get_ports {afe_n[4][6]}]
set_property PACKAGE_PIN  E16 [get_ports {afe_p[4][7]}]
set_property PACKAGE_PIN  D16 [get_ports {afe_n[4][7]}]
set_property PACKAGE_PIN  D19 [get_ports {afe_p[4][8]}]
set_property PACKAGE_PIN  C19 [get_ports {afe_n[4][8]}]

# LVDS inputs from AFE 2 (Bank 15) on schematic 2, front panel 3

set_property PACKAGE_PIN  K22 [get_ports {afe_p[3][0]}]
set_property PACKAGE_PIN  K23 [get_ports {afe_n[3][0]}]
set_property PACKAGE_PIN  J24 [get_ports {afe_p[3][1]}]
set_property PACKAGE_PIN  H24 [get_ports {afe_n[3][1]}]
set_property PACKAGE_PIN  J25 [get_ports {afe_p[3][2]}]
set_property PACKAGE_PIN  J26 [get_ports {afe_n[3][2]}]
set_property PACKAGE_PIN  H26 [get_ports {afe_p[3][3]}]
set_property PACKAGE_PIN  G26 [get_ports {afe_n[3][3]}]
set_property PACKAGE_PIN  E25 [get_ports {afe_p[3][4]}]
set_property PACKAGE_PIN  D25 [get_ports {afe_n[3][4]}]
set_property PACKAGE_PIN  E26 [get_ports {afe_p[3][5]}]
set_property PACKAGE_PIN  D26 [get_ports {afe_n[3][5]}]
set_property PACKAGE_PIN  F23 [get_ports {afe_p[3][6]}]
set_property PACKAGE_PIN  E23 [get_ports {afe_n[3][6]}]
set_property PACKAGE_PIN  G22 [get_ports {afe_p[3][7]}]
set_property PACKAGE_PIN  F22 [get_ports {afe_n[3][7]}]
set_property PACKAGE_PIN  H21 [get_ports {afe_p[3][8]}]
set_property PACKAGE_PIN  H22 [get_ports {afe_n[3][8]}]

# LVDS inputs from AFE 3 (Bank 14) on schematic 3, front panel 2

set_property PACKAGE_PIN  T24 [get_ports {afe_p[2][0]}]
set_property PACKAGE_PIN  T25 [get_ports {afe_n[2][0]}]
set_property PACKAGE_PIN  T23 [get_ports {afe_p[2][1]}]
set_property PACKAGE_PIN  R23 [get_ports {afe_n[2][1]}]
set_property PACKAGE_PIN  R25 [get_ports {afe_p[2][2]}]
set_property PACKAGE_PIN  P25 [get_ports {afe_n[2][2]}]
set_property PACKAGE_PIN  R26 [get_ports {afe_p[2][3]}]
set_property PACKAGE_PIN  P26 [get_ports {afe_n[2][3]}]
set_property PACKAGE_PIN  N26 [get_ports {afe_p[2][4]}]
set_property PACKAGE_PIN  M26 [get_ports {afe_n[2][4]}]
set_property PACKAGE_PIN  M24 [get_ports {afe_p[2][5]}]
set_property PACKAGE_PIN  M25 [get_ports {afe_n[2][5]}]
set_property PACKAGE_PIN  L24 [get_ports {afe_p[2][6]}]
set_property PACKAGE_PIN  L25 [get_ports {afe_n[2][6]}]
set_property PACKAGE_PIN  K25 [get_ports {afe_p[2][7]}]
set_property PACKAGE_PIN  K26 [get_ports {afe_n[2][7]}]
set_property PACKAGE_PIN  M21 [get_ports {afe_p[2][8]}]
set_property PACKAGE_PIN  M22 [get_ports {afe_n[2][8]}]

# LVDS inputs from AFE 4 (Bank 13) on schematic 4, front panel 1

set_property PACKAGE_PIN  W20  [get_ports {afe_p[1][0]}]
set_property PACKAGE_PIN  Y20  [get_ports {afe_n[1][0]}]
set_property PACKAGE_PIN  Y22  [get_ports {afe_p[1][1]}]
set_property PACKAGE_PIN  Y23  [get_ports {afe_n[1][1]}]
set_property PACKAGE_PIN  AA22 [get_ports {afe_p[1][2]}]
set_property PACKAGE_PIN  AA23 [get_ports {afe_n[1][2]}]
set_property PACKAGE_PIN  AB24 [get_ports {afe_p[1][3]}]
set_property PACKAGE_PIN  AC24 [get_ports {afe_n[1][3]}]
set_property PACKAGE_PIN  AB26 [get_ports {afe_p[1][4]}]
set_property PACKAGE_PIN  AC26 [get_ports {afe_n[1][4]}]
set_property PACKAGE_PIN  Y25  [get_ports {afe_p[1][5]}]
set_property PACKAGE_PIN  AA25 [get_ports {afe_n[1][5]}]
set_property PACKAGE_PIN  W25  [get_ports {afe_p[1][6]}]
set_property PACKAGE_PIN  Y26  [get_ports {afe_n[1][6]}]
set_property PACKAGE_PIN  V26  [get_ports {afe_p[1][7]}]
set_property PACKAGE_PIN  W26  [get_ports {afe_n[1][7]}]
set_property PACKAGE_PIN  U21  [get_ports {afe_p[1][8]}]
set_property PACKAGE_PIN  V21  [get_ports {afe_n[1][8]}]

set_property IOSTANDARD LVDS_25 [get_ports {afe_?[?][?]}]
set_property DIFF_TERM TRUE [get_ports {afe_?[?][?]}]

### Simple SPI slave interface used for slow controls communication with the uC

set_property PACKAGE_PIN K6 [get_ports {spi_csn}]
set_property PACKAGE_PIN G4 [get_ports {spi_clk}]
set_property PACKAGE_PIN F4 [get_ports {spi_miso}]
set_property PACKAGE_PIN G5 [get_ports {spi_mosi}]
set_property PACKAGE_PIN F5 [get_ports {spi_irq}]
set_property IOSTANDARD LVTTL [get_ports {spi_*}]


### DAQ link 1, channel 1 Quad 213, X0Y5

#set_property LOC GTPE2_CHANNEL_X0Y5 [get_cells core_inst/daq_quad_inst/U0/daphne2_daq_txonly_init_i/daphne2_daq_txonly_i/gt1_daphne2_daq_txonly_i/gtpe2_i]

set_property PACKAGE_PIN H6[get_ports {daq1_sfp_los}]
set_property PACKAGE_PIN J6 [get_ports {daq1_sfp_abs}]
set_property PACKAGE_PIN G6 [get_ports {daq1_sfp_tx_dis}]
set_property PACKAGE_PIN H9 [get_ports {daq1_sfp_scl}]
set_property PACKAGE_PIN G9 [get_ports {daq1_sfp_sda}]
set_property IOSTANDARD LVTTL [get_ports {daq1_sfp_*}]

### DAQ link 0, channel 0 Quad 213, X0Y4

#set_property LOC GTPE2_CHANNEL_X0Y4 [get_cells core_inst/daq_quad_inst/U0/daphne2_daq_txonly_init_i/daphne2_daq_txonly_i/gt0_daphne2_daq_txonly_i/gtpe2_i]

set_property PACKAGE_PIN L8[get_ports {daq0_sfp_los}]
set_property PACKAGE_PIN K7[get_ports {daq0_sfp_abs}]
set_property PACKAGE_PIN K8 [get_ports {daq0_sfp_tx_dis}]
set_property PACKAGE_PIN J4 [get_ports {daq0_sfp_scl}]
set_property PACKAGE_PIN H4 [get_ports {daq0_sfp_sda}]
set_property IOSTANDARD LVTTL [get_ports {daq0_sfp_*}]

# 4 DAQ outputs are in QUAD216, uses refclk0 on this quad...

set_property LOC E11 [get_ports daq_refclk_n] 
set_property LOC F11 [get_ports daq_refclk_p]

# #############################################################################
# General bitstream constraints...

set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]