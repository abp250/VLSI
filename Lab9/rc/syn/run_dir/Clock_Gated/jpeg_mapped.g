######################################################################

# Created by Encounter(R) RTL Compiler v10.10-s209_1 on Tue Nov 10 11:18:39 -0600 2015

# This file contains the RC script for /designs/ALT_MULTADD_9

######################################################################

set_attribute -quiet lp_insert_clock_gating true /
set_attribute -quiet lib_search_path ../libdir /
set_attribute -quiet power_optimization_effort high /
set_attribute -quiet interconnect_mode wireload /
set_attribute -quiet wireload_mode segmented /
set_attribute -quiet wireload_selection /libraries/tcbn65gpluswc/wireload_selections/WireAreaForZero /
set_attribute -quiet tree_type balanced_tree /libraries/tcbn65gpluswc/operating_conditions/WCCOM
set_attribute -quiet tree_type balanced_tree /libraries/tcbn65gpluswc/operating_conditions/_nominal_
# BEGIN MSV SECTION
# END MSV SECTION
define_clock -name clk -domain domain_1 -period 200.0 -divide_period 1 -rise 1 -divide_rise 20 -fall 1 -divide_fall 20 -design /designs/ALT_MULTADD_9 /designs/ALT_MULTADD_9/ports_in/iCLK
define_cost_group -design /designs/ALT_MULTADD_9 -name cg_enable_group_clk
path_group -paths [specify_paths -through /designs/ALT_MULTADD_9/instances_hier/RC_CG_HIER_INST0/pins_in/enable]  -name cg_enable_group_clk -group /designs/ALT_MULTADD_9/timing/cost_groups/cg_enable_group_clk
# BEGIN DFT SECTION
set_attribute -quiet dft_scan_style muxed_scan /
set_attribute -quiet dft_scanbit_waveform_analysis false /
# END DFT SECTION
set_attribute -quiet hdl_filelist { {default -v2001 {} {../../ALT_MULTADD_redid.v}}} /designs/ALT_MULTADD_9
set_attribute -quiet hdl_user_name ALT_MULTADD_9 /designs/ALT_MULTADD_9
set_attribute -quiet ovf_current_verification_directory fv/ALT_MULTADD_9 /designs/ALT_MULTADD_9
set_attribute -quiet max_leakage_power 100000.0 /designs/ALT_MULTADD_9
set_attribute -quiet logical_hier false /designs/ALT_MULTADD_9/subdesigns/RC_CG_MOD
set_attribute -quiet boundary_opto false /designs/ALT_MULTADD_9/subdesigns/RC_CG_MOD
set_attribute -quiet logical_hier false /designs/ALT_MULTADD_9/subdesigns/csa_tree_add_116_30_group_39
set_attribute -quiet logical_hier false /designs/ALT_MULTADD_9/subdesigns/add_unsigned_carry
set_attribute -quiet rtlop_info {{} 0 0 0 3 0 8 0 3 1 1 0} /designs/ALT_MULTADD_9/instances_hier/final_adder_add_113_21
set_attribute -quiet logical_hier false /designs/ALT_MULTADD_9/subdesigns/mult_unsigned_134
set_attribute -quiet rtlop_info {{} 0 0 0 3 0 47 0 2 1 1 0} /designs/ALT_MULTADD_9/instances_hier/mul_106_12
