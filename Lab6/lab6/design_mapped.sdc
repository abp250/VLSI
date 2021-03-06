# ####################################################################

#  Created by Encounter(R) RTL Compiler v12.10-s012_1 on Fri Oct 09 15:48:52 -0500 2015

# ####################################################################

set sdc_version 1.7

set_units -capacitance 1000.0fF
set_units -time 1000.0ps

# Set the current design
current_design ALT_MULTADD

create_clock -name "iCLK" -add -period 4.0 -waveform {0.0 2.0} [get_ports iCLK]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks iCLK] -add_delay -max 0.001 [get_ports {iA0[7]}]
set_input_delay -clock [get_clocks iCLK] -add_delay -max 0.001 [get_ports {iA0[6]}]
set_input_delay -clock [get_clocks iCLK] -add_delay -max 0.001 [get_ports {iA0[5]}]
set_input_delay -clock [get_clocks iCLK] -add_delay -max 0.001 [get_ports {iA0[4]}]
set_input_delay -clock [get_clocks iCLK] -add_delay -max 0.001 [get_ports {iA0[3]}]
set_input_delay -clock [get_clocks iCLK] -add_delay -max 0.001 [get_ports {iA0[2]}]
set_input_delay -clock [get_clocks iCLK] -add_delay -max 0.001 [get_ports {iA0[1]}]
set_input_delay -clock [get_clocks iCLK] -add_delay -max 0.001 [get_ports {iA0[0]}]
set_input_delay -clock [get_clocks iCLK] -add_delay -max 0.001 [get_ports {iB0[7]}]
set_input_delay -clock [get_clocks iCLK] -add_delay -max 0.001 [get_ports {iB0[6]}]
set_input_delay -clock [get_clocks iCLK] -add_delay -max 0.001 [get_ports {iB0[5]}]
set_input_delay -clock [get_clocks iCLK] -add_delay -max 0.001 [get_ports {iB0[4]}]
set_input_delay -clock [get_clocks iCLK] -add_delay -max 0.001 [get_ports {iB0[3]}]
set_input_delay -clock [get_clocks iCLK] -add_delay -max 0.001 [get_ports {iB0[2]}]
set_input_delay -clock [get_clocks iCLK] -add_delay -max 0.001 [get_ports {iB0[1]}]
set_input_delay -clock [get_clocks iCLK] -add_delay -max 0.001 [get_ports {iB0[0]}]
set_input_delay -clock [get_clocks iCLK] -add_delay -max 0.001 [get_ports {iA1[7]}]
set_input_delay -clock [get_clocks iCLK] -add_delay -max 0.001 [get_ports {iA1[6]}]
set_input_delay -clock [get_clocks iCLK] -add_delay -max 0.001 [get_ports {iA1[5]}]
set_input_delay -clock [get_clocks iCLK] -add_delay -max 0.001 [get_ports {iA1[4]}]
set_input_delay -clock [get_clocks iCLK] -add_delay -max 0.001 [get_ports {iA1[3]}]
set_input_delay -clock [get_clocks iCLK] -add_delay -max 0.001 [get_ports {iA1[2]}]
set_input_delay -clock [get_clocks iCLK] -add_delay -max 0.001 [get_ports {iA1[1]}]
set_input_delay -clock [get_clocks iCLK] -add_delay -max 0.001 [get_ports {iA1[0]}]
set_input_delay -clock [get_clocks iCLK] -add_delay -max 0.001 [get_ports {iB1[7]}]
set_input_delay -clock [get_clocks iCLK] -add_delay -max 0.001 [get_ports {iB1[6]}]
set_input_delay -clock [get_clocks iCLK] -add_delay -max 0.001 [get_ports {iB1[5]}]
set_input_delay -clock [get_clocks iCLK] -add_delay -max 0.001 [get_ports {iB1[4]}]
set_input_delay -clock [get_clocks iCLK] -add_delay -max 0.001 [get_ports {iB1[3]}]
set_input_delay -clock [get_clocks iCLK] -add_delay -max 0.001 [get_ports {iB1[2]}]
set_input_delay -clock [get_clocks iCLK] -add_delay -max 0.001 [get_ports {iB1[1]}]
set_input_delay -clock [get_clocks iCLK] -add_delay -max 0.001 [get_ports {iB1[0]}]
set_max_leakage_power 1000000.0
set_wire_load_mode "segmented"
set_wire_load_selection_group "WireAreaForZero" -library "tcbn65gpluswc"
set_dont_use [get_lib_cells tcbn65gpluswc/ANTENNA]
set_dont_use [get_lib_cells tcbn65gpluswc/BHD]
set_dont_use [get_lib_cells tcbn65gpluswc/BUFFD20]
set_dont_use [get_lib_cells tcbn65gpluswc/BUFFD24]
set_dont_use [get_lib_cells tcbn65gpluswc/BUFTD20]
set_dont_use [get_lib_cells tcbn65gpluswc/BUFTD24]
set_dont_use [get_lib_cells tcbn65gpluswc/CKBD20]
set_dont_use [get_lib_cells tcbn65gpluswc/CKBD24]
set_dont_use [get_lib_cells tcbn65gpluswc/CKLHQD20]
set_dont_use [get_lib_cells tcbn65gpluswc/CKLHQD24]
set_dont_use [get_lib_cells tcbn65gpluswc/CKLNQD20]
set_dont_use [get_lib_cells tcbn65gpluswc/CKLNQD24]
set_dont_use [get_lib_cells tcbn65gpluswc/CKND20]
set_dont_use [get_lib_cells tcbn65gpluswc/CKND24]
set_dont_use [get_lib_cells tcbn65gpluswc/DCAP]
set_dont_use [get_lib_cells tcbn65gpluswc/DCAP4]
set_dont_use [get_lib_cells tcbn65gpluswc/DCAP8]
set_dont_use [get_lib_cells tcbn65gpluswc/DCAP16]
set_dont_use [get_lib_cells tcbn65gpluswc/DCAP32]
set_dont_use [get_lib_cells tcbn65gpluswc/DCAP64]
set_dont_use [get_lib_cells tcbn65gpluswc/DEL0]
set_dont_use [get_lib_cells tcbn65gpluswc/DEL005]
set_dont_use [get_lib_cells tcbn65gpluswc/DEL01]
set_dont_use [get_lib_cells tcbn65gpluswc/DEL015]
set_dont_use [get_lib_cells tcbn65gpluswc/DEL02]
set_dont_use [get_lib_cells tcbn65gpluswc/DEL1]
set_dont_use [get_lib_cells tcbn65gpluswc/DEL2]
set_dont_use [get_lib_cells tcbn65gpluswc/DEL3]
set_dont_use [get_lib_cells tcbn65gpluswc/DEL4]
set_dont_use [get_lib_cells tcbn65gpluswc/GAN2D1]
set_dont_use [get_lib_cells tcbn65gpluswc/GAN2D2]
set_dont_use [get_lib_cells tcbn65gpluswc/GAOI21D1]
set_dont_use [get_lib_cells tcbn65gpluswc/GAOI21D2]
set_dont_use [get_lib_cells tcbn65gpluswc/GAOI22D1]
set_dont_use [get_lib_cells tcbn65gpluswc/GBUFFD1]
set_dont_use [get_lib_cells tcbn65gpluswc/GBUFFD2]
set_dont_use [get_lib_cells tcbn65gpluswc/GBUFFD3]
set_dont_use [get_lib_cells tcbn65gpluswc/GBUFFD4]
set_dont_use [get_lib_cells tcbn65gpluswc/GBUFFD8]
set_dont_use [get_lib_cells tcbn65gpluswc/GDCAP]
set_dont_use [get_lib_cells tcbn65gpluswc/GDCAP2]
set_dont_use [get_lib_cells tcbn65gpluswc/GDCAP3]
set_dont_use [get_lib_cells tcbn65gpluswc/GDCAP4]
set_dont_use [get_lib_cells tcbn65gpluswc/GDCAP10]
set_dont_use [get_lib_cells tcbn65gpluswc/GDFCNQD1]
set_dont_use [get_lib_cells tcbn65gpluswc/GDFQD1]
set_dont_use [get_lib_cells tcbn65gpluswc/GINVD1]
set_dont_use [get_lib_cells tcbn65gpluswc/GINVD2]
set_dont_use [get_lib_cells tcbn65gpluswc/GINVD3]
set_dont_use [get_lib_cells tcbn65gpluswc/GINVD4]
set_dont_use [get_lib_cells tcbn65gpluswc/GINVD8]
set_dont_use [get_lib_cells tcbn65gpluswc/GMUX2D1]
set_dont_use [get_lib_cells tcbn65gpluswc/GMUX2D2]
set_dont_use [get_lib_cells tcbn65gpluswc/GMUX2ND1]
set_dont_use [get_lib_cells tcbn65gpluswc/GMUX2ND2]
set_dont_use [get_lib_cells tcbn65gpluswc/GND2D1]
set_dont_use [get_lib_cells tcbn65gpluswc/GND2D2]
set_dont_use [get_lib_cells tcbn65gpluswc/GND2D3]
set_dont_use [get_lib_cells tcbn65gpluswc/GND2D4]
set_dont_use [get_lib_cells tcbn65gpluswc/GND3D1]
set_dont_use [get_lib_cells tcbn65gpluswc/GND3D2]
set_dont_use [get_lib_cells tcbn65gpluswc/GNR2D1]
set_dont_use [get_lib_cells tcbn65gpluswc/GNR2D2]
set_dont_use [get_lib_cells tcbn65gpluswc/GNR3D1]
set_dont_use [get_lib_cells tcbn65gpluswc/GNR3D2]
set_dont_use [get_lib_cells tcbn65gpluswc/GOAI21D1]
set_dont_use [get_lib_cells tcbn65gpluswc/GOAI21D2]
set_dont_use [get_lib_cells tcbn65gpluswc/GOR2D1]
set_dont_use [get_lib_cells tcbn65gpluswc/GOR2D2]
set_dont_use [get_lib_cells tcbn65gpluswc/GSDFCNQD1]
set_dont_use [get_lib_cells tcbn65gpluswc/GTIEH]
set_dont_use [get_lib_cells tcbn65gpluswc/GTIEL]
set_dont_use [get_lib_cells tcbn65gpluswc/GXNR2D1]
set_dont_use [get_lib_cells tcbn65gpluswc/GXNR2D2]
set_dont_use [get_lib_cells tcbn65gpluswc/GXOR2D1]
set_dont_use [get_lib_cells tcbn65gpluswc/GXOR2D2]
set_dont_use [get_lib_cells tcbn65gpluswc/INVD20]
set_dont_use [get_lib_cells tcbn65gpluswc/INVD24]
set_dont_use [get_lib_cells tcbn65gpluswc/OD18DCAP16]
set_dont_use [get_lib_cells tcbn65gpluswc/OD18DCAP32]
set_dont_use [get_lib_cells tcbn65gpluswc/OD18DCAP64]
