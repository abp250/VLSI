set sdc_version 1.4
create_clock -period 1.0 -waveform {0 0.5} [get_ports {clk}]
set_input_delay 0.001 -max -clock "clk" [get_ports {nt}]
set_input_delay 0.001 -max -clock "clk" [get_ports {xi}]
set_input_delay 0.001 -max -clock "clk" [get_ports {yi}]
set_input_delay 0.001 -max -clock "clk" [get_ports {reset}]
