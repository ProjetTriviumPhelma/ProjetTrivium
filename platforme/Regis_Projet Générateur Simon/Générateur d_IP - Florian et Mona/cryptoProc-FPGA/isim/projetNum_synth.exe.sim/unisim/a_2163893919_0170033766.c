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
extern char *STD_STANDARD;
extern char *IEEE_P_2592010699;



char *unisim_a_2163893919_0170033766_sub_3716896011294458377_3464758390(char *t1, char *t2, char *t3, char *t4)
{
    char t5[128];
    char t6[40];
    char t7[16];
    char t12[16];
    char t15[16];
    char t20[40];
    char t39[16];
    char t41[16];
    char t46[16];
    char t54[16];
    char t56[16];
    char t66[16];
    char t68[16];
    char t78[16];
    char t80[16];
    char *t0;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    char *t13;
    int t14;
    char *t16;
    int t17;
    char *t18;
    char *t19;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    unsigned char t25;
    char *t26;
    char *t27;
    unsigned char t28;
    char *t29;
    unsigned char t30;
    char *t31;
    char *t33;
    int t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;
    char *t38;
    char *t40;
    char *t42;
    char *t43;
    int t44;
    unsigned int t45;
    char *t47;
    int t48;
    int t49;
    unsigned int t50;
    unsigned int t51;
    char *t52;
    char *t53;
    char *t55;
    char *t57;
    char *t58;
    int t59;
    unsigned int t60;
    int t61;
    unsigned int t62;
    unsigned int t63;
    char *t64;
    char *t65;
    char *t67;
    char *t69;
    char *t70;
    int t71;
    unsigned int t72;
    int t73;
    unsigned int t74;
    unsigned int t75;
    char *t76;
    char *t77;
    char *t79;
    char *t81;
    char *t82;
    int t83;
    unsigned int t84;
    char *t85;
    int t86;
    unsigned int t87;
    unsigned int t88;
    int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;

LAB0:    t8 = (t7 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 0;
    t9 = (t8 + 4U);
    *((int *)t9) = 19;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t10 = (19 - 0);
    t11 = (t10 * 1);
    t11 = (t11 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t11;
    t9 = (t12 + 0U);
    t13 = (t9 + 0U);
    *((int *)t13) = 0;
    t13 = (t9 + 4U);
    *((int *)t13) = 19;
    t13 = (t9 + 8U);
    *((int *)t13) = 1;
    t14 = (19 - 0);
    t11 = (t14 * 1);
    t11 = (t11 + 1);
    t13 = (t9 + 12U);
    *((unsigned int *)t13) = t11;
    t13 = (t15 + 0U);
    t16 = (t13 + 0U);
    *((int *)t16) = 0;
    t16 = (t13 + 4U);
    *((int *)t16) = 39;
    t16 = (t13 + 8U);
    *((int *)t16) = 1;
    t17 = (39 - 0);
    t11 = (t17 * 1);
    t11 = (t11 + 1);
    t16 = (t13 + 12U);
    *((unsigned int *)t16) = t11;
    t16 = (t5 + 4U);
    t18 = ((STD_STANDARD) + 1080);
    t19 = (t16 + 88U);
    *((char **)t19) = t18;
    t21 = (t16 + 56U);
    *((char **)t21) = t20;
    xsi_type_set_default_value(t18, t20, t15);
    t22 = (t16 + 64U);
    *((char **)t22) = t15;
    t23 = (t16 + 80U);
    *((unsigned int *)t23) = 40U;
    t24 = (t6 + 4U);
    t25 = (t3 != 0);
    if (t25 == 1)
        goto LAB3;

LAB2:    t26 = (t6 + 12U);
    *((char **)t26) = t7;
    t27 = (t6 + 20U);
    t28 = (t4 != 0);
    if (t28 == 1)
        goto LAB5;

LAB4:    t29 = (t6 + 28U);
    *((char **)t29) = t12;
    t30 = (18 == 36);
    if (t30 != 0)
        goto LAB6;

LAB8:    t9 = ((STD_STANDARD) + 1080);
    t8 = xsi_base_array_concat(t8, t39, t9, (char)97, t4, t12, (char)97, t3, t7, (char)101);
    t13 = (t16 + 56U);
    t18 = *((char **)t13);
    t13 = (t18 + 0);
    t19 = (t12 + 12U);
    t11 = *((unsigned int *)t19);
    t11 = (t11 * 1U);
    t21 = (t7 + 12U);
    t35 = *((unsigned int *)t21);
    t35 = (t35 * 1U);
    t36 = (t11 + t35);
    memcpy(t13, t8, t36);

LAB7:    t8 = (t16 + 56U);
    t9 = *((char **)t8);
    t8 = (t15 + 12U);
    t11 = *((unsigned int *)t8);
    t11 = (t11 * 1U);
    t0 = xsi_get_transient_memory(t11);
    memcpy(t0, t9, t11);
    t13 = (t15 + 0U);
    t10 = *((int *)t13);
    t18 = (t15 + 4U);
    t14 = *((int *)t18);
    t19 = (t15 + 8U);
    t17 = *((int *)t19);
    t21 = (t2 + 0U);
    t22 = (t21 + 0U);
    *((int *)t22) = t10;
    t22 = (t21 + 4U);
    *((int *)t22) = t14;
    t22 = (t21 + 8U);
    *((int *)t22) = t17;
    t34 = (t14 - t10);
    t35 = (t34 * t17);
    t35 = (t35 + 1);
    t22 = (t21 + 12U);
    *((unsigned int *)t22) = t35;

LAB1:    return t0;
LAB3:    *((char **)t24) = t3;
    goto LAB2;

LAB5:    *((char **)t27) = t4;
    goto LAB4;

LAB6:    t31 = (t1 + 57222);
    t33 = (t12 + 0U);
    t34 = *((int *)t33);
    t11 = (2 - t34);
    t35 = (t11 * 1U);
    t36 = (0 + t35);
    t37 = (t4 + t36);
    t40 = ((STD_STANDARD) + 1080);
    t42 = (t41 + 0U);
    t43 = (t42 + 0U);
    *((int *)t43) = 0;
    t43 = (t42 + 4U);
    *((int *)t43) = 3;
    t43 = (t42 + 8U);
    *((int *)t43) = 1;
    t44 = (3 - 0);
    t45 = (t44 * 1);
    t45 = (t45 + 1);
    t43 = (t42 + 12U);
    *((unsigned int *)t43) = t45;
    t43 = (t46 + 0U);
    t47 = (t43 + 0U);
    *((int *)t47) = 2;
    t47 = (t43 + 4U);
    *((int *)t47) = 3;
    t47 = (t43 + 8U);
    *((int *)t47) = 1;
    t48 = (3 - 2);
    t45 = (t48 * 1);
    t45 = (t45 + 1);
    t47 = (t43 + 12U);
    *((unsigned int *)t47) = t45;
    t38 = xsi_base_array_concat(t38, t39, t40, (char)97, t31, t41, (char)97, t37, t46, (char)101);
    t47 = (t7 + 0U);
    t49 = *((int *)t47);
    t45 = (2 - t49);
    t50 = (t45 * 1U);
    t51 = (0 + t50);
    t52 = (t3 + t51);
    t55 = ((STD_STANDARD) + 1080);
    t57 = (t56 + 0U);
    t58 = (t57 + 0U);
    *((int *)t58) = 2;
    t58 = (t57 + 4U);
    *((int *)t58) = 3;
    t58 = (t57 + 8U);
    *((int *)t58) = 1;
    t59 = (3 - 2);
    t60 = (t59 * 1);
    t60 = (t60 + 1);
    t58 = (t57 + 12U);
    *((unsigned int *)t58) = t60;
    t53 = xsi_base_array_concat(t53, t54, t55, (char)97, t38, t39, (char)97, t52, t56, (char)101);
    t58 = (t12 + 0U);
    t61 = *((int *)t58);
    t60 = (4 - t61);
    t62 = (t60 * 1U);
    t63 = (0 + t62);
    t64 = (t4 + t63);
    t67 = ((STD_STANDARD) + 1080);
    t69 = (t68 + 0U);
    t70 = (t69 + 0U);
    *((int *)t70) = 4;
    t70 = (t69 + 4U);
    *((int *)t70) = 19;
    t70 = (t69 + 8U);
    *((int *)t70) = 1;
    t71 = (19 - 4);
    t72 = (t71 * 1);
    t72 = (t72 + 1);
    t70 = (t69 + 12U);
    *((unsigned int *)t70) = t72;
    t65 = xsi_base_array_concat(t65, t66, t67, (char)97, t53, t54, (char)97, t64, t68, (char)101);
    t70 = (t7 + 0U);
    t73 = *((int *)t70);
    t72 = (4 - t73);
    t74 = (t72 * 1U);
    t75 = (0 + t74);
    t76 = (t3 + t75);
    t79 = ((STD_STANDARD) + 1080);
    t81 = (t80 + 0U);
    t82 = (t81 + 0U);
    *((int *)t82) = 4;
    t82 = (t81 + 4U);
    *((int *)t82) = 19;
    t82 = (t81 + 8U);
    *((int *)t82) = 1;
    t83 = (19 - 4);
    t84 = (t83 * 1);
    t84 = (t84 + 1);
    t82 = (t81 + 12U);
    *((unsigned int *)t82) = t84;
    t77 = xsi_base_array_concat(t77, t78, t79, (char)97, t65, t66, (char)97, t76, t80, (char)101);
    t82 = (t16 + 56U);
    t85 = *((char **)t82);
    t82 = (t85 + 0);
    t86 = (3 - 2);
    t84 = (t86 * 1);
    t84 = (t84 + 1);
    t87 = (1U * t84);
    t88 = (4U + t87);
    t89 = (3 - 2);
    t90 = (t89 * 1);
    t90 = (t90 + 1);
    t91 = (1U * t90);
    t92 = (t88 + t91);
    t93 = (19 - 4);
    t94 = (t93 * 1);
    t94 = (t94 + 1);
    t95 = (1U * t94);
    t96 = (t92 + t95);
    t97 = (19 - 4);
    t98 = (t97 * 1);
    t98 = (t98 + 1);
    t99 = (1U * t98);
    t100 = (t96 + t99);
    memcpy(t82, t77, t100);
    goto LAB7;

LAB9:;
}

static void unisim_a_2163893919_0170033766_p_0(char *t0)
{
    char t5[16];
    char t7[16];
    char *t1;
    char *t3;
    char *t4;
    char *t6;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:
LAB3:    t1 = (t0 + 57226);
    t3 = (t0 + 1936U);
    t4 = *((char **)t3);
    t6 = ((IEEE_P_2592010699) + 4000);
    t8 = (t7 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 0;
    t9 = (t8 + 4U);
    *((int *)t9) = 1;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t10 = (1 - 0);
    t11 = (t10 * 1);
    t11 = (t11 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t11;
    t9 = (t0 + 37720U);
    t3 = xsi_base_array_concat(t3, t5, t6, (char)97, t1, t7, (char)97, t4, t9, (char)101);
    t11 = (2U + 14U);
    t12 = (16U != t11);
    if (t12 == 1)
        goto LAB5;

LAB6:    t13 = (t0 + 22448);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t3, 16U);
    xsi_driver_first_trans_fast(t13);

LAB2:    t18 = (t0 + 22304);
    *((int *)t18) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(16U, t11, 0);
    goto LAB6;

}

static void unisim_a_2163893919_0170033766_p_1(char *t0)
{
    char t5[16];
    char t7[16];
    char *t1;
    char *t3;
    char *t4;
    char *t6;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:
LAB3:    t1 = (t0 + 57228);
    t3 = (t0 + 2096U);
    t4 = *((char **)t3);
    t6 = ((IEEE_P_2592010699) + 4000);
    t8 = (t7 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 0;
    t9 = (t8 + 4U);
    *((int *)t9) = 1;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t10 = (1 - 0);
    t11 = (t10 * 1);
    t11 = (t11 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t11;
    t9 = (t0 + 37736U);
    t3 = xsi_base_array_concat(t3, t5, t6, (char)97, t1, t7, (char)97, t4, t9, (char)101);
    t11 = (2U + 14U);
    t12 = (16U != t11);
    if (t12 == 1)
        goto LAB5;

LAB6:    t13 = (t0 + 22512);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t3, 16U);
    xsi_driver_first_trans_fast(t13);

LAB2:    t18 = (t0 + 22320);
    *((int *)t18) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(16U, t11, 0);
    goto LAB6;

}

static void unisim_a_2163893919_0170033766_p_2(char *t0)
{
    char t4[16];
    char t10[16];
    char t15[16];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned char t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;

LAB0:
LAB3:    t1 = (t0 + 4496U);
    t2 = *((char **)t1);
    t1 = (t0 + 4496U);
    t3 = *((char **)t1);
    t5 = ((IEEE_P_2592010699) + 4000);
    t6 = (t0 + 37816U);
    t7 = (t0 + 37816U);
    t1 = xsi_base_array_concat(t1, t4, t5, (char)97, t2, t6, (char)97, t3, t7, (char)101);
    t8 = (t0 + 4496U);
    t9 = *((char **)t8);
    t11 = ((IEEE_P_2592010699) + 4000);
    t12 = (t0 + 37816U);
    t8 = xsi_base_array_concat(t8, t10, t11, (char)97, t1, t4, (char)97, t9, t12, (char)101);
    t13 = (t0 + 4496U);
    t14 = *((char **)t13);
    t16 = ((IEEE_P_2592010699) + 4000);
    t17 = (t0 + 37816U);
    t13 = xsi_base_array_concat(t13, t15, t16, (char)97, t8, t10, (char)97, t14, t17, (char)101);
    t18 = (2U + 2U);
    t19 = (t18 + 2U);
    t20 = (t19 + 2U);
    t21 = (8U != t20);
    if (t21 == 1)
        goto LAB5;

LAB6:    t22 = (t0 + 22576);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t13, 8U);
    xsi_driver_first_trans_fast(t22);

LAB2:    t27 = (t0 + 22336);
    *((int *)t27) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(8U, t20, 0);
    goto LAB6;

}

static void unisim_a_2163893919_0170033766_p_3(char *t0)
{
    char t4[16];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:
LAB3:    t1 = (t0 + 4656U);
    t2 = *((char **)t1);
    t1 = (t0 + 4656U);
    t3 = *((char **)t1);
    t5 = ((IEEE_P_2592010699) + 4000);
    t6 = (t0 + 37832U);
    t7 = (t0 + 37832U);
    t1 = xsi_base_array_concat(t1, t4, t5, (char)97, t2, t6, (char)97, t3, t7, (char)101);
    t8 = (4U + 4U);
    t9 = (8U != t8);
    if (t9 == 1)
        goto LAB5;

LAB6:    t10 = (t0 + 22640);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 8U);
    xsi_driver_first_trans_fast(t10);

LAB2:    t15 = (t0 + 22352);
    *((int *)t15) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(8U, t8, 0);
    goto LAB6;

}

static void unisim_a_2163893919_0170033766_p_4(char *t0)
{
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    t1 = (t0 + 18792U);
    t2 = *((char **)t1);
    t3 = *((int64 *)t2);
    t1 = (t0 + 6576U);
    t4 = *((char **)t1);
    t1 = (t0 + 22704);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t4, 16U);
    xsi_driver_first_trans_delta(t1, 0U, 16U, t3);
    t9 = (t0 + 22704);
    xsi_driver_intertial_reject(t9, t3, t3);
    t1 = (t0 + 18792U);
    t2 = *((char **)t1);
    t3 = *((int64 *)t2);
    t1 = (t0 + 6896U);
    t4 = *((char **)t1);
    t1 = (t0 + 22768);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t4, 2U);
    xsi_driver_first_trans_delta(t1, 0U, 2U, t3);
    t9 = (t0 + 22768);
    xsi_driver_intertial_reject(t9, t3, t3);
    t1 = (t0 + 18792U);
    t2 = *((char **)t1);
    t3 = *((int64 *)t2);
    t1 = (t0 + 6736U);
    t4 = *((char **)t1);
    t1 = (t0 + 22832);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t4, 16U);
    xsi_driver_first_trans_delta(t1, 0U, 16U, t3);
    t9 = (t0 + 22832);
    xsi_driver_intertial_reject(t9, t3, t3);
    t1 = (t0 + 18792U);
    t2 = *((char **)t1);
    t3 = *((int64 *)t2);
    t1 = (t0 + 7056U);
    t4 = *((char **)t1);
    t1 = (t0 + 22896);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t4, 2U);
    xsi_driver_first_trans_delta(t1, 0U, 2U, t3);
    t9 = (t0 + 22896);
    xsi_driver_intertial_reject(t9, t3, t3);
    t1 = (t0 + 22368);
    *((int *)t1) = 1;

LAB1:    return;
}


extern void unisim_a_2163893919_0170033766_init()
{
	static char *pe[] = {(void *)unisim_a_2163893919_0170033766_p_0,(void *)unisim_a_2163893919_0170033766_p_1,(void *)unisim_a_2163893919_0170033766_p_2,(void *)unisim_a_2163893919_0170033766_p_3,(void *)unisim_a_2163893919_0170033766_p_4};
	static char *se[] = {(void *)unisim_a_2163893919_0170033766_sub_3716896011294458377_3464758390};
	xsi_register_didat("unisim_a_2163893919_0170033766", "isim/projetNum_synth.exe.sim/unisim/a_2163893919_0170033766.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
