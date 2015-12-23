#######################################################
#                                                     #
#  Encounter Command Logging File                     #
#  Created on Thu Dec 10 20:57:36 2015                #
#                                                     #
#######################################################

#@(#)CDS: Encounter v10.12-s181_1 (64bit) 07/28/2011 22:52 (Linux 2.6)
#@(#)CDS: NanoRoute v10.12-s010 NR110720-1815/10_10_USR2-UB (database version 2.30, 124.2.1) {superthreading v1.15}
#@(#)CDS: CeltIC v10.12-s013_1 (64bit) 07/27/2011 04:14:35 (Linux 2.6.9-89.0.19.ELsmp)
#@(#)CDS: AAE 10.12-s001 (64bit) 07/28/2011 (Linux 2.6.9-89.0.19.ELsmp)
#@(#)CDS: CTE 10.12-s010_1 (64bit) Jul 18 2011 22:58:43 (Linux 2.6.9-89.0.19.ELsmp)
#@(#)CDS: CPE v10.12-s007

win
loadRTLConfig saved.conf
compileDesign
placeDesign -noPrePlaceOpt
setDrawView place
fit
getIoFlowFlag
setFPlanRowSpacingAndType .2 2
setIoFlowFlag 0
floorPlan -site core -r 1 .8 30 30 30 30
uiSetTool select
getIoFlowFlag
fit
addRing -spacing_bottom 1.8 -width_left 9.9 -width_bottom 9.9 -width_top 9.9 -spacing_top 1.8 -layer_bottom M1 -stacked_via_top_layer M8 -width_right 9.9 -around core -jog_distance 0.1 -offset_bottom 1.5 -layer_top M1 -threshold 0.1 -offset_left 1.5 -spacing_right 1.8 -spacing_left 1.8 -offset_right 1.5 -offset_top 1.5 -layer_right M2 -nets {VDD VSS} -stacked_via_bottom_layer M1 -layer_left M2
setPlaceMode -fp false
placeDesign -prePlaceOpt
fit
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -preCTS
clockDesign -genSpecOnly Clock.ctstch
clockDesign -specFile Clock.ctstch -outDir clock_report -fixedInstBeforeCTS
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postCTS
fit
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven false
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postRoute
optDesign -postRoute -hold
uiSetTool ruler
report_timing > timing.rpt
report_timing -lint > timing.rpt
report_power > power.rpt
view_analysis_results
get_time_unit
report_timing -machine_readable -max_points 10000 -max_slack 0.75 -path_exceptions all > top.mtarpt
load_timing_debug_report -name default_report top.mtarpt
dbGet top.statusRouted
saveNetlist -excludeLeafCell design_pr.v
rcOut -spef design.spef
write_sdf -ideal_clock_network triangle.sdf
