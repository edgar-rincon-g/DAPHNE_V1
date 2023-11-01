transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+gig_ethernet_pcs_pma_0  -L xpm -L gig_ethernet_pcs_pma_v16_2_12 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.gig_ethernet_pcs_pma_0 xil_defaultlib.glbl

do {gig_ethernet_pcs_pma_0.udo}

run 1000ns

endsim

quit -force
