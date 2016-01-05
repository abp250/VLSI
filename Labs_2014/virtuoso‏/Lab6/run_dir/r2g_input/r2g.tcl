##################################################
#                                                #
# RC script file generated in SOC Encounter      #
# created on: 10/24/2014 17:28:34                  #
# script file: ./r2g_input/r2g.tcl                  #
#                                                #
##################################################

if {[catch {

#
# private namespace "ec" to prevent name clash
#
namespace eval ec {}

# start timer
puts "Start at: [clock format [clock seconds] -format {%x %X}]"
set ec::start [clock seconds]

#####################################################################
# Setup file, directories, and variables
#####################################################################

set ec::pwd             /home/anhho7/Desktop/EE465/Lab6/run_dir
set ec::inDir           ./r2g_input
set ec::outDir          ./r2g_output
set ec::reportDir       ./r2g_output/.report

set ec::SYN_EFFORT      medium
set ec::MAP_EFFORT      high
set ec::INCR_EFFORT     high

set ec::RTL_PATH        ./
set ec::LIB_PATH        ./

set ec::LIBRARY         ../encounter/libdir/lib/tcbn65gpluswc.lib
set ec::VERILOG_LIST    ../../Lab4/rc/syn/run_dir/design_mapped.v
set ec::VERILOG_VERSION 1995
set ec::VHDL_LIST       {}
set ec::VHDL_VERSION    1993

set ec::SDC             ../../Lab4/rc/syn/run_dir/design_mapped.sdc


set ec::SUPPRESS_MSG    {LBR-30 LBR-31}

# include needed script
include load_etc.tcl

#####################################################################
# Preset global variables and attributes
#####################################################################

# define diagnostic variables
set iopt_stats 1
set global_map_report 1
set path_disable_priority 0
# set report_unfolding 1
# set cost_grp_details_in_iopt 1

# define QoR related variables
# set global_area 2  ; # valid range: 0 through 6
# set dont_downsize_components 1
# set map_slackq 0
# set final_remaps 0
# set initial_target 0
# set crr 1
set crr_max_tries 300  ; # higher the number, more iterations: not much runtime penalty

# define tool setup and compatibility
set_attribute information_level 9 /  ; # valid range: 1 (least verbose) through 9 (most verbose)
set_attribute hdl_max_loop_limit 1024 /
set_attribute hdl_reg_naming_style %s_reg%s /
set_attribute gen_module_prefix G2C_DP_ /
# set_attribute tns_opto 1 /
set_attribute optimize_constant_0_flops false /
set_attribute optimize_constant_1_flops false /
set_attribute input_pragma_keyword {cadence synopsys get2chip g2c} /
set_attribute synthesis_off_command translate_off /
set_attribute synthesis_on_command translate_on /
set_attribute input_case_cover_pragma {full_case} /
set_attribute input_case_decode_pragma {parallel_case} /
set_attribute input_synchro_reset_pragma sync_set_reset /
set_attribute input_synchro_reset_blk_pragma sync_set_reset_local /
set_attribute input_asynchro_reset_pragma async_set_reset /
set_attribute input_asynchro_reset_blk_pragma async_set_reset_local /
set_attribute script_begin dc_script_begin /
set_attribute script_end dc_script_end /

# suppress messages
suppress_messages $ec::SUPPRESS_MSG

# setup shrink_factor attribute
set_attribute shrink_factor 1.0 /

#####################################################################
# RTL and libraries setup
#####################################################################

# search paths
set_attribute hdl_search_path $ec::RTL_PATH /
set_attribute lib_search_path $ec::LIB_PATH /

# timing libraries
set_attribute library $ec::LIBRARY

# physical libraries
set_attribute lef_library {../encounter/libdir/lef/tcbn65gplus_8lmT2.lef}

# report time and memory
puts "\nEC INFO: Total cpu-time and memory after SETUP: [get_attr runtime /] sec., [get_attr memory_usage /] MBytes.\n"

#####################################################################
# Load RTL
#####################################################################

read_hdl $ec::VERILOG_LIST

# report time and memory
puts "\nEC INFO: Total cpu-time and memory after LOAD: [get_attr runtime /] sec., [get_attr memory_usage /] MBytes.\n"

#####################################################################
# Elaborate
#####################################################################

elaborate

# check multi-designs
set design_list [find / -design designs/*]
if {[llength $design_list] > 1} {
  foreach design $design_list {
     cd $design 
     break       
  }
}

# remove assigns
set_attr remove_assigns true /
set_remove_assign_options -skip_unconstrained

# report time and memory
puts "\nEC INFO: Total cpu-time and memory after ELAB: [get_attr runtime /] sec., [get_attr memory_usage /] MBytes.\n"

#####################################################################
# Constraint setup
#####################################################################

# read sdc constraint
foreach ec::FILE_NAME $ec::SDC {
  read_sdc $ec::FILE_NAME
}

# report time and memory
puts "\nEC INFO: Total cpu-time and memory after CONSTRAINT: [get_attr runtime /] sec., [get_attr memory_usage /] MBytes.\n"

#####################################################################
# Define cost groups (clock-clock, clock-output, input-clock, input-output)
#####################################################################

if {[llength [all des seqs]] > 0} {
  define_cost_group -name I2C
  define_cost_group -name C2O
  define_cost_group -name C2C
  path_group -from [all des seqs] -to [all des seqs] -group C2C -name C2C
  path_group -from [all des seqs] -to [all des outs] -group C2O -name C2O
  path_group -from [all des inps] -to [all des seqs] -group I2C -name I2C
}
define_cost_group -name I2O
path_group -from [all des inps] -to [all des outs] -group I2O -name I2O

#####################################################################
# Initial reports
#####################################################################

# print out the exceptions
set ec::XCEP [find /designs* -exception *]
puts "\nEC INFO: Total numbers of exceptions: [llength $ec::XCEP]\n"
catch {open $ec::reportDir/exception.all "w"} ec::FXCEP
puts $ec::FXCEP "Total numbers of exceptions: [llength $ec::XCEP]\n"
foreach ec::X $ec::XCEP {
  puts $ec::FXCEP $ec::X
}
close $ec::FXCEP

# report time and memory
puts "\nEC INFO: Total cpu-time and memory after POST-SDC: [get_attr runtime /] sec., [get_attr memory_usage /] MBytes.\n"

# report initial design
report design > $ec::reportDir/init.design

# report initial gates
report gates > $ec::reportDir/init.gate

# report initial area
report area > $ec::reportDir/init.area

# report initial timing
report timing -full > $ec::reportDir/init.timing

# report initial timing groups
report timing -end -slack 0 > $ec::reportDir/init.timing.ep
report timing -from [dc::all_inputs] > $ec::reportDir/init.timing.in
report timing -to   [dc::all_outputs] > $ec::reportDir/init.timing.out
set ec::CNT 1
foreach ec::CLK [find /designs* -clock *] {
  exec echo "####################" > $ec::reportDir/init.timing.clk$ec::CNT
  exec echo "# from clock: $ec::CLK" >> $ec::reportDir/init.timing.clk$ec::CNT
  exec echo "# to clock: $ec::CLK" >> $ec::reportDir/init.timing.clk$ec::CNT
  exec echo "####################" >> $ec::reportDir/init.timing.clk$ec::CNT
  report timing -from $ec::CLK -to $ec::CLK >> $ec::reportDir/init.timing.clk$ec::CNT
  incr ec::CNT
}

# report initial summary
puts "\nEC INFO: Reporting Initial QoR below...\n"
redirect -tee $ec::reportDir/init.qor {report qor}
puts "\nEC INFO: Reporting Initial Summary below...\n"
redirect -tee $ec::reportDir/init.summary {report summary}

#####################################################################
# synthesize -to_generic -effort $ec::SYN_EFFORT
#####################################################################

synthesize -to_generic -effort $ec::SYN_EFFORT

# report time and memory
puts "\nEC INFO: Total cpu-time and memory after SYN2GEN: [get_attr runtime /] sec., [get_attr memory_usage /] MBytes.\n"

# report syn-to-generic design
report design > $ec::reportDir/syn2gen.design

# report syn-to-generic gates
report gates > $ec::reportDir/syn2gen.gate

# report syn-to-generic area
report area > $ec::reportDir/syn2gen.area

# report syn-to-generic timing
report timing -full > $ec::reportDir/syn2gen.timing

# report syn-to-generic timing groups
report timing -end -slack 0 > $ec::reportDir/syn2gen.timing.ep
report timing -from [dc::all_inputs] > $ec::reportDir/syn2gen.timing.in
report timing -to   [dc::all_outputs] > $ec::reportDir/syn2gen.timing.out
set ec::CNT 1
foreach ec::CLK [find /designs* -clock *] {
  exec echo "####################" > $ec::reportDir/syn2gen.timing.clk$ec::CNT
  exec echo "# from clock: $ec::CLK" >> $ec::reportDir/syn2gen.timing.clk$ec::CNT
  exec echo "# to clock: $ec::CLK" >> $ec::reportDir/syn2gen.timing.clk$ec::CNT
  exec echo "####################" >> $ec::reportDir/syn2gen.timing.clk$ec::CNT
  report timing -from $ec::CLK -to $ec::CLK >> $ec::reportDir/syn2gen.timing.clk$ec::CNT
  incr ec::CNT
}

#####################################################################
# Define the ungrouping options (if there is any)
#####################################################################

# all_ungroup_under [find / -instance <block_name>]

#####################################################################
# synthesize -to_mapped -effort $ec::MAP_EFFORT
#####################################################################

set incremental_opto 0
synthesize -to_mapped -effort $ec::MAP_EFFORT

# report time and memory
puts "\nEC INFO: Total cpu-time and memory after SYN2MAP: [get_attr runtime /] sec., [get_attr memory_usage /] MBytes.\n"

# report syn-to-mapped design
report design > $ec::reportDir/syn2map.design

# report syn-to-mapped gates
report gates > $ec::reportDir/syn2map.gate

# report syn-to-mapped area
report area > $ec::reportDir/syn2map.area

# report syn-to-mapped timing
report timing -full > $ec::reportDir/syn2map.timing

# report syn-to-generic timing groups
report timing -end -slack 0 > $ec::reportDir/syn2map.timing.ep
report timing -from [dc::all_inputs] > $ec::reportDir/syn2map.timing.in
report timing -to   [dc::all_outputs] > $ec::reportDir/syn2map.timing.out
set ec::CNT 1
foreach ec::CLK [find /designs* -clock *] {
  exec echo "####################" > $ec::reportDir/syn2map.timing.clk$ec::CNT
  exec echo "# from clock: $ec::CLK" >> $ec::reportDir/syn2map.timing.clk$ec::CNT
  exec echo "# to clock: $ec::CLK" >> $ec::reportDir/syn2map.timing.clk$ec::CNT
  exec echo "####################" >> $ec::reportDir/syn2map.timing.clk$ec::CNT
  report timing -from $ec::CLK -to $ec::CLK >> $ec::reportDir/syn2map.timing.clk$ec::CNT
  incr ec::CNT
}

#####################################################################
# synthesize -to_mapped -incremental -effort $ec::INCR_EFFORT
#####################################################################

set incremental_opto 1
synthesize -to_mapped -incremental -effort $ec::INCR_EFFORT

# report time and memory
puts "\nEC INFO: Total cpu-time and memory after INCR: [get_attr runtime /] sec., [get_attr memory_usage /] MBytes.\n"

# report syn-to-mapped design
report design > $ec::reportDir/incr.design

# report syn-to-mapped gates
report gates > $ec::reportDir/incr.gate

# report syn-to-mapped area
report area > $ec::reportDir/incr.area

# report syn-to-mapped timing
report timing -full > $ec::reportDir/incr.timing

# report syn-to-generic timing groups
report timing -end -slack 0 > $ec::reportDir/incr.timing.ep
report timing -from [dc::all_inputs] > $ec::reportDir/incr.timing.in
report timing -to   [dc::all_outputs] > $ec::reportDir/incr.timing.out
set ec::CNT 1
foreach ec::CLK [find /designs* -clock *] {
  exec echo "####################" > $ec::reportDir/incr.timing.clk$ec::CNT
  exec echo "# from clock: $ec::CLK" >> $ec::reportDir/incr.timing.clk$ec::CNT
  exec echo "# to clock: $ec::CLK" >> $ec::reportDir/incr.timing.clk$ec::CNT
  exec echo "####################" >> $ec::reportDir/incr.timing.clk$ec::CNT
  report timing -from $ec::CLK -to $ec::CLK >> $ec::reportDir/incr.timing.clk$ec::CNT
  incr ec::CNT
}

# report time and memory
puts "\nEC INFO: Total cpu-time and memory after ASSIGN: [get_attr runtime /] sec., [get_attr memory_usage /] MBytes.\n"

# report final design rule
report design > $ec::reportDir/final.design

# report final gates
report gates > $ec::reportDir/final.gate

# report final area
report area > $ec::reportDir/final.area

# report final timing
report timing -full > $ec::reportDir/final.timing

# report final timing groups
report timing -end -slack 0 > $ec::reportDir/final.timing.ep
report timing -from [dc::all_inputs] > $ec::reportDir/final.timing.in
report timing -to   [dc::all_outputs] > $ec::reportDir/final.timing.out
set ec::CNT 1
foreach ec::CLK [find /designs* -clock *] {
  exec echo "####################" > $ec::reportDir/final.timing.clk$ec::CNT
  exec echo "# from clock: $ec::CLK" >> $ec::reportDir/final.timing.clk$ec::CNT
  exec echo "# to clock: $ec::CLK" >> $ec::reportDir/final.timing.clk$ec::CNT
  exec echo "####################" >> $ec::reportDir/final.timing.clk$ec::CNT
  report timing -from $ec::CLK -to $ec::CLK >> $ec::reportDir/final.timing.clk$ec::CNT
  incr ec::CNT
}

#####################################################################
# BEGIN POSTAMBLE: DO NOT EDIT

# Write the netlist
write -m > ./r2g_output/r2g.v

# Write SDC file
write_sdc > ./r2g_output/r2g.sdc

# Write RC script file
write_script > ./r2g_output/r2g.g

# END POSTAMBLE
#####################################################################

# report time and memory
puts "\nEC INFO: Total cpu-time and memory after WRITE: [get_attr runtime /] sec., [get_attr memory_usage /] MBytes.\n"

#####################################################################
# Noload/zero-load analysis on final result
#####################################################################

set_attribute interconnect_mode wireload /
set_attribute force_wireload "none" /des*/*
set_attribute wireload_mode top /
report timing -full > $ec::reportDir/final.noload.timing
report timing -full

# report time and memory
puts "\nEC INFO: Total cpu-time and memory after FINAL: [get_attr runtime /] sec., [get_attr memory_usage /] MBytes.\n"

# end timer
puts "\nEC INFO: End at: [clock format [clock seconds] -format {%x %X}]"
set ec::end [clock seconds]
set ec::seconds [expr $ec::end - $ec::start]
puts "\nEC INFO: Elapsed-time: $ec::seconds seconds\n"

# done
exit

} msg]} {
  puts "\nEC ERROR: RC could not finish successfully. Force an exit now. ($msg)\n"
  exit -822
}

