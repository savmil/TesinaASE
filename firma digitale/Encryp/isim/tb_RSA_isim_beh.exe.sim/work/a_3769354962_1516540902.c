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
extern char *WORK_P_3647430093;
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;
extern char *IEEE_P_3499444699;

char *ieee_p_3499444699_sub_2213602152_3536714472(char *, char *, int , int );
char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_3769354962_1516540902_p_0(char *t0)
{
    char t11[16];
    char t13[16];
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    char *t12;
    char *t14;
    char *t15;
    int t16;
    unsigned int t17;
    unsigned char t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    xsi_set_current_line(62, ng0);

LAB3:    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t1 = ((WORK_P_3647430093) + 1168U);
    t3 = *((char **)t1);
    t4 = *((int *)t3);
    t5 = (2 * t4);
    t6 = (t5 - 1);
    t7 = (63 - t6);
    t8 = (t7 * 1U);
    t9 = (0 + t8);
    t1 = (t2 + t9);
    t12 = ((IEEE_P_2592010699) + 4024);
    t14 = (t13 + 0U);
    t15 = (t14 + 0U);
    *((int *)t15) = 63;
    t15 = (t14 + 4U);
    *((int *)t15) = 32;
    t15 = (t14 + 8U);
    *((int *)t15) = -1;
    t16 = (32 - 63);
    t17 = (t16 * -1);
    t17 = (t17 + 1);
    t15 = (t14 + 12U);
    *((unsigned int *)t15) = t17;
    t10 = xsi_base_array_concat(t10, t11, t12, (char)99, (unsigned char)2, (char)97, t1, t13, (char)101);
    t17 = (1U + 32U);
    t18 = (33U != t17);
    if (t18 == 1)
        goto LAB5;

LAB6:    t15 = (t0 + 5728);
    t19 = (t15 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t10, 33U);
    xsi_driver_first_trans_fast(t15);

LAB2:    t23 = (t0 + 5584);
    *((int *)t23) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(33U, t17, 0);
    goto LAB6;

}

static void work_a_3769354962_1516540902_p_1(char *t0)
{
    char t3[16];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(63, ng0);

LAB3:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t4 = ((IEEE_P_2592010699) + 4024);
    t5 = (t0 + 8364U);
    t1 = xsi_base_array_concat(t1, t3, t4, (char)99, (unsigned char)2, (char)97, t2, t5, (char)101);
    t6 = (1U + 32U);
    t7 = (33U != t6);
    if (t7 == 1)
        goto LAB5;

LAB6:    t8 = (t0 + 5792);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 33U);
    xsi_driver_first_trans_fast(t8);

LAB2:    t13 = (t0 + 5600);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(33U, t6, 0);
    goto LAB6;

}

static void work_a_3769354962_1516540902_p_2(char *t0)
{
    char t10[16];
    char *t1;
    char *t2;
    char *t3;
    int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned char t8;
    char *t9;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned char t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    static char *nl0[] = {&&LAB6, &&LAB6, &&LAB6, &&LAB5, &&LAB6, &&LAB6, &&LAB6, &&LAB6, &&LAB6};

LAB0:    t1 = (t0 + 4768U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 2792U);
    t3 = *((char **)t2);
    t4 = (0 - 63);
    t5 = (t4 * -1);
    t6 = (1U * t5);
    t7 = (0 + t6);
    t2 = (t3 + t7);
    t8 = *((unsigned char *)t2);
    t9 = (char *)((nl0) + t8);
    goto **((char **)t9);

LAB4:    xsi_set_current_line(64, ng0);

LAB11:    t2 = (t0 + 5616);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB12;

LAB1:    return;
LAB5:    xsi_set_current_line(64, ng0);
    t11 = (t0 + 2312U);
    t12 = *((char **)t11);
    t11 = (t0 + 8412U);
    t13 = (t0 + 2472U);
    t14 = *((char **)t13);
    t13 = (t0 + 8412U);
    t15 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t10, t12, t11, t14, t13);
    t16 = (t10 + 12U);
    t17 = *((unsigned int *)t16);
    t18 = (1U * t17);
    t19 = (33U != t18);
    if (t19 == 1)
        goto LAB7;

LAB8:    t20 = (t0 + 5856);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t15, 33U);
    xsi_driver_first_trans_fast(t20);
    goto LAB4;

