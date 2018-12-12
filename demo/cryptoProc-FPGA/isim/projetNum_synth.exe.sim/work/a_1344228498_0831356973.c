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
extern char *WORK_P_3647430093;
static const char *ng1 = "/home/mona/Documents/projet num/64-128-UART/UART_TB.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_2592010699_sub_374109322130769762_503743352(char *, unsigned char );


void work_a_1344228498_0831356973_sub_16760859830329921682_1212737304(char *t0, char *t1, char *t2, char *t3, unsigned int t4, unsigned int t5, char *t6)
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
    int t34;
    int t35;
    int t36;
    int t37;
    int t38;
    int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;

LAB0:    t10 = (t9 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 194;
    t11 = (t10 + 4U);
    *((int *)t11) = 0;
    t11 = (t10 + 8U);
    *((int *)t11) = -1;
    t12 = (0 - 194);
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
    t10 = (t0 + 2408U);
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
LAB4:    t10 = ((WORK_P_3647430093) + 1168U);
    t16 = *((char **)t10);
    t12 = *((int *)t16);
    t29 = (2 * t12);
    t30 = (3 + t29);
    t10 = ((WORK_P_3647430093) + 1528U);
    t17 = *((char **)t10);
    t31 = *((int *)t17);
    t32 = (t30 + t31);
    t33 = (t32 - 1);
    t34 = 0;
    t35 = t33;

LAB10:    if (t34 <= t35)
        goto LAB11;

LAB13:    t13 = (0 + t4);
    t10 = (t6 + 56U);
    t16 = *((char **)t10);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = (unsigned char)3;
    xsi_driver_first_trans_delta(t6, t13, 1, 0LL);
    t10 = (t0 + 2408U);
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
    t36 = *((int *)t10);
    t18 = (t9 + 8U);
    t37 = *((int *)t18);
    t38 = (t34 - t36);
    t13 = (t38 * t37);
    t19 = (t9 + 4U);
    t39 = *((int *)t19);
    xsi_vhdl_check_range_of_index(t36, t39, t37, t34);
    t40 = (1U * t13);
    t41 = (0 + t40);
    t21 = (t2 + t41);
    t14 = *((unsigned char *)t21);
    t42 = (0 + t4);
    t22 = (t6 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    *((unsigned char *)t25) = t14;
    xsi_driver_first_trans_delta(t6, t42, 1, 0LL);
    t10 = (t0 + 2408U);
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
LAB12:    if (t34 == t35)
        goto LAB13;

LAB20:    t12 = (t34 + 1);
    t34 = t12;
    goto LAB10;

LAB18:    xsi_saveStackAndSuspend(t1);
    goto LAB19;

LAB25:    xsi_saveStackAndSuspend(t1);
    goto LAB26;

}

static void work_a_1344228498_0831356973_p_0(char *t0)
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

LAB0:    xsi_set_current_line(74, ng1);

LAB3:    t1 = (50 * 1000LL);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, t4);
    t2 = (t0 + 4328);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t5;
    xsi_driver_first_trans_delta(t2, 0U, 1, t1);
    t10 = (t0 + 4328);
    xsi_driver_intertial_reject(t10, t1, t1);

LAB2:    t11 = (t0 + 4200);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1344228498_0831356973_p_1(char *t0)
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

LAB0:    xsi_set_current_line(75, ng1);

LAB3:    t1 = (4340 * 1000LL);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, t4);
    t2 = (t0 + 4392);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t5;
    xsi_driver_first_trans_delta(t2, 0U, 1, t1);
    t10 = (t0 + 4392);
    xsi_driver_intertial_reject(t10, t1, t1);

