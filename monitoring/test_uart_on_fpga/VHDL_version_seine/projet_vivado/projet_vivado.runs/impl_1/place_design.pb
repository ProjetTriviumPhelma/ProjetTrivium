
�
�No debug cores found in the current design.
Before running the implement_debug_core command, either use the Set Up Debug wizard (GUI mode)
or use the create_debug_core and connect_debug_core Tcl commands to insert debug cores into the design.
154*	chipscopeZ16-241h px� 
Q
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2"
xc7z020-clg4842default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2"
xc7z020-clg4842default:defaultZ17-349h px� 
y
Command: %s
53*	vivadotcl2H
4report_drc (run_mandatory_drcs) for: incr_eco_checks2default:defaultZ4-113h px� 
P
Running DRC with %s threads
24*drc2
42default:defaultZ23-27h px� 
q
%s completed successfully
29*	vivadotcl23
report_drc (run_mandatory_drcs)2default:defaultZ4-42h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px� 
w
Command: %s
53*	vivadotcl2F
2report_drc (run_mandatory_drcs) for: placer_checks2default:defaultZ4-113h px� 
P
Running DRC with %s threads
24*drc2
42default:defaultZ23-27h px� 
q
%s completed successfully
29*	vivadotcl23
report_drc (run_mandatory_drcs)2default:defaultZ4-42h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
U

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px� 
}
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
42default:defaultZ30-611h px� 
v

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101h px� 
�

Phase %s%s
101*constraints2
1.1 2default:default29
%Placer Initialization Netlist Sorting2default:defaultZ18-101h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:002default:default2
1960.8162default:default2
0.0002default:default2
34362default:default2
150722default:defaultZ17-722h px� 
[
FPhase 1.1 Placer Initialization Netlist Sorting | Checksum: 126f9ec31
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.02 ; elapsed = 00:00:00.02 . Memory (MB): peak = 1960.816 ; gain = 0.000 ; free physical = 3436 ; free virtual = 150722default:defaulth px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1960.8162default:default2
0.0002default:default2
34362default:default2
150722default:defaultZ17-722h px� 
�

Phase %s%s
101*constraints2
1.2 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px� 
�
�%s: no pin(s)/port(s)/net(s) specified as objects, only virtual clock '%s' will be created. If you don't want this, please specify pin(s)/ports(s)/net(s) as objects to the command.
483*constraints2 
create_clock2default:default2
i_Clk2default:default2�
k/tp/xph3app/xph3app604/Trivium/ProjetTrivium/monitoring/test_uart_on_fpga/VHDL_version_seine/contrainte.xdc2default:default2
12default:default8@Z18-483h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
h
SPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: 12894f120
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.44 ; elapsed = 00:00:00.25 . Memory (MB): peak = 1960.816 ; gain = 0.000 ; free physical = 3434 ; free virtual = 150702default:defaulth px� 
}

Phase %s%s
101*constraints2
1.3 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101h px� 
P
;Phase 1.3 Build Placer Netlist Model | Checksum: 159161ce2
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.46 ; elapsed = 00:00:00.26 . Memory (MB): peak = 1960.816 ; gain = 0.000 ; free physical = 3434 ; free virtual = 150702default:defaulth px� 
z

Phase %s%s
101*constraints2
1.4 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101h px� 
M
8Phase 1.4 Constrain Clocks/Macros | Checksum: 159161ce2
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.46 ; elapsed = 00:00:00.26 . Memory (MB): peak = 1960.816 ; gain = 0.000 ; free physical = 3434 ; free virtual = 150702default:defaulth px� 
I
4Phase 1 Placer Initialization | Checksum: 159161ce2
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.46 ; elapsed = 00:00:00.27 . Memory (MB): peak = 1960.816 ; gain = 0.000 ; free physical = 3434 ; free virtual = 150702default:defaulth px� 
q

Phase %s%s
101*constraints2
2 2default:default2$
Global Placement2default:defaultZ18-101h px� 
h
Eplace_design is not in timing mode. Skip physical synthesis in placer30*	placeflowZ46-30h px� 
D
/Phase 2 Global Placement | Checksum: 1ba9f1869
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.92 ; elapsed = 00:00:00.47 . Memory (MB): peak = 1992.820 ; gain = 32.004 ; free physical = 3425 ; free virtual = 150612default:defaulth px� 
q

Phase %s%s
101*constraints2
3 2default:default2$
Detail Placement2default:defaultZ18-101h px� 
}

Phase %s%s
101*constraints2
3.1 2default:default2.
Commit Multi Column Macros2default:defaultZ18-101h px� 
P
;Phase 3.1 Commit Multi Column Macros | Checksum: 1ba9f1869
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.92 ; elapsed = 00:00:00.47 . Memory (MB): peak = 1992.820 ; gain = 32.004 ; free physical = 3425 ; free virtual = 150612default:defaulth px� 


Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101h px� 
R
=Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 1e0bf3997
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.93 ; elapsed = 00:00:00.48 . Memory (MB): peak = 1992.820 ; gain = 32.004 ; free physical = 3425 ; free virtual = 150612default:defaulth px� 
y

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101h px� 
L
7Phase 3.3 Area Swap Optimization | Checksum: 18aeb84c4
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.96 ; elapsed = 00:00:00.48 . Memory (MB): peak = 1992.820 ; gain = 32.004 ; free physical = 3425 ; free virtual = 150612default:defaulth px� 
�

