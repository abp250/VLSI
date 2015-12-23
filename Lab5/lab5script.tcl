
#source ./scripts/initStuff.tcl

set RUN 18
set FILENAME initial


set FILENAME pwrEffortHigh
source ./scripts/initStuff.tcl
set_attribute lp_power_unit {nW}
set_attribute power_optimization_effort high
set_attribute max_leakage_power 10000 /designs/ALT_MULTADD
source ./scripts/writeReports.tcl

set FILENAME pwrEffortLow
source ./scripts/initStuff.tcl
set_attribute lp_power_unit {nW}
set_attribute power_optimization_effort low
set_attribute max_leakage_power 1000000 /designs/ALT_MULTADD
source ./scripts/writeReports.tcl

set FILENAME pwrEffortLow2
source ./scripts/initStuff.tcl
set_attribute lp_power_unit {nW}

set_attribute power_optimization_effort low
source ./scripts/writeReports.tcl

exit
#source ./scripts/writeReports.tcl



set FILENAME clkPd1000
source ./scripts/initStuff.tcl
define_clock -period 1000 -name clk [dc::get_ports {iCLK}] -rise 50 -fall 50
source ./scripts/writeReports.tcl

set FILENAME clkPd200
source ./scripts/initStuff.tcl
define_clock -period 200 -name clk [dc::get_ports {iCLK}] -rise 50 -fall 50
source ./scripts/writeReports.tcl

set FILENAME clkRise10
source ./scripts/initStuff.tcl
define_clock -period 500 -name clk [dc::get_ports {iCLK}] -rise 10 -fall 50
source ./scripts/writeReports.tcl

set FILENAME clkFall10
source ./scripts/initStuff.tcl
define_clock -period 500 -name clk [dc::get_ports {iCLK}] -rise 50 -fall 10
source ./scripts/writeReports.tcl

set FILENAME clkNetLateLaten2
source ./scripts/initStuff.tcl
set_attribute clock_network_late_latency 10 clk
source ./scripts/writeReports.tcl

set FILENAME clkSourceEarlyLaten2
source ./scripts/initStuff.tcl
set_attribute clock_source_early_latency 15 clk
source ./scripts/writeReports.tcl

set FILENAME clkSetupUncert1000
source ./scripts/initStuff.tcl
set_attribute clock_setup_uncertainty {1000 50} clk
source ./scripts/writeReports.tcl

set FILENAME clkSetupUncert500
source ./scripts/initStuff.tcl
set_attribute clock_setup_uncertainty {100 500} clk
source ./scripts/writeReports.tcl


set FILENAME slew1000
source ./scripts/initStuff.tcl
set_attribute slew {1000 110 110 120} [find / -clock clk]
source ./scripts/writeReports.tcl

set FILENAME slew1100
source ./scripts/initStuff.tcl
set_attribute slew {100 1100 110 120} [find / -clock clk]
source ./scripts/writeReports.tcl

set FILENAME slew1100_2
source ./scripts/initStuff.tcl
set_attribute slew {100 110 1100 120} [find / -clock clk]
source ./scripts/writeReports.tcl

set FILENAME slew1200
source ./scripts/initStuff.tcl
set_attribute slew {100 110 110 1200} [find / -clock clk]
source ./scripts/writeReports.tcl

set FILENAME slewx10
source ./scripts/initStuff.tcl
set_attribute slew {1000 1100 1100 1200} [find / -clock clk]
source ./scripts/writeReports.tcl

set FILENAME extDelIn2000
source ./scripts/initStuff.tcl
external_delay -clock clk -input 2000 -name in_delay /designs/ALT_MULTADD/ports_in/* 
source ./scripts/writeReports.tcl

set FILENAME extDelOut2000
source ./scripts/initStuff.tcl
external_delay -clock clk -output 2000 -name out_delay /designs/ALT_MULTADD/ports_out/*
source ./scripts/writeReports.tcl


set FILENAME extPinCap20
source ./scripts/initStuff.tcl
set_attribute external_pin_cap 20 /designs/ALT_MULTADD/ports_out/*
source ./scripts/writeReports.tcl

set FILENAME maxFan100
source ./scripts/initStuff.tcl
set_attribute max_fanout 100 /designs/*
source ./scripts/writeReports.tcl






