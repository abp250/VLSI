######################################################################

# Created by Encounter(R) RTL Compiler v10.10-s209_1 on Thu Oct 02 23:31:09 -0500 2014

# This file contains the RC script for /designs/ALT_MULTADD

######################################################################

set_attribute -quiet lp_insert_clock_gating true /
set_attribute -quiet lib_search_path ../libdir /
set_attribute -quiet power_optimization_effort high /
set_attribute -quiet gui_sv_update manual /
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
define_clock -name iCLK -domain domain_1 -period 800.0 -divide_period 1 -rise 0 -divide_rise 1 -fall 1 -divide_fall 2 -design /designs/ALT_MULTADD /designs/ALT_MULTADD/ports_in/iCLK
define_clock -name clk -domain domain_1 -period 400.0 -divide_period 1 -rise 1 -divide_rise 2 -fall 1 -divide_fall 2 -design /designs/ALT_MULTADD /designs/ALT_MULTADD/ports_in/iCLK
set_attribute -quiet clock_network_late_latency {1.0 1.0 1.0 1.0} /designs/ALT_MULTADD/timing/clock_domains/domain_1/clk
set_attribute -quiet clock_source_early_latency {0.2 0.2 0.2 0.2} /designs/ALT_MULTADD/timing/clock_domains/domain_1/clk
set_attribute -quiet clock_setup_uncertainty {100.0 50.0} /designs/ALT_MULTADD/timing/clock_domains/domain_1/clk
set_attribute -quiet slew {100.0 110.0 110.0 120.0} /designs/ALT_MULTADD/timing/clock_domains/domain_1/clk
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
external_delay -accumulate -input {200.0 200.0 200.0 200.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/clk -name {in_delay\/designs\/ALT_MULTADD\/} {{/designs/ALT_MULTADD/ports_in/iB1[0]} {/designs/ALT_MULTADD/ports_in/iB1[1]} {/designs/ALT_MULTADD/ports_in/iB1[2]} {/designs/ALT_MULTADD/ports_in/iB1[3]} {/designs/ALT_MULTADD/ports_in/iB1[4]} {/designs/ALT_MULTADD/ports_in/iB1[5]} {/designs/ALT_MULTADD/ports_in/iB1[6]} {/designs/ALT_MULTADD/ports_in/iB1[7]} {/designs/ALT_MULTADD/ports_in/iB0[0]} {/designs/ALT_MULTADD/ports_in/iB0[1]} {/designs/ALT_MULTADD/ports_in/iB0[2]} {/designs/ALT_MULTADD/ports_in/iB0[3]} {/designs/ALT_MULTADD/ports_in/iB0[4]} {/designs/ALT_MULTADD/ports_in/iB0[5]} {/designs/ALT_MULTADD/ports_in/iB0[6]} {/designs/ALT_MULTADD/ports_in/iB0[7]} {/designs/ALT_MULTADD/ports_in/iA1[0]} {/designs/ALT_MULTADD/ports_in/iA1[1]} {/designs/ALT_MULTADD/ports_in/iA1[2]} {/designs/ALT_MULTADD/ports_in/iA1[3]} {/designs/ALT_MULTADD/ports_in/iA1[4]} {/designs/ALT_MULTADD/ports_in/iA1[5]} {/designs/ALT_MULTADD/ports_in/iA1[6]} {/designs/ALT_MULTADD/ports_in/iA1[7]} {/designs/ALT_MULTADD/ports_in/iA0[0]} {/designs/ALT_MULTADD/ports_in/iA0[1]} {/designs/ALT_MULTADD/ports_in/iA0[2]} {/designs/ALT_MULTADD/ports_in/iA0[3]} {/designs/ALT_MULTADD/ports_in/iA0[4]} {/designs/ALT_MULTADD/ports_in/iA0[5]} {/designs/ALT_MULTADD/ports_in/iA0[6]} {/designs/ALT_MULTADD/ports_in/iA0[7]} /designs/ALT_MULTADD/ports_in/iSEL /designs/ALT_MULTADD/ports_in/iRST_N /designs/ALT_MULTADD/ports_in/iCLK}
external_delay -accumulate -output {200.0 200.0 200.0 200.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/clk -name {out_delay\/designs\/ALT_MULTADD\/} {{/designs/ALT_MULTADD/ports_out/oRESULT[0]} {/designs/ALT_MULTADD/ports_out/oRESULT[1]} {/designs/ALT_MULTADD/ports_out/oRESULT[2]} {/designs/ALT_MULTADD/ports_out/oRESULT[3]} {/designs/ALT_MULTADD/ports_out/oRESULT[4]} {/designs/ALT_MULTADD/ports_out/oRESULT[5]} {/designs/ALT_MULTADD/ports_out/oRESULT[6]} {/designs/ALT_MULTADD/ports_out/oRESULT[7]} {/designs/ALT_MULTADD/ports_out/oRESULT[8]} {/designs/ALT_MULTADD/ports_out/oRESULT[9]} {/designs/ALT_MULTADD/ports_out/oRESULT[10]} {/designs/ALT_MULTADD/ports_out/oRESULT[11]} {/designs/ALT_MULTADD/ports_out/oRESULT[12]} {/designs/ALT_MULTADD/ports_out/oRESULT[13]} {/designs/ALT_MULTADD/ports_out/oRESULT[14]} {/designs/ALT_MULTADD/ports_out/oRESULT[15]} {/designs/ALT_MULTADD/ports_out/oRESULT[16]}}
path_group -paths [specify_paths -to /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK]  -name iCLK -group /designs/ALT_MULTADD/timing/cost_groups/iCLK -user_priority -1047552
# BEGIN DFT SECTION
set_attribute -quiet dft_scan_style muxed_scan /
set_attribute -quiet dft_scanbit_waveform_analysis false /
# END DFT SECTION
set_attribute -quiet hdl_filelist { {default -v2001 {} {../rtl/ALT_MULTADD.v}}} /designs/ALT_MULTADD
set_attribute -quiet hdl_user_name ALT_MULTADD /designs/ALT_MULTADD
set_attribute -quiet ovf_current_verification_directory fv/ALT_MULTADD /designs/ALT_MULTADD
set_attribute -quiet max_fanout 10.000 /designs/ALT_MULTADD
set_attribute -quiet external_driver /libraries/tcbn65gpluswc/libcells/MUX2ND2/ZN /designs/ALT_MULTADD/ports_in/iCLK
set_attribute -quiet external_driver /libraries/tcbn65gpluswc/libcells/MUX2ND2/ZN /designs/ALT_MULTADD/ports_in/iRST_N
set_attribute -quiet external_driver /libraries/tcbn65gpluswc/libcells/MUX2ND2/ZN /designs/ALT_MULTADD/ports_in/iSEL
set_attribute -quiet external_driver /libraries/tcbn65gpluswc/libcells/MUX2ND2/ZN {/designs/ALT_MULTADD/ports_in/iA0[7]}
set_attribute -quiet external_driver /libraries/tcbn65gpluswc/libcells/MUX2ND2/ZN {/designs/ALT_MULTADD/ports_in/iA0[6]}
set_attribute -quiet external_driver /libraries/tcbn65gpluswc/libcells/MUX2ND2/ZN {/designs/ALT_MULTADD/ports_in/iA0[5]}
set_attribute -quiet external_driver /libraries/tcbn65gpluswc/libcells/MUX2ND2/ZN {/designs/ALT_MULTADD/ports_in/iA0[4]}
set_attribute -quiet external_driver /libraries/tcbn65gpluswc/libcells/MUX2ND2/ZN {/designs/ALT_MULTADD/ports_in/iA0[3]}
set_attribute -quiet external_driver /libraries/tcbn65gpluswc/libcells/MUX2ND2/ZN {/designs/ALT_MULTADD/ports_in/iA0[2]}
set_attribute -quiet external_driver /libraries/tcbn65gpluswc/libcells/MUX2ND2/ZN {/designs/ALT_MULTADD/ports_in/iA0[1]}
set_attribute -quiet external_driver /libraries/tcbn65gpluswc/libcells/MUX2ND2/ZN {/designs/ALT_MULTADD/ports_in/iA0[0]}
set_attribute -quiet external_driver /libraries/tcbn65gpluswc/libcells/MUX2ND2/ZN {/designs/ALT_MULTADD/ports_in/iA1[7]}
set_attribute -quiet external_driver /libraries/tcbn65gpluswc/libcells/MUX2ND2/ZN {/designs/ALT_MULTADD/ports_in/iA1[6]}
set_attribute -quiet external_driver /libraries/tcbn65gpluswc/libcells/MUX2ND2/ZN {/designs/ALT_MULTADD/ports_in/iA1[5]}
set_attribute -quiet external_driver /libraries/tcbn65gpluswc/libcells/MUX2ND2/ZN {/designs/ALT_MULTADD/ports_in/iA1[4]}
set_attribute -quiet external_driver /libraries/tcbn65gpluswc/libcells/MUX2ND2/ZN {/designs/ALT_MULTADD/ports_in/iA1[3]}
set_attribute -quiet external_driver /libraries/tcbn65gpluswc/libcells/MUX2ND2/ZN {/designs/ALT_MULTADD/ports_in/iA1[2]}
set_attribute -quiet external_driver /libraries/tcbn65gpluswc/libcells/MUX2ND2/ZN {/designs/ALT_MULTADD/ports_in/iA1[1]}
set_attribute -quiet external_driver /libraries/tcbn65gpluswc/libcells/MUX2ND2/ZN {/designs/ALT_MULTADD/ports_in/iA1[0]}
set_attribute -quiet external_driver /libraries/tcbn65gpluswc/libcells/MUX2ND2/ZN {/designs/ALT_MULTADD/ports_in/iB0[7]}
set_attribute -quiet external_driver /libraries/tcbn65gpluswc/libcells/MUX2ND2/ZN {/designs/ALT_MULTADD/ports_in/iB0[6]}
set_attribute -quiet external_driver /libraries/tcbn65gpluswc/libcells/MUX2ND2/ZN {/designs/ALT_MULTADD/ports_in/iB0[5]}
set_attribute -quiet external_driver /libraries/tcbn65gpluswc/libcells/MUX2ND2/ZN {/designs/ALT_MULTADD/ports_in/iB0[4]}
set_attribute -quiet external_driver /libraries/tcbn65gpluswc/libcells/MUX2ND2/ZN {/designs/ALT_MULTADD/ports_in/iB0[3]}
set_attribute -quiet external_driver /libraries/tcbn65gpluswc/libcells/MUX2ND2/ZN {/designs/ALT_MULTADD/ports_in/iB0[2]}
set_attribute -quiet external_driver /libraries/tcbn65gpluswc/libcells/MUX2ND2/ZN {/designs/ALT_MULTADD/ports_in/iB0[1]}
set_attribute -quiet external_driver /libraries/tcbn65gpluswc/libcells/MUX2ND2/ZN {/designs/ALT_MULTADD/ports_in/iB0[0]}
set_attribute -quiet external_driver /libraries/tcbn65gpluswc/libcells/MUX2ND2/ZN {/designs/ALT_MULTADD/ports_in/iB1[7]}
set_attribute -quiet external_driver /libraries/tcbn65gpluswc/libcells/MUX2ND2/ZN {/designs/ALT_MULTADD/ports_in/iB1[6]}
set_attribute -quiet external_driver /libraries/tcbn65gpluswc/libcells/MUX2ND2/ZN {/designs/ALT_MULTADD/ports_in/iB1[5]}
set_attribute -quiet external_driver /libraries/tcbn65gpluswc/libcells/MUX2ND2/ZN {/designs/ALT_MULTADD/ports_in/iB1[4]}
set_attribute -quiet external_driver /libraries/tcbn65gpluswc/libcells/MUX2ND2/ZN {/designs/ALT_MULTADD/ports_in/iB1[3]}
set_attribute -quiet external_driver /libraries/tcbn65gpluswc/libcells/MUX2ND2/ZN {/designs/ALT_MULTADD/ports_in/iB1[2]}
set_attribute -quiet external_driver /libraries/tcbn65gpluswc/libcells/MUX2ND2/ZN {/designs/ALT_MULTADD/ports_in/iB1[1]}
set_attribute -quiet external_driver /libraries/tcbn65gpluswc/libcells/MUX2ND2/ZN {/designs/ALT_MULTADD/ports_in/iB1[0]}
set_attribute -quiet external_pin_cap {2.0 2.0} {/designs/ALT_MULTADD/ports_out/oRESULT[16]}
set_attribute -quiet external_pin_cap {2.0 2.0} {/designs/ALT_MULTADD/ports_out/oRESULT[15]}
set_attribute -quiet external_pin_cap {2.0 2.0} {/designs/ALT_MULTADD/ports_out/oRESULT[14]}
set_attribute -quiet external_pin_cap {2.0 2.0} {/designs/ALT_MULTADD/ports_out/oRESULT[13]}
set_attribute -quiet external_pin_cap {2.0 2.0} {/designs/ALT_MULTADD/ports_out/oRESULT[12]}
set_attribute -quiet external_pin_cap {2.0 2.0} {/designs/ALT_MULTADD/ports_out/oRESULT[11]}
set_attribute -quiet external_pin_cap {2.0 2.0} {/designs/ALT_MULTADD/ports_out/oRESULT[10]}
set_attribute -quiet external_pin_cap {2.0 2.0} {/designs/ALT_MULTADD/ports_out/oRESULT[9]}
set_attribute -quiet external_pin_cap {2.0 2.0} {/designs/ALT_MULTADD/ports_out/oRESULT[8]}
set_attribute -quiet external_pin_cap {2.0 2.0} {/designs/ALT_MULTADD/ports_out/oRESULT[7]}
set_attribute -quiet external_pin_cap {2.0 2.0} {/designs/ALT_MULTADD/ports_out/oRESULT[6]}
set_attribute -quiet external_pin_cap {2.0 2.0} {/designs/ALT_MULTADD/ports_out/oRESULT[5]}
set_attribute -quiet external_pin_cap {2.0 2.0} {/designs/ALT_MULTADD/ports_out/oRESULT[4]}
set_attribute -quiet external_pin_cap {2.0 2.0} {/designs/ALT_MULTADD/ports_out/oRESULT[3]}
set_attribute -quiet external_pin_cap {2.0 2.0} {/designs/ALT_MULTADD/ports_out/oRESULT[2]}
set_attribute -quiet external_pin_cap {2.0 2.0} {/designs/ALT_MULTADD/ports_out/oRESULT[1]}
set_attribute -quiet external_pin_cap {2.0 2.0} {/designs/ALT_MULTADD/ports_out/oRESULT[0]}
