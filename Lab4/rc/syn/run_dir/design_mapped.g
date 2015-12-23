######################################################################

# Created by Encounter(R) RTL Compiler v12.10-s012_1 on Fri Oct 09 15:48:52 -0500 2015

# This file contains the RC script for /designs/ALT_MULTADD

######################################################################

set_attribute -quiet lp_insert_clock_gating true /
set_attribute -quiet gui_auto_update false /
set_attribute -quiet lib_search_path ../libdir /
set_attribute -quiet power_optimization_effort low /
set_attribute -quiet ple_correlation_factors {1.9000 2.0000} /
set_attribute -quiet maximum_interval_of_vias infinity /
set_attribute -quiet interconnect_mode wireload /
set_attribute -quiet wireload_mode segmented /
set_attribute -quiet wireload_selection /libraries/tcbn65gpluswc/wireload_selections/WireAreaForZero /
set_attribute -quiet tree_type balanced_tree /libraries/tcbn65gpluswc/operating_conditions/WCCOM
set_attribute -quiet tree_type balanced_tree /libraries/tcbn65gpluswc/operating_conditions/_nominal_
# BEGIN MSV SECTION
# END MSV SECTION
define_clock -name iCLK -domain domain_1 -period 4000.0 -divide_period 1 -rise 0 -divide_rise 1 -fall 1 -divide_fall 2 -design /designs/ALT_MULTADD /designs/ALT_MULTADD/ports_in/iCLK
define_cost_group -design /designs/ALT_MULTADD -name iCLK
external_delay -accumulate -input {0.0 no_value 0.0 no_value} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name create_clock_delay_domain_1_iCLK_R_0 /designs/ALT_MULTADD/ports_in/iCLK
set_attribute -quiet clock_network_latency_included true /designs/ALT_MULTADD/timing/external_delays/create_clock_delay_domain_1_iCLK_R_0
external_delay -accumulate -input {no_value 0.0 no_value 0.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -edge_fall -name create_clock_delay_domain_1_iCLK_F_0 /designs/ALT_MULTADD/ports_in/iCLK
set_attribute -quiet clock_network_latency_included true /designs/ALT_MULTADD/timing/external_delays/create_clock_delay_domain_1_iCLK_F_0
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design.sdc_line_4 {{/designs/ALT_MULTADD/ports_in/iA0[7]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design.sdc_line_4_1_1 {{/designs/ALT_MULTADD/ports_in/iA0[6]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design.sdc_line_4_2_1 {{/designs/ALT_MULTADD/ports_in/iA0[5]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design.sdc_line_4_3_1 {{/designs/ALT_MULTADD/ports_in/iA0[4]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design.sdc_line_4_4_1 {{/designs/ALT_MULTADD/ports_in/iA0[3]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design.sdc_line_4_5_1 {{/designs/ALT_MULTADD/ports_in/iA0[2]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design.sdc_line_4_6_1 {{/designs/ALT_MULTADD/ports_in/iA0[1]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design.sdc_line_4_7_1 {{/designs/ALT_MULTADD/ports_in/iA0[0]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design.sdc_line_5 {{/designs/ALT_MULTADD/ports_in/iB0[7]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design.sdc_line_5_8_1 {{/designs/ALT_MULTADD/ports_in/iB0[6]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design.sdc_line_5_9_1 {{/designs/ALT_MULTADD/ports_in/iB0[5]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design.sdc_line_5_10_1 {{/designs/ALT_MULTADD/ports_in/iB0[4]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design.sdc_line_5_11_1 {{/designs/ALT_MULTADD/ports_in/iB0[3]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design.sdc_line_5_12_1 {{/designs/ALT_MULTADD/ports_in/iB0[2]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design.sdc_line_5_13_1 {{/designs/ALT_MULTADD/ports_in/iB0[1]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design.sdc_line_5_14_1 {{/designs/ALT_MULTADD/ports_in/iB0[0]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design.sdc_line_6 {{/designs/ALT_MULTADD/ports_in/iA1[7]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design.sdc_line_6_15_1 {{/designs/ALT_MULTADD/ports_in/iA1[6]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design.sdc_line_6_16_1 {{/designs/ALT_MULTADD/ports_in/iA1[5]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design.sdc_line_6_17_1 {{/designs/ALT_MULTADD/ports_in/iA1[4]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design.sdc_line_6_18_1 {{/designs/ALT_MULTADD/ports_in/iA1[3]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design.sdc_line_6_19_1 {{/designs/ALT_MULTADD/ports_in/iA1[2]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design.sdc_line_6_20_1 {{/designs/ALT_MULTADD/ports_in/iA1[1]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design.sdc_line_6_21_1 {{/designs/ALT_MULTADD/ports_in/iA1[0]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design.sdc_line_7 {{/designs/ALT_MULTADD/ports_in/iB1[7]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design.sdc_line_7_22_1 {{/designs/ALT_MULTADD/ports_in/iB1[6]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design.sdc_line_7_23_1 {{/designs/ALT_MULTADD/ports_in/iB1[5]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design.sdc_line_7_24_1 {{/designs/ALT_MULTADD/ports_in/iB1[4]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design.sdc_line_7_25_1 {{/designs/ALT_MULTADD/ports_in/iB1[3]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design.sdc_line_7_26_1 {{/designs/ALT_MULTADD/ports_in/iB1[2]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design.sdc_line_7_27_1 {{/designs/ALT_MULTADD/ports_in/iB1[1]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design.sdc_line_7_28_1 {{/designs/ALT_MULTADD/ports_in/iB1[0]}}
path_group -paths [specify_paths -to /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK]  -name iCLK -group /designs/ALT_MULTADD/timing/cost_groups/iCLK -user_priority -1047552
# BEGIN DFT SECTION
set_attribute -quiet dft_scan_style muxed_scan /
set_attribute -quiet dft_scanbit_waveform_analysis false /
# END DFT SECTION
set_attribute -quiet hdl_filelist {{default -v2001 {SYNTHESIS} {../rtl/ALT_MULTADD.v}}} /designs/ALT_MULTADD
set_attribute -quiet hdl_user_name ALT_MULTADD /designs/ALT_MULTADD
set_attribute -quiet ovf_current_verification_directory fv/ALT_MULTADD /designs/ALT_MULTADD
set_attribute -quiet max_leakage_power 1000000.0 /designs/ALT_MULTADD
set_attribute -quiet logical_hier false /designs/ALT_MULTADD/subdesigns/csa_tree
set_attribute -quiet logical_hier false /designs/ALT_MULTADD/subdesigns/csa_tree_add_25_30_group_50
set_attribute -quiet preserve size_delete_ok /designs/ALT_MULTADD/instances_hier/csa_tree_add_25_30_groupi/instances_comb/cdnca_003_0
set_attribute -quiet preserve size_delete_ok /designs/ALT_MULTADD/instances_hier/csa_tree_add_25_30_groupi/instances_comb/cdnca_004_0
set_attribute -quiet preserve size_delete_ok /designs/ALT_MULTADD/instances_hier/csa_tree_add_25_30_groupi/instances_comb/cdnca_005_0
set_attribute -quiet preserve size_delete_ok /designs/ALT_MULTADD/instances_hier/csa_tree_add_25_30_groupi/instances_comb/cdnca_006_0
set_attribute -quiet preserve size_delete_ok /designs/ALT_MULTADD/instances_hier/csa_tree_add_25_30_groupi/instances_comb/cdnca_006_1
set_attribute -quiet preserve size_delete_ok /designs/ALT_MULTADD/instances_hier/csa_tree_add_25_30_groupi/instances_comb/cdnca_007_0
set_attribute -quiet preserve size_delete_ok /designs/ALT_MULTADD/instances_hier/csa_tree_add_25_30_groupi/instances_comb/cdnca_007_1
set_attribute -quiet preserve size_delete_ok /designs/ALT_MULTADD/instances_hier/csa_tree_add_25_30_groupi/instances_comb/cdnca_008_0
set_attribute -quiet preserve size_delete_ok /designs/ALT_MULTADD/instances_hier/csa_tree_add_25_30_groupi/instances_comb/cdnca_008_1
set_attribute -quiet preserve size_delete_ok /designs/ALT_MULTADD/instances_hier/csa_tree_add_25_30_groupi/instances_comb/cdnca_009_0
set_attribute -quiet preserve size_delete_ok /designs/ALT_MULTADD/instances_hier/csa_tree_add_25_30_groupi/instances_comb/cdnca_009_1
set_attribute -quiet preserve size_delete_ok /designs/ALT_MULTADD/instances_hier/csa_tree_add_25_30_groupi/instances_comb/cdnca_010_0
set_attribute -quiet preserve size_delete_ok /designs/ALT_MULTADD/instances_hier/csa_tree_add_25_30_groupi/instances_comb/cdnca_010_1
set_attribute -quiet preserve size_delete_ok /designs/ALT_MULTADD/instances_hier/csa_tree_add_25_30_groupi/instances_comb/cdnca_011_0
set_attribute -quiet preserve size_delete_ok /designs/ALT_MULTADD/instances_hier/csa_tree_add_25_30_groupi/instances_comb/cdnca_011_1
set_attribute -quiet preserve size_delete_ok /designs/ALT_MULTADD/instances_hier/csa_tree_add_25_30_groupi/instances_comb/cdnca_012_0
set_attribute -quiet preserve size_delete_ok /designs/ALT_MULTADD/instances_hier/csa_tree_add_25_30_groupi/instances_comb/cdnca_012_1
set_attribute -quiet preserve size_delete_ok /designs/ALT_MULTADD/instances_hier/csa_tree_add_25_30_groupi/instances_comb/cdnca_013_0
set_attribute -quiet preserve size_delete_ok /designs/ALT_MULTADD/instances_hier/csa_tree_add_25_30_groupi/instances_comb/cdnca_013_1
set_attribute -quiet preserve size_delete_ok /designs/ALT_MULTADD/instances_hier/csa_tree_add_25_30_groupi/instances_comb/cdnca_014_0
set_attribute -quiet preserve size_delete_ok /designs/ALT_MULTADD/instances_hier/csa_tree_add_25_30_groupi/instances_comb/cdnca_014_1
set_attribute -quiet preserve size_delete_ok /designs/ALT_MULTADD/instances_hier/csa_tree_add_25_30_groupi/instances_comb/cdnca_015_0
set_attribute -quiet preserve size_delete_ok /designs/ALT_MULTADD/instances_hier/csa_tree_add_25_30_groupi/instances_comb/cdnca_015_1
set_attribute -quiet preserve size_delete_ok /designs/ALT_MULTADD/instances_hier/csa_tree_add_25_30_groupi/instances_comb/cdnca_016_0
set_attribute -quiet preserve size_delete_ok /designs/ALT_MULTADD/instances_hier/csa_tree_add_25_30_groupi/instances_comb/cdnca_016_1
set_attribute -quiet logical_hier false /designs/ALT_MULTADD/subdesigns/csa_tree_mul_25_40_group_52
set_attribute -quiet logical_hier false /designs/ALT_MULTADD/subdesigns/add_unsigned_108
set_attribute -quiet rtlop_info {{} 0 0 0 3 0 7 0 2 1 1 0} /designs/ALT_MULTADD/instances_hier/final_adder_add_22_19
set_attribute -quiet logical_hier false /designs/ALT_MULTADD/subdesigns/mult_unsigned
set_attribute -quiet rtlop_info {{} 0 0 0 3 0 47 0 2 1 1 0} /designs/ALT_MULTADD/instances_hier/mul_25_35
