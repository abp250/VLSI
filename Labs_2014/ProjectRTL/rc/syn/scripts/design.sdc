set sdc_version 1.4

create_clock -period 1.2 -waveform {0 0.6} [get_ports {CLK}]
set_input_delay 0.001 -max -clock "CLK" [get_ports {X}]
set_input_delay 0.001 -max -clock "CLK" [get_ports {Y}]
set_input_delay 0.001 -max -clock "CLK" [get_ports {W}]
dc::set_dont_use FA1D*
set_attribute lp_insert_clock_gating true
