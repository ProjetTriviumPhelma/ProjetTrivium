set_netlist -conservative_mux none

read_netlist /tp/xph3app/xph3app604/Trivium/ProjetTrivium/synthese_trivium/corelib_pour_ATPG.v -library -master_module

read_netlist /tp/xph3app/xph3app604/Trivium/ProjetTrivium/synthese_trivium/DV/Trivium_ref_netlist.v
run_build_model Trivium_Generator_vvect
run_drc

##set lib_path "/softl2/XILINX/ise_edk_147i/14.7/ISE_DS/ISE/verilog/xeclib/unisims"

# read library
##read_netlist -library $lib_path/sffsrce_prim.v
##read_netlist -library $lib_path/sffsrce.v

#read_netlist -library $lib_path/BUFGP.v
#read_netlist -library $lib_path/FDRE.v
#read_netlist -library $lib_path/FDSE.v
#read_netlist -library $lib_path/GND.v
#read_netlist -library $lib_path/IBUF.v
#read_netlist -library $lib_path/LUT2.v
#read_netlist -library $lib_path/LUT3.v
#read_netlist -library $lib_path/LUT4.v
#read_netlist -library $lib_path/LUT5.v
#read_netlist -library $lib_path/LUT6.v
#read_netlist -library $lib_path/MUXCY.v
#read_netlist -library $lib_path/OBUF.v
#read_netlist -library $lib_path/VCC.v
#read_netlist -library $lib_path/XORCY.v
