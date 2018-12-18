//
// Verilog description for cell Trivium_Generator_vvect, 
// Mon Dec 17 15:34:19 2018
//
// Precision RTL Synthesis, 2014a.1_64-bit//


module Trivium_Generator_vvect ( SYS_CLK, RST, PLAINTEXT_IN, CIPHERTEXT_OUT, 
                                 K_INPUT, IV_INPUT, PLNTXT_EN, CPHRTXT_RDY ) ;

    input SYS_CLK ;
    input RST ;
    input PLAINTEXT_IN ;
    output CIPHERTEXT_OUT ;
    input [79:0]K_INPUT ;
    input [79:0]IV_INPUT ;
    input PLNTXT_EN ;
    output CPHRTXT_RDY ;

    wire CIPHERTEXT_OUT_1_0, CPHRTXT_RDY_1_0;
    wire [1:0]CORE_CNTRL;
    wire [10:0]INIT_COUNTER;
    wire [5:0]pr_state;
    wire \inc_d(0)  , nx8474z1, \inc_d(1)  , nx8475z1, \inc_d(2)  , nx8476z1, 
         \inc_d(3)  , nx8477z1, \inc_d(4)  , nx51683z1, \inc_d(5)  , nx8479z1, 
         \inc_d(6)  , nx8480z1, \inc_d(7)  , nx8481z1, \inc_d(8)  , nx51679z1, 
         \inc_d(9)  , nx20595z1, \inc_d(10)  ;
    wire SYS_CLK_int;
    wire RST_int, PLAINTEXT_IN_int;
    wire [79:0]K_INPUT_int;
    wire [79:0]IV_INPUT_int;
    wire PLNTXT_EN_int, nx55036z1, nx27334z1, nx8473z2, nx45059z1, nx47053z1, 
         nx8473z1, nx51271z1, nx17096z1, nx49344z2, nx49344z1, nx55036z2, 
         nx28331z1, nx45059z4, nx45059z3, nx45059z2, nx46056z1;



    FDRE \reg_q(10)  (.Q (INIT_COUNTER[10]), .C (SYS_CLK_int), .CE (nx17096z1), 
         .D (\inc_d(10)  ), .R (nx51271z1)) ;
    FDRE \reg_q(9)  (.Q (INIT_COUNTER[9]), .C (SYS_CLK_int), .CE (nx17096z1), .D (
         \inc_d(9)  ), .R (nx51271z1)) ;
    FDRE \reg_q(8)  (.Q (INIT_COUNTER[8]), .C (SYS_CLK_int), .CE (nx17096z1), .D (
         \inc_d(8)  ), .R (nx51271z1)) ;
    FDRE \reg_q(7)  (.Q (INIT_COUNTER[7]), .C (SYS_CLK_int), .CE (nx17096z1), .D (
         \inc_d(7)  ), .R (nx51271z1)) ;
    FDRE \reg_q(6)  (.Q (INIT_COUNTER[6]), .C (SYS_CLK_int), .CE (nx17096z1), .D (
         \inc_d(6)  ), .R (nx51271z1)) ;
    FDRE \reg_q(5)  (.Q (INIT_COUNTER[5]), .C (SYS_CLK_int), .CE (nx17096z1), .D (
         \inc_d(5)  ), .R (nx51271z1)) ;
    FDRE \reg_q(4)  (.Q (INIT_COUNTER[4]), .C (SYS_CLK_int), .CE (nx17096z1), .D (
         \inc_d(4)  ), .R (nx51271z1)) ;
    FDRE \reg_q(3)  (.Q (INIT_COUNTER[3]), .C (SYS_CLK_int), .CE (nx17096z1), .D (
         \inc_d(3)  ), .R (nx51271z1)) ;
    FDRE \reg_q(2)  (.Q (INIT_COUNTER[2]), .C (SYS_CLK_int), .CE (nx17096z1), .D (
         \inc_d(2)  ), .R (nx51271z1)) ;
    FDRE \reg_q(1)  (.Q (INIT_COUNTER[1]), .C (SYS_CLK_int), .CE (nx17096z1), .D (
         \inc_d(1)  ), .R (nx51271z1)) ;
    FDRE \reg_q(0)  (.Q (INIT_COUNTER[0]), .C (SYS_CLK_int), .CE (nx17096z1), .D (
         \inc_d(0)  ), .R (nx51271z1)) ;
    XORCY xorcy_0 (.O (\inc_d(0)  ), .CI (nx8473z1), .LI (INIT_COUNTER[0])) ;
    XORCY xorcy_1 (.O (\inc_d(1)  ), .CI (nx8474z1), .LI (INIT_COUNTER[1])) ;
    XORCY xorcy_2 (.O (\inc_d(2)  ), .CI (nx8475z1), .LI (INIT_COUNTER[2])) ;
    XORCY xorcy_3 (.O (\inc_d(3)  ), .CI (nx8476z1), .LI (INIT_COUNTER[3])) ;
    XORCY xorcy_4 (.O (\inc_d(4)  ), .CI (nx8477z1), .LI (INIT_COUNTER[4])) ;
    XORCY xorcy_5 (.O (\inc_d(5)  ), .CI (nx51683z1), .LI (INIT_COUNTER[5])) ;
    XORCY xorcy_6 (.O (\inc_d(6)  ), .CI (nx8479z1), .LI (INIT_COUNTER[6])) ;
    XORCY xorcy_7 (.O (\inc_d(7)  ), .CI (nx8480z1), .LI (INIT_COUNTER[7])) ;
    XORCY xorcy_8 (.O (\inc_d(8)  ), .CI (nx8481z1), .LI (INIT_COUNTER[8])) ;
    XORCY xorcy_9 (.O (\inc_d(9)  ), .CI (nx51679z1), .LI (INIT_COUNTER[9])) ;
    XORCY xorcy_10 (.O (\inc_d(10)  ), .CI (nx20595z1), .LI (INIT_COUNTER[10])
          ) ;
    OBUF CPHRTXT_RDY_obuf (.O (CPHRTXT_RDY), .I (CPHRTXT_RDY_1_0)) ;
    OBUF CIPHERTEXT_OUT_obuf (.O (CIPHERTEXT_OUT), .I (CIPHERTEXT_OUT_1_0)) ;
    IBUF PLNTXT_EN_ibuf (.O (PLNTXT_EN_int), .I (PLNTXT_EN)) ;
    IBUF \IV_INPUT_ibuf(0)  (.O (IV_INPUT_int[0]), .I (IV_INPUT[0])) ;
    IBUF \IV_INPUT_ibuf(1)  (.O (IV_INPUT_int[1]), .I (IV_INPUT[1])) ;
    IBUF \IV_INPUT_ibuf(2)  (.O (IV_INPUT_int[2]), .I (IV_INPUT[2])) ;
    IBUF \IV_INPUT_ibuf(3)  (.O (IV_INPUT_int[3]), .I (IV_INPUT[3])) ;
    IBUF \IV_INPUT_ibuf(4)  (.O (IV_INPUT_int[4]), .I (IV_INPUT[4])) ;
    IBUF \IV_INPUT_ibuf(5)  (.O (IV_INPUT_int[5]), .I (IV_INPUT[5])) ;
    IBUF \IV_INPUT_ibuf(6)  (.O (IV_INPUT_int[6]), .I (IV_INPUT[6])) ;
    IBUF \IV_INPUT_ibuf(7)  (.O (IV_INPUT_int[7]), .I (IV_INPUT[7])) ;
    IBUF \IV_INPUT_ibuf(8)  (.O (IV_INPUT_int[8]), .I (IV_INPUT[8])) ;
    IBUF \IV_INPUT_ibuf(9)  (.O (IV_INPUT_int[9]), .I (IV_INPUT[9])) ;
    IBUF \IV_INPUT_ibuf(10)  (.O (IV_INPUT_int[10]), .I (IV_INPUT[10])) ;
    IBUF \IV_INPUT_ibuf(11)  (.O (IV_INPUT_int[11]), .I (IV_INPUT[11])) ;
    IBUF \IV_INPUT_ibuf(12)  (.O (IV_INPUT_int[12]), .I (IV_INPUT[12])) ;
    IBUF \IV_INPUT_ibuf(13)  (.O (IV_INPUT_int[13]), .I (IV_INPUT[13])) ;
    IBUF \IV_INPUT_ibuf(14)  (.O (IV_INPUT_int[14]), .I (IV_INPUT[14])) ;
    IBUF \IV_INPUT_ibuf(15)  (.O (IV_INPUT_int[15]), .I (IV_INPUT[15])) ;
    IBUF \IV_INPUT_ibuf(16)  (.O (IV_INPUT_int[16]), .I (IV_INPUT[16])) ;
    IBUF \IV_INPUT_ibuf(17)  (.O (IV_INPUT_int[17]), .I (IV_INPUT[17])) ;
    IBUF \IV_INPUT_ibuf(18)  (.O (IV_INPUT_int[18]), .I (IV_INPUT[18])) ;
    IBUF \IV_INPUT_ibuf(19)  (.O (IV_INPUT_int[19]), .I (IV_INPUT[19])) ;
    IBUF \IV_INPUT_ibuf(20)  (.O (IV_INPUT_int[20]), .I (IV_INPUT[20])) ;
    IBUF \IV_INPUT_ibuf(21)  (.O (IV_INPUT_int[21]), .I (IV_INPUT[21])) ;
    IBUF \IV_INPUT_ibuf(22)  (.O (IV_INPUT_int[22]), .I (IV_INPUT[22])) ;
    IBUF \IV_INPUT_ibuf(23)  (.O (IV_INPUT_int[23]), .I (IV_INPUT[23])) ;
    IBUF \IV_INPUT_ibuf(24)  (.O (IV_INPUT_int[24]), .I (IV_INPUT[24])) ;
    IBUF \IV_INPUT_ibuf(25)  (.O (IV_INPUT_int[25]), .I (IV_INPUT[25])) ;
    IBUF \IV_INPUT_ibuf(26)  (.O (IV_INPUT_int[26]), .I (IV_INPUT[26])) ;
    IBUF \IV_INPUT_ibuf(27)  (.O (IV_INPUT_int[27]), .I (IV_INPUT[27])) ;
    IBUF \IV_INPUT_ibuf(28)  (.O (IV_INPUT_int[28]), .I (IV_INPUT[28])) ;
    IBUF \IV_INPUT_ibuf(29)  (.O (IV_INPUT_int[29]), .I (IV_INPUT[29])) ;
    IBUF \IV_INPUT_ibuf(30)  (.O (IV_INPUT_int[30]), .I (IV_INPUT[30])) ;
    IBUF \IV_INPUT_ibuf(31)  (.O (IV_INPUT_int[31]), .I (IV_INPUT[31])) ;
    IBUF \IV_INPUT_ibuf(32)  (.O (IV_INPUT_int[32]), .I (IV_INPUT[32])) ;
    IBUF \IV_INPUT_ibuf(33)  (.O (IV_INPUT_int[33]), .I (IV_INPUT[33])) ;
    IBUF \IV_INPUT_ibuf(34)  (.O (IV_INPUT_int[34]), .I (IV_INPUT[34])) ;
    IBUF \IV_INPUT_ibuf(35)  (.O (IV_INPUT_int[35]), .I (IV_INPUT[35])) ;
    IBUF \IV_INPUT_ibuf(36)  (.O (IV_INPUT_int[36]), .I (IV_INPUT[36])) ;
    IBUF \IV_INPUT_ibuf(37)  (.O (IV_INPUT_int[37]), .I (IV_INPUT[37])) ;
    IBUF \IV_INPUT_ibuf(38)  (.O (IV_INPUT_int[38]), .I (IV_INPUT[38])) ;
    IBUF \IV_INPUT_ibuf(39)  (.O (IV_INPUT_int[39]), .I (IV_INPUT[39])) ;
    IBUF \IV_INPUT_ibuf(40)  (.O (IV_INPUT_int[40]), .I (IV_INPUT[40])) ;
    IBUF \IV_INPUT_ibuf(41)  (.O (IV_INPUT_int[41]), .I (IV_INPUT[41])) ;
    IBUF \IV_INPUT_ibuf(42)  (.O (IV_INPUT_int[42]), .I (IV_INPUT[42])) ;
    IBUF \IV_INPUT_ibuf(43)  (.O (IV_INPUT_int[43]), .I (IV_INPUT[43])) ;
    IBUF \IV_INPUT_ibuf(44)  (.O (IV_INPUT_int[44]), .I (IV_INPUT[44])) ;
    IBUF \IV_INPUT_ibuf(45)  (.O (IV_INPUT_int[45]), .I (IV_INPUT[45])) ;
    IBUF \IV_INPUT_ibuf(46)  (.O (IV_INPUT_int[46]), .I (IV_INPUT[46])) ;
    IBUF \IV_INPUT_ibuf(47)  (.O (IV_INPUT_int[47]), .I (IV_INPUT[47])) ;
    IBUF \IV_INPUT_ibuf(48)  (.O (IV_INPUT_int[48]), .I (IV_INPUT[48])) ;
    IBUF \IV_INPUT_ibuf(49)  (.O (IV_INPUT_int[49]), .I (IV_INPUT[49])) ;
    IBUF \IV_INPUT_ibuf(50)  (.O (IV_INPUT_int[50]), .I (IV_INPUT[50])) ;
    IBUF \IV_INPUT_ibuf(51)  (.O (IV_INPUT_int[51]), .I (IV_INPUT[51])) ;
    IBUF \IV_INPUT_ibuf(52)  (.O (IV_INPUT_int[52]), .I (IV_INPUT[52])) ;
    IBUF \IV_INPUT_ibuf(53)  (.O (IV_INPUT_int[53]), .I (IV_INPUT[53])) ;
    IBUF \IV_INPUT_ibuf(54)  (.O (IV_INPUT_int[54]), .I (IV_INPUT[54])) ;
    IBUF \IV_INPUT_ibuf(55)  (.O (IV_INPUT_int[55]), .I (IV_INPUT[55])) ;
    IBUF \IV_INPUT_ibuf(56)  (.O (IV_INPUT_int[56]), .I (IV_INPUT[56])) ;
    IBUF \IV_INPUT_ibuf(57)  (.O (IV_INPUT_int[57]), .I (IV_INPUT[57])) ;
    IBUF \IV_INPUT_ibuf(58)  (.O (IV_INPUT_int[58]), .I (IV_INPUT[58])) ;
    IBUF \IV_INPUT_ibuf(59)  (.O (IV_INPUT_int[59]), .I (IV_INPUT[59])) ;
    IBUF \IV_INPUT_ibuf(60)  (.O (IV_INPUT_int[60]), .I (IV_INPUT[60])) ;
    IBUF \IV_INPUT_ibuf(61)  (.O (IV_INPUT_int[61]), .I (IV_INPUT[61])) ;
    IBUF \IV_INPUT_ibuf(62)  (.O (IV_INPUT_int[62]), .I (IV_INPUT[62])) ;
    IBUF \IV_INPUT_ibuf(63)  (.O (IV_INPUT_int[63]), .I (IV_INPUT[63])) ;
    IBUF \IV_INPUT_ibuf(64)  (.O (IV_INPUT_int[64]), .I (IV_INPUT[64])) ;
    IBUF \IV_INPUT_ibuf(65)  (.O (IV_INPUT_int[65]), .I (IV_INPUT[65])) ;
    IBUF \IV_INPUT_ibuf(66)  (.O (IV_INPUT_int[66]), .I (IV_INPUT[66])) ;
    IBUF \IV_INPUT_ibuf(67)  (.O (IV_INPUT_int[67]), .I (IV_INPUT[67])) ;
    IBUF \IV_INPUT_ibuf(68)  (.O (IV_INPUT_int[68]), .I (IV_INPUT[68])) ;
    IBUF \IV_INPUT_ibuf(69)  (.O (IV_INPUT_int[69]), .I (IV_INPUT[69])) ;
    IBUF \IV_INPUT_ibuf(70)  (.O (IV_INPUT_int[70]), .I (IV_INPUT[70])) ;
    IBUF \IV_INPUT_ibuf(71)  (.O (IV_INPUT_int[71]), .I (IV_INPUT[71])) ;
    IBUF \IV_INPUT_ibuf(72)  (.O (IV_INPUT_int[72]), .I (IV_INPUT[72])) ;
    IBUF \IV_INPUT_ibuf(73)  (.O (IV_INPUT_int[73]), .I (IV_INPUT[73])) ;
    IBUF \IV_INPUT_ibuf(74)  (.O (IV_INPUT_int[74]), .I (IV_INPUT[74])) ;
    IBUF \IV_INPUT_ibuf(75)  (.O (IV_INPUT_int[75]), .I (IV_INPUT[75])) ;
    IBUF \IV_INPUT_ibuf(76)  (.O (IV_INPUT_int[76]), .I (IV_INPUT[76])) ;
    IBUF \IV_INPUT_ibuf(77)  (.O (IV_INPUT_int[77]), .I (IV_INPUT[77])) ;
    IBUF \IV_INPUT_ibuf(78)  (.O (IV_INPUT_int[78]), .I (IV_INPUT[78])) ;
    IBUF \IV_INPUT_ibuf(79)  (.O (IV_INPUT_int[79]), .I (IV_INPUT[79])) ;
    IBUF \K_INPUT_ibuf(0)  (.O (K_INPUT_int[0]), .I (K_INPUT[0])) ;
    IBUF \K_INPUT_ibuf(1)  (.O (K_INPUT_int[1]), .I (K_INPUT[1])) ;
    IBUF \K_INPUT_ibuf(2)  (.O (K_INPUT_int[2]), .I (K_INPUT[2])) ;
    IBUF \K_INPUT_ibuf(3)  (.O (K_INPUT_int[3]), .I (K_INPUT[3])) ;
    IBUF \K_INPUT_ibuf(4)  (.O (K_INPUT_int[4]), .I (K_INPUT[4])) ;
    IBUF \K_INPUT_ibuf(5)  (.O (K_INPUT_int[5]), .I (K_INPUT[5])) ;
    IBUF \K_INPUT_ibuf(6)  (.O (K_INPUT_int[6]), .I (K_INPUT[6])) ;
    IBUF \K_INPUT_ibuf(7)  (.O (K_INPUT_int[7]), .I (K_INPUT[7])) ;
    IBUF \K_INPUT_ibuf(8)  (.O (K_INPUT_int[8]), .I (K_INPUT[8])) ;
    IBUF \K_INPUT_ibuf(9)  (.O (K_INPUT_int[9]), .I (K_INPUT[9])) ;
    IBUF \K_INPUT_ibuf(10)  (.O (K_INPUT_int[10]), .I (K_INPUT[10])) ;
    IBUF \K_INPUT_ibuf(11)  (.O (K_INPUT_int[11]), .I (K_INPUT[11])) ;
    IBUF \K_INPUT_ibuf(12)  (.O (K_INPUT_int[12]), .I (K_INPUT[12])) ;
    IBUF \K_INPUT_ibuf(13)  (.O (K_INPUT_int[13]), .I (K_INPUT[13])) ;
    IBUF \K_INPUT_ibuf(14)  (.O (K_INPUT_int[14]), .I (K_INPUT[14])) ;
    IBUF \K_INPUT_ibuf(15)  (.O (K_INPUT_int[15]), .I (K_INPUT[15])) ;
    IBUF \K_INPUT_ibuf(16)  (.O (K_INPUT_int[16]), .I (K_INPUT[16])) ;
    IBUF \K_INPUT_ibuf(17)  (.O (K_INPUT_int[17]), .I (K_INPUT[17])) ;
    IBUF \K_INPUT_ibuf(18)  (.O (K_INPUT_int[18]), .I (K_INPUT[18])) ;
    IBUF \K_INPUT_ibuf(19)  (.O (K_INPUT_int[19]), .I (K_INPUT[19])) ;
    IBUF \K_INPUT_ibuf(20)  (.O (K_INPUT_int[20]), .I (K_INPUT[20])) ;
    IBUF \K_INPUT_ibuf(21)  (.O (K_INPUT_int[21]), .I (K_INPUT[21])) ;
    IBUF \K_INPUT_ibuf(22)  (.O (K_INPUT_int[22]), .I (K_INPUT[22])) ;
    IBUF \K_INPUT_ibuf(23)  (.O (K_INPUT_int[23]), .I (K_INPUT[23])) ;
    IBUF \K_INPUT_ibuf(24)  (.O (K_INPUT_int[24]), .I (K_INPUT[24])) ;
    IBUF \K_INPUT_ibuf(25)  (.O (K_INPUT_int[25]), .I (K_INPUT[25])) ;
    IBUF \K_INPUT_ibuf(26)  (.O (K_INPUT_int[26]), .I (K_INPUT[26])) ;
    IBUF \K_INPUT_ibuf(27)  (.O (K_INPUT_int[27]), .I (K_INPUT[27])) ;
    IBUF \K_INPUT_ibuf(28)  (.O (K_INPUT_int[28]), .I (K_INPUT[28])) ;
    IBUF \K_INPUT_ibuf(29)  (.O (K_INPUT_int[29]), .I (K_INPUT[29])) ;
    IBUF \K_INPUT_ibuf(30)  (.O (K_INPUT_int[30]), .I (K_INPUT[30])) ;
    IBUF \K_INPUT_ibuf(31)  (.O (K_INPUT_int[31]), .I (K_INPUT[31])) ;
    IBUF \K_INPUT_ibuf(32)  (.O (K_INPUT_int[32]), .I (K_INPUT[32])) ;
    IBUF \K_INPUT_ibuf(33)  (.O (K_INPUT_int[33]), .I (K_INPUT[33])) ;
    IBUF \K_INPUT_ibuf(34)  (.O (K_INPUT_int[34]), .I (K_INPUT[34])) ;
    IBUF \K_INPUT_ibuf(35)  (.O (K_INPUT_int[35]), .I (K_INPUT[35])) ;
    IBUF \K_INPUT_ibuf(36)  (.O (K_INPUT_int[36]), .I (K_INPUT[36])) ;
    IBUF \K_INPUT_ibuf(37)  (.O (K_INPUT_int[37]), .I (K_INPUT[37])) ;
    IBUF \K_INPUT_ibuf(38)  (.O (K_INPUT_int[38]), .I (K_INPUT[38])) ;
    IBUF \K_INPUT_ibuf(39)  (.O (K_INPUT_int[39]), .I (K_INPUT[39])) ;
    IBUF \K_INPUT_ibuf(40)  (.O (K_INPUT_int[40]), .I (K_INPUT[40])) ;
    IBUF \K_INPUT_ibuf(41)  (.O (K_INPUT_int[41]), .I (K_INPUT[41])) ;
    IBUF \K_INPUT_ibuf(42)  (.O (K_INPUT_int[42]), .I (K_INPUT[42])) ;
    IBUF \K_INPUT_ibuf(43)  (.O (K_INPUT_int[43]), .I (K_INPUT[43])) ;
    IBUF \K_INPUT_ibuf(44)  (.O (K_INPUT_int[44]), .I (K_INPUT[44])) ;
    IBUF \K_INPUT_ibuf(45)  (.O (K_INPUT_int[45]), .I (K_INPUT[45])) ;
    IBUF \K_INPUT_ibuf(46)  (.O (K_INPUT_int[46]), .I (K_INPUT[46])) ;
    IBUF \K_INPUT_ibuf(47)  (.O (K_INPUT_int[47]), .I (K_INPUT[47])) ;
    IBUF \K_INPUT_ibuf(48)  (.O (K_INPUT_int[48]), .I (K_INPUT[48])) ;
    IBUF \K_INPUT_ibuf(49)  (.O (K_INPUT_int[49]), .I (K_INPUT[49])) ;
    IBUF \K_INPUT_ibuf(50)  (.O (K_INPUT_int[50]), .I (K_INPUT[50])) ;
    IBUF \K_INPUT_ibuf(51)  (.O (K_INPUT_int[51]), .I (K_INPUT[51])) ;
    IBUF \K_INPUT_ibuf(52)  (.O (K_INPUT_int[52]), .I (K_INPUT[52])) ;
    IBUF \K_INPUT_ibuf(53)  (.O (K_INPUT_int[53]), .I (K_INPUT[53])) ;
    IBUF \K_INPUT_ibuf(54)  (.O (K_INPUT_int[54]), .I (K_INPUT[54])) ;
    IBUF \K_INPUT_ibuf(55)  (.O (K_INPUT_int[55]), .I (K_INPUT[55])) ;
    IBUF \K_INPUT_ibuf(56)  (.O (K_INPUT_int[56]), .I (K_INPUT[56])) ;
    IBUF \K_INPUT_ibuf(57)  (.O (K_INPUT_int[57]), .I (K_INPUT[57])) ;
    IBUF \K_INPUT_ibuf(58)  (.O (K_INPUT_int[58]), .I (K_INPUT[58])) ;
    IBUF \K_INPUT_ibuf(59)  (.O (K_INPUT_int[59]), .I (K_INPUT[59])) ;
    IBUF \K_INPUT_ibuf(60)  (.O (K_INPUT_int[60]), .I (K_INPUT[60])) ;
    IBUF \K_INPUT_ibuf(61)  (.O (K_INPUT_int[61]), .I (K_INPUT[61])) ;
    IBUF \K_INPUT_ibuf(62)  (.O (K_INPUT_int[62]), .I (K_INPUT[62])) ;
    IBUF \K_INPUT_ibuf(63)  (.O (K_INPUT_int[63]), .I (K_INPUT[63])) ;
    IBUF \K_INPUT_ibuf(64)  (.O (K_INPUT_int[64]), .I (K_INPUT[64])) ;
    IBUF \K_INPUT_ibuf(65)  (.O (K_INPUT_int[65]), .I (K_INPUT[65])) ;
    IBUF \K_INPUT_ibuf(66)  (.O (K_INPUT_int[66]), .I (K_INPUT[66])) ;
    IBUF \K_INPUT_ibuf(67)  (.O (K_INPUT_int[67]), .I (K_INPUT[67])) ;
    IBUF \K_INPUT_ibuf(68)  (.O (K_INPUT_int[68]), .I (K_INPUT[68])) ;
    IBUF \K_INPUT_ibuf(69)  (.O (K_INPUT_int[69]), .I (K_INPUT[69])) ;
    IBUF \K_INPUT_ibuf(70)  (.O (K_INPUT_int[70]), .I (K_INPUT[70])) ;
    IBUF \K_INPUT_ibuf(71)  (.O (K_INPUT_int[71]), .I (K_INPUT[71])) ;
    IBUF \K_INPUT_ibuf(72)  (.O (K_INPUT_int[72]), .I (K_INPUT[72])) ;
    IBUF \K_INPUT_ibuf(73)  (.O (K_INPUT_int[73]), .I (K_INPUT[73])) ;
    IBUF \K_INPUT_ibuf(74)  (.O (K_INPUT_int[74]), .I (K_INPUT[74])) ;
    IBUF \K_INPUT_ibuf(75)  (.O (K_INPUT_int[75]), .I (K_INPUT[75])) ;
    IBUF \K_INPUT_ibuf(76)  (.O (K_INPUT_int[76]), .I (K_INPUT[76])) ;
    IBUF \K_INPUT_ibuf(77)  (.O (K_INPUT_int[77]), .I (K_INPUT[77])) ;
    IBUF \K_INPUT_ibuf(78)  (.O (K_INPUT_int[78]), .I (K_INPUT[78])) ;
    IBUF \K_INPUT_ibuf(79)  (.O (K_INPUT_int[79]), .I (K_INPUT[79])) ;
    IBUF PLAINTEXT_IN_ibuf (.O (PLAINTEXT_IN_int), .I (PLAINTEXT_IN)) ;
    IBUF RST_ibuf (.O (RST_int), .I (RST)) ;
    (* HLUTNM = "LUT62_2_2" *)
    LUT3 ix55036z1568 (.O (nx55036z1), .I0 (pr_state[5]), .I1 (pr_state[1]), .I2 (
         pr_state[0])) ;
         defparam ix55036z1568.INIT = 8'hFE;
    (* HLUTNM = "LUT62_2_4" *)
    LUT2 ix27334z1328 (.O (nx27334z1), .I0 (pr_state[3]), .I1 (pr_state[2])) ;
         defparam ix27334z1328.INIT = 4'hE;
    GND ps_gnd (.G (nx8473z2)) ;
    LUT6 ix45059z1314 (.O (nx45059z1), .I0 (nx45059z2), .I1 (nx45059z3), .I2 (
         nx45059z4), .I3 (INIT_COUNTER[10]), .I4 (pr_state[3]), .I5 (pr_state[2]
         )) ;
         defparam ix45059z1314.INIT = 64'hFFFFFFFF7FFF0000;
    (* HLUTNM = "LUT62_2_4" *)
    LUT2 ix47053z1328 (.O (nx47053z1), .I0 (pr_state[5]), .I1 (pr_state[4])) ;
         defparam ix47053z1328.INIT = 4'hE;
    VCC ps_vcc (.P (nx8473z1)) ;
    (* HLUTNM = "LUT62_2_3" *)
    LUT2 ix51271z1328 (.O (nx51271z1), .I0 (pr_state[1]), .I1 (pr_state[0])) ;
         defparam ix51271z1328.INIT = 4'hE;
    (* HLUTNM = "LUT62_2_2" *)
    LUT3 ix17096z1568 (.O (nx17096z1), .I0 (pr_state[3]), .I1 (pr_state[1]), .I2 (
         pr_state[0])) ;
         defparam ix17096z1568.INIT = 8'hFE;
    (* HLUTNM = "LUT62_2_1" *)
    LUT4 ix49344z886 (.O (nx49344z1), .I0 (pr_state[5]), .I1 (pr_state[1]), .I2 (
         pr_state[0]), .I3 (PLNTXT_EN_int)) ;
         defparam ix49344z886.INIT = 16'hFE54;
    (* HLUTNM = "LUT62_2_3" *)
    LUT2 ix55036z1323 (.O (nx55036z2), .I0 (pr_state[5]), .I1 (PLNTXT_EN_int)) ;
         defparam ix55036z1323.INIT = 4'h8;
    (* HLUTNM = "LUT62_2_1" *)
    LUT5 ix28331z1315 (.O (nx28331z1), .I0 (pr_state[5]), .I1 (pr_state[2]), .I2 (
         pr_state[1]), .I3 (pr_state[0]), .I4 (PLNTXT_EN_int)) ;
         defparam ix28331z1315.INIT = 32'h00030001;
    LUT4 ix45059z17701 (.O (nx45059z4), .I0 (INIT_COUNTER[8]), .I1 (
         INIT_COUNTER[6]), .I2 (INIT_COUNTER[2]), .I3 (INIT_COUNTER[1])) ;
         defparam ix45059z17701.INIT = 16'h4000;
    LUT4 ix45059z5412 (.O (nx45059z3), .I0 (INIT_COUNTER[9]), .I1 (
         INIT_COUNTER[7]), .I2 (INIT_COUNTER[4]), .I3 (INIT_COUNTER[0])) ;
         defparam ix45059z5412.INIT = 16'h1000;
    LUT2 ix45059z1323 (.O (nx45059z2), .I0 (INIT_COUNTER[5]), .I1 (
         INIT_COUNTER[3])) ;
         defparam ix45059z1323.INIT = 4'h8;
    LUT6 ix46056z1314 (.O (nx46056z1), .I0 (INIT_COUNTER[10]), .I1 (
         INIT_COUNTER[5]), .I2 (INIT_COUNTER[3]), .I3 (pr_state[3]), .I4 (
         nx45059z3), .I5 (nx45059z4)) ;
         defparam ix46056z1314.INIT = 64'h8000000000000000;
    TRIVIUM_CORE_0 TRIV_CORE_GEN (.p_nbus_pr_state ({pr_state[5]}), .px716 (
                   nx49344z2), .p_PLAINTEXT_IN_int (PLAINTEXT_IN_int), .p_nbus_IV_INPUT_int (
                   {IV_INPUT_int[72],IV_INPUT_int[73],IV_INPUT_int[74],
                   IV_INPUT_int[75],IV_INPUT_int[76],IV_INPUT_int[77],
                   IV_INPUT_int[78],IV_INPUT_int[79],IV_INPUT_int[64],
                   IV_INPUT_int[65],IV_INPUT_int[66],IV_INPUT_int[67],
                   IV_INPUT_int[68],IV_INPUT_int[69],IV_INPUT_int[70],
                   IV_INPUT_int[71],IV_INPUT_int[56],IV_INPUT_int[57],
                   IV_INPUT_int[58],IV_INPUT_int[59],IV_INPUT_int[60],
                   IV_INPUT_int[61],IV_INPUT_int[62],IV_INPUT_int[63],
                   IV_INPUT_int[48],IV_INPUT_int[49],IV_INPUT_int[50],
                   IV_INPUT_int[51],IV_INPUT_int[52],IV_INPUT_int[53],
                   IV_INPUT_int[54],IV_INPUT_int[55],IV_INPUT_int[40],
                   IV_INPUT_int[41],IV_INPUT_int[42],IV_INPUT_int[43],
                   IV_INPUT_int[44],IV_INPUT_int[45],IV_INPUT_int[46],
                   IV_INPUT_int[47],IV_INPUT_int[32],IV_INPUT_int[33],
                   IV_INPUT_int[34],IV_INPUT_int[35],IV_INPUT_int[36],
                   IV_INPUT_int[37],IV_INPUT_int[38],IV_INPUT_int[39],
                   IV_INPUT_int[24],IV_INPUT_int[25],IV_INPUT_int[26],
                   IV_INPUT_int[27],IV_INPUT_int[28],IV_INPUT_int[29],
                   IV_INPUT_int[30],IV_INPUT_int[31],IV_INPUT_int[16],
                   IV_INPUT_int[17],IV_INPUT_int[18],IV_INPUT_int[19],
                   IV_INPUT_int[20],IV_INPUT_int[21],IV_INPUT_int[22],
                   IV_INPUT_int[23],IV_INPUT_int[8],IV_INPUT_int[9],
                   IV_INPUT_int[10],IV_INPUT_int[11],IV_INPUT_int[12],
                   IV_INPUT_int[13],IV_INPUT_int[14],IV_INPUT_int[15],
                   IV_INPUT_int[0],IV_INPUT_int[1],IV_INPUT_int[2],
                   IV_INPUT_int[3],IV_INPUT_int[4],IV_INPUT_int[5],
                   IV_INPUT_int[6],IV_INPUT_int[7]}), .p_nbus_K_INPUT_int ({
                   K_INPUT_int[72],K_INPUT_int[73],K_INPUT_int[74],
                   K_INPUT_int[75],K_INPUT_int[76],K_INPUT_int[77],
                   K_INPUT_int[78],K_INPUT_int[79],K_INPUT_int[64],
                   K_INPUT_int[65],K_INPUT_int[66],K_INPUT_int[67],
                   K_INPUT_int[68],K_INPUT_int[69],K_INPUT_int[70],
                   K_INPUT_int[71],K_INPUT_int[56],K_INPUT_int[57],
                   K_INPUT_int[58],K_INPUT_int[59],K_INPUT_int[60],
                   K_INPUT_int[61],K_INPUT_int[62],K_INPUT_int[63],
                   K_INPUT_int[48],K_INPUT_int[49],K_INPUT_int[50],
                   K_INPUT_int[51],K_INPUT_int[52],K_INPUT_int[53],
                   K_INPUT_int[54],K_INPUT_int[55],K_INPUT_int[40],
                   K_INPUT_int[41],K_INPUT_int[42],K_INPUT_int[43],
                   K_INPUT_int[44],K_INPUT_int[45],K_INPUT_int[46],
                   K_INPUT_int[47],K_INPUT_int[32],K_INPUT_int[33],
                   K_INPUT_int[34],K_INPUT_int[35],K_INPUT_int[36],
                   K_INPUT_int[37],K_INPUT_int[38],K_INPUT_int[39],
                   K_INPUT_int[24],K_INPUT_int[25],K_INPUT_int[26],
                   K_INPUT_int[27],K_INPUT_int[28],K_INPUT_int[29],
                   K_INPUT_int[30],K_INPUT_int[31],K_INPUT_int[16],
                   K_INPUT_int[17],K_INPUT_int[18],K_INPUT_int[19],
                   K_INPUT_int[20],K_INPUT_int[21],K_INPUT_int[22],
                   K_INPUT_int[23],K_INPUT_int[8],K_INPUT_int[9],K_INPUT_int[10]
                   ,K_INPUT_int[11],K_INPUT_int[12],K_INPUT_int[13],
                   K_INPUT_int[14],K_INPUT_int[15],K_INPUT_int[0],K_INPUT_int[1]
                   ,K_INPUT_int[2],K_INPUT_int[3],K_INPUT_int[4],K_INPUT_int[5],
                   K_INPUT_int[6],K_INPUT_int[7]}), .p_nbus_CORE_CNTRL ({
                   CORE_CNTRL[1],CORE_CNTRL[0]}), .p_SYS_CLK_int (SYS_CLK_int)
                   ) ;
    BUFGP SYS_CLK_ibuf (.O (SYS_CLK_int), .I (SYS_CLK)) ;
    MUXCY muxcy_0 (.O (nx8474z1), .CI (nx8473z1), .DI (nx8473z2), .S (
          INIT_COUNTER[0])) ;
    MUXCY muxcy_1 (.O (nx8475z1), .CI (nx8474z1), .DI (nx8473z2), .S (
          INIT_COUNTER[1])) ;
    MUXCY muxcy_2 (.O (nx8476z1), .CI (nx8475z1), .DI (nx8473z2), .S (
          INIT_COUNTER[2])) ;
    MUXCY muxcy_3 (.O (nx8477z1), .CI (nx8476z1), .DI (nx8473z2), .S (
          INIT_COUNTER[3])) ;
    MUXCY muxcy_4 (.O (nx51683z1), .CI (nx8477z1), .DI (nx8473z2), .S (
          INIT_COUNTER[4])) ;
    MUXCY muxcy_5 (.O (nx8479z1), .CI (nx51683z1), .DI (nx8473z2), .S (
          INIT_COUNTER[5])) ;
    MUXCY muxcy_6 (.O (nx8480z1), .CI (nx8479z1), .DI (nx8473z2), .S (
          INIT_COUNTER[6])) ;
    MUXCY muxcy_7 (.O (nx8481z1), .CI (nx8480z1), .DI (nx8473z2), .S (
          INIT_COUNTER[7])) ;
    MUXCY muxcy_8 (.O (nx51679z1), .CI (nx8481z1), .DI (nx8473z2), .S (
          INIT_COUNTER[8])) ;
    MUXCY muxcy_9 (.O (nx20595z1), .CI (nx51679z1), .DI (nx8473z2), .S (
          INIT_COUNTER[9])) ;
    FDRE \reg_pr_state(5)  (.Q (pr_state[5]), .C (SYS_CLK_int), .CE (nx8473z1), 
         .D (nx47053z1), .R (RST_int)) ;
    FDRE \reg_pr_state(4)  (.Q (pr_state[4]), .C (SYS_CLK_int), .CE (nx8473z1), 
         .D (nx46056z1), .R (RST_int)) ;
    FDRE \reg_pr_state(3)  (.Q (pr_state[3]), .C (SYS_CLK_int), .CE (nx8473z1), 
         .D (nx45059z1), .R (RST_int)) ;
    FDRE \reg_pr_state(2)  (.Q (pr_state[2]), .C (SYS_CLK_int), .CE (nx8473z1), 
         .D (pr_state[1]), .R (RST_int)) ;
    FDRE \reg_pr_state(1)  (.Q (pr_state[1]), .C (SYS_CLK_int), .CE (nx8473z1), 
         .D (pr_state[0]), .R (RST_int)) ;
    FDSE \reg_pr_state(0)  (.Q (pr_state[0]), .C (SYS_CLK_int), .CE (nx8473z1), 
         .D (nx8473z2), .S (RST_int)) ;
    FDRE \reg_CORE_CNTRL(1)  (.Q (CORE_CNTRL[1]), .C (SYS_CLK_int), .CE (
         nx8473z1), .D (nx27334z1), .R (nx8473z2)) ;
    FDRE \reg_CORE_CNTRL(0)  (.Q (CORE_CNTRL[0]), .C (SYS_CLK_int), .CE (
         nx8473z1), .D (nx28331z1), .R (nx8473z2)) ;
    FDRE reg_CPHRTXT_RDY (.Q (CPHRTXT_RDY_1_0), .C (SYS_CLK_int), .CE (nx55036z1
         ), .D (nx55036z2), .R (nx8473z2)) ;
    FDRE reg_CIPHERTEXT_OUT (.Q (CIPHERTEXT_OUT_1_0), .C (SYS_CLK_int), .CE (
         nx49344z1), .D (nx49344z2), .R (nx8473z2)) ;
