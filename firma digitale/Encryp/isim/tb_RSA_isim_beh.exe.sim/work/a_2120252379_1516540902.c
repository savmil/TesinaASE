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

char *ieee_p_3620187407_sub_767740470_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_2120252379_1516540902_p_0(char *t0)
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

LAB0:    xsi_set_current_line(25, ng0);

LAB3:    t1 = (t0 + 1032U);
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
    *((int *)t15) = 31;
    t15 = (t14 + 8U);
    *((int *)t15) = -1;
    t16 = (31 - 63);
    t17 = (t16 * -1);
    t17 = (t17 + 1);
    t15 = (t14 + 12U);
    *((unsigned int *)t15) = t17;
    t10 = xsi_base_array_concat(t10, t11, t12, (char)99, (unsigned char)2, (char)97, t1, t13, (char)101);
    t17 = (1U + 33U);
    t18 = (34U != t17);
    if (t18 == 1)
        goto LAB5;

LAB6:    t15 = (t0 + 4608);
    t19 = (t15 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t10, 34U);
    xsi_driver_first_trans_fast(t15);

LAB2:    t23 = (t0 + 4464);
    *((int *)t23) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(34U, t17, 0);
    goto LAB6;

}

static void work_a_2120252379_1516540902_p_1(char *t0)
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

LAB0:    xsi_set_current_line(26, ng0);

LAB3:    t1 = (t0 + 6977);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t6 = ((IEEE_P_2592010699) + 4024);
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
    t9 = (t0 + 6644U);
    t3 = xsi_base_array_concat(t3, t5, t6, (char)97, t1, t7, (char)97, t4, t9, (char)101);
    t11 = (2U + 32U);
    t12 = (34U != t11);
    if (t12 == 1)
        goto LAB5;

LAB6:    t13 = (t0 + 4672);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t3, 34U);
    xsi_driver_first_trans_fast(t13);

LAB2:    t18 = (t0 + 4480);
    *((int *)t18) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(34U, t11, 0);
    goto LAB6;

}

static void work_a_2120252379_1516540902_p_2(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(27, ng0);

LAB3:    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t2 = (t0 + 6676U);
    t4 = (t0 + 1672U);
    t5 = *((char **)t4);
    t4 = (t0 + 6676U);
    t6 = ieee_p_3620187407_sub_767740470_3965413181(IEEE_P_3620187407, t1, t3, t2, t5, t4);
    t7 = (t1 + 12U);
    t8 = *((unsigned int *)t7);
    t9 = (1U * t8);
    t10 = (34U != t9);
    if (t10 == 1)
        goto LAB5;

LAB6:    t11 = (t0 + 4736);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 34U);
    xsi_driver_first_trans_fast(t11);

LAB2:    t16 = (t0 + 4496);
    *((int *)t16) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(34U, t9, 0);
    goto LAB6;

}

