## This sets the name of the directory in which area/timing/power reports 
## and synthesized (mapped) netlists are stored.
set OUTPUT_DIR ./run_dir
if { ![file exists ${OUTPUT_DIR}] }  { sh mkdir ${OUTPUT_DIR} }


#### Step 1 ####
## This tells the compiler where to look for the libraries
set_attribute lib_search_path ../libdir

## This defines the libraries to use
set_attribute library {tcbn65gpluswc.lib}
##set_attribute library {tcbn65gplustc.lib}
##set_attribute library {tcbn90ghpbc_ccs.lib}
##set_attribute lp_insert_clock_gating true 

#set_attribute lp_insert_operand_isolation true 

#### Step 2 ####
##This must point to your VHDL/verilog file
source ./scripts/read_rtl.tcl


#### Step 3 ####
## This builds the general block
elaborate

#set_attribute dft_scan_style {muxed_scan|clocked_lssd_scan} 
#define_dft  test_mode test_mode_signal -active high
#define_dft shift_enable shift_enable_signal -active high
#check_dft_rules

#### Step 4 ####
## This allows you to define a clock and the maximum allowable delays
## READ MORE ABOUT THIS SO THAT YOU CAN PROPERLY CREATE A TIMING FILE
#set clock [define_clock -period 300 -name clk]
#external delay -input 300 -edge rise clk
#external delay -output 2000 -edge rise p1

dc::set_time_unit -picoseconds	
dc::set_load_unit -picofarads
define_clock -period 2000 -name clk [dc::get_ports {iCLK}] -rise 10 -fall 10
set_attribute clock_network_late_latency 2 clk
set_attribute clock_source_early_latency 3 clk
set_attribute clock_setup_uncertainty {200 100} clk
set_attribute slew {100 100 100 100} [find / -clock clk]
report clocks
external_delay -clock clk -input 100 -name in_delay /designs/ALT_MULTADD/ports_in/* 
external_delay -clock clk -output 100 -name out_delay /designs/ALT_MULTADD/ports_out/*
set_attribute external_driver [find [find / -libcell MUX2ND2] -libpin ZN] /designs/ALT_MULTADD/ports_in/*
set_attribute external_pin_cap 5 /designs/ALT_MULTADD/ports_out/*
set_attribute max_fanout 5 /designs/*
set_attribute power_optimization_effort low
synthesize -to_mapped -effort low

report area > ${OUTPUT_DIR}/clockset12/area.rpt
report gates > ${OUTPUT_DIR}/clockset12/gates.rpt
report timing > ${OUTPUT_DIR}/clockset12/timing.rpt
report timing -lint > ${OUTPUT_DIR}/clockset12/lint.rpt
report summary > ${OUTPUT_DIR}/clockset12/summary.rpt
report power > ${OUTPUT_DIR}/clockset12/power.rpt
write -mapped > ${OUTPUT_DIR}/clockset12/jpeg_mapped.v
write_script > ${OUTPUT_DIR}/clockset12/jpeg_mapped.g
write_sdc > ${OUTPUT_DIR}/clockset12/jpeg_mapped.sdc