LAB2:    t11 = (t0 + 4216);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1344228498_0831356973_p_2(char *t0)
{
    char t10[16];
    char t12[16];
    char t17[16];
    char t22[16];
    char t24[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    unsigned char t8;
    char *t9;
    char *t11;
    char *t13;
    char *t14;
    int t15;
    unsigned int t16;
    char *t18;
    int t19;
    char *t21;
    char *t23;
    char *t25;
    char *t26;
    int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    unsigned char t31;

LAB0:    t1 = (t0 + 3880U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(80, ng1);
    t2 = (t0 + 4456);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(81, ng1);
    t7 = (100 * 1000LL);
    t2 = (t0 + 3688);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(82, ng1);
    t2 = (t0 + 4456);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(85, ng1);

LAB10:    t2 = (t0 + 4232);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    t4 = (t0 + 4232);
    *((int *)t4) = 0;
    xsi_set_current_line(86, ng1);
    t2 = (t0 + 3688);
    t3 = (t0 + 6991);
    t5 = (t0 + 6994);
    t11 = ((IEEE_P_2592010699) + 4000);
    t13 = (t12 + 0U);
    t14 = (t13 + 0U);
    *((int *)t14) = 0;
    t14 = (t13 + 4U);
    *((int *)t14) = 2;
    t14 = (t13 + 8U);
    *((int *)t14) = 1;
    t15 = (2 - 0);
    t16 = (t15 * 1);
    t16 = (t16 + 1);
    t14 = (t13 + 12U);
    *((unsigned int *)t14) = t16;
    t14 = (t17 + 0U);
    t18 = (t14 + 0U);
    *((int *)t18) = 0;
    t18 = (t14 + 4U);
    *((int *)t18) = 63;
    t18 = (t14 + 8U);
    *((int *)t18) = 1;
    t19 = (63 - 0);
    t16 = (t19 * 1);
    t16 = (t16 + 1);
    t18 = (t14 + 12U);
    *((unsigned int *)t18) = t16;
    t9 = xsi_base_array_concat(t9, t10, t11, (char)97, t3, t12, (char)97, t5, t17, (char)101);
    t18 = (t0 + 7058);
    t23 = ((IEEE_P_2592010699) + 4000);
    t25 = (t24 + 0U);
    t26 = (t25 + 0U);
    *((int *)t26) = 0;
    t26 = (t25 + 4U);
    *((int *)t26) = 127;
    t26 = (t25 + 8U);
    *((int *)t26) = 1;
    t27 = (127 - 0);
    t16 = (t27 * 1);
    t16 = (t16 + 1);
    t26 = (t25 + 12U);
    *((unsigned int *)t26) = t16;
    t21 = xsi_base_array_concat(t21, t22, t23, (char)97, t9, t10, (char)97, t18, t24, (char)101);
    t16 = (3U + 64U);
    t28 = (t16 + 128U);
    t26 = (char *)alloca(t28);
    memcpy(t26, t21, t28);
    t29 = (t0 + 1472U);
    t30 = (t0 + 4520);
    work_a_1344228498_0831356973_sub_16760859830329921682_1212737304(t0, t2, t26, t29, 0U, 0U, t30);
    xsi_set_current_line(87, ng1);
    t7 = (200 * 1000LL);
    t2 = (t0 + 3688);
    xsi_process_wait(t2, t7);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    t3 = (t0 + 1152U);
    t8 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t8 == 1)
        goto LAB8;
    else
        goto LAB10;

LAB11:    goto LAB9;

LAB12:    xsi_set_current_line(89, ng1);
    t2 = (t0 + 7186);
    xsi_report(t2, 30U, 0);
    xsi_set_current_line(90, ng1);
    t2 = (t0 + 7216);
    xsi_report(t2, 30U, 0);
    xsi_set_current_line(92, ng1);

LAB18:    t2 = (t0 + 4248);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    t3 = (t0 + 4248);
    *((int *)t3) = 0;
    xsi_set_current_line(94, ng1);
    t7 = (50 * 1000LL);
    t2 = (t0 + 3688);
    xsi_process_wait(t2, t7);

LAB22:    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB17:    t3 = (t0 + 1992U);
    t4 = *((char **)t3);
    t8 = *((unsigned char *)t4);
    t31 = (t8 == (unsigned char)3);
    if (t31 == 1)
        goto LAB16;
    else
        goto LAB18;

LAB19:    goto LAB17;

LAB20:    xsi_set_current_line(95, ng1);
    if ((unsigned char)0 == 0)
        goto LAB24;

LAB25:    goto LAB2;

LAB21:    goto LAB20;

LAB23:    goto LAB21;

LAB24:    t2 = (t0 + 7246);
    xsi_report(t2, 14U, (unsigned char)3);
    goto LAB25;

}


extern void work_a_1344228498_0831356973_init()
{
	static char *pe[] = {(void *)work_a_1344228498_0831356973_p_0,(void *)work_a_1344228498_0831356973_p_1,(void *)work_a_1344228498_0831356973_p_2};
	static char *se[] = {(void *)work_a_1344228498_0831356973_sub_16760859830329921682_1212737304};
	xsi_register_didat("work_a_1344228498_0831356973", "isim/projetNum_synth.exe.sim/work/a_1344228498_0831356973.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
