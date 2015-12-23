set OUTPUT_DIR ./out_dir
if { ![file exists ${OUTPUT_DIR}] }  { sh mkdir ${OUTPUT_DIR} }

set_attribute lib_search_path ../libdir
set_attribute gui_sv_threshold 10000

## This defines the libraries to use
set_attribute library {tcbn65gpluswc.lib}

load -v2001 ../rtl/ALT_MULTADD.v

elaborate


dc::set_time_unit -picoseconds	
dc::set_load_unit -picofarads
define_clock -period 500 -name clk [dc::get_ports {iCLK}] -rise 50 -fall 50
set_attribute clock_network_late_latency 1 clk
set_attribute clock_source_early_latency 1.5 clk
set_attribute clock_setup_uncertainty {100 50} clk
set_attribute slew {100 110 110 120} [find / -clock clk]
report clocks
external_delay -clock clk -input 200 -name in_delay /designs/ALT_MULTADD/ports_in/* 
external_delay -clock clk -output 200 -name out_delay /designs/ALT_MULTADD/ports_out/*
set_attribute external_driver [find [find / -libcell MUX2ND2] -libpin ZN] /designs/ALT_MULTADD/ports_in/*
set_attribute external_pin_cap 2 /designs/ALT_MULTADD/ports_out/*
set_attribute max_fanout 10 /designs/*
