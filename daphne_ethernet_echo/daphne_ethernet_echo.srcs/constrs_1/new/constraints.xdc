# DAPHNE V1 echo server constraints
# Daniel Avila Gomez <daniel.avila@eia.edu.co>

####################################################################################
# Constraints from file : 'axis_async_fifo.tcl'
####################################################################################

# Copyright (c) 2019 Alex Forencich
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.

# AXI stream asynchronous FIFO timing constraints

set_property ASYNC_REG true [get_cells -quiet -hier -regexp {.*/s_rst_sync[23]_reg_reg} -filter {PARENT == ETH_FRAME/eth_mac_inst/rx_fifo/fifo_inst}]
set_max_delay -datapath_only -from [get_cells -of_objects [get_pins -of_objects [get_nets -segments -of_objects [get_pins -of_objects [get_cells ETH_FRAME/eth_mac_inst/rx_fifo/fifo_inst/s_rst_sync2_reg_reg] -filter {REF_PIN_NAME == D}]] -filter {IS_LEAF && DIRECTION == OUT}]] -to [get_cells ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/rx_fifo/fifo_inst/s_rst_sync2_reg_reg] 8.000
set_property ASYNC_REG true [get_cells -quiet -hier -regexp {.*/m_rst_sync[23]_reg_reg} -filter {PARENT == ETH_FRAME/eth_mac_inst/rx_fifo/fifo_inst}]
set_max_delay -datapath_only -from [get_cells -of_objects [get_pins -of_objects [get_nets -segments -of_objects [get_pins -of_objects [get_cells ETH_FRAME/eth_mac_inst/rx_fifo/fifo_inst/m_rst_sync2_reg_reg] -filter {REF_PIN_NAME == D}]] -filter {IS_LEAF && DIRECTION == OUT}]] -to [get_cells ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/rx_fifo/fifo_inst/m_rst_sync2_reg_reg] 8.000
set_property ASYNC_REG true [get_cells -quiet -hier -regexp {.*/rd_ptr_gray_sync[12]_reg_reg\[\d+\]} -filter {PARENT == ETH_FRAME/eth_mac_inst/rx_fifo/fifo_inst}]
set_max_delay -datapath_only -from [get_cells {{ETH_FRAME/eth_mac_inst/rx_fifo/fifo_inst/rd_ptr_reg_reg[*]} {ETH_FRAME/eth_mac_inst/rx_fifo/fifo_inst/rd_ptr_gray_reg_reg[*]}}] -to [get_cells {ETH_FRAME/eth_mac_inst/rx_fifo/fifo_inst/rd_ptr_gray_sync1_reg_reg[*]}] 8.000
set_bus_skew -from [get_cells {{ETH_FRAME/eth_mac_inst/rx_fifo/fifo_inst/rd_ptr_reg_reg[*]} {ETH_FRAME/eth_mac_inst/rx_fifo/fifo_inst/rd_ptr_gray_reg_reg[*]}}] -to [get_cells {ETH_FRAME/eth_mac_inst/rx_fifo/fifo_inst/rd_ptr_gray_sync1_reg_reg[*]}] 8.000
set_property ASYNC_REG true [get_cells -quiet -hier -regexp {.*/wr_ptr_gray_sync[12]_reg_reg\[\d+\]} -filter {PARENT == ETH_FRAME/eth_mac_inst/rx_fifo/fifo_inst}]
set_max_delay -datapath_only -from [get_cells -quiet {{ETH_FRAME/eth_mac_inst/rx_fifo/fifo_inst/wr_ptr_reg_reg[*]} {ETH_FRAME/eth_mac_inst/rx_fifo/fifo_inst/wr_ptr_gray_reg_reg[*]} {ETH_FRAME/eth_mac_inst/rx_fifo/fifo_inst/wr_ptr_sync_gray_reg_reg[*]}}] -to [get_cells {ETH_FRAME/eth_mac_inst/rx_fifo/fifo_inst/wr_ptr_gray_sync1_reg_reg[*]}] 8.000
set_bus_skew -from [get_cells -quiet {{ETH_FRAME/eth_mac_inst/rx_fifo/fifo_inst/wr_ptr_reg_reg[*]} {ETH_FRAME/eth_mac_inst/rx_fifo/fifo_inst/wr_ptr_gray_reg_reg[*]} {ETH_FRAME/eth_mac_inst/rx_fifo/fifo_inst/wr_ptr_sync_gray_reg_reg[*]}}] -to [get_cells {ETH_FRAME/eth_mac_inst/rx_fifo/fifo_inst/wr_ptr_gray_sync1_reg_reg[*]}] 8.000
set_property ASYNC_REG true [get_cells -quiet -hier -regexp {.*/wr_ptr_update(_ack)?_sync[123]_reg_reg} -filter {PARENT == ETH_FRAME/eth_mac_inst/rx_fifo/fifo_inst}]
set_max_delay -datapath_only -from [get_cells ETH_FRAME/eth_mac_inst/rx_fifo/fifo_inst/wr_ptr_update_reg_reg] -to [get_cells ETH_FRAME/eth_mac_inst/rx_fifo/fifo_inst/wr_ptr_update_sync1_reg_reg] 8.000
set_max_delay -datapath_only -from [get_cells ETH_FRAME/eth_mac_inst/rx_fifo/fifo_inst/wr_ptr_update_sync3_reg_reg] -to [get_cells ETH_FRAME/eth_mac_inst/rx_fifo/fifo_inst/wr_ptr_update_ack_sync1_reg_reg] 8.000
set_property ASYNC_REG true [get_cells -quiet -hier -regexp {.*/s_rst_sync[23]_reg_reg} -filter {PARENT == ETH_FRAME/eth_mac_inst/tx_fifo/fifo_inst}]
set_max_delay -datapath_only -from [get_cells -of_objects [get_pins -of_objects [get_nets -segments -of_objects [get_pins -of_objects [get_cells ETH_FRAME/eth_mac_inst/tx_fifo/fifo_inst/s_rst_sync2_reg_reg] -filter {REF_PIN_NAME == D}]] -filter {IS_LEAF && DIRECTION == OUT}]] -to [get_cells ETH_FRAME/eth_mac_inst/tx_fifo/fifo_inst/s_rst_sync2_reg_reg] 8.000
set_property ASYNC_REG true [get_cells -quiet -hier -regexp {.*/m_rst_sync[23]_reg_reg} -filter {PARENT == ETH_FRAME/eth_mac_inst/tx_fifo/fifo_inst}]
set_max_delay -datapath_only -from [get_cells -of_objects [get_pins -of_objects [get_nets -segments -of_objects [get_pins -of_objects [get_cells ETH_FRAME/eth_mac_inst/tx_fifo/fifo_inst/m_rst_sync2_reg_reg] -filter {REF_PIN_NAME == D}]] -filter {IS_LEAF && DIRECTION == OUT}]] -to [get_cells ETH_FRAME/eth_mac_inst/tx_fifo/fifo_inst/m_rst_sync2_reg_reg] 8.000
set_property ASYNC_REG true [get_cells -quiet -hier -regexp {.*/rd_ptr_gray_sync[12]_reg_reg\[\d+\]} -filter {PARENT == ETH_FRAME/eth_mac_inst/tx_fifo/fifo_inst}]
set_max_delay -datapath_only -from [get_cells {{ETH_FRAME/eth_mac_inst/tx_fifo/fifo_inst/rd_ptr_reg_reg[*]} {ETH_FRAME/eth_mac_inst/tx_fifo/fifo_inst/rd_ptr_gray_reg_reg[*]}}] -to [get_cells {ETH_FRAME/eth_mac_inst/tx_fifo/fifo_inst/rd_ptr_gray_sync1_reg_reg[*]}] 8.000
set_bus_skew -from [get_cells {{ETH_FRAME/eth_mac_inst/tx_fifo/fifo_inst/rd_ptr_reg_reg[*]} {ETH_FRAME/eth_mac_inst/tx_fifo/fifo_inst/rd_ptr_gray_reg_reg[*]}}] -to [get_cells {ETH_FRAME/eth_mac_inst/tx_fifo/fifo_inst/rd_ptr_gray_sync1_reg_reg[*]}] 8.000
set_property ASYNC_REG true [get_cells -quiet -hier -regexp {.*/wr_ptr_gray_sync[12]_reg_reg\[\d+\]} -filter {PARENT == ETH_FRAME/eth_mac_inst/tx_fifo/fifo_inst}]
set_max_delay -datapath_only -from [get_cells -quiet {{ETH_FRAME/eth_mac_inst/tx_fifo/fifo_inst/wr_ptr_reg_reg[*]} {ETH_FRAME/eth_mac_inst/tx_fifo/fifo_inst/wr_ptr_gray_reg_reg[*]} {ETH_FRAME/eth_mac_inst/tx_fifo/fifo_inst/wr_ptr_sync_gray_reg_reg[*]}}] -to [get_cells {ETH_FRAME/eth_mac_inst/tx_fifo/fifo_inst/wr_ptr_gray_sync1_reg_reg[*]}] 8.000
set_bus_skew -from [get_cells -quiet {{ETH_FRAME/eth_mac_inst/tx_fifo/fifo_inst/wr_ptr_reg_reg[*]} {ETH_FRAME/eth_mac_inst/tx_fifo/fifo_inst/wr_ptr_gray_reg_reg[*]} {ETH_FRAME/eth_mac_inst/tx_fifo/fifo_inst/wr_ptr_sync_gray_reg_reg[*]}}] -to [get_cells {ETH_FRAME/eth_mac_inst/tx_fifo/fifo_inst/wr_ptr_gray_sync1_reg_reg[*]}] 8.000
set_property ASYNC_REG true [get_cells -quiet -hier -regexp {.*/wr_ptr_update(_ack)?_sync[123]_reg_reg} -filter {PARENT == ETH_FRAME/eth_mac_inst/tx_fifo/fifo_inst}]
set_max_delay -datapath_only -from [get_cells ETH_FRAME/eth_mac_inst/tx_fifo/fifo_inst/wr_ptr_update_reg_reg] -to [get_cells ETH_FRAME/eth_mac_inst/tx_fifo/fifo_inst/wr_ptr_update_sync1_reg_reg] 8.000
set_max_delay -datapath_only -from [get_cells ETH_FRAME/eth_mac_inst/tx_fifo/fifo_inst/wr_ptr_update_sync3_reg_reg] -to [get_cells ETH_FRAME/eth_mac_inst/tx_fifo/fifo_inst/wr_ptr_update_ack_sync1_reg_reg] 8.000