endmodule


module TRIVIUM_CORE_0 ( p_nbus_pr_state, px716, p_PLAINTEXT_IN_int, 
                        p_nbus_IV_INPUT_int, p_nbus_K_INPUT_int, 
                        p_nbus_CORE_CNTRL, p_SYS_CLK_int ) ;

    input [5:5]p_nbus_pr_state ;
    output px716 ;
    input p_PLAINTEXT_IN_int ;
    input [79:0]p_nbus_IV_INPUT_int ;
    input [79:0]p_nbus_K_INPUT_int ;
    input [1:0]p_nbus_CORE_CNTRL ;
    input p_SYS_CLK_int ;

    wire nx49842z2, nx28327z2, nx23153z2, nx23153z1;
    wire [287:0]TRIV_CORE_GEN_STATE;
    wire nx22156z1, nx21159z1, nx20162z1, nx19165z1, nx18168z1, nx17171z1, 
         nx16174z1, nx15177z1, nx14180z1, nx3120z1, nx4117z1, nx5114z1, nx6111z1, 
         nx7108z1, nx8105z1, nx9102z1, nx10099z1, nx11096z1, nx12093z1, 
         nx14089z1, nx15086z1, nx16083z1, nx17080z1, nx18077z1, nx19074z1, 
         nx20071z1, nx21068z1, nx22065z1, nx23062z1, nx25058z1, nx26055z1, 
         nx27052z1, nx28049z1, nx29046z1, nx30043z1, nx31040z1, nx32037z1, 
         nx33034z1, nx34031z1, nx36027z1, nx37024z1, nx38021z1, nx39018z1, 
         nx40015z1, nx41012z1, nx42009z1, nx43006z1, nx44003z1, nx45000z1, 
         nx46996z1, nx47993z1, nx48990z1, nx49987z1, nx50984z1, nx51981z1, 
         nx52978z1, nx53975z1, nx54972z1, nx55969z1, nx57965z1, nx58962z1, 
         nx59959z1, nx60956z1, nx61953z1, nx62950z1, nx63947z1, nx64944z1, 
         nx405z1, nx1402z1, nx3398z1, nx4395z1, nx5392z1, nx6389z1, nx7386z1, 
         nx8383z1, nx9380z1, nx10377z1, nx11374z1, nx12371z1, nx14367z1, 
         nx15364z1, nx16361z1, nx17358z1, nx18355z1, nx19352z1, nx20349z1, 
         nx21346z1, nx22343z1, nx23340z1, nx25336z1, nx26333z1, nx27330z1, 
         nx28327z1, nx29324z1, nx30321z1, nx31318z1, nx32315z1, nx33312z1, 
         nx34309z1, nx37468z1, nx38465z1, nx39462z1, nx40459z1, nx41456z1, 
         nx42453z1, nx43450z1, nx44447z1, nx45444z1, nx46441z1, nx48437z1, 
         nx49434z1, nx50431z1, nx51428z1, nx52425z1, nx53422z1, nx54419z1, 
         nx55416z1, nx56413z1, nx57410z1, nx59406z1, nx60403z1, nx61400z1, 
         nx62397z1, nx63394z1, nx64391z1, nx65388z1, nx849z1, nx1846z1, nx2843z1, 
         nx4839z1, nx5836z1, nx6833z1, nx7830z1, nx8827z1, nx9824z1, nx10821z1, 
         nx11818z1, nx12815z1, nx13812z1, nx15808z1, nx16805z1, nx17802z1, 
         nx18799z1, nx19796z1, nx20793z1, nx21790z1, nx22787z1, nx23784z1, 
         nx24781z1, nx26777z1, nx27774z1, nx28771z1, nx29768z1, nx30765z1, 
         nx31762z1, nx32759z1, nx33756z1, nx34753z1, nx35750z1, nx37746z1, 
         nx38743z1, nx39740z1, nx40737z1, nx41734z1, nx42731z1, nx43728z1, 
         nx44725z1, nx45722z1, nx46719z1, nx48715z1, nx49712z1, nx50709z1, 
         nx51706z1, nx52703z1, nx53700z1, nx54697z1, nx55694z1, nx56691z1, 
         nx57688z1, nx59684z1, nx60681z1, nx61678z1, nx62675z1, nx63672z1, 
         nx64669z1, nx130z1, nx1127z1, nx2124z1, nx3121z1, nx5117z1, nx6114z1, 
         nx7111z1, nx8108z1, nx9105z1, nx10102z1, nx11099z1, nx12096z1, 
         nx13093z1, nx14090z1, nx29049z1, nx30046z1, nx31043z1, nx32040z1, 
         nx33037z1, nx34034z1, nx35031z1, nx36028z1, nx37025z1, nx38022z1, 
         nx40018z1, nx41015z1, nx42012z1, nx43009z1, nx44006z1, nx45003z1, 
         nx46000z1, nx46997z1, nx47994z1, nx48991z1, nx50987z1, nx51984z1, 
         nx52981z1, nx53978z1, nx54975z1, nx55972z1, nx56969z1, nx57966z1, 
         nx58963z1, nx59960z1, nx61956z1, nx62953z1, nx63950z1, nx64947z1, 
         nx408z1, nx1405z1, nx2402z1, nx3399z1, nx4396z1, nx5393z1, nx7389z1, 
         nx8386z1, nx9383z2, nx10380z1, nx11377z1, nx12374z1, nx13371z1, 
         nx14368z1, nx15365z1, nx16362z1, nx18358z1, nx19355z1, nx20352z1, 
         nx21349z1, nx22346z1, nx23343z1, nx24340z1, nx25337z1, nx26334z1, 
         nx27331z1, nx29327z1, nx30324z1, nx31321z1, nx32318z1, nx33315z1, 
         nx34312z1, nx35309z1, nx36306z1, nx37303z1, nx38300z1, nx40296z1, 
         nx41293z1, nx42290z1, nx43287z1, nx44284z1, nx45281z1, nx46278z1, 
         nx47275z1, nx48272z1, nx49269z1, nx51265z1, nx52262z1, nx53259z1, 
         nx54256z1, nx55253z1, nx56250z1, nx57247z1, nx58244z1, nx9383z1, nx4;



    (* HLUTNM = "LUT62_1_144" *)
    LUT2 ix56250z1327 (.O (nx56250z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[3])) ;
         defparam ix56250z1327.INIT = 4'hD;
    (* HLUTNM = "LUT62_1_82" *)
    LUT2 ix57247z1327 (.O (nx57247z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[2])) ;
         defparam ix57247z1327.INIT = 4'hD;
    LUT2 ix58244z1327 (.O (nx58244z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[1])) ;
         defparam ix58244z1327.INIT = 4'hD;
    (* HLUTNM = "LUT62_1_88" *)
    LUT2 ix9383z1328 (.O (nx9383z1), .I0 (p_nbus_CORE_CNTRL[1]), .I1 (
         p_nbus_CORE_CNTRL[0])) ;
         defparam ix9383z1328.INIT = 4'hE;
    LUT5 ix23153z39565 (.O (nx23153z2), .I0 (TRIV_CORE_GEN_STATE[0]), .I1 (
         TRIV_CORE_GEN_STATE[1]), .I2 (TRIV_CORE_GEN_STATE[2]), .I3 (
         TRIV_CORE_GEN_STATE[45]), .I4 (TRIV_CORE_GEN_STATE[219])) ;
         defparam ix23153z39565.INIT = 32'h6A95956A;
    (* HLUTNM = "LUT62_1_2" *)
    LUT3 ix23153z1498 (.O (nx23153z1), .I0 (nx23153z2), .I1 (
         p_nbus_CORE_CNTRL[0]), .I2 (p_nbus_K_INPUT_int[0])) ;
         defparam ix23153z1498.INIT = 8'hB8;
    (* HLUTNM = "LUT62_1_2" *)
    LUT3 ix22156z1542 (.O (nx22156z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[1]), .I2 (TRIV_CORE_GEN_STATE[287])) ;
         defparam ix22156z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_3" *)
    LUT3 ix21159z1542 (.O (nx21159z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[2]), .I2 (TRIV_CORE_GEN_STATE[286])) ;
         defparam ix21159z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_3" *)
    LUT3 ix20162z1542 (.O (nx20162z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[3]), .I2 (TRIV_CORE_GEN_STATE[285])) ;
         defparam ix20162z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_4" *)
    LUT3 ix19165z1542 (.O (nx19165z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[4]), .I2 (TRIV_CORE_GEN_STATE[284])) ;
         defparam ix19165z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_4" *)
    LUT3 ix18168z1542 (.O (nx18168z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[5]), .I2 (TRIV_CORE_GEN_STATE[283])) ;
         defparam ix18168z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_5" *)
    LUT3 ix17171z1542 (.O (nx17171z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[6]), .I2 (TRIV_CORE_GEN_STATE[282])) ;
         defparam ix17171z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_5" *)
    LUT3 ix16174z1542 (.O (nx16174z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[7]), .I2 (TRIV_CORE_GEN_STATE[281])) ;
         defparam ix16174z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_6" *)
    LUT3 ix15177z1542 (.O (nx15177z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[8]), .I2 (TRIV_CORE_GEN_STATE[280])) ;
         defparam ix15177z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_6" *)
    LUT3 ix14180z1542 (.O (nx14180z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[9]), .I2 (TRIV_CORE_GEN_STATE[279])) ;
         defparam ix14180z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_7" *)
    LUT3 ix3120z1542 (.O (nx3120z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[10]), .I2 (TRIV_CORE_GEN_STATE[278])) ;
         defparam ix3120z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_7" *)
    LUT3 ix4117z1542 (.O (nx4117z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[11]), .I2 (TRIV_CORE_GEN_STATE[277])) ;
         defparam ix4117z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_8" *)
    LUT3 ix5114z1542 (.O (nx5114z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[12]), .I2 (TRIV_CORE_GEN_STATE[276])) ;
         defparam ix5114z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_8" *)
    LUT3 ix6111z1542 (.O (nx6111z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[13]), .I2 (TRIV_CORE_GEN_STATE[275])) ;
         defparam ix6111z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_9" *)
    LUT3 ix7108z1542 (.O (nx7108z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[14]), .I2 (TRIV_CORE_GEN_STATE[274])) ;
         defparam ix7108z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_9" *)
    LUT3 ix8105z1542 (.O (nx8105z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[15]), .I2 (TRIV_CORE_GEN_STATE[273])) ;
         defparam ix8105z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_10" *)
    LUT3 ix9102z1542 (.O (nx9102z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[16]), .I2 (TRIV_CORE_GEN_STATE[272])) ;
         defparam ix9102z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_10" *)
    LUT3 ix10099z1542 (.O (nx10099z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[17]), .I2 (TRIV_CORE_GEN_STATE[271])) ;
         defparam ix10099z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_11" *)
    LUT3 ix11096z1542 (.O (nx11096z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[18]), .I2 (TRIV_CORE_GEN_STATE[270])) ;
         defparam ix11096z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_11" *)
    LUT3 ix12093z1542 (.O (nx12093z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[19]), .I2 (TRIV_CORE_GEN_STATE[269])) ;
         defparam ix12093z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_12" *)
    LUT3 ix14089z1542 (.O (nx14089z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[20]), .I2 (TRIV_CORE_GEN_STATE[268])) ;
         defparam ix14089z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_12" *)
    LUT3 ix15086z1542 (.O (nx15086z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[21]), .I2 (TRIV_CORE_GEN_STATE[267])) ;
         defparam ix15086z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_13" *)
    LUT3 ix16083z1542 (.O (nx16083z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[22]), .I2 (TRIV_CORE_GEN_STATE[266])) ;
         defparam ix16083z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_13" *)
    LUT3 ix17080z1542 (.O (nx17080z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[23]), .I2 (TRIV_CORE_GEN_STATE[265])) ;
         defparam ix17080z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_14" *)
    LUT3 ix18077z1542 (.O (nx18077z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[24]), .I2 (TRIV_CORE_GEN_STATE[264])) ;
         defparam ix18077z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_14" *)
    LUT3 ix19074z1542 (.O (nx19074z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[25]), .I2 (TRIV_CORE_GEN_STATE[263])) ;
         defparam ix19074z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_15" *)
    LUT3 ix20071z1542 (.O (nx20071z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[26]), .I2 (TRIV_CORE_GEN_STATE[262])) ;
         defparam ix20071z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_15" *)
    LUT3 ix21068z1542 (.O (nx21068z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[27]), .I2 (TRIV_CORE_GEN_STATE[261])) ;
         defparam ix21068z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_16" *)
    LUT3 ix22065z1542 (.O (nx22065z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[28]), .I2 (TRIV_CORE_GEN_STATE[260])) ;
         defparam ix22065z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_16" *)
    LUT3 ix23062z1542 (.O (nx23062z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[29]), .I2 (TRIV_CORE_GEN_STATE[259])) ;
         defparam ix23062z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_17" *)
    LUT3 ix25058z1542 (.O (nx25058z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[30]), .I2 (TRIV_CORE_GEN_STATE[258])) ;
         defparam ix25058z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_17" *)
    LUT3 ix26055z1542 (.O (nx26055z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[31]), .I2 (TRIV_CORE_GEN_STATE[257])) ;
         defparam ix26055z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_18" *)
    LUT3 ix27052z1542 (.O (nx27052z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[32]), .I2 (TRIV_CORE_GEN_STATE[256])) ;
         defparam ix27052z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_18" *)
    LUT3 ix28049z1542 (.O (nx28049z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[33]), .I2 (TRIV_CORE_GEN_STATE[255])) ;
         defparam ix28049z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_19" *)
    LUT3 ix29046z1542 (.O (nx29046z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[34]), .I2 (TRIV_CORE_GEN_STATE[254])) ;
         defparam ix29046z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_19" *)
    LUT3 ix30043z1542 (.O (nx30043z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[35]), .I2 (TRIV_CORE_GEN_STATE[253])) ;
         defparam ix30043z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_20" *)
    LUT3 ix31040z1542 (.O (nx31040z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[36]), .I2 (TRIV_CORE_GEN_STATE[252])) ;
         defparam ix31040z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_20" *)
    LUT3 ix32037z1542 (.O (nx32037z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[37]), .I2 (TRIV_CORE_GEN_STATE[251])) ;
         defparam ix32037z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_21" *)
    LUT3 ix33034z1542 (.O (nx33034z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[38]), .I2 (TRIV_CORE_GEN_STATE[250])) ;
         defparam ix33034z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_21" *)
    LUT3 ix34031z1542 (.O (nx34031z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[39]), .I2 (TRIV_CORE_GEN_STATE[249])) ;
         defparam ix34031z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_22" *)
    LUT3 ix36027z1542 (.O (nx36027z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[40]), .I2 (TRIV_CORE_GEN_STATE[248])) ;
         defparam ix36027z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_22" *)
    LUT3 ix37024z1542 (.O (nx37024z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[41]), .I2 (TRIV_CORE_GEN_STATE[247])) ;
         defparam ix37024z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_23" *)
    LUT3 ix38021z1542 (.O (nx38021z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[42]), .I2 (TRIV_CORE_GEN_STATE[246])) ;
         defparam ix38021z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_23" *)
    LUT3 ix39018z1542 (.O (nx39018z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[43]), .I2 (TRIV_CORE_GEN_STATE[245])) ;
         defparam ix39018z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_24" *)
    LUT3 ix40015z1542 (.O (nx40015z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[44]), .I2 (TRIV_CORE_GEN_STATE[244])) ;
         defparam ix40015z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_24" *)
    LUT3 ix41012z1542 (.O (nx41012z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[45]), .I2 (TRIV_CORE_GEN_STATE[243])) ;
         defparam ix41012z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_25" *)
    LUT3 ix42009z1542 (.O (nx42009z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[46]), .I2 (TRIV_CORE_GEN_STATE[242])) ;
         defparam ix42009z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_25" *)
    LUT3 ix43006z1542 (.O (nx43006z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[47]), .I2 (TRIV_CORE_GEN_STATE[241])) ;
         defparam ix43006z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_26" *)
    LUT3 ix44003z1542 (.O (nx44003z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[48]), .I2 (TRIV_CORE_GEN_STATE[240])) ;
         defparam ix44003z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_26" *)
    LUT3 ix45000z1542 (.O (nx45000z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[49]), .I2 (TRIV_CORE_GEN_STATE[239])) ;
         defparam ix45000z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_27" *)
    LUT3 ix46996z1542 (.O (nx46996z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[50]), .I2 (TRIV_CORE_GEN_STATE[238])) ;
         defparam ix46996z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_27" *)
    LUT3 ix47993z1542 (.O (nx47993z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[51]), .I2 (TRIV_CORE_GEN_STATE[237])) ;
         defparam ix47993z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_28" *)
    LUT3 ix48990z1542 (.O (nx48990z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[52]), .I2 (TRIV_CORE_GEN_STATE[236])) ;
         defparam ix48990z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_28" *)
    LUT3 ix49987z1542 (.O (nx49987z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[53]), .I2 (TRIV_CORE_GEN_STATE[235])) ;
         defparam ix49987z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_29" *)
    LUT3 ix50984z1542 (.O (nx50984z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[54]), .I2 (TRIV_CORE_GEN_STATE[234])) ;
         defparam ix50984z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_29" *)
    LUT3 ix51981z1542 (.O (nx51981z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[55]), .I2 (TRIV_CORE_GEN_STATE[233])) ;
         defparam ix51981z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_30" *)
    LUT3 ix52978z1542 (.O (nx52978z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[56]), .I2 (TRIV_CORE_GEN_STATE[232])) ;
         defparam ix52978z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_30" *)
    LUT3 ix53975z1542 (.O (nx53975z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[57]), .I2 (TRIV_CORE_GEN_STATE[231])) ;
         defparam ix53975z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_31" *)
    LUT3 ix54972z1542 (.O (nx54972z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[58]), .I2 (TRIV_CORE_GEN_STATE[230])) ;
         defparam ix54972z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_31" *)
    LUT3 ix55969z1542 (.O (nx55969z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[59]), .I2 (TRIV_CORE_GEN_STATE[229])) ;
         defparam ix55969z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_32" *)
    LUT3 ix57965z1542 (.O (nx57965z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[60]), .I2 (TRIV_CORE_GEN_STATE[228])) ;
         defparam ix57965z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_32" *)
    LUT3 ix58962z1542 (.O (nx58962z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[61]), .I2 (TRIV_CORE_GEN_STATE[227])) ;
         defparam ix58962z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_33" *)
    LUT3 ix59959z1542 (.O (nx59959z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[62]), .I2 (TRIV_CORE_GEN_STATE[226])) ;
         defparam ix59959z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_33" *)
    LUT3 ix60956z1542 (.O (nx60956z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[63]), .I2 (TRIV_CORE_GEN_STATE[225])) ;
         defparam ix60956z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_34" *)
    LUT3 ix61953z1542 (.O (nx61953z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[64]), .I2 (TRIV_CORE_GEN_STATE[224])) ;
         defparam ix61953z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_34" *)
    LUT3 ix62950z1542 (.O (nx62950z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[65]), .I2 (TRIV_CORE_GEN_STATE[223])) ;
         defparam ix62950z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_35" *)
    LUT3 ix63947z1542 (.O (nx63947z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[66]), .I2 (TRIV_CORE_GEN_STATE[222])) ;
         defparam ix63947z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_35" *)
    LUT3 ix64944z1542 (.O (nx64944z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[67]), .I2 (TRIV_CORE_GEN_STATE[221])) ;
         defparam ix64944z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_36" *)
    LUT3 ix405z1542 (.O (nx405z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[68]), .I2 (TRIV_CORE_GEN_STATE[220])) ;
         defparam ix405z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_36" *)
    LUT3 ix1402z1542 (.O (nx1402z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[69]), .I2 (TRIV_CORE_GEN_STATE[219])) ;
         defparam ix1402z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_37" *)
    LUT3 ix3398z1542 (.O (nx3398z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[70]), .I2 (TRIV_CORE_GEN_STATE[218])) ;
         defparam ix3398z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_37" *)
    LUT3 ix4395z1542 (.O (nx4395z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[71]), .I2 (TRIV_CORE_GEN_STATE[217])) ;
         defparam ix4395z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_38" *)
    LUT3 ix5392z1542 (.O (nx5392z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[72]), .I2 (TRIV_CORE_GEN_STATE[216])) ;
         defparam ix5392z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_38" *)
    LUT3 ix6389z1542 (.O (nx6389z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[73]), .I2 (TRIV_CORE_GEN_STATE[215])) ;
         defparam ix6389z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_39" *)
    LUT3 ix7386z1542 (.O (nx7386z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[74]), .I2 (TRIV_CORE_GEN_STATE[214])) ;
         defparam ix7386z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_39" *)
    LUT3 ix8383z1542 (.O (nx8383z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[75]), .I2 (TRIV_CORE_GEN_STATE[213])) ;
         defparam ix8383z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_40" *)
    LUT3 ix9380z1542 (.O (nx9380z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[76]), .I2 (TRIV_CORE_GEN_STATE[212])) ;
         defparam ix9380z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_40" *)
    LUT3 ix10377z1542 (.O (nx10377z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[77]), .I2 (TRIV_CORE_GEN_STATE[211])) ;
         defparam ix10377z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_41" *)
    LUT3 ix11374z1542 (.O (nx11374z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[78]), .I2 (TRIV_CORE_GEN_STATE[210])) ;
         defparam ix11374z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_41" *)
    LUT3 ix12371z1542 (.O (nx12371z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_K_INPUT_int[79]), .I2 (TRIV_CORE_GEN_STATE[209])) ;
         defparam ix12371z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_81" *)
    LUT2 ix14367z1322 (.O (nx14367z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[208])) ;
         defparam ix14367z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_81" *)
    LUT2 ix15364z1322 (.O (nx15364z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[207])) ;
         defparam ix15364z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_87" *)
    LUT2 ix16361z1322 (.O (nx16361z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[206])) ;
         defparam ix16361z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_87" *)
    LUT2 ix17358z1322 (.O (nx17358z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[205])) ;
         defparam ix17358z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_86" *)
    LUT2 ix18355z1322 (.O (nx18355z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[204])) ;
         defparam ix18355z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_86" *)
    LUT2 ix19352z1322 (.O (nx19352z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[203])) ;
         defparam ix19352z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_85" *)
    LUT2 ix20349z1322 (.O (nx20349z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[202])) ;
         defparam ix20349z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_85" *)
    LUT2 ix21346z1322 (.O (nx21346z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[201])) ;
         defparam ix21346z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_84" *)
    LUT2 ix22343z1322 (.O (nx22343z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[200])) ;
         defparam ix22343z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_84" *)
    LUT2 ix23340z1322 (.O (nx23340z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[199])) ;
         defparam ix23340z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_83" *)
    LUT2 ix25336z1322 (.O (nx25336z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[198])) ;
         defparam ix25336z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_83" *)
    LUT2 ix26333z1322 (.O (nx26333z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[197])) ;
         defparam ix26333z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_82" *)
    LUT2 ix27330z1322 (.O (nx27330z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[196])) ;
         defparam ix27330z1322.INIT = 4'h8;
    LUT5 ix28327z39817 (.O (nx28327z2), .I0 (TRIV_CORE_GEN_STATE[117]), .I1 (
         TRIV_CORE_GEN_STATE[195]), .I2 (TRIV_CORE_GEN_STATE[196]), .I3 (
         TRIV_CORE_GEN_STATE[197]), .I4 (TRIV_CORE_GEN_STATE[222])) ;
         defparam ix28327z39817.INIT = 32'h69999666;
    (* HLUTNM = "LUT62_1_42" *)
    LUT3 ix28327z1498 (.O (nx28327z1), .I0 (nx28327z2), .I1 (
         p_nbus_CORE_CNTRL[0]), .I2 (p_nbus_IV_INPUT_int[0])) ;
         defparam ix28327z1498.INIT = 8'hB8;
    (* HLUTNM = "LUT62_1_49" *)
    LUT3 ix29324z1542 (.O (nx29324z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[1]), .I2 (TRIV_CORE_GEN_STATE[194])) ;
         defparam ix29324z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_50" *)
    LUT3 ix30321z1542 (.O (nx30321z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[2]), .I2 (TRIV_CORE_GEN_STATE[193])) ;
         defparam ix30321z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_50" *)
    LUT3 ix31318z1542 (.O (nx31318z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[3]), .I2 (TRIV_CORE_GEN_STATE[192])) ;
         defparam ix31318z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_51" *)
    LUT3 ix32315z1542 (.O (nx32315z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[4]), .I2 (TRIV_CORE_GEN_STATE[191])) ;
         defparam ix32315z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_51" *)
    LUT3 ix33312z1542 (.O (nx33312z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[5]), .I2 (TRIV_CORE_GEN_STATE[190])) ;
         defparam ix33312z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_52" *)
    LUT3 ix34309z1542 (.O (nx34309z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[6]), .I2 (TRIV_CORE_GEN_STATE[189])) ;
         defparam ix34309z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_52" *)
    LUT3 ix37468z1542 (.O (nx37468z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[7]), .I2 (TRIV_CORE_GEN_STATE[188])) ;
         defparam ix37468z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_53" *)
    LUT3 ix38465z1542 (.O (nx38465z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[8]), .I2 (TRIV_CORE_GEN_STATE[187])) ;
         defparam ix38465z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_53" *)
    LUT3 ix39462z1542 (.O (nx39462z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[9]), .I2 (TRIV_CORE_GEN_STATE[186])) ;
         defparam ix39462z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_54" *)
    LUT3 ix40459z1542 (.O (nx40459z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[10]), .I2 (TRIV_CORE_GEN_STATE[185])) ;
         defparam ix40459z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_54" *)
    LUT3 ix41456z1542 (.O (nx41456z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[11]), .I2 (TRIV_CORE_GEN_STATE[184])) ;
         defparam ix41456z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_55" *)
    LUT3 ix42453z1542 (.O (nx42453z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[12]), .I2 (TRIV_CORE_GEN_STATE[183])) ;
         defparam ix42453z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_55" *)
    LUT3 ix43450z1542 (.O (nx43450z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[13]), .I2 (TRIV_CORE_GEN_STATE[182])) ;
         defparam ix43450z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_56" *)
    LUT3 ix44447z1542 (.O (nx44447z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[14]), .I2 (TRIV_CORE_GEN_STATE[181])) ;
         defparam ix44447z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_56" *)
    LUT3 ix45444z1542 (.O (nx45444z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[15]), .I2 (TRIV_CORE_GEN_STATE[180])) ;
         defparam ix45444z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_57" *)
    LUT3 ix46441z1542 (.O (nx46441z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[16]), .I2 (TRIV_CORE_GEN_STATE[179])) ;
         defparam ix46441z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_57" *)
    LUT3 ix48437z1542 (.O (nx48437z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[17]), .I2 (TRIV_CORE_GEN_STATE[178])) ;
         defparam ix48437z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_58" *)
    LUT3 ix49434z1542 (.O (nx49434z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[18]), .I2 (TRIV_CORE_GEN_STATE[177])) ;
         defparam ix49434z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_58" *)
    LUT3 ix50431z1542 (.O (nx50431z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[19]), .I2 (TRIV_CORE_GEN_STATE[176])) ;
         defparam ix50431z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_59" *)
    LUT3 ix51428z1542 (.O (nx51428z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[20]), .I2 (TRIV_CORE_GEN_STATE[175])) ;
         defparam ix51428z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_59" *)
    LUT3 ix52425z1542 (.O (nx52425z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[21]), .I2 (TRIV_CORE_GEN_STATE[174])) ;
         defparam ix52425z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_60" *)
    LUT3 ix53422z1542 (.O (nx53422z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[22]), .I2 (TRIV_CORE_GEN_STATE[173])) ;
         defparam ix53422z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_60" *)
    LUT3 ix54419z1542 (.O (nx54419z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[23]), .I2 (TRIV_CORE_GEN_STATE[172])) ;
         defparam ix54419z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_61" *)
    LUT3 ix55416z1542 (.O (nx55416z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[24]), .I2 (TRIV_CORE_GEN_STATE[171])) ;
         defparam ix55416z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_61" *)
    LUT3 ix56413z1542 (.O (nx56413z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[25]), .I2 (TRIV_CORE_GEN_STATE[170])) ;
         defparam ix56413z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_62" *)
    LUT3 ix57410z1542 (.O (nx57410z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[26]), .I2 (TRIV_CORE_GEN_STATE[169])) ;
         defparam ix57410z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_62" *)
    LUT3 ix59406z1542 (.O (nx59406z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[27]), .I2 (TRIV_CORE_GEN_STATE[168])) ;
         defparam ix59406z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_63" *)
    LUT3 ix60403z1542 (.O (nx60403z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[28]), .I2 (TRIV_CORE_GEN_STATE[167])) ;
         defparam ix60403z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_63" *)
    LUT3 ix61400z1542 (.O (nx61400z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[29]), .I2 (TRIV_CORE_GEN_STATE[166])) ;
         defparam ix61400z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_64" *)
    LUT3 ix62397z1542 (.O (nx62397z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[30]), .I2 (TRIV_CORE_GEN_STATE[165])) ;
         defparam ix62397z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_64" *)
    LUT3 ix63394z1542 (.O (nx63394z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[31]), .I2 (TRIV_CORE_GEN_STATE[164])) ;
         defparam ix63394z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_65" *)
    LUT3 ix64391z1542 (.O (nx64391z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[32]), .I2 (TRIV_CORE_GEN_STATE[163])) ;
         defparam ix64391z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_42" *)
    LUT3 ix65388z1542 (.O (nx65388z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[33]), .I2 (TRIV_CORE_GEN_STATE[162])) ;
         defparam ix65388z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_65" *)
    LUT3 ix849z1542 (.O (nx849z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[34]), .I2 (TRIV_CORE_GEN_STATE[161])) ;
         defparam ix849z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_66" *)
    LUT3 ix1846z1542 (.O (nx1846z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[35]), .I2 (TRIV_CORE_GEN_STATE[160])) ;
         defparam ix1846z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_67" *)
    LUT3 ix2843z1542 (.O (nx2843z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[36]), .I2 (TRIV_CORE_GEN_STATE[159])) ;
         defparam ix2843z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_67" *)
    LUT3 ix4839z1542 (.O (nx4839z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[37]), .I2 (TRIV_CORE_GEN_STATE[158])) ;
         defparam ix4839z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_68" *)
    LUT3 ix5836z1542 (.O (nx5836z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[38]), .I2 (TRIV_CORE_GEN_STATE[157])) ;
         defparam ix5836z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_68" *)
    LUT3 ix6833z1542 (.O (nx6833z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[39]), .I2 (TRIV_CORE_GEN_STATE[156])) ;
         defparam ix6833z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_69" *)
    LUT3 ix7830z1542 (.O (nx7830z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[40]), .I2 (TRIV_CORE_GEN_STATE[155])) ;
         defparam ix7830z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_69" *)
    LUT3 ix8827z1542 (.O (nx8827z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[41]), .I2 (TRIV_CORE_GEN_STATE[154])) ;
         defparam ix8827z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_70" *)
    LUT3 ix9824z1542 (.O (nx9824z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[42]), .I2 (TRIV_CORE_GEN_STATE[153])) ;
         defparam ix9824z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_70" *)
    LUT3 ix10821z1542 (.O (nx10821z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[43]), .I2 (TRIV_CORE_GEN_STATE[152])) ;
         defparam ix10821z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_71" *)
    LUT3 ix11818z1542 (.O (nx11818z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[44]), .I2 (TRIV_CORE_GEN_STATE[151])) ;
         defparam ix11818z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_71" *)
    LUT3 ix12815z1542 (.O (nx12815z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[45]), .I2 (TRIV_CORE_GEN_STATE[150])) ;
         defparam ix12815z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_1" *)
    LUT3 ix13812z1542 (.O (nx13812z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[46]), .I2 (TRIV_CORE_GEN_STATE[149])) ;
         defparam ix13812z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_72" *)
    LUT3 ix15808z1542 (.O (nx15808z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[47]), .I2 (TRIV_CORE_GEN_STATE[148])) ;
         defparam ix15808z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_1" *)
    LUT3 ix16805z1542 (.O (nx16805z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[48]), .I2 (TRIV_CORE_GEN_STATE[147])) ;
         defparam ix16805z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_73" *)
    LUT3 ix17802z1542 (.O (nx17802z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[49]), .I2 (TRIV_CORE_GEN_STATE[146])) ;
         defparam ix17802z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_66" *)
    LUT3 ix18799z1542 (.O (nx18799z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[50]), .I2 (TRIV_CORE_GEN_STATE[145])) ;
         defparam ix18799z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_72" *)
    LUT3 ix19796z1542 (.O (nx19796z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[51]), .I2 (TRIV_CORE_GEN_STATE[144])) ;
         defparam ix19796z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_75" *)
    LUT3 ix20793z1542 (.O (nx20793z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[52]), .I2 (TRIV_CORE_GEN_STATE[143])) ;
         defparam ix20793z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_75" *)
    LUT3 ix21790z1542 (.O (nx21790z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[53]), .I2 (TRIV_CORE_GEN_STATE[142])) ;
         defparam ix21790z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_76" *)
    LUT3 ix22787z1542 (.O (nx22787z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[54]), .I2 (TRIV_CORE_GEN_STATE[141])) ;
         defparam ix22787z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_76" *)
    LUT3 ix23784z1542 (.O (nx23784z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[55]), .I2 (TRIV_CORE_GEN_STATE[140])) ;
         defparam ix23784z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_74" *)
    LUT3 ix24781z1542 (.O (nx24781z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[56]), .I2 (TRIV_CORE_GEN_STATE[139])) ;
         defparam ix24781z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_77" *)
    LUT3 ix26777z1542 (.O (nx26777z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[57]), .I2 (TRIV_CORE_GEN_STATE[138])) ;
         defparam ix26777z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_74" *)
    LUT3 ix27774z1542 (.O (nx27774z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[58]), .I2 (TRIV_CORE_GEN_STATE[137])) ;
         defparam ix27774z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_77" *)
    LUT3 ix28771z1542 (.O (nx28771z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[59]), .I2 (TRIV_CORE_GEN_STATE[136])) ;
         defparam ix28771z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_79" *)
    LUT3 ix29768z1542 (.O (nx29768z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[60]), .I2 (TRIV_CORE_GEN_STATE[135])) ;
         defparam ix29768z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_78" *)
    LUT3 ix30765z1542 (.O (nx30765z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[61]), .I2 (TRIV_CORE_GEN_STATE[134])) ;
         defparam ix30765z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_78" *)
    LUT3 ix31762z1542 (.O (nx31762z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[62]), .I2 (TRIV_CORE_GEN_STATE[133])) ;
         defparam ix31762z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_79" *)
    LUT3 ix32759z1542 (.O (nx32759z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[63]), .I2 (TRIV_CORE_GEN_STATE[132])) ;
         defparam ix32759z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_80" *)
    LUT3 ix33756z1542 (.O (nx33756z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[64]), .I2 (TRIV_CORE_GEN_STATE[131])) ;
         defparam ix33756z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_80" *)
    LUT3 ix34753z1542 (.O (nx34753z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[65]), .I2 (TRIV_CORE_GEN_STATE[130])) ;
         defparam ix34753z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_49" *)
    LUT3 ix35750z1542 (.O (nx35750z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[66]), .I2 (TRIV_CORE_GEN_STATE[129])) ;
         defparam ix35750z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_48" *)
    LUT3 ix37746z1542 (.O (nx37746z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[67]), .I2 (TRIV_CORE_GEN_STATE[128])) ;
         defparam ix37746z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_48" *)
    LUT3 ix38743z1542 (.O (nx38743z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[68]), .I2 (TRIV_CORE_GEN_STATE[127])) ;
         defparam ix38743z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_47" *)
    LUT3 ix39740z1542 (.O (nx39740z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[69]), .I2 (TRIV_CORE_GEN_STATE[126])) ;
         defparam ix39740z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_47" *)
    LUT3 ix40737z1542 (.O (nx40737z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[70]), .I2 (TRIV_CORE_GEN_STATE[125])) ;
         defparam ix40737z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_46" *)
    LUT3 ix41734z1542 (.O (nx41734z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[71]), .I2 (TRIV_CORE_GEN_STATE[124])) ;
         defparam ix41734z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_46" *)
    LUT3 ix42731z1542 (.O (nx42731z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[72]), .I2 (TRIV_CORE_GEN_STATE[123])) ;
         defparam ix42731z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_45" *)
    LUT3 ix43728z1542 (.O (nx43728z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[73]), .I2 (TRIV_CORE_GEN_STATE[122])) ;
         defparam ix43728z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_45" *)
    LUT3 ix44725z1542 (.O (nx44725z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[74]), .I2 (TRIV_CORE_GEN_STATE[121])) ;
         defparam ix44725z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_44" *)
    LUT3 ix45722z1542 (.O (nx45722z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[75]), .I2 (TRIV_CORE_GEN_STATE[120])) ;
         defparam ix45722z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_44" *)
    LUT3 ix46719z1542 (.O (nx46719z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[76]), .I2 (TRIV_CORE_GEN_STATE[119])) ;
         defparam ix46719z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_43" *)
    LUT3 ix48715z1542 (.O (nx48715z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[77]), .I2 (TRIV_CORE_GEN_STATE[118])) ;
         defparam ix48715z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_43" *)
    LUT3 ix49712z1542 (.O (nx49712z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[78]), .I2 (TRIV_CORE_GEN_STATE[117])) ;
         defparam ix49712z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_73" *)
    LUT3 ix50709z1542 (.O (nx50709z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         p_nbus_IV_INPUT_int[79]), .I2 (TRIV_CORE_GEN_STATE[116])) ;
         defparam ix50709z1542.INIT = 8'hE4;
    (* HLUTNM = "LUT62_1_88" *)
    LUT2 ix51706z1322 (.O (nx51706z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[115])) ;
         defparam ix51706z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_89" *)
    LUT2 ix52703z1322 (.O (nx52703z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[114])) ;
         defparam ix52703z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_89" *)
    LUT2 ix53700z1322 (.O (nx53700z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[113])) ;
         defparam ix53700z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_90" *)
    LUT2 ix54697z1322 (.O (nx54697z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[112])) ;
         defparam ix54697z1322.INIT = 4'h8;
    LUT6 ix55694z11594 (.O (nx55694z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[24]), .I2 (TRIV_CORE_GEN_STATE[111]), .I3 (
         TRIV_CORE_GEN_STATE[112]), .I4 (TRIV_CORE_GEN_STATE[113]), .I5 (
         TRIV_CORE_GEN_STATE[126])) ;
         defparam ix55694z11594.INIT = 64'h2882828282282828;
    (* HLUTNM = "LUT62_1_90" *)
    LUT2 ix56691z1322 (.O (nx56691z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[110])) ;
         defparam ix56691z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_91" *)
    LUT2 ix57688z1322 (.O (nx57688z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[109])) ;
         defparam ix57688z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_91" *)
    LUT2 ix59684z1322 (.O (nx59684z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[108])) ;
         defparam ix59684z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_92" *)
    LUT2 ix60681z1322 (.O (nx60681z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[107])) ;
         defparam ix60681z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_92" *)
    LUT2 ix61678z1322 (.O (nx61678z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[106])) ;
         defparam ix61678z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_93" *)
    LUT2 ix62675z1322 (.O (nx62675z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[105])) ;
         defparam ix62675z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_93" *)
    LUT2 ix63672z1322 (.O (nx63672z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[104])) ;
         defparam ix63672z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_94" *)
    LUT2 ix64669z1322 (.O (nx64669z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[103])) ;
         defparam ix64669z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_94" *)
    LUT2 ix130z1322 (.O (nx130z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[102])) ;
         defparam ix130z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_95" *)
    LUT2 ix1127z1322 (.O (nx1127z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[101])) ;
         defparam ix1127z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_95" *)
    LUT2 ix2124z1322 (.O (nx2124z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[100])) ;
         defparam ix2124z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_96" *)
    LUT2 ix3121z1322 (.O (nx3121z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[99])) ;
         defparam ix3121z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_96" *)
    LUT2 ix5117z1322 (.O (nx5117z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[98])) ;
         defparam ix5117z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_97" *)
    LUT2 ix6114z1322 (.O (nx6114z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[97])) ;
         defparam ix6114z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_97" *)
    LUT2 ix7111z1322 (.O (nx7111z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[96])) ;
         defparam ix7111z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_98" *)
    LUT2 ix8108z1322 (.O (nx8108z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[95])) ;
         defparam ix8108z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_98" *)
    LUT2 ix9105z1322 (.O (nx9105z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[94])) ;
         defparam ix9105z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_99" *)
    LUT2 ix10102z1322 (.O (nx10102z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[93])) ;
         defparam ix10102z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_99" *)
    LUT2 ix11099z1322 (.O (nx11099z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[92])) ;
         defparam ix11099z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_100" *)
    LUT2 ix12096z1322 (.O (nx12096z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[91])) ;
         defparam ix12096z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_100" *)
    LUT2 ix13093z1322 (.O (nx13093z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[90])) ;
         defparam ix13093z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_101" *)
    LUT2 ix14090z1322 (.O (nx14090z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[89])) ;
         defparam ix14090z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_101" *)
    LUT2 ix29049z1322 (.O (nx29049z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[88])) ;
         defparam ix29049z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_102" *)
    LUT2 ix30046z1322 (.O (nx30046z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[87])) ;
         defparam ix30046z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_102" *)
    LUT2 ix31043z1322 (.O (nx31043z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[86])) ;
         defparam ix31043z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_103" *)
    LUT2 ix32040z1322 (.O (nx32040z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[85])) ;
         defparam ix32040z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_103" *)
    LUT2 ix33037z1322 (.O (nx33037z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[84])) ;
         defparam ix33037z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_104" *)
    LUT2 ix34034z1322 (.O (nx34034z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[83])) ;
         defparam ix34034z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_104" *)
    LUT2 ix35031z1322 (.O (nx35031z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[82])) ;
         defparam ix35031z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_105" *)
    LUT2 ix36028z1322 (.O (nx36028z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[81])) ;
         defparam ix36028z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_105" *)
    LUT2 ix37025z1322 (.O (nx37025z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[80])) ;
         defparam ix37025z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_106" *)
    LUT2 ix38022z1322 (.O (nx38022z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[79])) ;
         defparam ix38022z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_106" *)
    LUT2 ix40018z1322 (.O (nx40018z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[78])) ;
         defparam ix40018z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_107" *)
    LUT2 ix41015z1322 (.O (nx41015z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[77])) ;
         defparam ix41015z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_107" *)
    LUT2 ix42012z1322 (.O (nx42012z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[76])) ;
         defparam ix42012z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_108" *)
    LUT2 ix43009z1322 (.O (nx43009z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[75])) ;
         defparam ix43009z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_108" *)
    LUT2 ix44006z1322 (.O (nx44006z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[74])) ;
         defparam ix44006z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_109" *)
    LUT2 ix45003z1322 (.O (nx45003z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[73])) ;
         defparam ix45003z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_109" *)
    LUT2 ix46000z1322 (.O (nx46000z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[72])) ;
         defparam ix46000z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_110" *)
    LUT2 ix46997z1322 (.O (nx46997z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[71])) ;
         defparam ix46997z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_110" *)
    LUT2 ix47994z1322 (.O (nx47994z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[70])) ;
         defparam ix47994z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_111" *)
    LUT2 ix48991z1322 (.O (nx48991z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[69])) ;
         defparam ix48991z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_111" *)
    LUT2 ix50987z1322 (.O (nx50987z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[68])) ;
         defparam ix50987z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_112" *)
    LUT2 ix51984z1322 (.O (nx51984z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[67])) ;
         defparam ix51984z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_112" *)
    LUT2 ix52981z1322 (.O (nx52981z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[66])) ;
         defparam ix52981z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_113" *)
    LUT2 ix53978z1322 (.O (nx53978z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[65])) ;
         defparam ix53978z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_113" *)
    LUT2 ix54975z1322 (.O (nx54975z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[64])) ;
         defparam ix54975z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_114" *)
    LUT2 ix55972z1322 (.O (nx55972z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[63])) ;
         defparam ix55972z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_114" *)
    LUT2 ix56969z1322 (.O (nx56969z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[62])) ;
         defparam ix56969z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_115" *)
    LUT2 ix57966z1322 (.O (nx57966z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[61])) ;
         defparam ix57966z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_115" *)
    LUT2 ix58963z1322 (.O (nx58963z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[60])) ;
         defparam ix58963z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_116" *)
    LUT2 ix59960z1322 (.O (nx59960z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[59])) ;
         defparam ix59960z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_116" *)
    LUT2 ix61956z1322 (.O (nx61956z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[58])) ;
         defparam ix61956z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_117" *)
    LUT2 ix62953z1322 (.O (nx62953z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[57])) ;
         defparam ix62953z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_117" *)
    LUT2 ix63950z1322 (.O (nx63950z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[56])) ;
         defparam ix63950z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_118" *)
    LUT2 ix64947z1322 (.O (nx64947z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[55])) ;
         defparam ix64947z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_118" *)
    LUT2 ix408z1322 (.O (nx408z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[54])) ;
         defparam ix408z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_119" *)
    LUT2 ix1405z1322 (.O (nx1405z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[53])) ;
         defparam ix1405z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_119" *)
    LUT2 ix2402z1322 (.O (nx2402z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[52])) ;
         defparam ix2402z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_120" *)
    LUT2 ix3399z1322 (.O (nx3399z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[51])) ;
         defparam ix3399z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_120" *)
    LUT2 ix4396z1322 (.O (nx4396z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[50])) ;
         defparam ix4396z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_121" *)
    LUT2 ix5393z1322 (.O (nx5393z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[49])) ;
         defparam ix5393z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_121" *)
    LUT2 ix7389z1322 (.O (nx7389z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[48])) ;
         defparam ix7389z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_122" *)
    LUT2 ix8386z1322 (.O (nx8386z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[47])) ;
         defparam ix8386z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_122" *)
    LUT2 ix9383z1323 (.O (nx9383z2), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[46])) ;
         defparam ix9383z1323.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_123" *)
    LUT2 ix10380z1322 (.O (nx10380z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[45])) ;
         defparam ix10380z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_123" *)
    LUT2 ix11377z1322 (.O (nx11377z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[44])) ;
         defparam ix11377z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_124" *)
    LUT2 ix12374z1322 (.O (nx12374z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[43])) ;
         defparam ix12374z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_124" *)
    LUT2 ix13371z1322 (.O (nx13371z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[42])) ;
         defparam ix13371z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_125" *)
    LUT2 ix14368z1322 (.O (nx14368z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[41])) ;
         defparam ix14368z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_125" *)
    LUT2 ix15365z1322 (.O (nx15365z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[40])) ;
         defparam ix15365z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_126" *)
    LUT2 ix16362z1322 (.O (nx16362z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[39])) ;
         defparam ix16362z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_126" *)
    LUT2 ix18358z1322 (.O (nx18358z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[38])) ;
         defparam ix18358z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_127" *)
    LUT2 ix19355z1322 (.O (nx19355z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[37])) ;
         defparam ix19355z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_127" *)
    LUT2 ix20352z1322 (.O (nx20352z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[36])) ;
         defparam ix20352z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_128" *)
    LUT2 ix21349z1322 (.O (nx21349z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[35])) ;
         defparam ix21349z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_128" *)
    LUT2 ix22346z1322 (.O (nx22346z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[34])) ;
         defparam ix22346z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_129" *)
    LUT2 ix23343z1322 (.O (nx23343z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[33])) ;
         defparam ix23343z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_129" *)
    LUT2 ix24340z1322 (.O (nx24340z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[32])) ;
         defparam ix24340z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_130" *)
    LUT2 ix25337z1322 (.O (nx25337z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[31])) ;
         defparam ix25337z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_130" *)
    LUT2 ix26334z1322 (.O (nx26334z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[30])) ;
         defparam ix26334z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_131" *)
    LUT2 ix27331z1322 (.O (nx27331z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[29])) ;
         defparam ix27331z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_131" *)
    LUT2 ix29327z1322 (.O (nx29327z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[28])) ;
         defparam ix29327z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_132" *)
    LUT2 ix30324z1322 (.O (nx30324z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[27])) ;
         defparam ix30324z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_132" *)
    LUT2 ix31321z1322 (.O (nx31321z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[26])) ;
         defparam ix31321z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_133" *)
    LUT2 ix32318z1322 (.O (nx32318z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[25])) ;
         defparam ix32318z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_133" *)
    LUT2 ix33315z1322 (.O (nx33315z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[24])) ;
         defparam ix33315z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_134" *)
    LUT2 ix34312z1322 (.O (nx34312z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[23])) ;
         defparam ix34312z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_134" *)
    LUT2 ix35309z1322 (.O (nx35309z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[22])) ;
         defparam ix35309z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_135" *)
    LUT2 ix36306z1322 (.O (nx36306z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[21])) ;
         defparam ix36306z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_135" *)
    LUT2 ix37303z1322 (.O (nx37303z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[20])) ;
         defparam ix37303z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_136" *)
    LUT2 ix38300z1322 (.O (nx38300z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[19])) ;
         defparam ix38300z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_136" *)
    LUT2 ix40296z1322 (.O (nx40296z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[18])) ;
         defparam ix40296z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_137" *)
    LUT2 ix41293z1322 (.O (nx41293z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[17])) ;
         defparam ix41293z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_137" *)
    LUT2 ix42290z1322 (.O (nx42290z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[16])) ;
         defparam ix42290z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_138" *)
    LUT2 ix43287z1322 (.O (nx43287z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[15])) ;
         defparam ix43287z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_138" *)
    LUT2 ix44284z1322 (.O (nx44284z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[14])) ;
         defparam ix44284z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_139" *)
    LUT2 ix45281z1322 (.O (nx45281z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[13])) ;
         defparam ix45281z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_139" *)
    LUT2 ix46278z1322 (.O (nx46278z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[12])) ;
         defparam ix46278z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_140" *)
    LUT2 ix47275z1322 (.O (nx47275z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[11])) ;
         defparam ix47275z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_140" *)
    LUT2 ix48272z1322 (.O (nx48272z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[10])) ;
         defparam ix48272z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_141" *)
    LUT2 ix49269z1322 (.O (nx49269z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[9])) ;
         defparam ix49269z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_141" *)
    LUT2 ix51265z1322 (.O (nx51265z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[8])) ;
         defparam ix51265z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_142" *)
    LUT2 ix52262z1322 (.O (nx52262z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[7])) ;
         defparam ix52262z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_142" *)
    LUT2 ix53259z1322 (.O (nx53259z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[6])) ;
         defparam ix53259z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_143" *)
    LUT2 ix54256z1322 (.O (nx54256z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[5])) ;
         defparam ix54256z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_143" *)
    LUT2 ix55253z1322 (.O (nx55253z1), .I0 (p_nbus_CORE_CNTRL[0]), .I1 (
         TRIV_CORE_GEN_STATE[4])) ;
         defparam ix55253z1322.INIT = 4'h8;
    (* HLUTNM = "LUT62_1_144" *)
    LUT3 ix49842z1465 (.O (nx49842z2), .I0 (p_PLAINTEXT_IN_int), .I1 (
         TRIV_CORE_GEN_STATE[45]), .I2 (TRIV_CORE_GEN_STATE[111])) ;
         defparam ix49842z1465.INIT = 8'h96;
    LUT6 ix49842z35178 (.O (px716), .I0 (nx49842z2), .I1 (p_nbus_pr_state[5]), .I2 (
         TRIV_CORE_GEN_STATE[0]), .I3 (TRIV_CORE_GEN_STATE[126]), .I4 (
         TRIV_CORE_GEN_STATE[195]), .I5 (TRIV_CORE_GEN_STATE[222])) ;
         defparam ix49842z35178.INIT = 64'h8448488448848448;
    GND \reg_STATE(287)_I17_FD_GND  (.G (nx4)) ;
    FDRE \reg_STATE(287)  (.Q (TRIV_CORE_GEN_STATE[0]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx58244z1), .R (nx4)) ;
    FDRE \reg_STATE(286)  (.Q (TRIV_CORE_GEN_STATE[1]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx57247z1), .R (nx4)) ;
    FDRE \reg_STATE(285)  (.Q (TRIV_CORE_GEN_STATE[2]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx56250z1), .R (nx4)) ;
    FDRE \reg_STATE(284)  (.Q (TRIV_CORE_GEN_STATE[3]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx55253z1), .R (nx4)) ;
    FDRE \reg_STATE(283)  (.Q (TRIV_CORE_GEN_STATE[4]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx54256z1), .R (nx4)) ;
    FDRE \reg_STATE(282)  (.Q (TRIV_CORE_GEN_STATE[5]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx53259z1), .R (nx4)) ;
    FDRE \reg_STATE(281)  (.Q (TRIV_CORE_GEN_STATE[6]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx52262z1), .R (nx4)) ;
    FDRE \reg_STATE(280)  (.Q (TRIV_CORE_GEN_STATE[7]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx51265z1), .R (nx4)) ;
    FDRE \reg_STATE(279)  (.Q (TRIV_CORE_GEN_STATE[8]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx49269z1), .R (nx4)) ;
    FDRE \reg_STATE(278)  (.Q (TRIV_CORE_GEN_STATE[9]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx48272z1), .R (nx4)) ;
    FDRE \reg_STATE(277)  (.Q (TRIV_CORE_GEN_STATE[10]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx47275z1), .R (nx4)) ;
    FDRE \reg_STATE(276)  (.Q (TRIV_CORE_GEN_STATE[11]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx46278z1), .R (nx4)) ;
    FDRE \reg_STATE(275)  (.Q (TRIV_CORE_GEN_STATE[12]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx45281z1), .R (nx4)) ;
    FDRE \reg_STATE(274)  (.Q (TRIV_CORE_GEN_STATE[13]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx44284z1), .R (nx4)) ;
    FDRE \reg_STATE(273)  (.Q (TRIV_CORE_GEN_STATE[14]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx43287z1), .R (nx4)) ;
    FDRE \reg_STATE(272)  (.Q (TRIV_CORE_GEN_STATE[15]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx42290z1), .R (nx4)) ;
    FDRE \reg_STATE(271)  (.Q (TRIV_CORE_GEN_STATE[16]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx41293z1), .R (nx4)) ;
    FDRE \reg_STATE(270)  (.Q (TRIV_CORE_GEN_STATE[17]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx40296z1), .R (nx4)) ;
    FDRE \reg_STATE(269)  (.Q (TRIV_CORE_GEN_STATE[18]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx38300z1), .R (nx4)) ;
    FDRE \reg_STATE(268)  (.Q (TRIV_CORE_GEN_STATE[19]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx37303z1), .R (nx4)) ;
    FDRE \reg_STATE(267)  (.Q (TRIV_CORE_GEN_STATE[20]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx36306z1), .R (nx4)) ;
    FDRE \reg_STATE(266)  (.Q (TRIV_CORE_GEN_STATE[21]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx35309z1), .R (nx4)) ;
    FDRE \reg_STATE(265)  (.Q (TRIV_CORE_GEN_STATE[22]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx34312z1), .R (nx4)) ;
    FDRE \reg_STATE(264)  (.Q (TRIV_CORE_GEN_STATE[23]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx33315z1), .R (nx4)) ;
    FDRE \reg_STATE(263)  (.Q (TRIV_CORE_GEN_STATE[24]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx32318z1), .R (nx4)) ;
    FDRE \reg_STATE(262)  (.Q (TRIV_CORE_GEN_STATE[25]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx31321z1), .R (nx4)) ;
    FDRE \reg_STATE(261)  (.Q (TRIV_CORE_GEN_STATE[26]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx30324z1), .R (nx4)) ;
    FDRE \reg_STATE(260)  (.Q (TRIV_CORE_GEN_STATE[27]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx29327z1), .R (nx4)) ;
    FDRE \reg_STATE(259)  (.Q (TRIV_CORE_GEN_STATE[28]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx27331z1), .R (nx4)) ;
    FDRE \reg_STATE(258)  (.Q (TRIV_CORE_GEN_STATE[29]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx26334z1), .R (nx4)) ;
    FDRE \reg_STATE(257)  (.Q (TRIV_CORE_GEN_STATE[30]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx25337z1), .R (nx4)) ;
    FDRE \reg_STATE(256)  (.Q (TRIV_CORE_GEN_STATE[31]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx24340z1), .R (nx4)) ;
    FDRE \reg_STATE(255)  (.Q (TRIV_CORE_GEN_STATE[32]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx23343z1), .R (nx4)) ;
    FDRE \reg_STATE(254)  (.Q (TRIV_CORE_GEN_STATE[33]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx22346z1), .R (nx4)) ;
    FDRE \reg_STATE(253)  (.Q (TRIV_CORE_GEN_STATE[34]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx21349z1), .R (nx4)) ;
    FDRE \reg_STATE(252)  (.Q (TRIV_CORE_GEN_STATE[35]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx20352z1), .R (nx4)) ;
    FDRE \reg_STATE(251)  (.Q (TRIV_CORE_GEN_STATE[36]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx19355z1), .R (nx4)) ;
    FDRE \reg_STATE(250)  (.Q (TRIV_CORE_GEN_STATE[37]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx18358z1), .R (nx4)) ;
    FDRE \reg_STATE(249)  (.Q (TRIV_CORE_GEN_STATE[38]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx16362z1), .R (nx4)) ;
    FDRE \reg_STATE(248)  (.Q (TRIV_CORE_GEN_STATE[39]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx15365z1), .R (nx4)) ;
    FDRE \reg_STATE(247)  (.Q (TRIV_CORE_GEN_STATE[40]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx14368z1), .R (nx4)) ;
    FDRE \reg_STATE(246)  (.Q (TRIV_CORE_GEN_STATE[41]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx13371z1), .R (nx4)) ;
    FDRE \reg_STATE(245)  (.Q (TRIV_CORE_GEN_STATE[42]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx12374z1), .R (nx4)) ;
    FDRE \reg_STATE(244)  (.Q (TRIV_CORE_GEN_STATE[43]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx11377z1), .R (nx4)) ;
    FDRE \reg_STATE(243)  (.Q (TRIV_CORE_GEN_STATE[44]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx10380z1), .R (nx4)) ;
    FDRE \reg_STATE(242)  (.Q (TRIV_CORE_GEN_STATE[45]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx9383z2), .R (nx4)) ;
    FDRE \reg_STATE(241)  (.Q (TRIV_CORE_GEN_STATE[46]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx8386z1), .R (nx4)) ;
    FDRE \reg_STATE(240)  (.Q (TRIV_CORE_GEN_STATE[47]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx7389z1), .R (nx4)) ;
    FDRE \reg_STATE(239)  (.Q (TRIV_CORE_GEN_STATE[48]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx5393z1), .R (nx4)) ;
    FDRE \reg_STATE(238)  (.Q (TRIV_CORE_GEN_STATE[49]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx4396z1), .R (nx4)) ;
    FDRE \reg_STATE(237)  (.Q (TRIV_CORE_GEN_STATE[50]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx3399z1), .R (nx4)) ;
    FDRE \reg_STATE(236)  (.Q (TRIV_CORE_GEN_STATE[51]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx2402z1), .R (nx4)) ;
    FDRE \reg_STATE(235)  (.Q (TRIV_CORE_GEN_STATE[52]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx1405z1), .R (nx4)) ;
    FDRE \reg_STATE(234)  (.Q (TRIV_CORE_GEN_STATE[53]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx408z1), .R (nx4)) ;
    FDRE \reg_STATE(233)  (.Q (TRIV_CORE_GEN_STATE[54]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx64947z1), .R (nx4)) ;
    FDRE \reg_STATE(232)  (.Q (TRIV_CORE_GEN_STATE[55]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx63950z1), .R (nx4)) ;
    FDRE \reg_STATE(231)  (.Q (TRIV_CORE_GEN_STATE[56]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx62953z1), .R (nx4)) ;
    FDRE \reg_STATE(230)  (.Q (TRIV_CORE_GEN_STATE[57]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx61956z1), .R (nx4)) ;
    FDRE \reg_STATE(229)  (.Q (TRIV_CORE_GEN_STATE[58]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx59960z1), .R (nx4)) ;
    FDRE \reg_STATE(228)  (.Q (TRIV_CORE_GEN_STATE[59]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx58963z1), .R (nx4)) ;
    FDRE \reg_STATE(227)  (.Q (TRIV_CORE_GEN_STATE[60]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx57966z1), .R (nx4)) ;
    FDRE \reg_STATE(226)  (.Q (TRIV_CORE_GEN_STATE[61]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx56969z1), .R (nx4)) ;
    FDRE \reg_STATE(225)  (.Q (TRIV_CORE_GEN_STATE[62]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx55972z1), .R (nx4)) ;
    FDRE \reg_STATE(224)  (.Q (TRIV_CORE_GEN_STATE[63]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx54975z1), .R (nx4)) ;
    FDRE \reg_STATE(223)  (.Q (TRIV_CORE_GEN_STATE[64]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx53978z1), .R (nx4)) ;
    FDRE \reg_STATE(222)  (.Q (TRIV_CORE_GEN_STATE[65]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx52981z1), .R (nx4)) ;
    FDRE \reg_STATE(221)  (.Q (TRIV_CORE_GEN_STATE[66]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx51984z1), .R (nx4)) ;
    FDRE \reg_STATE(220)  (.Q (TRIV_CORE_GEN_STATE[67]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx50987z1), .R (nx4)) ;
    FDRE \reg_STATE(219)  (.Q (TRIV_CORE_GEN_STATE[68]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx48991z1), .R (nx4)) ;
    FDRE \reg_STATE(218)  (.Q (TRIV_CORE_GEN_STATE[69]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx47994z1), .R (nx4)) ;
    FDRE \reg_STATE(217)  (.Q (TRIV_CORE_GEN_STATE[70]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx46997z1), .R (nx4)) ;
    FDRE \reg_STATE(216)  (.Q (TRIV_CORE_GEN_STATE[71]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx46000z1), .R (nx4)) ;
    FDRE \reg_STATE(215)  (.Q (TRIV_CORE_GEN_STATE[72]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx45003z1), .R (nx4)) ;
    FDRE \reg_STATE(214)  (.Q (TRIV_CORE_GEN_STATE[73]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx44006z1), .R (nx4)) ;
    FDRE \reg_STATE(213)  (.Q (TRIV_CORE_GEN_STATE[74]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx43009z1), .R (nx4)) ;
    FDRE \reg_STATE(212)  (.Q (TRIV_CORE_GEN_STATE[75]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx42012z1), .R (nx4)) ;
    FDRE \reg_STATE(211)  (.Q (TRIV_CORE_GEN_STATE[76]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx41015z1), .R (nx4)) ;
    FDRE \reg_STATE(210)  (.Q (TRIV_CORE_GEN_STATE[77]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx40018z1), .R (nx4)) ;
    FDRE \reg_STATE(209)  (.Q (TRIV_CORE_GEN_STATE[78]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx38022z1), .R (nx4)) ;
    FDRE \reg_STATE(208)  (.Q (TRIV_CORE_GEN_STATE[79]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx37025z1), .R (nx4)) ;
    FDRE \reg_STATE(207)  (.Q (TRIV_CORE_GEN_STATE[80]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx36028z1), .R (nx4)) ;
    FDRE \reg_STATE(206)  (.Q (TRIV_CORE_GEN_STATE[81]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx35031z1), .R (nx4)) ;
    FDRE \reg_STATE(205)  (.Q (TRIV_CORE_GEN_STATE[82]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx34034z1), .R (nx4)) ;
    FDRE \reg_STATE(204)  (.Q (TRIV_CORE_GEN_STATE[83]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx33037z1), .R (nx4)) ;
    FDRE \reg_STATE(203)  (.Q (TRIV_CORE_GEN_STATE[84]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx32040z1), .R (nx4)) ;
    FDRE \reg_STATE(202)  (.Q (TRIV_CORE_GEN_STATE[85]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx31043z1), .R (nx4)) ;
    FDRE \reg_STATE(201)  (.Q (TRIV_CORE_GEN_STATE[86]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx30046z1), .R (nx4)) ;
    FDRE \reg_STATE(200)  (.Q (TRIV_CORE_GEN_STATE[87]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx29049z1), .R (nx4)) ;
    FDRE \reg_STATE(199)  (.Q (TRIV_CORE_GEN_STATE[88]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx14090z1), .R (nx4)) ;
    FDRE \reg_STATE(198)  (.Q (TRIV_CORE_GEN_STATE[89]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx13093z1), .R (nx4)) ;
    FDRE \reg_STATE(197)  (.Q (TRIV_CORE_GEN_STATE[90]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx12096z1), .R (nx4)) ;
    FDRE \reg_STATE(196)  (.Q (TRIV_CORE_GEN_STATE[91]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx11099z1), .R (nx4)) ;
    FDRE \reg_STATE(195)  (.Q (TRIV_CORE_GEN_STATE[92]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx10102z1), .R (nx4)) ;
    FDRE \reg_STATE(194)  (.Q (TRIV_CORE_GEN_STATE[93]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx9105z1), .R (nx4)) ;
    FDRE \reg_STATE(193)  (.Q (TRIV_CORE_GEN_STATE[94]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx8108z1), .R (nx4)) ;
    FDRE \reg_STATE(192)  (.Q (TRIV_CORE_GEN_STATE[95]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx7111z1), .R (nx4)) ;
    FDRE \reg_STATE(191)  (.Q (TRIV_CORE_GEN_STATE[96]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx6114z1), .R (nx4)) ;
    FDRE \reg_STATE(190)  (.Q (TRIV_CORE_GEN_STATE[97]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx5117z1), .R (nx4)) ;
    FDRE \reg_STATE(189)  (.Q (TRIV_CORE_GEN_STATE[98]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx3121z1), .R (nx4)) ;
    FDRE \reg_STATE(188)  (.Q (TRIV_CORE_GEN_STATE[99]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx2124z1), .R (nx4)) ;
    FDRE \reg_STATE(187)  (.Q (TRIV_CORE_GEN_STATE[100]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx1127z1), .R (nx4)) ;
    FDRE \reg_STATE(186)  (.Q (TRIV_CORE_GEN_STATE[101]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx130z1), .R (nx4)) ;
    FDRE \reg_STATE(185)  (.Q (TRIV_CORE_GEN_STATE[102]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx64669z1), .R (nx4)) ;
    FDRE \reg_STATE(184)  (.Q (TRIV_CORE_GEN_STATE[103]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx63672z1), .R (nx4)) ;
    FDRE \reg_STATE(183)  (.Q (TRIV_CORE_GEN_STATE[104]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx62675z1), .R (nx4)) ;
    FDRE \reg_STATE(182)  (.Q (TRIV_CORE_GEN_STATE[105]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx61678z1), .R (nx4)) ;
    FDRE \reg_STATE(181)  (.Q (TRIV_CORE_GEN_STATE[106]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx60681z1), .R (nx4)) ;
    FDRE \reg_STATE(180)  (.Q (TRIV_CORE_GEN_STATE[107]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx59684z1), .R (nx4)) ;
    FDRE \reg_STATE(179)  (.Q (TRIV_CORE_GEN_STATE[108]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx57688z1), .R (nx4)) ;
    FDRE \reg_STATE(178)  (.Q (TRIV_CORE_GEN_STATE[109]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx56691z1), .R (nx4)) ;
    FDRE \reg_STATE(177)  (.Q (TRIV_CORE_GEN_STATE[110]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx55694z1), .R (nx4)) ;
    FDRE \reg_STATE(176)  (.Q (TRIV_CORE_GEN_STATE[111]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx54697z1), .R (nx4)) ;
    FDRE \reg_STATE(175)  (.Q (TRIV_CORE_GEN_STATE[112]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx53700z1), .R (nx4)) ;
    FDRE \reg_STATE(174)  (.Q (TRIV_CORE_GEN_STATE[113]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx52703z1), .R (nx4)) ;
    FDRE \reg_STATE(173)  (.Q (TRIV_CORE_GEN_STATE[114]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx51706z1), .R (nx4)) ;
    FDRE \reg_STATE(172)  (.Q (TRIV_CORE_GEN_STATE[115]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx50709z1), .R (nx4)) ;
    FDRE \reg_STATE(171)  (.Q (TRIV_CORE_GEN_STATE[116]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx49712z1), .R (nx4)) ;
    FDRE \reg_STATE(170)  (.Q (TRIV_CORE_GEN_STATE[117]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx48715z1), .R (nx4)) ;
    FDRE \reg_STATE(169)  (.Q (TRIV_CORE_GEN_STATE[118]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx46719z1), .R (nx4)) ;
    FDRE \reg_STATE(168)  (.Q (TRIV_CORE_GEN_STATE[119]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx45722z1), .R (nx4)) ;
    FDRE \reg_STATE(167)  (.Q (TRIV_CORE_GEN_STATE[120]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx44725z1), .R (nx4)) ;
    FDRE \reg_STATE(166)  (.Q (TRIV_CORE_GEN_STATE[121]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx43728z1), .R (nx4)) ;
    FDRE \reg_STATE(165)  (.Q (TRIV_CORE_GEN_STATE[122]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx42731z1), .R (nx4)) ;
    FDRE \reg_STATE(164)  (.Q (TRIV_CORE_GEN_STATE[123]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx41734z1), .R (nx4)) ;
    FDRE \reg_STATE(163)  (.Q (TRIV_CORE_GEN_STATE[124]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx40737z1), .R (nx4)) ;
    FDRE \reg_STATE(162)  (.Q (TRIV_CORE_GEN_STATE[125]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx39740z1), .R (nx4)) ;
    FDRE \reg_STATE(161)  (.Q (TRIV_CORE_GEN_STATE[126]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx38743z1), .R (nx4)) ;
    FDRE \reg_STATE(160)  (.Q (TRIV_CORE_GEN_STATE[127]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx37746z1), .R (nx4)) ;
    FDRE \reg_STATE(159)  (.Q (TRIV_CORE_GEN_STATE[128]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx35750z1), .R (nx4)) ;
    FDRE \reg_STATE(158)  (.Q (TRIV_CORE_GEN_STATE[129]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx34753z1), .R (nx4)) ;
    FDRE \reg_STATE(157)  (.Q (TRIV_CORE_GEN_STATE[130]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx33756z1), .R (nx4)) ;
    FDRE \reg_STATE(156)  (.Q (TRIV_CORE_GEN_STATE[131]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx32759z1), .R (nx4)) ;
    FDRE \reg_STATE(155)  (.Q (TRIV_CORE_GEN_STATE[132]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx31762z1), .R (nx4)) ;
    FDRE \reg_STATE(154)  (.Q (TRIV_CORE_GEN_STATE[133]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx30765z1), .R (nx4)) ;
    FDRE \reg_STATE(153)  (.Q (TRIV_CORE_GEN_STATE[134]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx29768z1), .R (nx4)) ;
    FDRE \reg_STATE(152)  (.Q (TRIV_CORE_GEN_STATE[135]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx28771z1), .R (nx4)) ;
    FDRE \reg_STATE(151)  (.Q (TRIV_CORE_GEN_STATE[136]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx27774z1), .R (nx4)) ;
    FDRE \reg_STATE(150)  (.Q (TRIV_CORE_GEN_STATE[137]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx26777z1), .R (nx4)) ;
    FDRE \reg_STATE(149)  (.Q (TRIV_CORE_GEN_STATE[138]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx24781z1), .R (nx4)) ;
    FDRE \reg_STATE(148)  (.Q (TRIV_CORE_GEN_STATE[139]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx23784z1), .R (nx4)) ;
    FDRE \reg_STATE(147)  (.Q (TRIV_CORE_GEN_STATE[140]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx22787z1), .R (nx4)) ;
    FDRE \reg_STATE(146)  (.Q (TRIV_CORE_GEN_STATE[141]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx21790z1), .R (nx4)) ;
    FDRE \reg_STATE(145)  (.Q (TRIV_CORE_GEN_STATE[142]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx20793z1), .R (nx4)) ;
    FDRE \reg_STATE(144)  (.Q (TRIV_CORE_GEN_STATE[143]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx19796z1), .R (nx4)) ;
    FDRE \reg_STATE(143)  (.Q (TRIV_CORE_GEN_STATE[144]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx18799z1), .R (nx4)) ;
    FDRE \reg_STATE(142)  (.Q (TRIV_CORE_GEN_STATE[145]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx17802z1), .R (nx4)) ;
    FDRE \reg_STATE(141)  (.Q (TRIV_CORE_GEN_STATE[146]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx16805z1), .R (nx4)) ;
    FDRE \reg_STATE(140)  (.Q (TRIV_CORE_GEN_STATE[147]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx15808z1), .R (nx4)) ;
    FDRE \reg_STATE(139)  (.Q (TRIV_CORE_GEN_STATE[148]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx13812z1), .R (nx4)) ;
    FDRE \reg_STATE(138)  (.Q (TRIV_CORE_GEN_STATE[149]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx12815z1), .R (nx4)) ;
    FDRE \reg_STATE(137)  (.Q (TRIV_CORE_GEN_STATE[150]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx11818z1), .R (nx4)) ;
    FDRE \reg_STATE(136)  (.Q (TRIV_CORE_GEN_STATE[151]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx10821z1), .R (nx4)) ;
    FDRE \reg_STATE(135)  (.Q (TRIV_CORE_GEN_STATE[152]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx9824z1), .R (nx4)) ;
    FDRE \reg_STATE(134)  (.Q (TRIV_CORE_GEN_STATE[153]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx8827z1), .R (nx4)) ;
    FDRE \reg_STATE(133)  (.Q (TRIV_CORE_GEN_STATE[154]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx7830z1), .R (nx4)) ;
    FDRE \reg_STATE(132)  (.Q (TRIV_CORE_GEN_STATE[155]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx6833z1), .R (nx4)) ;
    FDRE \reg_STATE(131)  (.Q (TRIV_CORE_GEN_STATE[156]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx5836z1), .R (nx4)) ;
    FDRE \reg_STATE(130)  (.Q (TRIV_CORE_GEN_STATE[157]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx4839z1), .R (nx4)) ;
    FDRE \reg_STATE(129)  (.Q (TRIV_CORE_GEN_STATE[158]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx2843z1), .R (nx4)) ;
    FDRE \reg_STATE(128)  (.Q (TRIV_CORE_GEN_STATE[159]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx1846z1), .R (nx4)) ;
    FDRE \reg_STATE(127)  (.Q (TRIV_CORE_GEN_STATE[160]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx849z1), .R (nx4)) ;
    FDRE \reg_STATE(126)  (.Q (TRIV_CORE_GEN_STATE[161]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx65388z1), .R (nx4)) ;
    FDRE \reg_STATE(125)  (.Q (TRIV_CORE_GEN_STATE[162]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx64391z1), .R (nx4)) ;
    FDRE \reg_STATE(124)  (.Q (TRIV_CORE_GEN_STATE[163]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx63394z1), .R (nx4)) ;
    FDRE \reg_STATE(123)  (.Q (TRIV_CORE_GEN_STATE[164]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx62397z1), .R (nx4)) ;
    FDRE \reg_STATE(122)  (.Q (TRIV_CORE_GEN_STATE[165]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx61400z1), .R (nx4)) ;
    FDRE \reg_STATE(121)  (.Q (TRIV_CORE_GEN_STATE[166]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx60403z1), .R (nx4)) ;
    FDRE \reg_STATE(120)  (.Q (TRIV_CORE_GEN_STATE[167]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx59406z1), .R (nx4)) ;
    FDRE \reg_STATE(119)  (.Q (TRIV_CORE_GEN_STATE[168]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx57410z1), .R (nx4)) ;
    FDRE \reg_STATE(118)  (.Q (TRIV_CORE_GEN_STATE[169]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx56413z1), .R (nx4)) ;
    FDRE \reg_STATE(117)  (.Q (TRIV_CORE_GEN_STATE[170]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx55416z1), .R (nx4)) ;
    FDRE \reg_STATE(116)  (.Q (TRIV_CORE_GEN_STATE[171]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx54419z1), .R (nx4)) ;
    FDRE \reg_STATE(115)  (.Q (TRIV_CORE_GEN_STATE[172]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx53422z1), .R (nx4)) ;
    FDRE \reg_STATE(114)  (.Q (TRIV_CORE_GEN_STATE[173]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx52425z1), .R (nx4)) ;
    FDRE \reg_STATE(113)  (.Q (TRIV_CORE_GEN_STATE[174]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx51428z1), .R (nx4)) ;
    FDRE \reg_STATE(112)  (.Q (TRIV_CORE_GEN_STATE[175]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx50431z1), .R (nx4)) ;
    FDRE \reg_STATE(111)  (.Q (TRIV_CORE_GEN_STATE[176]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx49434z1), .R (nx4)) ;
    FDRE \reg_STATE(110)  (.Q (TRIV_CORE_GEN_STATE[177]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx48437z1), .R (nx4)) ;
    FDRE \reg_STATE(109)  (.Q (TRIV_CORE_GEN_STATE[178]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx46441z1), .R (nx4)) ;
    FDRE \reg_STATE(108)  (.Q (TRIV_CORE_GEN_STATE[179]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx45444z1), .R (nx4)) ;
    FDRE \reg_STATE(107)  (.Q (TRIV_CORE_GEN_STATE[180]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx44447z1), .R (nx4)) ;
    FDRE \reg_STATE(106)  (.Q (TRIV_CORE_GEN_STATE[181]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx43450z1), .R (nx4)) ;
    FDRE \reg_STATE(105)  (.Q (TRIV_CORE_GEN_STATE[182]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx42453z1), .R (nx4)) ;
    FDRE \reg_STATE(104)  (.Q (TRIV_CORE_GEN_STATE[183]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx41456z1), .R (nx4)) ;
    FDRE \reg_STATE(103)  (.Q (TRIV_CORE_GEN_STATE[184]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx40459z1), .R (nx4)) ;
    FDRE \reg_STATE(102)  (.Q (TRIV_CORE_GEN_STATE[185]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx39462z1), .R (nx4)) ;
    FDRE \reg_STATE(101)  (.Q (TRIV_CORE_GEN_STATE[186]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx38465z1), .R (nx4)) ;
    FDRE \reg_STATE(100)  (.Q (TRIV_CORE_GEN_STATE[187]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx37468z1), .R (nx4)) ;
    FDRE \reg_STATE(99)  (.Q (TRIV_CORE_GEN_STATE[188]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx34309z1), .R (nx4)) ;
    FDRE \reg_STATE(98)  (.Q (TRIV_CORE_GEN_STATE[189]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx33312z1), .R (nx4)) ;
    FDRE \reg_STATE(97)  (.Q (TRIV_CORE_GEN_STATE[190]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx32315z1), .R (nx4)) ;
    FDRE \reg_STATE(96)  (.Q (TRIV_CORE_GEN_STATE[191]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx31318z1), .R (nx4)) ;
    FDRE \reg_STATE(95)  (.Q (TRIV_CORE_GEN_STATE[192]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx30321z1), .R (nx4)) ;
    FDRE \reg_STATE(94)  (.Q (TRIV_CORE_GEN_STATE[193]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx29324z1), .R (nx4)) ;
    FDRE \reg_STATE(93)  (.Q (TRIV_CORE_GEN_STATE[194]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx28327z1), .R (nx4)) ;
    FDRE \reg_STATE(92)  (.Q (TRIV_CORE_GEN_STATE[195]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx27330z1), .R (nx4)) ;
    FDRE \reg_STATE(91)  (.Q (TRIV_CORE_GEN_STATE[196]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx26333z1), .R (nx4)) ;
    FDRE \reg_STATE(90)  (.Q (TRIV_CORE_GEN_STATE[197]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx25336z1), .R (nx4)) ;
    FDRE \reg_STATE(89)  (.Q (TRIV_CORE_GEN_STATE[198]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx23340z1), .R (nx4)) ;
    FDRE \reg_STATE(88)  (.Q (TRIV_CORE_GEN_STATE[199]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx22343z1), .R (nx4)) ;
    FDRE \reg_STATE(87)  (.Q (TRIV_CORE_GEN_STATE[200]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx21346z1), .R (nx4)) ;
    FDRE \reg_STATE(86)  (.Q (TRIV_CORE_GEN_STATE[201]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx20349z1), .R (nx4)) ;
    FDRE \reg_STATE(85)  (.Q (TRIV_CORE_GEN_STATE[202]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx19352z1), .R (nx4)) ;
    FDRE \reg_STATE(84)  (.Q (TRIV_CORE_GEN_STATE[203]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx18355z1), .R (nx4)) ;
    FDRE \reg_STATE(83)  (.Q (TRIV_CORE_GEN_STATE[204]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx17358z1), .R (nx4)) ;
    FDRE \reg_STATE(82)  (.Q (TRIV_CORE_GEN_STATE[205]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx16361z1), .R (nx4)) ;
    FDRE \reg_STATE(81)  (.Q (TRIV_CORE_GEN_STATE[206]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx15364z1), .R (nx4)) ;
    FDRE \reg_STATE(80)  (.Q (TRIV_CORE_GEN_STATE[207]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx14367z1), .R (nx4)) ;
    FDRE \reg_STATE(79)  (.Q (TRIV_CORE_GEN_STATE[208]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx12371z1), .R (nx4)) ;
    FDRE \reg_STATE(78)  (.Q (TRIV_CORE_GEN_STATE[209]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx11374z1), .R (nx4)) ;
    FDRE \reg_STATE(77)  (.Q (TRIV_CORE_GEN_STATE[210]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx10377z1), .R (nx4)) ;
    FDRE \reg_STATE(76)  (.Q (TRIV_CORE_GEN_STATE[211]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx9380z1), .R (nx4)) ;
    FDRE \reg_STATE(75)  (.Q (TRIV_CORE_GEN_STATE[212]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx8383z1), .R (nx4)) ;
    FDRE \reg_STATE(74)  (.Q (TRIV_CORE_GEN_STATE[213]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx7386z1), .R (nx4)) ;
    FDRE \reg_STATE(73)  (.Q (TRIV_CORE_GEN_STATE[214]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx6389z1), .R (nx4)) ;
    FDRE \reg_STATE(72)  (.Q (TRIV_CORE_GEN_STATE[215]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx5392z1), .R (nx4)) ;
    FDRE \reg_STATE(71)  (.Q (TRIV_CORE_GEN_STATE[216]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx4395z1), .R (nx4)) ;
    FDRE \reg_STATE(70)  (.Q (TRIV_CORE_GEN_STATE[217]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx3398z1), .R (nx4)) ;
    FDRE \reg_STATE(69)  (.Q (TRIV_CORE_GEN_STATE[218]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx1402z1), .R (nx4)) ;
    FDRE \reg_STATE(68)  (.Q (TRIV_CORE_GEN_STATE[219]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx405z1), .R (nx4)) ;
    FDRE \reg_STATE(67)  (.Q (TRIV_CORE_GEN_STATE[220]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx64944z1), .R (nx4)) ;
    FDRE \reg_STATE(66)  (.Q (TRIV_CORE_GEN_STATE[221]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx63947z1), .R (nx4)) ;
    FDRE \reg_STATE(65)  (.Q (TRIV_CORE_GEN_STATE[222]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx62950z1), .R (nx4)) ;
    FDRE \reg_STATE(64)  (.Q (TRIV_CORE_GEN_STATE[223]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx61953z1), .R (nx4)) ;
    FDRE \reg_STATE(63)  (.Q (TRIV_CORE_GEN_STATE[224]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx60956z1), .R (nx4)) ;
    FDRE \reg_STATE(62)  (.Q (TRIV_CORE_GEN_STATE[225]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx59959z1), .R (nx4)) ;
    FDRE \reg_STATE(61)  (.Q (TRIV_CORE_GEN_STATE[226]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx58962z1), .R (nx4)) ;
    FDRE \reg_STATE(60)  (.Q (TRIV_CORE_GEN_STATE[227]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx57965z1), .R (nx4)) ;
    FDRE \reg_STATE(59)  (.Q (TRIV_CORE_GEN_STATE[228]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx55969z1), .R (nx4)) ;
    FDRE \reg_STATE(58)  (.Q (TRIV_CORE_GEN_STATE[229]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx54972z1), .R (nx4)) ;
    FDRE \reg_STATE(57)  (.Q (TRIV_CORE_GEN_STATE[230]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx53975z1), .R (nx4)) ;
    FDRE \reg_STATE(56)  (.Q (TRIV_CORE_GEN_STATE[231]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx52978z1), .R (nx4)) ;
    FDRE \reg_STATE(55)  (.Q (TRIV_CORE_GEN_STATE[232]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx51981z1), .R (nx4)) ;
    FDRE \reg_STATE(54)  (.Q (TRIV_CORE_GEN_STATE[233]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx50984z1), .R (nx4)) ;
    FDRE \reg_STATE(53)  (.Q (TRIV_CORE_GEN_STATE[234]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx49987z1), .R (nx4)) ;
    FDRE \reg_STATE(52)  (.Q (TRIV_CORE_GEN_STATE[235]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx48990z1), .R (nx4)) ;
    FDRE \reg_STATE(51)  (.Q (TRIV_CORE_GEN_STATE[236]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx47993z1), .R (nx4)) ;
    FDRE \reg_STATE(50)  (.Q (TRIV_CORE_GEN_STATE[237]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx46996z1), .R (nx4)) ;
    FDRE \reg_STATE(49)  (.Q (TRIV_CORE_GEN_STATE[238]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx45000z1), .R (nx4)) ;
    FDRE \reg_STATE(48)  (.Q (TRIV_CORE_GEN_STATE[239]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx44003z1), .R (nx4)) ;
    FDRE \reg_STATE(47)  (.Q (TRIV_CORE_GEN_STATE[240]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx43006z1), .R (nx4)) ;
    FDRE \reg_STATE(46)  (.Q (TRIV_CORE_GEN_STATE[241]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx42009z1), .R (nx4)) ;
    FDRE \reg_STATE(45)  (.Q (TRIV_CORE_GEN_STATE[242]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx41012z1), .R (nx4)) ;
    FDRE \reg_STATE(44)  (.Q (TRIV_CORE_GEN_STATE[243]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx40015z1), .R (nx4)) ;
    FDRE \reg_STATE(43)  (.Q (TRIV_CORE_GEN_STATE[244]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx39018z1), .R (nx4)) ;
    FDRE \reg_STATE(42)  (.Q (TRIV_CORE_GEN_STATE[245]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx38021z1), .R (nx4)) ;
    FDRE \reg_STATE(41)  (.Q (TRIV_CORE_GEN_STATE[246]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx37024z1), .R (nx4)) ;
    FDRE \reg_STATE(40)  (.Q (TRIV_CORE_GEN_STATE[247]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx36027z1), .R (nx4)) ;
    FDRE \reg_STATE(39)  (.Q (TRIV_CORE_GEN_STATE[248]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx34031z1), .R (nx4)) ;
    FDRE \reg_STATE(38)  (.Q (TRIV_CORE_GEN_STATE[249]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx33034z1), .R (nx4)) ;
    FDRE \reg_STATE(37)  (.Q (TRIV_CORE_GEN_STATE[250]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx32037z1), .R (nx4)) ;
    FDRE \reg_STATE(36)  (.Q (TRIV_CORE_GEN_STATE[251]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx31040z1), .R (nx4)) ;
    FDRE \reg_STATE(35)  (.Q (TRIV_CORE_GEN_STATE[252]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx30043z1), .R (nx4)) ;
    FDRE \reg_STATE(34)  (.Q (TRIV_CORE_GEN_STATE[253]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx29046z1), .R (nx4)) ;
    FDRE \reg_STATE(33)  (.Q (TRIV_CORE_GEN_STATE[254]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx28049z1), .R (nx4)) ;
    FDRE \reg_STATE(32)  (.Q (TRIV_CORE_GEN_STATE[255]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx27052z1), .R (nx4)) ;
    FDRE \reg_STATE(31)  (.Q (TRIV_CORE_GEN_STATE[256]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx26055z1), .R (nx4)) ;
    FDRE \reg_STATE(30)  (.Q (TRIV_CORE_GEN_STATE[257]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx25058z1), .R (nx4)) ;
    FDRE \reg_STATE(29)  (.Q (TRIV_CORE_GEN_STATE[258]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx23062z1), .R (nx4)) ;
    FDRE \reg_STATE(28)  (.Q (TRIV_CORE_GEN_STATE[259]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx22065z1), .R (nx4)) ;
    FDRE \reg_STATE(27)  (.Q (TRIV_CORE_GEN_STATE[260]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx21068z1), .R (nx4)) ;
    FDRE \reg_STATE(26)  (.Q (TRIV_CORE_GEN_STATE[261]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx20071z1), .R (nx4)) ;
    FDRE \reg_STATE(25)  (.Q (TRIV_CORE_GEN_STATE[262]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx19074z1), .R (nx4)) ;
    FDRE \reg_STATE(24)  (.Q (TRIV_CORE_GEN_STATE[263]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx18077z1), .R (nx4)) ;
    FDRE \reg_STATE(23)  (.Q (TRIV_CORE_GEN_STATE[264]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx17080z1), .R (nx4)) ;
    FDRE \reg_STATE(22)  (.Q (TRIV_CORE_GEN_STATE[265]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx16083z1), .R (nx4)) ;
    FDRE \reg_STATE(21)  (.Q (TRIV_CORE_GEN_STATE[266]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx15086z1), .R (nx4)) ;
    FDRE \reg_STATE(20)  (.Q (TRIV_CORE_GEN_STATE[267]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx14089z1), .R (nx4)) ;
    FDRE \reg_STATE(19)  (.Q (TRIV_CORE_GEN_STATE[268]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx12093z1), .R (nx4)) ;
    FDRE \reg_STATE(18)  (.Q (TRIV_CORE_GEN_STATE[269]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx11096z1), .R (nx4)) ;
    FDRE \reg_STATE(17)  (.Q (TRIV_CORE_GEN_STATE[270]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx10099z1), .R (nx4)) ;
    FDRE \reg_STATE(16)  (.Q (TRIV_CORE_GEN_STATE[271]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx9102z1), .R (nx4)) ;
    FDRE \reg_STATE(15)  (.Q (TRIV_CORE_GEN_STATE[272]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx8105z1), .R (nx4)) ;
    FDRE \reg_STATE(14)  (.Q (TRIV_CORE_GEN_STATE[273]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx7108z1), .R (nx4)) ;
    FDRE \reg_STATE(13)  (.Q (TRIV_CORE_GEN_STATE[274]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx6111z1), .R (nx4)) ;
    FDRE \reg_STATE(12)  (.Q (TRIV_CORE_GEN_STATE[275]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx5114z1), .R (nx4)) ;
    FDRE \reg_STATE(11)  (.Q (TRIV_CORE_GEN_STATE[276]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx4117z1), .R (nx4)) ;
    FDRE \reg_STATE(10)  (.Q (TRIV_CORE_GEN_STATE[277]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx3120z1), .R (nx4)) ;
    FDRE \reg_STATE(9)  (.Q (TRIV_CORE_GEN_STATE[278]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx14180z1), .R (nx4)) ;
    FDRE \reg_STATE(8)  (.Q (TRIV_CORE_GEN_STATE[279]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx15177z1), .R (nx4)) ;
    FDRE \reg_STATE(7)  (.Q (TRIV_CORE_GEN_STATE[280]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx16174z1), .R (nx4)) ;
    FDRE \reg_STATE(6)  (.Q (TRIV_CORE_GEN_STATE[281]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx17171z1), .R (nx4)) ;
    FDRE \reg_STATE(5)  (.Q (TRIV_CORE_GEN_STATE[282]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx18168z1), .R (nx4)) ;
    FDRE \reg_STATE(4)  (.Q (TRIV_CORE_GEN_STATE[283]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx19165z1), .R (nx4)) ;
    FDRE \reg_STATE(3)  (.Q (TRIV_CORE_GEN_STATE[284]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx20162z1), .R (nx4)) ;
    FDRE \reg_STATE(2)  (.Q (TRIV_CORE_GEN_STATE[285]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx21159z1), .R (nx4)) ;
    FDRE \reg_STATE(1)  (.Q (TRIV_CORE_GEN_STATE[286]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx22156z1), .R (nx4)) ;
    FDRE \reg_STATE(0)  (.Q (TRIV_CORE_GEN_STATE[287]), .C (p_SYS_CLK_int), .CE (
         nx9383z1), .D (nx23153z1), .R (nx4)) ;
endmodule

