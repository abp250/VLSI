#######################################################
#                                                     #
#  Encounter Command Logging File                     #
#  Created on Wed Oct  7 15:07:36 2015                #
#                                                     #
#######################################################

#@(#)CDS: Encounter v10.12-s181_1 (64bit) 07/28/2011 22:52 (Linux 2.6)
#@(#)CDS: NanoRoute v10.12-s010 NR110720-1815/10_10_USR2-UB (database version 2.30, 124.2.1) {superthreading v1.15}
#@(#)CDS: CeltIC v10.12-s013_1 (64bit) 07/27/2011 04:14:35 (Linux 2.6.9-89.0.19.ELsmp)
#@(#)CDS: AAE 10.12-s001 (64bit) 07/28/2011 (Linux 2.6.9-89.0.19.ELsmp)
#@(#)CDS: CTE 10.12-s010_1 (64bit) Jul 18 2011 22:58:43 (Linux 2.6.9-89.0.19.ELsmp)
#@(#)CDS: CPE v10.12-s007

win
encMessage warning 0
encMessage debug 0
encMessage info 0
restoreDesign lab6.enc.dat lab1
setDrawView fplan
encMessage warning 1
encMessage debug 0
encMessage info 1
setPlaceMode -fp false
placeDesign -prePlaceOpt
setDrawView place
addRing -spacing_bottom 2 -width_left 9 -width_bottom 9 -width_top 9 -spacing_top 2 -layer_bottom M1 -stacked_via_top_layer M8 -width_right 9 -around core -jog_distance 0.1 -offset_bottom 0.1 -layer_top M1 -threshold 0.1 -offset_left 0.1 -spacing_right 2 -spacing_left 2 -offset_right 0.1 -offset_top 0.1 -layer_right M2 -stacked_via_bottom_layer M1 -layer_left M2
saveDesign lab6_1.enc
setPlaceMode -fp false
placeDesign -inPlaceOpt -prePlaceOpt