Phase %s%s
101*constraints2
3.4 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px� 
T
?Phase 3.4 Pipeline Register Optimization | Checksum: 18aeb84c4
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.96 ; elapsed = 00:00:00.48 . Memory (MB): peak = 1992.820 ; gain = 32.004 ; free physical = 3425 ; free virtual = 150612default:defaulth px� 


Phase %s%s
101*constraints2
3.5 2default:default20
Small Shape Detail Placement2default:defaultZ18-101h px� 
R
=Phase 3.5 Small Shape Detail Placement | Checksum: 159f7ef97
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.59 . Memory (MB): peak = 1992.820 ; gain = 32.004 ; free physical = 3423 ; free virtual = 150592default:defaulth px� 
u

Phase %s%s
101*constraints2
3.6 2default:default2&
Re-assign LUT pins2default:defaultZ18-101h px� 
H
3Phase 3.6 Re-assign LUT pins | Checksum: 159f7ef97
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.60 . Memory (MB): peak = 1992.820 ; gain = 32.004 ; free physical = 3423 ; free virtual = 150592default:defaulth px� 
�

Phase %s%s
101*constraints2
3.7 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px� 
T
?Phase 3.7 Pipeline Register Optimization | Checksum: 159f7ef97
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.60 . Memory (MB): peak = 1992.820 ; gain = 32.004 ; free physical = 3423 ; free virtual = 150592default:defaulth px� 
D
/Phase 3 Detail Placement | Checksum: 159f7ef97
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.60 . Memory (MB): peak = 1992.820 ; gain = 32.004 ; free physical = 3423 ; free virtual = 150592default:defaulth px� 
�

Phase %s%s
101*constraints2
4 2default:default2<
(Post Placement Optimization and Clean-Up2default:defaultZ18-101h px� 
{

Phase %s%s
101*constraints2
4.1 2default:default2,
Post Commit Optimization2default:defaultZ18-101h px� 
N
9Phase 4.1 Post Commit Optimization | Checksum: 159f7ef97
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.60 . Memory (MB): peak = 1992.820 ; gain = 32.004 ; free physical = 3423 ; free virtual = 150592default:defaulth px� 
y

Phase %s%s
101*constraints2
4.2 2default:default2*
Post Placement Cleanup2default:defaultZ18-101h px� 
L
7Phase 4.2 Post Placement Cleanup | Checksum: 159f7ef97
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.60 . Memory (MB): peak = 1992.820 ; gain = 32.004 ; free physical = 3424 ; free virtual = 150602default:defaulth px� 
s

Phase %s%s
101*constraints2
4.3 2default:default2$
Placer Reporting2default:defaultZ18-101h px� 
F
1Phase 4.3 Placer Reporting | Checksum: 159f7ef97
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.60 . Memory (MB): peak = 1992.820 ; gain = 32.004 ; free physical = 3424 ; free virtual = 150602default:defaulth px� 
z

Phase %s%s
101*constraints2
4.4 2default:default2+
Final Placement Cleanup2default:defaultZ18-101h px� 
M
8Phase 4.4 Final Placement Cleanup | Checksum: 15852b488
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.60 . Memory (MB): peak = 1992.820 ; gain = 32.004 ; free physical = 3424 ; free virtual = 150602default:defaulth px� 
\
GPhase 4 Post Placement Optimization and Clean-Up | Checksum: 15852b488
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.60 . Memory (MB): peak = 1992.820 ; gain = 32.004 ; free physical = 3424 ; free virtual = 150602default:defaulth px� 
>
)Ending Placer Task | Checksum: 11ae0d13e
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.61 . Memory (MB): peak = 1992.820 ; gain = 32.004 ; free physical = 3432 ; free virtual = 150682default:defaulth px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
372default:default2
12default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
place_design2default:defaultZ4-42h px� 
D
Writing placer database...
1603*designutilsZ20-1893h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2)
Write XDEF Complete: 2default:default2
00:00:00.032default:default2
00:00:00.382default:default2
1992.8202default:default2
0.0002default:default2
34332default:default2
150712default:defaultZ17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2�
�/tp/xph3app/xph3app604/Trivium/ProjetTrivium/monitoring/test_uart_on_fpga/VHDL_version_seine/projet_vivado/projet_vivado.runs/impl_1/top_placed.dcp2default:defaultZ17-1381h px� 
�
�report_io: Time (s): cpu = 00:00:00.05 ; elapsed = 00:00:00.06 . Memory (MB): peak = 1992.820 ; gain = 0.000 ; free physical = 3423 ; free virtual = 15060
*commonh px� 
�
�report_utilization: Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00.02 . Memory (MB): peak = 1992.820 ; gain = 0.000 ; free physical = 3432 ; free virtual = 15068
*commonh px� 
�
�report_control_sets: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 1992.820 ; gain = 0.000 ; free physical = 3432 ; free virtual = 15068
*commonh px� 


End Record