####################################################################################
# Constraints from file : 'eth_mac_1g_rgmii.tcl'
####################################################################################

# Copyright (c) 2019 Alex Forencich
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.

# GMII Gigabit Ethernet MAC timing constraints

set_property ASYNC_REG true [get_cells -hier -regexp {.*/tx_mii_select_sync_reg\[\d\]} -filter {PARENT == ETH_FRAME/eth_mac_inst/eth_mac_1g_gmii_inst}]
set_max_delay -datapath_only -from [get_cells ETH_FRAME/eth_mac_inst/eth_mac_1g_gmii_inst/mii_select_reg_reg] -to [get_cells {ETH_FRAME/eth_mac_inst/eth_mac_1g_gmii_inst/tx_mii_select_sync_reg[0]}] 8.000
set_property ASYNC_REG true [get_cells -hier -regexp {.*/rx_mii_select_sync_reg\[\d\]} -filter {PARENT == ETH_FRAME/eth_mac_inst/eth_mac_1g_gmii_inst}]
set_max_delay -datapath_only -from [get_cells ETH_FRAME/eth_mac_inst/eth_mac_1g_gmii_inst/mii_select_reg_reg] -to [get_cells {ETH_FRAME/eth_mac_inst/eth_mac_1g_gmii_inst/rx_mii_select_sync_reg[0]}] 8.000
set_property ASYNC_REG true [get_cells -hier -regexp {.*/rx_prescale_sync_reg\[\d\]} -filter {PARENT == ETH_FRAME/eth_mac_inst/eth_mac_1g_gmii_inst}]
set_max_delay -datapath_only -from [get_cells {ETH_FRAME/eth_mac_inst/eth_mac_1g_gmii_inst/rx_prescale_reg[2]}] -to [get_cells {ETH_FRAME/eth_mac_inst/eth_mac_1g_gmii_inst/rx_prescale_sync_reg[0]}] 8.000

