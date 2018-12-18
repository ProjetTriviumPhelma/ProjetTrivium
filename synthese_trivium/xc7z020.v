// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/versclibs/data/simprims/X_BUF.v,v 1.5 2005/03/14 21:05:15 yanx Exp $
///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2004 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 8.1i (I.13)
//  \   \         Description : Xilinx Timing Simulation Library Component
//  /   /                  General Purpose Buffer
// /___/   /\     Filename : X_BUF.v
// \   \  /  \    Timestamp : Thu Mar 25 16:43:54 PST 2004
//  \___\/\___\
//
// Revision:
//    03/23/04 - Initial version.
//    03/11/05 - Add LOC paramter;
// End Revision

`timescale 1 ps/1 ps

module X_BUF (O, I);

  parameter LOC = "UNPLACED";
  output O;
  input I;

  buf (O, I);

  specify

	(I => O) = (0:0:0,  0:0:0);
	specparam PATHPULSE$ = 0;

  endspecify

endmodule
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/versclibs/data/simprims/X_CKBUF.v,v 1.5 2005/03/14 21:05:15 yanx Exp $
///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2004 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 8.1i (I.13)
//  \   \         Description : Xilinx Timing Simulation Library Component
//  /   /                  Clock Buffer
// /___/   /\     Filename : X_CKBUF.v
// \   \  /  \    Timestamp : Thu Mar 25 16:43:54 PST 2004
//  \___\/\___\
//
// Revision:
//    03/23/04 - Initial version.
//    03/11/05 - Add LOC paramter;
// End Revision

`timescale 1 ps/1 ps

module X_CKBUF (O, I);

  parameter LOC = "UNPLACED";
  output O;
  input I;

  buf (O, I);

  specify

	(I => O) = (0:0:0, 0:0:0);
	specparam PATHPULSE$ = 0;

  endspecify

endmodule
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/versclibs/data/simprims/X_FF.v,v 1.16 2009/08/22 00:02:08 harikr Exp $
///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2005 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 11.i (L.38)
//  \   \         Description : Xilinx Timing Simulation Library Component
//  /   /                  D Flip-Flop with Asynchronous Clear and Preset and Clock Enable
// /___/   /\     Filename : X_FF.v
// \   \  /  \    Timestamp : Thu Mar 11 16:43:55 PST 2005
//  \___\/\___\
//
// Revision:
//    03/23/04 - Initial version.
//    03/11/05 - Added LOC parameter, global GSR signal and its functionality, and initialized outpus.
//    03/16/05 - Add XON MSGON to support asynchronous reg.
//    03/18/05 - Added global PRLD signal.
//    07/22/05 - Remove global PRLD signal (CR211419).
//    09/22/05 - Add GSR to timing check enable.  Fix I enable bug. (CR 217800)
//    07/05/06 - Change order of rst_int and set_int (CR212994).
//    07/19/06 - Add wire declaration for undeclared wire signals.
//    04/17/08 - Add negative setup/hold support (CR472013)
//    12/19/09 - Add pulse width check (CR501467)
//    03/30/09 - Add negative support for recrem (CR516975)
// End Revision

