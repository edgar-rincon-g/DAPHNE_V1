# DAPHNE V1 constraints
# Edgar Rincon Gil <edgar.rincon.g@gmail.com>

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

set_property ASYNC_REG true [get_cells -quiet -hier -regexp {.*/s_rst_sync[23]_reg_reg} -filter {PARENT == ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/rx_fifo/fifo_inst}]
set_max_delay -datapath_only -from [get_cells -of_objects [get_pins -of_objects [get_nets -segments -of_objects [get_pins -of_objects [get_cells ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/rx_fifo/fifo_inst/s_rst_sync2_reg_reg] -filter {REF_PIN_NAME == D}]] -filter {IS_LEAF && DIRECTION == OUT}]] -to [get_cells ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/rx_fifo/fifo_inst/s_rst_sync2_reg_reg] 8.000
set_property ASYNC_REG true [get_cells -quiet -hier -regexp {.*/m_rst_sync[23]_reg_reg} -filter {PARENT == ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/rx_fifo/fifo_inst}]
set_max_delay -datapath_only -from [get_cells -of_objects [get_pins -of_objects [get_nets -segments -of_objects [get_pins -of_objects [get_cells ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/rx_fifo/fifo_inst/m_rst_sync2_reg_reg] -filter {REF_PIN_NAME == D}]] -filter {IS_LEAF && DIRECTION == OUT}]] -to [get_cells ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/rx_fifo/fifo_inst/m_rst_sync2_reg_reg] 8.000
set_property ASYNC_REG true [get_cells -quiet -hier -regexp {.*/rd_ptr_gray_sync[12]_reg_reg\[\d+\]} -filter {PARENT == ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/rx_fifo/fifo_inst}]
set_max_delay -datapath_only -from [get_cells {{ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/rx_fifo/fifo_inst/rd_ptr_reg_reg[*]} {ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/rx_fifo/fifo_inst/rd_ptr_gray_reg_reg[*]}}] -to [get_cells {ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/rx_fifo/fifo_inst/rd_ptr_gray_sync1_reg_reg[*]}] 8.000
set_bus_skew -from [get_cells {{ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/rx_fifo/fifo_inst/rd_ptr_reg_reg[*]} {ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/rx_fifo/fifo_inst/rd_ptr_gray_reg_reg[*]}}] -to [get_cells {ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/rx_fifo/fifo_inst/rd_ptr_gray_sync1_reg_reg[*]}] 8.000
set_property ASYNC_REG true [get_cells -quiet -hier -regexp {.*/wr_ptr_gray_sync[12]_reg_reg\[\d+\]} -filter {PARENT == ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/rx_fifo/fifo_inst}]
set_max_delay -datapath_only -from [get_cells -quiet {{ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/rx_fifo/fifo_inst/wr_ptr_reg_reg[*]} {ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/rx_fifo/fifo_inst/wr_ptr_gray_reg_reg[*]} {ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/rx_fifo/fifo_inst/wr_ptr_sync_gray_reg_reg[*]}}] -to [get_cells {ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/rx_fifo/fifo_inst/wr_ptr_gray_sync1_reg_reg[*]}] 8.000
set_bus_skew -from [get_cells -quiet {{ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/rx_fifo/fifo_inst/wr_ptr_reg_reg[*]} {ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/rx_fifo/fifo_inst/wr_ptr_gray_reg_reg[*]} {ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/rx_fifo/fifo_inst/wr_ptr_sync_gray_reg_reg[*]}}] -to [get_cells {ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/rx_fifo/fifo_inst/wr_ptr_gray_sync1_reg_reg[*]}] 8.000
set_property ASYNC_REG true [get_cells -quiet -hier -regexp {.*/wr_ptr_update(_ack)?_sync[123]_reg_reg} -filter {PARENT == ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/rx_fifo/fifo_inst}]
set_max_delay -datapath_only -from [get_cells ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/rx_fifo/fifo_inst/wr_ptr_update_reg_reg] -to [get_cells ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/rx_fifo/fifo_inst/wr_ptr_update_sync1_reg_reg] 8.000
set_max_delay -datapath_only -from [get_cells ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/rx_fifo/fifo_inst/wr_ptr_update_sync3_reg_reg] -to [get_cells ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/rx_fifo/fifo_inst/wr_ptr_update_ack_sync1_reg_reg] 8.000
set_property ASYNC_REG true [get_cells -quiet -hier -regexp {.*/s_rst_sync[23]_reg_reg} -filter {PARENT == ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/tx_fifo/fifo_inst}]
set_max_delay -datapath_only -from [get_cells -of_objects [get_pins -of_objects [get_nets -segments -of_objects [get_pins -of_objects [get_cells ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/tx_fifo/fifo_inst/s_rst_sync2_reg_reg] -filter {REF_PIN_NAME == D}]] -filter {IS_LEAF && DIRECTION == OUT}]] -to [get_cells ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/tx_fifo/fifo_inst/s_rst_sync2_reg_reg] 8.000
set_property ASYNC_REG true [get_cells -quiet -hier -regexp {.*/m_rst_sync[23]_reg_reg} -filter {PARENT == ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/tx_fifo/fifo_inst}]
set_max_delay -datapath_only -from [get_cells -of_objects [get_pins -of_objects [get_nets -segments -of_objects [get_pins -of_objects [get_cells ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/tx_fifo/fifo_inst/m_rst_sync2_reg_reg] -filter {REF_PIN_NAME == D}]] -filter {IS_LEAF && DIRECTION == OUT}]] -to [get_cells ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/tx_fifo/fifo_inst/m_rst_sync2_reg_reg] 8.000
set_property ASYNC_REG true [get_cells -quiet -hier -regexp {.*/rd_ptr_gray_sync[12]_reg_reg\[\d+\]} -filter {PARENT == ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/tx_fifo/fifo_inst}]
set_max_delay -datapath_only -from [get_cells {{ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/tx_fifo/fifo_inst/rd_ptr_reg_reg[*]} {ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/tx_fifo/fifo_inst/rd_ptr_gray_reg_reg[*]}}] -to [get_cells {ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/tx_fifo/fifo_inst/rd_ptr_gray_sync1_reg_reg[*]}] 8.000
set_bus_skew -from [get_cells {{ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/tx_fifo/fifo_inst/rd_ptr_reg_reg[*]} {ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/tx_fifo/fifo_inst/rd_ptr_gray_reg_reg[*]}}] -to [get_cells {ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/tx_fifo/fifo_inst/rd_ptr_gray_sync1_reg_reg[*]}] 8.000
set_property ASYNC_REG true [get_cells -quiet -hier -regexp {.*/wr_ptr_gray_sync[12]_reg_reg\[\d+\]} -filter {PARENT == ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/tx_fifo/fifo_inst}]
set_max_delay -datapath_only -from [get_cells -quiet {{ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/tx_fifo/fifo_inst/wr_ptr_reg_reg[*]} {ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/tx_fifo/fifo_inst/wr_ptr_gray_reg_reg[*]} {ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/tx_fifo/fifo_inst/wr_ptr_sync_gray_reg_reg[*]}}] -to [get_cells {ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/tx_fifo/fifo_inst/wr_ptr_gray_sync1_reg_reg[*]}] 8.000
set_bus_skew -from [get_cells -quiet {{ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/tx_fifo/fifo_inst/wr_ptr_reg_reg[*]} {ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/tx_fifo/fifo_inst/wr_ptr_gray_reg_reg[*]} {ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/tx_fifo/fifo_inst/wr_ptr_sync_gray_reg_reg[*]}}] -to [get_cells {ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/tx_fifo/fifo_inst/wr_ptr_gray_sync1_reg_reg[*]}] 8.000
set_property ASYNC_REG true [get_cells -quiet -hier -regexp {.*/wr_ptr_update(_ack)?_sync[123]_reg_reg} -filter {PARENT == ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/tx_fifo/fifo_inst}]
set_max_delay -datapath_only -from [get_cells ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/tx_fifo/fifo_inst/wr_ptr_update_reg_reg] -to [get_cells ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/tx_fifo/fifo_inst/wr_ptr_update_sync1_reg_reg] 8.000
set_max_delay -datapath_only -from [get_cells ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/tx_fifo/fifo_inst/wr_ptr_update_sync3_reg_reg] -to [get_cells ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/tx_fifo/fifo_inst/wr_ptr_update_ack_sync1_reg_reg] 8.000

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

