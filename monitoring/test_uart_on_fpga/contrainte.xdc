


create_clock -period 10.000 -name i_Clk -waveform {0.000 5.000} -add


set_property IOSTANDARD LVCMOS33 [get_ports i_Clk]
set_property IOSTANDARD LVCMOS33 [get_ports i_RX_Serial]
set_property IOSTANDARD LVCMOS33 [get_ports o_debug]
set_property IOSTANDARD LVCMOS33 [get_ports o_TX_Done]
set_property IOSTANDARD LVCMOS33 [get_ports o_TX_Serial]
set_property PACKAGE_PIN Y9 [get_ports i_Clk]
set_property IOSTANDARD LVCMOS33 [get_ports i_RST]
set_property PACKAGE_PIN W8 [get_ports i_RX_Serial]
set_property PACKAGE_PIN Y11 [get_ports o_debug]
set_property PACKAGE_PIN W11 [get_ports o_TX_Done]
set_property PACKAGE_PIN V10 [get_ports o_TX_Serial]
set_property PACKAGE_PIN P16 [get_ports i_RST]
