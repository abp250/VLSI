######################################################################

# Created by Encounter(R) RTL Compiler v12.10-s012_1 on Thu Dec 10 20:44:21 -0600 2015

# This file contains the RC script for /designs/triangle

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
define_clock -name clk -domain domain_1 -period 400.0 -divide_period 1 -rise 1 -divide_rise 10 -fall 1 -divide_fall 10 -design /designs/triangle /designs/triangle/ports_in/clk
define_cost_group -design /designs/triangle -name cg_enable_group_clk
define_cost_group -design /designs/triangle -name clk
external_delay -accumulate -input {0.0 no_value 0.0 no_value} -clock /designs/triangle/timing/clock_domains/domain_1/clk -name create_clock_delay_domain_1_clk_R_0 /designs/triangle/ports_in/clk
set_attribute -quiet clock_network_latency_included true /designs/triangle/timing/external_delays/create_clock_delay_domain_1_clk_R_0
external_delay -accumulate -input {no_value 0.0 no_value 0.0} -clock /designs/triangle/timing/clock_domains/domain_1/clk -edge_fall -name create_clock_delay_domain_1_clk_F_0 /designs/triangle/ports_in/clk
set_attribute -quiet clock_network_latency_included true /designs/triangle/timing/external_delays/create_clock_delay_domain_1_clk_F_0
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/triangle/timing/clock_domains/domain_1/clk -name design.sdc_line_3 /designs/triangle/ports_in/nt
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/triangle/timing/clock_domains/domain_1/clk -name design.sdc_line_4 {{/designs/triangle/ports_in/xi[2]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/triangle/timing/clock_domains/domain_1/clk -name design.sdc_line_4_1_1 {{/designs/triangle/ports_in/xi[1]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/triangle/timing/clock_domains/domain_1/clk -name design.sdc_line_4_2_1 {{/designs/triangle/ports_in/xi[0]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/triangle/timing/clock_domains/domain_1/clk -name design.sdc_line_5 {{/designs/triangle/ports_in/yi[2]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/triangle/timing/clock_domains/domain_1/clk -name design.sdc_line_5_3_1 {{/designs/triangle/ports_in/yi[1]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/triangle/timing/clock_domains/domain_1/clk -name design.sdc_line_5_4_1 {{/designs/triangle/ports_in/yi[0]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/triangle/timing/clock_domains/domain_1/clk -name design.sdc_line_6 /designs/triangle/ports_in/reset
path_group -paths [specify_paths -to /designs/triangle/timing/clock_domains/domain_1/clk]  -name clk -group /designs/triangle/timing/cost_groups/clk -user_priority -1047552
path_group -paths [specify_paths -through {/designs/triangle/instances_hier/RC_CG_HIER_INST0/pins_in/enable /designs/triangle/instances_hier/RC_CG_HIER_INST1/pins_in/enable /designs/triangle/instances_hier/RC_CG_HIER_INST2/pins_in/enable /designs/triangle/instances_hier/RC_CG_HIER_INST3/pins_in/enable /designs/triangle/instances_hier/RC_CG_HIER_INST4/pins_in/enable /designs/triangle/instances_hier/RC_CG_HIER_INST5/pins_in/enable /designs/triangle/instances_hier/RC_CG_HIER_INST6/pins_in/enable /designs/triangle/instances_hier/RC_CG_HIER_INST7/pins_in/enable /designs/triangle/instances_hier/RC_CG_HIER_INST8/pins_in/enable /designs/triangle/instances_hier/RC_CG_HIER_INST9/pins_in/enable /designs/triangle/instances_hier/RC_CG_HIER_INST10/pins_in/enable /designs/triangle/instances_hier/RC_CG_HIER_INST11/pins_in/enable /designs/triangle/instances_hier/RC_CG_HIER_INST12/pins_in/enable /designs/triangle/instances_hier/RC_CG_HIER_INST13/pins_in/enable /designs/triangle/instances_hier/RC_CG_HIER_INST14/pins_in/enable /designs/triangle/instances_hier/RC_CG_HIER_INST15/pins_in/enable /designs/triangle/instances_hier/RC_CG_HIER_INST16/pins_in/enable /designs/triangle/instances_hier/RC_CG_HIER_INST17/pins_in/enable /designs/triangle/instances_hier/RC_CG_HIER_INST18/pins_in/enable /designs/triangle/instances_hier/RC_CG_HIER_INST19/pins_in/enable}]  -name cg_enable_group_clk -group /designs/triangle/timing/cost_groups/cg_enable_group_clk
# BEGIN DFT SECTION
set_attribute -quiet dft_scan_style muxed_scan /
set_attribute -quiet dft_scanbit_waveform_analysis false /
# END DFT SECTION
set_attribute -quiet hdl_filelist {{default -v2001 {SYNTHESIS} {../../triangle.v}}} /designs/triangle
set_attribute -quiet hdl_user_name triangle /designs/triangle
set_attribute -quiet ovf_current_verification_directory fv/triangle /designs/triangle
set_attribute -quiet max_leakage_power 10000.0 /designs/triangle
set_attribute -quiet logical_hier false /designs/triangle/subdesigns/RC_CG_MOD
set_attribute -quiet boundary_opto false /designs/triangle/subdesigns/RC_CG_MOD
set_attribute -quiet logical_hier false /designs/triangle/subdesigns/RC_CG_MOD_1
set_attribute -quiet boundary_opto false /designs/triangle/subdesigns/RC_CG_MOD_1
set_attribute -quiet logical_hier false /designs/triangle/subdesigns/RC_CG_MOD_10
set_attribute -quiet boundary_opto false /designs/triangle/subdesigns/RC_CG_MOD_10
set_attribute -quiet logical_hier false /designs/triangle/subdesigns/RC_CG_MOD_11
set_attribute -quiet boundary_opto false /designs/triangle/subdesigns/RC_CG_MOD_11
set_attribute -quiet logical_hier false /designs/triangle/subdesigns/RC_CG_MOD_12
set_attribute -quiet boundary_opto false /designs/triangle/subdesigns/RC_CG_MOD_12
set_attribute -quiet logical_hier false /designs/triangle/subdesigns/RC_CG_MOD_13
set_attribute -quiet boundary_opto false /designs/triangle/subdesigns/RC_CG_MOD_13
set_attribute -quiet logical_hier false /designs/triangle/subdesigns/RC_CG_MOD_14
set_attribute -quiet boundary_opto false /designs/triangle/subdesigns/RC_CG_MOD_14
set_attribute -quiet logical_hier false /designs/triangle/subdesigns/RC_CG_MOD_15
set_attribute -quiet boundary_opto false /designs/triangle/subdesigns/RC_CG_MOD_15
set_attribute -quiet logical_hier false /designs/triangle/subdesigns/RC_CG_MOD_16
set_attribute -quiet boundary_opto false /designs/triangle/subdesigns/RC_CG_MOD_16
set_attribute -quiet logical_hier false /designs/triangle/subdesigns/RC_CG_MOD_17
set_attribute -quiet boundary_opto false /designs/triangle/subdesigns/RC_CG_MOD_17
set_attribute -quiet logical_hier false /designs/triangle/subdesigns/RC_CG_MOD_451
set_attribute -quiet boundary_opto false /designs/triangle/subdesigns/RC_CG_MOD_451
set_attribute -quiet logical_hier false /designs/triangle/subdesigns/RC_CG_MOD_451_1
set_attribute -quiet boundary_opto false /designs/triangle/subdesigns/RC_CG_MOD_451_1
set_attribute -quiet logical_hier false /designs/triangle/subdesigns/RC_CG_MOD_2
set_attribute -quiet boundary_opto false /designs/triangle/subdesigns/RC_CG_MOD_2
set_attribute -quiet logical_hier false /designs/triangle/subdesigns/RC_CG_MOD_3
set_attribute -quiet boundary_opto false /designs/triangle/subdesigns/RC_CG_MOD_3
set_attribute -quiet logical_hier false /designs/triangle/subdesigns/RC_CG_MOD_4
set_attribute -quiet boundary_opto false /designs/triangle/subdesigns/RC_CG_MOD_4
set_attribute -quiet logical_hier false /designs/triangle/subdesigns/RC_CG_MOD_5
set_attribute -quiet boundary_opto false /designs/triangle/subdesigns/RC_CG_MOD_5
set_attribute -quiet logical_hier false /designs/triangle/subdesigns/RC_CG_MOD_6
set_attribute -quiet boundary_opto false /designs/triangle/subdesigns/RC_CG_MOD_6
set_attribute -quiet logical_hier false /designs/triangle/subdesigns/RC_CG_MOD_7
set_attribute -quiet boundary_opto false /designs/triangle/subdesigns/RC_CG_MOD_7
set_attribute -quiet logical_hier false /designs/triangle/subdesigns/RC_CG_MOD_8
set_attribute -quiet boundary_opto false /designs/triangle/subdesigns/RC_CG_MOD_8
set_attribute -quiet logical_hier false /designs/triangle/subdesigns/RC_CG_MOD_9
set_attribute -quiet boundary_opto false /designs/triangle/subdesigns/RC_CG_MOD_9
set_attribute -quiet logical_hier false /designs/triangle/subdesigns/mult_signed
set_attribute -quiet rtlop_info {{} 0 0 0 3 0 48 1 2 1 1 2 0 1} /designs/triangle/instances_hier/mul_211_31
