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
static const char *ng0 = "/media/sf_ASE/RSA/Booth_multiplier.vhd";
extern char *IEEE_P_2592010699;



static void work_a_1637048481_1181938964_p_0(char *t0)
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

LAB0:    xsi_set_current_line(109, ng0);

LAB3:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t4 = ((IEEE_P_2592010699) + 4000);
    t5 = (t0 + 10200U);
    t1 = xsi_base_array_concat(t1, t3, t4, (char)97, t2, t5, (char)99, (unsigned char)2, (char)101);
    t6 = (32U + 1U);
    t7 = (33U != t6);
    if (t7 == 1)
        goto LAB5;

LAB6:    t8 = (t0 + 6592);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 33U);
    xsi_driver_first_trans_fast(t8);

LAB2:    t13 = (t0 + 6480);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(33U, t6, 0);
    goto LAB6;

}

static void work_a_1637048481_1181938964_p_1(char *t0)
{
    char t8[16];
    char t11[16];
    char *t1;
    char *t2;
    char *t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    char *t7;
    char *t9;
    char *t10;
    char *t12;
    char *t13;
    int t14;
    unsigned int t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    xsi_set_current_line(116, ng0);

LAB3:    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 2152U);
    t3 = *((char **)t1);
    t4 = (32 - 32);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t1 = (t3 + t6);
    t9 = ((IEEE_P_2592010699) + 4000);
    t10 = (t0 + 10264U);
    t12 = (t11 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 32;
    t13 = (t12 + 4U);
    *((int *)t13) = 1;
    t13 = (t12 + 8U);
    *((int *)t13) = -1;
    t14 = (1 - 32);
    t15 = (t14 * -1);
    t15 = (t15 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t15;
    t7 = xsi_base_array_concat(t7, t8, t9, (char)97, t2, t10, (char)97, t1, t11, (char)101);
    t15 = (32U + 32U);
    t16 = (64U != t15);
    if (t16 == 1)
        goto LAB5;

LAB6:    t13 = (t0 + 6656);
    t17 = (t13 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t7, 64U);
    xsi_driver_first_trans_fast(t13);

LAB2:    t21 = (t0 + 6496);
    *((int *)t21) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(64U, t15, 0);
    goto LAB6;

}

static void work_a_1637048481_1181938964_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(118, ng0);

LAB3:    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 6720);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_delta(t1, 0U, 1, 0LL);

LAB2:    t8 = (t0 + 6512);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_1637048481_1181938964_init()
{
	static char *pe[] = {(void *)work_a_1637048481_1181938964_p_0,(void *)work_a_1637048481_1181938964_p_1,(void *)work_a_1637048481_1181938964_p_2};
	xsi_register_didat("work_a_1637048481_1181938964", "isim/generazione_valore_RSA_testbench_isim_beh.exe.sim/work/a_1637048481_1181938964.didat");
	xsi_register_executes(pe);
}
