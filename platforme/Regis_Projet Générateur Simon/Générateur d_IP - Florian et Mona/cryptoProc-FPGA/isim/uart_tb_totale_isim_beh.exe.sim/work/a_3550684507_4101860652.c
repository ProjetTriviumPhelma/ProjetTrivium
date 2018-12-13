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
static const char *ng0 = "/home/mona/Documents/cryptoProc-FPGA/msgRegister.vhd";
extern char *WORK_P_3647430093;
extern char *IEEE_P_2592010699;



static void work_a_3550684507_4101860652_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    xsi_set_current_line(27, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(30, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 4128);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 64U);
    xsi_driver_first_trans_fast(t1);

LAB3:    t1 = (t0 + 4032);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(28, ng0);
    t1 = (t0 + 1672U);
    t5 = *((char **)t1);
    t1 = (t0 + 4128);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 64U);
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

}

static void work_a_3550684507_4101860652_p_1(char *t0)
{
    char t32[16];
    char t34[16];
    char t39[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    unsigned char t15;
    unsigned char t16;
    unsigned char t17;
    int t18;
    int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    int t25;
    int t26;
    int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    char *t33;
    char *t35;
    char *t36;
    int t37;
    unsigned int t38;
    char *t40;
    int t41;
    unsigned char t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;

LAB0:    xsi_set_current_line(36, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 2112U);
    t11 = xsi_signal_has_event(t1);
    if (t11 == 1)
        goto LAB10;

LAB11:    t4 = (unsigned char)0;

LAB12:    if (t4 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 4048);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(37, ng0);
    t1 = xsi_get_transient_memory(64U);
    memset(t1, 0, 64U);
    t5 = t1;
    memset(t5, (unsigned char)2, 64U);
    t6 = (t0 + 4192);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 64U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 1352U);
    t7 = *((char **)t2);
    t16 = *((unsigned char *)t7);
    t17 = (t16 == (unsigned char)3);
    if (t17 != 0)
        goto LAB13;

LAB15:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 4192);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 64U);
    xsi_driver_first_trans_fast_port(t1);

LAB14:    goto LAB3;

LAB7:    t2 = (t0 + 1032U);
    t6 = *((char **)t2);
    t14 = *((unsigned char *)t6);
    t15 = (t14 == (unsigned char)3);
    t3 = t15;
    goto LAB9;

LAB10:    t2 = (t0 + 2152U);
    t5 = *((char **)t2);
    t12 = *((unsigned char *)t5);
    t13 = (t12 == (unsigned char)3);
    t4 = t13;
    goto LAB12;

LAB13:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 2312U);
    t8 = *((char **)t2);
    t2 = ((WORK_P_3647430093) + 1168U);
    t9 = *((char **)t2);
    t18 = *((int *)t9);
    t19 = (t18 - 1);
    t20 = (63 - t19);
    t21 = (t20 * 1U);
    t22 = (0 + t21);
    t2 = (t8 + t22);
    t10 = (t0 + 2312U);
    t23 = *((char **)t10);
    t10 = ((WORK_P_3647430093) + 1168U);
    t24 = *((char **)t10);
    t25 = *((int *)t24);
    t26 = (2 * t25);
    t27 = (t26 - 1);
    t28 = (63 - t27);
    t29 = (t28 * 1U);
    t30 = (0 + t29);
    t10 = (t23 + t30);
    t33 = ((IEEE_P_2592010699) + 4000);
    t35 = (t34 + 0U);
    t36 = (t35 + 0U);
    *((int *)t36) = 31;
    t36 = (t35 + 4U);
    *((int *)t36) = 0;
    t36 = (t35 + 8U);
    *((int *)t36) = -1;
    t37 = (0 - 31);
    t38 = (t37 * -1);
    t38 = (t38 + 1);
    t36 = (t35 + 12U);
    *((unsigned int *)t36) = t38;
    t36 = (t39 + 0U);
    t40 = (t36 + 0U);
    *((int *)t40) = 63;
    t40 = (t36 + 4U);
    *((int *)t40) = 32;
    t40 = (t36 + 8U);
    *((int *)t40) = -1;
    t41 = (32 - 63);
    t38 = (t41 * -1);
    t38 = (t38 + 1);
    t40 = (t36 + 12U);
    *((unsigned int *)t40) = t38;
    t31 = xsi_base_array_concat(t31, t32, t33, (char)97, t2, t34, (char)97, t10, t39, (char)101);
    t38 = (32U + 32U);
    t42 = (64U != t38);
    if (t42 == 1)
        goto LAB16;

LAB17:    t40 = (t0 + 4192);
    t43 = (t40 + 56U);
    t44 = *((char **)t43);
    t45 = (t44 + 56U);
    t46 = *((char **)t45);
    memcpy(t46, t31, 64U);
    xsi_driver_first_trans_fast_port(t40);
    goto LAB14;

LAB16:    xsi_size_not_matching(64U, t38, 0);
    goto LAB17;

}


extern void work_a_3550684507_4101860652_init()
{
	static char *pe[] = {(void *)work_a_3550684507_4101860652_p_0,(void *)work_a_3550684507_4101860652_p_1};
	xsi_register_didat("work_a_3550684507_4101860652", "isim/uart_tb_totale_isim_beh.exe.sim/work/a_3550684507_4101860652.didat");
	xsi_register_executes(pe);
}
