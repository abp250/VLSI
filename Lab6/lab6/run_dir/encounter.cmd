#######################################################
#                                                     #
#  Encounter Command Logging File                     #
#  Created on Fri Oct  9 16:07:19 2015                #
#                                                     #
#######################################################

#@(#)CDS: Encounter v10.12-s181_1 (64bit) 07/28/2011 22:52 (Linux 2.6)
#@(#)CDS: NanoRoute v10.12-s010 NR110720-1815/10_10_USR2-UB (database version 2.30, 124.2.1) {superthreading v1.15}
#@(#)CDS: CeltIC v10.12-s013_1 (64bit) 07/27/2011 04:14:35 (Linux 2.6.9-89.0.19.ELsmp)
#@(#)CDS: AAE 10.12-s001 (64bit) 07/28/2011 (Linux 2.6.9-89.0.19.ELsmp)
#@(#)CDS: CTE 10.12-s010_1 (64bit) Jul 18 2011 22:58:43 (Linux 2.6.9-89.0.19.ELsmp)
#@(#)CDS: CPE v10.12-s007

win
windowSelect 0.042 0.099 0.040 0.099
compileDesign
placeDesign -noPrePlaceOpt
setDrawView place
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site core -r .7 .9 20 20 20 20
uiSetTool select
getIoFlowFlag
fit
addRing -spacing_bottom 0.4 -width_left 0.4 -width_bottom 0.4 -width_top 0.4 -spacing_top 0.4 -layer_bottom M1 -stacked_via_top_layer M8 -width_right 0.4 -around core -jog_distance 0.1 -offset_bottom 0.1 -layer_top M1 -threshold 0.1 -offset_left 0.1 -spacing_right 0.4 -spacing_left 0.4 -offset_right 0.1 -offset_top 0.1 -layer_right M2 -nets {VDD VSS} -stacked_via_bottom_layer M1 -layer_left M2