`timescale 1 ps/1 ps
 
module X_FF (O, CE, CLK, I, RST, SET);

  parameter INIT = 1'b0;
  parameter LOC = "UNPLACED";
  parameter XON = "TRUE";
  parameter MSGON = "TRUE";
    
  output O;
  input CE, CLK, I, RST, SET;

  tri0 GSR = glbl.GSR;
    
  wire ni, ngsr, nrst, nset, in_out;
  wire in_clk_enable, ce_clk_enable, rst_clk_enable, set_clk_enable;
  wire in_clk_enable1, ce_clk_enable1, rst_clk_enable1, set_clk_enable1;
  wire o_out;
  reg notifier;
  wire notifier1;
  reg o_reg = INIT;
  reg rst_int, set_int;
  wire I_dly, CLK_dly, CE_dly;
  wire RST_dly, SET_dly;

  buf O1 (O, o_reg);
    
  not (ni, I_dly);
  not (nrst, RST_dly);
  not (nset, SET_dly);
  not (ngsr, GSR);
  xor (in_out, I_dly, O);

  and (in_clk_enable, ngsr, nrst, nset, CE_dly);
  and (ce_clk_enable, ngsr, nrst, nset, in_out);
  and (rst_clk_enable, ngsr, CE_dly, I_dly);
  and (set_clk_enable, ngsr, CE_dly, nrst, ni);

  assign notifier1 = (XON == "FALSE") ?  1'bx : notifier;
  assign ce_clk_enable1 = (MSGON =="FALSE") ? 1'b0 : ce_clk_enable; 
  assign in_clk_enable1 = (MSGON =="FALSE") ? 1'b0 : in_clk_enable;
  assign rst_clk_enable1 = (MSGON =="FALSE") ? 1'b0 : rst_clk_enable; 
  assign set_clk_enable1 = (MSGON =="FALSE") ? 1'b0 : set_clk_enable;

  always @(GSR or SET_dly or RST_dly) begin
      if (GSR) 
	  if (INIT) begin
	      set_int = 1;
	      rst_int = 0;
	  end
	  else begin
	      rst_int = 1;
	      set_int = 0;
	  end
      else begin
	  set_int = SET_dly;
	  rst_int = RST_dly;
      end
  end

  always @(o_out)
      o_reg = o_out;
    
  ffsrce (o_out, CLK_dly, I_dly, CE_dly, set_int, rst_int, notifier1);

  specify

	(CLK => O) = (100:100:100, 100:100:100);
	(SET => O) = (0:0:0, 0:0:0);
	(RST => O) = (0:0:0, 0:0:0);

	$setuphold (posedge CLK, posedge CE &&& (ce_clk_enable1!=0), 0:0:0, 0:0:0, notifier,,,CLK_dly,CE_dly);
	$setuphold (posedge CLK, negedge CE &&& (ce_clk_enable1!=0), 0:0:0, 0:0:0, notifier,,,CLK_dly,CE_dly);
	$setuphold (posedge CLK, posedge I &&& (in_clk_enable1!=0), 0:0:0, 0:0:0, notifier,,,CLK_dly,I_dly);
	$setuphold (posedge CLK, negedge I &&& (in_clk_enable1!=0), 0:0:0, 0:0:0, notifier,,,CLK_dly,I_dly);

	$recrem (negedge RST, posedge CLK &&& (rst_clk_enable1!=0), 0:0:0, 0:0:0, notifier,,,RST_dly, CLK_dly);
	$recrem (negedge SET, posedge CLK &&& (set_clk_enable1!=0), 0:0:0, 0:0:0, notifier,,,SET_dly, CLK_dly);

	$period (posedge CLK &&& CE, 0:0:0, notifier);
	$width (posedge CLK &&& CE, 0:0:0, 0, notifier);
	$width (negedge CLK &&& CE, 0:0:0, 0, notifier);
	$width (posedge RST, 0:0:0, 0, notifier);
	$width (posedge SET, 0:0:0, 0, notifier);

	specparam PATHPULSE$ = 0;

  endspecify

endmodule


primitive ffsrce (q, clk, d, ce, set, rst, notifier);

  output q; reg q;
  input clk, d, ce, set, rst, notifier;

  table

    //   clk    d     ce   set   rst   notifier    q     q+;

          ?     ?      ?    1     0       ?    :   ?  :  1;
          ?     ?      ?    ?     1       ?    :   ?  :  0;

         (01)   0      1    0     0       ?    :   ?  :  0;
         (01)   1      1    0     0       ?    :   ?  :  1;
         (01)   x      1    0     0       ?    :   ?  :  x;
         (01)   0      x    0     0       ?    :   0  :  0;
         (01)   1      x    0     0       ?    :   1  :  1;

         (??)   ?      0    ?     ?       ?    :   ?  :  -;
         (1?)   ?      ?    ?     ?       ?    :   ?  :  -;
         (?0)   ?      ?    ?     ?       ?    :   ?  :  -;

         (01)   0      1    0     x       ?    :   ?  :  0;
         (01)   1      1    x     0       ?    :   ?  :  1;

          ?     ?      ?    0    (?x)     ?    :   0  :  0;
          ?     ?      ?   (?x)   0       ?    :   1  :  1;

         (?1)   1      ?    ?     0       ?    :   1  :  1;
         (?1)   0      ?    0     ?       ?    :   0  :  0;
         (0?)   1      ?    ?     0       ?    :   1  :  1;
         (0?)   0      ?    0     ?       ?    :   0  :  0;

          ?    (??)    ?    ?     ?       ?    :   ?  :  -;
          ?     ?    (??)   ?     ?       ?    :   ?  :  -;
          ?     ?      ?   (?0)   ?       ?    :   ?  :  -;

          ?     ?      ?    x    (?0)     ?    :   ?  :  x;
          ?     ?      ?    0    (?0)     ?    :   ?  :  -;

          ?     ?      ?    ?     ?       *    :   ?  :  x;

  endtable

endprimitive
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/versclibs/data/simprims/X_INV.v,v 1.5 2005/03/14 21:05:15 yanx Exp $
///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2004 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 8.1i (I.13)
//  \   \         Description : Xilinx Timing Simulation Library Component
//  /   /                  Inverter
// /___/   /\     Filename : X_INV.v
// \   \  /  \    Timestamp : Thu Mar 25 16:43:55 PST 2004
//  \___\/\___\
//
// Revision:
//    03/23/04 - Initial version.
//    03/11/05 - Add LOC paramter;
// End Revision

`timescale 1 ps/1 ps

module X_INV (O, I);

  parameter LOC = "UNPLACED";
  output O;
  input I;

  not (O, I);

  specify

	(I => O) = (0:0:0, 0:0:0);
	specparam PATHPULSE$ = 0;

  endspecify

endmodule
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/versclibs/data/simprims/X_LUT2.v,v 1.5 2005/03/14 21:05:15 yanx Exp $
///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2004 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 8.1i (I.13)
//  \   \         Description : Xilinx Timing Simulation Library Component
//  /   /                  2-input Look-Up-Table with General Output
// /___/   /\     Filename : X_LUT2.v
// \   \  /  \    Timestamp : Thu Mar 25 16:43:56 PST 2004
//  \___\/\___\
//
// Revision:
//    03/23/04 - Initial version.
//    03/11/05 - Add LOC paramter;
// End Revision

