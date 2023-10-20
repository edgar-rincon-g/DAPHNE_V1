transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {C:/Users/daniel.avila/Documents/GitHub/DAPHNE_V1/DAPHNE_Full/DAPHNE_Full.cache/compile_simlib/activehdl}
vlib activehdl/xpm
vlib activehdl/gig_ethernet_pcs_pma_v16_2_12
vlib activehdl/xil_defaultlib

vlog -work xpm  -sv2k12 -l xpm -l gig_ethernet_pcs_pma_v16_2_12 -l xil_defaultlib \
"C:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93  \
"C:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work gig_ethernet_pcs_pma_v16_2_12 -93  \
"../../../ipstatic/hdl/gig_ethernet_pcs_pma_v16_2_rfs.vhd" \

vlog -work gig_ethernet_pcs_pma_v16_2_12  -v2k5 -l xpm -l gig_ethernet_pcs_pma_v16_2_12 -l xil_defaultlib \
"../../../ipstatic/hdl/gig_ethernet_pcs_pma_v16_2_rfs.v" \

vcom -work xil_defaultlib -93  \
"../../../../DAPHNE_Full.gen/sources_1/ip/gig_ethernet_pcs_pma_0/synth/gig_ethernet_pcs_pma_0_resets.vhd" \
"../../../../DAPHNE_Full.gen/sources_1/ip/gig_ethernet_pcs_pma_0/synth/gig_ethernet_pcs_pma_0_clocking.vhd" \
"../../../../DAPHNE_Full.gen/sources_1/ip/gig_ethernet_pcs_pma_0/synth/gig_ethernet_pcs_pma_0_support.vhd" \
"../../../../DAPHNE_Full.gen/sources_1/ip/gig_ethernet_pcs_pma_0/synth/gig_ethernet_pcs_pma_0_gt_common.vhd" \
"../../../../DAPHNE_Full.gen/sources_1/ip/gig_ethernet_pcs_pma_0/synth/gig_ethernet_pcs_pma_0_common_reset.vhd" \
"../../../../DAPHNE_Full.gen/sources_1/ip/gig_ethernet_pcs_pma_0/synth/transceiver/gig_ethernet_pcs_pma_0_gtwizard_gtrxreset_seq.vhd" \
"../../../../DAPHNE_Full.gen/sources_1/ip/gig_ethernet_pcs_pma_0/synth/transceiver/gig_ethernet_pcs_pma_0_gtwizard_gtrxpmarst_seq.vhd" \
"../../../../DAPHNE_Full.gen/sources_1/ip/gig_ethernet_pcs_pma_0/synth/transceiver/gig_ethernet_pcs_pma_0_gtwizard.vhd" \
"../../../../DAPHNE_Full.gen/sources_1/ip/gig_ethernet_pcs_pma_0/synth/transceiver/gig_ethernet_pcs_pma_0_gtwizard_multi_gt.vhd" \
"../../../../DAPHNE_Full.gen/sources_1/ip/gig_ethernet_pcs_pma_0/synth/transceiver/gig_ethernet_pcs_pma_0_gtwizard_gt.vhd" \
"../../../../DAPHNE_Full.gen/sources_1/ip/gig_ethernet_pcs_pma_0/synth/transceiver/gig_ethernet_pcs_pma_0_gtwizard_init.vhd" \
"../../../../DAPHNE_Full.gen/sources_1/ip/gig_ethernet_pcs_pma_0/synth/transceiver/gig_ethernet_pcs_pma_0_tx_startup_fsm.vhd" \
"../../../../DAPHNE_Full.gen/sources_1/ip/gig_ethernet_pcs_pma_0/synth/transceiver/gig_ethernet_pcs_pma_0_rx_startup_fsm.vhd" \
"../../../../DAPHNE_Full.gen/sources_1/ip/gig_ethernet_pcs_pma_0/synth/gig_ethernet_pcs_pma_0_reset_sync.vhd" \
"../../../../DAPHNE_Full.gen/sources_1/ip/gig_ethernet_pcs_pma_0/synth/gig_ethernet_pcs_pma_0_sync_block.vhd" \
"../../../../DAPHNE_Full.gen/sources_1/ip/gig_ethernet_pcs_pma_0/synth/transceiver/gig_ethernet_pcs_pma_0_reset_wtd_timer.vhd" \
"../../../../DAPHNE_Full.gen/sources_1/ip/gig_ethernet_pcs_pma_0/synth/transceiver/gig_ethernet_pcs_pma_0_transceiver.vhd" \
"../../../../DAPHNE_Full.gen/sources_1/ip/gig_ethernet_pcs_pma_0/synth/gig_ethernet_pcs_pma_0_block.vhd" \
"../../../../DAPHNE_Full.gen/sources_1/ip/gig_ethernet_pcs_pma_0/synth/gig_ethernet_pcs_pma_0.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

