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
static const char *ng0 = "/home/mona/Documents/cryptoProc-FPGA/keyGenerator.vhd";
extern char *IEEE_P_2592010699;
extern char *WORK_P_3647430093;

char *ieee_p_2592010699_sub_16439989833707593767_503743352(char *, char *, char *, char *, char *, char *);


static void work_a_1538424433_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(31, ng0);

LAB3:    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 6464);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 32U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 6304);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1538424433_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(32, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = (31 - 2);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 6528);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 3U);
    xsi_driver_first_trans_fast(t6);

LAB2:    t11 = (t0 + 6320);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1538424433_3212880686_p_2(char *t0)
{
    char t1[16];
    char t12[16];
    char t15[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t13;
    char *t14;
    char *t16;
    char *t17;
    int t18;
    unsigned int t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned char t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;

LAB0:    xsi_set_current_line(33, ng0);

LAB3:    t2 = (t0 + 2952U);
    t3 = *((char **)t2);
    t2 = (t0 + 2152U);
    t4 = *((char **)t2);
    t2 = ((WORK_P_3647430093) + 1168U);
    t5 = *((char **)t2);
    t6 = *((int *)t5);
    t7 = (t6 - 1);
    t8 = (31 - t7);
    t9 = (t8 * 1U);
    t10 = (0 + t9);
    t2 = (t4 + t10);
    t13 = ((IEEE_P_2592010699) + 4000);
    t14 = (t0 + 9904U);
    t16 = (t15 + 0U);
    t17 = (t16 + 0U);
    *((int *)t17) = 31;
    t17 = (t16 + 4U);
    *((int *)t17) = 3;
    t17 = (t16 + 8U);
    *((int *)t17) = -1;
    t18 = (3 - 31);
    t19 = (t18 * -1);
    t19 = (t19 + 1);
    t17 = (t16 + 12U);
    *((unsigned int *)t17) = t19;
    t11 = xsi_base_array_concat(t11, t12, t13, (char)97, t3, t14, (char)97, t2, t15, (char)101);
    t17 = (t0 + 2472U);
    t20 = *((char **)t17);
    t17 = (t0 + 9856U);
    t21 = ieee_p_2592010699_sub_16439989833707593767_503743352(IEEE_P_2592010699, t1, t11, t12, t20, t17);
    t22 = (t1 + 12U);
    t19 = *((unsigned int *)t22);
    t23 = (1U * t19);
    t24 = (32U != t23);
    if (t24 == 1)
        goto LAB5;

LAB6:    t25 = (t0 + 6592);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    memcpy(t29, t21, 32U);
    xsi_driver_first_trans_fast(t25);

LAB2:    t30 = (t0 + 6336);
    *((int *)t30) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(32U, t23, 0);
    goto LAB6;

}

static void work_a_1538424433_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(34, ng0);

LAB3:    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t3 = (31 - 0);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 6656);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 1U);
    xsi_driver_first_trans_fast(t6);