set_property ASYNC_REG true [get_cells -hier -regexp {.*/tx_mii_select_sync_reg\[\d\]} -filter {PARENT == ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/eth_mac_1g_gmii_inst}]
set_max_delay -datapath_only -from [get_cells ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/eth_mac_1g_gmii_inst/mii_select_reg_reg] -to [get_cells {ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/eth_mac_1g_gmii_inst/tx_mii_select_sync_reg[0]}] 8.000
set_property ASYNC_REG true [get_cells -hier -regexp {.*/rx_mii_select_sync_reg\[\d\]} -filter {PARENT == ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/eth_mac_1g_gmii_inst}]
set_max_delay -datapath_only -from [get_cells ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/eth_mac_1g_gmii_inst/mii_select_reg_reg] -to [get_cells {ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/eth_mac_1g_gmii_inst/rx_mii_select_sync_reg[0]}] 8.000
set_property ASYNC_REG true [get_cells -hier -regexp {.*/rx_prescale_sync_reg\[\d\]} -filter {PARENT == ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/eth_mac_1g_gmii_inst}]
set_max_delay -datapath_only -from [get_cells {ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/eth_mac_1g_gmii_inst/rx_prescale_reg[2]}] -to [get_cells {ETH0/ETH_MAC_COM/eth_mac_1g_gmii_fifo_inst/eth_mac_1g_gmii_inst/rx_prescale_sync_reg[0]}] 8.000


