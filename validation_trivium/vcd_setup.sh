#!/bin/sh
source ../../config/config_RTL
rm -rf lib_BENCH
vlib lib_BENCH
vmap lib_BENCH $HOME/Trivium/ProjetTrivium/validation_trivium/lib_BENCH
vcom -work lib_BENCH VHDL/trivium_v3.vhd
vcom -work lib_BENCH VHDL/trivium_gen_nils_vvect.vhd
vcom -work lib_BENCH REF/TRIVIUM_CORE.vhd
vcom -work lib_BENCH REF/Trivium_Generator_vvect.vhd
vcom -work lib_BENCH VHDL/hextobin.vhd
vcom -work lib_BENCH VHDL/generateur_vect.vhd
vcom -work lib_BENCH VHDL/tb_generateur.vhd
vsim -do vsim_for_vcd.tcl &
