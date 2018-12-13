--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: Trivium_Generator_vvect_netlist.vhd
-- /___/   /\     Timestamp: Thu Dec 13 14:09:53 2018
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -sim -ofmt vhdl Trivium_Generator_vvect_netlist.ngd 
-- Device	: 7z020clg400-3
-- Input file	: Trivium_Generator_vvect_netlist.ngd
-- Output file	: Trivium_Generator_vvect_netlist.vhd
-- # of Entities	: 1
-- Design Name	: Trivium_Generator_vvect
-- Xilinx	: /softl2/XILINX/ise_edk_147i/14.7/ISE_DS/ISE/
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity Trivium_Generator_vvect is
  port (
    SYS_CLK : in STD_LOGIC := 'X'; 
    RST : in STD_LOGIC := 'X'; 
    PLAINTEXT_IN : in STD_LOGIC := 'X'; 
    PLNTXT_EN : in STD_LOGIC := 'X'; 
    CIPHERTEXT_OUT : out STD_LOGIC; 
    CPHRTXT_RDY : out STD_LOGIC; 
    K_INPUT : in STD_LOGIC_VECTOR ( 79 downto 0 ); 
    IV_INPUT : in STD_LOGIC_VECTOR ( 79 downto 0 ) 
  );
end Trivium_Generator_vvect;

architecture STRUCTURE of Trivium_Generator_vvect is
  signal K_INPUT_79_IBUF_3 : STD_LOGIC; 
  signal K_INPUT_78_IBUF_4 : STD_LOGIC; 
  signal K_INPUT_77_IBUF_5 : STD_LOGIC; 
  signal K_INPUT_76_IBUF_6 : STD_LOGIC; 
  signal K_INPUT_75_IBUF_7 : STD_LOGIC; 
  signal K_INPUT_74_IBUF_8 : STD_LOGIC; 
  signal K_INPUT_73_IBUF_9 : STD_LOGIC; 
  signal K_INPUT_72_IBUF_10 : STD_LOGIC; 
  signal K_INPUT_71_IBUF_11 : STD_LOGIC; 
  signal K_INPUT_70_IBUF_12 : STD_LOGIC; 
  signal K_INPUT_69_IBUF_13 : STD_LOGIC; 
  signal K_INPUT_68_IBUF_14 : STD_LOGIC; 
  signal K_INPUT_67_IBUF_15 : STD_LOGIC; 
  signal K_INPUT_66_IBUF_16 : STD_LOGIC; 
  signal K_INPUT_65_IBUF_17 : STD_LOGIC; 
  signal K_INPUT_64_IBUF_18 : STD_LOGIC; 
  signal K_INPUT_63_IBUF_19 : STD_LOGIC; 
  signal K_INPUT_62_IBUF_20 : STD_LOGIC; 
  signal K_INPUT_61_IBUF_21 : STD_LOGIC; 
  signal K_INPUT_60_IBUF_22 : STD_LOGIC; 
  signal K_INPUT_59_IBUF_23 : STD_LOGIC; 
  signal K_INPUT_58_IBUF_24 : STD_LOGIC; 
  signal K_INPUT_57_IBUF_25 : STD_LOGIC; 
  signal K_INPUT_56_IBUF_26 : STD_LOGIC; 
  signal K_INPUT_55_IBUF_27 : STD_LOGIC; 
  signal K_INPUT_54_IBUF_28 : STD_LOGIC; 
  signal K_INPUT_53_IBUF_29 : STD_LOGIC; 
  signal K_INPUT_52_IBUF_30 : STD_LOGIC; 
  signal K_INPUT_51_IBUF_31 : STD_LOGIC; 
  signal K_INPUT_50_IBUF_32 : STD_LOGIC; 
  signal K_INPUT_49_IBUF_33 : STD_LOGIC; 
  signal K_INPUT_48_IBUF_34 : STD_LOGIC; 
  signal K_INPUT_47_IBUF_35 : STD_LOGIC; 
  signal K_INPUT_46_IBUF_36 : STD_LOGIC; 
  signal K_INPUT_45_IBUF_37 : STD_LOGIC; 
  signal K_INPUT_44_IBUF_38 : STD_LOGIC; 
  signal K_INPUT_43_IBUF_39 : STD_LOGIC; 
  signal K_INPUT_42_IBUF_40 : STD_LOGIC; 
  signal K_INPUT_41_IBUF_41 : STD_LOGIC; 
  signal K_INPUT_40_IBUF_42 : STD_LOGIC; 
  signal K_INPUT_39_IBUF_43 : STD_LOGIC; 
  signal K_INPUT_38_IBUF_44 : STD_LOGIC; 
  signal K_INPUT_37_IBUF_45 : STD_LOGIC; 
  signal K_INPUT_36_IBUF_46 : STD_LOGIC; 
  signal K_INPUT_35_IBUF_47 : STD_LOGIC; 
  signal K_INPUT_34_IBUF_48 : STD_LOGIC; 
  signal K_INPUT_33_IBUF_49 : STD_LOGIC; 
  signal K_INPUT_32_IBUF_50 : STD_LOGIC; 
  signal K_INPUT_31_IBUF_51 : STD_LOGIC; 
  signal K_INPUT_30_IBUF_52 : STD_LOGIC; 
  signal K_INPUT_29_IBUF_53 : STD_LOGIC; 
  signal K_INPUT_28_IBUF_54 : STD_LOGIC; 
  signal K_INPUT_27_IBUF_55 : STD_LOGIC; 
  signal K_INPUT_26_IBUF_56 : STD_LOGIC; 
  signal K_INPUT_25_IBUF_57 : STD_LOGIC; 
  signal K_INPUT_24_IBUF_58 : STD_LOGIC; 
  signal K_INPUT_23_IBUF_59 : STD_LOGIC; 
  signal K_INPUT_22_IBUF_60 : STD_LOGIC; 
  signal K_INPUT_21_IBUF_61 : STD_LOGIC; 
  signal K_INPUT_20_IBUF_62 : STD_LOGIC; 
  signal K_INPUT_19_IBUF_63 : STD_LOGIC; 
  signal K_INPUT_18_IBUF_64 : STD_LOGIC; 
  signal K_INPUT_17_IBUF_65 : STD_LOGIC; 
  signal K_INPUT_16_IBUF_66 : STD_LOGIC; 
  signal K_INPUT_15_IBUF_67 : STD_LOGIC; 
  signal K_INPUT_14_IBUF_68 : STD_LOGIC; 
  signal K_INPUT_13_IBUF_69 : STD_LOGIC; 
  signal K_INPUT_12_IBUF_70 : STD_LOGIC; 
  signal K_INPUT_11_IBUF_71 : STD_LOGIC; 
  signal K_INPUT_10_IBUF_72 : STD_LOGIC; 
  signal K_INPUT_9_IBUF_73 : STD_LOGIC; 
  signal K_INPUT_8_IBUF_74 : STD_LOGIC; 
  signal K_INPUT_7_IBUF_75 : STD_LOGIC; 
  signal K_INPUT_6_IBUF_76 : STD_LOGIC; 
  signal K_INPUT_5_IBUF_77 : STD_LOGIC; 
  signal K_INPUT_4_IBUF_78 : STD_LOGIC; 
  signal K_INPUT_3_IBUF_79 : STD_LOGIC; 
  signal K_INPUT_2_IBUF_80 : STD_LOGIC; 
  signal K_INPUT_1_IBUF_81 : STD_LOGIC; 
  signal K_INPUT_0_IBUF_82 : STD_LOGIC; 
  signal IV_INPUT_79_IBUF_83 : STD_LOGIC; 
  signal IV_INPUT_78_IBUF_84 : STD_LOGIC; 
  signal IV_INPUT_77_IBUF_85 : STD_LOGIC; 
  signal IV_INPUT_76_IBUF_86 : STD_LOGIC; 
  signal IV_INPUT_75_IBUF_87 : STD_LOGIC; 
  signal IV_INPUT_74_IBUF_88 : STD_LOGIC; 
  signal IV_INPUT_73_IBUF_89 : STD_LOGIC; 
  signal IV_INPUT_72_IBUF_90 : STD_LOGIC; 
  signal IV_INPUT_71_IBUF_91 : STD_LOGIC; 
  signal IV_INPUT_70_IBUF_92 : STD_LOGIC; 
  signal IV_INPUT_69_IBUF_93 : STD_LOGIC; 
  signal IV_INPUT_68_IBUF_94 : STD_LOGIC; 
  signal IV_INPUT_67_IBUF_95 : STD_LOGIC; 
  signal IV_INPUT_66_IBUF_96 : STD_LOGIC; 
  signal IV_INPUT_65_IBUF_97 : STD_LOGIC; 
  signal IV_INPUT_64_IBUF_98 : STD_LOGIC; 
  signal IV_INPUT_63_IBUF_99 : STD_LOGIC; 
  signal IV_INPUT_62_IBUF_100 : STD_LOGIC; 
  signal IV_INPUT_61_IBUF_101 : STD_LOGIC; 
  signal IV_INPUT_60_IBUF_102 : STD_LOGIC; 
  signal IV_INPUT_59_IBUF_103 : STD_LOGIC; 
  signal IV_INPUT_58_IBUF_104 : STD_LOGIC; 
  signal IV_INPUT_57_IBUF_105 : STD_LOGIC; 
  signal IV_INPUT_56_IBUF_106 : STD_LOGIC; 
  signal IV_INPUT_55_IBUF_107 : STD_LOGIC; 
  signal IV_INPUT_54_IBUF_108 : STD_LOGIC; 
  signal IV_INPUT_53_IBUF_109 : STD_LOGIC; 
  signal IV_INPUT_52_IBUF_110 : STD_LOGIC; 
  signal IV_INPUT_51_IBUF_111 : STD_LOGIC; 
  signal IV_INPUT_50_IBUF_112 : STD_LOGIC; 
  signal IV_INPUT_49_IBUF_113 : STD_LOGIC; 
  signal IV_INPUT_48_IBUF_114 : STD_LOGIC; 
  signal IV_INPUT_47_IBUF_115 : STD_LOGIC; 
  signal IV_INPUT_46_IBUF_116 : STD_LOGIC; 
  signal IV_INPUT_45_IBUF_117 : STD_LOGIC; 
  signal IV_INPUT_44_IBUF_118 : STD_LOGIC; 
  signal IV_INPUT_43_IBUF_119 : STD_LOGIC; 
  signal IV_INPUT_42_IBUF_120 : STD_LOGIC; 
  signal IV_INPUT_41_IBUF_121 : STD_LOGIC; 
  signal IV_INPUT_40_IBUF_122 : STD_LOGIC; 
  signal IV_INPUT_39_IBUF_123 : STD_LOGIC; 
  signal IV_INPUT_38_IBUF_124 : STD_LOGIC; 
  signal IV_INPUT_37_IBUF_125 : STD_LOGIC; 
  signal IV_INPUT_36_IBUF_126 : STD_LOGIC; 
  signal IV_INPUT_35_IBUF_127 : STD_LOGIC; 
  signal IV_INPUT_34_IBUF_128 : STD_LOGIC; 
  signal IV_INPUT_33_IBUF_129 : STD_LOGIC; 
  signal IV_INPUT_32_IBUF_130 : STD_LOGIC; 
  signal IV_INPUT_31_IBUF_131 : STD_LOGIC; 
  signal IV_INPUT_30_IBUF_132 : STD_LOGIC; 
  signal IV_INPUT_29_IBUF_133 : STD_LOGIC; 
  signal IV_INPUT_28_IBUF_134 : STD_LOGIC; 
  signal IV_INPUT_27_IBUF_135 : STD_LOGIC; 
  signal IV_INPUT_26_IBUF_136 : STD_LOGIC; 
  signal IV_INPUT_25_IBUF_137 : STD_LOGIC; 
  signal IV_INPUT_24_IBUF_138 : STD_LOGIC; 
  signal IV_INPUT_23_IBUF_139 : STD_LOGIC; 
  signal IV_INPUT_22_IBUF_140 : STD_LOGIC; 
  signal IV_INPUT_21_IBUF_141 : STD_LOGIC; 
  signal IV_INPUT_20_IBUF_142 : STD_LOGIC; 
  signal IV_INPUT_19_IBUF_143 : STD_LOGIC; 
  signal IV_INPUT_18_IBUF_144 : STD_LOGIC; 
  signal IV_INPUT_17_IBUF_145 : STD_LOGIC; 
  signal IV_INPUT_16_IBUF_146 : STD_LOGIC; 
  signal IV_INPUT_15_IBUF_147 : STD_LOGIC; 
  signal IV_INPUT_14_IBUF_148 : STD_LOGIC; 
  signal IV_INPUT_13_IBUF_149 : STD_LOGIC; 
  signal IV_INPUT_12_IBUF_150 : STD_LOGIC; 
  signal IV_INPUT_11_IBUF_151 : STD_LOGIC; 
  signal IV_INPUT_10_IBUF_152 : STD_LOGIC; 
  signal IV_INPUT_9_IBUF_153 : STD_LOGIC; 
  signal IV_INPUT_8_IBUF_154 : STD_LOGIC; 
  signal IV_INPUT_7_IBUF_155 : STD_LOGIC; 
  signal IV_INPUT_6_IBUF_156 : STD_LOGIC; 
  signal IV_INPUT_5_IBUF_157 : STD_LOGIC; 
  signal IV_INPUT_4_IBUF_158 : STD_LOGIC; 
  signal IV_INPUT_3_IBUF_159 : STD_LOGIC; 
  signal IV_INPUT_2_IBUF_160 : STD_LOGIC; 
  signal IV_INPUT_1_IBUF_161 : STD_LOGIC; 
  signal IV_INPUT_0_IBUF_162 : STD_LOGIC; 
  signal SYS_CLK_BUFGP : STD_LOGIC; 
  signal RST_IBUF_164 : STD_LOGIC; 
  signal PLAINTEXT_IN_IBUF_165 : STD_LOGIC; 
  signal PLNTXT_EN_IBUF_166 : STD_LOGIC; 
  signal CORE_OUT : STD_LOGIC; 
  signal pr_state_FSM_FFd1_168 : STD_LOGIC; 
  signal pr_state_FSM_FFd2_169 : STD_LOGIC; 
  signal GND_3_o_pr_state_2_equal_9_o : STD_LOGIC; 
  signal pr_state_FSM_FFd3_171 : STD_LOGIC; 
  signal CIPHERTEXT_OUT_OBUF_185 : STD_LOGIC; 
  signal CPHRTXT_RDY_OBUF_186 : STD_LOGIC; 
  signal CORE_CNTRL_1_PWR_3_o_mux_15_OUT_1_Q : STD_LOGIC; 
  signal CORE_CNTRL_1_PWR_3_o_mux_15_OUT_0_Q : STD_LOGIC; 
  signal GND_3_o_GND_3_o_OR_17_o : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal Q_n0064_inv : STD_LOGIC; 
  signal pr_state_FSM_FFd3_In : STD_LOGIC; 
  signal pr_state_FSM_FFd2_In : STD_LOGIC; 
  signal pr_state_FSM_FFd1_In : STD_LOGIC; 
  signal TRIV_CORE_GEN_n0039_inv : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_0_Q_219 : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_1_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_2_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_3_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_4_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_5_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_6_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_7_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_8_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_9_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_10_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_11_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_12_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_13_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_14_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_15_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_16_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_17_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_18_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_19_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_20_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_21_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_22_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_23_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_24_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_25_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_26_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_27_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_28_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_29_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_30_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_31_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_32_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_33_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_34_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_35_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_36_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_37_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_38_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_39_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_40_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_41_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_42_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_43_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_44_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_45_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_46_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_47_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_48_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_49_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_50_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_51_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_52_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_53_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_54_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_55_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_56_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_57_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_58_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_59_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_60_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_61_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_62_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_63_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_64_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_65_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_66_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_67_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_68_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_69_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_70_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_71_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_72_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_73_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_74_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_75_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_76_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_77_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_78_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_79_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_80_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_81_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_82_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_83_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_84_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_85_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_86_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_87_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_88_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_89_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_90_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_91_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_92_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_93_Q_312 : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_94_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_95_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_96_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_97_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_98_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_99_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_100_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_101_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_102_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_103_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_104_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_105_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_106_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_107_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_108_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_109_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_110_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_111_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_112_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_113_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_114_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_115_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_116_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_117_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_118_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_119_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_120_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_121_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_122_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_123_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_124_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_125_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_126_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_127_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_128_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_129_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_130_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_131_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_132_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_133_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_134_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_135_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_136_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_137_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_138_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_139_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_140_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_141_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_142_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_143_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_144_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_145_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_146_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_147_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_148_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_149_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_150_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_151_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_152_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_153_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_154_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_155_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_156_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_157_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_158_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_159_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_160_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_161_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_162_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_163_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_164_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_165_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_166_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_167_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_168_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_169_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_170_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_171_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_172_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_173_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_174_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_175_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_176_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_177_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_178_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_179_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_180_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_181_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_182_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_183_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_184_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_185_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_186_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_187_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_188_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_189_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_190_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_191_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_192_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_193_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_194_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_195_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_196_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_197_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_198_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_199_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_200_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_201_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_202_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_203_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_204_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_205_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_206_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_207_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_208_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_209_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_210_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_211_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_212_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_213_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_214_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_215_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_216_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_217_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_218_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_219_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_220_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_221_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_222_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_223_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_224_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_225_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_226_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_227_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_228_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_229_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_230_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_231_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_232_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_233_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_234_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_235_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_236_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_237_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_238_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_239_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_240_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_241_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_242_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_243_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_244_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_245_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_246_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_247_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_248_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_249_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_250_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_251_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_252_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_253_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_254_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_255_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_256_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_257_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_258_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_259_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_260_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_261_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_262_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_263_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_264_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_265_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_266_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_267_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_268_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_269_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_270_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_271_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_272_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_273_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_274_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_275_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_276_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_277_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_278_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_279_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_280_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_281_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_282_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_283_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_284_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_285_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_286_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_287_Q : STD_LOGIC; 
  signal TRIV_CORE_GEN_CNTRL_1_PWR_6_o_equal_1_o : STD_LOGIC; 
  signal N3 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal Mcount_INIT_COUNTER_cy_1_rt_965 : STD_LOGIC; 
  signal Mcount_INIT_COUNTER_cy_2_rt_966 : STD_LOGIC; 
  signal Mcount_INIT_COUNTER_cy_3_rt_967 : STD_LOGIC; 
  signal Mcount_INIT_COUNTER_cy_4_rt_968 : STD_LOGIC; 
  signal Mcount_INIT_COUNTER_cy_5_rt_969 : STD_LOGIC; 
  signal Mcount_INIT_COUNTER_cy_6_rt_970 : STD_LOGIC; 
  signal Mcount_INIT_COUNTER_cy_7_rt_971 : STD_LOGIC; 
  signal Mcount_INIT_COUNTER_cy_8_rt_972 : STD_LOGIC; 
  signal Mcount_INIT_COUNTER_cy_9_rt_973 : STD_LOGIC; 
  signal Mcount_INIT_COUNTER_xor_10_rt_974 : STD_LOGIC; 
  signal CPHRTXT_RDY_rstpot_975 : STD_LOGIC; 
  signal CIPHERTEXT_OUT_rstpot_976 : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal CORE_CNTRL_1_1_979 : STD_LOGIC; 
  signal CORE_CNTRL_0_1_980 : STD_LOGIC; 
  signal CORE_CNTRL_1_2_981 : STD_LOGIC; 
  signal CPHRTXT_RDY_rstpot1_982 : STD_LOGIC; 
  signal SYS_CLK_BUFGP_IBUFG_2 : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal CORE_CNTRL : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal INIT_COUNTER : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal Mcount_INIT_COUNTER_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Mcount_INIT_COUNTER_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal TRIV_CORE_GEN_STATE : STD_LOGIC_VECTOR ( 287 downto 0 ); 