####################################################################################
# Constraints from file : 'daphne1.vhd'
####################################################################################

###########################################################################################################################################
# Input Clocks to DAPHNE Domains
create_clock -name cdr_data_p   -period 16.000      [get_ports cdr_data_p]
create_clock -name daq_refclk   -period 8.317       [get_ports daq_refclk_p]
create_clock -name sys_clk      -period 10.000      [get_ports sysclk_p]
create_clock -name afe_dclk     -period 2.286       [get_ports afe_dclk_p[0]]

###########################################################################################################################################
# Rename The Auto-Generated Clocks...
create_generated_clock -name sclk100                [get_pins SYS_TIMING_EPNT/mmcm0_inst/CLKOUT2]
create_generated_clock -name sclk125                [get_pins SYS_TIMING_EPNT/mmcm0_inst/CLKOUT3]
create_generated_clock -name sclk200                [get_pins SYS_TIMING_EPNT/mmcm0_inst/CLKOUT1]
create_generated_clock -name sclk62_5               [get_pins SYS_TIMING_EPNT/mmcm0_inst/CLKOUT0]
create_generated_clock -name mmcm0_clkfbout         [get_pins SYS_TIMING_EPNT/mmcm0_inst/CLKFBOUT]

create_generated_clock -name afe0_pll_dig0          [get_pins AFE0_CH_0/CLK_COM/PLL_COM/PLLE2_BASE_inst/CLKOUT0]
create_generated_clock -name afe0_pll_dig1          [get_pins AFE0_CH_0/CLK_COM/PLL_COM/PLLE2_BASE_inst/CLKOUT1]
create_generated_clock -name afe0_pll_dig2          [get_pins AFE0_CH_0/CLK_COM/PLL_COM/PLLE2_BASE_inst/CLKOUT2]
create_generated_clock -name afe0_pll_dig_div0      [get_pins AFE0_CH_0/CLK_COM/PLL_COM/PLLE2_BASE_inst/CLKOUT3]
create_generated_clock -name afe0_pll_dig_div1      [get_pins AFE0_CH_0/CLK_COM/PLL_COM/PLLE2_BASE_inst/CLKOUT4]
create_generated_clock -name afe0_pll_dig_div2      [get_pins AFE0_CH_0/CLK_COM/PLL_COM/PLLE2_BASE_inst/CLKOUT5]
create_generated_clock -name afe0_pll_clkfbout      [get_pins AFE0_CH_0/CLK_COM/PLL_COM/PLLE2_BASE_inst/CLKFBOUT]

create_generated_clock -name oeiclk                 [get_pins ETH0/ETH_PHY_COM/U0/core_clocking_i/mmcm_adv_inst/CLKOUT0] 
create_generated_clock -name oeihclk                [get_pins ETH0/ETH_PHY_COM/U0/core_clocking_i/mmcm_adv_inst/CLKOUT1]
create_generated_clock -name oei_clkfbout           [get_pins ETH0/ETH_PHY_COM/U0/core_clocking_i/mmcm_adv_inst/CLKFBOUT]

