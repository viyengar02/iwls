###################################################################

# Created by write_sdc on Tue May 13 10:48:49 2025

###################################################################
set sdc_version 2.1

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA
set_max_area 0
create_clock [get_ports clk]  -period 10  -waveform {0 5}
set_clock_uncertainty 0.2  [get_clocks clk]
set_input_delay -clock clk  0.01  [get_ports clk]
set_input_delay -clock clk  0.01  [get_ports rst]
set_input_delay -clock clk  0.01  [get_ports rxd_i]
set_input_delay -clock clk  0.01  [get_ports cts_i]
set_input_delay -clock clk  0.01  [get_ports sio_ce]
set_input_delay -clock clk  0.01  [get_ports sio_ce_x4]
set_input_delay -clock clk  0.01  [get_ports {din_i[7]}]
set_input_delay -clock clk  0.01  [get_ports {din_i[6]}]
set_input_delay -clock clk  0.01  [get_ports {din_i[5]}]
set_input_delay -clock clk  0.01  [get_ports {din_i[4]}]
set_input_delay -clock clk  0.01  [get_ports {din_i[3]}]
set_input_delay -clock clk  0.01  [get_ports {din_i[2]}]
set_input_delay -clock clk  0.01  [get_ports {din_i[1]}]
set_input_delay -clock clk  0.01  [get_ports {din_i[0]}]
set_input_delay -clock clk  0.01  [get_ports re_i]
set_input_delay -clock clk  0.01  [get_ports we_i]
set_output_delay -clock clk  0.01  [get_ports txd_o]
set_output_delay -clock clk  0.01  [get_ports rts_o]
set_output_delay -clock clk  0.01  [get_ports {dout_o[7]}]
set_output_delay -clock clk  0.01  [get_ports {dout_o[6]}]
set_output_delay -clock clk  0.01  [get_ports {dout_o[5]}]
set_output_delay -clock clk  0.01  [get_ports {dout_o[4]}]
set_output_delay -clock clk  0.01  [get_ports {dout_o[3]}]
set_output_delay -clock clk  0.01  [get_ports {dout_o[2]}]
set_output_delay -clock clk  0.01  [get_ports {dout_o[1]}]
set_output_delay -clock clk  0.01  [get_ports {dout_o[0]}]
set_output_delay -clock clk  0.01  [get_ports full_o]
set_output_delay -clock clk  0.01  [get_ports empty_o]