LAB6:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 2312U);
    t3 = *((char **)t2);
    t2 = (t0 + 5856);
    t9 = (t2 + 56U);
    t11 = *((char **)t9);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t3, 33U);
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB7:    xsi_size_not_matching(33U, t18, 0);
    goto LAB8;

LAB9:    t3 = (t0 + 5616);
    *((int *)t3) = 0;
    goto LAB2;

LAB10:    goto LAB9;

LAB12:    goto LAB10;

}

static void work_a_3769354962_1516540902_p_3(char *t0)
{
    char t30[16];
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
    int t12;
    int t13;
    int t14;
    int t15;
    char *t16;
    int t17;
    int t18;
    int t19;
    char *t20;
    unsigned char t21;
    unsigned char t22;
    char *t23;
    int t24;
    int t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;

LAB0:    xsi_set_current_line(68, ng0);
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
LAB3:    t1 = (t0 + 5632);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 5920);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(68, ng0);
    t1 = (t0 + 5984);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 3112U);
    t6 = *((char **)t2);
    t11 = *((int *)t6);
    if (t11 == 0)
        goto LAB11;

LAB17:    if (t11 == 1)
        goto LAB12;

LAB18:    if (t11 == 2)
        goto LAB13;

LAB19:    t2 = ((WORK_P_3647430093) + 1168U);
    t7 = *((char **)t2);
    t12 = *((int *)t7);
    t13 = (t12 + 2);
    if (t11 >= 3)
        goto LAB21;

LAB20:    t2 = ((WORK_P_3647430093) + 1168U);
    t8 = *((char **)t2);
    t14 = *((int *)t8);
    t15 = (t14 + 3);
    t2 = ((WORK_P_3647430093) + 1168U);
    t16 = *((char **)t2);
    t17 = *((int *)t16);
    t18 = (2 * t17);
    t19 = (t18 + 2);
    if (t11 >= t15)
        goto LAB23;

LAB22:
LAB16:    xsi_set_current_line(79, ng0);
    t1 = (t0 + 5984);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(79, ng0);
    t1 = (t0 + 5920);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 0;
    xsi_driver_first_trans_fast(t1);

LAB10:    goto LAB3;

LAB7:    t2 = (t0 + 1672U);
    t5 = *((char **)t2);
    t9 = *((unsigned char *)t5);
    t10 = (t9 == (unsigned char)3);
    t3 = t10;
    goto LAB9;

LAB11:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 1992U);
    t20 = *((char **)t2);
    t21 = *((unsigned char *)t20);
    t22 = (t21 == (unsigned char)2);
    if (t22 != 0)
        goto LAB25;

LAB27:
LAB26:    goto LAB10;

LAB12:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB28;

LAB30:
LAB29:    goto LAB10;

LAB13:    xsi_set_current_line(73, ng0);
    t1 = ((WORK_P_3647430093) + 1168U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t1 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t30, 0, t11);
    t3 = (32U != 32U);
    if (t3 == 1)
        goto LAB31;

LAB32:    t5 = (t0 + 6048);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t16 = *((char **)t8);
    memcpy(t16, t1, 32U);
    xsi_driver_first_trans_delta(t5, 0U, 32U, 0LL);
    xsi_set_current_line(74, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 6048);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 32U);
    xsi_driver_first_trans_delta(t1, 32U, 32U, 0LL);
    xsi_set_current_line(74, ng0);
    t1 = (t0 + 5984);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(74, ng0);
    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t12 = (t11 + 1);
    t1 = (t0 + 5920);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t12;
    xsi_driver_first_trans_fast(t1);
    goto LAB10;