###########################################################################################################################################
# Setting Groups Of Clocks And Their Interactions
set_clock_groups -name mux_groups       -logically_exclusive -group afe0_pll_dig0 -group afe0_pll_dig1 -group afe0_pll_dig2
set_clock_groups -name mux_div_groups   -logically_exclusive -group afe0_pll_dig_div0 -group afe0_pll_dig_div1 -group afe0_pll_dig_div2
set_clock_groups -name eth_phy_groups   -logically_exclusive -group sclk125 -group oeiclk
# Asynchronous Clock Groups    
set_clock_groups -name async_groups     -asynchronous -group {sys_clk sclk100 mmcm0_clkfbout} \
-group {afe_dclk afe0_pll_clkfbout afe0_pll_dig0 afe0_pll_dig1 afe0_pll_dig2 afe0_pll_dig_div0 afe0_pll_dig_div1 afe0_pll_dig_div2} \
-group {sclk125 sclk62_5} -group {sclk200} -group {daq_refclk} -group {oeiclk oeihclk oei_clkfbout}

#set_property CLOCK_DEDICATED_ROUTE BACKBONE [get_nets SYS_TIMING_EPNT/sysclk_ibuf]
set_property LOC BUFGCTRL_X0Y2 [get_cells ETH0/ETH_PHY_COM/U0/core_clocking_i/bufg_userclk2]
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets ETH0/ETH_PHY_COM/U0/core_clocking_i/userclk2] 

###########################################################################################################################################
# Creating False Paths So Timing Analysis Is Ignored (Refer to https://docs.xilinx.com/r/en-US/ug903-vivado-using-constraints/False-Paths)
set_false_path -through                             [get_pins AFE0_CH_0/CLK_COM/MUX_CLK_COM/MUX_In/BUFGMUX_CTRL_inst/S0]
set_false_path -through                             [get_pins AFE0_CH_0/CLK_COM/MUX_CLK_COM/MUX_In/BUFGMUX_CTRL_inst/S1]
set_false_path -through                             [get_pins AFE0_CH_0/CLK_COM/MUX_CLK_COM/MUX_Out/BUFGMUX_CTRL_inst/S0]
set_false_path -through                             [get_pins AFE0_CH_0/CLK_COM/MUX_CLK_COM/MUX_Out/BUFGMUX_CTRL_inst/S1]
# Comment The Following Lines If There Are No Synchronizers Used
set_false_path -through                             [get_pins AFE0_CH_0/CLK_COM/MUX_CLK_DIV_COM/MUX_In/BUFGMUX_CTRL_inst/S0]
set_false_path -through                             [get_pins AFE0_CH_0/CLK_COM/MUX_CLK_DIV_COM/MUX_In/BUFGMUX_CTRL_inst/S1]
set_false_path -through                             [get_pins AFE0_CH_0/CLK_COM/MUX_CLK_DIV_COM/MUX_Out/BUFGMUX_CTRL_inst/S0]
set_false_path -through                             [get_pins AFE0_CH_0/CLK_COM/MUX_CLK_DIV_COM/MUX_Out/BUFGMUX_CTRL_inst/S1]
# Synchronizer false paths 
## ACQUISITION
set_false_path -through                             [get_pins AFE0_CH_0/SYNCH_COM_0/FLIP_FLOP_CHAIN[0].FIRST_FF.FIRST_FLIP_FLOP/FDRE_inst/D]
set_false_path -through                             [get_pins AFE0_CH_0/SYNCH_COM_1/FLIP_FLOP_CHAIN[0].FIRST_FF.FIRST_FLIP_FLOP/FDRE_inst/D]
# Synchronizers for the Read and Write flags/operations on the FIFO
## FIFO MEMORY
#set_false_path -through                             [get_pins AFE0_ST_0/FIFO_INST_COM/MEMORY_CTRL_COM/RESET_COM/RST_GEN_RD.SYNCH_COM/FLIP_FLOP_CHAIN[0].FIRST_FF.FIRST_FLIP_FLOP/FDRE_inst/D]

