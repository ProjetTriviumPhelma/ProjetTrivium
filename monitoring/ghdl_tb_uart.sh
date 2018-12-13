#!/bin/sh
ghdl -s -v VHD/UART_RX.vhd VHD/UART_TX.vhd VHD/tb_UART.vhd ##to check the syntax.
ghdl -a -v VHD/UART_RX.vhd VHD/UART_TX.vhd VHD/tb_UART.vhd ##to analyze the design.
ghdl -e -v tb_UART ##to build an executable for the testbench.
ghdl -r -v tb_UART --stop-time=400us --vcd=tbuart.vcd ##to simulate the design and dump the waveform to a file.
gtkwave tbuart.vcd &
