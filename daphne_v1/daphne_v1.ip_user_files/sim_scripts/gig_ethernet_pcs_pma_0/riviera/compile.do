transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {C:/Users/PERSONAL/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.cache/compile_simlib/riviera}
vlib riviera/xpm
vlib riviera/gig_ethernet_pcs_pma_v16_2_12
vlib riviera/xil_defaultlib

vlog -work xpm  -incr -l xpm -l gig_ethernet_pcs_pma_v16_2_12 -l xil_defaultlib \
"F:/AMDXilinx/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"F:/AMDXilinx/Vivado/2023.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"F:/AMDXilinx/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"F:/AMDXilinx/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work gig_ethernet_pcs_pma_v16_2_12 -93  -incr \
"../../../ipstatic/hdl/gig_ethernet_pcs_pma_v16_2_rfs.vhd" \

vlog -work gig_ethernet_pcs_pma_v16_2_12  -incr -v2k5 -l xpm -l gig_ethernet_pcs_pma_v16_2_12 -l xil_defaultlib \
"../../../ipstatic/hdl/gig_ethernet_pcs_pma_v16_2_rfs.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../../daphne_v1.gen/sources_1/ip/gig_ethernet_pcs_pma_0/synth/gig_ethernet_pcs_pma_0_resets.vhd" \
"../../../../daphne_v1.gen/sources_1/ip/gig_ethernet_pcs_pma_0/synth/gig_ethernet_pcs_pma_0_clocking.vhd" \
"../../../../daphne_v1.gen/sources_1/ip/gig_ethernet_pcs_pma_0/synth/gig_ethernet_pcs_pma_0_support.vhd" \
"../../../../daphne_v1.gen/sources_1/ip/gig_ethernet_pcs_pma_0/synth/gig_ethernet_pcs_pma_0_gt_common.vhd" \
"../../../../daphne_v1.gen/sources_1/ip/gig_ethernet_pcs_pma_0/synth/gig_ethernet_pcs_pma_0_common_reset.vhd" \
"../../../../daphne_v1.gen/sources_1/ip/gig_ethernet_pcs_pma_0/synth/transceiver/gig_ethernet_pcs_pma_0_gtwizard_gtrxreset_seq.vhd" \
"../../../../daphne_v1.gen/sources_1/ip/gig_ethernet_pcs_pma_0/synth/transceiver/gig_ethernet_pcs_pma_0_gtwizard_gtrxpmarst_seq.vhd" \
"../../../../daphne_v1.gen/sources_1/ip/gig_ethernet_pcs_pma_0/synth/transceiver/gig_ethernet_pcs_pma_0_gtwizard.vhd" \
"../../../../daphne_v1.gen/sources_1/ip/gig_ethernet_pcs_pma_0/synth/transceiver/gig_ethernet_pcs_pma_0_gtwizard_multi_gt.vhd" \
"../../../../daphne_v1.gen/sources_1/ip/gig_ethernet_pcs_pma_0/synth/transceiver/gig_ethernet_pcs_pma_0_gtwizard_gt.vhd" \
"../../../../daphne_v1.gen/sources_1/ip/gig_ethernet_pcs_pma_0/synth/transceiver/gig_ethernet_pcs_pma_0_gtwizard_init.vhd" \
"../../../../daphne_v1.gen/sources_1/ip/gig_ethernet_pcs_pma_0/synth/transceiver/gig_ethernet_pcs_pma_0_tx_startup_fsm.vhd" \
"../../../../daphne_v1.gen/sources_1/ip/gig_ethernet_pcs_pma_0/synth/transceiver/gig_ethernet_pcs_pma_0_rx_startup_fsm.vhd" \
"../../../../daphne_v1.gen/sources_1/ip/gig_ethernet_pcs_pma_0/synth/gig_ethernet_pcs_pma_0_reset_sync.vhd" \
"../../../../daphne_v1.gen/sources_1/ip/gig_ethernet_pcs_pma_0/synth/gig_ethernet_pcs_pma_0_sync_block.vhd" \
"../../../../daphne_v1.gen/sources_1/ip/gig_ethernet_pcs_pma_0/synth/transceiver/gig_ethernet_pcs_pma_0_reset_wtd_timer.vhd" \
"../../../../daphne_v1.gen/sources_1/ip/gig_ethernet_pcs_pma_0/synth/transceiver/gig_ethernet_pcs_pma_0_transceiver.vhd" \
"../../../../daphne_v1.gen/sources_1/ip/gig_ethernet_pcs_pma_0/synth/gig_ethernet_pcs_pma_0_block.vhd" \
"../../../../daphne_v1.gen/sources_1/ip/gig_ethernet_pcs_pma_0/synth/gig_ethernet_pcs_pma_0.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