LAB2:    t11 = (t0 + 6352);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1538424433_3212880686_p_4(char *t0)
{
    char t1[16];
    char t2[16];
    char t3[16];
    char t19[16];
    char t22[16];
    char t27[16];
    char t31[16];
    char t39[16];
    char t42[16];
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    int t13;
    int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t20;
    char *t21;
    char *t23;
    char *t24;
    int t25;
    unsigned int t26;
    char *t28;
    char *t29;
    char *t30;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t38;
    char *t40;
    char *t41;
    char *t43;
    char *t44;
    int t45;
    char *t46;
    char *t47;
    unsigned int t48;
    unsigned char t49;
    char *t50;
    char *t51;
    char *t52;
    char *t53;
    char *t54;
    char *t55;

LAB0:    xsi_set_current_line(35, ng0);

LAB3:    t4 = (t0 + 2632U);
    t5 = *((char **)t4);
    t4 = (t0 + 9872U);
    t6 = (t0 + 3272U);
    t7 = *((char **)t6);
    t6 = (t0 + 9936U);
    t8 = ieee_p_2592010699_sub_16439989833707593767_503743352(IEEE_P_2592010699, t3, t5, t4, t7, t6);
    t9 = (t0 + 3112U);
    t10 = *((char **)t9);
    t9 = (t0 + 3272U);
    t11 = *((char **)t9);
    t9 = ((WORK_P_3647430093) + 1168U);
    t12 = *((char **)t9);
    t13 = *((int *)t12);
    t14 = (t13 - 1);
    t15 = (31 - t14);
    t16 = (t15 * 1U);
    t17 = (0 + t16);
    t9 = (t11 + t17);
    t20 = ((IEEE_P_2592010699) + 4000);
    t21 = (t0 + 9920U);
    t23 = (t22 + 0U);
    t24 = (t23 + 0U);
    *((int *)t24) = 31;
    t24 = (t23 + 4U);
    *((int *)t24) = 1;
    t24 = (t23 + 8U);
    *((int *)t24) = -1;
    t25 = (1 - 31);
    t26 = (t25 * -1);
    t26 = (t26 + 1);
    t24 = (t23 + 12U);
    *((unsigned int *)t24) = t26;
    t18 = xsi_base_array_concat(t18, t19, t20, (char)97, t10, t21, (char)97, t9, t22, (char)101);
    t24 = ieee_p_2592010699_sub_16439989833707593767_503743352(IEEE_P_2592010699, t2, t8, t3, t18, t19);
    t28 = (t0 + 3432U);
    t29 = *((char **)t28);
    t28 = (t0 + 1512U);
    t30 = *((char **)t28);
    t32 = ((IEEE_P_2592010699) + 4000);
    t33 = (t0 + 9952U);
    t34 = (t0 + 9792U);
    t28 = xsi_base_array_concat(t28, t31, t32, (char)97, t29, t33, (char)97, t30, t34, (char)101);
    t35 = (t0 + 3592U);
    t36 = *((char **)t35);
    t35 = (t0 + 10382);
    t40 = ((IEEE_P_2592010699) + 4000);
    t41 = (t0 + 9968U);
    t43 = (t42 + 0U);
    t44 = (t43 + 0U);
    *((int *)t44) = 0;
    t44 = (t43 + 4U);
    *((int *)t44) = 1;
    t44 = (t43 + 8U);
    *((int *)t44) = 1;
    t45 = (1 - 0);
    t26 = (t45 * 1);
    t26 = (t26 + 1);
    t44 = (t43 + 12U);
    *((unsigned int *)t44) = t26;
    t38 = xsi_base_array_concat(t38, t39, t40, (char)97, t36, t41, (char)97, t35, t42, (char)101);
    t44 = ieee_p_2592010699_sub_16439989833707593767_503743352(IEEE_P_2592010699, t27, t28, t31, t38, t39);
    t46 = ieee_p_2592010699_sub_16439989833707593767_503743352(IEEE_P_2592010699, t1, t24, t2, t44, t27);
    t47 = (t1 + 12U);
    t26 = *((unsigned int *)t47);
    t48 = (1U * t26);
    t49 = (32U != t48);
    if (t49 == 1)
        goto LAB5;

LAB6:    t50 = (t0 + 6720);
    t51 = (t50 + 56U);
    t52 = *((char **)t51);
    t53 = (t52 + 56U);
    t54 = *((char **)t53);
    memcpy(t54, t46, 32U);
    xsi_driver_first_trans_fast(t50);

LAB2:    t55 = (t0 + 6368);
    *((int *)t55) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(32U, t48, 0);
    goto LAB6;

}