####################################################################################
# Constraints from file : 'fpga.vhd'
####################################################################################

###########################################################################################################################################
# Input Clocks to DAPHNE Domains
create_clock -name daq_refclk   -period 8.317       [get_ports daq_refclk_p]
create_clock -name sys_clk      -period 10.000      [get_ports sysclk_p]

###########################################################################################################################################
# Rename The Auto-Generated Clocks...
create_generated_clock -name sclk100                [get_pins SYS_TIMING/mmcm0_inst/CLKOUT2]
create_generated_clock -name sclk125                [get_pins SYS_TIMING/mmcm0_inst/CLKOUT3]
create_generated_clock -name sclk200                [get_pins SYS_TIMING/mmcm0_inst/CLKOUT1]
create_generated_clock -name mmcm0_clkfbout         [get_pins SYS_TIMING/mmcm0_inst/CLKFBOUT]

create_generated_clock -name oeiclk                 [get_pins ETH_PHY_COM/U0/core_clocking_i/mmcm_adv_inst/CLKOUT0] 
create_generated_clock -name oeihclk                [get_pins ETH_PHY_COM/U0/core_clocking_i/mmcm_adv_inst/CLKOUT1]
create_generated_clock -name oei_clkfbout           [get_pins ETH_PHY_COM/U0/core_clocking_i/mmcm_adv_inst/CLKFBOUT]

