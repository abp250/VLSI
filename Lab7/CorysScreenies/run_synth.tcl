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
set_attribute retime true /ALT_MULTADD_pipe
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
read_sdc ./scripts/design.sdc


#### Step 5 ####
##This synthesizes your code
synthesize -to_mapped -effort high

#set_attribute unmap_scan_flops true
#retime -min_delay
#report timing
#replace_scan
#connect_scan_chain -auto_create
#report dft_chains
#report clock_gating
#report dft_setup
#synthesize -to_mapped -incremental
#report timing


#### Step 6 ####
## This writes area/timing/power reports 
report area > ${OUTPUT_DIR}/retime_area.rpt
report gates > ${OUTPUT_DIR}/retime_gates.rpt
report timing > ${OUTPUT_DIR}/retime_timing.rpt
report timing -lint > ${OUTPUT_DIR}/retime_lint.rpt
report summary > ${OUTPUT_DIR}/retime_summary.rpt
report power > ${OUTPUT_DIR}/retime_power.rpt


#### Step 7 ####
## This writes synthesized design files
write_sdc > ${OUTPUT_DIR}/design_mapped.sdc
write -mapped > ${OUTPUT_DIR}/design_mapped.v
write_script > ${OUTPUT_DIR}/design_mapped.g

