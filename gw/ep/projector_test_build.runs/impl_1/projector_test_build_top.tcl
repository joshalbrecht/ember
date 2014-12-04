proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {HDL-1065} -limit 10000

start_step init_design
set rc [catch {
  create_msg_db init_design.pb
  set_param gui.test TreeTableDev
  create_project -in_memory -part xc7k325tffg900-2
  set_property board_part xilinx.com:kc705:part0:1.0 [current_project]
  set_property design_mode GateLvl [current_fileset]
  set_property webtalk.parent_dir C:/fpga_ember/fpga_co/gw/ep/projector_test_build.cache/wt [current_project]
  set_property parent.project_dir C:/fpga_ember/fpga_co/gw/ep [current_project]
  add_files -quiet C:/fpga_ember/fpga_co/gw/ep/projector_test_build.runs/synth_1/projector_test_build_top.dcp
  add_files C:/fpga_ember/fpga_co/gw/ep/projector_test_build.srcs/sources_1/bd/system/system.bmm
  set_property SCOPED_TO_REF system [get_files -all C:/fpga_ember/fpga_co/gw/ep/projector_test_build.srcs/sources_1/bd/system/system.bmm]
  set_property SCOPED_TO_CELLS {} [get_files -all C:/fpga_ember/fpga_co/gw/ep/projector_test_build.srcs/sources_1/bd/system/system.bmm]
  add_files c:/fpga_ember/fpga_co/gw/ep/projector_test_build.srcs/sources_1/ipshared/xilinx.com/microblaze_v9_3/7b6e2d75/data/mb_bootloop_le.elf
  set_property SCOPED_TO_REF system [get_files -all c:/fpga_ember/fpga_co/gw/ep/projector_test_build.srcs/sources_1/ipshared/xilinx.com/microblaze_v9_3/7b6e2d75/data/mb_bootloop_le.elf]
  set_property SCOPED_TO_CELLS microblaze_0 [get_files -all c:/fpga_ember/fpga_co/gw/ep/projector_test_build.srcs/sources_1/ipshared/xilinx.com/microblaze_v9_3/7b6e2d75/data/mb_bootloop_le.elf]
  read_xdc -ref system_microblaze_0_0 -cells U0 c:/fpga_ember/fpga_co/gw/ep/projector_test_build.srcs/sources_1/bd/system/ip/system_microblaze_0_0/system_microblaze_0_0.xdc
  set_property processing_order EARLY [get_files c:/fpga_ember/fpga_co/gw/ep/projector_test_build.srcs/sources_1/bd/system/ip/system_microblaze_0_0/system_microblaze_0_0.xdc]
  read_xdc -ref system_dlmb_v10_0 -cells U0 c:/fpga_ember/fpga_co/gw/ep/projector_test_build.srcs/sources_1/bd/system/ip/system_dlmb_v10_0/system_dlmb_v10_0.xdc
  set_property processing_order EARLY [get_files c:/fpga_ember/fpga_co/gw/ep/projector_test_build.srcs/sources_1/bd/system/ip/system_dlmb_v10_0/system_dlmb_v10_0.xdc]
  read_xdc -ref system_ilmb_v10_0 -cells U0 c:/fpga_ember/fpga_co/gw/ep/projector_test_build.srcs/sources_1/bd/system/ip/system_ilmb_v10_0/system_ilmb_v10_0.xdc
  set_property processing_order EARLY [get_files c:/fpga_ember/fpga_co/gw/ep/projector_test_build.srcs/sources_1/bd/system/ip/system_ilmb_v10_0/system_ilmb_v10_0.xdc]
  read_xdc -ref system_mdm_1_0 -cells U0 c:/fpga_ember/fpga_co/gw/ep/projector_test_build.srcs/sources_1/bd/system/ip/system_mdm_1_0/system_mdm_1_0.xdc
  set_property processing_order EARLY [get_files c:/fpga_ember/fpga_co/gw/ep/projector_test_build.srcs/sources_1/bd/system/ip/system_mdm_1_0/system_mdm_1_0.xdc]
  read_xdc -ref system_clk_wiz_1_0 -cells inst c:/fpga_ember/fpga_co/gw/ep/projector_test_build.srcs/sources_1/bd/system/ip/system_clk_wiz_1_0/system_clk_wiz_1_0.xdc
  set_property processing_order EARLY [get_files c:/fpga_ember/fpga_co/gw/ep/projector_test_build.srcs/sources_1/bd/system/ip/system_clk_wiz_1_0/system_clk_wiz_1_0.xdc]
  read_xdc -prop_thru_buffers -ref system_clk_wiz_1_0 -cells inst c:/fpga_ember/fpga_co/gw/ep/projector_test_build.srcs/sources_1/bd/system/ip/system_clk_wiz_1_0/system_clk_wiz_1_0_board.xdc
  set_property processing_order EARLY [get_files c:/fpga_ember/fpga_co/gw/ep/projector_test_build.srcs/sources_1/bd/system/ip/system_clk_wiz_1_0/system_clk_wiz_1_0_board.xdc]
  read_xdc -ref system_rst_clk_wiz_1_100M_0 c:/fpga_ember/fpga_co/gw/ep/projector_test_build.srcs/sources_1/bd/system/ip/system_rst_clk_wiz_1_100M_0/system_rst_clk_wiz_1_100M_0.xdc
  set_property processing_order EARLY [get_files c:/fpga_ember/fpga_co/gw/ep/projector_test_build.srcs/sources_1/bd/system/ip/system_rst_clk_wiz_1_100M_0/system_rst_clk_wiz_1_100M_0.xdc]
  read_xdc -prop_thru_buffers -ref system_rst_clk_wiz_1_100M_0 c:/fpga_ember/fpga_co/gw/ep/projector_test_build.srcs/sources_1/bd/system/ip/system_rst_clk_wiz_1_100M_0/system_rst_clk_wiz_1_100M_0_board.xdc
  set_property processing_order EARLY [get_files c:/fpga_ember/fpga_co/gw/ep/projector_test_build.srcs/sources_1/bd/system/ip/system_rst_clk_wiz_1_100M_0/system_rst_clk_wiz_1_100M_0_board.xdc]
  read_xdc C:/fpga_ember/fpga_co/gw/par/projector_test_build_top.xdc
  link_design -top projector_test_build_top -part xc7k325tffg900-2
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
}

start_step opt_design
set rc [catch {
  create_msg_db opt_design.pb
  catch {write_debug_probes -quiet -force debug_nets}
  catch {update_ip_catalog -quiet -current_ip_cache c:/fpga_ember/fpga_co/gw/ep/projector_test_build.cache}
  opt_design 
  write_checkpoint -force projector_test_build_top_opt.dcp
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
}

start_step place_design
set rc [catch {
  create_msg_db place_design.pb
  place_design 
  write_checkpoint -force projector_test_build_top_placed.dcp
  catch { report_io -file projector_test_build_top_io_placed.rpt }
  catch { report_clock_utilization -file projector_test_build_top_clock_utilization_placed.rpt }
  catch { report_utilization -file projector_test_build_top_utilization_placed.rpt -pb projector_test_build_top_utilization_placed.pb }
  catch { report_control_sets -verbose -file projector_test_build_top_control_sets_placed.rpt }
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
}

start_step route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force projector_test_build_top_routed.dcp
  catch { report_drc -file projector_test_build_top_drc_routed.rpt -pb projector_test_build_top_drc_routed.pb }
  catch { report_timing_summary -warn_on_violation -file projector_test_build_top_timing_summary_routed.rpt -pb projector_test_build_top_timing_summary_routed.pb }
  catch { report_power -file projector_test_build_top_power_routed.rpt -pb projector_test_build_top_power_summary_routed.pb }
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
}

start_step write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  catch { write_bmm -force projector_test_build_top_bd.bmm }
  write_bitstream -force projector_test_build_top.bit 
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
}