static void work_a_2120252379_1516540902_p_3(char *t0)
{
    char t27[16];
    char t28[16];
    char t30[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    int t6;
    int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    int t16;
    int t17;
    int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    unsigned int t29;
    char *t31;
    char *t32;
    char *t33;
    static char *nl0[] = {&&LAB6, &&LAB6, &&LAB6, &&LAB5, &&LAB6, &&LAB6, &&LAB6, &&LAB6, &&LAB6};

LAB0:    t1 = (t0 + 3896U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(28, ng0);
    t2 = (t0 + 1832U);
    t3 = *((char **)t2);
    t2 = ((WORK_P_3647430093) + 1168U);
    t4 = *((char **)t2);
    t5 = *((int *)t4);
    t6 = (t5 + 1);
    t7 = (t6 - 33);
    t8 = (t7 * -1);
    t9 = (1U * t8);
    t10 = (0 + t9);
    t2 = (t3 + t10);
    t11 = *((unsigned char *)t2);
    t12 = (char *)((nl0) + t11);
    goto **((char **)t12);

LAB4:    xsi_set_current_line(28, ng0);

LAB11:    t2 = (t0 + 4512);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB12;

LAB1:    return;
LAB5:    xsi_set_current_line(28, ng0);
    t13 = (t0 + 1032U);
    t14 = *((char **)t13);
    t13 = ((WORK_P_3647430093) + 1168U);
    t15 = *((char **)t13);
    t16 = *((int *)t15);
    t17 = (2 * t16);
    t18 = (t17 - 2);
    t19 = (63 - t18);
    t20 = (t19 * 1U);
    t21 = (0 + t20);
    t13 = (t14 + t21);
    t22 = (t0 + 4800);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t13, 63U);
    xsi_driver_first_trans_fast(t22);
    goto LAB4;

LAB6:    xsi_set_current_line(28, ng0);
    t2 = (t0 + 1832U);
    t3 = *((char **)t2);
    t2 = ((WORK_P_3647430093) + 1168U);
    t4 = *((char **)t2);
    t5 = *((int *)t4);
    t6 = (t5 - 1);
    t8 = (33 - t6);
    t9 = (t8 * 1U);
    t10 = (0 + t9);
    t2 = (t3 + t10);
    t12 = (t0 + 1032U);
    t13 = *((char **)t12);
    t12 = ((WORK_P_3647430093) + 1168U);
    t14 = *((char **)t12);
    t7 = *((int *)t14);
    t16 = (t7 - 2);
    t19 = (63 - t16);
    t20 = (t19 * 1U);
    t21 = (0 + t20);
    t12 = (t13 + t21);
    t22 = ((IEEE_P_2592010699) + 4024);
    t23 = (t28 + 0U);
    t24 = (t23 + 0U);
    *((int *)t24) = 31;
    t24 = (t23 + 4U);
    *((int *)t24) = 0;
    t24 = (t23 + 8U);
    *((int *)t24) = -1;
    t17 = (0 - 31);
    t29 = (t17 * -1);
    t29 = (t29 + 1);
    t24 = (t23 + 12U);
    *((unsigned int *)t24) = t29;
    t24 = (t30 + 0U);
    t25 = (t24 + 0U);
    *((int *)t25) = 30;
    t25 = (t24 + 4U);
    *((int *)t25) = 0;
    t25 = (t24 + 8U);
    *((int *)t25) = -1;
    t18 = (0 - 30);
    t29 = (t18 * -1);
    t29 = (t29 + 1);
    t25 = (t24 + 12U);
    *((unsigned int *)t25) = t29;
    t15 = xsi_base_array_concat(t15, t27, t22, (char)97, t2, t28, (char)97, t12, t30, (char)101);
    t29 = (32U + 31U);
    t11 = (63U != t29);
    if (t11 == 1)
        goto LAB7;

LAB8:    t25 = (t0 + 4800);
    t26 = (t25 + 56U);
    t31 = *((char **)t26);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    memcpy(t33, t15, 63U);
    xsi_driver_first_trans_fast(t25);
    goto LAB4;

LAB7:    xsi_size_not_matching(63U, t29, 0);
    goto LAB8;

LAB9:    t3 = (t0 + 4512);
    *((int *)t3) = 0;
    goto LAB2;

LAB10:    goto LAB9;

LAB12:    goto LAB10;

}

static void work_a_2120252379_1516540902_p_4(char *t0)
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

LAB0:    xsi_set_current_line(30, ng0);

LAB3:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t4 = ((IEEE_P_2592010699) + 4024);
    t5 = (t0 + 6692U);
    t1 = xsi_base_array_concat(t1, t3, t4, (char)97, t2, t5, (char)99, (unsigned char)2, (char)101);
    t6 = (63U + 1U);
    t7 = (64U != t6);
    if (t7 == 1)
        goto LAB5;

LAB6:    t8 = (t0 + 4864);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 64U);
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 4528);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(64U, t6, 0);
    goto LAB6;

}


extern void work_a_2120252379_1516540902_init()
{
	static char *pe[] = {(void *)work_a_2120252379_1516540902_p_0,(void *)work_a_2120252379_1516540902_p_1,(void *)work_a_2120252379_1516540902_p_2,(void *)work_a_2120252379_1516540902_p_3,(void *)work_a_2120252379_1516540902_p_4};
	xsi_register_didat("work_a_2120252379_1516540902", "isim/tb_RSA_isim_beh.exe.sim/work/a_2120252379_1516540902.didat");
	xsi_register_executes(pe);
}
