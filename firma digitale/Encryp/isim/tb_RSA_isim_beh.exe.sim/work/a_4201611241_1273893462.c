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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/Encryp/exponentiator.vhd";
extern char *IEEE_P_3499444699;

char *ieee_p_3499444699_sub_2213602152_3536714472(char *, char *, int , int );


static void work_a_4201611241_1273893462_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    static char *nl0[] = {&&LAB6, &&LAB6, &&LAB5, &&LAB6, &&LAB6, &&LAB6, &&LAB6, &&LAB6, &&LAB6};

LAB0:    t1 = (t0 + 4712U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(119, ng0);
    t2 = (t0 + 2472U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t2 = (char *)((nl0) + t4);
    goto **((char **)t2);

LAB4:    xsi_set_current_line(119, ng0);

LAB9:    t2 = (t0 + 5280);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB10;

LAB1:    return;
LAB5:    xsi_set_current_line(119, ng0);
    t5 = (t0 + 1512U);
    t6 = *((char **)t5);
    t5 = (t0 + 5376);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t6, 32U);
    xsi_driver_first_trans_fast(t5);
    goto LAB4;

LAB6:    xsi_set_current_line(119, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t2 = (t0 + 5376);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t3, 32U);
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB7:    t3 = (t0 + 5280);
    *((int *)t3) = 0;
    goto LAB2;

LAB8:    goto LAB7;

LAB10:    goto LAB8;

}

