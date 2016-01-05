cd /home/anhho7/Desktop/EE465/Lab6
source .edp_14642.enc.dat/lab1.globals
catch { set_global timing_suppress_ilm_constraint_mismatches true }
set_global _read_library_without_ccs false
set_global timing_library_ccs_it_data false
set_global timing_library_read_ccs_noise_data false
loadConfig .edp_14642.enc.dat/lab1.conf 0
setVar rda_Input(ui_settop) {1}
setVar rda_Input(ui_topcell) {lab1}
setVar rda_Input(ui_view_definition_file) ""
setVar rda_Input(ui_ilmdir) ""
setVar rda_Input(ui_ilmlist) {}
setVar rda_Input(ui_pwrnet) {VDD }
setVar rda_Input(ui_gndnet) {VSS }
commitConfig