# Input Delay Constraint
set_input_delay -clock afe_dclk -max 0.773           [get_ports afe_p[0][0]];
set_input_delay -clock afe_dclk -min 0.380           [get_ports afe_p[0][0]];
set_input_delay -clock afe_dclk -max 0.773           [get_ports afe_p[0][0]] -clock_fall -add_delay;
set_input_delay -clock afe_dclk -min 0.380           [get_ports afe_p[0][0]] -clock_fall -add_delay;
set_input_delay -clock afe_dclk -max 0.773           [get_ports afe_n[0][0]];
set_input_delay -clock afe_dclk -min 0.380           [get_ports afe_n[0][0]];
set_input_delay -clock afe_dclk -max 0.773           [get_ports afe_n[0][0]] -clock_fall -add_delay;
set_input_delay -clock afe_dclk -min 0.380           [get_ports afe_n[0][0]] -clock_fall -add_delay;
set_input_delay -clock afe_dclk -max 0.773           [get_ports afe_fclk_p[0]];
set_input_delay -clock afe_dclk -min 0.380           [get_ports afe_fclk_p[0]];
set_input_delay -clock afe_dclk -max 0.773           [get_ports afe_fclk_p[0]] -clock_fall -add_delay;
set_input_delay -clock afe_dclk -min 0.380           [get_ports afe_fclk_p[0]] -clock_fall -add_delay;
set_input_delay -clock afe_dclk -max 0.773           [get_ports afe_fclk_n[0]];
set_input_delay -clock afe_dclk -min 0.380           [get_ports afe_fclk_n[0]];
set_input_delay -clock afe_dclk -max 0.773           [get_ports afe_fclk_n[0]] -clock_fall -add_delay; 
set_input_delay -clock afe_dclk -min 0.380           [get_ports afe_fclk_n[0]] -clock_fall -add_delay;

# False Paths related to Input Delay definition
set_false_path -from [get_ports afe_fclk_p[0]]
set_false_path -from [get_ports afe_fclk_n[0]]
set_false_path -from [get_ports afe_p[0][0]]
set_false_path -from [get_ports afe_n[0][0]]

# tell vivado about places where signals cross clock domains so timing can be ignored here...

#set_false_path -from [get_pins fe_inst/gen_afe[*].afe_inst/auto_fsm_inst/done_reg_reg/C]      
#set_false_path -from [get_pins fe_inst/gen_afe[*].afe_inst/auto_fsm_inst/warn_reg_reg/C]      
#set_false_path -from [get_pins fe_inst/gen_afe[*].afe_inst/auto_fsm_inst/errcnt_reg_reg[*]/C] 
#set_false_path -from [get_pins trig_gbe*_reg_reg/C] -to [get_pins trig_sync_reg/D]
#set_false_path -to [get_pins led0_reg_reg[*]/C]
#set_false_path -from [get_pins test_reg_reg[*]/C]
#set_false_path -from [get_ports gbe_sfp_??s]
set_false_path -from [get_ports cdr_sfp_??s]
set_false_path -from [get_ports daq?_sfp_??s]
#set_false_path -from [get_pins st_enable_reg_reg[*]/C]
#set_false_path -from [get_pins outmode_reg_reg[*]/C]
#set_false_path -from [get_pins threshold_reg_reg[*]/C]
#set_false_path -from [get_pins daq_out_param_reg_reg[*]/C]
#set_false_path -from [get_pins core_inst/input_inst/*select_reg_reg*/C]

# SYSCLK is LVDS 100MHz comes in on bank 33, VCCO=2.5V.
# Use internal LVDS 100 ohm termination. On schematic this is FPGA_MCLK1.
#mclk  First 2 are FPGA_MCLK1_P and FPGA_MCLK1_N 
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

####### External trigger not located on this pin
#set_property PACKAGE_PIN D5 [get_ports {trig_ext}]
#set_property IOSTANDARD LVTTL [get_ports {trig_ext}]
set_property PACKAGE_PIN D5 [get_ports {gpi}]                   
set_property PACKAGE_PIN D4 [get_ports {gpo}]                   
set_property IOSTANDARD LVTTL [get_ports {gp?}]                 

### Timing interface signals (LVDS)
# cdr was adn2814
#set_property PACKAGE_PIN V6 [get_ports {cdr_sfp_tx_p}]          
#set_property PACKAGE_PIN W6 [get_ports {cdr_sfp_tx_n}]          
#set_property PACKAGE_PIN AB2 [get_ports {cdr_clk_p}]            
#set_property PACKAGE_PIN AC2 [get_ports {cdr_clk_n}]            
set_property PACKAGE_PIN AC3 [get_ports {cdr_data_p}]           
set_property PACKAGE_PIN AD3 [get_ports {cdr_data_n}]           

