######################################################################

# Created by Encounter(R) RTL Compiler v12.10-s012_1 on Wed Oct 14 17:02:06 -0500 2015

# This file contains the RC script for /designs/ALT_MULTADD_pipe

######################################################################

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
# BEGIN DFT SECTION
set_attribute -quiet dft_scan_style muxed_scan /
set_attribute -quiet dft_scanbit_waveform_analysis false /
# END DFT SECTION
set_attribute -quiet hdl_filelist {{default -v2001 {SYNTHESIS} {../rtl/ALT_MULTADD_pipe.v}}} /designs/ALT_MULTADD_pipe
set_attribute -quiet hdl_user_name ALT_MULTADD_pipe /designs/ALT_MULTADD_pipe
set_attribute -quiet ovf_current_verification_directory fv/ALT_MULTADD_pipe /designs/ALT_MULTADD_pipe
set_attribute -quiet max_leakage_power 100000000.0 /designs/ALT_MULTADD_pipe
set_attribute -quiet logical_hier false /designs/ALT_MULTADD_pipe/subdesigns/csa_tree_add_27_19_group_57
set_attribute -quiet preserve size_delete_ok /designs/ALT_MULTADD_pipe/instances_hier/csa_tree_add_27_19_groupi/instances_comb/cdnca_003_0
set_attribute -quiet preserve size_delete_ok /designs/ALT_MULTADD_pipe/instances_hier/csa_tree_add_27_19_groupi/instances_comb/cdnca_004_0
set_attribute -quiet preserve size_delete_ok /designs/ALT_MULTADD_pipe/instances_hier/csa_tree_add_27_19_groupi/instances_comb/cdnca_005_0
set_attribute -quiet preserve size_delete_ok /designs/ALT_MULTADD_pipe/instances_hier/csa_tree_add_27_19_groupi/instances_comb/cdnca_005_1
set_attribute -quiet preserve size_delete_ok /designs/ALT_MULTADD_pipe/instances_hier/csa_tree_add_27_19_groupi/instances_comb/cdnca_006_0
set_attribute -quiet preserve size_delete_ok /designs/ALT_MULTADD_pipe/instances_hier/csa_tree_add_27_19_groupi/instances_comb/cdnca_006_1
set_attribute -quiet preserve size_delete_ok /designs/ALT_MULTADD_pipe/instances_hier/csa_tree_add_27_19_groupi/instances_comb/cdnca_007_0
set_attribute -quiet preserve size_delete_ok /designs/ALT_MULTADD_pipe/instances_hier/csa_tree_add_27_19_groupi/instances_comb/cdnca_007_1
set_attribute -quiet preserve size_delete_ok /designs/ALT_MULTADD_pipe/instances_hier/csa_tree_add_27_19_groupi/instances_comb/cdnca_007_2
set_attribute -quiet preserve size_delete_ok /designs/ALT_MULTADD_pipe/instances_hier/csa_tree_add_27_19_groupi/instances_comb/cdnca_008_0
set_attribute -quiet preserve size_delete_ok /designs/ALT_MULTADD_pipe/instances_hier/csa_tree_add_27_19_groupi/instances_comb/cdnca_008_1
set_attribute -quiet preserve size_delete_ok /designs/ALT_MULTADD_pipe/instances_hier/csa_tree_add_27_19_groupi/instances_comb/cdnca_008_2
set_attribute -quiet preserve size_delete_ok /designs/ALT_MULTADD_pipe/instances_hier/csa_tree_add_27_19_groupi/instances_comb/cdnca_009_0
set_attribute -quiet preserve size_delete_ok /designs/ALT_MULTADD_pipe/instances_hier/csa_tree_add_27_19_groupi/instances_comb/cdnca_009_1
set_attribute -quiet preserve size_delete_ok /designs/ALT_MULTADD_pipe/instances_hier/csa_tree_add_27_19_groupi/instances_comb/cdnca_010_0
set_attribute -quiet preserve size_delete_ok /designs/ALT_MULTADD_pipe/instances_hier/csa_tree_add_27_19_groupi/instances_comb/cdnca_010_1
set_attribute -quiet preserve size_delete_ok /designs/ALT_MULTADD_pipe/instances_hier/csa_tree_add_27_19_groupi/instances_comb/cdnca_011_0
set_attribute -quiet preserve size_delete_ok /designs/ALT_MULTADD_pipe/instances_hier/csa_tree_add_27_19_groupi/instances_comb/cdnca_012_0
set_attribute -quiet logical_hier false /designs/ALT_MULTADD_pipe/subdesigns/mult_unsigned_85
set_attribute -quiet rtlop_info {{} 0 0 0 3 0 47 0 2 1 1 0} /designs/ALT_MULTADD_pipe/instances_hier/mul_17_10
set_attribute -quiet logical_hier false /designs/ALT_MULTADD_pipe/subdesigns/mult_unsigned_85_54
set_attribute -quiet rtlop_info {{} 0 0 0 3 0 47 0 2 1 1 0} /designs/ALT_MULTADD_pipe/instances_hier/mul_18_10
