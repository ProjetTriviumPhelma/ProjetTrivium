create_clock -period 10.000 -name i_Clk -waveform {0.000 5.000} -add


set_property IOSTANDARD LVCMOS33 [get_ports i_Clk]
set_property IOSTANDARD LVCMOS33 [get_ports i_RX_Serial]
set_property IOSTANDARD LVCMOS33 [get_ports o_RX_DV]
set_property IOSTANDARD LVCMOS33 [get_ports o_RX_b0]
set_property IOSTANDARD LVCMOS33 [get_ports o_RX_b1]
set_property IOSTANDARD LVCMOS33 [get_ports o_RX_b2]
set_property IOSTANDARD LVCMOS33 [get_ports o_RX_b3]
set_property IOSTANDARD LVCMOS33 [get_ports o_RX_b4]
set_property IOSTANDARD LVCMOS33 [get_ports o_RX_b5]
set_property IOSTANDARD LVCMOS33 [get_ports o_RX_b6]
set_property IOSTANDARD LVCMOS33 [get_ports o_RX_b7]


set_property PACKAGE_PIN Y9 [get_ports i_Clk]

#JB4
set_property PACKAGE_PIN W8 [get_ports i_RX_Serial]

#JA1
set_property PACKAGE_PIN Y11 [get_ports o_RX_DV]

#JB3
set_property PACKAGE_PIN V10 [get_ports o_RX_b0]
#JB2
set_property PACKAGE_PIN W11 [get_ports o_RX_b1]
#JB1
set_property PACKAGE_PIN W12 [get_ports o_RX_b2]
#JA4
set_property PACKAGE_PIN AA9 [get_ports o_RX_b3]
#JA3
set_property PACKAGE_PIN Y10 [get_ports o_RX_b4]
#JA2
set_property PACKAGE_PIN AA11 [get_ports o_RX_b5]
#JA7
set_property PACKAGE_PIN AB11 [get_ports o_RX_b6]
#JA8
set_property PACKAGE_PIN AB10 [get_ports o_RX_b7]
