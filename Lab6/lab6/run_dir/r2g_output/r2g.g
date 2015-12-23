######################################################################

# Created by Encounter(R) RTL Compiler v10.10-s209_1 on Fri Oct 09 16:13:22 -0500 2015

# This file contains the RC script for /designs/ALT_MULTADD

######################################################################

set_attribute -quiet information_level 9 /
set_attribute -quiet hdl_search_path ./ /
set_attribute -quiet input_pragma_keyword {cadence synopsys get2chip g2c} /
set_attribute -quiet gen_module_prefix G2C_DP_ /
set_attribute -quiet optimize_constant_0_flops false /
set_attribute -quiet optimize_constant_1_flops false /
set_attribute -quiet synthesis_off_command translate_off /
set_attribute -quiet synthesis_on_command translate_on /
set_attribute -quiet input_synchro_reset_pragma sync_set_reset /
set_attribute -quiet input_synchro_reset_blk_pragma sync_set_reset_local /
set_attribute -quiet input_asynchro_reset_pragma async_set_reset /
set_attribute -quiet input_asynchro_reset_blk_pragma async_set_reset_local /
set_attribute -quiet script_begin dc_script_begin /
set_attribute -quiet script_end dc_script_end /
set_attribute -quiet use_area_from_lef true /
set_attribute -quiet shrink_factor 1.0 /
set_attribute -quiet lib_search_path ./ /
set_attribute -quiet remove_assigns true /
set_attribute -quiet ple_mode enhanced_physical /
set_attribute -quiet wireload_selection /libraries/tcbn65gpluswc/wireload_selections/WireAreaForZero /
set_attribute -quiet tree_type balanced_tree /libraries/tcbn65gpluswc/operating_conditions/WCCOM
set_attribute -quiet tree_type balanced_tree /libraries/tcbn65gpluswc/operating_conditions/_nominal_
# BEGIN MSV SECTION
# END MSV SECTION
define_clock -name iCLK -domain domain_1 -period 4000.0 -divide_period 1 -rise 0 -divide_rise 1 -fall 1 -divide_fall 2 -design /designs/ALT_MULTADD /designs/ALT_MULTADD/ports_in/iCLK
define_cost_group -design /designs/ALT_MULTADD -name C2C
define_cost_group -design /designs/ALT_MULTADD -name C2O
define_cost_group -design /designs/ALT_MULTADD -name I2C
define_cost_group -design /designs/ALT_MULTADD -name I2O
define_cost_group -design /designs/ALT_MULTADD -name iCLK
external_delay -accumulate -input {0.0 no_value 0.0 no_value} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name create_clock_delay_domain_1_iCLK_R_0 /designs/ALT_MULTADD/ports_in/iCLK
set_attribute -quiet clock_network_latency_included true /designs/ALT_MULTADD/timing/external_delays/create_clock_delay_domain_1_iCLK_R_0
external_delay -accumulate -input {no_value 0.0 no_value 0.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -edge_fall -name create_clock_delay_domain_1_iCLK_F_0 /designs/ALT_MULTADD/ports_in/iCLK
set_attribute -quiet clock_network_latency_included true /designs/ALT_MULTADD/timing/external_delays/create_clock_delay_domain_1_iCLK_F_0
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design_mapped.sdc_line_17 {{/designs/ALT_MULTADD/ports_in/iA0[7]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design_mapped.sdc_line_18 {{/designs/ALT_MULTADD/ports_in/iA0[6]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design_mapped.sdc_line_19 {{/designs/ALT_MULTADD/ports_in/iA0[5]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design_mapped.sdc_line_20 {{/designs/ALT_MULTADD/ports_in/iA0[4]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design_mapped.sdc_line_21 {{/designs/ALT_MULTADD/ports_in/iA0[3]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design_mapped.sdc_line_22 {{/designs/ALT_MULTADD/ports_in/iA0[2]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design_mapped.sdc_line_23 {{/designs/ALT_MULTADD/ports_in/iA0[1]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design_mapped.sdc_line_24 {{/designs/ALT_MULTADD/ports_in/iA0[0]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design_mapped.sdc_line_25 {{/designs/ALT_MULTADD/ports_in/iB0[7]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design_mapped.sdc_line_26 {{/designs/ALT_MULTADD/ports_in/iB0[6]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design_mapped.sdc_line_27 {{/designs/ALT_MULTADD/ports_in/iB0[5]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design_mapped.sdc_line_28 {{/designs/ALT_MULTADD/ports_in/iB0[4]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design_mapped.sdc_line_29 {{/designs/ALT_MULTADD/ports_in/iB0[3]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design_mapped.sdc_line_30 {{/designs/ALT_MULTADD/ports_in/iB0[2]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design_mapped.sdc_line_31 {{/designs/ALT_MULTADD/ports_in/iB0[1]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design_mapped.sdc_line_32 {{/designs/ALT_MULTADD/ports_in/iB0[0]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design_mapped.sdc_line_33 {{/designs/ALT_MULTADD/ports_in/iA1[7]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design_mapped.sdc_line_34 {{/designs/ALT_MULTADD/ports_in/iA1[6]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design_mapped.sdc_line_35 {{/designs/ALT_MULTADD/ports_in/iA1[5]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design_mapped.sdc_line_36 {{/designs/ALT_MULTADD/ports_in/iA1[4]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design_mapped.sdc_line_37 {{/designs/ALT_MULTADD/ports_in/iA1[3]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design_mapped.sdc_line_38 {{/designs/ALT_MULTADD/ports_in/iA1[2]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design_mapped.sdc_line_39 {{/designs/ALT_MULTADD/ports_in/iA1[1]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design_mapped.sdc_line_40 {{/designs/ALT_MULTADD/ports_in/iA1[0]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design_mapped.sdc_line_41 {{/designs/ALT_MULTADD/ports_in/iB1[7]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design_mapped.sdc_line_42 {{/designs/ALT_MULTADD/ports_in/iB1[6]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design_mapped.sdc_line_43 {{/designs/ALT_MULTADD/ports_in/iB1[5]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design_mapped.sdc_line_44 {{/designs/ALT_MULTADD/ports_in/iB1[4]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design_mapped.sdc_line_45 {{/designs/ALT_MULTADD/ports_in/iB1[3]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design_mapped.sdc_line_46 {{/designs/ALT_MULTADD/ports_in/iB1[2]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design_mapped.sdc_line_47 {{/designs/ALT_MULTADD/ports_in/iB1[1]}}
external_delay -accumulate -input {no_value no_value 1.0 1.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK -name design_mapped.sdc_line_48 {{/designs/ALT_MULTADD/ports_in/iB1[0]}}
path_group -paths [specify_paths -to /designs/ALT_MULTADD/timing/clock_domains/domain_1/iCLK]  -name iCLK -group /designs/ALT_MULTADD/timing/cost_groups/iCLK -user_priority -1047552
path_group -paths [specify_paths -from {{/designs/ALT_MULTADD/instances_seq/oR_reg[0]} {/designs/ALT_MULTADD/instances_seq/oR_reg[10]} {/designs/ALT_MULTADD/instances_seq/oR_reg[11]} {/designs/ALT_MULTADD/instances_seq/oR_reg[12]} {/designs/ALT_MULTADD/instances_seq/oR_reg[13]} {/designs/ALT_MULTADD/instances_seq/oR_reg[14]} {/designs/ALT_MULTADD/instances_seq/oR_reg[15]} {/designs/ALT_MULTADD/instances_seq/oR_reg[16]} {/designs/ALT_MULTADD/instances_seq/oR_reg[1]} {/designs/ALT_MULTADD/instances_seq/oR_reg[2]} {/designs/ALT_MULTADD/instances_seq/oR_reg[3]} {/designs/ALT_MULTADD/instances_seq/oR_reg[4]} {/designs/ALT_MULTADD/instances_seq/oR_reg[5]} {/designs/ALT_MULTADD/instances_seq/oR_reg[6]} {/designs/ALT_MULTADD/instances_seq/oR_reg[7]} {/designs/ALT_MULTADD/instances_seq/oR_reg[8]} {/designs/ALT_MULTADD/instances_seq/oR_reg[9]} {/designs/ALT_MULTADD/instances_seq/A1_reg[2]} {/designs/ALT_MULTADD/instances_seq/A1_reg[3]} {/designs/ALT_MULTADD/instances_seq/A1_reg[4]} {/designs/ALT_MULTADD/instances_seq/B1_reg[7]} {/designs/ALT_MULTADD/instances_seq/A1_reg[5]} {/designs/ALT_MULTADD/instances_seq/A1_reg[6]} {/designs/ALT_MULTADD/instances_seq/A1_reg[7]} {/designs/ALT_MULTADD/instances_seq/B0_reg[0]} {/designs/ALT_MULTADD/instances_seq/B0_reg[1]} {/designs/ALT_MULTADD/instances_seq/B0_reg[2]} {/designs/ALT_MULTADD/instances_seq/B0_reg[3]} {/designs/ALT_MULTADD/instances_seq/B0_reg[4]} {/designs/ALT_MULTADD/instances_seq/B0_reg[5]} {/designs/ALT_MULTADD/instances_seq/B0_reg[6]} {/designs/ALT_MULTADD/instances_seq/B0_reg[7]} {/designs/ALT_MULTADD/instances_seq/B1_reg[1]} {/designs/ALT_MULTADD/instances_seq/B1_reg[2]} {/designs/ALT_MULTADD/instances_seq/B1_reg[3]} {/designs/ALT_MULTADD/instances_seq/B1_reg[4]} {/designs/ALT_MULTADD/instances_seq/B1_reg[5]} {/designs/ALT_MULTADD/instances_seq/B1_reg[6]} {/designs/ALT_MULTADD/instances_seq/A1_reg[1]} {/designs/ALT_MULTADD/instances_seq/B1_reg[0]} {/designs/ALT_MULTADD/instances_seq/A0_reg[0]} {/designs/ALT_MULTADD/instances_seq/A1_reg[0]} {/designs/ALT_MULTADD/instances_seq/A0_reg[1]} {/designs/ALT_MULTADD/instances_seq/A0_reg[2]} {/designs/ALT_MULTADD/instances_seq/A0_reg[3]} {/designs/ALT_MULTADD/instances_seq/A0_reg[4]} {/designs/ALT_MULTADD/instances_seq/A0_reg[5]} {/designs/ALT_MULTADD/instances_seq/A0_reg[6]} {/designs/ALT_MULTADD/instances_seq/A0_reg[7]}} -to {{/designs/ALT_MULTADD/instances_seq/oR_reg[0]} {/designs/ALT_MULTADD/instances_seq/oR_reg[10]} {/designs/ALT_MULTADD/instances_seq/oR_reg[11]} {/designs/ALT_MULTADD/instances_seq/oR_reg[12]} {/designs/ALT_MULTADD/instances_seq/oR_reg[13]} {/designs/ALT_MULTADD/instances_seq/oR_reg[14]} {/designs/ALT_MULTADD/instances_seq/oR_reg[15]} {/designs/ALT_MULTADD/instances_seq/oR_reg[16]} {/designs/ALT_MULTADD/instances_seq/oR_reg[1]} {/designs/ALT_MULTADD/instances_seq/oR_reg[2]} {/designs/ALT_MULTADD/instances_seq/oR_reg[3]} {/designs/ALT_MULTADD/instances_seq/oR_reg[4]} {/designs/ALT_MULTADD/instances_seq/oR_reg[5]} {/designs/ALT_MULTADD/instances_seq/oR_reg[6]} {/designs/ALT_MULTADD/instances_seq/oR_reg[7]} {/designs/ALT_MULTADD/instances_seq/oR_reg[8]} {/designs/ALT_MULTADD/instances_seq/oR_reg[9]} {/designs/ALT_MULTADD/instances_seq/A1_reg[2]} {/designs/ALT_MULTADD/instances_seq/A1_reg[3]} {/designs/ALT_MULTADD/instances_seq/A1_reg[4]} {/designs/ALT_MULTADD/instances_seq/B1_reg[7]} {/designs/ALT_MULTADD/instances_seq/A1_reg[5]} {/designs/ALT_MULTADD/instances_seq/A1_reg[6]} {/designs/ALT_MULTADD/instances_seq/A1_reg[7]} {/designs/ALT_MULTADD/instances_seq/B0_reg[0]} {/designs/ALT_MULTADD/instances_seq/B0_reg[1]} {/designs/ALT_MULTADD/instances_seq/B0_reg[2]} {/designs/ALT_MULTADD/instances_seq/B0_reg[3]} {/designs/ALT_MULTADD/instances_seq/B0_reg[4]} {/designs/ALT_MULTADD/instances_seq/B0_reg[5]} {/designs/ALT_MULTADD/instances_seq/B0_reg[6]} {/designs/ALT_MULTADD/instances_seq/B0_reg[7]} {/designs/ALT_MULTADD/instances_seq/B1_reg[1]} {/designs/ALT_MULTADD/instances_seq/B1_reg[2]} {/designs/ALT_MULTADD/instances_seq/B1_reg[3]} {/designs/ALT_MULTADD/instances_seq/B1_reg[4]} {/designs/ALT_MULTADD/instances_seq/B1_reg[5]} {/designs/ALT_MULTADD/instances_seq/B1_reg[6]} {/designs/ALT_MULTADD/instances_seq/A1_reg[1]} {/designs/ALT_MULTADD/instances_seq/B1_reg[0]} {/designs/ALT_MULTADD/instances_seq/A0_reg[0]} {/designs/ALT_MULTADD/instances_seq/A1_reg[0]} {/designs/ALT_MULTADD/instances_seq/A0_reg[1]} {/designs/ALT_MULTADD/instances_seq/A0_reg[2]} {/designs/ALT_MULTADD/instances_seq/A0_reg[3]} {/designs/ALT_MULTADD/instances_seq/A0_reg[4]} {/designs/ALT_MULTADD/instances_seq/A0_reg[5]} {/designs/ALT_MULTADD/instances_seq/A0_reg[6]} {/designs/ALT_MULTADD/instances_seq/A0_reg[7]}}]  -name C2C -group /designs/ALT_MULTADD/timing/cost_groups/C2C
path_group -paths [specify_paths -from {{/designs/ALT_MULTADD/instances_seq/oR_reg[0]} {/designs/ALT_MULTADD/instances_seq/oR_reg[10]} {/designs/ALT_MULTADD/instances_seq/oR_reg[11]} {/designs/ALT_MULTADD/instances_seq/oR_reg[12]} {/designs/ALT_MULTADD/instances_seq/oR_reg[13]} {/designs/ALT_MULTADD/instances_seq/oR_reg[14]} {/designs/ALT_MULTADD/instances_seq/oR_reg[15]} {/designs/ALT_MULTADD/instances_seq/oR_reg[16]} {/designs/ALT_MULTADD/instances_seq/oR_reg[1]} {/designs/ALT_MULTADD/instances_seq/oR_reg[2]} {/designs/ALT_MULTADD/instances_seq/oR_reg[3]} {/designs/ALT_MULTADD/instances_seq/oR_reg[4]} {/designs/ALT_MULTADD/instances_seq/oR_reg[5]} {/designs/ALT_MULTADD/instances_seq/oR_reg[6]} {/designs/ALT_MULTADD/instances_seq/oR_reg[7]} {/designs/ALT_MULTADD/instances_seq/oR_reg[8]} {/designs/ALT_MULTADD/instances_seq/oR_reg[9]} {/designs/ALT_MULTADD/instances_seq/A1_reg[2]} {/designs/ALT_MULTADD/instances_seq/A1_reg[3]} {/designs/ALT_MULTADD/instances_seq/A1_reg[4]} {/designs/ALT_MULTADD/instances_seq/B1_reg[7]} {/designs/ALT_MULTADD/instances_seq/A1_reg[5]} {/designs/ALT_MULTADD/instances_seq/A1_reg[6]} {/designs/ALT_MULTADD/instances_seq/A1_reg[7]} {/designs/ALT_MULTADD/instances_seq/B0_reg[0]} {/designs/ALT_MULTADD/instances_seq/B0_reg[1]} {/designs/ALT_MULTADD/instances_seq/B0_reg[2]} {/designs/ALT_MULTADD/instances_seq/B0_reg[3]} {/designs/ALT_MULTADD/instances_seq/B0_reg[4]} {/designs/ALT_MULTADD/instances_seq/B0_reg[5]} {/designs/ALT_MULTADD/instances_seq/B0_reg[6]} {/designs/ALT_MULTADD/instances_seq/B0_reg[7]} {/designs/ALT_MULTADD/instances_seq/B1_reg[1]} {/designs/ALT_MULTADD/instances_seq/B1_reg[2]} {/designs/ALT_MULTADD/instances_seq/B1_reg[3]} {/designs/ALT_MULTADD/instances_seq/B1_reg[4]} {/designs/ALT_MULTADD/instances_seq/B1_reg[5]} {/designs/ALT_MULTADD/instances_seq/B1_reg[6]} {/designs/ALT_MULTADD/instances_seq/A1_reg[1]} {/designs/ALT_MULTADD/instances_seq/B1_reg[0]} {/designs/ALT_MULTADD/instances_seq/A0_reg[0]} {/designs/ALT_MULTADD/instances_seq/A1_reg[0]} {/designs/ALT_MULTADD/instances_seq/A0_reg[1]} {/designs/ALT_MULTADD/instances_seq/A0_reg[2]} {/designs/ALT_MULTADD/instances_seq/A0_reg[3]} {/designs/ALT_MULTADD/instances_seq/A0_reg[4]} {/designs/ALT_MULTADD/instances_seq/A0_reg[5]} {/designs/ALT_MULTADD/instances_seq/A0_reg[6]} {/designs/ALT_MULTADD/instances_seq/A0_reg[7]}} -to {{/designs/ALT_MULTADD/ports_out/oR[16]} {/designs/ALT_MULTADD/ports_out/oR[15]} {/designs/ALT_MULTADD/ports_out/oR[14]} {/designs/ALT_MULTADD/ports_out/oR[13]} {/designs/ALT_MULTADD/ports_out/oR[12]} {/designs/ALT_MULTADD/ports_out/oR[11]} {/designs/ALT_MULTADD/ports_out/oR[10]} {/designs/ALT_MULTADD/ports_out/oR[9]} {/designs/ALT_MULTADD/ports_out/oR[8]} {/designs/ALT_MULTADD/ports_out/oR[7]} {/designs/ALT_MULTADD/ports_out/oR[6]} {/designs/ALT_MULTADD/ports_out/oR[5]} {/designs/ALT_MULTADD/ports_out/oR[4]} {/designs/ALT_MULTADD/ports_out/oR[3]} {/designs/ALT_MULTADD/ports_out/oR[2]} {/designs/ALT_MULTADD/ports_out/oR[1]} {/designs/ALT_MULTADD/ports_out/oR[0]}}]  -name C2O -group /designs/ALT_MULTADD/timing/cost_groups/C2O
path_group -paths [specify_paths -from {/designs/ALT_MULTADD/ports_in/iCLK /designs/ALT_MULTADD/ports_in/iRST_N /designs/ALT_MULTADD/ports_in/iSEL {/designs/ALT_MULTADD/ports_in/iA0[7]} {/designs/ALT_MULTADD/ports_in/iA0[6]} {/designs/ALT_MULTADD/ports_in/iA0[5]} {/designs/ALT_MULTADD/ports_in/iA0[4]} {/designs/ALT_MULTADD/ports_in/iA0[3]} {/designs/ALT_MULTADD/ports_in/iA0[2]} {/designs/ALT_MULTADD/ports_in/iA0[1]} {/designs/ALT_MULTADD/ports_in/iA0[0]} {/designs/ALT_MULTADD/ports_in/iA1[7]} {/designs/ALT_MULTADD/ports_in/iA1[6]} {/designs/ALT_MULTADD/ports_in/iA1[5]} {/designs/ALT_MULTADD/ports_in/iA1[4]} {/designs/ALT_MULTADD/ports_in/iA1[3]} {/designs/ALT_MULTADD/ports_in/iA1[2]} {/designs/ALT_MULTADD/ports_in/iA1[1]} {/designs/ALT_MULTADD/ports_in/iA1[0]} {/designs/ALT_MULTADD/ports_in/iB0[7]} {/designs/ALT_MULTADD/ports_in/iB0[6]} {/designs/ALT_MULTADD/ports_in/iB0[5]} {/designs/ALT_MULTADD/ports_in/iB0[4]} {/designs/ALT_MULTADD/ports_in/iB0[3]} {/designs/ALT_MULTADD/ports_in/iB0[2]} {/designs/ALT_MULTADD/ports_in/iB0[1]} {/designs/ALT_MULTADD/ports_in/iB0[0]} {/designs/ALT_MULTADD/ports_in/iB1[7]} {/designs/ALT_MULTADD/ports_in/iB1[6]} {/designs/ALT_MULTADD/ports_in/iB1[5]} {/designs/ALT_MULTADD/ports_in/iB1[4]} {/designs/ALT_MULTADD/ports_in/iB1[3]} {/designs/ALT_MULTADD/ports_in/iB1[2]} {/designs/ALT_MULTADD/ports_in/iB1[1]} {/designs/ALT_MULTADD/ports_in/iB1[0]}} -to {{/designs/ALT_MULTADD/instances_seq/oR_reg[0]} {/designs/ALT_MULTADD/instances_seq/oR_reg[10]} {/designs/ALT_MULTADD/instances_seq/oR_reg[11]} {/designs/ALT_MULTADD/instances_seq/oR_reg[12]} {/designs/ALT_MULTADD/instances_seq/oR_reg[13]} {/designs/ALT_MULTADD/instances_seq/oR_reg[14]} {/designs/ALT_MULTADD/instances_seq/oR_reg[15]} {/designs/ALT_MULTADD/instances_seq/oR_reg[16]} {/designs/ALT_MULTADD/instances_seq/oR_reg[1]} {/designs/ALT_MULTADD/instances_seq/oR_reg[2]} {/designs/ALT_MULTADD/instances_seq/oR_reg[3]} {/designs/ALT_MULTADD/instances_seq/oR_reg[4]} {/designs/ALT_MULTADD/instances_seq/oR_reg[5]} {/designs/ALT_MULTADD/instances_seq/oR_reg[6]} {/designs/ALT_MULTADD/instances_seq/oR_reg[7]} {/designs/ALT_MULTADD/instances_seq/oR_reg[8]} {/designs/ALT_MULTADD/instances_seq/oR_reg[9]} {/designs/ALT_MULTADD/instances_seq/A1_reg[2]} {/designs/ALT_MULTADD/instances_seq/A1_reg[3]} {/designs/ALT_MULTADD/instances_seq/A1_reg[4]} {/designs/ALT_MULTADD/instances_seq/B1_reg[7]} {/designs/ALT_MULTADD/instances_seq/A1_reg[5]} {/designs/ALT_MULTADD/instances_seq/A1_reg[6]} {/designs/ALT_MULTADD/instances_seq/A1_reg[7]} {/designs/ALT_MULTADD/instances_seq/B0_reg[0]} {/designs/ALT_MULTADD/instances_seq/B0_reg[1]} {/designs/ALT_MULTADD/instances_seq/B0_reg[2]} {/designs/ALT_MULTADD/instances_seq/B0_reg[3]} {/designs/ALT_MULTADD/instances_seq/B0_reg[4]} {/designs/ALT_MULTADD/instances_seq/B0_reg[5]} {/designs/ALT_MULTADD/instances_seq/B0_reg[6]} {/designs/ALT_MULTADD/instances_seq/B0_reg[7]} {/designs/ALT_MULTADD/instances_seq/B1_reg[1]} {/designs/ALT_MULTADD/instances_seq/B1_reg[2]} {/designs/ALT_MULTADD/instances_seq/B1_reg[3]} {/designs/ALT_MULTADD/instances_seq/B1_reg[4]} {/designs/ALT_MULTADD/instances_seq/B1_reg[5]} {/designs/ALT_MULTADD/instances_seq/B1_reg[6]} {/designs/ALT_MULTADD/instances_seq/A1_reg[1]} {/designs/ALT_MULTADD/instances_seq/B1_reg[0]} {/designs/ALT_MULTADD/instances_seq/A0_reg[0]} {/designs/ALT_MULTADD/instances_seq/A1_reg[0]} {/designs/ALT_MULTADD/instances_seq/A0_reg[1]} {/designs/ALT_MULTADD/instances_seq/A0_reg[2]} {/designs/ALT_MULTADD/instances_seq/A0_reg[3]} {/designs/ALT_MULTADD/instances_seq/A0_reg[4]} {/designs/ALT_MULTADD/instances_seq/A0_reg[5]} {/designs/ALT_MULTADD/instances_seq/A0_reg[6]} {/designs/ALT_MULTADD/instances_seq/A0_reg[7]}}]  -name I2C -group /designs/ALT_MULTADD/timing/cost_groups/I2C
path_group -paths [specify_paths -from {/designs/ALT_MULTADD/ports_in/iCLK /designs/ALT_MULTADD/ports_in/iRST_N /designs/ALT_MULTADD/ports_in/iSEL {/designs/ALT_MULTADD/ports_in/iA0[7]} {/designs/ALT_MULTADD/ports_in/iA0[6]} {/designs/ALT_MULTADD/ports_in/iA0[5]} {/designs/ALT_MULTADD/ports_in/iA0[4]} {/designs/ALT_MULTADD/ports_in/iA0[3]} {/designs/ALT_MULTADD/ports_in/iA0[2]} {/designs/ALT_MULTADD/ports_in/iA0[1]} {/designs/ALT_MULTADD/ports_in/iA0[0]} {/designs/ALT_MULTADD/ports_in/iA1[7]} {/designs/ALT_MULTADD/ports_in/iA1[6]} {/designs/ALT_MULTADD/ports_in/iA1[5]} {/designs/ALT_MULTADD/ports_in/iA1[4]} {/designs/ALT_MULTADD/ports_in/iA1[3]} {/designs/ALT_MULTADD/ports_in/iA1[2]} {/designs/ALT_MULTADD/ports_in/iA1[1]} {/designs/ALT_MULTADD/ports_in/iA1[0]} {/designs/ALT_MULTADD/ports_in/iB0[7]} {/designs/ALT_MULTADD/ports_in/iB0[6]} {/designs/ALT_MULTADD/ports_in/iB0[5]} {/designs/ALT_MULTADD/ports_in/iB0[4]} {/designs/ALT_MULTADD/ports_in/iB0[3]} {/designs/ALT_MULTADD/ports_in/iB0[2]} {/designs/ALT_MULTADD/ports_in/iB0[1]} {/designs/ALT_MULTADD/ports_in/iB0[0]} {/designs/ALT_MULTADD/ports_in/iB1[7]} {/designs/ALT_MULTADD/ports_in/iB1[6]} {/designs/ALT_MULTADD/ports_in/iB1[5]} {/designs/ALT_MULTADD/ports_in/iB1[4]} {/designs/ALT_MULTADD/ports_in/iB1[3]} {/designs/ALT_MULTADD/ports_in/iB1[2]} {/designs/ALT_MULTADD/ports_in/iB1[1]} {/designs/ALT_MULTADD/ports_in/iB1[0]}} -to {{/designs/ALT_MULTADD/ports_out/oR[16]} {/designs/ALT_MULTADD/ports_out/oR[15]} {/designs/ALT_MULTADD/ports_out/oR[14]} {/designs/ALT_MULTADD/ports_out/oR[13]} {/designs/ALT_MULTADD/ports_out/oR[12]} {/designs/ALT_MULTADD/ports_out/oR[11]} {/designs/ALT_MULTADD/ports_out/oR[10]} {/designs/ALT_MULTADD/ports_out/oR[9]} {/designs/ALT_MULTADD/ports_out/oR[8]} {/designs/ALT_MULTADD/ports_out/oR[7]} {/designs/ALT_MULTADD/ports_out/oR[6]} {/designs/ALT_MULTADD/ports_out/oR[5]} {/designs/ALT_MULTADD/ports_out/oR[4]} {/designs/ALT_MULTADD/ports_out/oR[3]} {/designs/ALT_MULTADD/ports_out/oR[2]} {/designs/ALT_MULTADD/ports_out/oR[1]} {/designs/ALT_MULTADD/ports_out/oR[0]}}]  -name I2O -group /designs/ALT_MULTADD/timing/cost_groups/I2O
# BEGIN DFT SECTION
set_attribute -quiet dft_scan_style muxed_scan /
set_attribute -quiet dft_scanbit_waveform_analysis false /
# END DFT SECTION
set_attribute -quiet hdl_user_name ALT_MULTADD /designs/ALT_MULTADD
set_attribute -quiet hdl_filelist { {default -v1995 {} {./../design_mapped.v}}} /designs/ALT_MULTADD
set_attribute -quiet ovf_current_verification_directory fv/ALT_MULTADD /designs/ALT_MULTADD
set_attribute -quiet max_leakage_power 1000000.0 /designs/ALT_MULTADD
set_attribute -quiet hdl_user_name csa_tree /designs/ALT_MULTADD/subdesigns/csa_tree
set_attribute -quiet hdl_user_name csa_tree_add_25_30_group_50 /designs/ALT_MULTADD/subdesigns/csa_tree_add_25_30_group_50
set_attribute -quiet hdl_user_name csa_tree_mul_25_40_group_52 /designs/ALT_MULTADD/subdesigns/csa_tree_mul_25_40_group_52
set_attribute -quiet hdl_user_name add_unsigned_108 /designs/ALT_MULTADD/subdesigns/add_unsigned_108
set_attribute -quiet hdl_user_name mult_unsigned /designs/ALT_MULTADD/subdesigns/mult_unsigned
