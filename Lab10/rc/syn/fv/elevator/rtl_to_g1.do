set log file fv/elevator/rtl_to_g1.log -replace
// Generated by Cadence Encounter(R) RTL Compiler v12.10-s012_1
tclmode
set env(RC_VERSION) "v12.10-s012_1"
vpxmode
set dofile abort exit
usage -auto -elapse
// tclmode
// set env(CDN_SYNTH_ROOT) /usr/local/cadence/edi/tools.lnx86
// vpxmode

tclmode
puts "Start: Reading OVF file"
vpx read guide file fv/elevator/rtl_to_g1.ovf
puts "End: Reading OVF file"
vpxmode

tclmode
set ver [lindex [split [lindex [get_version_info] 0] "-"] 0]
if {$ver >= 08.10} {
  vpx set naming style rc
}
vpxmode
set naming rule "%s[%d]" -instance_array
set naming rule "%s_reg" -register -golden
set naming rule "%L.%s" "%L[%d].%s" "%s" -instance
set naming rule "%L.%s" "%L[%d].%s" "%s" -variable
set undefined cell black_box -noascend -both
set undriven signal Z -golden

add search path -library ../libdir
read library -statetable -liberty -both  \
	tcbn65gpluswc.lib

add search path -design .
read design  -verilog2k -define SYNTHESIS  -golden -lastmod -noelab \
	../../elevator.v

elaborate design -golden -root elevator -rootonly

read design -verilog -revised -lastmod -noelab \
	-unzip fv/elevator/g1.v.gz

elaborate design -revised -root elevator

substitute blackbox model -golden
report design data
report black box

tclmode
puts "Start: Analyze and apply OVF transformations"
vpx apply guided transformations
vpx report guide information
puts "End: Analyze and apply OVF transformations"
vpxmode


uniquify -all -nolib
set flatten model -latch_transparent
set flatten model -seq_constant -seq_constant_x_to 0
set flatten model -nodff_to_dlat_zero -nodff_to_dlat_feedback
// set parallel option -threads 4 -license xl -norelease_license
// set compare options -threads 0
set flatten model -gated_clock
set analyze option -auto

set system mode lec
analyze datapath -module -verbose
usage
analyze datapath -verbose
// report mapped points
report unmapped points -summary
report unmapped points -extra -unreachable -notmapped
add compared points -all
// report compared points
compare
usage
// report compare data
report compare data -class nonequivalent -class abort -class notcompared
report verification -verbose
report statistics
tclmode
puts "No of compare points = [get_compare_points -count]"
puts "No of diff points    = [get_compare_points -diff -count]"
puts "No of abort points   = [get_compare_points -abort -count]"
puts "No of unknown points = [get_compare_points -unknown -count]"
if {[get_compare_points -count] == 0} {
    puts "---------------------------------"
    puts "ERROR: No compare points detected"
    puts "---------------------------------"
}
if {[get_compare_points -diff -count] > 0} {
    puts "------------------------------------"
    puts "ERROR: Different Key Points detected"
    puts "------------------------------------"
#     foreach i [get_compare_points -diff] {
#         vpx report test vector [get_keypoint $i]
#         puts "     ----------------------------"
#     }
}
if {[get_compare_points -abort -count] > 0} {
    puts "-----------------------------"
    puts "ERROR: Abort Points detected "
    puts "-----------------------------"
}
if {[get_compare_points -unknown -count] > 0} {
    puts "----------------------------------"
    puts "ERROR: Unknown Key Points detected"
    puts "----------------------------------"
}
vpxmode
exit -force