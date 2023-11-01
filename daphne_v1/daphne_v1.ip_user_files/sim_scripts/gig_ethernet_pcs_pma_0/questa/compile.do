vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/gig_ethernet_pcs_pma_v16_2_12
vlib questa_lib/msim/xil_defaultlib

vmap xpm questa_lib/msim/xpm
vmap gig_ethernet_pcs_pma_v16_2_12 questa_lib/msim/gig_ethernet_pcs_pma_v16_2_12
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xpm  -incr -mfcu  -sv \
"F:/AMDXilinx/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"F:/AMDXilinx/Vivado/2023.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"F:/AMDXilinx/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"F:/AMDXilinx/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work gig_ethernet_pcs_pma_v16_2_12  -93  \
"../../../ipstatic/hdl/gig_ethernet_pcs_pma_v16_2_rfs.vhd" \

vlog -work gig_ethernet_pcs_pma_v16_2_12  -incr -mfcu  \
"../../../ipstatic/hdl/gig_ethernet_pcs_pma_v16_2_rfs.v" \

vcom -work xil_defaultlib  -93  \
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

