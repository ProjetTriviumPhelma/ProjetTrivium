/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/mona/Documents/cryptoProc-FPGA/uart_tb_totale.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_2592010699_sub_374109322130769762_503743352(char *, unsigned char );


void work_a_2159168518_2372691052_sub_16760859830329921682_4163069965(char *t0, char *t1, char *t2, char *t3, unsigned int t4, unsigned int t5, char *t6)
{
    char t8[24];
    char t9[16];
    char *t10;
    char *t11;
    int t12;
    unsigned int t13;
    unsigned char t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    int64 t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    int t29;
    int t30;
    int t31;
    int t32;
    int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;

LAB0:    t10 = (t9 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 7;
    t11 = (t10 + 4U);
    *((int *)t11) = 0;
    t11 = (t10 + 8U);
    *((int *)t11) = -1;
    t12 = (0 - 7);
    t13 = (t12 * -1);
    t13 = (t13 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t13;
    t11 = (t8 + 4U);
    t14 = (t2 != 0);
    if (t14 == 1)
        goto LAB3;

LAB2:    t15 = (t8 + 12U);
    *((char **)t15) = t9;
    t13 = (0 + t4);
    t16 = (t6 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = (unsigned char)2;
    xsi_driver_first_trans_delta(t6, t13, 1, 0LL);
    t10 = (t0 + 3048U);
    t16 = *((char **)t10);
    t20 = *((int64 *)t16);
    xsi_process_wait(t1, t20);

LAB7:    t10 = (t1 + 88U);
    t17 = *((char **)t10);
    t18 = (t17 + 1888U);
    *((unsigned int *)t18) = 1U;
    t19 = (t1 + 88U);
    t21 = *((char **)t19);
    t22 = (t21 + 0U);
    getcontext(t22);
    t23 = (t1 + 88U);
    t24 = *((char **)t23);
    t25 = (t24 + 1888U);
    t13 = *((unsigned int *)t25);
    if (t13 == 1)
        goto LAB8;

LAB9:    t26 = (t1 + 88U);
    t27 = *((char **)t26);
    t28 = (t27 + 1888U);
    *((unsigned int *)t28) = 3U;

LAB5:
LAB6:
LAB4:    t12 = 0;
    t29 = 7;

LAB10:    if (t12 <= t29)
        goto LAB11;

LAB13:    t13 = (0 + t4);
    t10 = (t6 + 56U);
    t16 = *((char **)t10);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = (unsigned char)3;
    xsi_driver_first_trans_delta(t6, t13, 1, 0LL);
    t10 = (t0 + 3048U);
    t16 = *((char **)t10);
    t20 = *((int64 *)t16);
    xsi_process_wait(t1, t20);

LAB24:    t10 = (t1 + 88U);
    t17 = *((char **)t10);
    t18 = (t17 + 1888U);
    *((unsigned int *)t18) = 1U;
    t19 = (t1 + 88U);
    t21 = *((char **)t19);
    t22 = (t21 + 0U);
    getcontext(t22);
    t23 = (t1 + 88U);
    t24 = *((char **)t23);
    t25 = (t24 + 1888U);
    t13 = *((unsigned int *)t25);
    if (t13 == 1)
        goto LAB25;

LAB26:    t26 = (t1 + 88U);
    t27 = *((char **)t26);
    t28 = (t27 + 1888U);
    *((unsigned int *)t28) = 3U;

LAB22:
LAB23:
LAB21:
LAB1:    return;
LAB3:    *((char **)t11) = t2;
    goto LAB2;

LAB8:    xsi_saveStackAndSuspend(t1);
    goto LAB9;

LAB11:    t10 = (t9 + 0U);
    t30 = *((int *)t10);
    t16 = (t9 + 8U);
    t31 = *((int *)t16);
    t32 = (t12 - t30);
    t13 = (t32 * t31);
    t17 = (t9 + 4U);
    t33 = *((int *)t17);
    xsi_vhdl_check_range_of_index(t30, t33, t31, t12);
    t34 = (1U * t13);
    t35 = (0 + t34);
    t18 = (t2 + t35);
    t14 = *((unsigned char *)t18);
    t36 = (0 + t4);
    t19 = (t6 + 56U);
    t21 = *((char **)t19);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    *((unsigned char *)t23) = t14;
    xsi_driver_first_trans_delta(t6, t36, 1, 0LL);
    t10 = (t0 + 3048U);
    t16 = *((char **)t10);
    t20 = *((int64 *)t16);
    xsi_process_wait(t1, t20);

LAB17:    t10 = (t1 + 88U);
    t17 = *((char **)t10);
    t18 = (t17 + 1888U);
    *((unsigned int *)t18) = 1U;
    t19 = (t1 + 88U);
    t21 = *((char **)t19);
    t22 = (t21 + 0U);
    getcontext(t22);
    t23 = (t1 + 88U);
    t24 = *((char **)t23);
    t25 = (t24 + 1888U);
    t13 = *((unsigned int *)t25);
    if (t13 == 1)
        goto LAB18;

LAB19:    t26 = (t1 + 88U);
    t27 = *((char **)t26);
    t28 = (t27 + 1888U);
    *((unsigned int *)t28) = 3U;

LAB15:
LAB16:
LAB14:
LAB12:    if (t12 == t29)
        goto LAB13;

LAB20:    t30 = (t12 + 1);
    t12 = t30;
    goto LAB10;

LAB18:    xsi_saveStackAndSuspend(t1);
    goto LAB19;

LAB25:    xsi_saveStackAndSuspend(t1);
    goto LAB26;

}

static void work_a_2159168518_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 4264U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(116, ng0);
    t2 = (t0 + 5272);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(117, ng0);
    t2 = (t0 + 3168U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 4072);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(118, ng0);
    t2 = (t0 + 5272);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(119, ng0);
    t2 = (t0 + 3168U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 4072);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_2159168518_2372691052_p_1(char *t0)
{
    int64 t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(122, ng0);

LAB3:    t1 = (4340 * 1000LL);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, t4);
    t2 = (t0 + 5336);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t5;
    xsi_driver_first_trans_delta(t2, 0U, 1, t1);
    t10 = (t0 + 5336);
    xsi_driver_intertial_reject(t10, t1, t1);

LAB2:    t11 = (t0 + 5080);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2159168518_2372691052_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    unsigned char t8;
    int t9;
    int t10;
    int t11;
    unsigned int t12;
    char *t13;
    int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    char *t18;
    int t19;
    int t20;
    char *t21;
    int t22;
    int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;

LAB0:    t1 = (t0 + 4760U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(128, ng0);
    t2 = (t0 + 5400);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(129, ng0);
    t7 = (10 * 1000LL);
    t2 = (t0 + 4568);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(130, ng0);
    t2 = (t0 + 5400);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(132, ng0);

LAB10:    t2 = (t0 + 5096);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    t4 = (t0 + 5096);
    *((int *)t4) = 0;
    xsi_set_current_line(134, ng0);
    t2 = (t0 + 3288U);
    t3 = *((char **)t2);
    t2 = (t3 + 0);
    *((int *)t2) = 0;
    t4 = (t0 + 3232U);
    xsi_variable_act(t4);
    xsi_set_current_line(135, ng0);

LAB12:    t2 = (t0 + 3288U);
    t3 = *((char **)t2);
    t9 = *((int *)t3);
    t8 = (t9 < 200);
    if (t8 != 0)
        goto LAB13;

LAB15:    xsi_set_current_line(140, ng0);
    t2 = (t0 + 3288U);
    t3 = *((char **)t2);
    t2 = (t3 + 0);
    *((int *)t2) = 0;
    t4 = (t0 + 3232U);
    xsi_variable_act(t4);
    xsi_set_current_line(141, ng0);

LAB16:    t2 = (t0 + 3288U);
    t3 = *((char **)t2);
    t9 = *((int *)t3);
    t8 = (t9 < 200);
    if (t8 != 0)
        goto LAB17;

LAB19:    xsi_set_current_line(147, ng0);
    t2 = (t0 + 3288U);
    t3 = *((char **)t2);
    t2 = (t3 + 0);
    *((int *)t2) = 0;
    t4 = (t0 + 3232U);
    xsi_variable_act(t4);
    xsi_set_current_line(148, ng0);

LAB20:    t2 = (t0 + 3288U);
    t3 = *((char **)t2);
    t9 = *((int *)t3);
    t8 = (t9 < 200);
    if (t8 != 0)
        goto LAB21;

LAB23:    xsi_set_current_line(153, ng0);
    t2 = (t0 + 3288U);
    t3 = *((char **)t2);
    t2 = (t3 + 0);
    *((int *)t2) = 0;
    t4 = (t0 + 3232U);
    xsi_variable_act(t4);
    xsi_set_current_line(154, ng0);

LAB24:    t2 = (t0 + 3288U);
    t3 = *((char **)t2);
    t9 = *((int *)t3);
    t8 = (t9 < 200);
    if (t8 != 0)
        goto LAB25;

LAB27:    xsi_set_current_line(160, ng0);
    t2 = (t0 + 3288U);
    t3 = *((char **)t2);
    t2 = (t3 + 0);
    *((int *)t2) = 0;
    t4 = (t0 + 3232U);
    xsi_variable_act(t4);
    xsi_set_current_line(161, ng0);

LAB28:    t2 = (t0 + 3288U);
    t3 = *((char **)t2);
    t9 = *((int *)t3);
    t8 = (t9 < 200);
    if (t8 != 0)
        goto LAB29;

LAB31:    xsi_set_current_line(166, ng0);
    t2 = (t0 + 3288U);
    t3 = *((char **)t2);
    t2 = (t3 + 0);
    *((int *)t2) = 0;
    t4 = (t0 + 3232U);
    xsi_variable_act(t4);
    xsi_set_current_line(167, ng0);

LAB32:    t2 = (t0 + 3288U);
    t3 = *((char **)t2);
    t9 = *((int *)t3);
    t8 = (t9 < 200);
    if (t8 != 0)
        goto LAB33;

LAB35:    xsi_set_current_line(173, ng0);
    t2 = (t0 + 3288U);
    t3 = *((char **)t2);
    t2 = (t3 + 0);
    *((int *)t2) = 0;
    t4 = (t0 + 3232U);
    xsi_variable_act(t4);
    xsi_set_current_line(174, ng0);

LAB36:    t2 = (t0 + 3288U);
    t3 = *((char **)t2);
    t9 = *((int *)t3);
    t8 = (t9 < 200);
    if (t8 != 0)
        goto LAB37;

LAB39:    xsi_set_current_line(179, ng0);
    t2 = (t0 + 3288U);
    t3 = *((char **)t2);
    t2 = (t3 + 0);
    *((int *)t2) = 0;
    t4 = (t0 + 3232U);
    xsi_variable_act(t4);
    xsi_set_current_line(180, ng0);

LAB40:    t2 = (t0 + 3288U);
    t3 = *((char **)t2);
    t9 = *((int *)t3);
    t8 = (t9 < 200);
    if (t8 != 0)
        goto LAB41;

LAB43:    xsi_set_current_line(186, ng0);
    t2 = (t0 + 3288U);
    t3 = *((char **)t2);
    t2 = (t3 + 0);
    *((int *)t2) = 0;
    t4 = (t0 + 3232U);
    xsi_variable_act(t4);
    xsi_set_current_line(187, ng0);

LAB44:    t2 = (t0 + 3288U);
    t3 = *((char **)t2);
    t9 = *((int *)t3);
    t8 = (t9 < 200);
    if (t8 != 0)
        goto LAB45;

LAB47:    xsi_set_current_line(192, ng0);
    t2 = (t0 + 3288U);
    t3 = *((char **)t2);
    t2 = (t3 + 0);
    *((int *)t2) = 0;
    t4 = (t0 + 3232U);
    xsi_variable_act(t4);
    xsi_set_current_line(193, ng0);

LAB48:    t2 = (t0 + 3288U);
    t3 = *((char **)t2);
    t9 = *((int *)t3);
    t8 = (t9 < 200);
    if (t8 != 0)
        goto LAB49;

LAB51:    xsi_set_current_line(199, ng0);
    t2 = (t0 + 3288U);
    t3 = *((char **)t2);
    t2 = (t3 + 0);
    *((int *)t2) = 0;
    t4 = (t0 + 3232U);
    xsi_variable_act(t4);
    xsi_set_current_line(200, ng0);

LAB52:    t2 = (t0 + 3288U);
    t3 = *((char **)t2);
    t9 = *((int *)t3);
    t8 = (t9 < 200);
    if (t8 != 0)
        goto LAB53;

LAB55:    xsi_set_current_line(205, ng0);
    t2 = (t0 + 3288U);
    t3 = *((char **)t2);
    t2 = (t3 + 0);
    *((int *)t2) = 0;
    t4 = (t0 + 3232U);
    xsi_variable_act(t4);
    xsi_set_current_line(206, ng0);

LAB56:    t2 = (t0 + 3288U);
    t3 = *((char **)t2);
    t9 = *((int *)t3);
    t8 = (t9 < 200);
    if (t8 != 0)
        goto LAB57;

LAB59:    xsi_set_current_line(210, ng0);

LAB62:    *((char **)t1) = &&LAB63;
    goto LAB1;

LAB9:    t3 = (t0 + 992U);
    t8 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t8 == 1)
        goto LAB8;
    else
        goto LAB10;

LAB11:    goto LAB9;

LAB13:    xsi_set_current_line(136, ng0);
    t2 = (t0 + 4568);
    t4 = (t0 + 1672U);
    t5 = *((char **)t4);
    t4 = (t0 + 3288U);
    t6 = *((char **)t4);
    t10 = *((int *)t6);
    t11 = (t10 + 7);
    t12 = (199 - t11);
    t4 = (t0 + 3288U);
    t13 = *((char **)t4);
    t14 = *((int *)t13);
    xsi_vhdl_check_range_of_slice(199, 0, -1, t11, t14, -1);
    t15 = (t12 * 1U);
    t16 = (0 + t15);
    t4 = (t5 + t16);
    t17 = (t0 + 3288U);
    t18 = *((char **)t17);
    t19 = *((int *)t18);
    t20 = (t19 + 7);
    t17 = (t0 + 3288U);
    t21 = *((char **)t17);
    t22 = *((int *)t21);
    t23 = (t22 - t20);
    t24 = (t23 * -1);
    t24 = (t24 + 1);
    t25 = (1U * t24);
    t17 = (char *)alloca(t25);
    memcpy(t17, t4, t25);
    t26 = (t0 + 1472U);
    t27 = (t0 + 5464);
    work_a_2159168518_2372691052_sub_16760859830329921682_4163069965(t0, t2, t17, t26, 0U, 0U, t27);
    xsi_set_current_line(137, ng0);
    t2 = (t0 + 3288U);
    t3 = *((char **)t2);
    t9 = *((int *)t3);
    t10 = (t9 + 8);
    t2 = (t0 + 3288U);
    t4 = *((char **)t2);
    t2 = (t4 + 0);
    *((int *)t2) = t10;
    t5 = (t0 + 3232U);
    xsi_variable_act(t5);
    goto LAB12;

LAB14:;
LAB17:    xsi_set_current_line(142, ng0);
    t2 = (t0 + 4568);
    t4 = (t0 + 9316);
    t6 = (t0 + 1472U);
    t13 = (t0 + 5464);
    work_a_2159168518_2372691052_sub_16760859830329921682_4163069965(t0, t2, t4, t6, 0U, 0U, t13);
    xsi_set_current_line(143, ng0);
    t2 = (t0 + 3288U);
    t3 = *((char **)t2);
    t9 = *((int *)t3);
    t10 = (t9 + 8);
    t2 = (t0 + 3288U);
    t4 = *((char **)t2);
    t2 = (t4 + 0);
    *((int *)t2) = t10;
    t5 = (t0 + 3232U);
    xsi_variable_act(t5);
    goto LAB16;

LAB18:;
LAB21:    xsi_set_current_line(149, ng0);
    t2 = (t0 + 4568);
    t4 = (t0 + 1832U);
    t5 = *((char **)t4);
    t4 = (t0 + 3288U);
    t6 = *((char **)t4);
    t10 = *((int *)t6);
    t11 = (t10 + 7);
    t12 = (199 - t11);
    t4 = (t0 + 3288U);
    t13 = *((char **)t4);
    t14 = *((int *)t13);
    xsi_vhdl_check_range_of_slice(199, 0, -1, t11, t14, -1);
    t15 = (t12 * 1U);
    t16 = (0 + t15);
    t4 = (t5 + t16);
    t18 = (t0 + 3288U);
    t21 = *((char **)t18);
    t19 = *((int *)t21);
    t20 = (t19 + 7);
    t18 = (t0 + 3288U);
    t26 = *((char **)t18);
    t22 = *((int *)t26);
    t23 = (t22 - t20);
    t24 = (t23 * -1);
    t24 = (t24 + 1);
    t25 = (1U * t24);
    t18 = (char *)alloca(t25);
    memcpy(t18, t4, t25);
    t27 = (t0 + 1472U);
    t28 = (t0 + 5464);
    work_a_2159168518_2372691052_sub_16760859830329921682_4163069965(t0, t2, t18, t27, 0U, 0U, t28);
    xsi_set_current_line(150, ng0);
    t2 = (t0 + 3288U);
    t3 = *((char **)t2);
    t9 = *((int *)t3);
    t10 = (t9 + 8);
    t2 = (t0 + 3288U);
    t4 = *((char **)t2);
    t2 = (t4 + 0);
    *((int *)t2) = t10;
    t5 = (t0 + 3232U);
    xsi_variable_act(t5);
    goto LAB20;

LAB22:;
LAB25:    xsi_set_current_line(155, ng0);
    t2 = (t0 + 4568);
    t4 = (t0 + 9324);
    t6 = (t0 + 1472U);
    t13 = (t0 + 5464);
    work_a_2159168518_2372691052_sub_16760859830329921682_4163069965(t0, t2, t4, t6, 0U, 0U, t13);
    xsi_set_current_line(156, ng0);
    t2 = (t0 + 3288U);
    t3 = *((char **)t2);
    t9 = *((int *)t3);
    t10 = (t9 + 8);
    t2 = (t0 + 3288U);
    t4 = *((char **)t2);
    t2 = (t4 + 0);
    *((int *)t2) = t10;
    t5 = (t0 + 3232U);
    xsi_variable_act(t5);
    goto LAB24;

LAB26:;
LAB29:    xsi_set_current_line(162, ng0);
    t2 = (t0 + 4568);
    t4 = (t0 + 1992U);
    t5 = *((char **)t4);
    t4 = (t0 + 3288U);
    t6 = *((char **)t4);
    t10 = *((int *)t6);
    t11 = (t10 + 7);
    t12 = (199 - t11);
    t4 = (t0 + 3288U);
    t13 = *((char **)t4);
    t14 = *((int *)t13);
    xsi_vhdl_check_range_of_slice(199, 0, -1, t11, t14, -1);
    t15 = (t12 * 1U);
    t16 = (0 + t15);
    t4 = (t5 + t16);
    t21 = (t0 + 3288U);
    t26 = *((char **)t21);
    t19 = *((int *)t26);
    t20 = (t19 + 7);
    t21 = (t0 + 3288U);
    t27 = *((char **)t21);
    t22 = *((int *)t27);
    t23 = (t22 - t20);
    t24 = (t23 * -1);
    t24 = (t24 + 1);
    t25 = (1U * t24);
    t21 = (char *)alloca(t25);
    memcpy(t21, t4, t25);
    t28 = (t0 + 1472U);
    t29 = (t0 + 5464);
    work_a_2159168518_2372691052_sub_16760859830329921682_4163069965(t0, t2, t21, t28, 0U, 0U, t29);
    xsi_set_current_line(163, ng0);
    t2 = (t0 + 3288U);
    t3 = *((char **)t2);
    t9 = *((int *)t3);
    t10 = (t9 + 8);
    t2 = (t0 + 3288U);
    t4 = *((char **)t2);
    t2 = (t4 + 0);
    *((int *)t2) = t10;
    t5 = (t0 + 3232U);
    xsi_variable_act(t5);
    goto LAB28;

LAB30:;
LAB33:    xsi_set_current_line(168, ng0);
    t2 = (t0 + 4568);
    t4 = (t0 + 9332);
    t6 = (t0 + 1472U);
    t13 = (t0 + 5464);
    work_a_2159168518_2372691052_sub_16760859830329921682_4163069965(t0, t2, t4, t6, 0U, 0U, t13);
    xsi_set_current_line(169, ng0);
    t2 = (t0 + 3288U);
    t3 = *((char **)t2);
    t9 = *((int *)t3);
    t10 = (t9 + 8);
    t2 = (t0 + 3288U);
    t4 = *((char **)t2);
    t2 = (t4 + 0);
    *((int *)t2) = t10;
    t5 = (t0 + 3232U);
    xsi_variable_act(t5);
    goto LAB32;

LAB34:;
LAB37:    xsi_set_current_line(175, ng0);
    t2 = (t0 + 4568);
    t4 = (t0 + 2152U);
    t5 = *((char **)t4);
    t4 = (t0 + 3288U);
    t6 = *((char **)t4);
    t10 = *((int *)t6);
    t11 = (t10 + 7);
    t12 = (199 - t11);
    t4 = (t0 + 3288U);
    t13 = *((char **)t4);
    t14 = *((int *)t13);
    xsi_vhdl_check_range_of_slice(199, 0, -1, t11, t14, -1);
    t15 = (t12 * 1U);
    t16 = (0 + t15);
    t4 = (t5 + t16);
    t26 = (t0 + 3288U);
    t27 = *((char **)t26);
    t19 = *((int *)t27);
    t20 = (t19 + 7);
    t26 = (t0 + 3288U);
    t28 = *((char **)t26);
    t22 = *((int *)t28);
    t23 = (t22 - t20);
    t24 = (t23 * -1);
    t24 = (t24 + 1);
    t25 = (1U * t24);
    t26 = (char *)alloca(t25);
    memcpy(t26, t4, t25);
    t29 = (t0 + 1472U);
    t30 = (t0 + 5464);
    work_a_2159168518_2372691052_sub_16760859830329921682_4163069965(t0, t2, t26, t29, 0U, 0U, t30);
    xsi_set_current_line(176, ng0);
    t2 = (t0 + 3288U);
    t3 = *((char **)t2);
    t9 = *((int *)t3);
    t10 = (t9 + 8);
    t2 = (t0 + 3288U);
    t4 = *((char **)t2);
    t2 = (t4 + 0);
    *((int *)t2) = t10;
    t5 = (t0 + 3232U);
    xsi_variable_act(t5);
    goto LAB36;

LAB38:;
LAB41:    xsi_set_current_line(181, ng0);
    t2 = (t0 + 4568);
    t4 = (t0 + 9340);
    t6 = (t0 + 1472U);
    t13 = (t0 + 5464);
    work_a_2159168518_2372691052_sub_16760859830329921682_4163069965(t0, t2, t4, t6, 0U, 0U, t13);
    xsi_set_current_line(182, ng0);
    t2 = (t0 + 3288U);
    t3 = *((char **)t2);
    t9 = *((int *)t3);
    t10 = (t9 + 8);
    t2 = (t0 + 3288U);
    t4 = *((char **)t2);
    t2 = (t4 + 0);
    *((int *)t2) = t10;
    t5 = (t0 + 3232U);
    xsi_variable_act(t5);
    goto LAB40;

LAB42:;
LAB45:    xsi_set_current_line(188, ng0);
    t2 = (t0 + 4568);
    t4 = (t0 + 1832U);
    t5 = *((char **)t4);
    t4 = (t0 + 3288U);
    t6 = *((char **)t4);
    t10 = *((int *)t6);
    t11 = (t10 + 7);
    t12 = (199 - t11);
    t4 = (t0 + 3288U);
    t13 = *((char **)t4);
    t14 = *((int *)t13);
    xsi_vhdl_check_range_of_slice(199, 0, -1, t11, t14, -1);
    t15 = (t12 * 1U);
    t16 = (0 + t15);
    t4 = (t5 + t16);
    t27 = (t0 + 3288U);
    t28 = *((char **)t27);
    t19 = *((int *)t28);
    t20 = (t19 + 7);
    t27 = (t0 + 3288U);
    t29 = *((char **)t27);
    t22 = *((int *)t29);
    t23 = (t22 - t20);
    t24 = (t23 * -1);
    t24 = (t24 + 1);
    t25 = (1U * t24);
    t27 = (char *)alloca(t25);
    memcpy(t27, t4, t25);
    t30 = (t0 + 1472U);
    t31 = (t0 + 5464);
    work_a_2159168518_2372691052_sub_16760859830329921682_4163069965(t0, t2, t27, t30, 0U, 0U, t31);
    xsi_set_current_line(189, ng0);
    t2 = (t0 + 3288U);
    t3 = *((char **)t2);
    t9 = *((int *)t3);
    t10 = (t9 + 8);
    t2 = (t0 + 3288U);
    t4 = *((char **)t2);
    t2 = (t4 + 0);
    *((int *)t2) = t10;
    t5 = (t0 + 3232U);
    xsi_variable_act(t5);
    goto LAB44;

LAB46:;
LAB49:    xsi_set_current_line(194, ng0);
    t2 = (t0 + 4568);
    t4 = (t0 + 9348);
    t6 = (t0 + 1472U);
    t13 = (t0 + 5464);
    work_a_2159168518_2372691052_sub_16760859830329921682_4163069965(t0, t2, t4, t6, 0U, 0U, t13);
    xsi_set_current_line(195, ng0);
    t2 = (t0 + 3288U);
    t3 = *((char **)t2);
    t9 = *((int *)t3);
    t10 = (t9 + 8);
    t2 = (t0 + 3288U);
    t4 = *((char **)t2);
    t2 = (t4 + 0);
    *((int *)t2) = t10;
    t5 = (t0 + 3232U);
    xsi_variable_act(t5);
    goto LAB48;

LAB50:;
LAB53:    xsi_set_current_line(201, ng0);
    t2 = (t0 + 4568);
    t4 = (t0 + 1992U);
    t5 = *((char **)t4);
    t4 = (t0 + 3288U);
    t6 = *((char **)t4);
    t10 = *((int *)t6);
    t11 = (t10 + 7);
    t12 = (199 - t11);
    t4 = (t0 + 3288U);
    t13 = *((char **)t4);
    t14 = *((int *)t13);
    xsi_vhdl_check_range_of_slice(199, 0, -1, t11, t14, -1);
    t15 = (t12 * 1U);
    t16 = (0 + t15);
    t4 = (t5 + t16);
    t28 = (t0 + 3288U);
    t29 = *((char **)t28);
    t19 = *((int *)t29);
    t20 = (t19 + 7);
    t28 = (t0 + 3288U);
    t30 = *((char **)t28);
    t22 = *((int *)t30);
    t23 = (t22 - t20);
    t24 = (t23 * -1);
    t24 = (t24 + 1);
    t25 = (1U * t24);
    t28 = (char *)alloca(t25);
    memcpy(t28, t4, t25);
    t31 = (t0 + 1472U);
    t32 = (t0 + 5464);
    work_a_2159168518_2372691052_sub_16760859830329921682_4163069965(t0, t2, t28, t31, 0U, 0U, t32);
    xsi_set_current_line(202, ng0);
    t2 = (t0 + 3288U);
    t3 = *((char **)t2);
    t9 = *((int *)t3);
    t10 = (t9 + 8);
    t2 = (t0 + 3288U);
    t4 = *((char **)t2);
    t2 = (t4 + 0);
    *((int *)t2) = t10;
    t5 = (t0 + 3232U);
    xsi_variable_act(t5);
    goto LAB52;

LAB54:;
LAB57:    xsi_set_current_line(207, ng0);
    t2 = (t0 + 4568);
    t4 = (t0 + 9356);
    t6 = (t0 + 1472U);
    t13 = (t0 + 5464);
    work_a_2159168518_2372691052_sub_16760859830329921682_4163069965(t0, t2, t4, t6, 0U, 0U, t13);
    xsi_set_current_line(208, ng0);
    t2 = (t0 + 3288U);
    t3 = *((char **)t2);
    t9 = *((int *)t3);
    t10 = (t9 + 8);
    t2 = (t0 + 3288U);
    t4 = *((char **)t2);
    t2 = (t4 + 0);
    *((int *)t2) = t10;
    t5 = (t0 + 3232U);
    xsi_variable_act(t5);
    goto LAB56;

LAB58:;
LAB60:    goto LAB2;

LAB61:    goto LAB60;

LAB63:    goto LAB61;

}


extern void work_a_2159168518_2372691052_init()
{
	static char *pe[] = {(void *)work_a_2159168518_2372691052_p_0,(void *)work_a_2159168518_2372691052_p_1,(void *)work_a_2159168518_2372691052_p_2};
	static char *se[] = {(void *)work_a_2159168518_2372691052_sub_16760859830329921682_4163069965};
	xsi_register_didat("work_a_2159168518_2372691052", "isim/uart_tb_totale_isim_beh.exe.sim/work/a_2159168518_2372691052.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
