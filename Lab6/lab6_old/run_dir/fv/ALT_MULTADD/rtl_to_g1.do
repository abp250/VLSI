// Generated by Cadence Encounter(R) RTL Compiler v10.10-s209_1
tclmode
set env(RC_VERSION) "v10.10-s209_1"
vpxmode
set dofile abort exit
usage -auto
set log file fv/ALT_MULTADD/rtl_to_g1.log -replace
// tclmode
// set env(CDN_SYNTH_ROOT) /usr/local/cadence/EDI101/tools.lnx86
// vpxmode

tclmode
puts "Start: Reading OVF file"
vpx read guide file fv/ALT_MULTADD/rtl_to_g1.ovf
puts "End: Reading OVF file"
vpxmode

tclmode
set ver [lindex [split [lindex [get_version_info] 0] "-"] 0]
if {$ver >= 08.10} {
  vpx set naming style rc
}
vpxmode
set naming rule "%s_reg" -register -golden
set naming rule %L.%s %L[%d].%s %s -instance
set undefined cell black_box -noascend -both
set undriven signal Z -golden

read library -statetable -liberty -pg_pin \
	/home/abp250/Documents/EE465/Lab6/lab6_old/run_dir/../../lab6/encounter/libdir/lib/tcbn65gpluswc.lib \
	-both
add search path -design ./
read design -verilog   \
	./../../lab6/design_mapped.v \
	-golden -lastmod -noelab
elaborate design -golden
set root module ALT_MULTADD -golden
read design -verilog \
	-unzip fv/ALT_MULTADD/g1.v.gz \
	-revised -lastmod
set root module ALT_MULTADD -revised
report design data
report black box

tclmode
puts "Start: Analyze and apply OVF transformations"
vpx apply guided transformations
vpx report guide information
puts "End: Analyze and apply OVF transformations"
vpxmode


uniquify -all -nolib
set flatten model -seq_constant -seq_constant_x_to 0
set flatten model -nodff_to_dlat_zero -nodff_to_dlat_feedback
// set parallel option -threads 4 -license xl
set analyze option -auto

write hier_compare dofile fv/ALT_MULTADD/hier_rtl_to_g1.do \
	-noexact_pin_match -constraint -usage -replace -run_hier \
	-prepend_string "analyze datapath -module -verbose; usage; analyze datapath -verbose"
run hier_compare fv/ALT_MULTADD/hier_rtl_to_g1.do
usage
// report hier_compare result -flattened
set system mode lec
tclmode
puts "No of diff points    = [get_compare_points -diff -count]"
if {[get_compare_points -diff -count] > 0} {
    puts "------------------------------------"
    puts "ERROR: Different Key Points detected"
    puts "------------------------------------"
#     foreach i [get_compare_points -diff] {
#         vpx report test vector [get_keypoint $i]
#         puts "     ----------------------------"
#     }
}
vpxmode
exit -force
