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
static const char *ng0 = "/media/sf_ASE/VHDL/Milo/divisore_restoring/divisore_restoring/shifter_a_sinistra.vhd";
extern char *IEEE_P_2592010699;



static void work_a_0099216597_1181938964_p_0(char *t0)
{
    char t10[16];
    char t12[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    char *t11;
    char *t13;
    char *t14;
    int t15;
    unsigned int t16;
    unsigned char t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(117, ng0);

LAB3:    t1 = (t0 + 36584U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 36104U);
    t4 = *((char **)t1);
    t5 = (64 - 2);
    t6 = (63 - t5);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t1 = (t4 + t8);
    t11 = ((IEEE_P_2592010699) + 4000);
    t13 = (t12 + 0U);
    t14 = (t13 + 0U);
    *((int *)t14) = 62;
    t14 = (t13 + 4U);
    *((int *)t14) = 0;
    t14 = (t13 + 8U);
    *((int *)t14) = -1;
    t15 = (0 - 62);
    t16 = (t15 * -1);
    t16 = (t16 + 1);
    t14 = (t13 + 12U);
    *((unsigned int *)t14) = t16;
    t9 = xsi_base_array_concat(t9, t10, t11, (char)99, t3, (char)97, t1, t12, (char)101);
    t16 = (1U + 63U);
    t17 = (64U != t16);
    if (t17 == 1)
        goto LAB5;

LAB6:    t14 = (t0 + 46464);
    t18 = (t14 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t9, 64U);
    xsi_driver_first_trans_fast_port(t14);

LAB2:    t22 = (t0 + 46352);
    *((int *)t22) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(64U, t16, 0);
    goto LAB6;

}

static void work_a_0099216597_1181938964_p_1(char *t0)
{
    char t15[16];
    char t16[16];
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
    int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    int t17;
    unsigned int t18;
    unsigned char t19;
    char *t20;
    char *t21;
    char *t22;
    static char *nl0[] = {&&LAB6, &&LAB6, &&LAB5, &&LAB6, &&LAB6, &&LAB6, &&LAB6, &&LAB6, &&LAB6};

LAB0:    t1 = (t0 + 45784U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(118, ng0);
    t2 = (t0 + 35304U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t2 = (char *)((nl0) + t4);
    goto **((char **)t2);

LAB4:    xsi_set_current_line(118, ng0);

LAB11:    t2 = (t0 + 46368);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB12;

LAB1:    return;
LAB5:    xsi_set_current_line(119, ng0);
    t5 = (t0 + 35464U);
    t6 = *((char **)t5);
    t5 = (t0 + 46528);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t6, 64U);
    xsi_driver_first_trans_fast(t5);
    goto LAB4;

LAB6:    xsi_set_current_line(119, ng0);
    t2 = (t0 + 36584U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t2 = (t0 + 36104U);
    t5 = *((char **)t2);
    t11 = (64 - 2);
    t12 = (63 - t11);
    t13 = (t12 * 1U);
    t14 = (0 + t13);
    t2 = (t5 + t14);
    t7 = ((IEEE_P_2592010699) + 4000);
    t8 = (t16 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 62;
    t9 = (t8 + 4U);
    *((int *)t9) = 0;
    t9 = (t8 + 8U);
    *((int *)t9) = -1;
    t17 = (0 - 62);
    t18 = (t17 * -1);
    t18 = (t18 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t18;
    t6 = xsi_base_array_concat(t6, t15, t7, (char)99, t4, (char)97, t2, t16, (char)101);
    t18 = (1U + 63U);
    t19 = (64U != t18);
    if (t19 == 1)
        goto LAB7;

LAB8:    t9 = (t0 + 46528);
    t10 = (t9 + 56U);
    t20 = *((char **)t10);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t6, 64U);
    xsi_driver_first_trans_fast(t9);
    goto LAB4;

LAB7:    xsi_size_not_matching(64U, t18, 0);
    goto LAB8;

LAB9:    t3 = (t0 + 46368);
    *((int *)t3) = 0;
    goto LAB2;

LAB10:    goto LAB9;

LAB12:    goto LAB10;

}

static void work_a_0099216597_1181938964_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(121, ng0);

LAB3:    t1 = (t0 + 36584U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 46592);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 46384);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0099216597_1181938964_init()
{
	static char *pe[] = {(void *)work_a_0099216597_1181938964_p_0,(void *)work_a_0099216597_1181938964_p_1,(void *)work_a_0099216597_1181938964_p_2};
	xsi_register_didat("work_a_0099216597_1181938964", "isim/Divisore_restoring_testbench_isim_beh.exe.sim/work/a_0099216597_1181938964.didat");
	xsi_register_executes(pe);
}