#set_property IOSTANDARD LVDS_25 [get_ports {cdr_sfp_tx_?}]      
#set_property IOSTANDARD LVDS_25 [get_ports {cdr_clk_?}]        
set_property IOSTANDARD LVDS_25 [get_ports {cdr_data_?}]        
#set_property DIFF_TERM TRUE [get_ports {cdr_sfp_tx_?}]          
#set_property DIFF_TERM TRUE [get_ports {cdr_clk_?}]            
set_property DIFF_TERM TRUE [get_ports {cdr_data_?}]            

### Timing interface signals (single ended LVTTL)
# cdr was also adn2814, _los, _lol
set_property PACKAGE_PIN D6 [get_ports {cdr_los}]       
set_property PACKAGE_PIN H8 [get_ports {cdr_lol}]       
set_property IOSTANDARD LVTTL [get_ports {cdr_lo?}]     

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
set_property PACKAGE_PIN  AA20 [get_ports {afe_fclk_p[0]}]      
set_property PACKAGE_PIN  AB20 [get_ports {afe_fclk_n[0]}]      
set_property PACKAGE_PIN  AA19 [get_ports {afe_dclk_p[0]}]    
set_property PACKAGE_PIN  AB19 [get_ports {afe_dclk_n[0]}]      

# LVDS inputs from AFE 1 (Bank 16) on schematic 1, front panel 4

set_property PACKAGE_PIN  B25 [get_ports {afe_p[1][0]}]         
set_property PACKAGE_PIN  A25 [get_ports {afe_n[1][0]}]         
set_property PACKAGE_PIN  A23 [get_ports {afe_p[1][1]}]         
set_property PACKAGE_PIN  A24 [get_ports {afe_n[1][1]}]         
set_property PACKAGE_PIN  E21 [get_ports {afe_p[1][2]}]         
set_property PACKAGE_PIN  D21 [get_ports {afe_n[1][2]}]         
set_property PACKAGE_PIN  C21 [get_ports {afe_p[1][3]}]         
set_property PACKAGE_PIN  B21 [get_ports {afe_n[1][3]}]         
set_property PACKAGE_PIN  B19 [get_ports {afe_p[1][4]}]        
set_property PACKAGE_PIN  A19 [get_ports {afe_n[1][4]}]         
set_property PACKAGE_PIN  A17 [get_ports {afe_p[1][5]}]         
set_property PACKAGE_PIN  A18 [get_ports {afe_n[1][5]}]         
set_property PACKAGE_PIN  C17 [get_ports {afe_p[1][6]}]         
set_property PACKAGE_PIN  B17 [get_ports {afe_n[1][6]}]         
set_property PACKAGE_PIN  E16 [get_ports {afe_p[1][7]}]         
set_property PACKAGE_PIN  D16 [get_ports {afe_n[1][7]}]       
set_property PACKAGE_PIN  D19 [get_ports {afe_fclk_p[1]}]       
set_property PACKAGE_PIN  C19 [get_ports {afe_fclk_n[1]}]      
set_property PACKAGE_PIN  D18 [get_ports {afe_dclk_p[1]}]       
set_property PACKAGE_PIN  C18 [get_ports {afe_dclk_n[1]}]     

# LVDS inputs from AFE 2 (Bank 15) on schematic 2, front panel 3

set_property PACKAGE_PIN  K22 [get_ports {afe_p[2][0]}]         
set_property PACKAGE_PIN  K23 [get_ports {afe_n[2][0]}]         
set_property PACKAGE_PIN  J24 [get_ports {afe_p[2][1]}]         
set_property PACKAGE_PIN  H24 [get_ports {afe_n[2][1]}]        
set_property PACKAGE_PIN  J25 [get_ports {afe_p[2][2]}]        
set_property PACKAGE_PIN  J26 [get_ports {afe_n[2][2]}]         
set_property PACKAGE_PIN  H26 [get_ports {afe_p[2][3]}]       
set_property PACKAGE_PIN  G26 [get_ports {afe_n[2][3]}]       
set_property PACKAGE_PIN  E25 [get_ports {afe_p[2][4]}]      
set_property PACKAGE_PIN  D25 [get_ports {afe_n[2][4]}]         
set_property PACKAGE_PIN  E26 [get_ports {afe_p[2][5]}]        
set_property PACKAGE_PIN  D26 [get_ports {afe_n[2][5]}]         
set_property PACKAGE_PIN  F23 [get_ports {afe_p[2][6]}]        
set_property PACKAGE_PIN  E23 [get_ports {afe_n[2][6]}]        
set_property PACKAGE_PIN  G22 [get_ports {afe_p[2][7]}]        
set_property PACKAGE_PIN  F22 [get_ports {afe_n[2][7]}]        
set_property PACKAGE_PIN  H21 [get_ports {afe_fclk_p[2]}]       
set_property PACKAGE_PIN  H22 [get_ports {afe_fclk_n[2]}]     
set_property PACKAGE_PIN  K21 [get_ports {afe_dclk_p[2]}]      
set_property PACKAGE_PIN  J21 [get_ports {afe_dclk_n[2]}]       

