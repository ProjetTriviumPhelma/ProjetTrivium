#!/bin/sh
source ../../../config/config_RTL
rm -rf lib_BENCH_VECT
vlib lib_BENCH_VECT
vmap lib_BENCH_VECT $HOME/Trivium/ProjetTrivium/test_trivium/vectors/lib_BENCH_VECT
vcom -work lib_BENCH_VECT ../trivium_v3.vhd
vcom -work lib_BENCH_VECT ../trivium_gen_nils_vvect.vhd
##vcom -work lib_TRIV tb_trivium_gen_nils.vhd
vcom -work lib_BENCH_VECT ../../../HDL_Ciphers/Trivium/Sources/TRIVIUM_CORE.vhd
vcom -work lib_BENCH_VECT ../../../HDL_Ciphers/Trivium/Sources/Trivium_Generator_vvect.vhd
vcom -work lib_BENCH_VECT hextobin.vhd
vcom -work lib_BENCH_VECT generateur_vect.vhd
vcom -work lib_BENCH_VECT tb_generateur.vhd
vsim -do bench.tcl &
