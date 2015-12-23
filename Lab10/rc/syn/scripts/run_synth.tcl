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
#rm /designs/*


#### Step 2 ####
##This must point to your VHDL/verilog file
load -v2001 ../../elevator.v
set_attribute lp_insert_clock_gating true


#### Step 3 ####
## This builds the general block
elaborate

dc::set_time_unit -nanoseconds
dc::set_load_unit -picofarads
define_clock -period 1000 -name clk [dc::get_ports {iCLK}] -rise 1 -fall 1
set_attribute lp_power_unit {nW}
set_attribute max_leakage_power 100000 /designs/elevator


set_attribute power_optimization_effort high
synthesize -to_mapped -effort high


report area > ${OUTPUT_DIR}/area.rpt
report gates > ${OUTPUT_DIR}/gates.rpt
report timing > ${OUTPUT_DIR}/timing.rpt
report timing -lint > ${OUTPUT_DIR}/lint.rpt
report summary > ${OUTPUT_DIR}/summary.rpt
report power > ${OUTPUT_DIR}/power.rpt
report clock_gating -summary > ${OUTPUT_DIR}/clk_gating.rpt

write -mapped > ${OUTPUT_DIR}/jpeg_mapped.v
write_script > ${OUTPUT_DIR}/jpeg_mapped.g
write_sdc > ${OUTPUT_DIR}/jpeg_mapped.sdc
