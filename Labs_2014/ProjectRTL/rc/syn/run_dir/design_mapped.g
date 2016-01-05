######################################################################

# Created by Encounter(R) RTL Compiler v10.10-s209_1 on Wed Dec 17 20:34:25 -0600 2014

# This file contains the RC script for /designs/GCC

######################################################################

set_attribute -quiet lp_insert_clock_gating true /
set_attribute -quiet lib_search_path ../libdir /
set_attribute -quiet interconnect_mode wireload /
set_attribute -quiet wireload_mode segmented /
set_attribute -quiet avoid true /libraries/tcbn65gpluswc/libcells/FA1D0
set_attribute -quiet avoid true /libraries/tcbn65gpluswc/libcells/FA1D1
set_attribute -quiet avoid true /libraries/tcbn65gpluswc/libcells/FA1D2
set_attribute -quiet avoid true /libraries/tcbn65gpluswc/libcells/FA1D4
set_attribute -quiet wireload_selection /libraries/tcbn65gpluswc/wireload_selections/WireAreaForZero /
set_attribute -quiet tree_type balanced_tree /libraries/tcbn65gpluswc/operating_conditions/WCCOM
set_attribute -quiet tree_type balanced_tree /libraries/tcbn65gpluswc/operating_conditions/_nominal_
# BEGIN MSV SECTION
# END MSV SECTION
define_clock -name CLK -domain domain_1 -period 1200.0 -divide_period 1 -rise 0 -divide_rise 1 -fall 1 -divide_fall 2 -design /designs/GCC /designs/GCC/ports_in/CLK
define_cost_group -design /designs/GCC -name CLK
define_cost_group -design /designs/GCC -name cg_enable_group_CLK
external_delay -accumulate -input {0.0 no_value 0.0 no_value} -clock /designs/GCC/timing/clock_domains/domain_1/CLK -name create_clock_delay_domain_1_CLK_R_0 /designs/GCC/ports_in/CLK
set_attribute -quiet clock_network_latency_included true /designs/GCC/timing/external_delays/create_clock_delay_domain_1_CLK_R_0
external_delay -accumulate -input {no_value 0.0 no_value 0.0} -clock /designs/GCC/timing/clock_domains/domain_1/CLK -edge_fall -name create_clock_delay_domain_1_CLK_F_0 /designs/GCC/ports_in/CLK
set_attribute -quiet clock_network_latency_included true /designs/GCC/timing/external_delays/create_clock_delay_domain_1_CLK_F_0
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/GCC/timing/clock_domains/domain_1/CLK -name design.sdc_line_4 {{/designs/GCC/ports_in/X[7]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/GCC/timing/clock_domains/domain_1/CLK -name design.sdc_line_4_1_1 {{/designs/GCC/ports_in/X[6]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/GCC/timing/clock_domains/domain_1/CLK -name design.sdc_line_4_2_1 {{/designs/GCC/ports_in/X[5]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/GCC/timing/clock_domains/domain_1/CLK -name design.sdc_line_4_3_1 {{/designs/GCC/ports_in/X[4]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/GCC/timing/clock_domains/domain_1/CLK -name design.sdc_line_4_4_1 {{/designs/GCC/ports_in/X[3]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/GCC/timing/clock_domains/domain_1/CLK -name design.sdc_line_4_5_1 {{/designs/GCC/ports_in/X[2]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/GCC/timing/clock_domains/domain_1/CLK -name design.sdc_line_4_6_1 {{/designs/GCC/ports_in/X[1]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/GCC/timing/clock_domains/domain_1/CLK -name design.sdc_line_4_7_1 {{/designs/GCC/ports_in/X[0]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/GCC/timing/clock_domains/domain_1/CLK -name design.sdc_line_5 {{/designs/GCC/ports_in/Y[7]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/GCC/timing/clock_domains/domain_1/CLK -name design.sdc_line_5_8_1 {{/designs/GCC/ports_in/Y[6]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/GCC/timing/clock_domains/domain_1/CLK -name design.sdc_line_5_9_1 {{/designs/GCC/ports_in/Y[5]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/GCC/timing/clock_domains/domain_1/CLK -name design.sdc_line_5_10_1 {{/designs/GCC/ports_in/Y[4]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/GCC/timing/clock_domains/domain_1/CLK -name design.sdc_line_5_11_1 {{/designs/GCC/ports_in/Y[3]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/GCC/timing/clock_domains/domain_1/CLK -name design.sdc_line_5_12_1 {{/designs/GCC/ports_in/Y[2]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/GCC/timing/clock_domains/domain_1/CLK -name design.sdc_line_5_13_1 {{/designs/GCC/ports_in/Y[1]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/GCC/timing/clock_domains/domain_1/CLK -name design.sdc_line_5_14_1 {{/designs/GCC/ports_in/Y[0]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/GCC/timing/clock_domains/domain_1/CLK -name design.sdc_line_6 {{/designs/GCC/ports_in/W[3]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/GCC/timing/clock_domains/domain_1/CLK -name design.sdc_line_6_15_1 {{/designs/GCC/ports_in/W[2]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/GCC/timing/clock_domains/domain_1/CLK -name design.sdc_line_6_16_1 {{/designs/GCC/ports_in/W[1]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/GCC/timing/clock_domains/domain_1/CLK -name design.sdc_line_6_17_1 {{/designs/GCC/ports_in/W[0]}}
path_group -paths [specify_paths -to /designs/GCC/timing/clock_domains/domain_1/CLK]  -name CLK -group /designs/GCC/timing/cost_groups/CLK -user_priority -1047552
path_group -paths [specify_paths -through {/designs/GCC/instances_hier/RC_CG_HIER_INST0/pins_in/enable /designs/GCC/instances_hier/RC_CG_HIER_INST1/pins_in/enable /designs/GCC/instances_hier/RC_CG_HIER_INST2/pins_in/enable /designs/GCC/instances_hier/RC_CG_HIER_INST3/pins_in/enable /designs/GCC/instances_hier/RC_CG_HIER_INST4/pins_in/enable /designs/GCC/instances_hier/RC_CG_HIER_INST5/pins_in/enable /designs/GCC/instances_hier/RC_CG_HIER_INST6/pins_in/enable}]  -name cg_enable_group_CLK -group /designs/GCC/timing/cost_groups/cg_enable_group_CLK
# BEGIN DFT SECTION
set_attribute -quiet dft_scan_style muxed_scan /
set_attribute -quiet dft_scanbit_waveform_analysis false /
# END DFT SECTION
set_attribute -quiet hdl_user_name GCC /designs/GCC
set_attribute -quiet hdl_filelist { {default -v2001 {} {../rtl/GCC.v}} {default -v2001 {} {../rtl/Center.v}} {default -v2001 {} {../rtl/Comparator.v}} {default -v2001 {} {../rtl/Distance.v}}} /designs/GCC
set_attribute -quiet ovf_current_verification_directory fv/GCC /designs/GCC
set_attribute -quiet hdl_user_name Comparator /designs/GCC/subdesigns/Comparator_222
set_attribute -quiet hdl_user_name Comparator /designs/GCC/subdesigns/Comparator_224
set_attribute -quiet hdl_user_name Comparator /designs/GCC/subdesigns/Comparator_223
set_attribute -quiet hdl_user_name Comparator /designs/GCC/subdesigns/Comparator_221
set_attribute -quiet logical_hier false /designs/GCC/subdesigns/RC_CG_MOD
set_attribute -quiet boundary_opto false /designs/GCC/subdesigns/RC_CG_MOD
set_attribute -quiet logical_hier false /designs/GCC/subdesigns/RC_CG_MOD_1
set_attribute -quiet boundary_opto false /designs/GCC/subdesigns/RC_CG_MOD_1
set_attribute -quiet logical_hier false /designs/GCC/subdesigns/RC_CG_MOD_2
set_attribute -quiet boundary_opto false /designs/GCC/subdesigns/RC_CG_MOD_2
set_attribute -quiet logical_hier false /designs/GCC/subdesigns/RC_CG_MOD_3
set_attribute -quiet boundary_opto false /designs/GCC/subdesigns/RC_CG_MOD_3
set_attribute -quiet logical_hier false /designs/GCC/subdesigns/RC_CG_MOD_4
set_attribute -quiet boundary_opto false /designs/GCC/subdesigns/RC_CG_MOD_4
set_attribute -quiet logical_hier false /designs/GCC/subdesigns/RC_CG_MOD_5
set_attribute -quiet boundary_opto false /designs/GCC/subdesigns/RC_CG_MOD_5
set_attribute -quiet logical_hier false /designs/GCC/subdesigns/RC_CG_MOD_6
set_attribute -quiet boundary_opto false /designs/GCC/subdesigns/RC_CG_MOD_6
set_attribute -quiet hdl_user_name Comparator /designs/GCC/subdesigns/Comparator
set_attribute -quiet logical_hier false /designs/GCC/subdesigns/csa_tree_distance0_add1034_group_327
set_attribute -quiet logical_hier false /designs/GCC/subdesigns/csa_tree_distance1_add1033_group_329
set_attribute -quiet logical_hier false /designs/GCC/subdesigns/csa_tree_distance2_add1032_group_331
set_attribute -quiet logical_hier false /designs/GCC/subdesigns/csa_tree_distance3_add1031_group_333
set_attribute -quiet logical_hier false /designs/GCC/subdesigns/csa_tree_distance4_add1030_group_335
set_attribute -quiet logical_hier false /designs/GCC/subdesigns/csa_tree_distance5_add1029_group_337