###########################################################################################################################################
# Setting Groups Of Clocks And Their Interactions
set_clock_groups -name eth_phy_groups   -logically_exclusive -group sclk125 -group oeiclk
# Asynchronous Clock Groups    
set_clock_groups -name async_groups     -asynchronous -group {sys_clk sclk100 sclk125 sclk200 mmcm0_clkfbout} \
-group {daq_refclk} -group {oeiclk oeihclk oei_clkfbout}

#set_property CLOCK_DEDICATED_ROUTE BACKBONE [get_nets SYS_TIMING_EPNT/sysclk_ibuf]
set_property LOC BUFGCTRL_X0Y2 [get_cells ETH_PHY_COM/U0/core_clocking_i/bufg_userclk2]
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets ETH0/ETH_PHY_COM/U0/core_clocking_i/userclk2]

# Tell vivado about places where signals cross clock domains so timing can be ignored here...
set_false_path -from [get_ports cdr_sfp_??s]
set_false_path -from [get_ports daq?_sfp_??s] 

# SYSCLK is LVDS 100MHz comes in on bank 33, VCCO=2.5V.
# Use internal LVDS 100 ohm termination. On schematic this is FPGA_MCLK1.
# mclk  First 2 are FPGA_MCLK1_P and FPGA_MCLK1_N 
set_property PACKAGE_PIN  AA4 [get_ports {sysclk_p}]            
set_property PACKAGE_PIN  AB4 [get_ports {sysclk_n}]            
set_property IOSTANDARD LVDS_25 [get_ports {sysclk_p}]          
set_property IOSTANDARD LVDS_25 [get_ports {sysclk_n}]          
set_property DIFF_TERM TRUE [get_ports {sysclk_p}]              
set_property DIFF_TERM TRUE [get_ports {sysclk_n}]   

# Reset pin is from uC, I/O bank 35, VCCO=3.3V note ACTIVE LOW on DAPHNE
set_property PACKAGE_PIN J8 [get_ports {reset_n}]           
set_property IOSTANDARD LVTTL [get_ports {reset_n}]  

### DAQ link 0, channel 0 Quad 213, X0Y5
# Review this
#set_property LOC GTPE2_CHANNEL_X0Y5 [get_cells core_inst/daq_quad_inst/U0/daphne2_daq_txonly_init_i/daphne2_daq_txonly_i/gt1_daphne2_daq_txonly_i/gtpe2_i] 
# changed daq0 to daq1 and viceversa to fit schematic
#set_property LOC GTPE2_CHANNEL_X0Y4 [get_cells ETH0/ETH_PHY_COM/U0/pcs_pma_block_i/transceiver_inst/gtwizard_inst/U0/gtwizard_i/gt0_GTWIZARD_i/gtpe2_i] 

set_property LOC B7 [get_ports {daq0_tx_p}]
set_property LOC A7 [get_ports {daq0_tx_n}]
set_property LOC B11 [get_ports {daq0_rx_p}]
set_property LOC A11 [get_ports {daq0_rx_n}]
#set_property IOSTANDARD LVDS_25 [get_ports {daq0_tx_*}]  

set_property PACKAGE_PIN H6 [get_ports {daq0_sfp_los}]      
set_property PACKAGE_PIN J6 [get_ports {daq0_sfp_abs}]      
set_property PACKAGE_PIN G6 [get_ports {daq0_sfp_tx_dis}]   
set_property PACKAGE_PIN H9 [get_ports {daq0_sfp_scl}]      
set_property PACKAGE_PIN G9 [get_ports {daq0_sfp_sda}]    
set_property IOSTANDARD LVTTL [get_ports {daq0_sfp_*}] 

# 2 DAQ outputs are in QUAD216, uses refclk0 on this quad...
set_property LOC E11 [get_ports daq_refclk_n]              
set_property LOC F11 [get_ports daq_refclk_p] 

# All 6 user LEDS are in bank 35, VCCO=3.3V, all LEDs Active Low
# LED[5..0] map to user StatLED[5..0] on DAPHNE
set_property PACKAGE_PIN D3 [get_ports {led[5]}]        
set_property PACKAGE_PIN A4 [get_ports {led[4]}]        
set_property PACKAGE_PIN B4 [get_ports {led[3]}]       
set_property PACKAGE_PIN A5 [get_ports {led[2]}]       
set_property PACKAGE_PIN B5 [get_ports {led[1]}]       
set_property PACKAGE_PIN C4 [get_ports {led[0]}]       
set_property IOSTANDARD LVTTL [get_ports {led[?]}]     


# #############################################################################
# General bitstream constraints...

set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]