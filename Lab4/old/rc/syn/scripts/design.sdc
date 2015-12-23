set sdc_version 1.4

create_clock -period 1.6 -waveform {0 0.8 } [get_ports {iCLK}]
set_input_delay 0.001 -max -clock "iCLK" [get_ports {iA0}]
set_input_delay 0.001 -max -clock "iCLK" [get_ports {iB0}]
set_input_delay 0.001 -max -clock "iCLK" [get_ports {iA1}]
set_input_delay 0.001 -max -clock "iCLK" [get_ports {iB1}]
dc::set_dont_use FA1D*
set_attribute lp_insert_clock_gating true
