######################################################################

# Created by Encounter(R) RTL Compiler v12.10-s012_1 on Sun Dec 14 19:26:45 -0600 2014

# This file contains the RC script for /designs/GCC

######################################################################

set_attribute -quiet lp_insert_clock_gating true /
set_attribute -quiet gui_auto_update false /
set_attribute -quiet lib_search_path ../libdir /
set_attribute -quiet ple_correlation_factors {1.9000 2.0000} /
set_attribute -quiet maximum_interval_of_vias infinity /
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
define_clock -name CLK -domain domain_1 -period 800.0 -divide_period 1 -rise 0 -divide_rise 1 -fall 1 -divide_fall 2 -design /designs/GCC /designs/GCC/ports_in/CLK
define_cost_group -design /designs/GCC -name CLK
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
# BEGIN DFT SECTION
set_attribute -quiet dft_scan_style muxed_scan /
set_attribute -quiet dft_scanbit_waveform_analysis false /
# END DFT SECTION
set_attribute -quiet hdl_filelist {{default -v2001 {SYNTHESIS} {../rtl/GCC.v}}} /designs/GCC
set_attribute -quiet hdl_user_name GCC /designs/GCC
set_attribute -quiet ovf_current_verification_directory fv/GCC /designs/GCC
set_attribute -quiet seq_reason_deleted {{{i_reg[0]} unloaded} {{i_reg[1]} unloaded} {{i_reg[2]} unloaded} {{x_reg[5][0]} unloaded} {{x_reg[5][1]} unloaded} {{x_reg[5][2]} unloaded} {{x_reg[5][3]} unloaded} {{x_reg[5][4]} unloaded} {{x_reg[5][5]} unloaded} {{x_reg[5][6]} unloaded} {{x_reg[5][7]} unloaded} {{x_reg[4][0]} unloaded} {{x_reg[4][1]} unloaded} {{x_reg[4][2]} unloaded} {{x_reg[4][3]} unloaded} {{x_reg[4][4]} unloaded} {{x_reg[4][5]} unloaded} {{x_reg[4][6]} unloaded} {{x_reg[4][7]} unloaded} {{x_reg[3][0]} unloaded} {{x_reg[3][1]} unloaded} {{x_reg[3][2]} unloaded} {{x_reg[3][3]} unloaded} {{x_reg[3][4]} unloaded} {{x_reg[3][5]} unloaded} {{x_reg[3][6]} unloaded} {{x_reg[3][7]} unloaded} {{x_reg[2][0]} unloaded} {{x_reg[2][1]} unloaded} {{x_reg[2][2]} unloaded} {{x_reg[2][3]} unloaded} {{x_reg[2][4]} unloaded} {{x_reg[2][5]} unloaded} {{x_reg[2][6]} unloaded} {{x_reg[2][7]} unloaded} {{x_reg[1][0]} unloaded} {{x_reg[1][1]} unloaded} {{x_reg[1][2]} unloaded} {{x_reg[1][3]} unloaded} {{x_reg[1][4]} unloaded} {{x_reg[1][5]} unloaded} {{x_reg[1][6]} unloaded} {{x_reg[1][7]} unloaded} {{x_reg[0][0]} unloaded} {{x_reg[0][1]} unloaded} {{x_reg[0][2]} unloaded} {{x_reg[0][3]} unloaded} {{x_reg[0][4]} unloaded} {{x_reg[0][5]} unloaded} {{x_reg[0][6]} unloaded} {{x_reg[0][7]} unloaded} {{y_reg[5][0]} unloaded} {{y_reg[5][1]} unloaded} {{y_reg[5][2]} unloaded} {{y_reg[5][3]} unloaded} {{y_reg[5][4]} unloaded} {{y_reg[5][5]} unloaded} {{y_reg[5][6]} unloaded} {{y_reg[5][7]} unloaded} {{y_reg[4][0]} unloaded} {{y_reg[4][1]} unloaded} {{y_reg[4][2]} unloaded} {{y_reg[4][3]} unloaded} {{y_reg[4][4]} unloaded} {{y_reg[4][5]} unloaded} {{y_reg[4][6]} unloaded} {{y_reg[4][7]} unloaded} {{y_reg[3][0]} unloaded} {{y_reg[3][1]} unloaded} {{y_reg[3][2]} unloaded} {{y_reg[3][3]} unloaded} {{y_reg[3][4]} unloaded} {{y_reg[3][5]} unloaded} {{y_reg[3][6]} unloaded} {{y_reg[3][7]} unloaded} {{y_reg[2][0]} unloaded} {{y_reg[2][1]} unloaded} {{y_reg[2][2]} unloaded} {{y_reg[2][3]} unloaded} {{y_reg[2][4]} unloaded} {{y_reg[2][5]} unloaded} {{y_reg[2][6]} unloaded} {{y_reg[2][7]} unloaded} {{y_reg[1][0]} unloaded} {{y_reg[1][1]} unloaded} {{y_reg[1][2]} unloaded} {{y_reg[1][3]} unloaded} {{y_reg[1][4]} unloaded} {{y_reg[1][5]} unloaded} {{y_reg[1][6]} unloaded} {{y_reg[1][7]} unloaded} {{y_reg[0][0]} unloaded} {{y_reg[0][1]} unloaded} {{y_reg[0][2]} unloaded} {{y_reg[0][3]} unloaded} {{y_reg[0][4]} unloaded} {{y_reg[0][5]} unloaded} {{y_reg[0][6]} unloaded} {{y_reg[0][7]} unloaded} {{w_reg[5][0]} unloaded} {{w_reg[5][1]} unloaded} {{w_reg[5][2]} unloaded} {{w_reg[5][3]} unloaded} {{w_reg[4][0]} unloaded} {{w_reg[4][1]} unloaded} {{w_reg[4][2]} unloaded} {{w_reg[4][3]} unloaded} {{w_reg[3][0]} unloaded} {{w_reg[3][1]} unloaded} {{w_reg[3][2]} unloaded} {{w_reg[3][3]} unloaded} {{w_reg[2][0]} unloaded} {{w_reg[2][1]} unloaded} {{w_reg[2][2]} unloaded} {{w_reg[2][3]} unloaded} {{w_reg[1][0]} unloaded} {{w_reg[1][1]} unloaded} {{w_reg[1][2]} unloaded} {{w_reg[1][3]} unloaded} {{w_reg[0][0]} unloaded} {{w_reg[0][1]} unloaded} {{w_reg[0][2]} unloaded} {{w_reg[0][3]} unloaded}} /designs/GCC
