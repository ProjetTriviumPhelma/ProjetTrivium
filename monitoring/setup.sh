#!/bin/sh
source ../../config/config_RTL
rm -rf lib_BENCH
vlib lib_UART
vmap lib_UART $HOME/Trivium/ProjetTrivium/monitoring/lib_UART
vcom -work lib_UART VHD/trivium_v3.vhd
vcom -work lib_UART VHD/trivium_gen_nils_vvect.vhd
vcom -work lib_UART VHD/UART_RX.vhd
vcom -work lib_UART VHD/UART_TX.vhd
vcom -work lib_UART VHD/top.vhd
vcom -work lib_UART VHD/tb_UART_FPGA.vhd
vsim &
