######################################################################

# Created by Encounter(R) RTL Compiler v12.10-s012_1 on Mon Nov 10 18:04:40 -0600 2014

# This file contains the RC script for /designs/Elevator

######################################################################

set_attribute -quiet gui_auto_update false /
set_attribute -quiet lib_search_path ../libdir /
set_attribute -quiet ple_correlation_factors {1.9000 2.0000} /
set_attribute -quiet maximum_interval_of_vias infinity /
set_attribute -quiet interconnect_mode wireload /
set_attribute -quiet wireload_mode segmented /
set_attribute -quiet wireload_selection /libraries/tcbn65gpluswc/wireload_selections/WireAreaForZero /
set_attribute -quiet tree_type balanced_tree /libraries/tcbn65gpluswc/operating_conditions/WCCOM
set_attribute -quiet tree_type balanced_tree /libraries/tcbn65gpluswc/operating_conditions/_nominal_
# BEGIN MSV SECTION
# END MSV SECTION
# BEGIN DFT SECTION
set_attribute -quiet dft_scan_style muxed_scan /
set_attribute -quiet dft_scanbit_waveform_analysis false /
# END DFT SECTION
set_attribute -quiet hdl_filelist {{default -v2001 {SYNTHESIS} {../rtl/Elevator.v}}} /designs/Elevator
set_attribute -quiet hdl_user_name Elevator /designs/Elevator
set_attribute -quiet ovf_current_verification_directory fv/Elevator /designs/Elevator
set_attribute -quiet retime true /designs/Elevator
