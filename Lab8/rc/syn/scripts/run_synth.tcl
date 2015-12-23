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
load -v2001 ../rtl/ALT_MULTADD.v

#### Step 3 ####
## This builds the general block
elaborate


set_attribute lp_power_unit {nW}
set_attribute max_leakage_power 100000000 /designs/ALT_MULTADD_pipe

set_attribute power_optimization_effort low
synthesize -to_mapped -effort high


report area > ${OUTPUT_DIR}/area.rpt
report gates > ${OUTPUT_DIR}/gates.rpt
report timing > ${OUTPUT_DIR}/timing.rpt
report timing -lint > ${OUTPUT_DIR}/lint.rpt
report summary > ${OUTPUT_DIR}/summary.rpt
report power > ${OUTPUT_DIR}/power.rpt

write -mapped > ${OUTPUT_DIR}/jpeg_mapped.v
write_script > ${OUTPUT_DIR}/jpeg_mapped.g
write_sdc > ${OUTPUT_DIR}/jpeg_mapped.sdc
