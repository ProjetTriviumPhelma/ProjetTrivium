#!/bin/sh
source ../../config/config_RTL
vcom -work lib_TRIV trivium_gen_nils.vhd
vcom -work lib_TRIV trivium_gen_nils.vhd
vcom -work lib_TRIV tb_trivium_gen_nils.vhd