`timescale 1 ps/1 ps

module X_LUT2 (O, ADR0, ADR1);

  parameter INIT = 4'h0;
  parameter LOC = "UNPLACED";

  output O;
  input ADR0, ADR1;

  wire out, a0, a1;

  buf b0 (a0, ADR0);
  buf b1 (a1, ADR1);

  x_lut2_mux4 (O, INIT[3], INIT[2], INIT[1], INIT[0], a1, a0);

  specify

	(ADR0 => O) = (0:0:0, 0:0:0);
	(ADR1 => O) = (0:0:0, 0:0:0);
	specparam PATHPULSE$ = 0;

  endspecify

endmodule

primitive x_lut2_mux4 (o, d3, d2, d1, d0, s1, s0);

  output o;
  input d3, d2, d1, d0;
  input s1, s0;

  table

    // d3  d2  d1  d0  s1  s0 : o;

       ?   ?   ?   1   0   0  : 1;
       ?   ?   ?   0   0   0  : 0;
       ?   ?   1   ?   0   1  : 1;
       ?   ?   0   ?   0   1  : 0;
       ?   1   ?   ?   1   0  : 1;
       ?   0   ?   ?   1   0  : 0;
       1   ?   ?   ?   1   1  : 1;
       0   ?   ?   ?   1   1  : 0;

       ?   ?   0   0   0   x  : 0;
       ?   ?   1   1   0   x  : 1;
       0   0   ?   ?   1   x  : 0;
       1   1   ?   ?   1   x  : 1;

       ?   0   ?   0   x   0  : 0;
       ?   1   ?   1   x   0  : 1;
       0   ?   0   ?   x   1  : 0;
       1   ?   1   ?   x   1  : 1;

       0   0   0   0   x   x  : 0;
       1   1   1   1   x   x  : 1;

  endtable

endprimitive
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/versclibs/data/simprims/X_LUT3.v,v 1.5 2005/03/14 21:05:15 yanx Exp $
///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2004 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 8.1i (I.13)
//  \   \         Description : Xilinx Timing Simulation Library Component
//  /   /                  3-input Look-Up-Table with General Output
// /___/   /\     Filename : X_LUT3.v
// \   \  /  \    Timestamp : Thu Mar 25 16:43:56 PST 2004
//  \___\/\___\
//
// Revision:
//    03/23/04 - Initial version.
//    03/11/05 - Add LOC paramter;
// End Revision

`timescale 1 ps/1 ps