LAB14:    xsi_set_current_line(75, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = ((WORK_P_3647430093) + 1168U);
    t5 = *((char **)t1);
    t11 = *((int *)t5);
    t31 = (32 - t11);
    t32 = (t31 * 1U);
    t33 = (0 + t32);
    t1 = (t2 + t33);
    t6 = (t0 + 6048);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t16 = (t8 + 56U);
    t20 = *((char **)t16);
    memcpy(t20, t1, 32U);
    xsi_driver_first_trans_delta(t6, 0U, 32U, 0LL);
    xsi_set_current_line(75, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t11 = (0 - 32);
    t31 = (t11 * -1);
    t32 = (1U * t31);
    t33 = (0 + t32);
    t1 = (t2 + t33);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 6048);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t16 = *((char **)t8);
    *((unsigned char *)t16) = t3;
    xsi_driver_first_trans_delta(t5, 32U, 1, 0LL);
    xsi_set_current_line(76, ng0);
    t1 = ((WORK_P_3647430093) + 1168U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t12 = (t11 - 2);
    t1 = (t0 + 8800);
    *((int *)t1) = t12;
    t5 = (t0 + 8804);
    *((int *)t5) = 0;
    t13 = t12;
    t14 = 0;

LAB33:    if (t13 >= t14)
        goto LAB34;

LAB36:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t12 = (t11 + 1);
    t1 = (t0 + 5920);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t12;
    xsi_driver_first_trans_fast(t1);
    goto LAB10;

LAB15:    xsi_set_current_line(78, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t1 = (t0 + 6048);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 64U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(78, ng0);
    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t12 = (t11 + 1);
    t1 = (t0 + 5920);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t12;
    xsi_driver_first_trans_fast(t1);
    goto LAB10;

LAB21:    if (t11 <= t13)
        goto LAB14;
    else
        goto LAB20;

LAB23:    if (t11 <= t19)
        goto LAB15;
    else
        goto LAB22;

LAB24:;
LAB25:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 3112U);
    t23 = *((char **)t2);
    t24 = *((int *)t23);
    t25 = (t24 + 1);
    t2 = (t0 + 5920);
    t26 = (t2 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    *((int *)t29) = t25;
    xsi_driver_first_trans_fast(t2);
    goto LAB26;

LAB28:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 3112U);
    t5 = *((char **)t1);
    t11 = *((int *)t5);
    t12 = (t11 + 1);
    t1 = (t0 + 5920);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t16 = *((char **)t8);
    *((int *)t16) = t12;
    xsi_driver_first_trans_fast(t1);
    goto LAB29;

LAB31:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB32;

LAB34:    xsi_set_current_line(76, ng0);
    t6 = (t0 + 2792U);
    t7 = *((char **)t6);
    t6 = (t0 + 8800);
    t15 = *((int *)t6);
    t17 = (t15 + 1);
    t18 = (t17 - 63);
    t31 = (t18 * -1);
    xsi_vhdl_check_range_of_index(63, 0, -1, t17);
    t32 = (1U * t31);
    t33 = (0 + t32);
    t8 = (t7 + t33);
    t3 = *((unsigned char *)t8);
    t16 = (t0 + 8800);
    t19 = *((int *)t16);
    t24 = (t19 - 63);
    t34 = (t24 * -1);
    t35 = (1 * t34);
    t36 = (0U + t35);
    t20 = (t0 + 6048);
    t23 = (t20 + 56U);
    t26 = *((char **)t23);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    *((unsigned char *)t28) = t3;
    xsi_driver_first_trans_delta(t20, t36, 1, 0LL);

LAB35:    t1 = (t0 + 8800);
    t13 = *((int *)t1);
    t2 = (t0 + 8804);
    t14 = *((int *)t2);
    if (t13 == t14)
        goto LAB36;

LAB37:    t11 = (t13 + -1);
    t13 = t11;
    t5 = (t0 + 8800);
    *((int *)t5) = t13;
    goto LAB33;

}

static void work_a_3769354962_1516540902_p_4(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(83, ng0);

LAB3:    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t1 = ((WORK_P_3647430093) + 1168U);
    t3 = *((char **)t1);
    t4 = *((int *)t3);
    t5 = (2 * t4);
    t6 = (t5 - 1);
    t7 = (63 - t6);
    t8 = (t7 * 1U);
    t9 = (0 + t8);
    t1 = (t2 + t9);
    t10 = (t0 + 6112);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 32U);
    xsi_driver_first_trans_fast_port(t10);

LAB2:    t15 = (t0 + 5648);
    *((int *)t15) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3769354962_1516540902_init()
{
	static char *pe[] = {(void *)work_a_3769354962_1516540902_p_0,(void *)work_a_3769354962_1516540902_p_1,(void *)work_a_3769354962_1516540902_p_2,(void *)work_a_3769354962_1516540902_p_3,(void *)work_a_3769354962_1516540902_p_4};
	xsi_register_didat("work_a_3769354962_1516540902", "isim/tb_RSA_isim_beh.exe.sim/work/a_3769354962_1516540902.didat");
	xsi_register_executes(pe);
}