static void work_a_4201611241_1273893462_p_1(char *t0)
{
    char t20[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    int t11;
    unsigned char t12;
    unsigned char t13;
    int t14;
    int t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    int t24;
    int t25;
    int t26;
    int t27;
    int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;

LAB0:    xsi_set_current_line(123, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1632U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 5296);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(123, ng0);
    t1 = (t0 + 5440);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(123, ng0);
    t1 = (t0 + 5504);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(123, ng0);
    t1 = (t0 + 5568);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(123, ng0);
    t1 = (t0 + 5632);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(125, ng0);
    t2 = (t0 + 3432U);
    t6 = *((char **)t2);
    t11 = *((int *)t6);
    if (t11 == 0)
        goto LAB11;

LAB26:    if (t11 == 1)
        goto LAB12;

LAB27:    if (t11 == 2)
        goto LAB13;

LAB28:    if (t11 == 3)
        goto LAB14;

LAB29:    if (t11 == 4)
        goto LAB15;

LAB30:    if (t11 == 5)
        goto LAB16;

LAB31:    if (t11 == 6)
        goto LAB17;

LAB32:    if (t11 == 7)
        goto LAB18;

LAB33:    if (t11 == 8)
        goto LAB19;

LAB34:    if (t11 == 9)
        goto LAB20;

LAB35:    if (t11 == 10)
        goto LAB21;

LAB36:    if (t11 == 11)
        goto LAB22;

LAB37:    if (t11 == 12)
        goto LAB23;

LAB38:    if (t11 == 13)
        goto LAB24;

LAB39:
LAB25:    xsi_set_current_line(144, ng0);
    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t3 = (t11 >= 32);
    if (t3 != 0)
        goto LAB63;

LAB65:    xsi_set_current_line(144, ng0);
    t1 = (t0 + 5440);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 3;
    xsi_driver_first_trans_fast(t1);

LAB64:
LAB10:    goto LAB3;

LAB7:    t2 = (t0 + 1672U);
    t5 = *((char **)t2);
    t9 = *((unsigned char *)t5);
    t10 = (t9 == (unsigned char)3);
    t3 = t10;
    goto LAB9;

LAB11:    xsi_set_current_line(126, ng0);
    t2 = (t0 + 1992U);
    t7 = *((char **)t2);
    t12 = *((unsigned char *)t7);
    t13 = (t12 == (unsigned char)2);
    if (t13 != 0)
        goto LAB41;

LAB43:
LAB42:    goto LAB10;

LAB12:    xsi_set_current_line(127, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB44;

LAB46:
LAB45:    goto LAB10;

LAB13:    xsi_set_current_line(128, ng0);
    t1 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t20, 1, 32);
    t3 = (32U != 32U);
    if (t3 == 1)
        goto LAB47;

LAB48:    t2 = (t0 + 5696);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 32U);
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(128, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5760);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 32U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(128, ng0);
    t1 = (t0 + 5632);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(129, ng0);
    t1 = (t0 + 5504);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(129, ng0);
    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t14 = (t11 + 1);
    t1 = (t0 + 5440);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t14;
    xsi_driver_first_trans_fast(t1);
    goto LAB10;

LAB14:    xsi_set_current_line(130, ng0);
    t1 = (t0 + 5824);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(130, ng0);
    t1 = (t0 + 5568);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(130, ng0);
    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t14 = (t11 + 1);
    t1 = (t0 + 5440);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t14;
    xsi_driver_first_trans_fast(t1);
    goto LAB10;

LAB15:    xsi_set_current_line(131, ng0);
    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t14 = (t11 + 1);
    t1 = (t0 + 5440);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t14;
    xsi_driver_first_trans_fast(t1);
    goto LAB10;

LAB16:    xsi_set_current_line(132, ng0);
    t1 = (t0 + 5568);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(132, ng0);
    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t14 = (t11 + 1);
    t1 = (t0 + 5440);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t14;
    xsi_driver_first_trans_fast(t1);
    goto LAB10;

LAB17:    xsi_set_current_line(133, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB49;

LAB51:
LAB50:    goto LAB10;

LAB18:    xsi_set_current_line(134, ng0);
    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t1 = (t0 + 5696);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 32U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(135, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t11 = (32 - 1);
    t14 = (t11 - 31);
    t21 = (t14 * -1);
    t22 = (1U * t21);
    t23 = (0 + t22);
    t1 = (t2 + t23);
    t3 = *((unsigned char *)t1);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB52;

LAB54:    xsi_set_current_line(135, ng0);
    t1 = (t0 + 5440);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 13;
    xsi_driver_first_trans_fast(t1);

LAB53:    goto LAB10;

LAB19:    xsi_set_current_line(136, ng0);
    t1 = (t0 + 5824);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(136, ng0);
    t1 = (t0 + 5568);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(136, ng0);
    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t14 = (t11 + 1);
    t1 = (t0 + 5440);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t14;
    xsi_driver_first_trans_fast(t1);
    goto LAB10;

LAB20:    xsi_set_current_line(137, ng0);
    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t14 = (t11 + 1);
    t1 = (t0 + 5440);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t14;
    xsi_driver_first_trans_fast(t1);
    goto LAB10;

LAB21:    xsi_set_current_line(138, ng0);
    t1 = (t0 + 5568);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(138, ng0);
    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t14 = (t11 + 1);
    t1 = (t0 + 5440);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t14;
    xsi_driver_first_trans_fast(t1);
    goto LAB10;

LAB22:    xsi_set_current_line(139, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB55;

LAB57:
LAB56:    goto LAB10;

LAB23:    xsi_set_current_line(140, ng0);
    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t1 = (t0 + 5696);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 32U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(140, ng0);
    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t14 = (t11 + 1);
    t1 = (t0 + 5440);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t14;
    xsi_driver_first_trans_fast(t1);
    goto LAB10;

LAB24:    xsi_set_current_line(141, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t11 = (32 - 1);
    t14 = (t11 - 31);
    t21 = (t14 * -1);
    t22 = (1U * t21);
    t23 = (0 + t22);
    t1 = (t2 + t23);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 5760);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t16 = *((char **)t8);
    *((unsigned char *)t16) = t3;
    xsi_driver_first_trans_delta(t5, 31U, 1, 0LL);
    xsi_set_current_line(142, ng0);
    t11 = (32 - 1);
    t1 = (t0 + 8580);
    *((int *)t1) = 1;
    t2 = (t0 + 8584);
    *((int *)t2) = t11;
    t14 = 1;
    t15 = t11;

LAB58:    if (t14 <= t15)
        goto LAB59;

LAB61:    xsi_set_current_line(143, ng0);
    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t14 = (t11 + 1);
    t1 = (t0 + 5632);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t14;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(143, ng0);
    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t14 = (t11 + 1);
    t1 = (t0 + 5440);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t14;
    xsi_driver_first_trans_fast(t1);
    goto LAB10;

LAB40:;
LAB41:    xsi_set_current_line(126, ng0);
    t2 = (t0 + 3432U);
    t8 = *((char **)t2);
    t14 = *((int *)t8);
    t15 = (t14 + 1);
    t2 = (t0 + 5440);
    t16 = (t2 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    *((int *)t19) = t15;
    xsi_driver_first_trans_fast(t2);
    goto LAB42;

LAB44:    xsi_set_current_line(127, ng0);
    t1 = (t0 + 3432U);
    t5 = *((char **)t1);
    t11 = *((int *)t5);
    t14 = (t11 + 1);
    t1 = (t0 + 5440);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t16 = *((char **)t8);
    *((int *)t16) = t14;
    xsi_driver_first_trans_fast(t1);
    goto LAB45;

LAB47:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB48;

LAB49:    xsi_set_current_line(133, ng0);
    t1 = (t0 + 3432U);
    t5 = *((char **)t1);
    t11 = *((int *)t5);
    t14 = (t11 + 1);
    t1 = (t0 + 5440);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t16 = *((char **)t8);
    *((int *)t16) = t14;
    xsi_driver_first_trans_fast(t1);
    goto LAB50;

LAB52:    xsi_set_current_line(135, ng0);
    t5 = (t0 + 3432U);
    t6 = *((char **)t5);
    t15 = *((int *)t6);
    t24 = (t15 + 1);
    t5 = (t0 + 5440);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t16 = (t8 + 56U);
    t17 = *((char **)t16);
    *((int *)t17) = t24;
    xsi_driver_first_trans_fast(t5);
    goto LAB53;

LAB55:    xsi_set_current_line(139, ng0);
    t1 = (t0 + 3432U);
    t5 = *((char **)t1);
    t11 = *((int *)t5);
    t14 = (t11 + 1);
    t1 = (t0 + 5440);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t16 = *((char **)t8);
    *((int *)t16) = t14;
    xsi_driver_first_trans_fast(t1);
    goto LAB56;

LAB59:    xsi_set_current_line(142, ng0);
    t5 = (t0 + 2792U);
    t6 = *((char **)t5);
    t5 = (t0 + 8580);
    t24 = *((int *)t5);
    t25 = (t24 - 1);
    t26 = (t25 - 31);
    t21 = (t26 * -1);
    xsi_vhdl_check_range_of_index(31, 0, -1, t25);
    t22 = (1U * t21);
    t23 = (0 + t22);
    t7 = (t6 + t23);
    t3 = *((unsigned char *)t7);
    t8 = (t0 + 8580);
    t27 = *((int *)t8);
    t28 = (t27 - 31);
    t29 = (t28 * -1);
    t30 = (1 * t29);
    t31 = (0U + t30);
    t16 = (t0 + 5760);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t32 = *((char **)t19);
    *((unsigned char *)t32) = t3;
    xsi_driver_first_trans_delta(t16, t31, 1, 0LL);

LAB60:    t1 = (t0 + 8580);
    t14 = *((int *)t1);
    t2 = (t0 + 8584);
    t15 = *((int *)t2);
    if (t14 == t15)
        goto LAB61;

LAB62:    t11 = (t14 + 1);
    t14 = t11;
    t5 = (t0 + 8580);
    *((int *)t5) = t14;
    goto LAB58;

LAB63:    xsi_set_current_line(144, ng0);
    t1 = (t0 + 5504);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(144, ng0);
    t1 = (t0 + 5440);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB64;

}


extern void work_a_4201611241_1273893462_init()
{
	static char *pe[] = {(void *)work_a_4201611241_1273893462_p_0,(void *)work_a_4201611241_1273893462_p_1};
	xsi_register_didat("work_a_4201611241_1273893462", "isim/tb_RSA_isim_beh.exe.sim/work/a_4201611241_1273893462.didat");
	xsi_register_executes(pe);
}
