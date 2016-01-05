######################################################################

# Created by Encounter(R) RTL Compiler v10.10-s209_1 on Mon Sep 29 17:09:06 -0500 2014

# This file contains the RC script for /designs/lab1

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
define_clock -name iCLK -domain domain_1 -period 800.0 -divide_period 1 -rise 0 -divide_rise 1 -fall 1 -divide_fall 2 -design /designs/lab1 /designs/lab1/ports_in/iCLK
define_cost_group -design /designs/lab1 -name iCLK
external_delay -accumulate -input {0.0 no_value 0.0 no_value} -clock /designs/lab1/timing/clock_domains/domain_1/iCLK -name create_clock_delay_domain_1_iCLK_R_0 /designs/lab1/ports_in/iCLK
set_attribute -quiet clock_network_latency_included true /designs/lab1/timing/external_delays/create_clock_delay_domain_1_iCLK_R_0
external_delay -accumulate -input {no_value 0.0 no_value 0.0} -clock /designs/lab1/timing/clock_domains/domain_1/iCLK -edge_fall -name create_clock_delay_domain_1_iCLK_F_0 /designs/lab1/ports_in/iCLK
set_attribute -quiet clock_network_latency_included true /designs/lab1/timing/external_delays/create_clock_delay_domain_1_iCLK_F_0
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/lab1/timing/clock_domains/domain_1/iCLK -name design.sdc_line_4 {{/designs/lab1/ports_in/iA0[7]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/lab1/timing/clock_domains/domain_1/iCLK -name design.sdc_line_4_1_1 {{/designs/lab1/ports_in/iA0[6]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/lab1/timing/clock_domains/domain_1/iCLK -name design.sdc_line_4_2_1 {{/designs/lab1/ports_in/iA0[5]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/lab1/timing/clock_domains/domain_1/iCLK -name design.sdc_line_4_3_1 {{/designs/lab1/ports_in/iA0[4]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/lab1/timing/clock_domains/domain_1/iCLK -name design.sdc_line_4_4_1 {{/designs/lab1/ports_in/iA0[3]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/lab1/timing/clock_domains/domain_1/iCLK -name design.sdc_line_4_5_1 {{/designs/lab1/ports_in/iA0[2]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/lab1/timing/clock_domains/domain_1/iCLK -name design.sdc_line_4_6_1 {{/designs/lab1/ports_in/iA0[1]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/lab1/timing/clock_domains/domain_1/iCLK -name design.sdc_line_4_7_1 {{/designs/lab1/ports_in/iA0[0]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/lab1/timing/clock_domains/domain_1/iCLK -name design.sdc_line_5 {{/designs/lab1/ports_in/iB0[7]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/lab1/timing/clock_domains/domain_1/iCLK -name design.sdc_line_5_8_1 {{/designs/lab1/ports_in/iB0[6]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/lab1/timing/clock_domains/domain_1/iCLK -name design.sdc_line_5_9_1 {{/designs/lab1/ports_in/iB0[5]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/lab1/timing/clock_domains/domain_1/iCLK -name design.sdc_line_5_10_1 {{/designs/lab1/ports_in/iB0[4]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/lab1/timing/clock_domains/domain_1/iCLK -name design.sdc_line_5_11_1 {{/designs/lab1/ports_in/iB0[3]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/lab1/timing/clock_domains/domain_1/iCLK -name design.sdc_line_5_12_1 {{/designs/lab1/ports_in/iB0[2]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/lab1/timing/clock_domains/domain_1/iCLK -name design.sdc_line_5_13_1 {{/designs/lab1/ports_in/iB0[1]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/lab1/timing/clock_domains/domain_1/iCLK -name design.sdc_line_5_14_1 {{/designs/lab1/ports_in/iB0[0]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/lab1/timing/clock_domains/domain_1/iCLK -name design.sdc_line_6 {{/designs/lab1/ports_in/iA1[7]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/lab1/timing/clock_domains/domain_1/iCLK -name design.sdc_line_6_15_1 {{/designs/lab1/ports_in/iA1[6]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/lab1/timing/clock_domains/domain_1/iCLK -name design.sdc_line_6_16_1 {{/designs/lab1/ports_in/iA1[5]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/lab1/timing/clock_domains/domain_1/iCLK -name design.sdc_line_6_17_1 {{/designs/lab1/ports_in/iA1[4]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/lab1/timing/clock_domains/domain_1/iCLK -name design.sdc_line_6_18_1 {{/designs/lab1/ports_in/iA1[3]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/lab1/timing/clock_domains/domain_1/iCLK -name design.sdc_line_6_19_1 {{/designs/lab1/ports_in/iA1[2]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/lab1/timing/clock_domains/domain_1/iCLK -name design.sdc_line_6_20_1 {{/designs/lab1/ports_in/iA1[1]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/lab1/timing/clock_domains/domain_1/iCLK -name design.sdc_line_6_21_1 {{/designs/lab1/ports_in/iA1[0]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/lab1/timing/clock_domains/domain_1/iCLK -name design.sdc_line_7 {{/designs/lab1/ports_in/iB1[7]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/lab1/timing/clock_domains/domain_1/iCLK -name design.sdc_line_7_22_1 {{/designs/lab1/ports_in/iB1[6]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/lab1/timing/clock_domains/domain_1/iCLK -name design.sdc_line_7_23_1 {{/designs/lab1/ports_in/iB1[5]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/lab1/timing/clock_domains/domain_1/iCLK -name design.sdc_line_7_24_1 {{/designs/lab1/ports_in/iB1[4]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/lab1/timing/clock_domains/domain_1/iCLK -name design.sdc_line_7_25_1 {{/designs/lab1/ports_in/iB1[3]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/lab1/timing/clock_domains/domain_1/iCLK -name design.sdc_line_7_26_1 {{/designs/lab1/ports_in/iB1[2]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/lab1/timing/clock_domains/domain_1/iCLK -name design.sdc_line_7_27_1 {{/designs/lab1/ports_in/iB1[1]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/lab1/timing/clock_domains/domain_1/iCLK -name design.sdc_line_7_28_1 {{/designs/lab1/ports_in/iB1[0]}}
path_group -paths [specify_paths -to /designs/lab1/timing/clock_domains/domain_1/iCLK]  -name iCLK -group /designs/lab1/timing/cost_groups/iCLK -user_priority -1047552
# BEGIN DFT SECTION
set_attribute -quiet dft_scan_style muxed_scan /
set_attribute -quiet dft_scanbit_waveform_analysis false /
# END DFT SECTION
set_attribute -quiet hdl_filelist { {default -v2001 {} {../rtl/ALT_MULTADD.v}}} /designs/lab1
set_attribute -quiet hdl_user_name lab1 /designs/lab1
set_attribute -quiet ovf_current_verification_directory fv/lab1 /designs/lab1
