set timing_enable_multiple_clocks_per_reg  true
set clk_margin 1.0
set max_fanout 16

# Create Clocks
create_clock -period 39.03 -waveform {0 19.515} [get_ports {Sclk}]
create_clock -period 1302.35 -waveform {0 651.175} [get_ports {Dclk}]
set_input_transition 0.2 [get_ports Sclk]
set_input_transition 0.2 [get_ports Dclk]

# Set input/output delay
set_input_delay 1.0 -clock Sclk  [get_ports Reset_n]
set_input_delay 1.0 -clock Sclk  [get_ports Start]
set_input_delay 1.0 -clock Dclk  [get_ports InputL]
set_input_delay 1.0 -clock Dclk  [get_ports InputR]
set_input_delay 1.0 -clock Dclk  [get_ports Frame]
set_output_delay 1.0  -clock Sclk [get_ports OutputL]
set_output_delay 1.0  -clock Sclk [get_ports OutputR]
set_output_delay 1.0  -clock Sclk [get_ports InReady]
set_output_delay 1.0  -clock Dclk [get_ports OutReady]
