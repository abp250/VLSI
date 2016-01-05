set sdc_version 1.4

create_clock -period 0.5 -waveform {0 0.25 } [get_ports {clk}
set_input_delay 0.001 -max -clock "clk" [get_ports {rst}]
set_input_delay 0.001 -max -clock "clk" [get_ports {req}]

dc::set_dont_use FA1D*
set_attribute lp_insert_clock_gating true
