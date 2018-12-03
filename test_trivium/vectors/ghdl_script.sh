#!/bin/sh
ghdl -s -v hextobin.vhd bench_vectors.vhd ##to check the syntax.
ghdl -a -v hextobin.vhd bench_vectors.vhd ##to analyze the design.
ghdl -e -v bench_vectors ##to build an executable for the testbench.
ghdl -r -v bench_vectors --stop-time=30us --vcd=bench.vcd ##to simulate the design and dump the waveform to a file.
gtkwave bench.vcd &