# LVDS inputs from AFE 3 (Bank 14) on schematic 3, front panel 2

set_property PACKAGE_PIN  T24 [get_ports {afe_p[3][0]}]         
set_property PACKAGE_PIN  T25 [get_ports {afe_n[3][0]}]        
set_property PACKAGE_PIN  T23 [get_ports {afe_p[3][1]}]         
set_property PACKAGE_PIN  R23 [get_ports {afe_n[3][1]}]         
set_property PACKAGE_PIN  R25 [get_ports {afe_p[3][2]}]         
set_property PACKAGE_PIN  P25 [get_ports {afe_n[3][2]}]        
set_property PACKAGE_PIN  R26 [get_ports {afe_p[3][3]}]        
set_property PACKAGE_PIN  P26 [get_ports {afe_n[3][3]}]        
set_property PACKAGE_PIN  N26 [get_ports {afe_p[3][4]}]         
set_property PACKAGE_PIN  M26 [get_ports {afe_n[3][4]}]        
set_property PACKAGE_PIN  M24 [get_ports {afe_p[3][5]}]         
set_property PACKAGE_PIN  M25 [get_ports {afe_n[3][5]}]        
set_property PACKAGE_PIN  L24 [get_ports {afe_p[3][6]}]        
set_property PACKAGE_PIN  L25 [get_ports {afe_n[3][6]}]        
set_property PACKAGE_PIN  K25 [get_ports {afe_p[3][7]}]        
set_property PACKAGE_PIN  K26 [get_ports {afe_n[3][7]}]        
set_property PACKAGE_PIN  M21  [get_ports {afe_fclk_p[3]}]      
set_property PACKAGE_PIN  M22  [get_ports {afe_fclk_n[3]}]      
set_property PACKAGE_PIN  N21  [get_ports {afe_dclk_p[3]}]    
set_property PACKAGE_PIN  N22  [get_ports {afe_dclk_n[3]}]     


# LVDS inputs from AFE 4 (Bank 13) on schematic 4, front panel 1

set_property PACKAGE_PIN  W20  [get_ports {afe_p[4][0]}]        
set_property PACKAGE_PIN  Y20  [get_ports {afe_n[4][0]}]        
set_property PACKAGE_PIN  Y22  [get_ports {afe_p[4][1]}]        
set_property PACKAGE_PIN  Y23  [get_ports {afe_n[4][1]}]       
set_property PACKAGE_PIN  AA22 [get_ports {afe_p[4][2]}]        
set_property PACKAGE_PIN  AA23 [get_ports {afe_n[4][2]}]        
set_property PACKAGE_PIN  AB24 [get_ports {afe_p[4][3]}]        
set_property PACKAGE_PIN  AC24 [get_ports {afe_n[4][3]}]       
set_property PACKAGE_PIN  AB26 [get_ports {afe_p[4][4]}]       
set_property PACKAGE_PIN  AC26 [get_ports {afe_n[4][4]}]       
set_property PACKAGE_PIN  Y25  [get_ports {afe_p[4][5]}]        
set_property PACKAGE_PIN  AA25 [get_ports {afe_n[4][5]}]        
set_property PACKAGE_PIN  W25  [get_ports {afe_p[4][6]}]        
set_property PACKAGE_PIN  Y26  [get_ports {afe_n[4][6]}]       
set_property PACKAGE_PIN  V26  [get_ports {afe_p[4][7]}]       
set_property PACKAGE_PIN  W26  [get_ports {afe_n[4][7]}]       
set_property PACKAGE_PIN  U21  [get_ports {afe_fclk_p[4]}]      
set_property PACKAGE_PIN  V21  [get_ports {afe_fclk_n[4]}]      
set_property PACKAGE_PIN  U22  [get_ports {afe_dclk_p[4]}]      
set_property PACKAGE_PIN  V22  [get_ports {afe_dclk_n[4]}]      