static void work_a_1538424433_3212880686_p_5(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    int t17;
    int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    int t22;

LAB0:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 1792U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 6384);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(40, ng0);
    t4 = (t0 + 1992U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB8;

LAB10:    t2 = (t0 + 1032U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB11;

LAB12:    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB13;

LAB14:
LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 1832U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(41, ng0);
    t4 = xsi_get_transient_memory(32U);
    memset(t4, 0, 32U);
    t11 = t4;
    memset(t11, (unsigned char)2, 32U);
    t12 = (t0 + 6784);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t4, 32U);
    xsi_driver_first_trans_fast(t12);
    xsi_set_current_line(42, ng0);
    t2 = xsi_get_transient_memory(32U);
    memset(t2, 0, 32U);
    t4 = t2;
    memset(t4, (unsigned char)2, 32U);
    t5 = (t0 + 6848);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t2, 32U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(43, ng0);
    t2 = xsi_get_transient_memory(32U);
    memset(t2, 0, 32U);
    t4 = t2;
    memset(t4, (unsigned char)2, 32U);
    t5 = (t0 + 6912);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t2, 32U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(44, ng0);
    t2 = xsi_get_transient_memory(32U);
    memset(t2, 0, 32U);
    t4 = t2;
    memset(t4, (unsigned char)2, 32U);
    t5 = (t0 + 6976);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t2, 32U);
    xsi_driver_first_trans_fast(t5);
    goto LAB9;

LAB11:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 1352U);
    t5 = *((char **)t2);
    t2 = ((WORK_P_3647430093) + 1528U);
    t8 = *((char **)t2);
    t17 = *((int *)t8);
    t18 = (t17 - 1);
    t19 = (127 - t18);
    t20 = (t19 * 1U);
    t21 = (0 + t20);
    t2 = (t5 + t21);
    t11 = (t0 + 6976);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t2, 32U);
    xsi_driver_first_trans_fast(t11);
    xsi_set_current_line(47, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t2 = ((WORK_P_3647430093) + 1168U);
    t5 = *((char **)t2);
    t17 = *((int *)t5);
    t18 = (3 * t17);
    t22 = (t18 - 1);
    t19 = (127 - t22);
    t20 = (t19 * 1U);
    t21 = (0 + t20);
    t2 = (t4 + t21);
    t8 = (t0 + 6912);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t2, 32U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(48, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t2 = ((WORK_P_3647430093) + 1168U);
    t5 = *((char **)t2);
    t17 = *((int *)t5);
    t18 = (2 * t17);
    t22 = (t18 - 1);
    t19 = (127 - t22);
    t20 = (t19 * 1U);
    t21 = (0 + t20);
    t2 = (t4 + t21);
    t8 = (t0 + 6848);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t2, 32U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(49, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t2 = ((WORK_P_3647430093) + 1168U);
    t5 = *((char **)t2);
    t17 = *((int *)t5);
    t18 = (t17 - 1);
    t19 = (127 - t18);
    t20 = (t19 * 1U);
    t21 = (0 + t20);
    t2 = (t4 + t21);
    t8 = (t0 + 6784);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t2, 32U);
    xsi_driver_first_trans_fast(t8);
    goto LAB9;

LAB13:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 2472U);
    t5 = *((char **)t2);
    t2 = (t0 + 6784);
    t8 = (t2 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t5, 32U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(52, ng0);
    t2 = (t0 + 2312U);
    t4 = *((char **)t2);
    t2 = (t0 + 6848);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t4, 32U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(53, ng0);
    t2 = (t0 + 2152U);
    t4 = *((char **)t2);
    t2 = (t0 + 6912);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t4, 32U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(54, ng0);
    t2 = (t0 + 2792U);
    t4 = *((char **)t2);
    t2 = (t0 + 6976);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t4, 32U);
    xsi_driver_first_trans_fast(t2);
    goto LAB9;

}


extern void work_a_1538424433_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1538424433_3212880686_p_0,(void *)work_a_1538424433_3212880686_p_1,(void *)work_a_1538424433_3212880686_p_2,(void *)work_a_1538424433_3212880686_p_3,(void *)work_a_1538424433_3212880686_p_4,(void *)work_a_1538424433_3212880686_p_5};
	xsi_register_didat("work_a_1538424433_3212880686", "isim/keyGenerator_isim_beh.exe.sim/work/a_1538424433_3212880686.didat");
	xsi_register_executes(pe);
}
