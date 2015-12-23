######################################################################

# Created by Encounter(R) RTL Compiler v12.10-s012_1 on Sat Nov 14 14:48:27 -0600 2015

# This file contains the RC script for /designs/elevator

######################################################################

set_attribute -quiet lp_insert_clock_gating true /
set_attribute -quiet gui_auto_update false /
set_attribute -quiet lib_search_path ../libdir /
set_attribute -quiet power_optimization_effort high /
set_attribute -quiet ple_correlation_factors {1.9000 2.0000} /
set_attribute -quiet maximum_interval_of_vias infinity /
set_attribute -quiet interconnect_mode wireload /
set_attribute -quiet wireload_mode segmented /
set_attribute -quiet wireload_selection /libraries/tcbn65gpluswc/wireload_selections/WireAreaForZero /
set_attribute -quiet tree_type balanced_tree /libraries/tcbn65gpluswc/operating_conditions/WCCOM
set_attribute -quiet tree_type balanced_tree /libraries/tcbn65gpluswc/operating_conditions/_nominal_
# BEGIN MSV SECTION
# END MSV SECTION
define_clock -name clk -domain domain_1 -period 1000.0 -divide_period 1 -rise 1 -divide_rise 100 -fall 1 -divide_fall 100 -design /designs/elevator {}
define_cost_group -design /designs/elevator -name cg_enable_group_default
path_group -paths [specify_paths -through {/designs/elevator/instances_hier/RC_CG_HIER_INST1/pins_in/enable /designs/elevator/instances_hier/RC_CG_HIER_INST2/pins_in/enable /designs/elevator/instances_hier/RC_CG_DECLONE_HIER_INST/pins_in/enable}]  -name cg_enable_group_default -group /designs/elevator/timing/cost_groups/cg_enable_group_default
# BEGIN DFT SECTION
set_attribute -quiet dft_scan_style muxed_scan /
set_attribute -quiet dft_scanbit_waveform_analysis false /
# END DFT SECTION
set_attribute -quiet hdl_filelist {{default -v2001 {SYNTHESIS} {../../elevator.v}}} /designs/elevator
set_attribute -quiet hdl_user_name elevator /designs/elevator
set_attribute -quiet ovf_current_verification_directory fv/elevator /designs/elevator
set_attribute -quiet max_leakage_power 100000.0 /designs/elevator
set_attribute -quiet seq_reason_deleted {{dn_reg {{constant 0}}} {{nextstate_reg[0]} {{constant 0}}} {{nextstate_reg[1]} {{constant 0}}} {tr_reg {{constant 0}}} {up_reg {{constant 0}}} {{timer_reg[10]} {{constant 0}}}} /designs/elevator
set_attribute -quiet logical_hier false /designs/elevator/subdesigns/RC_CG_MOD_1
set_attribute -quiet boundary_opto false /designs/elevator/subdesigns/RC_CG_MOD_1
set_attribute -quiet logical_hier false /designs/elevator/subdesigns/RC_CG_MOD_2
set_attribute -quiet boundary_opto false /designs/elevator/subdesigns/RC_CG_MOD_2
set_attribute -quiet logical_hier false /designs/elevator/subdesigns/RC_CG_MOD
set_attribute -quiet boundary_opto false /designs/elevator/subdesigns/RC_CG_MOD
