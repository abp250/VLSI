######################################################################

# Created by Encounter(R) RTL Compiler v10.10-s209_1 on Mon Sep 29 18:23:05 -0500 2014

# This file contains the RC script for /designs/ALT_MULTADD

######################################################################

set_attribute -quiet lib_search_path ../libdir /
set_attribute -quiet gui_sv_update manual /
set_attribute -quiet interconnect_mode wireload /
set_attribute -quiet wireload_mode segmented /
set_attribute -quiet wireload_selection /libraries/tcbn65gpluswc/wireload_selections/WireAreaForZero /
set_attribute -quiet tree_type balanced_tree /libraries/tcbn65gpluswc/operating_conditions/WCCOM
set_attribute -quiet tree_type balanced_tree /libraries/tcbn65gpluswc/operating_conditions/_nominal_
# BEGIN MSV SECTION
# END MSV SECTION
define_clock -name clk -domain domain_1 -period 400.0 -divide_period 1 -rise 1 -divide_rise 2 -fall 1 -divide_fall 2 -design /designs/ALT_MULTADD /designs/ALT_MULTADD/ports_in/iCLK
set_attribute -quiet clock_network_late_latency {1.0 1.0 1.0 1.0} /designs/ALT_MULTADD/timing/clock_domains/domain_1/clk
set_attribute -quiet clock_source_early_latency {1.5 1.5 1.5 1.5} /designs/ALT_MULTADD/timing/clock_domains/domain_1/clk
set_attribute -quiet clock_setup_uncertainty {100.0 50.0} /designs/ALT_MULTADD/timing/clock_domains/domain_1/clk
set_attribute -quiet slew {100.0 110.0 110.0 120.0} /designs/ALT_MULTADD/timing/clock_domains/domain_1/clk
external_delay -accumulate -input {200.0 200.0 200.0 200.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/clk -name {in_delay\/designs\/ALT_MULTADD\/} {{/designs/ALT_MULTADD/ports_in/iB1[0]} {/designs/ALT_MULTADD/ports_in/iB1[1]} {/designs/ALT_MULTADD/ports_in/iB1[2]} {/designs/ALT_MULTADD/ports_in/iB1[3]} {/designs/ALT_MULTADD/ports_in/iB1[4]} {/designs/ALT_MULTADD/ports_in/iB1[5]} {/designs/ALT_MULTADD/ports_in/iB1[6]} {/designs/ALT_MULTADD/ports_in/iB1[7]} {/designs/ALT_MULTADD/ports_in/iB0[0]} {/designs/ALT_MULTADD/ports_in/iB0[1]} {/designs/ALT_MULTADD/ports_in/iB0[2]} {/designs/ALT_MULTADD/ports_in/iB0[3]} {/designs/ALT_MULTADD/ports_in/iB0[4]} {/designs/ALT_MULTADD/ports_in/iB0[5]} {/designs/ALT_MULTADD/ports_in/iB0[6]} {/designs/ALT_MULTADD/ports_in/iB0[7]} {/designs/ALT_MULTADD/ports_in/iA1[0]} {/designs/ALT_MULTADD/ports_in/iA1[1]} {/designs/ALT_MULTADD/ports_in/iA1[2]} {/designs/ALT_MULTADD/ports_in/iA1[3]} {/designs/ALT_MULTADD/ports_in/iA1[4]} {/designs/ALT_MULTADD/ports_in/iA1[5]} {/designs/ALT_MULTADD/ports_in/iA1[6]} {/designs/ALT_MULTADD/ports_in/iA1[7]} {/designs/ALT_MULTADD/ports_in/iA0[0]} {/designs/ALT_MULTADD/ports_in/iA0[1]} {/designs/ALT_MULTADD/ports_in/iA0[2]} {/designs/ALT_MULTADD/ports_in/iA0[3]} {/designs/ALT_MULTADD/ports_in/iA0[4]} {/designs/ALT_MULTADD/ports_in/iA0[5]} {/designs/ALT_MULTADD/ports_in/iA0[6]} {/designs/ALT_MULTADD/ports_in/iA0[7]} /designs/ALT_MULTADD/ports_in/iSEL /designs/ALT_MULTADD/ports_in/iRST_N /designs/ALT_MULTADD/ports_in/iCLK}
external_delay -accumulate -output {200.0 200.0 200.0 200.0} -clock /designs/ALT_MULTADD/timing/clock_domains/domain_1/clk -name {out_delay\/designs\/ALT_MULTADD\/} {{/designs/ALT_MULTADD/ports_out/oRESULT[0]} {/designs/ALT_MULTADD/ports_out/oRESULT[1]} {/designs/ALT_MULTADD/ports_out/oRESULT[2]} {/designs/ALT_MULTADD/ports_out/oRESULT[3]} {/designs/ALT_MULTADD/ports_out/oRESULT[4]} {/designs/ALT_MULTADD/ports_out/oRESULT[5]} {/designs/ALT_MULTADD/ports_out/oRESULT[6]} {/designs/ALT_MULTADD/ports_out/oRESULT[7]} {/designs/ALT_MULTADD/ports_out/oRESULT[8]} {/designs/ALT_MULTADD/ports_out/oRESULT[9]} {/designs/ALT_MULTADD/ports_out/oRESULT[10]} {/designs/ALT_MULTADD/ports_out/oRESULT[11]} {/designs/ALT_MULTADD/ports_out/oRESULT[12]} {/designs/ALT_MULTADD/ports_out/oRESULT[13]} {/designs/ALT_MULTADD/ports_out/oRESULT[14]} {/designs/ALT_MULTADD/ports_out/oRESULT[15]} {/designs/ALT_MULTADD/ports_out/oRESULT[16]}}
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
