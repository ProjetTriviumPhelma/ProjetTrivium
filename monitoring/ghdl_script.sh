#!/bin/sh
ghdl -s -v VHD/trivium_v3.vhd VHD/trivium_gen_nils_vvect.vhd VHD/UART_RX.vhd VHD/UART_TX.vhd VHD/top.vhd VHD/tb_UART_FPGA.vhd ##to check the syntax.
ghdl -a -v VHD/trivium_v3.vhd VHD/trivium_gen_nils_vvect.vhd VHD/UART_RX.vhd VHD/UART_TX.vhd VHD/top.vhd VHD/tb_UART_FPGA.vhd ##to analyze the design.
ghdl -e -v tb_UART_FPGA ##to build an executable for the testbench.
ghdl -r -v tb_UART_FPGA --stop-time=10000us --vcd=uart.vcd ##to simulate the design and dump the waveform to a file.
gtkwave uart.vcd &
