#!/bin/sh
source ../../config/config_RTL
rm -rf lib_VALID
vlib lib_VALID
vmap lib_VALID $HOME/Trivium/ProjetTrivium/test_trivium/lib_VALID
vcom -work lib_VALID trivium_v2.vhd
vcom -work lib_VALID trivium_gen_nils_v2.vhd
##vcom -work lib_TRIV tb_trivium_gen_nils.vhd
vcom -work lib_VALID ../../HDL_Ciphers/Trivium/Sources/TRIVIUM_CORE.vhd
vcom -work lib_VALID ../../HDL_Ciphers/Trivium/Sources/Trivium_Generator.vhd
vcom -work lib_VALID tb_validation_trivium.vhd
vsim -do script.tcl &