module X_LUT3 (O, ADR0, ADR1, ADR2);

  parameter INIT = 8'h00;
  parameter LOC = "UNPLACED";

  output O;
  input ADR0, ADR1, ADR2;

  wire out0, out1, a0, a1, a2;

  buf b0 (a0, ADR0);
  buf b1 (a1, ADR1);
  buf b2 (a2, ADR2);

  x_lut3_mux4 (out1, INIT[7], INIT[6], INIT[5], INIT[4], a1, a0);
  x_lut3_mux4 (out0, INIT[3], INIT[2], INIT[1], INIT[0], a1, a0);
  x_lut3_mux4 (O, 1'b0, 1'b0, out1, out0, 1'b0, a2);

  specify

	(ADR0 => O) = (0:0:0, 0:0:0);
	(ADR1 => O) = (0:0:0, 0:0:0);
	(ADR2 => O) = (0:0:0, 0:0:0);
	specparam PATHPULSE$ = 0;

  endspecify

endmodule

primitive x_lut3_mux4 (o, d3, d2, d1, d0, s1, s0);

  output o;
  input d3, d2, d1, d0;
  input s1, s0;

  table

    // d3  d2  d1  d0  s1  s0 : o;

       ?   ?   ?   1   0   0  : 1;
       ?   ?   ?   0   0   0  : 0;
       ?   ?   1   ?   0   1  : 1;
       ?   ?   0   ?   0   1  : 0;
       ?   1   ?   ?   1   0  : 1;
       ?   0   ?   ?   1   0  : 0;
       1   ?   ?   ?   1   1  : 1;
       0   ?   ?   ?   1   1  : 0;

       ?   ?   0   0   0   x  : 0;
       ?   ?   1   1   0   x  : 1;
       0   0   ?   ?   1   x  : 0;
       1   1   ?   ?   1   x  : 1;

       ?   0   ?   0   x   0  : 0;
       ?   1   ?   1   x   0  : 1;
       0   ?   0   ?   x   1  : 0;
       1   ?   1   ?   x   1  : 1;

       0   0   0   0   x   x  : 0;
       1   1   1   1   x   x  : 1;

  endtable

endprimitive
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/versclibs/data/simprims/X_LUT4.v,v 1.10 2007/06/05 00:00:54 yanx Exp $
///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2004 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 10.1i (K.17)
//  \   \         Description : Xilinx Timing Simulation Library Component
//  /   /                  4-input Look-Up-Table with General Output
// /___/   /\     Filename : X_LUT4.v
// \   \  /  \    Timestamp : Thu Mar 25 16:43:56 PST 2004
//  \___\/\___\
//
// Revision:
//    03/23/04 - Initial version.
//    02/04/05 - Rev 0.0.1 Replace premitive with function; Remove buf.
//    03/11/05 - Add LOC paramter;
//    06/04/07 - Add wire declaration to internal signal.
// End Revision

`timescale 1 ps/1 ps

module X_LUT4 (O, ADR0, ADR1, ADR2, ADR3);

  parameter INIT = 16'h0000;
  parameter LOC = "UNPLACED";

  output O;
  input ADR0, ADR1, ADR2, ADR3;

  wire  a0, a1, a2, a3;
  wire o_out_tmp;
  reg o_out;
  reg tmp;

  buf b0 (a0, ADR0);
  buf b1 (a1, ADR1);
  buf b2 (a2, ADR2);
  buf b3 (a3, ADR3);

  buf b4 (O, o_out_tmp);

  assign o_out_tmp = o_out;

  always @(  a3 or  a2 or  a1 or  a0 )  begin

      tmp =  a0 ^ a1  ^ a2 ^ a3;

    if ( tmp == 0 || tmp == 1)

      o_out = INIT[{a3, a2, a1, a0}];

    else 

      o_out =  lut4_mux4 ( {lut4_mux4 ( INIT[15:12], {a1, a0}),
                          lut4_mux4 ( INIT[11:8], {a1, a0}),
                          lut4_mux4 ( INIT[7:4], {a1, a0}),
                          lut4_mux4 ( INIT[3:0], {a1, a0}) }, {a3, a2});
  end

  specify

	(ADR0 => O) = (0:0:0, 0:0:0);
	(ADR1 => O) = (0:0:0, 0:0:0);
	(ADR2 => O) = (0:0:0, 0:0:0);
	(ADR3 => O) = (0:0:0, 0:0:0);
	specparam PATHPULSE$ = 0;

  endspecify


  function lut4_mux4;
  input [3:0] d;
  input [1:0] s;

  begin

       if ((s[1]^s[0] ==1) || (s[1]^s[0] ==0))

           lut4_mux4 = d[s];

         else if ((d[0] ^ d[1]) == 0 && (d[2] ^ d[3]) == 0 && (d[0] ^ d[2]) == 0)
           lut4_mux4 = d[0];
         else if ((s[1] == 0) && (d[0] == d[1]))
           lut4_mux4 = d[0];
         else if ((s[1] == 1) && (d[2] == d[3]))
           lut4_mux4 = d[2];
         else if ((s[0] == 0) && (d[0] == d[2]))
           lut4_mux4 = d[0];
         else if ((s[0] == 1) && (d[1] == d[3]))
           lut4_mux4 = d[1];
         else
           lut4_mux4 = 1'bx;

   end
  endfunction

endmodule

// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/versclibs/data/simprims/X_LUT6.v,v 1.11 2007/06/05 00:00:54 yanx Exp $
///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2004 Xilinx, ADRnc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 10.1i (K.17)
//  \   \         Description : Xilinx Timing Simulation Library Component
//  /   /                  6-input Look-Up-Table with General Output
// /___/   /\     Filename : X_LUT6.v
// \   \  /  \    Timestamp : Thu Mar 25 16:43:56 PST 2004
//  \___\/\___\
//
// Revision:
//    03/23/04 - ADRnitial version.
//    02/04/05 - Replace premitive with function; Remove buf.
//    01/07/06 - Add LOC Parameter (CR 222733)
//    06/04/07 - Add wire declaration to internal signal.
// End Revision

`timescale 1 ps/1 ps

module X_LUT6 (O, ADR0, ADR1, ADR2, ADR3, ADR4, ADR5);

  parameter INIT = 64'h0000000000000000;
  parameter LOC = "UNPLACED";

  output O;
  input ADR0, ADR1, ADR2, ADR3, ADR4, ADR5;

  wire a0, a1, a2, a3, a4, a5;
  wire o_out_tmp;

  buf b0 (a0, ADR0);
  buf b1 (a1, ADR1);
  buf b2 (a2, ADR2);
  buf b3 (a3, ADR3);
  buf b4 (a4, ADR4);
  buf b5 (a5, ADR5);
  buf b6 (O, o_out_tmp);

  reg o_out;
  reg tmp;
  assign o_out_tmp = o_out;

  always @( a5 or a4 or a3 or  a2 or  a1 or  a0 )  begin

    tmp =  a0 ^ a1  ^ a2 ^ a3 ^ a4 ^ a5;

    if ( tmp == 0 || tmp == 1)

        o_out = INIT[{a5, a4, a3, a2, a1, a0}];

    else

      o_out =  lut6_mux8 ( {lut6_mux8 ( INIT[63:56], {a2, a1, a0}),
                          lut6_mux8 ( INIT[55:48], {a2, a1, a0}),
                          lut6_mux8 ( INIT[47:40], {a2, a1, a0}),
                          lut6_mux8 ( INIT[39:32], {a2, a1, a0}),
                          lut6_mux8 ( INIT[31:24], {a2, a1, a0}),
                          lut6_mux8 ( INIT[23:16], {a2, a1, a0}),
                          lut6_mux8 ( INIT[15:8], {a2, a1, a0}),
                          lut6_mux8 ( INIT[7:0], {a2, a1, a0}) }, {a5, a4, a3});
  end



  specify

	(ADR0 => O) = (0:0:0, 0:0:0);
	(ADR1 => O) = (0:0:0, 0:0:0);
	(ADR2 => O) = (0:0:0, 0:0:0);
	(ADR3 => O) = (0:0:0, 0:0:0);
	(ADR4 => O) = (0:0:0, 0:0:0);
	(ADR5 => O) = (0:0:0, 0:0:0);
	specparam PATHPULSE$ = 0;

  endspecify


  function lut6_mux8;
  input [7:0] d;
  input [2:0] s;
   
  begin

       if ((s[2]^s[1]^s[0] ==1) || (s[2]^s[1]^s[0] ==0))
           
           lut6_mux8 = d[s];

         else
           if ( ~(|d))
                 lut6_mux8 = 1'b0;
           else if ((&d))
                 lut6_mux8 = 1'b1;
           else if (((s[1]^s[0] ==1'b1) || (s[1]^s[0] ==1'b0)) && (d[{1'b0,s[1:0]}]==d[{1'b1,s[1:0]}]))
                 lut6_mux8 = d[{1'b0,s[1:0]}];
           else if (((s[2]^s[0] ==1) || (s[2]^s[0] ==0)) && (d[{s[2],1'b0,s[0]}]==d[{s[2],1'b1,s[0]}]))
                 lut6_mux8 = d[{s[2],1'b0,s[0]}];
           else if (((s[2]^s[1] ==1) || (s[2]^s[1] ==0)) && (d[{s[2],s[1],1'b0}]==d[{s[2],s[1],1'b1}]))
                 lut6_mux8 = d[{s[2],s[1],1'b0}];
           else if (((s[0] ==1) || (s[0] ==0)) && (d[{1'b0,1'b0,s[0]}]==d[{1'b0,1'b1,s[0]}]) &&
              (d[{1'b0,1'b0,s[0]}]==d[{1'b1,1'b0,s[0]}]) && (d[{1'b0,1'b0,s[0]}]==d[{1'b1,1'b1,s[0]}]))
                 lut6_mux8 = d[{1'b0,1'b0,s[0]}];
           else if (((s[1] ==1) || (s[1] ==0)) && (d[{1'b0,s[1],1'b0}]==d[{1'b0,s[1],1'b1}]) &&
              (d[{1'b0,s[1],1'b0}]==d[{1'b1,s[1],1'b0}]) && (d[{1'b0,s[1],1'b0}]==d[{1'b1,s[1],1'b1}]))
                 lut6_mux8 = d[{1'b0,s[1],1'b0}];
           else if (((s[2] ==1) || (s[2] ==0)) && (d[{s[2],1'b0,1'b0}]==d[{s[2],1'b0,1'b1}]) &&
              (d[{s[2],1'b0,1'b0}]==d[{s[2],1'b1,1'b0}]) && (d[{s[2],1'b0,1'b0}]==d[{s[2],1'b1,1'b1}]))
                 lut6_mux8 = d[{s[2],1'b0,1'b0}];
           else
                 lut6_mux8 = 1'bx;
   end
  endfunction

endmodule
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/versclibs/data/simprims/X_MUX2.v,v 1.5 2005/03/14 21:05:15 yanx Exp $
///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2004 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 8.1i (I.13)
//  \   \         Description : Xilinx Timing Simulation Library Component
//  /   /                  2-to-1 Multiplexer
// /___/   /\     Filename : X_MUX2.v
// \   \  /  \    Timestamp : Thu Mar 25 16:43:56 PST 2004
//  \___\/\___\
//
// Revision:
//    03/23/04 - Initial version.
//    03/11/05 - Add LOC paramter;
// End Revision

`timescale 1 ps/1 ps

module X_MUX2 (O, IA, IB, SEL);

  output O;
  input IA, IB, SEL;

  parameter LOC = "UNPLACED";

  mux (O, IA, IB, SEL);

  specify

	(IA => O) = (0:0:0, 0:0:0);
	(IB => O) = (0:0:0, 0:0:0);
	(SEL => O) = (0:0:0, 0:0:0);
	specparam PATHPULSE$ = 0;

  endspecify

endmodule


primitive mux (out, ina, inb, sel);

  output out;
  input  ina, inb, sel;

  table

   //    ina   inb   sel   out;

          0     ?     0  :  0;
          1     ?     0  :  1;
          ?     0     1  :  0;
          ?     1     1  :  1;
          0     0     x  :  0;
          1     1     x  :  1;

  endtable

endprimitive
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/versclibs/data/simprims/X_OBUF.v,v 1.3 2005/07/21 23:37:03 fphillip Exp $
///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2004 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 8.1i (I.13)
//  \   \         Description : Xilinx Timing Simulation Library Component
//  /   /                  Output Buffer
// /___/   /\     Filename : X_OBUF.v
// \   \  /  \    Timestamp : Tue Mar  1 14:57:54 PST 2005
//  \___\/\___\
//
// Revision:
//    03/23/04 - Initial version.
//    03/01/05 - Added global GTS.
//    03/01/05 - Added LOC parameter.
//    05/23/05 - Declared tri0 GTS.
//    07/21/05 - CR 212974 -- matched unisim parameters as requested by other tools
// End Revision

`timescale 1 ps/1 ps

module X_OBUF (O, I);

    parameter LOC = " UNPLACED";
    parameter CAPACITANCE = "DONT_CARE";
    parameter DRIVE = 12;
    parameter IOSTANDARD = "DEFAULT";
    parameter SLEW = "SLOW";

    output O;
    input I;
    tri0 GTS = glbl.GTS;

    bufif0 (O, I, GTS);

    specify
	(I => O) = (0:0:0, 0:0:0);
	specparam PATHPULSE$ = 0;
    endspecify

endmodule
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/versclibs/data/simprims/X_ONE.v,v 1.5 2005/03/14 21:05:15 yanx Exp $
///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2004 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 8.1i (I.13)
//  \   \         Description : Xilinx Timing Simulation Library Component
//  /   /                  VCC Connection
// /___/   /\     Filename : X_ONE.v
// \   \  /  \    Timestamp : Thu Mar 25 16:43:57 PST 2004
//  \___\/\___\
//
// Revision:
//    03/23/04 - Initial version.
//    03/11/05 - Add LOC paramter;
// End Revision

`timescale 1 ps/1 ps

module X_ONE (O);

  parameter LOC = "UNPLACED";
  output O;

  assign O = 1'b1;

endmodule
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/versclibs/data/simprims/X_SFF.v,v 1.17 2009/08/22 00:02:08 harikr Exp $
///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2005 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 11.i (L.43)
//  \   \         Description : Xilinx Timing Simulation Library Component
//  /   /                  
// /___/   /\     Filename : X_SFF.v
// \   \  /  \    Timestamp : Thu Mar 11 16:44:05 PST 2005
//  \___\/\___\
//
// Revision:
//    03/23/04 - Initial version.
//    03/11/05 - Added LOC parameter, global GSR signal and its functionality, and initialized outpus.
//    03/18/05 - Added global PRLD signal.
//    05/09/05 - Fixed X_SFF table for CR#206720
//    07/22/05 - Remove global PRLD signal (CR211419).
//    07/05/06 - Change order of rst_int and set_int (CR212994).
//    07/17/06 - Disable timing check when GSR =1 (CR 218959).
//    07/17/06 - Add XON MSGON to support asynchronous reg.( 234530)
//    04/17/08 - Add negative setup/hold support (CR472013)
//    12/19/09 - Add pulse width check (CR501467)
//    03/30/09 - Add negative recrem  support (CR516975)
//    05/08/09 - fix bug in _clk_enable AND list (CR500591).
// End Revision

`timescale 1 ps/1 ps
 
module X_SFF (O, CE, CLK, I, RST, SET, SRST, SSET);

  parameter INIT = 1'b0;
  parameter LOC = "UNPLACED";
  parameter XON = "TRUE";
  parameter MSGON = "TRUE";
    
  output O;
  input CE, CLK, I, RST, SET, SRST, SSET;

  tri0 GSR = glbl.GSR;
    
  wire CE_dly, CLK_dly, I_dly, SRST_dly, SSET_dly;
  wire RST_dly, SET_dly;
  wire ngsr, ni, nrst, nset, nsrst, nsset, in_out;
  wire in_clk_enable, ce_clk_enable, rst_clk_enable, set_clk_enable;
  wire in_clk_enable1, ce_clk_enable1, rst_clk_enable1, set_clk_enable1;
  wire srst_clk_enable, sset_clk_enable;
  wire srst_clk_enable1, sset_clk_enable1;
  wire o_out;
  reg notifier;
  wire notifier1;
  reg o_reg = INIT;
  reg rst_int, set_int;

  buf O1 (O, o_reg);
    
  not (ngsr, GSR);
  not (ni, I_dly);
  not (nrst, RST_dly);
  not (nset, SET_dly);
  not (nsrst, SRST_dly);
  not (nsset, SSET_dly);
  xor (in_out, I_dly, O);
  
  and (in_clk_enable, ngsr, nrst, nset, nsrst, nsset, CE_dly);
  and (ce_clk_enable, ngsr, nrst, nset, nsrst, nsset, in_out);
  and (rst_clk_enable, ngsr);
  and (set_clk_enable, ngsr, nrst);
  and (srst_clk_enable, ngsr, nrst, nset);
  and (sset_clk_enable, ngsr, nrst, nset, nsrst);    

  assign notifier1 = (XON == "FALSE") ?  1'bx : notifier;
  assign ce_clk_enable1 = (MSGON =="FALSE") ? 1'b0 : ce_clk_enable; 
  assign in_clk_enable1 = (MSGON =="FALSE") ? 1'b0 : in_clk_enable;
  assign rst_clk_enable1 = (MSGON =="FALSE") ? 1'b0 : rst_clk_enable; 
  assign set_clk_enable1 = (MSGON =="FALSE") ? 1'b0 : set_clk_enable;
  assign srst_clk_enable1 = (MSGON =="FALSE") ? 1'b0 : srst_clk_enable; 
  assign sset_clk_enable1 = (MSGON =="FALSE") ? 1'b0 : sset_clk_enable;

  always @(GSR or SET_dly or RST_dly) begin
      if (GSR) 
	  if (INIT) begin
	      set_int = 1;
	      rst_int = 0;
	  end
	  else begin
	      rst_int = 1;
	      set_int = 0;
	  end
      else begin
	  set_int = SET_dly;
	  rst_int = RST_dly;
      end
  end
    
  always @(o_out)
      o_reg = o_out;

  sffsrce (o_out, CLK_dly, I_dly, CE_dly, set_int, rst_int, SSET_dly, SRST_dly, notifier1);
    

  specify

	(CLK => O) = (100:100:100, 100:100:100);
	(SET => O) = (0:0:0, 0:0:0);
	(RST => O) = (0:0:0, 0:0:0);

	$setuphold (posedge CLK, posedge CE &&& (ce_clk_enable1!=0), 0:0:0, 0:0:0, notifier,,, CLK_dly,  CE_dly);
	$setuphold (posedge CLK, negedge CE &&& (ce_clk_enable1!=0), 0:0:0, 0:0:0, notifier,,, CLK_dly,  CE_dly);
	$setuphold (posedge CLK, posedge I &&& (in_clk_enable1!=0), 0:0:0, 0:0:0, notifier,,, CLK_dly, I_dly);
	$setuphold (posedge CLK, negedge I &&& (in_clk_enable1!=0), 0:0:0, 0:0:0, notifier,,, CLK_dly, I_dly);
	$setuphold (posedge CLK, posedge SRST &&& (srst_clk_enable1!=0), 0:0:0, 0:0:0, notifier,,, CLK_dly, SRST_dly);
	$setuphold (posedge CLK, negedge SRST &&& (srst_clk_enable1!=0), 0:0:0, 0:0:0, notifier,,, CLK_dly, SRST_dly);
	$setuphold (posedge CLK, posedge SSET &&& (sset_clk_enable1!=0), 0:0:0, 0:0:0, notifier,,, CLK_dly, SSET_dly);
	$setuphold (posedge CLK, negedge SSET &&& (sset_clk_enable1!=0), 0:0:0, 0:0:0, notifier,,, CLK_dly, SSET_dly);

	$recrem (negedge RST, posedge CLK &&& (rst_clk_enable1!=0), 0:0:0, 0:0:0, notifier,,, RST_dly, CLK_dly);
	$recrem (negedge SET, posedge CLK &&& (set_clk_enable1!=0), 0:0:0, 0:0:0, notifier,,, SET_dly, CLK_dly);

	$period (posedge CLK, 0:0:0, notifier);
   $width (posedge CLK &&& CE, 0:0:0, 0, notifier);
   $width (negedge CLK &&& CE, 0:0:0, 0, notifier);
	$width (posedge RST, 0:0:0, 0, notifier);
	$width (posedge SET, 0:0:0, 0, notifier);

	specparam PATHPULSE$ = 0;

  endspecify

endmodule


primitive sffsrce (q, clk, d, ce, set, rst, sset, srst, notifier);

  output q; reg q;
  input clk, d, ce, set, rst, sset, srst, notifier;

  table

    //   clk    d     ce   set   rst  sset srst notifier   q     q+;

          ?     ?     ?     1     0    ?    ?      ?   :   ?  :  1;
          ?     ?     ?     ?     1    ?    ?      ?   :   ?  :  0;

         (01)   ?     ?     0     0    ?    1      ?   :   ?  :  0;
         (01)   ?     ?     0     0    1    0      ?   :   ?  :  1;
         (x1)   ?     ?     0     0    ?    1      ?   :   0  :  0;
         (x1)   ?     ?     0     0    ?    1      ?   :   1  :  x;
         (x1)   ?     ?     0     0    1    0      ?   :   1  :  1;
         (x1)   ?     ?     0     0    1    0      ?   :   0  :  x;
         (0x)   ?     ?     0     0    ?    1      ?   :   0  :  0;
         (0x)   ?     ?     0     0    ?    1      ?   :   1  :  x;
         (0x)   ?     ?     0     0    1    0      ?   :   1  :  1;
         (0x)   ?     ?     0     0    1    0      ?   :   0  :  x;

         (01)   0     1     0     0    0    0      ?   :   ?  :  0;
         (01)   1     1     0     0    0    0      ?   :   ?  :  1;
         (01)   x     1     0     0    0    0      ?   :   ?  :  x;
         (01)   0     x     0     0    0    0      ?   :   0  :  0;
         (01)   1     x     0     0    0    0      ?   :   1  :  1;

         (??)   ?     0     0     0    0    0      ?   :   ?  :  -;
         (1?)   ?     ?     0     0    ?    ?      ?   :   ?  :  -;
         (?0)   ?     ?     0     0    ?    ?      ?   :   ?  :  -;

         (01)   ?     0     0     0    0    x      ?   :   0  :  0;
         (01)   0     1     0     0    0    x      ?   :   ?  :  0;
         (01)   ?     0     0     0    x    0      ?   :   1  :  1;
         (01)   1     1     0     0    x    0      ?   :   ?  :  1;

         (?1)   ?     0     0     0    0    x      ?   :   0  :  0;
         (?1)   ?     0     0     0    x    0      ?   :   1  :  1;
         (0?)   ?     0     0     0    0    x      ?   :   0  :  0;
         (0?)   ?     0     0     0    x    0      ?   :   1  :  1;

         (01)   0     ?     0     x    0    0      ?   :   0  :  0;
         (01)   ?     0     0     x    0    x      ?   :   0  :  0;
         (01)   0     ?     0     x    0    x      ?   :   0  :  0;
         (01)   ?     ?     0     x    ?    1      ?   :   ?  :  0;
         (01)   0     1     0     x    0    ?      ?   :   ?  :  0;

         (0?)   0     ?     0     x    0    0      ?   :   0  :  0;
         (0?)   ?     0     0     x    0    x      ?   :   0  :  0;
         (0?)   0     ?     0     x    0    x      ?   :   0  :  0;
         (0?)   ?     ?     0     x    ?    1      ?   :   0  :  0;
         (?1)   0     ?     0     x    0    0      ?   :   0  :  0;
         (?1)   ?     0     0     x    0    x      ?   :   0  :  0;
         (?1)   0     ?     0     x    0    x      ?   :   0  :  0;
         (?1)   ?     ?     0     x    ?    1      ?   :   0  :  0;

         (01)   1     ?     x     0    0    0      ?   :   1  :  1;
         (01)   ?     0     x     0    x    0      ?   :   1  :  1;
         (01)   1     ?     x     0    x    0      ?   :   1  :  1;
         (01)   ?     ?     x     0    1    0      ?   :   ?  :  1;
         (01)   1     1     x     0    ?    0      ?   :   ?  :  1;

         (0?)   1     ?     x     0    0    0      ?   :   1  :  1;
         (0?)   ?     0     x     0    x    0      ?   :   1  :  1;
         (0?)   1     ?     x     0    x    0      ?   :   1  :  1;
         (0?)   ?     ?     x     0    1    0      ?   :   1  :  1;
         (?1)   1     ?     x     0    0    0      ?   :   1  :  1;
         (?1)   ?     0     x     0    x    0      ?   :   1  :  1;
         (?1)   1     ?     x     0    x    0      ?   :   1  :  1;
         (?1)   ?     ?     x     0    1    0      ?   :   1  :  1;

          ?     ?     ?     0    (?x)  ?    ?      ?   :   0  :  0;
          ?     ?     ?    (?x)   0    ?    ?      ?   :   1  :  1;

         (?1)   1     ?     ?     0    ?    0      ?   :   1  :  1;
         (?1)   0     ?     0     ?    0    ?      ?   :   0  :  0;
         (0?)   1     ?     ?     0    ?    0      ?   :   1  :  1;
         (0?)   0     ?     0     ?    0    ?      ?   :   0  :  0;

          ?    (??)   ?     ?     ?    ?    ?      ?   :   ?  :  -;
          ?     ?    (??)   ?     ?    ?    ?      ?   :   ?  :  -;
          ?     ?     ?    (?0)   ?    ?    ?      ?   :   ?  :  -;
          ?     ?     ?     x    (?0)  ?    ?      ?   :   ?  :  x;
          ?     ?     ?     0    (?0)  ?    ?      ?   :   ?  :  -;
          ?     ?     ?     ?     ?   (??)  ?      ?   :   ?  :  -;
          ?     ?     ?     ?     ?    ?   (??)    ?   :   ?  :  -;

          ?     ?     ?     ?     ?    ?    ?      *   :   ?  :  x;

  endtable

endprimitive
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/versclibs/data/simprims/X_XOR2.v,v 1.5 2005/03/14 21:05:15 yanx Exp $
///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2004 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 8.1i (I.13)
//  \   \         Description : Xilinx Timing Simulation Library Component
//  /   /                  2-input XOR Gate
// /___/   /\     Filename : X_XOR2.v
// \   \  /  \    Timestamp : Thu Mar 25 16:44:05 PST 2004
//  \___\/\___\
//
// Revision:
//    03/23/04 - Initial version.
//    03/11/05 - Add LOC paramter;
// End Revision

`timescale 1 ps/1 ps

module X_XOR2 (O, I0, I1);

  parameter LOC = "UNPLACED";
  output O;
  input I0, I1;

  xor (O, I0, I1);

  specify

	(I0 => O) = (0:0:0, 0:0:0);
	(I1 => O) = (0:0:0, 0:0:0);

	specparam PATHPULSE$ = 0;

  endspecify

endmodule
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/versclibs/data/simprims/X_ZERO.v,v 1.5 2005/03/14 21:05:15 yanx Exp $
///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2004 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 8.1i (I.13)
//  \   \         Description : Xilinx Timing Simulation Library Component
//  /   /                  GND Connection
// /___/   /\     Filename : X_ZERO.v
// \   \  /  \    Timestamp : Thu Mar 25 16:44:05 PST 2004
//  \___\/\___\
//
// Revision:
//    03/23/04 - Initial version.
//    03/11/05 - Add LOC paramter;
// End Revision

`timescale 1 ps/1 ps

module X_ZERO (O);

  parameter LOC = "UNPLACED";
  output O;

  assign O = 1'b0;

endmodule
