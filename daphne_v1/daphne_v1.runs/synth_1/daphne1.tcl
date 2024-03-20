# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
namespace eval ::optrace {
  variable script "C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.runs/synth_1/daphne1.tcl"
  variable category "vivado_synth"
}

# Try to connect to running dispatch if we haven't done so already.
# This code assumes that the Tcl interpreter is not using threads,
# since the ::dispatch::connected variable isn't mutex protected.
if {![info exists ::dispatch::connected]} {
  namespace eval ::dispatch {
    variable connected false
    if {[llength [array get env XILINX_CD_CONNECT_ID]] > 0} {
      set result "true"
      if {[catch {
        if {[lsearch -exact [package names] DispatchTcl] < 0} {
          set result [load librdi_cd_clienttcl[info sharedlibextension]] 
        }
        if {$result eq "false"} {
          puts "WARNING: Could not load dispatch client library"
        }
        set connect_id [ ::dispatch::init_client -mode EXISTING_SERVER ]
        if { $connect_id eq "" } {
          puts "WARNING: Could not initialize dispatch client"
        } else {
          puts "INFO: Dispatch client connection id - $connect_id"
          set connected true
        }
      } catch_res]} {
        puts "WARNING: failed to connect to dispatch server - $catch_res"
      }
    }
  }
}
if {$::dispatch::connected} {
  # Remove the dummy proc if it exists.
  if { [expr {[llength [info procs ::OPTRACE]] > 0}] } {
    rename ::OPTRACE ""
  }
  proc ::OPTRACE { task action {tags {} } } {
    ::vitis_log::op_trace "$task" $action -tags $tags -script $::optrace::script -category $::optrace::category
  }
  # dispatch is generic. We specifically want to attach logging.
  ::vitis_log::connect_client
} else {
  # Add dummy proc if it doesn't exist.
  if { [expr {[llength [info procs ::OPTRACE]] == 0}] } {
    proc ::OPTRACE {{arg1 \"\" } {arg2 \"\"} {arg3 \"\" } {arg4 \"\"} {arg5 \"\" } {arg6 \"\"}} {
        # Do nothing
    }
  }
}

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
OPTRACE "synth_1" START { ROLLUP_AUTO }
OPTRACE "Creating in-memory project" START { }
create_project -in_memory -part xc7a200tfbg676-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.cache/wt [current_project]
set_property parent.project_path C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_output_repo c:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
OPTRACE "Creating in-memory project" END { }
OPTRACE "Adding files" START { }
read_verilog -library xil_defaultlib {
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/arbiter.v
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/arp.v
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/arp_cache.v
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/arp_eth_rx.v
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/arp_eth_tx.v
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/axis_adapter.v
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/axis_async_fifo.v
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/axis_async_fifo_adapter.v
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/axis_fifo.v
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/axis_gmii_rx.v
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/axis_gmii_tx.v
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/eth_arb_mux.v
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/eth_axis_rx.v
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/eth_axis_tx.v
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/eth_mac_1g.v
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/eth_mac_1g_gmii.v
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/eth_mac_1g_gmii_fifo.v
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/eth_mac_stack.v
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/gmii_phy_if.v
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/ip.v
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/ip_arb_mux.v
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/ip_complete.v
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/ip_eth_rx.v
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/ip_eth_tx.v
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/lfsr.v
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/mac_ctrl_rx.v
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/mac_ctrl_tx.v
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/mac_pause_ctrl_rx.v
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/mac_pause_ctrl_tx.v
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/oddr.v
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/priority_encoder.v
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/ssio_sdr_in.v
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/ssio_sdr_out.v
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/udp.v
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/udp_checksum_gen.v
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/udp_complete.v
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/udp_ip_rx.v
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/udp_ip_tx.v
}
read_vhdl -library xil_defaultlib {
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/AXIFIFOAdapterModule.vhd
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/AcquisitionManager.vhd
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/AlignFSM.vhd
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/Bufgmux_Module.vhd
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/ClockMUX.vhd
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/ClockManager.vhd
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/DataAcquisition.vhd
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/DataPreProcessingModule.vhd
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/FDRE_Module.vhd
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/FIFOManagerModule.vhd
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/FIFO_Module.vhd
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/FIFO_TO_AXI_Stream_Logic.vhd
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/FilterStage.vhd
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/Ibufds_Module.vhd
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/InputBuffers.vhd
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/Iserdese_Block.vhd
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/PLL_Module.vhd
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/ResetFIFOModule.vhd
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/Self-trigger_VHDL.vhd
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/Synchronizer.vhd
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/bitFSM_Module.vhd
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/daphne1_package.vhd
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/dsp_slice.vhd
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/endpoint.vhd
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/eth_core.vhd
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/fifoControlFSM.vhd
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/frameFSM_Module.vhd
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/highPass_FirstOrder.vhd
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/lowPass_FirstOrder.vhd
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/n_regDataBuffer.vhd
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/rdFSM_Module.vhd
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/wrFSM_Module.vhd
  C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/new/daphne1.vhd
}
read_ip -quiet C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/sources_1/ip/gig_ethernet_pcs_pma_0/gig_ethernet_pcs_pma_0.xci
set_property used_in_implementation false [get_files -all c:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.gen/sources_1/ip/gig_ethernet_pcs_pma_0/gig_ethernet_pcs_pma_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.gen/sources_1/ip/gig_ethernet_pcs_pma_0/synth/gig_ethernet_pcs_pma_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.gen/sources_1/ip/gig_ethernet_pcs_pma_0/synth/gig_ethernet_pcs_pma_0_ooc.xdc]

OPTRACE "Adding files" END { }
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/constrs_1/new/daphne_constraints.xdc
set_property used_in_implementation false [get_files C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/constrs_1/new/daphne_constraints.xdc]

read_xdc -unmanaged C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/constrs_1/new/axis_async_fifo.tcl
set_property used_in_implementation false [get_files C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/constrs_1/new/axis_async_fifo.tcl]

read_xdc -unmanaged C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/constrs_1/new/eth_mac_1g_gmii.tcl
set_property used_in_implementation false [get_files C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/constrs_1/new/eth_mac_1g_gmii.tcl]

read_xdc -unmanaged C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/constrs_1/new/gmii_phy_if.tcl
set_property used_in_implementation false [get_files C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/constrs_1/new/gmii_phy_if.tcl]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1

read_checkpoint -auto_incremental -incremental C:/Users/daniel.avila.EIA/Documents/GitHub/DAPHNE_V1/daphne_v1/daphne_v1.srcs/utils_1/imports/synth_1/daphne1.dcp
close [open __synthesis_is_running__ w]

OPTRACE "synth_design" START { }
synth_design -top daphne1 -part xc7a200tfbg676-2
OPTRACE "synth_design" END { }
if { [get_msg_config -count -severity {CRITICAL WARNING}] > 0 } {
 send_msg_id runtcl-6 info "Synthesis results are not added to the cache due to CRITICAL_WARNING"
}


OPTRACE "write_checkpoint" START { CHECKPOINT }
# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef daphne1.dcp
OPTRACE "write_checkpoint" END { }
OPTRACE "synth reports" START { REPORT }
create_report "synth_1_synth_report_utilization_0" "report_utilization -file daphne1_utilization_synth.rpt -pb daphne1_utilization_synth.pb"
OPTRACE "synth reports" END { }
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
OPTRACE "synth_1" END { }
