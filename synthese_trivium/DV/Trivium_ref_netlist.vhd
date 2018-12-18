
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_Trivium_Generator_vvect is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_Trivium_Generator_vvect;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Trivium_Generator_vvect.all;

entity Trivium_Generator_vvect_DW01_inc_0 is

   port( A : in std_logic_vector (10 downto 0);  SUM : out std_logic_vector (10
         downto 0));

end Trivium_Generator_vvect_DW01_inc_0;

architecture SYN_rpl of Trivium_Generator_vvect_DW01_inc_0 is

   component XOR20
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component INV3
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component ADD22
      port( A, B : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_10_port, carry_9_port, carry_8_port, carry_7_port, carry_6_port
      , carry_5_port, carry_4_port, carry_3_port, carry_2_port : std_logic;

begin
   
   U1_1_9 : ADD22 port map( A => A(9), B => carry_9_port, CO => carry_10_port, 
                           S => SUM(9));
   U1_1_8 : ADD22 port map( A => A(8), B => carry_8_port, CO => carry_9_port, S
                           => SUM(8));
   U1_1_7 : ADD22 port map( A => A(7), B => carry_7_port, CO => carry_8_port, S
                           => SUM(7));
   U1_1_6 : ADD22 port map( A => A(6), B => carry_6_port, CO => carry_7_port, S
                           => SUM(6));
   U1_1_5 : ADD22 port map( A => A(5), B => carry_5_port, CO => carry_6_port, S
                           => SUM(5));
   U1_1_4 : ADD22 port map( A => A(4), B => carry_4_port, CO => carry_5_port, S
                           => SUM(4));
   U1_1_3 : ADD22 port map( A => A(3), B => carry_3_port, CO => carry_4_port, S
                           => SUM(3));
   U1_1_2 : ADD22 port map( A => A(2), B => carry_2_port, CO => carry_3_port, S
                           => SUM(2));
   U1_1_1 : ADD22 port map( A => A(1), B => A(0), CO => carry_2_port, S => 
                           SUM(1));
   U1 : INV3 port map( A => A(0), Q => SUM(0));
   U2 : XOR20 port map( A => carry_10_port, B => A(10), Q => SUM(10));

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Trivium_Generator_vvect.all;

entity TRIVIUM_CORE is

   port( SYS_CLK : in std_logic;  CNTRL : in std_logic_vector (1 downto 0);  
         KEY, IV : in std_logic_vector (79 downto 0);  KEY_OUT : out std_logic
         );

end TRIVIUM_CORE;

architecture SYN_Behavioral of TRIVIUM_CORE is

   component NOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component AOI221
      port( A, B, C, D : in std_logic;  Q : out std_logic);
   end component;
   
   component INV3
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component AOI211
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component XNR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component BUF2
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component CLKBU2
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR20
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component INV2
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component XOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component DF3
      port( D, C : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI212
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component OAI222
      port( A, B, C, D : in std_logic;  Q : out std_logic);
   end component;
   
   signal STATE_287_port, STATE_286_port, STATE_285_port, STATE_263_port, 
      STATE_242_port, STATE_179_port, STATE_178_port, STATE_177_port, 
      STATE_176_port, STATE_175_port, STATE_171_port, STATE_170_port, 
      STATE_169_port, STATE_168_port, STATE_167_port, STATE_166_port, 
      STATE_165_port, STATE_164_port, STATE_163_port, STATE_162_port, 
      STATE_161_port, STATE_160_port, STATE_159_port, STATE_158_port, 
      STATE_157_port, STATE_156_port, STATE_155_port, STATE_154_port, 
      STATE_153_port, STATE_152_port, STATE_151_port, STATE_150_port, 
      STATE_149_port, STATE_148_port, STATE_147_port, STATE_146_port, 
      STATE_145_port, STATE_144_port, STATE_143_port, STATE_142_port, 
      STATE_141_port, STATE_140_port, STATE_139_port, STATE_138_port, 
      STATE_137_port, STATE_136_port, STATE_135_port, STATE_134_port, 
      STATE_133_port, STATE_132_port, STATE_131_port, STATE_130_port, 
      STATE_129_port, STATE_128_port, STATE_127_port, STATE_126_port, 
      STATE_125_port, STATE_124_port, STATE_123_port, STATE_122_port, 
      STATE_121_port, STATE_120_port, STATE_119_port, STATE_118_port, 
      STATE_117_port, STATE_116_port, STATE_115_port, STATE_114_port, 
      STATE_113_port, STATE_112_port, STATE_111_port, STATE_110_port, 
      STATE_109_port, STATE_108_port, STATE_107_port, STATE_106_port, 
      STATE_105_port, STATE_104_port, STATE_103_port, STATE_102_port, 
      STATE_101_port, STATE_100_port, STATE_99_port, STATE_98_port, 
      STATE_97_port, STATE_96_port, STATE_95_port, STATE_94_port, STATE_93_port
      , STATE_92_port, STATE_91_port, STATE_78_port, STATE_77_port, 
      STATE_76_port, STATE_75_port, STATE_74_port, STATE_73_port, STATE_72_port
      , STATE_71_port, STATE_70_port, STATE_69_port, STATE_68_port, 
      STATE_67_port, STATE_66_port, STATE_65_port, STATE_64_port, STATE_63_port
      , STATE_62_port, STATE_61_port, STATE_60_port, STATE_59_port, 
      STATE_58_port, STATE_57_port, STATE_56_port, STATE_55_port, STATE_54_port
      , STATE_53_port, STATE_52_port, STATE_51_port, STATE_50_port, 
      STATE_49_port, STATE_48_port, STATE_47_port, STATE_46_port, STATE_45_port
      , STATE_44_port, STATE_43_port, STATE_42_port, STATE_41_port, 
      STATE_40_port, STATE_39_port, STATE_38_port, STATE_37_port, STATE_36_port
      , STATE_35_port, STATE_34_port, STATE_33_port, STATE_32_port, 
      STATE_31_port, STATE_30_port, STATE_29_port, STATE_28_port, STATE_27_port
      , STATE_26_port, STATE_25_port, STATE_24_port, STATE_23_port, 
      STATE_22_port, STATE_21_port, STATE_20_port, STATE_19_port, STATE_18_port
      , STATE_17_port, STATE_16_port, STATE_15_port, STATE_14_port, 
      STATE_13_port, STATE_12_port, STATE_11_port, STATE_10_port, STATE_9_port,
      STATE_8_port, STATE_7_port, STATE_6_port, STATE_5_port, STATE_4_port, 
      STATE_3_port, STATE_2_port, STATE_1_port, STATE_0_port, t3, t1, t2, N301,
      N303, N305, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, 
      n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n26, n27, n28, n29, n30
      , n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, 
      n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59
      , n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, 
      n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88
      , n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102
      , n103, n104, n105, n106, n107, n108, n109, n113, n114, n115, n116, n117,
      n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, 
      n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, 
      n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, 
      n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, 
      n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, 
      n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, 
      n190, n191, n192, n193, n194, n195, n197, n198, n199, n200, n201, n202, 
      n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, 
      n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, 
      n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, 
      n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, 
      n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, 
      n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, 
      n275, n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, 
      n287, n288, n292, n293, n294, n295, n296, n297, n298, n299, n300, 
      n301_port, n302, n303_port, n304, n305_port, n306, n307, n308, n309, n310
      , n311, n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322,
      n323, n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, 
      n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, 
      n347, n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, 
      n359, n360, n361, n362, n363, n364, n365, n366, n367, n368, n369, n370, 
      n371, n372, n373, n374, n375, n376, n377, n378, n379, n380, n381, n382, 
      n383, n384, n385, n386, n387, n388, n389, n390, n391, n392, n393, n394, 
      n395, n396, n397, n398, n399, n400, n401, n402, n403, n404, n405, n406, 
      n407, n408, n409, n410, n411, n412, n413, n414, n415, n416, n417, n418, 
      n419, n420, n421, n422, n423, n424, n425, n426, n427, n428, n429, n430, 
      n431, n432, n433, n434, n435, n436, n437, n438, n439, n440, n441, n442, 
      n443, n444, n445, n446, n447, n448, n449, n450, n451, n452, n453, n454, 
      n455, n456, n457, n458, n459, n460, n461, n462, n463, n464, n465, n466, 
      n467, n468, n469, n470, n471, n472, n473, n474, n475, n476, n477, n478, 
      n479, n480, n481, n482, n483, n484, n485, n486, n487, n488, n489, n490, 
      n491, n492, n493, n494, n495, n496, n497, n498, n499, n500, n501, n502, 
      n503, n504, n505, n506, n507, n508, n509, n510, n511, n512, n513, n514, 
      n515, n516, n517, n518, n519, n520, n521, n522, n523, n524, n525, n526, 
      n527, n528, n529, n530, n531, n532, n533, n534, n535, n536, n537, n538, 
      n539, n540, n541, n542, n543, n544, n545, n546, n547, n548, n549, n550, 
      n551, n552, n553, n554, n555, n556, n557, n558, n559, n560, n561, n562, 
      n563, n564, n565, n566, n567, n568, n569, n570, n571, n572, n573, n574, 
      n575, n576, n577, n578, n579, n580, n581, n582, n583, n584, n585, n586, 
      n587, n588, n589, n590, n591, n592, n593, n594, n595, n596, n597, n598, 
      n599, n600, n601, n602, n603, n604, n605, n606, n607, n608, n609, n610, 
      n611, n612, n613, n614, n615, n616, n617, n618, n619, n620, n621, n622, 
      n623, n624, n625, n626, n627, n628, n629, n630, n631, n632, n633, n634, 
      n635, n636, n637, n638, n639, n640, n641, n642, n643, n644, n645, n646, 
      n647, n648, n649, n650, n651, n652, n653, n654, n655, n656, n657, n658, 
      n659, n660, n661, n662, n663, n664, n665, n666, n667, n668, n669, n670, 
      n671, n672, n673, n674, n675, n676, n677, n678, n679, n680, n681, n682, 
      n683, n684, n685, n686, n687, n688, n689, n690, n691, n692, n693, n694, 
      n695, n696, n697, n698, n699, n700, n701, n702, n703, n704, n705, n706, 
      n707, n708, n709, n710, n711, n712, n713, n714, n715, n716, n717, n718, 
      n719, n720, n721, n722, n723, n724, n725, n726, n727, n728, n729, n730, 
      n731, n732, n733, n734, n735, n736, n737, n738, n739, n740, n741, n742, 
      n743, n744, n745, n746, n747, n748, n750, n752, n753, n754, n755, n25, 
      n110, n111, n112, n196, n289, n290, n291, n749, n751, n756, n757, n758, 
      n759, n760, n761, n762, n763, n764, n765, n766, n767, n768, n769, n770, 
      n771, n772, n773, n774, n775, n776, n777, n778, n779, n780, n781, n782, 
      n783, n784, n785, n786, n787, n788, n_1000, n_1001, n_1002, n_1003, 
      n_1004, n_1005, n_1006, n_1007, n_1008, n_1009, n_1010, n_1011, n_1012, 
      n_1013, n_1014, n_1015, n_1016, n_1017, n_1018, n_1019, n_1020, n_1021, 
      n_1022, n_1023, n_1024, n_1025, n_1026, n_1027, n_1028, n_1029, n_1030, 
      n_1031, n_1032, n_1033, n_1034, n_1035, n_1036, n_1037, n_1038, n_1039, 
      n_1040, n_1041, n_1042, n_1043, n_1044, n_1045, n_1046, n_1047, n_1048, 
      n_1049, n_1050, n_1051, n_1052, n_1053, n_1054, n_1055, n_1056, n_1057, 
      n_1058, n_1059, n_1060, n_1061, n_1062, n_1063, n_1064, n_1065, n_1066, 
      n_1067, n_1068, n_1069, n_1070, n_1071, n_1072, n_1073, n_1074, n_1075, 
      n_1076, n_1077, n_1078, n_1079, n_1080, n_1081, n_1082, n_1083, n_1084, 
      n_1085, n_1086, n_1087, n_1088, n_1089, n_1090, n_1091, n_1092, n_1093, 
      n_1094, n_1095, n_1096, n_1097, n_1098, n_1099, n_1100, n_1101, n_1102, 
      n_1103, n_1104, n_1105, n_1106, n_1107, n_1108, n_1109, n_1110, n_1111, 
      n_1112, n_1113, n_1114, n_1115, n_1116, n_1117, n_1118, n_1119, n_1120, 
      n_1121, n_1122 : std_logic;

begin
   
   U3 : OAI212 port map( A => n289, B => n1, C => n293, Q => n463);
   U5 : OAI212 port map( A => n289, B => n2, C => n295, Q => n464);
   U7 : OAI212 port map( A => n289, B => n3, C => n296, Q => n465);
   U9 : OAI222 port map( A => n196, B => n3, C => n773, D => n4, Q => n466);
   U10 : OAI222 port map( A => n757, B => n4, C => n771, D => n5, Q => n467);
   U11 : OAI222 port map( A => n760, B => n5, C => n772, D => n6, Q => n468);
   U12 : OAI222 port map( A => n764, B => n6, C => n774, D => n7, Q => n469);
   U13 : OAI222 port map( A => n763, B => n7, C => n772, D => n8, Q => n470);
   U14 : OAI222 port map( A => n760, B => n8, C => n771, D => n9, Q => n471);
   U15 : OAI222 port map( A => n758, B => n9, C => n771, D => n10, Q => n472);
   U16 : OAI222 port map( A => n760, B => n10, C => n769, D => n11, Q => n473);
   U17 : OAI222 port map( A => n749, B => n11, C => n774, D => n12, Q => n474);
   U18 : OAI222 port map( A => n758, B => n12, C => n770, D => n13, Q => n475);
   U19 : OAI222 port map( A => n196, B => n13, C => n775, D => n14, Q => n476);
   U20 : OAI222 port map( A => n758, B => n14, C => n775, D => n15, Q => n477);
   U21 : OAI222 port map( A => n757, B => n15, C => n775, D => n16, Q => n478);
   U22 : OAI222 port map( A => n757, B => n16, C => n775, D => n17, Q => n479);
   U23 : OAI222 port map( A => n757, B => n17, C => n775, D => n18, Q => n480);
   U24 : OAI222 port map( A => n757, B => n18, C => n775, D => n19, Q => n481);
   U25 : OAI222 port map( A => n757, B => n19, C => n775, D => n20, Q => n482);
   U26 : OAI222 port map( A => n757, B => n20, C => n774, D => n21, Q => n483);
   U27 : OAI222 port map( A => n757, B => n21, C => n774, D => n22, Q => n484);
   U28 : OAI222 port map( A => n757, B => n22, C => n774, D => n23, Q => n485);
   U29 : OAI222 port map( A => n757, B => n23, C => n774, D => n24, Q => n486);
   U30 : OAI222 port map( A => n757, B => n24, C => n774, D => n26, Q => n487);
   U31 : OAI222 port map( A => n757, B => n26, C => n774, D => n27, Q => n488);
   U32 : OAI222 port map( A => n757, B => n27, C => n774, D => n28, Q => n489);
   U33 : OAI222 port map( A => n757, B => n28, C => n775, D => n29, Q => n490);
   U34 : OAI222 port map( A => n749, B => n29, C => n770, D => n30, Q => n491);
   U35 : OAI222 port map( A => n757, B => n30, C => n770, D => n31, Q => n492);
   U36 : OAI222 port map( A => n196, B => n31, C => n775, D => n32, Q => n493);
   U37 : OAI222 port map( A => n758, B => n32, C => n773, D => n33, Q => n494);
   U38 : OAI222 port map( A => n196, B => n33, C => n772, D => n34, Q => n495);
   U39 : OAI222 port map( A => n196, B => n34, C => n769, D => n35, Q => n496);
   U40 : OAI222 port map( A => n749, B => n35, C => n772, D => n36, Q => n497);
   U41 : OAI222 port map( A => n756, B => n36, C => n771, D => n37, Q => n498);
   U42 : OAI222 port map( A => n763, B => n37, C => n770, D => n38, Q => n499);
   U43 : OAI222 port map( A => n756, B => n38, C => n775, D => n39, Q => n500);
   U44 : OAI222 port map( A => n764, B => n39, C => n770, D => n40, Q => n501);
   U45 : OAI222 port map( A => n749, B => n40, C => n773, D => n41, Q => n502);
   U46 : OAI222 port map( A => n762, B => n41, C => n775, D => n42, Q => n503);
   U47 : OAI222 port map( A => n757, B => n42, C => n773, D => n43, Q => n504);
   U48 : OAI222 port map( A => n196, B => n43, C => n773, D => n44, Q => n505);
   U49 : OAI222 port map( A => n758, B => n44, C => n773, D => n45, Q => n506);
   U50 : OAI222 port map( A => n751, B => n45, C => n773, D => n46, Q => n507);
   U51 : OAI222 port map( A => n757, B => n46, C => n773, D => n47, Q => n508);
   U52 : OAI222 port map( A => n751, B => n47, C => n773, D => n48, Q => n509);
   U53 : OAI222 port map( A => n749, B => n48, C => n773, D => n49, Q => n510);
   U54 : OAI222 port map( A => n756, B => n49, C => n771, D => n50, Q => n511);
   U55 : OAI222 port map( A => n762, B => n50, C => n769, D => n51, Q => n512);
   U56 : OAI222 port map( A => n761, B => n51, C => n774, D => n52, Q => n513);
   U57 : OAI222 port map( A => n760, B => n52, C => n776, D => n53, Q => n514);
   U58 : OAI222 port map( A => n749, B => n53, C => n772, D => n54, Q => n515);
   U59 : OAI222 port map( A => n749, B => n54, C => n771, D => n55, Q => n516);
   U60 : OAI222 port map( A => n751, B => n55, C => n769, D => n56, Q => n517);
   U61 : OAI222 port map( A => n759, B => n56, C => n769, D => n57, Q => n518);
   U62 : OAI222 port map( A => n757, B => n57, C => n771, D => n58, Q => n519);
   U63 : OAI222 port map( A => n757, B => n58, C => n773, D => n59, Q => n520);
   U64 : OAI222 port map( A => n196, B => n59, C => n770, D => n60, Q => n521);
   U65 : OAI222 port map( A => n196, B => n60, C => n774, D => n61, Q => n522);
   U66 : OAI222 port map( A => n196, B => n61, C => n769, D => n62, Q => n523);
   U67 : OAI222 port map( A => n196, B => n62, C => n774, D => n63, Q => n524);
   U68 : OAI222 port map( A => n196, B => n63, C => n771, D => n64, Q => n525);
   U69 : OAI222 port map( A => n749, B => n64, C => n771, D => n65, Q => n526);
   U70 : OAI222 port map( A => n751, B => n65, C => n769, D => n66, Q => n527);
   U71 : OAI222 port map( A => n756, B => n66, C => n774, D => n67, Q => n528);
   U72 : OAI222 port map( A => n759, B => n67, C => n772, D => n68, Q => n529);
   U73 : OAI222 port map( A => n196, B => n68, C => n770, D => n69, Q => n530);
   U74 : OAI222 port map( A => n758, B => n69, C => n775, D => n70, Q => n531);
   U75 : OAI222 port map( A => n764, B => n70, C => n772, D => n71, Q => n532);
   U76 : OAI222 port map( A => n749, B => n71, C => n772, D => n72, Q => n533);
   U77 : OAI222 port map( A => n751, B => n72, C => n772, D => n73, Q => n534);
   U78 : OAI222 port map( A => n756, B => n73, C => n772, D => n74, Q => n535);
   U79 : OAI222 port map( A => n751, B => n74, C => n772, D => n75, Q => n536);
   U80 : OAI222 port map( A => n196, B => n75, C => n772, D => n76, Q => n537);
   U81 : OAI222 port map( A => n196, B => n76, C => n772, D => n77, Q => n538);
   U82 : OAI222 port map( A => n758, B => n77, C => n771, D => n78, Q => n539);
   U83 : OAI222 port map( A => n749, B => n78, C => n771, D => n79, Q => n540);
   U84 : OAI222 port map( A => n756, B => n79, C => n771, D => n80, Q => n541);
   U85 : OAI222 port map( A => n751, B => n80, C => n771, D => n81, Q => n542);
   U86 : OAI222 port map( A => n196, B => n81, C => n771, D => n82, Q => n543);
   U87 : OAI222 port map( A => n196, B => n82, C => n771, D => n83, Q => n544);
   U88 : OAI222 port map( A => n758, B => n83, C => n771, D => n84, Q => n545);
   U89 : OAI222 port map( A => n749, B => n84, C => n775, D => n85, Q => n546);
   U90 : OAI222 port map( A => n756, B => n85, C => n773, D => n86, Q => n547);
   U91 : OAI222 port map( A => n751, B => n86, C => n776, D => n87, Q => n548);
   U92 : OAI222 port map( A => n196, B => n87, C => n769, D => n88, Q => n549);
   U93 : OAI222 port map( A => n763, B => n88, C => n774, D => n89, Q => n550);
   U94 : OAI222 port map( A => n763, B => n89, C => n772, D => n90, Q => n551);
   U95 : OAI222 port map( A => n763, B => n90, C => n771, D => n91, Q => n552);
   U96 : OAI222 port map( A => n763, B => n91, C => n772, D => n92, Q => n553);
   U97 : OAI222 port map( A => n763, B => n92, C => n776, D => n93, Q => n554);
   U98 : OAI222 port map( A => n763, B => n93, C => n769, D => n94, Q => n555);
   U99 : OAI222 port map( A => n763, B => n94, C => n774, D => n95, Q => n556);
   U100 : OAI222 port map( A => n763, B => n95, C => n772, D => n96, Q => n557)
                           ;
   U101 : OAI222 port map( A => n763, B => n96, C => n771, D => n97, Q => n558)
                           ;
   U102 : OAI222 port map( A => n763, B => n97, C => n776, D => n98, Q => n559)
                           ;
   U103 : OAI222 port map( A => n763, B => n98, C => n770, D => n99, Q => n560)
                           ;
   U104 : OAI222 port map( A => n763, B => n99, C => n770, D => n100, Q => n561
                           );
   U105 : OAI222 port map( A => n763, B => n100, C => n770, D => n101, Q => 
                           n562);
   U106 : OAI222 port map( A => n763, B => n101, C => n770, D => n102, Q => 
                           n563);
   U107 : OAI222 port map( A => n763, B => n102, C => n770, D => n103, Q => 
                           n564);
   U108 : OAI222 port map( A => n764, B => n103, C => n770, D => n104, Q => 
                           n565);
   U109 : OAI222 port map( A => n764, B => n104, C => n770, D => n105, Q => 
                           n566);
   U110 : OAI222 port map( A => n764, B => n105, C => n769, D => n106, Q => 
                           n567);
   U111 : OAI222 port map( A => n764, B => n106, C => n769, D => n107, Q => 
                           n568);
   U112 : OAI222 port map( A => n764, B => n107, C => n769, D => n108, Q => 
                           n569);
   U113 : OAI222 port map( A => n764, B => n108, C => n769, D => n109, Q => 
                           n570);
   U118 : OAI222 port map( A => n764, B => n113, C => n769, D => n114, Q => 
                           n571);
   U119 : OAI222 port map( A => n764, B => n114, C => n769, D => n115, Q => 
                           n572);
   U120 : OAI222 port map( A => n764, B => n115, C => n769, D => n116, Q => 
                           n573);
   U121 : OAI212 port map( A => n751, B => n116, C => n302, Q => n574);
   U123 : OAI212 port map( A => n758, B => n117, C => n303_port, Q => n575);
   U125 : OAI212 port map( A => n758, B => n118, C => n304, Q => n576);
   U127 : OAI212 port map( A => n763, B => n119, C => n305_port, Q => n577);
   U129 : OAI212 port map( A => n760, B => n120, C => n306, Q => n578);
   U131 : OAI212 port map( A => n763, B => n121, C => n307, Q => n579);
   U133 : OAI212 port map( A => n759, B => n122, C => n308, Q => n580);
   U135 : OAI212 port map( A => n757, B => n123, C => n309, Q => n581);
   U137 : OAI212 port map( A => n758, B => n124, C => n310, Q => n582);
   U139 : OAI212 port map( A => n764, B => n125, C => n311, Q => n583);
   U141 : OAI212 port map( A => n764, B => n126, C => n312, Q => n584);
   U143 : OAI212 port map( A => n764, B => n127, C => n313, Q => n585);
   U145 : OAI212 port map( A => n759, B => n128, C => n314, Q => n586);
   U147 : OAI212 port map( A => n751, B => n129, C => n315, Q => n587);
   U149 : OAI212 port map( A => n749, B => n130, C => n316, Q => n588);
   U151 : OAI212 port map( A => n756, B => n131, C => n317, Q => n589);
   U153 : OAI212 port map( A => n196, B => n132, C => n318, Q => n590);
   U155 : OAI212 port map( A => n756, B => n133, C => n319, Q => n591);
   U157 : OAI212 port map( A => n760, B => n134, C => n320, Q => n592);
   U159 : OAI212 port map( A => n749, B => n135, C => n321, Q => n593);
   U161 : OAI212 port map( A => n758, B => n136, C => n322, Q => n594);
   U163 : OAI212 port map( A => n764, B => n137, C => n323, Q => n595);
   U165 : OAI212 port map( A => n757, B => n138, C => n324, Q => n596);
   U167 : OAI212 port map( A => n751, B => n139, C => n325, Q => n597);
   U169 : OAI212 port map( A => n762, B => n140, C => n326, Q => n598);
   U171 : OAI212 port map( A => n761, B => n141, C => n327, Q => n599);
   U173 : OAI212 port map( A => n196, B => n142, C => n328, Q => n600);
   U175 : OAI212 port map( A => n751, B => n143, C => n329, Q => n601);
   U177 : OAI212 port map( A => n196, B => n144, C => n330, Q => n602);
   U179 : OAI212 port map( A => n749, B => n145, C => n331, Q => n603);
   U181 : OAI212 port map( A => n758, B => n146, C => n332, Q => n604);
   U183 : OAI212 port map( A => n763, B => n147, C => n333, Q => n605);
   U185 : OAI212 port map( A => n756, B => n148, C => n334, Q => n606);
   U187 : OAI212 port map( A => n757, B => n149, C => n335, Q => n607);
   U189 : OAI212 port map( A => n756, B => n150, C => n336, Q => n608);
   U191 : OAI212 port map( A => n196, B => n151, C => n337, Q => n609);
   U193 : OAI212 port map( A => n759, B => n152, C => n338, Q => n610);
   U195 : OAI212 port map( A => n196, B => n153, C => n339, Q => n611);
   U197 : OAI212 port map( A => n751, B => n154, C => n340, Q => n612);
   U199 : OAI212 port map( A => n759, B => n155, C => n341, Q => n613);
   U201 : OAI212 port map( A => n751, B => n156, C => n342, Q => n614);
   U203 : OAI212 port map( A => n749, B => n157, C => n343, Q => n615);
   U205 : OAI212 port map( A => n760, B => n158, C => n344, Q => n616);
   U207 : OAI212 port map( A => n762, B => n159, C => n345, Q => n617);
   U209 : OAI212 port map( A => n751, B => n160, C => n346, Q => n618);
   U211 : OAI212 port map( A => n758, B => n161, C => n347, Q => n619);
   U213 : OAI212 port map( A => n763, B => n162, C => n348, Q => n620);
   U215 : OAI212 port map( A => n756, B => n163, C => n349, Q => n621);
   U217 : OAI212 port map( A => n763, B => n164, C => n350, Q => n622);
   U219 : OAI212 port map( A => n751, B => n165, C => n351, Q => n623);
   U221 : OAI212 port map( A => n196, B => n166, C => n352, Q => n624);
   U223 : OAI212 port map( A => n759, B => n167, C => n353, Q => n625);
   U225 : OAI212 port map( A => n764, B => n168, C => n354, Q => n626);
   U227 : OAI212 port map( A => n196, B => n169, C => n355, Q => n627);
   U229 : OAI212 port map( A => n751, B => n170, C => n356, Q => n628);
   U231 : OAI212 port map( A => n763, B => n171, C => n357, Q => n629);
   U233 : OAI212 port map( A => n749, B => n172, C => n358, Q => n630);
   U235 : OAI212 port map( A => n756, B => n173, C => n359, Q => n631);
   U237 : OAI212 port map( A => n764, B => n174, C => n360, Q => n632);
   U239 : OAI212 port map( A => n763, B => n175, C => n361, Q => n633);
   U241 : OAI212 port map( A => n196, B => n176, C => n362, Q => n634);
   U243 : OAI212 port map( A => n751, B => n177, C => n363, Q => n635);
   U245 : OAI212 port map( A => n762, B => n178, C => n364, Q => n636);
   U247 : OAI212 port map( A => n761, B => n179, C => n365, Q => n637);
   U249 : OAI212 port map( A => n749, B => n180, C => n366, Q => n638);
   U251 : OAI212 port map( A => n759, B => n181, C => n367, Q => n639);
   U253 : OAI212 port map( A => n759, B => n182, C => n368, Q => n640);
   U255 : OAI212 port map( A => n759, B => n183, C => n369, Q => n641);
   U257 : OAI212 port map( A => n759, B => n184, C => n370, Q => n642);
   U259 : OAI212 port map( A => n759, B => n185, C => n371, Q => n643);
   U261 : OAI212 port map( A => n759, B => n186, C => n372, Q => n644);
   U263 : OAI212 port map( A => n759, B => n187, C => n373, Q => n645);
   U265 : OAI212 port map( A => n759, B => n188, C => n374, Q => n646);
   U267 : OAI212 port map( A => n759, B => n189, C => n375, Q => n647);
   U269 : OAI212 port map( A => n759, B => n190, C => n376, Q => n648);
   U271 : OAI212 port map( A => n759, B => n191, C => n377, Q => n649);
   U273 : OAI212 port map( A => n759, B => n192, C => n378, Q => n650);
   U275 : OAI212 port map( A => n759, B => n193, C => n379, Q => n651);
   U277 : OAI212 port map( A => n760, B => n194, C => n380, Q => n652);
   U279 : OAI212 port map( A => n760, B => n195, C => n381, Q => n653);
   U282 : OAI222 port map( A => n764, B => n197, C => n770, D => n198, Q => 
                           n654);
   U283 : OAI222 port map( A => n764, B => n198, C => n775, D => n199, Q => 
                           n655);
   U284 : OAI222 port map( A => n764, B => n199, C => n773, D => n200, Q => 
                           n656);
   U285 : OAI222 port map( A => n764, B => n200, C => n773, D => n201, Q => 
                           n657);
   U286 : OAI222 port map( A => n764, B => n201, C => n769, D => n202, Q => 
                           n658);
   U287 : OAI222 port map( A => n763, B => n202, C => n774, D => n203, Q => 
                           n659);
   U288 : OAI222 port map( A => n196, B => n203, C => n772, D => n204, Q => 
                           n660);
   U289 : OAI222 port map( A => n749, B => n204, C => n773, D => n205, Q => 
                           n661);
   U290 : OAI222 port map( A => n757, B => n205, C => n775, D => n206, Q => 
                           n662);
   U291 : OAI222 port map( A => n759, B => n206, C => n769, D => n207, Q => 
                           n663);
   U292 : OAI222 port map( A => n757, B => n207, C => n774, D => n208, Q => 
                           n664);
   U293 : OAI222 port map( A => n764, B => n208, C => n772, D => n209, Q => 
                           n665);
   U294 : OAI212 port map( A => n757, B => n209, C => n383, Q => n666);
   U296 : OAI212 port map( A => n764, B => n210, C => n384, Q => n667);
   U298 : OAI212 port map( A => n757, B => n211, C => n385, Q => n668);
   U300 : OAI212 port map( A => n760, B => n212, C => n386, Q => n669);
   U302 : OAI212 port map( A => n760, B => n213, C => n387, Q => n670);
   U304 : OAI212 port map( A => n758, B => n214, C => n388, Q => n671);
   U306 : OAI212 port map( A => n756, B => n215, C => n389, Q => n672);
   U308 : OAI212 port map( A => n756, B => n216, C => n390, Q => n673);
   U310 : OAI212 port map( A => n749, B => n217, C => n391, Q => n674);
   U312 : OAI212 port map( A => n751, B => n218, C => n392, Q => n675);
   U314 : OAI212 port map( A => n758, B => n219, C => n393, Q => n676);
   U316 : OAI212 port map( A => n756, B => n220, C => n394, Q => n677);
   U318 : OAI212 port map( A => n749, B => n221, C => n395, Q => n678);
   U320 : OAI212 port map( A => n751, B => n222, C => n396, Q => n679);
   U322 : OAI212 port map( A => n758, B => n223, C => n397, Q => n680);
   U324 : OAI212 port map( A => n756, B => n224, C => n398, Q => n681);
   U326 : OAI212 port map( A => n749, B => n225, C => n399, Q => n682);
   U328 : OAI212 port map( A => n751, B => n226, C => n400, Q => n683);
   U330 : OAI212 port map( A => n751, B => n227, C => n401, Q => n684);
   U332 : OAI212 port map( A => n759, B => n228, C => n402, Q => n685);
   U334 : OAI212 port map( A => n756, B => n229, C => n403, Q => n686);
   U336 : OAI212 port map( A => n758, B => n230, C => n404, Q => n687);
   U338 : OAI212 port map( A => n196, B => n231, C => n405, Q => n688);
   U340 : OAI212 port map( A => n196, B => n232, C => n406, Q => n689);
   U342 : OAI212 port map( A => n196, B => n233, C => n407, Q => n690);
   U344 : OAI212 port map( A => n196, B => n234, C => n408, Q => n691);
   U346 : OAI212 port map( A => n196, B => n235, C => n409, Q => n692);
   U348 : OAI212 port map( A => n196, B => n236, C => n410, Q => n693);
   U350 : OAI212 port map( A => n196, B => n237, C => n411, Q => n694);
   U352 : OAI212 port map( A => n761, B => n238, C => n412, Q => n695);
   U354 : OAI212 port map( A => n762, B => n239, C => n413, Q => n696);
   U356 : OAI212 port map( A => n762, B => n240, C => n414, Q => n697);
   U358 : OAI212 port map( A => n762, B => n241, C => n415, Q => n698);
   U360 : OAI212 port map( A => n762, B => n242, C => n416, Q => n699);
   U362 : OAI212 port map( A => n762, B => n243, C => n417, Q => n700);
   U364 : OAI212 port map( A => n762, B => n244, C => n418, Q => n701);
   U366 : OAI212 port map( A => n762, B => n245, C => n419, Q => n702);
   U368 : OAI212 port map( A => n762, B => n246, C => n420, Q => n703);
   U370 : OAI212 port map( A => n762, B => n247, C => n421, Q => n704);
   U372 : OAI212 port map( A => n762, B => n248, C => n422, Q => n705);
   U374 : OAI212 port map( A => n762, B => n249, C => n423, Q => n706);
   U376 : OAI212 port map( A => n762, B => n250, C => n424, Q => n707);
   U378 : OAI212 port map( A => n761, B => n251, C => n425, Q => n708);
   U380 : OAI212 port map( A => n761, B => n252, C => n426, Q => n709);
   U382 : OAI212 port map( A => n761, B => n253, C => n427, Q => n710);
   U384 : OAI212 port map( A => n761, B => n254, C => n428, Q => n711);
   U386 : OAI212 port map( A => n761, B => n255, C => n429, Q => n712);
   U388 : OAI212 port map( A => n761, B => n256, C => n430, Q => n713);
   U390 : OAI212 port map( A => n761, B => n257, C => n431, Q => n714);
   U392 : OAI212 port map( A => n761, B => n258, C => n432, Q => n715);
   U394 : OAI212 port map( A => n761, B => n259, C => n433, Q => n716);
   U396 : OAI212 port map( A => n761, B => n260, C => n434, Q => n717);
   U398 : OAI212 port map( A => n761, B => n261, C => n435, Q => n718);
   U400 : OAI212 port map( A => n761, B => n262, C => n436, Q => n719);
   U402 : OAI212 port map( A => n761, B => n263, C => n437, Q => n720);
   U404 : OAI212 port map( A => n758, B => n264, C => n438, Q => n721);
   U406 : OAI212 port map( A => n756, B => n265, C => n439, Q => n722);
   U408 : OAI212 port map( A => n761, B => n266, C => n440, Q => n723);
   U410 : OAI212 port map( A => n762, B => n267, C => n441, Q => n724);
   U412 : OAI212 port map( A => n749, B => n268, C => n442, Q => n725);
   U414 : OAI212 port map( A => n758, B => n269, C => n443, Q => n726);
   U416 : OAI212 port map( A => n756, B => n270, C => n444, Q => n727);
   U418 : OAI212 port map( A => n761, B => n271, C => n445, Q => n728);
   U420 : OAI212 port map( A => n762, B => n272, C => n446, Q => n729);
   U422 : OAI212 port map( A => n749, B => n273, C => n447, Q => n730);
   U424 : OAI212 port map( A => n758, B => n274, C => n448, Q => n731);
   U426 : OAI212 port map( A => n756, B => n275, C => n449, Q => n732);
   U428 : OAI212 port map( A => n761, B => n276, C => n450, Q => n733);
   U430 : OAI212 port map( A => n760, B => n277, C => n451, Q => n734);
   U432 : OAI212 port map( A => n760, B => n278, C => n452, Q => n735);
   U434 : OAI212 port map( A => n760, B => n279, C => n453, Q => n736);
   U436 : OAI212 port map( A => n760, B => n280, C => n454, Q => n737);
   U438 : OAI212 port map( A => n760, B => n281, C => n455, Q => n738);
   U440 : OAI212 port map( A => n760, B => n282, C => n456, Q => n739);
   U442 : OAI212 port map( A => n760, B => n283, C => n457, Q => n740);
   U444 : OAI212 port map( A => n760, B => n284, C => n458, Q => n741);
   U446 : OAI212 port map( A => n760, B => n285, C => n459, Q => n742);
   U448 : OAI212 port map( A => n760, B => n286, C => n460, Q => n743);
   U450 : OAI212 port map( A => n760, B => n287, C => n461, Q => n744);
   U452 : OAI212 port map( A => n762, B => n288, C => n462, Q => n745);
   STATE_reg_0_inst : DF3 port map( D => n745, C => SYS_CLK, Q => STATE_0_port,
                           QN => n288);
   STATE_reg_1_inst : DF3 port map( D => n744, C => SYS_CLK, Q => STATE_1_port,
                           QN => n287);
   STATE_reg_2_inst : DF3 port map( D => n743, C => SYS_CLK, Q => STATE_2_port,
                           QN => n286);
   STATE_reg_3_inst : DF3 port map( D => n742, C => SYS_CLK, Q => STATE_3_port,
                           QN => n285);
   STATE_reg_4_inst : DF3 port map( D => n741, C => SYS_CLK, Q => STATE_4_port,
                           QN => n284);
   STATE_reg_5_inst : DF3 port map( D => n740, C => SYS_CLK, Q => STATE_5_port,
                           QN => n283);
   STATE_reg_6_inst : DF3 port map( D => n739, C => SYS_CLK, Q => STATE_6_port,
                           QN => n282);
   STATE_reg_7_inst : DF3 port map( D => n738, C => SYS_CLK, Q => STATE_7_port,
                           QN => n281);
   STATE_reg_8_inst : DF3 port map( D => n737, C => SYS_CLK, Q => STATE_8_port,
                           QN => n280);
   STATE_reg_9_inst : DF3 port map( D => n736, C => SYS_CLK, Q => STATE_9_port,
                           QN => n279);
   STATE_reg_10_inst : DF3 port map( D => n735, C => SYS_CLK, Q => 
                           STATE_10_port, QN => n278);
   STATE_reg_11_inst : DF3 port map( D => n734, C => SYS_CLK, Q => 
                           STATE_11_port, QN => n277);
   STATE_reg_12_inst : DF3 port map( D => n733, C => SYS_CLK, Q => 
                           STATE_12_port, QN => n276);
   STATE_reg_13_inst : DF3 port map( D => n732, C => SYS_CLK, Q => 
                           STATE_13_port, QN => n275);
   STATE_reg_14_inst : DF3 port map( D => n731, C => SYS_CLK, Q => 
                           STATE_14_port, QN => n274);
   STATE_reg_15_inst : DF3 port map( D => n730, C => SYS_CLK, Q => 
                           STATE_15_port, QN => n273);
   STATE_reg_16_inst : DF3 port map( D => n729, C => SYS_CLK, Q => 
                           STATE_16_port, QN => n272);
   STATE_reg_17_inst : DF3 port map( D => n728, C => SYS_CLK, Q => 
                           STATE_17_port, QN => n271);
   STATE_reg_18_inst : DF3 port map( D => n727, C => SYS_CLK, Q => 
                           STATE_18_port, QN => n270);
   STATE_reg_19_inst : DF3 port map( D => n726, C => SYS_CLK, Q => 
                           STATE_19_port, QN => n269);
   STATE_reg_20_inst : DF3 port map( D => n725, C => SYS_CLK, Q => 
                           STATE_20_port, QN => n268);
   STATE_reg_21_inst : DF3 port map( D => n724, C => SYS_CLK, Q => 
                           STATE_21_port, QN => n267);
   STATE_reg_22_inst : DF3 port map( D => n723, C => SYS_CLK, Q => 
                           STATE_22_port, QN => n266);
   STATE_reg_23_inst : DF3 port map( D => n722, C => SYS_CLK, Q => 
                           STATE_23_port, QN => n265);
   STATE_reg_24_inst : DF3 port map( D => n721, C => SYS_CLK, Q => 
                           STATE_24_port, QN => n264);
   STATE_reg_25_inst : DF3 port map( D => n720, C => SYS_CLK, Q => 
                           STATE_25_port, QN => n263);
   STATE_reg_26_inst : DF3 port map( D => n719, C => SYS_CLK, Q => 
                           STATE_26_port, QN => n262);
   STATE_reg_27_inst : DF3 port map( D => n718, C => SYS_CLK, Q => 
                           STATE_27_port, QN => n261);
   STATE_reg_28_inst : DF3 port map( D => n717, C => SYS_CLK, Q => 
                           STATE_28_port, QN => n260);
   STATE_reg_29_inst : DF3 port map( D => n716, C => SYS_CLK, Q => 
                           STATE_29_port, QN => n259);
   STATE_reg_30_inst : DF3 port map( D => n715, C => SYS_CLK, Q => 
                           STATE_30_port, QN => n258);
   STATE_reg_31_inst : DF3 port map( D => n714, C => SYS_CLK, Q => 
                           STATE_31_port, QN => n257);
   STATE_reg_32_inst : DF3 port map( D => n713, C => SYS_CLK, Q => 
                           STATE_32_port, QN => n256);
   STATE_reg_33_inst : DF3 port map( D => n712, C => SYS_CLK, Q => 
                           STATE_33_port, QN => n255);
   STATE_reg_34_inst : DF3 port map( D => n711, C => SYS_CLK, Q => 
                           STATE_34_port, QN => n254);
   STATE_reg_35_inst : DF3 port map( D => n710, C => SYS_CLK, Q => 
                           STATE_35_port, QN => n253);
   STATE_reg_36_inst : DF3 port map( D => n709, C => SYS_CLK, Q => 
                           STATE_36_port, QN => n252);
   STATE_reg_37_inst : DF3 port map( D => n708, C => SYS_CLK, Q => 
                           STATE_37_port, QN => n251);
   STATE_reg_38_inst : DF3 port map( D => n707, C => SYS_CLK, Q => 
                           STATE_38_port, QN => n250);
   STATE_reg_39_inst : DF3 port map( D => n706, C => SYS_CLK, Q => 
                           STATE_39_port, QN => n249);
   STATE_reg_40_inst : DF3 port map( D => n705, C => SYS_CLK, Q => 
                           STATE_40_port, QN => n248);
   STATE_reg_41_inst : DF3 port map( D => n704, C => SYS_CLK, Q => 
                           STATE_41_port, QN => n247);
   STATE_reg_42_inst : DF3 port map( D => n703, C => SYS_CLK, Q => 
                           STATE_42_port, QN => n246);
   STATE_reg_43_inst : DF3 port map( D => n702, C => SYS_CLK, Q => 
                           STATE_43_port, QN => n245);
   STATE_reg_44_inst : DF3 port map( D => n701, C => SYS_CLK, Q => 
                           STATE_44_port, QN => n244);
   STATE_reg_45_inst : DF3 port map( D => n700, C => SYS_CLK, Q => 
                           STATE_45_port, QN => n243);
   STATE_reg_46_inst : DF3 port map( D => n699, C => SYS_CLK, Q => 
                           STATE_46_port, QN => n242);
   STATE_reg_47_inst : DF3 port map( D => n698, C => SYS_CLK, Q => 
                           STATE_47_port, QN => n241);
   STATE_reg_48_inst : DF3 port map( D => n697, C => SYS_CLK, Q => 
                           STATE_48_port, QN => n240);
   STATE_reg_49_inst : DF3 port map( D => n696, C => SYS_CLK, Q => 
                           STATE_49_port, QN => n239);
   STATE_reg_50_inst : DF3 port map( D => n695, C => SYS_CLK, Q => 
                           STATE_50_port, QN => n238);
   STATE_reg_51_inst : DF3 port map( D => n694, C => SYS_CLK, Q => 
                           STATE_51_port, QN => n237);
   STATE_reg_52_inst : DF3 port map( D => n693, C => SYS_CLK, Q => 
                           STATE_52_port, QN => n236);
   STATE_reg_53_inst : DF3 port map( D => n692, C => SYS_CLK, Q => 
                           STATE_53_port, QN => n235);
   STATE_reg_54_inst : DF3 port map( D => n691, C => SYS_CLK, Q => 
                           STATE_54_port, QN => n234);
   STATE_reg_55_inst : DF3 port map( D => n690, C => SYS_CLK, Q => 
                           STATE_55_port, QN => n233);
   STATE_reg_56_inst : DF3 port map( D => n689, C => SYS_CLK, Q => 
                           STATE_56_port, QN => n232);
   STATE_reg_57_inst : DF3 port map( D => n688, C => SYS_CLK, Q => 
                           STATE_57_port, QN => n231);
   STATE_reg_58_inst : DF3 port map( D => n687, C => SYS_CLK, Q => 
                           STATE_58_port, QN => n230);
   STATE_reg_59_inst : DF3 port map( D => n686, C => SYS_CLK, Q => 
                           STATE_59_port, QN => n229);
   STATE_reg_60_inst : DF3 port map( D => n685, C => SYS_CLK, Q => 
                           STATE_60_port, QN => n228);
   STATE_reg_61_inst : DF3 port map( D => n684, C => SYS_CLK, Q => 
                           STATE_61_port, QN => n227);
   STATE_reg_62_inst : DF3 port map( D => n683, C => SYS_CLK, Q => 
                           STATE_62_port, QN => n226);
   STATE_reg_63_inst : DF3 port map( D => n682, C => SYS_CLK, Q => 
                           STATE_63_port, QN => n225);
   STATE_reg_64_inst : DF3 port map( D => n681, C => SYS_CLK, Q => 
                           STATE_64_port, QN => n224);
   STATE_reg_65_inst : DF3 port map( D => n680, C => SYS_CLK, Q => 
                           STATE_65_port, QN => n223);
   STATE_reg_66_inst : DF3 port map( D => n679, C => SYS_CLK, Q => 
                           STATE_66_port, QN => n222);
   STATE_reg_67_inst : DF3 port map( D => n678, C => SYS_CLK, Q => 
                           STATE_67_port, QN => n221);
   STATE_reg_68_inst : DF3 port map( D => n677, C => SYS_CLK, Q => 
                           STATE_68_port, QN => n220);
   STATE_reg_69_inst : DF3 port map( D => n676, C => SYS_CLK, Q => 
                           STATE_69_port, QN => n219);
   STATE_reg_70_inst : DF3 port map( D => n675, C => SYS_CLK, Q => 
                           STATE_70_port, QN => n218);
   STATE_reg_71_inst : DF3 port map( D => n674, C => SYS_CLK, Q => 
                           STATE_71_port, QN => n217);
   STATE_reg_72_inst : DF3 port map( D => n673, C => SYS_CLK, Q => 
                           STATE_72_port, QN => n216);
   STATE_reg_73_inst : DF3 port map( D => n672, C => SYS_CLK, Q => 
                           STATE_73_port, QN => n215);
   STATE_reg_74_inst : DF3 port map( D => n671, C => SYS_CLK, Q => 
                           STATE_74_port, QN => n214);
   STATE_reg_75_inst : DF3 port map( D => n670, C => SYS_CLK, Q => 
                           STATE_75_port, QN => n213);
   STATE_reg_76_inst : DF3 port map( D => n669, C => SYS_CLK, Q => 
                           STATE_76_port, QN => n212);
   STATE_reg_77_inst : DF3 port map( D => n668, C => SYS_CLK, Q => 
                           STATE_77_port, QN => n211);
   STATE_reg_78_inst : DF3 port map( D => n667, C => SYS_CLK, Q => 
                           STATE_78_port, QN => n210);
   STATE_reg_79_inst : DF3 port map( D => n666, C => SYS_CLK, Q => n_1000, QN 
                           => n209);
   STATE_reg_80_inst : DF3 port map( D => n665, C => SYS_CLK, Q => n_1001, QN 
                           => n208);
   STATE_reg_81_inst : DF3 port map( D => n664, C => SYS_CLK, Q => n_1002, QN 
                           => n207);
   STATE_reg_82_inst : DF3 port map( D => n663, C => SYS_CLK, Q => n_1003, QN 
                           => n206);
   STATE_reg_83_inst : DF3 port map( D => n662, C => SYS_CLK, Q => n_1004, QN 
                           => n205);
   STATE_reg_84_inst : DF3 port map( D => n661, C => SYS_CLK, Q => n_1005, QN 
                           => n204);
   STATE_reg_85_inst : DF3 port map( D => n660, C => SYS_CLK, Q => n_1006, QN 
                           => n203);
   STATE_reg_86_inst : DF3 port map( D => n659, C => SYS_CLK, Q => n_1007, QN 
                           => n202);
   STATE_reg_87_inst : DF3 port map( D => n658, C => SYS_CLK, Q => n_1008, QN 
                           => n201);
   STATE_reg_88_inst : DF3 port map( D => n657, C => SYS_CLK, Q => n_1009, QN 
                           => n200);
   STATE_reg_89_inst : DF3 port map( D => n656, C => SYS_CLK, Q => n_1010, QN 
                           => n199);
   STATE_reg_90_inst : DF3 port map( D => n655, C => SYS_CLK, Q => n_1011, QN 
                           => n198);
   STATE_reg_91_inst : DF3 port map( D => n654, C => SYS_CLK, Q => 
                           STATE_91_port, QN => n197);
   STATE_reg_92_inst : DF3 port map( D => n783, C => SYS_CLK, Q => 
                           STATE_92_port, QN => n_1012);
   STATE_reg_93_inst : DF3 port map( D => n653, C => SYS_CLK, Q => 
                           STATE_93_port, QN => n195);
   STATE_reg_94_inst : DF3 port map( D => n652, C => SYS_CLK, Q => 
                           STATE_94_port, QN => n194);
   STATE_reg_95_inst : DF3 port map( D => n651, C => SYS_CLK, Q => 
                           STATE_95_port, QN => n193);
   STATE_reg_96_inst : DF3 port map( D => n650, C => SYS_CLK, Q => 
                           STATE_96_port, QN => n192);
   STATE_reg_97_inst : DF3 port map( D => n649, C => SYS_CLK, Q => 
                           STATE_97_port, QN => n191);
   STATE_reg_98_inst : DF3 port map( D => n648, C => SYS_CLK, Q => 
                           STATE_98_port, QN => n190);
   STATE_reg_99_inst : DF3 port map( D => n647, C => SYS_CLK, Q => 
                           STATE_99_port, QN => n189);
   STATE_reg_100_inst : DF3 port map( D => n646, C => SYS_CLK, Q => 
                           STATE_100_port, QN => n188);
   STATE_reg_101_inst : DF3 port map( D => n645, C => SYS_CLK, Q => 
                           STATE_101_port, QN => n187);
   STATE_reg_102_inst : DF3 port map( D => n644, C => SYS_CLK, Q => 
                           STATE_102_port, QN => n186);
   STATE_reg_103_inst : DF3 port map( D => n643, C => SYS_CLK, Q => 
                           STATE_103_port, QN => n185);
   STATE_reg_104_inst : DF3 port map( D => n642, C => SYS_CLK, Q => 
                           STATE_104_port, QN => n184);
   STATE_reg_105_inst : DF3 port map( D => n641, C => SYS_CLK, Q => 
                           STATE_105_port, QN => n183);
   STATE_reg_106_inst : DF3 port map( D => n640, C => SYS_CLK, Q => 
                           STATE_106_port, QN => n182);
   STATE_reg_107_inst : DF3 port map( D => n639, C => SYS_CLK, Q => 
                           STATE_107_port, QN => n181);
   STATE_reg_108_inst : DF3 port map( D => n638, C => SYS_CLK, Q => 
                           STATE_108_port, QN => n180);
   STATE_reg_109_inst : DF3 port map( D => n637, C => SYS_CLK, Q => 
                           STATE_109_port, QN => n179);
   STATE_reg_110_inst : DF3 port map( D => n636, C => SYS_CLK, Q => 
                           STATE_110_port, QN => n178);
   STATE_reg_111_inst : DF3 port map( D => n635, C => SYS_CLK, Q => 
                           STATE_111_port, QN => n177);
   STATE_reg_112_inst : DF3 port map( D => n634, C => SYS_CLK, Q => 
                           STATE_112_port, QN => n176);
   STATE_reg_113_inst : DF3 port map( D => n633, C => SYS_CLK, Q => 
                           STATE_113_port, QN => n175);
   STATE_reg_114_inst : DF3 port map( D => n632, C => SYS_CLK, Q => 
                           STATE_114_port, QN => n174);
   STATE_reg_115_inst : DF3 port map( D => n631, C => SYS_CLK, Q => 
                           STATE_115_port, QN => n173);
   STATE_reg_116_inst : DF3 port map( D => n630, C => SYS_CLK, Q => 
                           STATE_116_port, QN => n172);
   STATE_reg_117_inst : DF3 port map( D => n629, C => SYS_CLK, Q => 
                           STATE_117_port, QN => n171);
   STATE_reg_118_inst : DF3 port map( D => n628, C => SYS_CLK, Q => 
                           STATE_118_port, QN => n170);
   STATE_reg_119_inst : DF3 port map( D => n627, C => SYS_CLK, Q => 
                           STATE_119_port, QN => n169);
   STATE_reg_120_inst : DF3 port map( D => n626, C => SYS_CLK, Q => 
                           STATE_120_port, QN => n168);
   STATE_reg_121_inst : DF3 port map( D => n625, C => SYS_CLK, Q => 
                           STATE_121_port, QN => n167);
   STATE_reg_122_inst : DF3 port map( D => n624, C => SYS_CLK, Q => 
                           STATE_122_port, QN => n166);
   STATE_reg_123_inst : DF3 port map( D => n623, C => SYS_CLK, Q => 
                           STATE_123_port, QN => n165);
   STATE_reg_124_inst : DF3 port map( D => n622, C => SYS_CLK, Q => 
                           STATE_124_port, QN => n164);
   STATE_reg_125_inst : DF3 port map( D => n621, C => SYS_CLK, Q => 
                           STATE_125_port, QN => n163);
   STATE_reg_126_inst : DF3 port map( D => n620, C => SYS_CLK, Q => 
                           STATE_126_port, QN => n162);
   STATE_reg_127_inst : DF3 port map( D => n619, C => SYS_CLK, Q => 
                           STATE_127_port, QN => n161);
   STATE_reg_128_inst : DF3 port map( D => n618, C => SYS_CLK, Q => 
                           STATE_128_port, QN => n160);
   STATE_reg_129_inst : DF3 port map( D => n617, C => SYS_CLK, Q => 
                           STATE_129_port, QN => n159);
   STATE_reg_130_inst : DF3 port map( D => n616, C => SYS_CLK, Q => 
                           STATE_130_port, QN => n158);
   STATE_reg_131_inst : DF3 port map( D => n615, C => SYS_CLK, Q => 
                           STATE_131_port, QN => n157);
   STATE_reg_132_inst : DF3 port map( D => n614, C => SYS_CLK, Q => 
                           STATE_132_port, QN => n156);
   STATE_reg_133_inst : DF3 port map( D => n613, C => SYS_CLK, Q => 
                           STATE_133_port, QN => n155);
   STATE_reg_134_inst : DF3 port map( D => n612, C => SYS_CLK, Q => 
                           STATE_134_port, QN => n154);
   STATE_reg_135_inst : DF3 port map( D => n611, C => SYS_CLK, Q => 
                           STATE_135_port, QN => n153);
   STATE_reg_136_inst : DF3 port map( D => n610, C => SYS_CLK, Q => 
                           STATE_136_port, QN => n152);
   STATE_reg_137_inst : DF3 port map( D => n609, C => SYS_CLK, Q => 
                           STATE_137_port, QN => n151);
   STATE_reg_138_inst : DF3 port map( D => n608, C => SYS_CLK, Q => 
                           STATE_138_port, QN => n150);
   STATE_reg_139_inst : DF3 port map( D => n607, C => SYS_CLK, Q => 
                           STATE_139_port, QN => n149);
   STATE_reg_140_inst : DF3 port map( D => n606, C => SYS_CLK, Q => 
                           STATE_140_port, QN => n148);
   STATE_reg_141_inst : DF3 port map( D => n605, C => SYS_CLK, Q => 
                           STATE_141_port, QN => n147);
   STATE_reg_142_inst : DF3 port map( D => n604, C => SYS_CLK, Q => 
                           STATE_142_port, QN => n146);
   STATE_reg_143_inst : DF3 port map( D => n603, C => SYS_CLK, Q => 
                           STATE_143_port, QN => n145);
   STATE_reg_144_inst : DF3 port map( D => n602, C => SYS_CLK, Q => 
                           STATE_144_port, QN => n144);
   STATE_reg_145_inst : DF3 port map( D => n601, C => SYS_CLK, Q => 
                           STATE_145_port, QN => n143);
   STATE_reg_146_inst : DF3 port map( D => n600, C => SYS_CLK, Q => 
                           STATE_146_port, QN => n142);
   STATE_reg_147_inst : DF3 port map( D => n599, C => SYS_CLK, Q => 
                           STATE_147_port, QN => n141);
   STATE_reg_148_inst : DF3 port map( D => n598, C => SYS_CLK, Q => 
                           STATE_148_port, QN => n140);
   STATE_reg_149_inst : DF3 port map( D => n597, C => SYS_CLK, Q => 
                           STATE_149_port, QN => n139);
   STATE_reg_150_inst : DF3 port map( D => n596, C => SYS_CLK, Q => 
                           STATE_150_port, QN => n138);
   STATE_reg_151_inst : DF3 port map( D => n595, C => SYS_CLK, Q => 
                           STATE_151_port, QN => n137);
   STATE_reg_152_inst : DF3 port map( D => n594, C => SYS_CLK, Q => 
                           STATE_152_port, QN => n136);
   STATE_reg_153_inst : DF3 port map( D => n593, C => SYS_CLK, Q => 
                           STATE_153_port, QN => n135);
   STATE_reg_154_inst : DF3 port map( D => n592, C => SYS_CLK, Q => 
                           STATE_154_port, QN => n134);
   STATE_reg_155_inst : DF3 port map( D => n591, C => SYS_CLK, Q => 
                           STATE_155_port, QN => n133);
   STATE_reg_156_inst : DF3 port map( D => n590, C => SYS_CLK, Q => 
                           STATE_156_port, QN => n132);
   STATE_reg_157_inst : DF3 port map( D => n589, C => SYS_CLK, Q => 
                           STATE_157_port, QN => n131);
   STATE_reg_158_inst : DF3 port map( D => n588, C => SYS_CLK, Q => 
                           STATE_158_port, QN => n130);
   STATE_reg_159_inst : DF3 port map( D => n587, C => SYS_CLK, Q => 
                           STATE_159_port, QN => n129);
   STATE_reg_160_inst : DF3 port map( D => n586, C => SYS_CLK, Q => 
                           STATE_160_port, QN => n128);
   STATE_reg_161_inst : DF3 port map( D => n585, C => SYS_CLK, Q => 
                           STATE_161_port, QN => n127);
   STATE_reg_162_inst : DF3 port map( D => n584, C => SYS_CLK, Q => 
                           STATE_162_port, QN => n126);
   STATE_reg_163_inst : DF3 port map( D => n583, C => SYS_CLK, Q => 
                           STATE_163_port, QN => n125);
   STATE_reg_164_inst : DF3 port map( D => n582, C => SYS_CLK, Q => 
                           STATE_164_port, QN => n124);
   STATE_reg_165_inst : DF3 port map( D => n581, C => SYS_CLK, Q => 
                           STATE_165_port, QN => n123);
   STATE_reg_166_inst : DF3 port map( D => n580, C => SYS_CLK, Q => 
                           STATE_166_port, QN => n122);
   STATE_reg_167_inst : DF3 port map( D => n579, C => SYS_CLK, Q => 
                           STATE_167_port, QN => n121);
   STATE_reg_168_inst : DF3 port map( D => n578, C => SYS_CLK, Q => 
                           STATE_168_port, QN => n120);
   STATE_reg_169_inst : DF3 port map( D => n577, C => SYS_CLK, Q => 
                           STATE_169_port, QN => n119);
   STATE_reg_170_inst : DF3 port map( D => n576, C => SYS_CLK, Q => 
                           STATE_170_port, QN => n118);
   STATE_reg_171_inst : DF3 port map( D => n575, C => SYS_CLK, Q => 
                           STATE_171_port, QN => n117);
   STATE_reg_172_inst : DF3 port map( D => n574, C => SYS_CLK, Q => n_1013, QN 
                           => n116);
   STATE_reg_173_inst : DF3 port map( D => n573, C => SYS_CLK, Q => n_1014, QN 
                           => n115);
   STATE_reg_174_inst : DF3 port map( D => n572, C => SYS_CLK, Q => n_1015, QN 
                           => n114);
   STATE_reg_175_inst : DF3 port map( D => n571, C => SYS_CLK, Q => 
                           STATE_175_port, QN => n113);
   STATE_reg_176_inst : DF3 port map( D => n785, C => SYS_CLK, Q => 
                           STATE_176_port, QN => n_1016);
   STATE_reg_177_inst : DF3 port map( D => n784, C => SYS_CLK, Q => 
                           STATE_177_port, QN => n_1017);
   STATE_reg_178_inst : DF3 port map( D => n786, C => SYS_CLK, Q => 
                           STATE_178_port, QN => n_1018);
   STATE_reg_179_inst : DF3 port map( D => n787, C => SYS_CLK, Q => 
                           STATE_179_port, QN => n109);
   STATE_reg_180_inst : DF3 port map( D => n570, C => SYS_CLK, Q => n_1019, QN 
                           => n108);
   STATE_reg_181_inst : DF3 port map( D => n569, C => SYS_CLK, Q => n_1020, QN 
                           => n107);
   STATE_reg_182_inst : DF3 port map( D => n568, C => SYS_CLK, Q => n_1021, QN 
                           => n106);
   STATE_reg_183_inst : DF3 port map( D => n567, C => SYS_CLK, Q => n_1022, QN 
                           => n105);
   STATE_reg_184_inst : DF3 port map( D => n566, C => SYS_CLK, Q => n_1023, QN 
                           => n104);
   STATE_reg_185_inst : DF3 port map( D => n565, C => SYS_CLK, Q => n_1024, QN 
                           => n103);
   STATE_reg_186_inst : DF3 port map( D => n564, C => SYS_CLK, Q => n_1025, QN 
                           => n102);
   STATE_reg_187_inst : DF3 port map( D => n563, C => SYS_CLK, Q => n_1026, QN 
                           => n101);
   STATE_reg_188_inst : DF3 port map( D => n562, C => SYS_CLK, Q => n_1027, QN 
                           => n100);
   STATE_reg_189_inst : DF3 port map( D => n561, C => SYS_CLK, Q => n_1028, QN 
                           => n99);
   STATE_reg_190_inst : DF3 port map( D => n560, C => SYS_CLK, Q => n_1029, QN 
                           => n98);
   STATE_reg_191_inst : DF3 port map( D => n559, C => SYS_CLK, Q => n_1030, QN 
                           => n97);
   STATE_reg_192_inst : DF3 port map( D => n558, C => SYS_CLK, Q => n_1031, QN 
                           => n96);
   STATE_reg_193_inst : DF3 port map( D => n557, C => SYS_CLK, Q => n_1032, QN 
                           => n95);
   STATE_reg_194_inst : DF3 port map( D => n556, C => SYS_CLK, Q => n_1033, QN 
                           => n94);
   STATE_reg_195_inst : DF3 port map( D => n555, C => SYS_CLK, Q => n_1034, QN 
                           => n93);
   STATE_reg_196_inst : DF3 port map( D => n554, C => SYS_CLK, Q => n_1035, QN 
                           => n92);
   STATE_reg_197_inst : DF3 port map( D => n553, C => SYS_CLK, Q => n_1036, QN 
                           => n91);
   STATE_reg_198_inst : DF3 port map( D => n552, C => SYS_CLK, Q => n_1037, QN 
                           => n90);
   STATE_reg_199_inst : DF3 port map( D => n551, C => SYS_CLK, Q => n_1038, QN 
                           => n89);
   STATE_reg_200_inst : DF3 port map( D => n550, C => SYS_CLK, Q => n_1039, QN 
                           => n88);
   STATE_reg_201_inst : DF3 port map( D => n549, C => SYS_CLK, Q => n_1040, QN 
                           => n87);
   STATE_reg_202_inst : DF3 port map( D => n548, C => SYS_CLK, Q => n_1041, QN 
                           => n86);
   STATE_reg_203_inst : DF3 port map( D => n547, C => SYS_CLK, Q => n_1042, QN 
                           => n85);
   STATE_reg_204_inst : DF3 port map( D => n546, C => SYS_CLK, Q => n_1043, QN 
                           => n84);
   STATE_reg_205_inst : DF3 port map( D => n545, C => SYS_CLK, Q => n_1044, QN 
                           => n83);
   STATE_reg_206_inst : DF3 port map( D => n544, C => SYS_CLK, Q => n_1045, QN 
                           => n82);
   STATE_reg_207_inst : DF3 port map( D => n543, C => SYS_CLK, Q => n_1046, QN 
                           => n81);
   STATE_reg_208_inst : DF3 port map( D => n542, C => SYS_CLK, Q => n_1047, QN 
                           => n80);
   STATE_reg_209_inst : DF3 port map( D => n541, C => SYS_CLK, Q => n_1048, QN 
                           => n79);
   STATE_reg_210_inst : DF3 port map( D => n540, C => SYS_CLK, Q => n_1049, QN 
                           => n78);
   STATE_reg_211_inst : DF3 port map( D => n539, C => SYS_CLK, Q => n_1050, QN 
                           => n77);
   STATE_reg_212_inst : DF3 port map( D => n538, C => SYS_CLK, Q => n_1051, QN 
                           => n76);
   STATE_reg_213_inst : DF3 port map( D => n537, C => SYS_CLK, Q => n_1052, QN 
                           => n75);
   STATE_reg_214_inst : DF3 port map( D => n536, C => SYS_CLK, Q => n_1053, QN 
                           => n74);
   STATE_reg_215_inst : DF3 port map( D => n535, C => SYS_CLK, Q => n_1054, QN 
                           => n73);
   STATE_reg_216_inst : DF3 port map( D => n534, C => SYS_CLK, Q => n_1055, QN 
                           => n72);
   STATE_reg_217_inst : DF3 port map( D => n533, C => SYS_CLK, Q => n_1056, QN 
                           => n71);
   STATE_reg_218_inst : DF3 port map( D => n532, C => SYS_CLK, Q => n_1057, QN 
                           => n70);
   STATE_reg_219_inst : DF3 port map( D => n531, C => SYS_CLK, Q => n_1058, QN 
                           => n69);
   STATE_reg_220_inst : DF3 port map( D => n530, C => SYS_CLK, Q => n_1059, QN 
                           => n68);
   STATE_reg_221_inst : DF3 port map( D => n529, C => SYS_CLK, Q => n_1060, QN 
                           => n67);
   STATE_reg_222_inst : DF3 port map( D => n528, C => SYS_CLK, Q => n_1061, QN 
                           => n66);
   STATE_reg_223_inst : DF3 port map( D => n527, C => SYS_CLK, Q => n_1062, QN 
                           => n65);
   STATE_reg_224_inst : DF3 port map( D => n526, C => SYS_CLK, Q => n_1063, QN 
                           => n64);
   STATE_reg_225_inst : DF3 port map( D => n525, C => SYS_CLK, Q => n_1064, QN 
                           => n63);
   STATE_reg_226_inst : DF3 port map( D => n524, C => SYS_CLK, Q => n_1065, QN 
                           => n62);
   STATE_reg_227_inst : DF3 port map( D => n523, C => SYS_CLK, Q => n_1066, QN 
                           => n61);
   STATE_reg_228_inst : DF3 port map( D => n522, C => SYS_CLK, Q => n_1067, QN 
                           => n60);
   STATE_reg_229_inst : DF3 port map( D => n521, C => SYS_CLK, Q => n_1068, QN 
                           => n59);
   STATE_reg_230_inst : DF3 port map( D => n520, C => SYS_CLK, Q => n_1069, QN 
                           => n58);
   STATE_reg_231_inst : DF3 port map( D => n519, C => SYS_CLK, Q => n_1070, QN 
                           => n57);
   STATE_reg_232_inst : DF3 port map( D => n518, C => SYS_CLK, Q => n_1071, QN 
                           => n56);
   STATE_reg_233_inst : DF3 port map( D => n517, C => SYS_CLK, Q => n_1072, QN 
                           => n55);
   STATE_reg_234_inst : DF3 port map( D => n516, C => SYS_CLK, Q => n_1073, QN 
                           => n54);
   STATE_reg_235_inst : DF3 port map( D => n515, C => SYS_CLK, Q => n_1074, QN 
                           => n53);
   STATE_reg_236_inst : DF3 port map( D => n514, C => SYS_CLK, Q => n_1075, QN 
                           => n52);
   STATE_reg_237_inst : DF3 port map( D => n513, C => SYS_CLK, Q => n_1076, QN 
                           => n51);
   STATE_reg_238_inst : DF3 port map( D => n512, C => SYS_CLK, Q => n_1077, QN 
                           => n50);
   STATE_reg_239_inst : DF3 port map( D => n511, C => SYS_CLK, Q => n_1078, QN 
                           => n49);
   STATE_reg_240_inst : DF3 port map( D => n510, C => SYS_CLK, Q => n_1079, QN 
                           => n48);
   STATE_reg_241_inst : DF3 port map( D => n509, C => SYS_CLK, Q => n_1080, QN 
                           => n47);
   STATE_reg_242_inst : DF3 port map( D => n508, C => SYS_CLK, Q => 
                           STATE_242_port, QN => n46);
   STATE_reg_243_inst : DF3 port map( D => n507, C => SYS_CLK, Q => n_1081, QN 
                           => n45);
   STATE_reg_244_inst : DF3 port map( D => n506, C => SYS_CLK, Q => n_1082, QN 
                           => n44);
   STATE_reg_245_inst : DF3 port map( D => n505, C => SYS_CLK, Q => n_1083, QN 
                           => n43);
   STATE_reg_246_inst : DF3 port map( D => n504, C => SYS_CLK, Q => n_1084, QN 
                           => n42);
   STATE_reg_247_inst : DF3 port map( D => n503, C => SYS_CLK, Q => n_1085, QN 
                           => n41);
   STATE_reg_248_inst : DF3 port map( D => n502, C => SYS_CLK, Q => n_1086, QN 
                           => n40);
   STATE_reg_249_inst : DF3 port map( D => n501, C => SYS_CLK, Q => n_1087, QN 
                           => n39);
   STATE_reg_250_inst : DF3 port map( D => n500, C => SYS_CLK, Q => n_1088, QN 
                           => n38);
   STATE_reg_251_inst : DF3 port map( D => n499, C => SYS_CLK, Q => n_1089, QN 
                           => n37);
   STATE_reg_252_inst : DF3 port map( D => n498, C => SYS_CLK, Q => n_1090, QN 
                           => n36);
   STATE_reg_253_inst : DF3 port map( D => n497, C => SYS_CLK, Q => n_1091, QN 
                           => n35);
   STATE_reg_254_inst : DF3 port map( D => n496, C => SYS_CLK, Q => n_1092, QN 
                           => n34);
   STATE_reg_255_inst : DF3 port map( D => n495, C => SYS_CLK, Q => n_1093, QN 
                           => n33);
   STATE_reg_256_inst : DF3 port map( D => n494, C => SYS_CLK, Q => n_1094, QN 
                           => n32);
   STATE_reg_257_inst : DF3 port map( D => n493, C => SYS_CLK, Q => n_1095, QN 
                           => n31);
   STATE_reg_258_inst : DF3 port map( D => n492, C => SYS_CLK, Q => n_1096, QN 
                           => n30);
   STATE_reg_259_inst : DF3 port map( D => n491, C => SYS_CLK, Q => n_1097, QN 
                           => n29);
   STATE_reg_260_inst : DF3 port map( D => n490, C => SYS_CLK, Q => n_1098, QN 
                           => n28);
   STATE_reg_261_inst : DF3 port map( D => n489, C => SYS_CLK, Q => n_1099, QN 
                           => n27);
   STATE_reg_262_inst : DF3 port map( D => n488, C => SYS_CLK, Q => n_1100, QN 
                           => n26);
   STATE_reg_263_inst : DF3 port map( D => n487, C => SYS_CLK, Q => 
                           STATE_263_port, QN => n24);
   STATE_reg_264_inst : DF3 port map( D => n486, C => SYS_CLK, Q => n_1101, QN 
                           => n23);
   STATE_reg_265_inst : DF3 port map( D => n485, C => SYS_CLK, Q => n_1102, QN 
                           => n22);
   STATE_reg_266_inst : DF3 port map( D => n484, C => SYS_CLK, Q => n_1103, QN 
                           => n21);
   STATE_reg_267_inst : DF3 port map( D => n483, C => SYS_CLK, Q => n_1104, QN 
                           => n20);
   STATE_reg_268_inst : DF3 port map( D => n482, C => SYS_CLK, Q => n_1105, QN 
                           => n19);
   STATE_reg_269_inst : DF3 port map( D => n481, C => SYS_CLK, Q => n_1106, QN 
                           => n18);
   STATE_reg_270_inst : DF3 port map( D => n480, C => SYS_CLK, Q => n_1107, QN 
                           => n17);
   STATE_reg_271_inst : DF3 port map( D => n479, C => SYS_CLK, Q => n_1108, QN 
                           => n16);
   STATE_reg_272_inst : DF3 port map( D => n478, C => SYS_CLK, Q => n_1109, QN 
                           => n15);
   STATE_reg_273_inst : DF3 port map( D => n477, C => SYS_CLK, Q => n_1110, QN 
                           => n14);
   STATE_reg_274_inst : DF3 port map( D => n476, C => SYS_CLK, Q => n_1111, QN 
                           => n13);
   STATE_reg_275_inst : DF3 port map( D => n475, C => SYS_CLK, Q => n_1112, QN 
                           => n12);
   STATE_reg_276_inst : DF3 port map( D => n474, C => SYS_CLK, Q => n_1113, QN 
                           => n11);
   STATE_reg_277_inst : DF3 port map( D => n473, C => SYS_CLK, Q => n_1114, QN 
                           => n10);
   STATE_reg_278_inst : DF3 port map( D => n472, C => SYS_CLK, Q => n_1115, QN 
                           => n9);
   STATE_reg_279_inst : DF3 port map( D => n471, C => SYS_CLK, Q => n_1116, QN 
                           => n8);
   STATE_reg_280_inst : DF3 port map( D => n470, C => SYS_CLK, Q => n_1117, QN 
                           => n7);
   STATE_reg_281_inst : DF3 port map( D => n469, C => SYS_CLK, Q => n_1118, QN 
                           => n6);
   STATE_reg_282_inst : DF3 port map( D => n468, C => SYS_CLK, Q => n_1119, QN 
                           => n5);
   STATE_reg_283_inst : DF3 port map( D => n467, C => SYS_CLK, Q => n_1120, QN 
                           => n4);
   STATE_reg_284_inst : DF3 port map( D => n466, C => SYS_CLK, Q => n_1121, QN 
                           => n3);
   STATE_reg_285_inst : DF3 port map( D => n465, C => SYS_CLK, Q => 
                           STATE_285_port, QN => n2);
   STATE_reg_286_inst : DF3 port map( D => n464, C => SYS_CLK, Q => 
                           STATE_286_port, QN => n1);
   STATE_reg_287_inst : DF3 port map( D => n463, C => SYS_CLK, Q => 
                           STATE_287_port, QN => n_1122);
   U474 : XOR21 port map( A => STATE_68_port, B => N305, Q => n750);
   U477 : XOR21 port map( A => STATE_65_port, B => N301, Q => n748);
   U480 : XOR21 port map( A => STATE_161_port, B => N303, Q => n746);
   U479 : XOR21 port map( A => STATE_263_port, B => STATE_176_port, Q => n747);
   U481 : XOR21 port map( A => n747, B => n746, Q => t2);
   U468 : XOR21 port map( A => STATE_287_port, B => STATE_242_port, Q => n755);
   U469 : XOR21 port map( A => STATE_176_port, B => STATE_161_port, Q => n754);
   U471 : XOR21 port map( A => n755, B => n754, Q => n752);
   U470 : XOR21 port map( A => STATE_92_port, B => STATE_65_port, Q => n753);
   U472 : XOR21 port map( A => n753, B => n752, Q => KEY_OUT);
   U4 : NOR20 port map( A => n289, B => n782, Q => n298);
   U6 : INV2 port map( A => n111, Q => n112);
   U8 : NOR20 port map( A => n788, B => CNTRL(0), Q => n294);
   U114 : CLKBU2 port map( A => n112, Q => n782);
   U115 : AOI221 port map( A => IV(7), B => n779, C => t1, D => n767, Q => n381
                           );
   U116 : AOI221 port map( A => KEY(7), B => n779, C => t3, D => n768, Q => 
                           n462);
   U117 : INV3 port map( A => n777, Q => n765);
   U122 : INV3 port map( A => n777, Q => n766);
   U124 : INV3 port map( A => n776, Q => n767);
   U126 : INV3 port map( A => n290, Q => n768);
   U128 : BUF2 port map( A => n776, Q => n775);
   U130 : BUF2 port map( A => n777, Q => n774);
   U132 : BUF2 port map( A => n776, Q => n773);
   U134 : BUF2 port map( A => n777, Q => n772);
   U136 : BUF2 port map( A => n777, Q => n771);
   U138 : BUF2 port map( A => n776, Q => n770);
   U140 : BUF2 port map( A => n777, Q => n769);
   U142 : BUF2 port map( A => n756, Q => n759);
   U144 : BUF2 port map( A => n751, Q => n761);
   U146 : BUF2 port map( A => n749, Q => n760);
   U148 : BUF2 port map( A => n751, Q => n762);
   U150 : BUF2 port map( A => n758, Q => n763);
   U152 : BUF2 port map( A => n758, Q => n764);
   U154 : INV3 port map( A => n291, Q => n776);
   U156 : INV3 port map( A => n291, Q => n777);
   U158 : INV3 port map( A => n290, Q => n291);
   U160 : BUF2 port map( A => n196, Q => n758);
   U162 : BUF2 port map( A => n196, Q => n757);
   U164 : BUF2 port map( A => n196, Q => n756);
   U166 : BUF2 port map( A => n196, Q => n749);
   U168 : BUF2 port map( A => n196, Q => n751);
   U170 : INV3 port map( A => n298, Q => n290);
   U172 : BUF2 port map( A => n112, Q => n781);
   U174 : BUF2 port map( A => n781, Q => n780);
   U176 : BUF2 port map( A => n778, Q => n779);
   U178 : BUF2 port map( A => n112, Q => n778);
   U180 : INV3 port map( A => n196, Q => n289);
   U182 : AOI221 port map( A => KEY(3), B => n112, C => STATE_3_port, D => n768
                           , Q => n458);
   U184 : AOI221 port map( A => KEY(4), B => n112, C => STATE_2_port, D => n768
                           , Q => n459);
   U186 : AOI221 port map( A => KEY(5), B => n112, C => STATE_1_port, D => n768
                           , Q => n460);
   U188 : AOI221 port map( A => KEY(6), B => n112, C => STATE_0_port, D => n768
                           , Q => n461);
   U190 : XNR21 port map( A => n25, B => n750, Q => t3);
   U192 : XNR21 port map( A => STATE_287_port, B => STATE_242_port, Q => n25);
   U194 : AOI221 port map( A => IV(72), B => n778, C => STATE_171_port, D => 
                           n768, Q => n302);
   U196 : AOI221 port map( A => KEY(72), B => n778, C => STATE_78_port, D => 
                           n767, Q => n383);
   U198 : AOI221 port map( A => IV(73), B => n782, C => STATE_170_port, D => 
                           n768, Q => n303_port);
   U200 : AOI221 port map( A => IV(74), B => n781, C => STATE_169_port, D => 
                           n768, Q => n304);
   U202 : AOI221 port map( A => IV(75), B => n778, C => STATE_168_port, D => 
                           n765, Q => n305_port);
   U204 : AOI221 port map( A => IV(76), B => n782, C => STATE_167_port, D => 
                           n768, Q => n306);
   U206 : AOI221 port map( A => IV(77), B => n782, C => STATE_166_port, D => 
                           n768, Q => n307);
   U208 : AOI221 port map( A => IV(78), B => n781, C => STATE_165_port, D => 
                           n298, Q => n308);
   U210 : AOI221 port map( A => IV(79), B => n778, C => STATE_164_port, D => 
                           n767, Q => n309);
   U212 : AOI221 port map( A => IV(64), B => n781, C => STATE_163_port, D => 
                           n767, Q => n310);
   U214 : AOI221 port map( A => IV(65), B => n782, C => STATE_162_port, D => 
                           n768, Q => n311);
   U216 : AOI221 port map( A => IV(66), B => n782, C => STATE_161_port, D => 
                           n768, Q => n312);
   U218 : AOI221 port map( A => IV(67), B => n782, C => STATE_160_port, D => 
                           n768, Q => n313);
   U220 : AOI221 port map( A => IV(68), B => n782, C => STATE_159_port, D => 
                           n765, Q => n314);
   U222 : AOI221 port map( A => IV(69), B => n782, C => STATE_158_port, D => 
                           n765, Q => n315);
   U224 : AOI221 port map( A => IV(70), B => n782, C => STATE_157_port, D => 
                           n765, Q => n316);
   U226 : AOI221 port map( A => IV(71), B => n782, C => STATE_156_port, D => 
                           n765, Q => n317);
   U228 : AOI221 port map( A => IV(56), B => n782, C => STATE_155_port, D => 
                           n765, Q => n318);
   U230 : AOI221 port map( A => IV(57), B => n782, C => STATE_154_port, D => 
                           n765, Q => n319);
   U232 : AOI221 port map( A => IV(58), B => n782, C => STATE_153_port, D => 
                           n765, Q => n320);
   U234 : AOI221 port map( A => IV(59), B => n782, C => STATE_152_port, D => 
                           n765, Q => n321);
   U236 : AOI221 port map( A => IV(60), B => n782, C => STATE_151_port, D => 
                           n765, Q => n322);
   U238 : AOI221 port map( A => IV(61), B => n782, C => STATE_150_port, D => 
                           n765, Q => n323);
   U240 : AOI221 port map( A => IV(62), B => n782, C => STATE_149_port, D => 
                           n765, Q => n324);
   U242 : AOI221 port map( A => IV(63), B => n782, C => STATE_148_port, D => 
                           n765, Q => n325);
   U244 : AOI221 port map( A => IV(48), B => n782, C => STATE_147_port, D => 
                           n765, Q => n326);
   U246 : AOI221 port map( A => IV(49), B => n782, C => STATE_146_port, D => 
                           n766, Q => n327);
   U248 : AOI221 port map( A => IV(50), B => n782, C => STATE_145_port, D => 
                           n766, Q => n328);
   U250 : AOI221 port map( A => IV(51), B => n779, C => STATE_144_port, D => 
                           n766, Q => n329);
   U252 : AOI221 port map( A => IV(52), B => n780, C => STATE_143_port, D => 
                           n766, Q => n330);
   U254 : AOI221 port map( A => IV(53), B => n779, C => STATE_142_port, D => 
                           n766, Q => n331);
   U256 : AOI221 port map( A => IV(54), B => n780, C => STATE_141_port, D => 
                           n766, Q => n332);
   U258 : AOI221 port map( A => IV(55), B => n779, C => STATE_140_port, D => 
                           n766, Q => n333);
   U260 : AOI221 port map( A => IV(40), B => n780, C => STATE_139_port, D => 
                           n766, Q => n334);
   U262 : AOI221 port map( A => IV(41), B => n779, C => STATE_138_port, D => 
                           n766, Q => n335);
   U264 : AOI221 port map( A => IV(42), B => n780, C => STATE_137_port, D => 
                           n766, Q => n336);
   U266 : AOI221 port map( A => IV(43), B => n779, C => STATE_136_port, D => 
                           n766, Q => n337);
   U268 : AOI221 port map( A => IV(44), B => n780, C => STATE_135_port, D => 
                           n767, Q => n338);
   U270 : AOI221 port map( A => IV(45), B => n112, C => STATE_134_port, D => 
                           n766, Q => n339);
   U272 : AOI221 port map( A => IV(46), B => n112, C => STATE_133_port, D => 
                           n766, Q => n340);
   U274 : AOI221 port map( A => IV(47), B => n294, C => STATE_132_port, D => 
                           n765, Q => n341);
   U276 : AOI221 port map( A => IV(32), B => n294, C => STATE_131_port, D => 
                           n766, Q => n342);
   U278 : AOI221 port map( A => IV(33), B => n294, C => STATE_130_port, D => 
                           n765, Q => n343);
   U280 : AOI221 port map( A => IV(34), B => n294, C => STATE_129_port, D => 
                           n766, Q => n344);
   U281 : AOI221 port map( A => IV(35), B => n294, C => STATE_128_port, D => 
                           n765, Q => n345);
   U295 : AOI221 port map( A => IV(36), B => n781, C => STATE_127_port, D => 
                           n766, Q => n346);
   U297 : AOI221 port map( A => IV(37), B => n781, C => STATE_126_port, D => 
                           n765, Q => n347);
   U299 : AOI221 port map( A => IV(38), B => n781, C => STATE_125_port, D => 
                           n766, Q => n348);
   U301 : AOI221 port map( A => IV(39), B => n781, C => STATE_124_port, D => 
                           n765, Q => n349);
   U303 : AOI221 port map( A => IV(24), B => n781, C => STATE_123_port, D => 
                           n766, Q => n350);
   U305 : AOI221 port map( A => IV(25), B => n781, C => STATE_122_port, D => 
                           n765, Q => n351);
   U307 : AOI221 port map( A => IV(26), B => n781, C => STATE_121_port, D => 
                           n766, Q => n352);
   U309 : AOI221 port map( A => IV(27), B => n781, C => STATE_120_port, D => 
                           n765, Q => n353);
   U311 : AOI221 port map( A => IV(28), B => n781, C => STATE_119_port, D => 
                           n298, Q => n354);
   U313 : AOI221 port map( A => IV(29), B => n781, C => STATE_118_port, D => 
                           n298, Q => n355);
   U315 : AOI221 port map( A => IV(30), B => n781, C => STATE_117_port, D => 
                           n291, Q => n356);
   U317 : AOI221 port map( A => IV(31), B => n781, C => STATE_116_port, D => 
                           n291, Q => n357);
   U319 : AOI221 port map( A => IV(16), B => n781, C => STATE_115_port, D => 
                           n291, Q => n358);
   U321 : AOI221 port map( A => IV(17), B => n781, C => STATE_114_port, D => 
                           n291, Q => n359);
   U323 : AOI221 port map( A => IV(18), B => n781, C => STATE_113_port, D => 
                           n291, Q => n360);
   U325 : AOI221 port map( A => IV(19), B => n781, C => STATE_112_port, D => 
                           n291, Q => n361);
   U327 : AOI221 port map( A => IV(20), B => n781, C => STATE_111_port, D => 
                           n291, Q => n362);
   U329 : AOI221 port map( A => IV(21), B => n780, C => STATE_110_port, D => 
                           n765, Q => n363);
   U331 : AOI221 port map( A => IV(22), B => n780, C => STATE_109_port, D => 
                           n291, Q => n364);
   U333 : AOI221 port map( A => IV(23), B => n780, C => STATE_108_port, D => 
                           n291, Q => n365);
   U335 : AOI221 port map( A => IV(8), B => n780, C => STATE_107_port, D => 
                           n291, Q => n366);
   U337 : AOI221 port map( A => IV(9), B => n780, C => STATE_106_port, D => 
                           n768, Q => n367);
   U339 : AOI221 port map( A => IV(10), B => n780, C => STATE_105_port, D => 
                           n768, Q => n368);
   U341 : AOI221 port map( A => IV(11), B => n780, C => STATE_104_port, D => 
                           n768, Q => n369);
   U343 : AOI221 port map( A => IV(12), B => n780, C => STATE_103_port, D => 
                           n768, Q => n370);
   U345 : AOI221 port map( A => IV(13), B => n780, C => STATE_102_port, D => 
                           n768, Q => n371);
   U347 : AOI221 port map( A => IV(14), B => n780, C => STATE_101_port, D => 
                           n768, Q => n372);
   U349 : AOI221 port map( A => IV(15), B => n780, C => STATE_100_port, D => 
                           n768, Q => n373);
   U351 : AOI221 port map( A => IV(0), B => n780, C => STATE_99_port, D => n768
                           , Q => n374);
   U353 : AOI221 port map( A => IV(1), B => n780, C => STATE_98_port, D => n291
                           , Q => n375);
   U355 : AOI221 port map( A => IV(2), B => n780, C => STATE_97_port, D => n767
                           , Q => n376);
   U357 : AOI221 port map( A => IV(3), B => n780, C => STATE_96_port, D => n765
                           , Q => n377);
   U359 : AOI221 port map( A => IV(4), B => n780, C => STATE_95_port, D => n766
                           , Q => n378);
   U361 : AOI221 port map( A => IV(5), B => n780, C => STATE_94_port, D => n291
                           , Q => n379);
   U363 : AOI221 port map( A => IV(6), B => n782, C => STATE_93_port, D => n767
                           , Q => n380);
   U365 : XNR21 port map( A => n110, B => n748, Q => t1);
   U367 : XNR21 port map( A => STATE_170_port, B => STATE_92_port, Q => n110);
   U369 : AOI221 port map( A => KEY(76), B => n781, C => STATE_74_port, D => 
                           n767, Q => n387);
   U371 : AOI221 port map( A => KEY(77), B => n780, C => STATE_73_port, D => 
                           n767, Q => n388);
   U373 : AOI221 port map( A => KEY(78), B => n779, C => STATE_72_port, D => 
                           n767, Q => n389);
   U375 : AOI221 port map( A => KEY(79), B => n782, C => STATE_71_port, D => 
                           n767, Q => n390);
   U377 : AOI221 port map( A => KEY(64), B => n780, C => STATE_70_port, D => 
                           n767, Q => n391);
   U379 : AOI221 port map( A => KEY(65), B => n779, C => STATE_69_port, D => 
                           n767, Q => n392);
   U381 : AOI221 port map( A => KEY(66), B => n780, C => STATE_68_port, D => 
                           n768, Q => n393);
   U383 : AOI221 port map( A => KEY(67), B => n780, C => STATE_67_port, D => 
                           n767, Q => n394);
   U385 : AOI221 port map( A => KEY(68), B => n779, C => STATE_66_port, D => 
                           n768, Q => n395);
   U387 : AOI221 port map( A => KEY(69), B => n779, C => STATE_65_port, D => 
                           n766, Q => n396);
   U389 : AOI221 port map( A => KEY(70), B => n780, C => STATE_64_port, D => 
                           n765, Q => n397);
   U391 : AOI221 port map( A => KEY(71), B => n779, C => STATE_63_port, D => 
                           n766, Q => n398);
   U393 : AOI221 port map( A => KEY(56), B => n779, C => STATE_62_port, D => 
                           n767, Q => n399);
   U395 : AOI221 port map( A => KEY(57), B => n779, C => STATE_61_port, D => 
                           n291, Q => n400);
   U397 : AOI221 port map( A => KEY(58), B => n779, C => STATE_60_port, D => 
                           n768, Q => n401);
   U399 : AOI221 port map( A => KEY(59), B => n779, C => STATE_59_port, D => 
                           n291, Q => n402);
   U401 : AOI221 port map( A => KEY(60), B => n779, C => STATE_58_port, D => 
                           n768, Q => n403);
   U403 : AOI221 port map( A => KEY(61), B => n779, C => STATE_57_port, D => 
                           n765, Q => n404);
   U405 : AOI221 port map( A => KEY(62), B => n779, C => STATE_56_port, D => 
                           n291, Q => n405);
   U407 : AOI221 port map( A => KEY(63), B => n779, C => STATE_55_port, D => 
                           n767, Q => n406);
   U409 : AOI221 port map( A => KEY(48), B => n779, C => STATE_54_port, D => 
                           n291, Q => n407);
   U411 : AOI221 port map( A => KEY(49), B => n779, C => STATE_53_port, D => 
                           n765, Q => n408);
   U413 : AOI221 port map( A => KEY(50), B => n779, C => STATE_52_port, D => 
                           n766, Q => n409);
   U415 : AOI221 port map( A => KEY(51), B => n779, C => STATE_51_port, D => 
                           n767, Q => n410);
   U417 : AOI221 port map( A => KEY(52), B => n779, C => STATE_50_port, D => 
                           n767, Q => n411);
   U419 : AOI221 port map( A => KEY(53), B => n779, C => STATE_49_port, D => 
                           n768, Q => n412);
   U421 : AOI221 port map( A => KEY(54), B => n779, C => STATE_48_port, D => 
                           n766, Q => n413);
   U423 : AOI221 port map( A => KEY(55), B => n779, C => STATE_47_port, D => 
                           n768, Q => n414);
   U425 : AOI221 port map( A => KEY(40), B => n778, C => STATE_46_port, D => 
                           n767, Q => n415);
   U427 : AOI221 port map( A => KEY(41), B => n778, C => STATE_45_port, D => 
                           n765, Q => n416);
   U429 : AOI221 port map( A => KEY(42), B => n778, C => STATE_44_port, D => 
                           n766, Q => n417);
   U431 : AOI221 port map( A => KEY(43), B => n778, C => STATE_43_port, D => 
                           n291, Q => n418);
   U433 : AOI221 port map( A => KEY(44), B => n778, C => STATE_42_port, D => 
                           n765, Q => n419);
   U435 : AOI221 port map( A => KEY(45), B => n778, C => STATE_41_port, D => 
                           n291, Q => n420);
   U437 : AOI221 port map( A => KEY(46), B => n778, C => STATE_40_port, D => 
                           n768, Q => n421);
   U439 : AOI221 port map( A => KEY(47), B => n778, C => STATE_39_port, D => 
                           n766, Q => n422);
   U441 : AOI221 port map( A => KEY(32), B => n778, C => STATE_38_port, D => 
                           n291, Q => n423);
   U443 : AOI221 port map( A => KEY(33), B => n778, C => STATE_37_port, D => 
                           n291, Q => n424);
   U445 : AOI221 port map( A => KEY(34), B => n778, C => STATE_36_port, D => 
                           n768, Q => n425);
   U447 : AOI221 port map( A => KEY(35), B => n778, C => STATE_35_port, D => 
                           n298, Q => n426);
   U449 : AOI221 port map( A => KEY(36), B => n778, C => STATE_34_port, D => 
                           n291, Q => n427);
   U451 : AOI221 port map( A => KEY(37), B => n778, C => STATE_33_port, D => 
                           n766, Q => n428);
   U453 : AOI221 port map( A => KEY(38), B => n778, C => STATE_32_port, D => 
                           n298, Q => n429);
   U454 : AOI221 port map( A => KEY(39), B => n778, C => STATE_31_port, D => 
                           n766, Q => n430);
   U455 : AOI221 port map( A => KEY(24), B => n778, C => STATE_30_port, D => 
                           n768, Q => n431);
   U456 : AOI221 port map( A => KEY(25), B => n778, C => STATE_29_port, D => 
                           n767, Q => n432);
   U457 : AOI221 port map( A => KEY(26), B => n782, C => STATE_28_port, D => 
                           n768, Q => n433);
   U458 : AOI221 port map( A => KEY(27), B => n778, C => STATE_27_port, D => 
                           n768, Q => n434);
   U459 : AOI221 port map( A => KEY(28), B => n782, C => STATE_26_port, D => 
                           n768, Q => n435);
   U460 : AOI221 port map( A => KEY(29), B => n781, C => STATE_25_port, D => 
                           n765, Q => n436);
   U461 : AOI221 port map( A => KEY(30), B => n778, C => STATE_24_port, D => 
                           n298, Q => n437);
   U462 : AOI221 port map( A => KEY(31), B => n782, C => STATE_23_port, D => 
                           n768, Q => n438);
   U463 : AOI221 port map( A => KEY(16), B => n781, C => STATE_22_port, D => 
                           n765, Q => n439);
   U464 : AOI221 port map( A => KEY(17), B => n781, C => STATE_21_port, D => 
                           n767, Q => n440);
   U465 : AOI221 port map( A => KEY(18), B => n778, C => STATE_20_port, D => 
                           n765, Q => n441);
   U466 : AOI221 port map( A => KEY(19), B => n781, C => STATE_19_port, D => 
                           n766, Q => n442);
   U467 : AOI221 port map( A => KEY(20), B => n778, C => STATE_18_port, D => 
                           n291, Q => n443);
   U473 : AOI221 port map( A => KEY(21), B => n782, C => STATE_17_port, D => 
                           n768, Q => n444);
   U475 : AOI221 port map( A => KEY(22), B => n781, C => STATE_16_port, D => 
                           n768, Q => n445);
   U476 : AOI221 port map( A => KEY(23), B => n778, C => STATE_15_port, D => 
                           n768, Q => n446);
   U478 : AOI221 port map( A => KEY(8), B => n782, C => STATE_14_port, D => 
                           n768, Q => n447);
   U482 : AOI221 port map( A => KEY(9), B => n781, C => STATE_13_port, D => 
                           n768, Q => n448);
   U483 : AOI221 port map( A => KEY(10), B => n112, C => STATE_12_port, D => 
                           n768, Q => n449);
   U484 : AOI221 port map( A => KEY(11), B => n112, C => STATE_11_port, D => 
                           n768, Q => n450);
   U485 : AOI221 port map( A => KEY(12), B => n112, C => STATE_10_port, D => 
                           n768, Q => n451);
   U486 : AOI221 port map( A => KEY(13), B => n112, C => STATE_9_port, D => 
                           n766, Q => n452);
   U487 : AOI221 port map( A => KEY(14), B => n112, C => STATE_8_port, D => 
                           n291, Q => n453);
   U488 : AOI221 port map( A => KEY(15), B => n112, C => STATE_7_port, D => 
                           n766, Q => n454);
   U489 : AOI221 port map( A => KEY(0), B => n112, C => STATE_6_port, D => n767
                           , Q => n455);
   U490 : AOI221 port map( A => KEY(1), B => n112, C => STATE_5_port, D => n765
                           , Q => n456);
   U491 : AOI221 port map( A => KEY(2), B => n112, C => STATE_4_port, D => n766
                           , Q => n457);
   U492 : AOI221 port map( A => KEY(73), B => n779, C => STATE_77_port, D => 
                           n767, Q => n384);
   U493 : AOI221 port map( A => KEY(74), B => n780, C => STATE_76_port, D => 
                           n767, Q => n385);
   U494 : AOI221 port map( A => KEY(75), B => n780, C => STATE_75_port, D => 
                           n767, Q => n386);
   U495 : INV3 port map( A => n292, Q => n196);
   U496 : NOR21 port map( A => CNTRL(0), B => n294, Q => n292);
   U497 : INV3 port map( A => n294, Q => n111);
   U498 : INV3 port map( A => CNTRL(1), Q => n788);
   U499 : INV3 port map( A => n301_port, Q => n785);
   U500 : AOI221 port map( A => n289, B => STATE_176_port, C => n768, D => 
                           STATE_175_port, Q => n301_port);
   U501 : INV3 port map( A => n382, Q => n783);
   U502 : AOI221 port map( A => n289, B => STATE_92_port, C => n768, D => 
                           STATE_91_port, Q => n382);
   U503 : AOI211 port map( A => STATE_287_port, B => n289, C => n782, Q => n293
                           );
   U504 : AOI211 port map( A => STATE_286_port, B => n292, C => n781, Q => n295
                           );
   U505 : AOI211 port map( A => STATE_285_port, B => n289, C => n778, Q => n296
                           );
   U506 : INV3 port map( A => n297, Q => n787);
   U507 : AOI221 port map( A => n289, B => STATE_179_port, C => n768, D => 
                           STATE_178_port, Q => n297);
   U508 : INV3 port map( A => n299, Q => n786);
   U509 : AOI221 port map( A => n289, B => STATE_178_port, C => n768, D => 
                           STATE_177_port, Q => n299);
   U510 : INV3 port map( A => n300, Q => n784);
   U511 : AOI221 port map( A => n289, B => STATE_177_port, C => n768, D => t2, 
                           Q => n300);
   U512 : NOR21 port map( A => n113, B => n114, Q => N303);
   U513 : NOR21 port map( A => n197, B => n198, Q => N301);
   U514 : NOR21 port map( A => n1, B => n2, Q => N305);

end SYN_Behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Trivium_Generator_vvect.all;

entity Trivium_Generator_vvect is

   port( SYS_CLK, RST, PLAINTEXT_IN : in std_logic;  CIPHERTEXT_OUT : out 
         std_logic;  K_INPUT, IV_INPUT : in std_logic_vector (79 downto 0);  
         PLNTXT_EN : in std_logic;  CPHRTXT_RDY : out std_logic);

end Trivium_Generator_vvect;

architecture SYN_Behavioral of Trivium_Generator_vvect is

   component AOI211
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component NAND22
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component INV3
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component OAI311
      port( A, B, C, D : in std_logic;  Q : out std_logic);
   end component;
   
   component NAND31
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component AOI221
      port( A, B, C, D : in std_logic;  Q : out std_logic);
   end component;
   
   component XNR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component AOI311
      port( A, B, C, D : in std_logic;  Q : out std_logic);
   end component;
   
   component AOI2111
      port( A, B, C, D : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR40
      port( A, B, C, D : in std_logic;  Q : out std_logic);
   end component;
   
   component NAND41
      port( A, B, C, D : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR31
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component Trivium_Generator_vvect_DW01_inc_0
      port( A : in std_logic_vector (10 downto 0);  SUM : out std_logic_vector 
            (10 downto 0));
   end component;
   
   component TRIVIUM_CORE
      port( SYS_CLK : in std_logic;  CNTRL : in std_logic_vector (1 downto 0); 
            KEY, IV : in std_logic_vector (79 downto 0);  KEY_OUT : out 
            std_logic);
   end component;
   
   component DF3
      port( D, C : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI212
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   signal CIPHERTEXT_OUT_port, CPHRTXT_RDY_port, CORE_CNTRL_1_port, 
      CORE_CNTRL_0_port, CORE_OUT, pr_state_2_port, pr_state_1_port, 
      pr_state_0_port, N21, N22, N23, INIT_COUNTER_10_port, INIT_COUNTER_9_port
      , INIT_COUNTER_8_port, INIT_COUNTER_7_port, INIT_COUNTER_6_port, 
      INIT_COUNTER_5_port, INIT_COUNTER_4_port, INIT_COUNTER_3_port, 
      INIT_COUNTER_2_port, INIT_COUNTER_1_port, INIT_COUNTER_0_port, N56, N57, 
      N58, N59, N60, N61, N62, N63, N64, N65, N66, n15, n17, n18, n22_port, 
      n23_port, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36
      , n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, 
      n51, n52, n53, n54, n55, n56_port, n57_port, n58_port, n59_port, n60_port
      , n61_port, n62_port, n63_port, n64_port, n65_port, n66_port, n67, n68, 
      n69, n70, n71, n72, n73, n74, n75, n76, n77, n_1123, n_1124, n_1125, 
      n_1126, n_1127, n_1128, n_1129, n_1130, n_1131, n_1132, n_1133, n_1134, 
      n_1135, n_1136, n_1137 : std_logic;

begin
   CIPHERTEXT_OUT <= CIPHERTEXT_OUT_port;
   CPHRTXT_RDY <= CPHRTXT_RDY_port;
   
   U32 : OAI212 port map( A => n50, B => n23_port, C => pr_state_0_port, Q => 
                           n49);
   U37 : OAI212 port map( A => n18, B => n52, C => n15, Q => n51);
   INIT_COUNTER_reg_0_inst : DF3 port map( D => n61_port, C => SYS_CLK, Q => 
                           INIT_COUNTER_0_port, QN => n_1123);
   pr_state_reg_0_inst : DF3 port map( D => N21, C => SYS_CLK, Q => 
                           pr_state_0_port, QN => n18);
   pr_state_reg_1_inst : DF3 port map( D => N22, C => SYS_CLK, Q => 
                           pr_state_1_port, QN => n17);
   pr_state_reg_2_inst : DF3 port map( D => N23, C => SYS_CLK, Q => 
                           pr_state_2_port, QN => n15);
   INIT_COUNTER_reg_1_inst : DF3 port map( D => n71, C => SYS_CLK, Q => 
                           INIT_COUNTER_1_port, QN => n_1124);
   INIT_COUNTER_reg_2_inst : DF3 port map( D => n70, C => SYS_CLK, Q => 
                           INIT_COUNTER_2_port, QN => n_1125);
   INIT_COUNTER_reg_3_inst : DF3 port map( D => n69, C => SYS_CLK, Q => 
                           INIT_COUNTER_3_port, QN => n_1126);
   INIT_COUNTER_reg_4_inst : DF3 port map( D => n68, C => SYS_CLK, Q => 
                           INIT_COUNTER_4_port, QN => n_1127);
   INIT_COUNTER_reg_5_inst : DF3 port map( D => n67, C => SYS_CLK, Q => 
                           INIT_COUNTER_5_port, QN => n_1128);
   INIT_COUNTER_reg_6_inst : DF3 port map( D => n66_port, C => SYS_CLK, Q => 
                           INIT_COUNTER_6_port, QN => n_1129);
   INIT_COUNTER_reg_7_inst : DF3 port map( D => n65_port, C => SYS_CLK, Q => 
                           INIT_COUNTER_7_port, QN => n_1130);
   INIT_COUNTER_reg_8_inst : DF3 port map( D => n64_port, C => SYS_CLK, Q => 
                           INIT_COUNTER_8_port, QN => n_1131);
   INIT_COUNTER_reg_9_inst : DF3 port map( D => n63_port, C => SYS_CLK, Q => 
                           INIT_COUNTER_9_port, QN => n_1132);
   INIT_COUNTER_reg_10_inst : DF3 port map( D => n62_port, C => SYS_CLK, Q => 
                           INIT_COUNTER_10_port, QN => n_1133);
   CORE_CNTRL_reg_1_inst : DF3 port map( D => n73, C => SYS_CLK, Q => 
                           CORE_CNTRL_1_port, QN => n_1134);
   CORE_CNTRL_reg_0_inst : DF3 port map( D => n59_port, C => SYS_CLK, Q => 
                           CORE_CNTRL_0_port, QN => n_1135);
   CPHRTXT_RDY_reg : DF3 port map( D => n58_port, C => SYS_CLK, Q => 
                           CPHRTXT_RDY_port, QN => n_1136);
   CIPHERTEXT_OUT_reg : DF3 port map( D => n57_port, C => SYS_CLK, Q => 
                           CIPHERTEXT_OUT_port, QN => n_1137);
   TRIV_CORE_GEN : TRIVIUM_CORE port map( SYS_CLK => SYS_CLK, CNTRL(1) => 
                           CORE_CNTRL_1_port, CNTRL(0) => CORE_CNTRL_0_port, 
                           KEY(79) => K_INPUT(79), KEY(78) => K_INPUT(78), 
                           KEY(77) => K_INPUT(77), KEY(76) => K_INPUT(76), 
                           KEY(75) => K_INPUT(75), KEY(74) => K_INPUT(74), 
                           KEY(73) => K_INPUT(73), KEY(72) => K_INPUT(72), 
                           KEY(71) => K_INPUT(71), KEY(70) => K_INPUT(70), 
                           KEY(69) => K_INPUT(69), KEY(68) => K_INPUT(68), 
                           KEY(67) => K_INPUT(67), KEY(66) => K_INPUT(66), 
                           KEY(65) => K_INPUT(65), KEY(64) => K_INPUT(64), 
                           KEY(63) => K_INPUT(63), KEY(62) => K_INPUT(62), 
                           KEY(61) => K_INPUT(61), KEY(60) => K_INPUT(60), 
                           KEY(59) => K_INPUT(59), KEY(58) => K_INPUT(58), 
                           KEY(57) => K_INPUT(57), KEY(56) => K_INPUT(56), 
                           KEY(55) => K_INPUT(55), KEY(54) => K_INPUT(54), 
                           KEY(53) => K_INPUT(53), KEY(52) => K_INPUT(52), 
                           KEY(51) => K_INPUT(51), KEY(50) => K_INPUT(50), 
                           KEY(49) => K_INPUT(49), KEY(48) => K_INPUT(48), 
                           KEY(47) => K_INPUT(47), KEY(46) => K_INPUT(46), 
                           KEY(45) => K_INPUT(45), KEY(44) => K_INPUT(44), 
                           KEY(43) => K_INPUT(43), KEY(42) => K_INPUT(42), 
                           KEY(41) => K_INPUT(41), KEY(40) => K_INPUT(40), 
                           KEY(39) => K_INPUT(39), KEY(38) => K_INPUT(38), 
                           KEY(37) => K_INPUT(37), KEY(36) => K_INPUT(36), 
                           KEY(35) => K_INPUT(35), KEY(34) => K_INPUT(34), 
                           KEY(33) => K_INPUT(33), KEY(32) => K_INPUT(32), 
                           KEY(31) => K_INPUT(31), KEY(30) => K_INPUT(30), 
                           KEY(29) => K_INPUT(29), KEY(28) => K_INPUT(28), 
                           KEY(27) => K_INPUT(27), KEY(26) => K_INPUT(26), 
                           KEY(25) => K_INPUT(25), KEY(24) => K_INPUT(24), 
                           KEY(23) => K_INPUT(23), KEY(22) => K_INPUT(22), 
                           KEY(21) => K_INPUT(21), KEY(20) => K_INPUT(20), 
                           KEY(19) => K_INPUT(19), KEY(18) => K_INPUT(18), 
                           KEY(17) => K_INPUT(17), KEY(16) => K_INPUT(16), 
                           KEY(15) => K_INPUT(15), KEY(14) => K_INPUT(14), 
                           KEY(13) => K_INPUT(13), KEY(12) => K_INPUT(12), 
                           KEY(11) => K_INPUT(11), KEY(10) => K_INPUT(10), 
                           KEY(9) => K_INPUT(9), KEY(8) => K_INPUT(8), KEY(7) 
                           => K_INPUT(7), KEY(6) => K_INPUT(6), KEY(5) => 
                           K_INPUT(5), KEY(4) => K_INPUT(4), KEY(3) => 
                           K_INPUT(3), KEY(2) => K_INPUT(2), KEY(1) => 
                           K_INPUT(1), KEY(0) => K_INPUT(0), IV(79) => 
                           IV_INPUT(79), IV(78) => IV_INPUT(78), IV(77) => 
                           IV_INPUT(77), IV(76) => IV_INPUT(76), IV(75) => 
                           IV_INPUT(75), IV(74) => IV_INPUT(74), IV(73) => 
                           IV_INPUT(73), IV(72) => IV_INPUT(72), IV(71) => 
                           IV_INPUT(71), IV(70) => IV_INPUT(70), IV(69) => 
                           IV_INPUT(69), IV(68) => IV_INPUT(68), IV(67) => 
                           IV_INPUT(67), IV(66) => IV_INPUT(66), IV(65) => 
                           IV_INPUT(65), IV(64) => IV_INPUT(64), IV(63) => 
                           IV_INPUT(63), IV(62) => IV_INPUT(62), IV(61) => 
                           IV_INPUT(61), IV(60) => IV_INPUT(60), IV(59) => 
                           IV_INPUT(59), IV(58) => IV_INPUT(58), IV(57) => 
                           IV_INPUT(57), IV(56) => IV_INPUT(56), IV(55) => 
                           IV_INPUT(55), IV(54) => IV_INPUT(54), IV(53) => 
                           IV_INPUT(53), IV(52) => IV_INPUT(52), IV(51) => 
                           IV_INPUT(51), IV(50) => IV_INPUT(50), IV(49) => 
                           IV_INPUT(49), IV(48) => IV_INPUT(48), IV(47) => 
                           IV_INPUT(47), IV(46) => IV_INPUT(46), IV(45) => 
                           IV_INPUT(45), IV(44) => IV_INPUT(44), IV(43) => 
                           IV_INPUT(43), IV(42) => IV_INPUT(42), IV(41) => 
                           IV_INPUT(41), IV(40) => IV_INPUT(40), IV(39) => 
                           IV_INPUT(39), IV(38) => IV_INPUT(38), IV(37) => 
                           IV_INPUT(37), IV(36) => IV_INPUT(36), IV(35) => 
                           IV_INPUT(35), IV(34) => IV_INPUT(34), IV(33) => 
                           IV_INPUT(33), IV(32) => IV_INPUT(32), IV(31) => 
                           IV_INPUT(31), IV(30) => IV_INPUT(30), IV(29) => 
                           IV_INPUT(29), IV(28) => IV_INPUT(28), IV(27) => 
                           IV_INPUT(27), IV(26) => IV_INPUT(26), IV(25) => 
                           IV_INPUT(25), IV(24) => IV_INPUT(24), IV(23) => 
                           IV_INPUT(23), IV(22) => IV_INPUT(22), IV(21) => 
                           IV_INPUT(21), IV(20) => IV_INPUT(20), IV(19) => 
                           IV_INPUT(19), IV(18) => IV_INPUT(18), IV(17) => 
                           IV_INPUT(17), IV(16) => IV_INPUT(16), IV(15) => 
                           IV_INPUT(15), IV(14) => IV_INPUT(14), IV(13) => 
                           IV_INPUT(13), IV(12) => IV_INPUT(12), IV(11) => 
                           IV_INPUT(11), IV(10) => IV_INPUT(10), IV(9) => 
                           IV_INPUT(9), IV(8) => IV_INPUT(8), IV(7) => 
                           IV_INPUT(7), IV(6) => IV_INPUT(6), IV(5) => 
                           IV_INPUT(5), IV(4) => IV_INPUT(4), IV(3) => 
                           IV_INPUT(3), IV(2) => IV_INPUT(2), IV(1) => 
                           IV_INPUT(1), IV(0) => IV_INPUT(0), KEY_OUT => 
                           CORE_OUT);
   add_184 : Trivium_Generator_vvect_DW01_inc_0 port map( A(10) => 
                           INIT_COUNTER_10_port, A(9) => INIT_COUNTER_9_port, 
                           A(8) => INIT_COUNTER_8_port, A(7) => 
                           INIT_COUNTER_7_port, A(6) => INIT_COUNTER_6_port, 
                           A(5) => INIT_COUNTER_5_port, A(4) => 
                           INIT_COUNTER_4_port, A(3) => INIT_COUNTER_3_port, 
                           A(2) => INIT_COUNTER_2_port, A(1) => 
                           INIT_COUNTER_1_port, A(0) => INIT_COUNTER_0_port, 
                           SUM(10) => N66, SUM(9) => N65, SUM(8) => N64, SUM(7)
                           => N63, SUM(6) => N62, SUM(5) => N61, SUM(4) => N60,
                           SUM(3) => N59, SUM(2) => N58, SUM(1) => N57, SUM(0) 
                           => N56);
   U62 : INV3 port map( A => n32, Q => n75);
   U63 : NAND31 port map( A => n33, B => n34, C => n35, Q => n32);
   U64 : NOR21 port map( A => n35, B => n23_port, Q => n37);
   U65 : NOR21 port map( A => n23_port, B => n29, Q => n35);
   U66 : INV3 port map( A => n34, Q => n76);
   U67 : INV3 port map( A => n33, Q => n74);
   U68 : INV3 port map( A => n36, Q => n62_port);
   U69 : AOI221 port map( A => n35, B => INIT_COUNTER_10_port, C => n37, D => 
                           N66, Q => n36);
   U70 : INV3 port map( A => n38, Q => n63_port);
   U71 : AOI221 port map( A => n35, B => INIT_COUNTER_9_port, C => n37, D => 
                           N65, Q => n38);
   U72 : INV3 port map( A => n39, Q => n64_port);
   U73 : AOI221 port map( A => n35, B => INIT_COUNTER_8_port, C => n37, D => 
                           N64, Q => n39);
   U74 : INV3 port map( A => n40, Q => n65_port);
   U75 : AOI221 port map( A => n35, B => INIT_COUNTER_7_port, C => n37, D => 
                           N63, Q => n40);
   U76 : INV3 port map( A => n41, Q => n66_port);
   U77 : AOI221 port map( A => n35, B => INIT_COUNTER_6_port, C => n37, D => 
                           N62, Q => n41);
   U78 : NOR21 port map( A => pr_state_1_port, B => pr_state_2_port, Q => 
                           n23_port);
   U79 : NOR31 port map( A => n18, B => pr_state_2_port, C => n17, Q => n29);
   U80 : INV3 port map( A => n53, Q => n72);
   U81 : NAND41 port map( A => INIT_COUNTER_0_port, B => INIT_COUNTER_1_port, C
                           => n77, D => n54, Q => n53);
   U82 : INV3 port map( A => n56_port, Q => n77);
   U83 : NOR40 port map( A => n55, B => INIT_COUNTER_7_port, C => 
                           INIT_COUNTER_9_port, D => INIT_COUNTER_8_port, Q => 
                           n54);
   U84 : OAI311 port map( A => n30, B => n23_port, C => n74, D => n31, Q => 
                           n59_port);
   U85 : NAND22 port map( A => CORE_CNTRL_0_port, B => n75, Q => n31);
   U86 : OAI311 port map( A => n18, B => PLNTXT_EN, C => n29, D => n32, Q => 
                           n30);
   U87 : INV3 port map( A => n28, Q => n73);
   U88 : AOI2111 port map( A => n75, B => CORE_CNTRL_1_port, C => n74, D => n29
                           , Q => n28);
   U89 : INV3 port map( A => n47, Q => n61_port);
   U90 : AOI221 port map( A => n35, B => INIT_COUNTER_0_port, C => n37, D => 
                           N56, Q => n47);
   U91 : NAND31 port map( A => INIT_COUNTER_6_port, B => INIT_COUNTER_10_port, 
                           C => INIT_COUNTER_5_port, Q => n55);
   U92 : INV3 port map( A => n44, Q => n69);
   U93 : AOI221 port map( A => n35, B => INIT_COUNTER_3_port, C => n37, D => 
                           N59, Q => n44);
   U94 : INV3 port map( A => n46, Q => n71);
   U95 : AOI221 port map( A => n35, B => INIT_COUNTER_1_port, C => n37, D => 
                           N57, Q => n46);
   U96 : INV3 port map( A => n45, Q => n70);
   U97 : AOI221 port map( A => n35, B => INIT_COUNTER_2_port, C => n37, D => 
                           N58, Q => n45);
   U98 : AOI211 port map( A => n34, B => n51, C => RST, Q => N21);
   U99 : NOR21 port map( A => n72, B => n17, Q => n52);
   U100 : OAI311 port map( A => n22_port, B => n23_port, C => n24, D => n25, Q 
                           => n57_port);
   U101 : NAND22 port map( A => CIPHERTEXT_OUT_port, B => n24, Q => n25);
   U102 : AOI311 port map( A => PLNTXT_EN, B => pr_state_0_port, C => n76, D =>
                           n23_port, Q => n24);
   U103 : XNR21 port map( A => PLAINTEXT_IN, B => CORE_OUT, Q => n22_port);
   U104 : AOI211 port map( A => n33, B => n49, C => RST, Q => N22);
   U105 : NOR21 port map( A => pr_state_2_port, B => n72, Q => n50);
   U106 : INV3 port map( A => n42, Q => n67);
   U107 : AOI221 port map( A => n35, B => INIT_COUNTER_5_port, C => n37, D => 
                           N61, Q => n42);
   U108 : INV3 port map( A => n43, Q => n68);
   U109 : AOI221 port map( A => n35, B => INIT_COUNTER_4_port, C => n37, D => 
                           N60, Q => n43);
   U110 : NAND31 port map( A => n18, B => n15, C => pr_state_1_port, Q => n33);
   U111 : NAND31 port map( A => INIT_COUNTER_2_port, B => INIT_COUNTER_4_port, 
                           C => INIT_COUNTER_3_port, Q => n56_port);
   U112 : NAND22 port map( A => pr_state_2_port, B => n17, Q => n34);
   U113 : OAI311 port map( A => n60_port, B => n23_port, C => n26, D => n27, Q 
                           => n58_port);
   U114 : INV3 port map( A => PLNTXT_EN, Q => n60_port);
   U115 : NAND22 port map( A => CPHRTXT_RDY_port, B => n26, Q => n27);
   U116 : AOI211 port map( A => pr_state_0_port, B => n76, C => n23_port, Q => 
                           n26);
   U117 : NOR21 port map( A => RST, B => n48, Q => N23);
   U118 : AOI211 port map( A => n29, B => n72, C => n76, Q => n48);

end SYN_Behavioral;
