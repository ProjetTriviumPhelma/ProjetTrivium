#!/bin/sh
ghdl -s -v trivium.vhd trivium_gen_nils.vhd tb_trivium_gen_nils.vhd ##to check the syntax.
ghdl -a -v trivium.vhd trivium_gen_nils.vhd tb_trivium_gen_nils.vhd ##to analyze the design.
ghdl -e -v Trivium_Gen_TB ##to build an executable for the testbench.
ghdl -r -v Trivium_Gen_TB --stop-time=20us --vcd=trivium.vcd ##to simulate the design and dump the waveform to a file.
gtkwave trivium.vcd &