set_property IOSTANDARD LVDS_25 [get_ports {afe_?[?][?]}]       
set_property IOSTANDARD LVDS_25 [get_ports {afe_?clk_?[?]}]     
set_property DIFF_TERM TRUE [get_ports {afe_?[?][?]}]          
set_property DIFF_TERM TRUE [get_ports {afe_?clk_?[?]}]         

### Simple SPI slave interface used for slow controls communication with the uC

set_property PACKAGE_PIN K6 [get_ports {spi_csn}]           
set_property PACKAGE_PIN G4 [get_ports {spi_clk}]          
set_property PACKAGE_PIN F4 [get_ports {spi_miso}]         
set_property PACKAGE_PIN G5 [get_ports {spi_mosi}]          
set_property PACKAGE_PIN F5 [get_ports {spi_irq}]          
set_property IOSTANDARD LVTTL [get_ports {spi_*}]           


### DAQ link 0, channel 0 Quad 213, X0Y5
# Review this
#set_property LOC GTPE2_CHANNEL_X0Y5 [get_cells core_inst/daq_quad_inst/U0/daphne2_daq_txonly_init_i/daphne2_daq_txonly_i/gt1_daphne2_daq_txonly_i/gtpe2_i] 
# changed daq0 to daq1 and viceversa to fit schematic
#set_property LOC GTPE2_CHANNEL_X0Y4 [get_cells ETH0/ETH_PHY_COM/U0/pcs_pma_block_i/transceiver_inst/gtwizard_inst/U0/gtwizard_i/gt0_GTWIZARD_i/gtpe2_i] 

set_property LOC B7 [get_ports {daq0_tx_p}]
set_property LOC A7 [get_ports {daq0_tx_n}]
#set_property IOSTANDARD LVDS_25 [get_ports {daq0_tx_*}]  

set_property PACKAGE_PIN H6 [get_ports {daq0_sfp_los}]      
set_property PACKAGE_PIN J6 [get_ports {daq0_sfp_abs}]      
set_property PACKAGE_PIN G6 [get_ports {daq0_sfp_tx_dis}]   
set_property PACKAGE_PIN H9 [get_ports {daq0_sfp_scl}]      
set_property PACKAGE_PIN G9 [get_ports {daq0_sfp_sda}]    
set_property IOSTANDARD LVTTL [get_ports {daq0_sfp_*}]    

### DAQ link 1, channel 1 Quad 213, X0Y4
# Review this
set_property LOC GTPE2_CHANNEL_X0Y4 [get_cells ETH0/ETH_PHY_COM/U0/pcs_pma_block_i/transceiver_inst/gtwizard_inst/U0/gtwizard_i/gt0_GTWIZARD_i/gtpe2_i] 

#set_property PACKAGE_PIN D8 [get_ports {daq1_tx_p}]
#set_property PACKAGE_PIN C8 [get_ports {daq1_tx_n}]
#set_property IOSTANDARD LVDS_25 [get_ports {daq1_tx_*}] 

set_property PACKAGE_PIN L8 [get_ports {daq1_sfp_los}]      
set_property PACKAGE_PIN K7 [get_ports {daq1_sfp_abs}]       
set_property PACKAGE_PIN K8 [get_ports {daq1_sfp_tx_dis}]  
set_property PACKAGE_PIN J4 [get_ports {daq1_sfp_scl}]      
set_property PACKAGE_PIN H4 [get_ports {daq1_sfp_sda}]     
set_property IOSTANDARD LVTTL [get_ports {daq1_sfp_*}]      

# 4 DAQ outputs are in QUAD216, uses refclk0 on this quad...

set_property LOC E11 [get_ports daq_refclk_n]              
set_property LOC F11 [get_ports daq_refclk_p]              


# All 6 user LEDS are in bank 35, VCCO=3.3V, all LEDs Active High

# Assign LED7 to debug header pin 1
# set_property PACKAGE_PIN C3 [get_ports {led[7]}]

# Assign LED6 to debug header pin 2
# set_property PACKAGE_PIN F3 [get_ports {led[6]}]

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