begin
  XST_VCC : X_ONE
    port map (
      O => N0
    );
  XST_GND : X_ZERO
    port map (
      O => N1
    );
  CORE_CNTRL_0 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => Q_n0064_inv,
      I => CORE_CNTRL_1_PWR_3_o_mux_15_OUT_0_Q,
      SRST => GND_3_o_GND_3_o_OR_17_o,
      O => CORE_CNTRL(0),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  CORE_CNTRL_1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => Q_n0064_inv,
      I => CORE_CNTRL_1_PWR_3_o_mux_15_OUT_1_Q,
      SRST => GND_3_o_GND_3_o_OR_17_o,
      O => CORE_CNTRL(1),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  pr_state_FSM_FFd3 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      I => pr_state_FSM_FFd3_In,
      SRST => RST_IBUF_164,
      O => pr_state_FSM_FFd3_171,
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  pr_state_FSM_FFd2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      I => pr_state_FSM_FFd2_In,
      SRST => RST_IBUF_164,
      O => pr_state_FSM_FFd2_169,
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  pr_state_FSM_FFd1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      I => pr_state_FSM_FFd1_In,
      SRST => RST_IBUF_164,
      O => pr_state_FSM_FFd1_168,
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  INIT_COUNTER_0 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => GND_3_o_pr_state_2_equal_9_o,
      I => Result(0),
      SRST => GND_3_o_GND_3_o_OR_17_o,
      O => INIT_COUNTER(0),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  INIT_COUNTER_1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => GND_3_o_pr_state_2_equal_9_o,
      I => Result(1),
      SRST => GND_3_o_GND_3_o_OR_17_o,
      O => INIT_COUNTER(1),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  INIT_COUNTER_2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => GND_3_o_pr_state_2_equal_9_o,
      I => Result(2),
      SRST => GND_3_o_GND_3_o_OR_17_o,
      O => INIT_COUNTER(2),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  INIT_COUNTER_3 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => GND_3_o_pr_state_2_equal_9_o,
      I => Result(3),
      SRST => GND_3_o_GND_3_o_OR_17_o,
      O => INIT_COUNTER(3),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  INIT_COUNTER_4 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => GND_3_o_pr_state_2_equal_9_o,
      I => Result(4),
      SRST => GND_3_o_GND_3_o_OR_17_o,
      O => INIT_COUNTER(4),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  INIT_COUNTER_5 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => GND_3_o_pr_state_2_equal_9_o,
      I => Result(5),
      SRST => GND_3_o_GND_3_o_OR_17_o,
      O => INIT_COUNTER(5),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  INIT_COUNTER_6 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => GND_3_o_pr_state_2_equal_9_o,
      I => Result(6),
      SRST => GND_3_o_GND_3_o_OR_17_o,
      O => INIT_COUNTER(6),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  INIT_COUNTER_7 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => GND_3_o_pr_state_2_equal_9_o,
      I => Result(7),
      SRST => GND_3_o_GND_3_o_OR_17_o,
      O => INIT_COUNTER(7),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  INIT_COUNTER_8 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => GND_3_o_pr_state_2_equal_9_o,
      I => Result(8),
      SRST => GND_3_o_GND_3_o_OR_17_o,
      O => INIT_COUNTER(8),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  INIT_COUNTER_9 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => GND_3_o_pr_state_2_equal_9_o,
      I => Result(9),
      SRST => GND_3_o_GND_3_o_OR_17_o,
      O => INIT_COUNTER(9),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  INIT_COUNTER_10 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => GND_3_o_pr_state_2_equal_9_o,
      I => Result(10),
      SRST => GND_3_o_GND_3_o_OR_17_o,
      O => INIT_COUNTER(10),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Mcount_INIT_COUNTER_cy_0_Q : X_MUX2
    port map (
      IB => N1,
      IA => N0,
      SEL => Mcount_INIT_COUNTER_lut(0),
      O => Mcount_INIT_COUNTER_cy(0)
    );
  Mcount_INIT_COUNTER_xor_0_Q : X_XOR2
    port map (
      I0 => N1,
      I1 => Mcount_INIT_COUNTER_lut(0),
      O => Result(0)
    );
  Mcount_INIT_COUNTER_cy_1_Q : X_MUX2
    port map (
      IB => Mcount_INIT_COUNTER_cy(0),
      IA => N1,
      SEL => Mcount_INIT_COUNTER_cy_1_rt_965,
      O => Mcount_INIT_COUNTER_cy(1)
    );
  Mcount_INIT_COUNTER_xor_1_Q : X_XOR2
    port map (
      I0 => Mcount_INIT_COUNTER_cy(0),
      I1 => Mcount_INIT_COUNTER_cy_1_rt_965,
      O => Result(1)
    );
  Mcount_INIT_COUNTER_cy_2_Q : X_MUX2
    port map (
      IB => Mcount_INIT_COUNTER_cy(1),
      IA => N1,
      SEL => Mcount_INIT_COUNTER_cy_2_rt_966,
      O => Mcount_INIT_COUNTER_cy(2)
    );
  Mcount_INIT_COUNTER_xor_2_Q : X_XOR2
    port map (
      I0 => Mcount_INIT_COUNTER_cy(1),
      I1 => Mcount_INIT_COUNTER_cy_2_rt_966,
      O => Result(2)
    );
  Mcount_INIT_COUNTER_cy_3_Q : X_MUX2
    port map (
      IB => Mcount_INIT_COUNTER_cy(2),
      IA => N1,
      SEL => Mcount_INIT_COUNTER_cy_3_rt_967,
      O => Mcount_INIT_COUNTER_cy(3)
    );
  Mcount_INIT_COUNTER_xor_3_Q : X_XOR2
    port map (
      I0 => Mcount_INIT_COUNTER_cy(2),
      I1 => Mcount_INIT_COUNTER_cy_3_rt_967,
      O => Result(3)
    );
  Mcount_INIT_COUNTER_cy_4_Q : X_MUX2
    port map (
      IB => Mcount_INIT_COUNTER_cy(3),
      IA => N1,
      SEL => Mcount_INIT_COUNTER_cy_4_rt_968,
      O => Mcount_INIT_COUNTER_cy(4)
    );
  Mcount_INIT_COUNTER_xor_4_Q : X_XOR2
    port map (
      I0 => Mcount_INIT_COUNTER_cy(3),
      I1 => Mcount_INIT_COUNTER_cy_4_rt_968,
      O => Result(4)
    );
  Mcount_INIT_COUNTER_cy_5_Q : X_MUX2
    port map (
      IB => Mcount_INIT_COUNTER_cy(4),
      IA => N1,
      SEL => Mcount_INIT_COUNTER_cy_5_rt_969,
      O => Mcount_INIT_COUNTER_cy(5)
    );
  Mcount_INIT_COUNTER_xor_5_Q : X_XOR2
    port map (
      I0 => Mcount_INIT_COUNTER_cy(4),
      I1 => Mcount_INIT_COUNTER_cy_5_rt_969,
      O => Result(5)
    );
  Mcount_INIT_COUNTER_cy_6_Q : X_MUX2
    port map (
      IB => Mcount_INIT_COUNTER_cy(5),
      IA => N1,
      SEL => Mcount_INIT_COUNTER_cy_6_rt_970,
      O => Mcount_INIT_COUNTER_cy(6)
    );
  Mcount_INIT_COUNTER_xor_6_Q : X_XOR2
    port map (
      I0 => Mcount_INIT_COUNTER_cy(5),
      I1 => Mcount_INIT_COUNTER_cy_6_rt_970,
      O => Result(6)
    );
  Mcount_INIT_COUNTER_cy_7_Q : X_MUX2
    port map (
      IB => Mcount_INIT_COUNTER_cy(6),
      IA => N1,
      SEL => Mcount_INIT_COUNTER_cy_7_rt_971,
      O => Mcount_INIT_COUNTER_cy(7)
    );
  Mcount_INIT_COUNTER_xor_7_Q : X_XOR2
    port map (
      I0 => Mcount_INIT_COUNTER_cy(6),
      I1 => Mcount_INIT_COUNTER_cy_7_rt_971,
      O => Result(7)
    );
  Mcount_INIT_COUNTER_cy_8_Q : X_MUX2
    port map (
      IB => Mcount_INIT_COUNTER_cy(7),
      IA => N1,
      SEL => Mcount_INIT_COUNTER_cy_8_rt_972,
      O => Mcount_INIT_COUNTER_cy(8)
    );
  Mcount_INIT_COUNTER_xor_8_Q : X_XOR2
    port map (
      I0 => Mcount_INIT_COUNTER_cy(7),
      I1 => Mcount_INIT_COUNTER_cy_8_rt_972,
      O => Result(8)
    );
  Mcount_INIT_COUNTER_cy_9_Q : X_MUX2
    port map (
      IB => Mcount_INIT_COUNTER_cy(8),
      IA => N1,
      SEL => Mcount_INIT_COUNTER_cy_9_rt_973,
      O => Mcount_INIT_COUNTER_cy(9)
    );
  Mcount_INIT_COUNTER_xor_9_Q : X_XOR2
    port map (
      I0 => Mcount_INIT_COUNTER_cy(8),
      I1 => Mcount_INIT_COUNTER_cy_9_rt_973,
      O => Result(9)
    );
  Mcount_INIT_COUNTER_xor_10_Q : X_XOR2
    port map (
      I0 => Mcount_INIT_COUNTER_cy(9),
      I1 => Mcount_INIT_COUNTER_xor_10_rt_974,
      O => Result(10)
    );
  TRIV_CORE_GEN_STATE_287 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_287_Q,
      O => TRIV_CORE_GEN_STATE(287),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_286 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_286_Q,
      O => TRIV_CORE_GEN_STATE(286),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_285 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_285_Q,
      O => TRIV_CORE_GEN_STATE(285),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_284 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_284_Q,
      O => TRIV_CORE_GEN_STATE(284),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_283 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_283_Q,
      O => TRIV_CORE_GEN_STATE(283),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_282 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_282_Q,
      O => TRIV_CORE_GEN_STATE(282),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_281 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_281_Q,
      O => TRIV_CORE_GEN_STATE(281),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_280 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_280_Q,
      O => TRIV_CORE_GEN_STATE(280),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_279 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_279_Q,
      O => TRIV_CORE_GEN_STATE(279),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_278 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_278_Q,
      O => TRIV_CORE_GEN_STATE(278),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_277 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_277_Q,
      O => TRIV_CORE_GEN_STATE(277),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_276 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_276_Q,
      O => TRIV_CORE_GEN_STATE(276),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_275 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_275_Q,
      O => TRIV_CORE_GEN_STATE(275),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_274 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_274_Q,
      O => TRIV_CORE_GEN_STATE(274),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_273 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_273_Q,
      O => TRIV_CORE_GEN_STATE(273),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_272 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_272_Q,
      O => TRIV_CORE_GEN_STATE(272),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_271 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_271_Q,
      O => TRIV_CORE_GEN_STATE(271),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_270 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_270_Q,
      O => TRIV_CORE_GEN_STATE(270),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_269 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_269_Q,
      O => TRIV_CORE_GEN_STATE(269),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_268 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_268_Q,
      O => TRIV_CORE_GEN_STATE(268),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_267 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_267_Q,
      O => TRIV_CORE_GEN_STATE(267),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_266 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_266_Q,
      O => TRIV_CORE_GEN_STATE(266),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_265 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_265_Q,
      O => TRIV_CORE_GEN_STATE(265),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_264 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_264_Q,
      O => TRIV_CORE_GEN_STATE(264),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_263 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_263_Q,
      O => TRIV_CORE_GEN_STATE(263),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_262 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_262_Q,
      O => TRIV_CORE_GEN_STATE(262),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_261 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_261_Q,
      O => TRIV_CORE_GEN_STATE(261),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_260 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_260_Q,
      O => TRIV_CORE_GEN_STATE(260),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_259 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_259_Q,
      O => TRIV_CORE_GEN_STATE(259),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_258 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_258_Q,
      O => TRIV_CORE_GEN_STATE(258),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_257 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_257_Q,
      O => TRIV_CORE_GEN_STATE(257),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_256 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_256_Q,
      O => TRIV_CORE_GEN_STATE(256),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_255 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_255_Q,
      O => TRIV_CORE_GEN_STATE(255),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_254 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_254_Q,
      O => TRIV_CORE_GEN_STATE(254),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_253 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_253_Q,
      O => TRIV_CORE_GEN_STATE(253),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_252 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_252_Q,
      O => TRIV_CORE_GEN_STATE(252),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_251 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_251_Q,
      O => TRIV_CORE_GEN_STATE(251),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_250 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_250_Q,
      O => TRIV_CORE_GEN_STATE(250),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_249 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_249_Q,
      O => TRIV_CORE_GEN_STATE(249),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_248 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_248_Q,
      O => TRIV_CORE_GEN_STATE(248),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_247 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_247_Q,
      O => TRIV_CORE_GEN_STATE(247),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_246 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_246_Q,
      O => TRIV_CORE_GEN_STATE(246),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_245 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_245_Q,
      O => TRIV_CORE_GEN_STATE(245),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_244 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_244_Q,
      O => TRIV_CORE_GEN_STATE(244),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_243 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_243_Q,
      O => TRIV_CORE_GEN_STATE(243),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_242 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_242_Q,
      O => TRIV_CORE_GEN_STATE(242),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_241 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_241_Q,
      O => TRIV_CORE_GEN_STATE(241),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_240 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_240_Q,
      O => TRIV_CORE_GEN_STATE(240),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_239 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_239_Q,
      O => TRIV_CORE_GEN_STATE(239),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_238 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_238_Q,
      O => TRIV_CORE_GEN_STATE(238),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_237 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_237_Q,
      O => TRIV_CORE_GEN_STATE(237),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_236 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_236_Q,
      O => TRIV_CORE_GEN_STATE(236),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_235 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_235_Q,
      O => TRIV_CORE_GEN_STATE(235),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_234 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_234_Q,
      O => TRIV_CORE_GEN_STATE(234),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_233 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_233_Q,
      O => TRIV_CORE_GEN_STATE(233),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_232 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_232_Q,
      O => TRIV_CORE_GEN_STATE(232),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_231 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_231_Q,
      O => TRIV_CORE_GEN_STATE(231),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_230 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_230_Q,
      O => TRIV_CORE_GEN_STATE(230),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_229 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_229_Q,
      O => TRIV_CORE_GEN_STATE(229),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_228 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_228_Q,
      O => TRIV_CORE_GEN_STATE(228),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_227 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_227_Q,
      O => TRIV_CORE_GEN_STATE(227),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_226 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_226_Q,
      O => TRIV_CORE_GEN_STATE(226),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_225 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_225_Q,
      O => TRIV_CORE_GEN_STATE(225),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_224 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_224_Q,
      O => TRIV_CORE_GEN_STATE(224),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_223 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_223_Q,
      O => TRIV_CORE_GEN_STATE(223),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_222 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_222_Q,
      O => TRIV_CORE_GEN_STATE(222),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_221 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_221_Q,
      O => TRIV_CORE_GEN_STATE(221),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_220 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_220_Q,
      O => TRIV_CORE_GEN_STATE(220),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_219 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_219_Q,
      O => TRIV_CORE_GEN_STATE(219),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_218 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_218_Q,
      O => TRIV_CORE_GEN_STATE(218),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_217 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_217_Q,
      O => TRIV_CORE_GEN_STATE(217),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_216 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_216_Q,
      O => TRIV_CORE_GEN_STATE(216),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_215 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_215_Q,
      O => TRIV_CORE_GEN_STATE(215),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_214 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_214_Q,
      O => TRIV_CORE_GEN_STATE(214),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_213 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_213_Q,
      O => TRIV_CORE_GEN_STATE(213),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_212 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_212_Q,
      O => TRIV_CORE_GEN_STATE(212),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_211 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_211_Q,
      O => TRIV_CORE_GEN_STATE(211),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_210 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_210_Q,
      O => TRIV_CORE_GEN_STATE(210),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_209 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_209_Q,
      O => TRIV_CORE_GEN_STATE(209),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_208 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_208_Q,
      O => TRIV_CORE_GEN_STATE(208),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_207 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_207_Q,
      O => TRIV_CORE_GEN_STATE(207),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_206 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_206_Q,
      O => TRIV_CORE_GEN_STATE(206),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_205 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_205_Q,
      O => TRIV_CORE_GEN_STATE(205),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_204 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_204_Q,
      O => TRIV_CORE_GEN_STATE(204),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_203 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_203_Q,
      O => TRIV_CORE_GEN_STATE(203),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_202 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_202_Q,
      O => TRIV_CORE_GEN_STATE(202),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_201 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_201_Q,
      O => TRIV_CORE_GEN_STATE(201),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_200 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_200_Q,
      O => TRIV_CORE_GEN_STATE(200),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_199 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_199_Q,
      O => TRIV_CORE_GEN_STATE(199),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_198 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_198_Q,
      O => TRIV_CORE_GEN_STATE(198),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_197 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_197_Q,
      O => TRIV_CORE_GEN_STATE(197),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_196 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_196_Q,
      O => TRIV_CORE_GEN_STATE(196),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_195 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_195_Q,
      O => TRIV_CORE_GEN_STATE(195),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_194 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_194_Q,
      O => TRIV_CORE_GEN_STATE(194),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_193 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_193_Q,
      O => TRIV_CORE_GEN_STATE(193),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_192 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_192_Q,
      O => TRIV_CORE_GEN_STATE(192),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_191 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_191_Q,
      O => TRIV_CORE_GEN_STATE(191),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_190 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_190_Q,
      O => TRIV_CORE_GEN_STATE(190),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_189 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_189_Q,
      O => TRIV_CORE_GEN_STATE(189),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_188 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_188_Q,
      O => TRIV_CORE_GEN_STATE(188),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_187 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_187_Q,
      O => TRIV_CORE_GEN_STATE(187),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_186 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_186_Q,
      O => TRIV_CORE_GEN_STATE(186),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_185 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_185_Q,
      O => TRIV_CORE_GEN_STATE(185),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_184 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_184_Q,
      O => TRIV_CORE_GEN_STATE(184),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_183 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_183_Q,
      O => TRIV_CORE_GEN_STATE(183),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_182 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_182_Q,
      O => TRIV_CORE_GEN_STATE(182),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_181 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_181_Q,
      O => TRIV_CORE_GEN_STATE(181),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_180 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_180_Q,
      O => TRIV_CORE_GEN_STATE(180),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_179 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_179_Q,
      O => TRIV_CORE_GEN_STATE(179),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_178 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_178_Q,
      O => TRIV_CORE_GEN_STATE(178),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_177 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_177_Q,
      O => TRIV_CORE_GEN_STATE(177),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_176 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_176_Q,
      O => TRIV_CORE_GEN_STATE(176),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_175 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_175_Q,
      O => TRIV_CORE_GEN_STATE(175),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_174 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_174_Q,
      O => TRIV_CORE_GEN_STATE(174),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_173 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_173_Q,
      O => TRIV_CORE_GEN_STATE(173),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_172 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_172_Q,
      O => TRIV_CORE_GEN_STATE(172),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_171 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_171_Q,
      O => TRIV_CORE_GEN_STATE(171),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_170 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_170_Q,
      O => TRIV_CORE_GEN_STATE(170),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_169 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_169_Q,
      O => TRIV_CORE_GEN_STATE(169),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_168 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_168_Q,
      O => TRIV_CORE_GEN_STATE(168),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_167 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_167_Q,
      O => TRIV_CORE_GEN_STATE(167),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_166 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_166_Q,
      O => TRIV_CORE_GEN_STATE(166),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_165 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_165_Q,
      O => TRIV_CORE_GEN_STATE(165),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_164 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_164_Q,
      O => TRIV_CORE_GEN_STATE(164),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_163 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_163_Q,
      O => TRIV_CORE_GEN_STATE(163),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_162 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_162_Q,
      O => TRIV_CORE_GEN_STATE(162),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_161 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_161_Q,
      O => TRIV_CORE_GEN_STATE(161),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_160 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_160_Q,
      O => TRIV_CORE_GEN_STATE(160),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_159 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_159_Q,
      O => TRIV_CORE_GEN_STATE(159),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_158 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_158_Q,
      O => TRIV_CORE_GEN_STATE(158),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_157 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_157_Q,
      O => TRIV_CORE_GEN_STATE(157),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_156 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_156_Q,
      O => TRIV_CORE_GEN_STATE(156),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_155 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_155_Q,
      O => TRIV_CORE_GEN_STATE(155),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_154 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_154_Q,
      O => TRIV_CORE_GEN_STATE(154),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_153 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_153_Q,
      O => TRIV_CORE_GEN_STATE(153),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_152 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_152_Q,
      O => TRIV_CORE_GEN_STATE(152),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_151 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_151_Q,
      O => TRIV_CORE_GEN_STATE(151),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_150 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_150_Q,
      O => TRIV_CORE_GEN_STATE(150),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_149 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_149_Q,
      O => TRIV_CORE_GEN_STATE(149),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_148 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_148_Q,
      O => TRIV_CORE_GEN_STATE(148),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_147 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_147_Q,
      O => TRIV_CORE_GEN_STATE(147),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_146 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_146_Q,
      O => TRIV_CORE_GEN_STATE(146),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_145 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_145_Q,
      O => TRIV_CORE_GEN_STATE(145),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_144 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_144_Q,
      O => TRIV_CORE_GEN_STATE(144),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_143 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_143_Q,
      O => TRIV_CORE_GEN_STATE(143),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_142 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_142_Q,
      O => TRIV_CORE_GEN_STATE(142),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_141 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_141_Q,
      O => TRIV_CORE_GEN_STATE(141),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_140 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_140_Q,
      O => TRIV_CORE_GEN_STATE(140),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_139 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_139_Q,
      O => TRIV_CORE_GEN_STATE(139),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_138 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_138_Q,
      O => TRIV_CORE_GEN_STATE(138),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_137 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_137_Q,
      O => TRIV_CORE_GEN_STATE(137),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_136 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_136_Q,
      O => TRIV_CORE_GEN_STATE(136),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_135 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_135_Q,
      O => TRIV_CORE_GEN_STATE(135),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_134 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_134_Q,
      O => TRIV_CORE_GEN_STATE(134),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_133 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_133_Q,
      O => TRIV_CORE_GEN_STATE(133),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_132 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_132_Q,
      O => TRIV_CORE_GEN_STATE(132),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_131 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_131_Q,
      O => TRIV_CORE_GEN_STATE(131),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_130 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_130_Q,
      O => TRIV_CORE_GEN_STATE(130),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_129 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_129_Q,
      O => TRIV_CORE_GEN_STATE(129),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_128 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_128_Q,
      O => TRIV_CORE_GEN_STATE(128),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_127 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_127_Q,
      O => TRIV_CORE_GEN_STATE(127),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_126 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_126_Q,
      O => TRIV_CORE_GEN_STATE(126),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_125 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_125_Q,
      O => TRIV_CORE_GEN_STATE(125),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_124 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_124_Q,
      O => TRIV_CORE_GEN_STATE(124),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_123 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_123_Q,
      O => TRIV_CORE_GEN_STATE(123),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_122 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_122_Q,
      O => TRIV_CORE_GEN_STATE(122),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_121 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_121_Q,
      O => TRIV_CORE_GEN_STATE(121),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_120 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_120_Q,
      O => TRIV_CORE_GEN_STATE(120),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_119 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_119_Q,
      O => TRIV_CORE_GEN_STATE(119),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_118 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_118_Q,
      O => TRIV_CORE_GEN_STATE(118),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_117 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_117_Q,
      O => TRIV_CORE_GEN_STATE(117),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_116 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_116_Q,
      O => TRIV_CORE_GEN_STATE(116),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_115 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_115_Q,
      O => TRIV_CORE_GEN_STATE(115),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_114 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_114_Q,
      O => TRIV_CORE_GEN_STATE(114),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_113 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_113_Q,
      O => TRIV_CORE_GEN_STATE(113),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_112 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_112_Q,
      O => TRIV_CORE_GEN_STATE(112),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_111 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_111_Q,
      O => TRIV_CORE_GEN_STATE(111),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_110 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_110_Q,
      O => TRIV_CORE_GEN_STATE(110),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_109 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_109_Q,
      O => TRIV_CORE_GEN_STATE(109),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_108 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_108_Q,
      O => TRIV_CORE_GEN_STATE(108),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_107 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_107_Q,
      O => TRIV_CORE_GEN_STATE(107),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_106 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_106_Q,
      O => TRIV_CORE_GEN_STATE(106),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_105 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_105_Q,
      O => TRIV_CORE_GEN_STATE(105),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_104 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_104_Q,
      O => TRIV_CORE_GEN_STATE(104),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_103 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_103_Q,
      O => TRIV_CORE_GEN_STATE(103),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_102 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_102_Q,
      O => TRIV_CORE_GEN_STATE(102),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_101 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_101_Q,
      O => TRIV_CORE_GEN_STATE(101),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_100 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_100_Q,
      O => TRIV_CORE_GEN_STATE(100),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_99 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_99_Q,
      O => TRIV_CORE_GEN_STATE(99),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_98 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_98_Q,
      O => TRIV_CORE_GEN_STATE(98),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_97 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_97_Q,
      O => TRIV_CORE_GEN_STATE(97),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_96 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_96_Q,
      O => TRIV_CORE_GEN_STATE(96),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_95 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_95_Q,
      O => TRIV_CORE_GEN_STATE(95),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_94 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_94_Q,
      O => TRIV_CORE_GEN_STATE(94),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_93 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_93_Q_312,
      O => TRIV_CORE_GEN_STATE(93),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_92 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_92_Q,
      O => TRIV_CORE_GEN_STATE(92),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_91 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_91_Q,
      O => TRIV_CORE_GEN_STATE(91),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_90 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_90_Q,
      O => TRIV_CORE_GEN_STATE(90),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_89 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_89_Q,
      O => TRIV_CORE_GEN_STATE(89),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_88 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_88_Q,
      O => TRIV_CORE_GEN_STATE(88),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_87 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_87_Q,
      O => TRIV_CORE_GEN_STATE(87),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_86 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_86_Q,
      O => TRIV_CORE_GEN_STATE(86),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_85 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_85_Q,
      O => TRIV_CORE_GEN_STATE(85),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_84 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_84_Q,
      O => TRIV_CORE_GEN_STATE(84),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_83 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_83_Q,
      O => TRIV_CORE_GEN_STATE(83),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_82 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_82_Q,
      O => TRIV_CORE_GEN_STATE(82),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_81 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_81_Q,
      O => TRIV_CORE_GEN_STATE(81),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_80 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_80_Q,
      O => TRIV_CORE_GEN_STATE(80),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_79 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_79_Q,
      O => TRIV_CORE_GEN_STATE(79),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_78 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_78_Q,
      O => TRIV_CORE_GEN_STATE(78),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_77 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_77_Q,
      O => TRIV_CORE_GEN_STATE(77),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_76 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_76_Q,
      O => TRIV_CORE_GEN_STATE(76),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_75 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_75_Q,
      O => TRIV_CORE_GEN_STATE(75),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_74 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_74_Q,
      O => TRIV_CORE_GEN_STATE(74),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_73 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_73_Q,
      O => TRIV_CORE_GEN_STATE(73),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_72 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_72_Q,
      O => TRIV_CORE_GEN_STATE(72),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_71 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_71_Q,
      O => TRIV_CORE_GEN_STATE(71),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_70 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_70_Q,
      O => TRIV_CORE_GEN_STATE(70),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_69 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_69_Q,
      O => TRIV_CORE_GEN_STATE(69),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_68 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_68_Q,
      O => TRIV_CORE_GEN_STATE(68),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_67 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_67_Q,
      O => TRIV_CORE_GEN_STATE(67),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_66 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_66_Q,
      O => TRIV_CORE_GEN_STATE(66),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_65 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_65_Q,
      O => TRIV_CORE_GEN_STATE(65),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_64 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_64_Q,
      O => TRIV_CORE_GEN_STATE(64),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_63 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_63_Q,
      O => TRIV_CORE_GEN_STATE(63),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_62 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_62_Q,
      O => TRIV_CORE_GEN_STATE(62),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_61 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_61_Q,
      O => TRIV_CORE_GEN_STATE(61),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_60 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_60_Q,
      O => TRIV_CORE_GEN_STATE(60),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_59 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_59_Q,
      O => TRIV_CORE_GEN_STATE(59),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_58 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_58_Q,
      O => TRIV_CORE_GEN_STATE(58),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_57 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_57_Q,
      O => TRIV_CORE_GEN_STATE(57),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_56 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_56_Q,
      O => TRIV_CORE_GEN_STATE(56),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_55 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_55_Q,
      O => TRIV_CORE_GEN_STATE(55),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_54 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_54_Q,
      O => TRIV_CORE_GEN_STATE(54),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_53 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_53_Q,
      O => TRIV_CORE_GEN_STATE(53),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_52 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_52_Q,
      O => TRIV_CORE_GEN_STATE(52),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_51 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_51_Q,
      O => TRIV_CORE_GEN_STATE(51),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_50 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_50_Q,
      O => TRIV_CORE_GEN_STATE(50),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_49 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_49_Q,
      O => TRIV_CORE_GEN_STATE(49),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_48 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_48_Q,
      O => TRIV_CORE_GEN_STATE(48),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_47 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_47_Q,
      O => TRIV_CORE_GEN_STATE(47),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_46 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_46_Q,
      O => TRIV_CORE_GEN_STATE(46),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_45 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_45_Q,
      O => TRIV_CORE_GEN_STATE(45),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_44 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_44_Q,
      O => TRIV_CORE_GEN_STATE(44),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_43 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_43_Q,
      O => TRIV_CORE_GEN_STATE(43),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_42 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_42_Q,
      O => TRIV_CORE_GEN_STATE(42),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_41 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_41_Q,
      O => TRIV_CORE_GEN_STATE(41),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_40 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_40_Q,
      O => TRIV_CORE_GEN_STATE(40),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_39 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_39_Q,
      O => TRIV_CORE_GEN_STATE(39),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_38 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_38_Q,
      O => TRIV_CORE_GEN_STATE(38),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_37 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_37_Q,
      O => TRIV_CORE_GEN_STATE(37),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_36 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_36_Q,
      O => TRIV_CORE_GEN_STATE(36),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_35 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_35_Q,
      O => TRIV_CORE_GEN_STATE(35),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_34 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_34_Q,
      O => TRIV_CORE_GEN_STATE(34),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_33 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_33_Q,
      O => TRIV_CORE_GEN_STATE(33),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_32 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_32_Q,
      O => TRIV_CORE_GEN_STATE(32),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_31 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_31_Q,
      O => TRIV_CORE_GEN_STATE(31),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_30 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_30_Q,
      O => TRIV_CORE_GEN_STATE(30),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_29 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_29_Q,
      O => TRIV_CORE_GEN_STATE(29),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_28 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_28_Q,
      O => TRIV_CORE_GEN_STATE(28),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_27 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_27_Q,
      O => TRIV_CORE_GEN_STATE(27),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_26 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_26_Q,
      O => TRIV_CORE_GEN_STATE(26),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_25 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_25_Q,
      O => TRIV_CORE_GEN_STATE(25),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_24 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_24_Q,
      O => TRIV_CORE_GEN_STATE(24),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_23 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_23_Q,
      O => TRIV_CORE_GEN_STATE(23),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_22 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_22_Q,
      O => TRIV_CORE_GEN_STATE(22),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_21 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_21_Q,
      O => TRIV_CORE_GEN_STATE(21),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_20 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_20_Q,
      O => TRIV_CORE_GEN_STATE(20),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_19 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_19_Q,
      O => TRIV_CORE_GEN_STATE(19),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_18 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_18_Q,
      O => TRIV_CORE_GEN_STATE(18),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_17 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_17_Q,
      O => TRIV_CORE_GEN_STATE(17),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_16 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_16_Q,
      O => TRIV_CORE_GEN_STATE(16),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_15 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_15_Q,
      O => TRIV_CORE_GEN_STATE(15),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_14 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_14_Q,
      O => TRIV_CORE_GEN_STATE(14),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_13 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_13_Q,
      O => TRIV_CORE_GEN_STATE(13),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_12 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_12_Q,
      O => TRIV_CORE_GEN_STATE(12),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_11 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_11_Q,
      O => TRIV_CORE_GEN_STATE(11),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_10 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_10_Q,
      O => TRIV_CORE_GEN_STATE(10),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_9 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_9_Q,
      O => TRIV_CORE_GEN_STATE(9),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_8 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_8_Q,
      O => TRIV_CORE_GEN_STATE(8),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_7_Q,
      O => TRIV_CORE_GEN_STATE(7),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_6_Q,
      O => TRIV_CORE_GEN_STATE(6),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_5_Q,
      O => TRIV_CORE_GEN_STATE(5),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_4_Q,
      O => TRIV_CORE_GEN_STATE(4),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_3_Q,
      O => TRIV_CORE_GEN_STATE(3),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_2_Q,
      O => TRIV_CORE_GEN_STATE(2),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_1_Q,
      O => TRIV_CORE_GEN_STATE(1),
      SET => GND,
      RST => GND
    );
  TRIV_CORE_GEN_STATE_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => TRIV_CORE_GEN_n0039_inv,
      I => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_0_Q_219,
      O => TRIV_CORE_GEN_STATE(0),
      SET => GND,
      RST => GND
    );
  Q_n0064_inv1 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => pr_state_FSM_FFd1_168,
      ADR1 => pr_state_FSM_FFd2_169,
      O => Q_n0064_inv
    );
  pr_state_GND_3_o_pr_state_2_equal_9_o1 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => pr_state_FSM_FFd3_171,
      ADR1 => pr_state_FSM_FFd2_169,
      O => GND_3_o_pr_state_2_equal_9_o
    );
  GND_3_o_GND_3_o_OR_17_o1 : X_LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      ADR0 => pr_state_FSM_FFd2_169,
      ADR1 => pr_state_FSM_FFd1_168,
      O => GND_3_o_GND_3_o_OR_17_o
    );
  Mmux_CORE_CNTRL_1_PWR_3_o_mux_15_OUT11 : X_LUT3
    generic map(
      INIT => X"DA"
    )
    port map (
      ADR0 => pr_state_FSM_FFd1_168,
      ADR1 => PLNTXT_EN_IBUF_166,
      ADR2 => pr_state_FSM_FFd3_171,
      O => CORE_CNTRL_1_PWR_3_o_mux_15_OUT_0_Q
    );
  TRIV_CORE_GEN_n0039_inv1 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => CORE_CNTRL_0_1_980,
      ADR1 => CORE_CNTRL_1_2_981,
      O => TRIV_CORE_GEN_n0039_inv
    );
  TRIV_CORE_GEN_CNTRL_1_PWR_6_o_equal_1_o_1_1 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => CORE_CNTRL_1_1_979,
      ADR1 => CORE_CNTRL(0),
      O => TRIV_CORE_GEN_CNTRL_1_PWR_6_o_equal_1_o
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_177_1 : X_LUT6
    generic map(
      INIT => X"000000006A95956A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(263),
      ADR1 => TRIV_CORE_GEN_STATE(174),
      ADR2 => TRIV_CORE_GEN_STATE(175),
      ADR3 => TRIV_CORE_GEN_STATE(161),
      ADR4 => TRIV_CORE_GEN_STATE(176),
      ADR5 => TRIV_CORE_GEN_CNTRL_1_PWR_6_o_equal_1_o,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_177_Q
    );
  TRIV_CORE_GEN_Mxor_key_stream_xo_0_1 : X_LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(65),
      ADR1 => TRIV_CORE_GEN_STATE(92),
      ADR2 => TRIV_CORE_GEN_STATE(161),
      ADR3 => TRIV_CORE_GEN_STATE(176),
      ADR4 => TRIV_CORE_GEN_STATE(242),
      ADR5 => TRIV_CORE_GEN_STATE(287),
      O => CORE_OUT
    );
  PWR_3_o_INIT_COUNTER_10_equal_3_o_10_SW0 : X_LUT6
    generic map(
      INIT => X"FFFFFF7FFFFFFFFF"
    )
    port map (
      ADR0 => INIT_COUNTER(4),
      ADR1 => INIT_COUNTER(10),
      ADR2 => INIT_COUNTER(2),
      ADR3 => INIT_COUNTER(9),
      ADR4 => INIT_COUNTER(8),
      ADR5 => INIT_COUNTER(3),
      O => N3
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_0_SW0 : X_LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(286),
      ADR1 => TRIV_CORE_GEN_STATE(285),
      O => N5
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_0_Q : X_LUT6
    generic map(
      INIT => X"AAAAAAAAC33C3CC3"
    )
    port map (
      ADR0 => K_INPUT_7_IBUF_75,
      ADR1 => TRIV_CORE_GEN_STATE(68),
      ADR2 => TRIV_CORE_GEN_STATE(287),
      ADR3 => TRIV_CORE_GEN_STATE(242),
      ADR4 => N5,
      ADR5 => TRIV_CORE_GEN_CNTRL_1_PWR_6_o_equal_1_o,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_0_Q_219
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_93_SW0 : X_LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(91),
      ADR1 => TRIV_CORE_GEN_STATE(90),
      O => N7
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_93_Q : X_LUT6
    generic map(
      INIT => X"AAAAAAAAC33C3CC3"
    )
    port map (
      ADR0 => IV_INPUT_7_IBUF_155,
      ADR1 => TRIV_CORE_GEN_STATE(170),
      ADR2 => TRIV_CORE_GEN_STATE(92),
      ADR3 => TRIV_CORE_GEN_STATE(65),
      ADR4 => N7,
      ADR5 => TRIV_CORE_GEN_CNTRL_1_PWR_6_o_equal_1_o,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_93_Q_312
    );
  K_INPUT_79_IBUF : X_BUF
    port map (
      I => K_INPUT(79),
      O => K_INPUT_79_IBUF_3
    );
  K_INPUT_78_IBUF : X_BUF
    port map (
      I => K_INPUT(78),
      O => K_INPUT_78_IBUF_4
    );
  K_INPUT_77_IBUF : X_BUF
    port map (
      I => K_INPUT(77),
      O => K_INPUT_77_IBUF_5
    );
  K_INPUT_76_IBUF : X_BUF
    port map (
      I => K_INPUT(76),
      O => K_INPUT_76_IBUF_6
    );
  K_INPUT_75_IBUF : X_BUF
    port map (
      I => K_INPUT(75),
      O => K_INPUT_75_IBUF_7
    );
  K_INPUT_74_IBUF : X_BUF
    port map (
      I => K_INPUT(74),
      O => K_INPUT_74_IBUF_8
    );
  K_INPUT_73_IBUF : X_BUF
    port map (
      I => K_INPUT(73),
      O => K_INPUT_73_IBUF_9
    );
  K_INPUT_72_IBUF : X_BUF
    port map (
      I => K_INPUT(72),
      O => K_INPUT_72_IBUF_10
    );
  K_INPUT_71_IBUF : X_BUF
    port map (
      I => K_INPUT(71),
      O => K_INPUT_71_IBUF_11
    );
  K_INPUT_70_IBUF : X_BUF
    port map (
      I => K_INPUT(70),
      O => K_INPUT_70_IBUF_12
    );
  K_INPUT_69_IBUF : X_BUF
    port map (
      I => K_INPUT(69),
      O => K_INPUT_69_IBUF_13
    );
  K_INPUT_68_IBUF : X_BUF
    port map (
      I => K_INPUT(68),
      O => K_INPUT_68_IBUF_14
    );
  K_INPUT_67_IBUF : X_BUF
    port map (
      I => K_INPUT(67),
      O => K_INPUT_67_IBUF_15
    );
  K_INPUT_66_IBUF : X_BUF
    port map (
      I => K_INPUT(66),
      O => K_INPUT_66_IBUF_16
    );
  K_INPUT_65_IBUF : X_BUF
    port map (
      I => K_INPUT(65),
      O => K_INPUT_65_IBUF_17
    );
  K_INPUT_64_IBUF : X_BUF
    port map (
      I => K_INPUT(64),
      O => K_INPUT_64_IBUF_18
    );
  K_INPUT_63_IBUF : X_BUF
    port map (
      I => K_INPUT(63),
      O => K_INPUT_63_IBUF_19
    );
  K_INPUT_62_IBUF : X_BUF
    port map (
      I => K_INPUT(62),
      O => K_INPUT_62_IBUF_20
    );
  K_INPUT_61_IBUF : X_BUF
    port map (
      I => K_INPUT(61),
      O => K_INPUT_61_IBUF_21
    );
  K_INPUT_60_IBUF : X_BUF
    port map (
      I => K_INPUT(60),
      O => K_INPUT_60_IBUF_22
    );
  K_INPUT_59_IBUF : X_BUF
    port map (
      I => K_INPUT(59),
      O => K_INPUT_59_IBUF_23
    );
  K_INPUT_58_IBUF : X_BUF
    port map (
      I => K_INPUT(58),
      O => K_INPUT_58_IBUF_24
    );
  K_INPUT_57_IBUF : X_BUF
    port map (
      I => K_INPUT(57),
      O => K_INPUT_57_IBUF_25
    );
  K_INPUT_56_IBUF : X_BUF
    port map (
      I => K_INPUT(56),
      O => K_INPUT_56_IBUF_26
    );
  K_INPUT_55_IBUF : X_BUF
    port map (
      I => K_INPUT(55),
      O => K_INPUT_55_IBUF_27
    );
  K_INPUT_54_IBUF : X_BUF
    port map (
      I => K_INPUT(54),
      O => K_INPUT_54_IBUF_28
    );
  K_INPUT_53_IBUF : X_BUF
    port map (
      I => K_INPUT(53),
      O => K_INPUT_53_IBUF_29
    );
  K_INPUT_52_IBUF : X_BUF
    port map (
      I => K_INPUT(52),
      O => K_INPUT_52_IBUF_30
    );
  K_INPUT_51_IBUF : X_BUF
    port map (
      I => K_INPUT(51),
      O => K_INPUT_51_IBUF_31
    );
  K_INPUT_50_IBUF : X_BUF
    port map (
      I => K_INPUT(50),
      O => K_INPUT_50_IBUF_32
    );
  K_INPUT_49_IBUF : X_BUF
    port map (
      I => K_INPUT(49),
      O => K_INPUT_49_IBUF_33
    );
  K_INPUT_48_IBUF : X_BUF
    port map (
      I => K_INPUT(48),
      O => K_INPUT_48_IBUF_34
    );
  K_INPUT_47_IBUF : X_BUF
    port map (
      I => K_INPUT(47),
      O => K_INPUT_47_IBUF_35
    );
  K_INPUT_46_IBUF : X_BUF
    port map (
      I => K_INPUT(46),
      O => K_INPUT_46_IBUF_36
    );
  K_INPUT_45_IBUF : X_BUF
    port map (
      I => K_INPUT(45),
      O => K_INPUT_45_IBUF_37
    );
  K_INPUT_44_IBUF : X_BUF
    port map (
      I => K_INPUT(44),
      O => K_INPUT_44_IBUF_38
    );
  K_INPUT_43_IBUF : X_BUF
    port map (
      I => K_INPUT(43),
      O => K_INPUT_43_IBUF_39
    );
  K_INPUT_42_IBUF : X_BUF
    port map (
      I => K_INPUT(42),
      O => K_INPUT_42_IBUF_40
    );
  K_INPUT_41_IBUF : X_BUF
    port map (
      I => K_INPUT(41),
      O => K_INPUT_41_IBUF_41
    );
  K_INPUT_40_IBUF : X_BUF
    port map (
      I => K_INPUT(40),
      O => K_INPUT_40_IBUF_42
    );
  K_INPUT_39_IBUF : X_BUF
    port map (
      I => K_INPUT(39),
      O => K_INPUT_39_IBUF_43
    );
  K_INPUT_38_IBUF : X_BUF
    port map (
      I => K_INPUT(38),
      O => K_INPUT_38_IBUF_44
    );
  K_INPUT_37_IBUF : X_BUF
    port map (
      I => K_INPUT(37),
      O => K_INPUT_37_IBUF_45
    );
  K_INPUT_36_IBUF : X_BUF
    port map (
      I => K_INPUT(36),
      O => K_INPUT_36_IBUF_46
    );
  K_INPUT_35_IBUF : X_BUF
    port map (
      I => K_INPUT(35),
      O => K_INPUT_35_IBUF_47
    );
  K_INPUT_34_IBUF : X_BUF
    port map (
      I => K_INPUT(34),
      O => K_INPUT_34_IBUF_48
    );
  K_INPUT_33_IBUF : X_BUF
    port map (
      I => K_INPUT(33),
      O => K_INPUT_33_IBUF_49
    );
  K_INPUT_32_IBUF : X_BUF
    port map (
      I => K_INPUT(32),
      O => K_INPUT_32_IBUF_50
    );
  K_INPUT_31_IBUF : X_BUF
    port map (
      I => K_INPUT(31),
      O => K_INPUT_31_IBUF_51
    );
  K_INPUT_30_IBUF : X_BUF
    port map (
      I => K_INPUT(30),
      O => K_INPUT_30_IBUF_52
    );
  K_INPUT_29_IBUF : X_BUF
    port map (
      I => K_INPUT(29),
      O => K_INPUT_29_IBUF_53
    );
  K_INPUT_28_IBUF : X_BUF
    port map (
      I => K_INPUT(28),
      O => K_INPUT_28_IBUF_54
    );
  K_INPUT_27_IBUF : X_BUF
    port map (
      I => K_INPUT(27),
      O => K_INPUT_27_IBUF_55
    );
  K_INPUT_26_IBUF : X_BUF
    port map (
      I => K_INPUT(26),
      O => K_INPUT_26_IBUF_56
    );
  K_INPUT_25_IBUF : X_BUF
    port map (
      I => K_INPUT(25),
      O => K_INPUT_25_IBUF_57
    );
  K_INPUT_24_IBUF : X_BUF
    port map (
      I => K_INPUT(24),
      O => K_INPUT_24_IBUF_58
    );
  K_INPUT_23_IBUF : X_BUF
    port map (
      I => K_INPUT(23),
      O => K_INPUT_23_IBUF_59
    );
  K_INPUT_22_IBUF : X_BUF
    port map (
      I => K_INPUT(22),
      O => K_INPUT_22_IBUF_60
    );
  K_INPUT_21_IBUF : X_BUF
    port map (
      I => K_INPUT(21),
      O => K_INPUT_21_IBUF_61
    );
  K_INPUT_20_IBUF : X_BUF
    port map (
      I => K_INPUT(20),
      O => K_INPUT_20_IBUF_62
    );
  K_INPUT_19_IBUF : X_BUF
    port map (
      I => K_INPUT(19),
      O => K_INPUT_19_IBUF_63
    );
  K_INPUT_18_IBUF : X_BUF
    port map (
      I => K_INPUT(18),
      O => K_INPUT_18_IBUF_64
    );
  K_INPUT_17_IBUF : X_BUF
    port map (
      I => K_INPUT(17),
      O => K_INPUT_17_IBUF_65
    );
  K_INPUT_16_IBUF : X_BUF
    port map (
      I => K_INPUT(16),
      O => K_INPUT_16_IBUF_66
    );
  K_INPUT_15_IBUF : X_BUF
    port map (
      I => K_INPUT(15),
      O => K_INPUT_15_IBUF_67
    );
  K_INPUT_14_IBUF : X_BUF
    port map (
      I => K_INPUT(14),
      O => K_INPUT_14_IBUF_68
    );
  K_INPUT_13_IBUF : X_BUF
    port map (
      I => K_INPUT(13),
      O => K_INPUT_13_IBUF_69
    );
  K_INPUT_12_IBUF : X_BUF
    port map (
      I => K_INPUT(12),
      O => K_INPUT_12_IBUF_70
    );
  K_INPUT_11_IBUF : X_BUF
    port map (
      I => K_INPUT(11),
      O => K_INPUT_11_IBUF_71
    );
  K_INPUT_10_IBUF : X_BUF
    port map (
      I => K_INPUT(10),
      O => K_INPUT_10_IBUF_72
    );
  K_INPUT_9_IBUF : X_BUF
    port map (
      I => K_INPUT(9),
      O => K_INPUT_9_IBUF_73
    );
  K_INPUT_8_IBUF : X_BUF
    port map (
      I => K_INPUT(8),
      O => K_INPUT_8_IBUF_74
    );
  K_INPUT_7_IBUF : X_BUF
    port map (
      I => K_INPUT(7),
      O => K_INPUT_7_IBUF_75
    );
  K_INPUT_6_IBUF : X_BUF
    port map (
      I => K_INPUT(6),
      O => K_INPUT_6_IBUF_76
    );
  K_INPUT_5_IBUF : X_BUF
    port map (
      I => K_INPUT(5),
      O => K_INPUT_5_IBUF_77
    );
  K_INPUT_4_IBUF : X_BUF
    port map (
      I => K_INPUT(4),
      O => K_INPUT_4_IBUF_78
    );
  K_INPUT_3_IBUF : X_BUF
    port map (
      I => K_INPUT(3),
      O => K_INPUT_3_IBUF_79
    );
  K_INPUT_2_IBUF : X_BUF
    port map (
      I => K_INPUT(2),
      O => K_INPUT_2_IBUF_80
    );
  K_INPUT_1_IBUF : X_BUF
    port map (
      I => K_INPUT(1),
      O => K_INPUT_1_IBUF_81
    );
  K_INPUT_0_IBUF : X_BUF
    port map (
      I => K_INPUT(0),
      O => K_INPUT_0_IBUF_82
    );
  IV_INPUT_79_IBUF : X_BUF
    port map (
      I => IV_INPUT(79),
      O => IV_INPUT_79_IBUF_83
    );
  IV_INPUT_78_IBUF : X_BUF
    port map (
      I => IV_INPUT(78),
      O => IV_INPUT_78_IBUF_84
    );
  IV_INPUT_77_IBUF : X_BUF
    port map (
      I => IV_INPUT(77),
      O => IV_INPUT_77_IBUF_85
    );
  IV_INPUT_76_IBUF : X_BUF
    port map (
      I => IV_INPUT(76),
      O => IV_INPUT_76_IBUF_86
    );
  IV_INPUT_75_IBUF : X_BUF
    port map (
      I => IV_INPUT(75),
      O => IV_INPUT_75_IBUF_87
    );
  IV_INPUT_74_IBUF : X_BUF
    port map (
      I => IV_INPUT(74),
      O => IV_INPUT_74_IBUF_88
    );
  IV_INPUT_73_IBUF : X_BUF
    port map (
      I => IV_INPUT(73),
      O => IV_INPUT_73_IBUF_89
    );
  IV_INPUT_72_IBUF : X_BUF
    port map (
      I => IV_INPUT(72),
      O => IV_INPUT_72_IBUF_90
    );
  IV_INPUT_71_IBUF : X_BUF
    port map (
      I => IV_INPUT(71),
      O => IV_INPUT_71_IBUF_91
    );
  IV_INPUT_70_IBUF : X_BUF
    port map (
      I => IV_INPUT(70),
      O => IV_INPUT_70_IBUF_92
    );
  IV_INPUT_69_IBUF : X_BUF
    port map (
      I => IV_INPUT(69),
      O => IV_INPUT_69_IBUF_93
    );
  IV_INPUT_68_IBUF : X_BUF
    port map (
      I => IV_INPUT(68),
      O => IV_INPUT_68_IBUF_94
    );
  IV_INPUT_67_IBUF : X_BUF
    port map (
      I => IV_INPUT(67),
      O => IV_INPUT_67_IBUF_95
    );
  IV_INPUT_66_IBUF : X_BUF
    port map (
      I => IV_INPUT(66),
      O => IV_INPUT_66_IBUF_96
    );
  IV_INPUT_65_IBUF : X_BUF
    port map (
      I => IV_INPUT(65),
      O => IV_INPUT_65_IBUF_97
    );
  IV_INPUT_64_IBUF : X_BUF
    port map (
      I => IV_INPUT(64),
      O => IV_INPUT_64_IBUF_98
    );
  IV_INPUT_63_IBUF : X_BUF
    port map (
      I => IV_INPUT(63),
      O => IV_INPUT_63_IBUF_99
    );
  IV_INPUT_62_IBUF : X_BUF
    port map (
      I => IV_INPUT(62),
      O => IV_INPUT_62_IBUF_100
    );
  IV_INPUT_61_IBUF : X_BUF
    port map (
      I => IV_INPUT(61),
      O => IV_INPUT_61_IBUF_101
    );
  IV_INPUT_60_IBUF : X_BUF
    port map (
      I => IV_INPUT(60),
      O => IV_INPUT_60_IBUF_102
    );
  IV_INPUT_59_IBUF : X_BUF
    port map (
      I => IV_INPUT(59),
      O => IV_INPUT_59_IBUF_103
    );
  IV_INPUT_58_IBUF : X_BUF
    port map (
      I => IV_INPUT(58),
      O => IV_INPUT_58_IBUF_104
    );
  IV_INPUT_57_IBUF : X_BUF
    port map (
      I => IV_INPUT(57),
      O => IV_INPUT_57_IBUF_105
    );
  IV_INPUT_56_IBUF : X_BUF
    port map (
      I => IV_INPUT(56),
      O => IV_INPUT_56_IBUF_106
    );
  IV_INPUT_55_IBUF : X_BUF
    port map (
      I => IV_INPUT(55),
      O => IV_INPUT_55_IBUF_107
    );
  IV_INPUT_54_IBUF : X_BUF
    port map (
      I => IV_INPUT(54),
      O => IV_INPUT_54_IBUF_108
    );
  IV_INPUT_53_IBUF : X_BUF
    port map (
      I => IV_INPUT(53),
      O => IV_INPUT_53_IBUF_109
    );
  IV_INPUT_52_IBUF : X_BUF
    port map (
      I => IV_INPUT(52),
      O => IV_INPUT_52_IBUF_110
    );
  IV_INPUT_51_IBUF : X_BUF
    port map (
      I => IV_INPUT(51),
      O => IV_INPUT_51_IBUF_111
    );
  IV_INPUT_50_IBUF : X_BUF
    port map (
      I => IV_INPUT(50),
      O => IV_INPUT_50_IBUF_112
    );
  IV_INPUT_49_IBUF : X_BUF
    port map (
      I => IV_INPUT(49),
      O => IV_INPUT_49_IBUF_113
    );
  IV_INPUT_48_IBUF : X_BUF
    port map (
      I => IV_INPUT(48),
      O => IV_INPUT_48_IBUF_114
    );
  IV_INPUT_47_IBUF : X_BUF
    port map (
      I => IV_INPUT(47),
      O => IV_INPUT_47_IBUF_115
    );
  IV_INPUT_46_IBUF : X_BUF
    port map (
      I => IV_INPUT(46),
      O => IV_INPUT_46_IBUF_116
    );
  IV_INPUT_45_IBUF : X_BUF
    port map (
      I => IV_INPUT(45),
      O => IV_INPUT_45_IBUF_117
    );
  IV_INPUT_44_IBUF : X_BUF
    port map (
      I => IV_INPUT(44),
      O => IV_INPUT_44_IBUF_118
    );
  IV_INPUT_43_IBUF : X_BUF
    port map (
      I => IV_INPUT(43),
      O => IV_INPUT_43_IBUF_119
    );
  IV_INPUT_42_IBUF : X_BUF
    port map (
      I => IV_INPUT(42),
      O => IV_INPUT_42_IBUF_120
    );
  IV_INPUT_41_IBUF : X_BUF
    port map (
      I => IV_INPUT(41),
      O => IV_INPUT_41_IBUF_121
    );
  IV_INPUT_40_IBUF : X_BUF
    port map (
      I => IV_INPUT(40),
      O => IV_INPUT_40_IBUF_122
    );
  IV_INPUT_39_IBUF : X_BUF
    port map (
      I => IV_INPUT(39),
      O => IV_INPUT_39_IBUF_123
    );
  IV_INPUT_38_IBUF : X_BUF
    port map (
      I => IV_INPUT(38),
      O => IV_INPUT_38_IBUF_124
    );
  IV_INPUT_37_IBUF : X_BUF
    port map (
      I => IV_INPUT(37),
      O => IV_INPUT_37_IBUF_125
    );
  IV_INPUT_36_IBUF : X_BUF
    port map (
      I => IV_INPUT(36),
      O => IV_INPUT_36_IBUF_126
    );
  IV_INPUT_35_IBUF : X_BUF
    port map (
      I => IV_INPUT(35),
      O => IV_INPUT_35_IBUF_127
    );
  IV_INPUT_34_IBUF : X_BUF
    port map (
      I => IV_INPUT(34),
      O => IV_INPUT_34_IBUF_128
    );
  IV_INPUT_33_IBUF : X_BUF
    port map (
      I => IV_INPUT(33),
      O => IV_INPUT_33_IBUF_129
    );
  IV_INPUT_32_IBUF : X_BUF
    port map (
      I => IV_INPUT(32),
      O => IV_INPUT_32_IBUF_130
    );
  IV_INPUT_31_IBUF : X_BUF
    port map (
      I => IV_INPUT(31),
      O => IV_INPUT_31_IBUF_131
    );
  IV_INPUT_30_IBUF : X_BUF
    port map (
      I => IV_INPUT(30),
      O => IV_INPUT_30_IBUF_132
    );
  IV_INPUT_29_IBUF : X_BUF
    port map (
      I => IV_INPUT(29),
      O => IV_INPUT_29_IBUF_133
    );
  IV_INPUT_28_IBUF : X_BUF
    port map (
      I => IV_INPUT(28),
      O => IV_INPUT_28_IBUF_134
    );
  IV_INPUT_27_IBUF : X_BUF
    port map (
      I => IV_INPUT(27),
      O => IV_INPUT_27_IBUF_135
    );
  IV_INPUT_26_IBUF : X_BUF
    port map (
      I => IV_INPUT(26),
      O => IV_INPUT_26_IBUF_136
    );
  IV_INPUT_25_IBUF : X_BUF
    port map (
      I => IV_INPUT(25),
      O => IV_INPUT_25_IBUF_137
    );
  IV_INPUT_24_IBUF : X_BUF
    port map (
      I => IV_INPUT(24),
      O => IV_INPUT_24_IBUF_138
    );
  IV_INPUT_23_IBUF : X_BUF
    port map (
      I => IV_INPUT(23),
      O => IV_INPUT_23_IBUF_139
    );
  IV_INPUT_22_IBUF : X_BUF
    port map (
      I => IV_INPUT(22),
      O => IV_INPUT_22_IBUF_140
    );
  IV_INPUT_21_IBUF : X_BUF
    port map (
      I => IV_INPUT(21),
      O => IV_INPUT_21_IBUF_141
    );
  IV_INPUT_20_IBUF : X_BUF
    port map (
      I => IV_INPUT(20),
      O => IV_INPUT_20_IBUF_142
    );
  IV_INPUT_19_IBUF : X_BUF
    port map (
      I => IV_INPUT(19),
      O => IV_INPUT_19_IBUF_143
    );
  IV_INPUT_18_IBUF : X_BUF
    port map (
      I => IV_INPUT(18),
      O => IV_INPUT_18_IBUF_144
    );
  IV_INPUT_17_IBUF : X_BUF
    port map (
      I => IV_INPUT(17),
      O => IV_INPUT_17_IBUF_145
    );
  IV_INPUT_16_IBUF : X_BUF
    port map (
      I => IV_INPUT(16),
      O => IV_INPUT_16_IBUF_146
    );
  IV_INPUT_15_IBUF : X_BUF
    port map (
      I => IV_INPUT(15),
      O => IV_INPUT_15_IBUF_147
    );
  IV_INPUT_14_IBUF : X_BUF
    port map (
      I => IV_INPUT(14),
      O => IV_INPUT_14_IBUF_148
    );
  IV_INPUT_13_IBUF : X_BUF
    port map (
      I => IV_INPUT(13),
      O => IV_INPUT_13_IBUF_149
    );
  IV_INPUT_12_IBUF : X_BUF
    port map (
      I => IV_INPUT(12),
      O => IV_INPUT_12_IBUF_150
    );
  IV_INPUT_11_IBUF : X_BUF
    port map (
      I => IV_INPUT(11),
      O => IV_INPUT_11_IBUF_151
    );
  IV_INPUT_10_IBUF : X_BUF
    port map (
      I => IV_INPUT(10),
      O => IV_INPUT_10_IBUF_152
    );
  IV_INPUT_9_IBUF : X_BUF
    port map (
      I => IV_INPUT(9),
      O => IV_INPUT_9_IBUF_153
    );
  IV_INPUT_8_IBUF : X_BUF
    port map (
      I => IV_INPUT(8),
      O => IV_INPUT_8_IBUF_154
    );
  IV_INPUT_7_IBUF : X_BUF
    port map (
      I => IV_INPUT(7),
      O => IV_INPUT_7_IBUF_155
    );
  IV_INPUT_6_IBUF : X_BUF
    port map (
      I => IV_INPUT(6),
      O => IV_INPUT_6_IBUF_156
    );
  IV_INPUT_5_IBUF : X_BUF
    port map (
      I => IV_INPUT(5),
      O => IV_INPUT_5_IBUF_157
    );
  IV_INPUT_4_IBUF : X_BUF
    port map (
      I => IV_INPUT(4),
      O => IV_INPUT_4_IBUF_158
    );
  IV_INPUT_3_IBUF : X_BUF
    port map (
      I => IV_INPUT(3),
      O => IV_INPUT_3_IBUF_159
    );
  IV_INPUT_2_IBUF : X_BUF
    port map (
      I => IV_INPUT(2),
      O => IV_INPUT_2_IBUF_160
    );
  IV_INPUT_1_IBUF : X_BUF
    port map (
      I => IV_INPUT(1),
      O => IV_INPUT_1_IBUF_161
    );
  IV_INPUT_0_IBUF : X_BUF
    port map (
      I => IV_INPUT(0),
      O => IV_INPUT_0_IBUF_162
    );
  RST_IBUF : X_BUF
    port map (
      I => RST,
      O => RST_IBUF_164
    );
  PLAINTEXT_IN_IBUF : X_BUF
    port map (
      I => PLAINTEXT_IN,
      O => PLAINTEXT_IN_IBUF_165
    );
  PLNTXT_EN_IBUF : X_BUF
    port map (
      I => PLNTXT_EN,
      O => PLNTXT_EN_IBUF_166
    );
  Mcount_INIT_COUNTER_cy_1_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => INIT_COUNTER(1),
      O => Mcount_INIT_COUNTER_cy_1_rt_965,
      ADR1 => GND
    );
  Mcount_INIT_COUNTER_cy_2_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => INIT_COUNTER(2),
      O => Mcount_INIT_COUNTER_cy_2_rt_966,
      ADR1 => GND
    );
  Mcount_INIT_COUNTER_cy_3_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => INIT_COUNTER(3),
      O => Mcount_INIT_COUNTER_cy_3_rt_967,
      ADR1 => GND
    );
  Mcount_INIT_COUNTER_cy_4_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => INIT_COUNTER(4),
      O => Mcount_INIT_COUNTER_cy_4_rt_968,
      ADR1 => GND
    );
  Mcount_INIT_COUNTER_cy_5_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => INIT_COUNTER(5),
      O => Mcount_INIT_COUNTER_cy_5_rt_969,
      ADR1 => GND
    );
  Mcount_INIT_COUNTER_cy_6_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => INIT_COUNTER(6),
      O => Mcount_INIT_COUNTER_cy_6_rt_970,
      ADR1 => GND
    );
  Mcount_INIT_COUNTER_cy_7_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => INIT_COUNTER(7),
      O => Mcount_INIT_COUNTER_cy_7_rt_971,
      ADR1 => GND
    );
  Mcount_INIT_COUNTER_cy_8_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => INIT_COUNTER(8),
      O => Mcount_INIT_COUNTER_cy_8_rt_972,
      ADR1 => GND
    );
  Mcount_INIT_COUNTER_cy_9_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => INIT_COUNTER(9),
      O => Mcount_INIT_COUNTER_cy_9_rt_973,
      ADR1 => GND
    );
  Mcount_INIT_COUNTER_xor_10_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => INIT_COUNTER(10),
      O => Mcount_INIT_COUNTER_xor_10_rt_974,
      ADR1 => GND
    );
  CIPHERTEXT_OUT_516 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      I => CIPHERTEXT_OUT_rstpot_976,
      SRST => GND_3_o_GND_3_o_OR_17_o,
      O => CIPHERTEXT_OUT_OBUF_185,
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  PWR_3_o_INIT_COUNTER_10_equal_3_o_10_SW1 : X_LUT4
    generic map(
      INIT => X"BFFF"
    )
    port map (
      ADR0 => INIT_COUNTER(7),
      ADR1 => INIT_COUNTER(1),
      ADR2 => INIT_COUNTER(6),
      ADR3 => INIT_COUNTER(5),
      O => N9
    );
  pr_state_FSM_FFd3_In1 : X_LUT6
    generic map(
      INIT => X"FFCFFFCFFFCFFF4F"
    )
    port map (
      ADR0 => INIT_COUNTER(0),
      ADR1 => pr_state_FSM_FFd2_169,
      ADR2 => pr_state_FSM_FFd3_171,
      ADR3 => pr_state_FSM_FFd1_168,
      ADR4 => N9,
      ADR5 => N3,
      O => pr_state_FSM_FFd3_In
    );
  PWR_3_o_INIT_COUNTER_10_equal_3_o_10_SW2 : X_LUT4
    generic map(
      INIT => X"BFFF"
    )
    port map (
      ADR0 => INIT_COUNTER(7),
      ADR1 => INIT_COUNTER(6),
      ADR2 => INIT_COUNTER(5),
      ADR3 => pr_state_FSM_FFd2_169,
      O => N11
    );
  pr_state_FSM_FFd1_In1 : X_LUT6
    generic map(
      INIT => X"FF00FF00FF00FF80"
    )
    port map (
      ADR0 => INIT_COUNTER(1),
      ADR1 => INIT_COUNTER(0),
      ADR2 => pr_state_FSM_FFd3_171,
      ADR3 => pr_state_FSM_FFd1_168,
      ADR4 => N11,
      ADR5 => N3,
      O => pr_state_FSM_FFd1_In
    );
  pr_state_FSM_FFd2_In1 : X_LUT6
    generic map(
      INIT => X"CCFCCCFCCCFC4C7C"
    )
    port map (
      ADR0 => INIT_COUNTER(0),
      ADR1 => pr_state_FSM_FFd2_169,
      ADR2 => pr_state_FSM_FFd3_171,
      ADR3 => pr_state_FSM_FFd1_168,
      ADR4 => N9,
      ADR5 => N3,
      O => pr_state_FSM_FFd2_In
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_1_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(0),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_6_IBUF_76,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_1_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_2_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(1),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_5_IBUF_77,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_2_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_3_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(2),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_4_IBUF_78,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_3_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_4_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(3),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_3_IBUF_79,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_4_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_5_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(4),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_2_IBUF_80,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_5_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_6_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(5),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_1_IBUF_81,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_6_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_7_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(6),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_0_IBUF_82,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_7_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_8_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(7),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_15_IBUF_67,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_8_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_9_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(8),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_14_IBUF_68,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_9_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_10_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(9),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_13_IBUF_69,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_10_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_11_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(10),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_12_IBUF_70,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_11_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_12_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(11),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_11_IBUF_71,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_12_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_13_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(12),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_10_IBUF_72,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_13_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_14_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(13),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_9_IBUF_73,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_14_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_15_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(14),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_8_IBUF_74,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_15_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_16_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(15),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_23_IBUF_59,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_16_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_17_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(16),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_22_IBUF_60,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_17_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_18_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(17),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_21_IBUF_61,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_18_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_19_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(18),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_20_IBUF_62,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_19_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_20_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(19),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_19_IBUF_63,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_20_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_21_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(20),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_18_IBUF_64,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_21_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_22_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(21),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_17_IBUF_65,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_22_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_23_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(22),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_16_IBUF_66,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_23_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_24_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(23),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_31_IBUF_51,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_24_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_25_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(24),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_30_IBUF_52,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_25_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_26_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(25),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_29_IBUF_53,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_26_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_27_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(26),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_28_IBUF_54,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_27_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_28_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(27),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_27_IBUF_55,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_28_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_29_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(28),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_26_IBUF_56,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_29_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_30_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(29),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_25_IBUF_57,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_30_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_31_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(30),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_24_IBUF_58,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_31_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_32_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(31),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_39_IBUF_43,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_32_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_33_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(32),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_38_IBUF_44,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_33_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_34_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(33),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_37_IBUF_45,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_34_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_35_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(34),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_36_IBUF_46,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_35_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_36_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(35),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_35_IBUF_47,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_36_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_37_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(36),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_34_IBUF_48,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_37_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_38_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(37),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_33_IBUF_49,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_38_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_39_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(38),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_32_IBUF_50,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_39_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_40_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(39),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_47_IBUF_35,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_40_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_41_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(40),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_46_IBUF_36,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_41_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_42_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(41),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_45_IBUF_37,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_42_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_43_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(42),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_44_IBUF_38,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_43_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_44_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(43),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_43_IBUF_39,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_44_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_45_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(44),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_42_IBUF_40,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_45_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_46_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(45),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_41_IBUF_41,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_46_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_47_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(46),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_40_IBUF_42,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_47_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_48_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(47),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_55_IBUF_27,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_48_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_49_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(48),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_54_IBUF_28,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_49_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_50_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(49),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_53_IBUF_29,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_50_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_51_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(50),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_52_IBUF_30,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_51_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_52_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(51),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_51_IBUF_31,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_52_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_53_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(52),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_50_IBUF_32,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_53_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_54_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(53),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_49_IBUF_33,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_54_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_55_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(54),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_48_IBUF_34,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_55_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_56_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(55),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_63_IBUF_19,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_56_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_57_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(56),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_62_IBUF_20,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_57_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_58_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(57),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_61_IBUF_21,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_58_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_59_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(58),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_60_IBUF_22,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_59_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_60_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(59),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_59_IBUF_23,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_60_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_61_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(60),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_58_IBUF_24,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_61_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_62_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(61),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_57_IBUF_25,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_62_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_63_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(62),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_56_IBUF_26,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_63_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_64_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(63),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_71_IBUF_11,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_64_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_65_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(64),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_70_IBUF_12,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_65_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_66_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(65),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_69_IBUF_13,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_66_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_67_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(66),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_68_IBUF_14,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_67_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_68_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(67),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_67_IBUF_15,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_68_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_69_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(68),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_66_IBUF_16,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_69_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_70_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(69),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_65_IBUF_17,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_70_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_71_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(70),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_64_IBUF_18,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_71_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_72_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(71),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_79_IBUF_3,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_72_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_73_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(72),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_78_IBUF_4,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_73_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_74_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(73),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_77_IBUF_5,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_74_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_75_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(74),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_76_IBUF_6,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_75_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_76_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(75),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_75_IBUF_7,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_76_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_77_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(76),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_74_IBUF_8,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_77_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_78_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(77),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_73_IBUF_9,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_78_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_79_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(78),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => K_INPUT_72_IBUF_10,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_79_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_80_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(79),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_80_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_81_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(80),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_81_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_82_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(81),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_82_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_83_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(82),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_83_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_84_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(83),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_84_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_85_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(84),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_85_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_86_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(85),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_86_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_87_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(86),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_87_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_88_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(87),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_88_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_89_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(88),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_89_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_90_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(89),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_90_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_91_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(90),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_91_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_92_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(91),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_92_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_94_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(93),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_6_IBUF_156,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_94_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_95_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(94),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_5_IBUF_157,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_95_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_96_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(95),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_4_IBUF_158,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_96_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_97_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(96),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_3_IBUF_159,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_97_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_98_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(97),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_2_IBUF_160,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_98_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_99_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(98),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_1_IBUF_161,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_99_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_100_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(99),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_0_IBUF_162,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_100_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_101_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(100),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_15_IBUF_147,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_101_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_102_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(101),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_14_IBUF_148,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_102_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_103_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(102),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_13_IBUF_149,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_103_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_104_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(103),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_12_IBUF_150,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_104_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_105_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(104),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_11_IBUF_151,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_105_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_106_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(105),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_10_IBUF_152,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_106_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_107_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(106),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_9_IBUF_153,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_107_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_108_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(107),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_8_IBUF_154,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_108_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_109_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(108),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_23_IBUF_139,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_109_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_110_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(109),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_22_IBUF_140,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_110_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_111_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(110),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_21_IBUF_141,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_111_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_112_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(111),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_20_IBUF_142,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_112_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_113_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(112),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_19_IBUF_143,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_113_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_114_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(113),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_18_IBUF_144,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_114_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_115_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(114),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_17_IBUF_145,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_115_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_116_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(115),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_16_IBUF_146,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_116_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_117_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(116),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_31_IBUF_131,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_117_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_118_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(117),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_30_IBUF_132,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_118_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_119_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(118),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_29_IBUF_133,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_119_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_120_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(119),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_28_IBUF_134,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_120_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_121_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(120),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_27_IBUF_135,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_121_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_122_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(121),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_26_IBUF_136,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_122_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_123_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(122),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_25_IBUF_137,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_123_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_124_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(123),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_24_IBUF_138,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_124_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_125_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(124),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_39_IBUF_123,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_125_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_126_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(125),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_38_IBUF_124,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_126_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_127_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(126),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_37_IBUF_125,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_127_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_128_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(127),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_36_IBUF_126,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_128_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_129_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(128),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_35_IBUF_127,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_129_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_130_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(129),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_34_IBUF_128,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_130_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_131_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(130),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_33_IBUF_129,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_131_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_132_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(131),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_32_IBUF_130,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_132_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_133_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(132),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_47_IBUF_115,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_133_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_134_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(133),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_46_IBUF_116,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_134_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_135_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(134),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_45_IBUF_117,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_135_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_136_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(135),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_44_IBUF_118,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_136_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_137_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(136),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_43_IBUF_119,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_137_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_138_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(137),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_42_IBUF_120,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_138_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_139_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(138),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_41_IBUF_121,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_139_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_140_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(139),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_40_IBUF_122,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_140_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_141_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(140),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_55_IBUF_107,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_141_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_142_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(141),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_54_IBUF_108,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_142_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_143_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(142),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_53_IBUF_109,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_143_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_144_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(143),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_52_IBUF_110,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_144_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_145_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(144),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_51_IBUF_111,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_145_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_146_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(145),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_50_IBUF_112,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_146_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_147_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(146),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_49_IBUF_113,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_147_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_148_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(147),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_48_IBUF_114,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_148_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_149_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(148),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_63_IBUF_99,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_149_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_150_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(149),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_62_IBUF_100,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_150_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_151_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(150),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_61_IBUF_101,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_151_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_152_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(151),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_60_IBUF_102,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_152_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_153_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(152),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_59_IBUF_103,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_153_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_154_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(153),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_58_IBUF_104,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_154_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_155_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(154),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_57_IBUF_105,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_155_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_156_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(155),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_56_IBUF_106,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_156_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_157_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(156),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_71_IBUF_91,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_157_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_158_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(157),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_70_IBUF_92,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_158_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_159_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(158),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_69_IBUF_93,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_159_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_160_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(159),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_68_IBUF_94,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_160_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_161_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(160),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_67_IBUF_95,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_161_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_162_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(161),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_66_IBUF_96,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_162_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_163_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(162),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_65_IBUF_97,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_163_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_164_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(163),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_64_IBUF_98,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_164_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_165_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(164),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_79_IBUF_83,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_165_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_166_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(165),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_78_IBUF_84,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_166_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_167_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(166),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_77_IBUF_85,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_167_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_168_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(167),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_76_IBUF_86,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_168_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_169_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(168),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_75_IBUF_87,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_169_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_170_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(169),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_74_IBUF_88,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_170_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_171_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(170),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_73_IBUF_89,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_171_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_172_1 : X_LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(171),
      ADR1 => CORE_CNTRL(1),
      ADR2 => CORE_CNTRL(0),
      ADR3 => IV_INPUT_72_IBUF_90,
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_172_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_173_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(172),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_173_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_174_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(173),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_174_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_175_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(174),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_175_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_176_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(175),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_176_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_178_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(177),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_178_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_179_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(178),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_179_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_180_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(179),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_180_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_181_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(180),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_181_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_182_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(181),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_182_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_183_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(182),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_183_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_184_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(183),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_184_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_185_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(184),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_185_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_186_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(185),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_186_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_187_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(186),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_187_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_188_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(187),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_188_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_189_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(188),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_189_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_190_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(189),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_190_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_191_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(190),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_191_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_192_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(191),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_192_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_193_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(192),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_193_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_194_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(193),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_194_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_195_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(194),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_195_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_196_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(195),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_196_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_197_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(196),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_197_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_198_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(197),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_198_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_199_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(198),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_199_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_200_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(199),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_200_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_201_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(200),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_201_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_202_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(201),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_202_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_203_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(202),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_203_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_204_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(203),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_204_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_205_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(204),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_205_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_206_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(205),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_206_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_207_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(206),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_207_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_208_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(207),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_208_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_209_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(208),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_209_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_210_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(209),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_210_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_211_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(210),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_211_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_212_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(211),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_212_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_213_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(212),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_213_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_214_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(213),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_214_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_215_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(214),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_215_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_216_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(215),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_216_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_217_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(216),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_217_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_218_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(217),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_218_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_219_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(218),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_219_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_220_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(219),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_220_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_221_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(220),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_221_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_222_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(221),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_222_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_223_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(222),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_223_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_224_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(223),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_224_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_225_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(224),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_225_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_226_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(225),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_226_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_227_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(226),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_227_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_228_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(227),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_228_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_229_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(228),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_229_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_230_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(229),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_230_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_231_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(230),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_231_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_232_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(231),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_232_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_233_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(232),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_233_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_234_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(233),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_234_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_235_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(234),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_235_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_236_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(235),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_236_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_237_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(236),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_237_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_238_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(237),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_238_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_239_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(238),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_239_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_240_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(239),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_240_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_241_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(240),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_241_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_242_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(241),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_242_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_243_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(242),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_243_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_244_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(243),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_244_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_245_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(244),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_245_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_246_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(245),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_246_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_247_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(246),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_247_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_248_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(247),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_248_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_249_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(248),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_249_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_250_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(249),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_250_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_251_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(250),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_251_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_252_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(251),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_252_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_253_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(252),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_253_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_254_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(253),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_254_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_255_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(254),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_255_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_256_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(255),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_256_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_257_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(256),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_257_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_258_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(257),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_258_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_259_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(258),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_259_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_260_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(259),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_260_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_261_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(260),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_261_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_262_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(261),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_262_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_263_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(262),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_263_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_264_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(263),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_264_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_265_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(264),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_265_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_266_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(265),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_266_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_267_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(266),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_267_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_268_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(267),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_268_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_269_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(268),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_269_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_270_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(269),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_270_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_271_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(270),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_271_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_272_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(271),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_272_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_273_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(272),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_273_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_274_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(273),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_274_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_275_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(274),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_275_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_276_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(275),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_276_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_277_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(276),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_277_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_278_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(277),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_278_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_279_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(278),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_279_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_280_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(279),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_280_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_281_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(280),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_281_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_282_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(281),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_282_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_283_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(282),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_283_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_284_1 : X_LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      ADR0 => TRIV_CORE_GEN_STATE(283),
      ADR1 => CORE_CNTRL(0),
      ADR2 => CORE_CNTRL(1),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_284_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_285_1 : X_LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      ADR0 => CORE_CNTRL(1),
      ADR1 => CORE_CNTRL(0),
      ADR2 => TRIV_CORE_GEN_STATE(284),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_285_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_286_1 : X_LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      ADR0 => CORE_CNTRL(1),
      ADR1 => CORE_CNTRL(0),
      ADR2 => TRIV_CORE_GEN_STATE(285),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_286_Q
    );
  TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_287_1 : X_LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      ADR0 => CORE_CNTRL(1),
      ADR1 => CORE_CNTRL(0),
      ADR2 => TRIV_CORE_GEN_STATE(286),
      O => TRIV_CORE_GEN_STATE_287_PWR_6_o_mux_4_OUT_287_Q
    );
  CPHRTXT_RDY_rstpot : X_LUT4
    generic map(
      INIT => X"EA2A"
    )
    port map (
      ADR0 => CPHRTXT_RDY_OBUF_186,
      ADR1 => pr_state_FSM_FFd3_171,
      ADR2 => pr_state_FSM_FFd1_168,
      ADR3 => PLNTXT_EN_IBUF_166,
      O => CPHRTXT_RDY_rstpot_975
    );
  CIPHERTEXT_OUT_rstpot : X_LUT6
    generic map(
      INIT => X"74F0F0F0B8F0F0F0"
    )
    port map (
      ADR0 => PLAINTEXT_IN_IBUF_165,
      ADR1 => PLNTXT_EN_IBUF_166,
      ADR2 => CIPHERTEXT_OUT_OBUF_185,
      ADR3 => pr_state_FSM_FFd3_171,
      ADR4 => pr_state_FSM_FFd1_168,
      ADR5 => CORE_OUT,
      O => CIPHERTEXT_OUT_rstpot_976
    );
  CORE_CNTRL_1_1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => Q_n0064_inv,
      I => CORE_CNTRL_1_PWR_3_o_mux_15_OUT_1_Q,
      SRST => GND_3_o_GND_3_o_OR_17_o,
      O => CORE_CNTRL_1_1_979,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  CORE_CNTRL_0_1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => Q_n0064_inv,
      I => CORE_CNTRL_1_PWR_3_o_mux_15_OUT_0_Q,
      SRST => GND_3_o_GND_3_o_OR_17_o,
      O => CORE_CNTRL_0_1_980,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  CORE_CNTRL_1_2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      CE => Q_n0064_inv,
      I => CORE_CNTRL_1_PWR_3_o_mux_15_OUT_1_Q,
      SRST => GND_3_o_GND_3_o_OR_17_o,
      O => CORE_CNTRL_1_2_981,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  CPHRTXT_RDY_rstpot1 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => CPHRTXT_RDY_rstpot_975,
      ADR1 => GND_3_o_GND_3_o_OR_17_o,
      O => CPHRTXT_RDY_rstpot1_982
    );
  CPHRTXT_RDY_813 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => SYS_CLK_BUFGP,
      I => CPHRTXT_RDY_rstpot1_982,
      O => CPHRTXT_RDY_OBUF_186,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  Mcount_INIT_COUNTER_lut_0_INV_0 : X_INV
    port map (
      I => INIT_COUNTER(0),
      O => Mcount_INIT_COUNTER_lut(0)
    );
  CORE_CNTRL_1_PWR_3_o_mux_15_OUT_1_inv1_INV_0 : X_INV
    port map (
      I => pr_state_FSM_FFd1_168,
      O => CORE_CNTRL_1_PWR_3_o_mux_15_OUT_1_Q
    );
  SYS_CLK_BUFGP_BUFG : X_CKBUF
    port map (
      I => SYS_CLK_BUFGP_IBUFG_2,
      O => SYS_CLK_BUFGP
    );
  SYS_CLK_BUFGP_IBUFG : X_CKBUF
    port map (
      I => SYS_CLK,
      O => SYS_CLK_BUFGP_IBUFG_2
    );
  CIPHERTEXT_OUT_OBUF : X_OBUF
    port map (
      I => CIPHERTEXT_OUT_OBUF_185,
      O => CIPHERTEXT_OUT
    );
  CPHRTXT_RDY_OBUF : X_OBUF
    port map (
      I => CPHRTXT_RDY_OBUF_186,
      O => CPHRTXT_RDY
    );
  NlwBlock_Trivium_Generator_vvect_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_Trivium_Generator_vvect_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end STRUCTURE;

