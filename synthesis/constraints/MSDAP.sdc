###################################################################

# Created by write_sdc on Fri Apr 21 17:47:29 2023

###################################################################
set sdc_version 2.1

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
create_clock [get_ports Sclk]  -period 39.03  -waveform {0 19.515}
create_clock [get_ports Dclk]  -period 1302.35  -waveform {0 651.175}
set_input_delay -clock Sclk  1  [get_ports Reset_n]
set_input_delay -clock Sclk  1  [get_ports Start]
set_input_delay -clock Dclk  1  [get_ports InputL]
set_input_delay -clock Dclk  1  [get_ports InputR]
set_input_delay -clock Dclk  1  [get_ports Frame]
set_output_delay -clock Sclk  1  [get_ports OutputL]
set_output_delay -clock Sclk  1  [get_ports OutputR]
set_output_delay -clock Sclk  1  [get_ports InReady]
set_output_delay -clock Dclk  1  [get_ports OutReady]
set_input_transition -max 0.2  [get_ports Dclk]
set_input_transition -min 0.2  [get_ports Dclk]
set_input_transition -max 0.2  [get_ports Sclk]
set_input_transition -min 0.2  [get_ports Sclk]
