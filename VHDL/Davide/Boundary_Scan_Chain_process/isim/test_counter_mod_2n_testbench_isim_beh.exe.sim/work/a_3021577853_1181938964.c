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
static const char *ng0 = "C:/Users/Davide/Desktop/Boundary_Scan_Chain/boundary_scan_chain.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3021577853_1181938964_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    unsigned char t5;
    int t6;
    char *t7;
    char *t8;
    int t9;
    int t10;
    char *t11;
    char *t12;
    int t13;
    int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    unsigned char t19;
    char *t20;
    int t21;
    int t22;
    int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;

LAB0:    xsi_set_current_line(88, ng0);
    t1 = (t0 + 2728U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 5696);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(89, ng0);
    t1 = (t0 + 2208U);
    t5 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t5 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(90, ng0);
    t6 = (4 - 2);
    t7 = (t0 + 10004);
    *((int *)t7) = 0;
    t8 = (t0 + 10008);
    *((int *)t8) = t6;
    t9 = 0;
    t10 = t6;

LAB8:    if (t9 <= t10)
        goto LAB9;

LAB11:    xsi_set_current_line(93, ng0);
    t1 = (t0 + 2088U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5792);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t3;
    xsi_driver_first_trans_delta(t1, 3U, 1, 0LL);
    goto LAB6;

LAB9:    xsi_set_current_line(91, ng0);
    t11 = (t0 + 3208U);
    t12 = *((char **)t11);
    t11 = (t0 + 10004);
    t13 = *((int *)t11);
    t14 = (t13 - 3);
    t15 = (t14 * -1);
    xsi_vhdl_check_range_of_index(3, 0, -1, *((int *)t11));
    t16 = (1U * t15);
    t17 = (0 + t16);
    t18 = (t12 + t17);
    t19 = *((unsigned char *)t18);
    t20 = (t0 + 10004);
    t21 = *((int *)t20);
    t22 = (t21 + 1);
    t23 = (t22 - 3);
    t24 = (t23 * -1);
    t25 = (1 * t24);
    t26 = (0U + t25);
    t27 = (t0 + 5792);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    *((unsigned char *)t31) = t19;
    xsi_driver_first_trans_delta(t27, t26, 1, 0LL);

LAB10:    t1 = (t0 + 10004);
    t9 = *((int *)t1);
    t2 = (t0 + 10008);
    t10 = *((int *)t2);
    if (t9 == t10)
        goto LAB11;

LAB12:    t6 = (t9 + 1);
    t9 = t6;
    t7 = (t0 + 10004);
    *((int *)t7) = t9;
    goto LAB8;

}

static void work_a_3021577853_1181938964_p_1(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(97, ng0);

LAB3:    t1 = (t0 + 3208U);
    t2 = *((char **)t1);
    t3 = (4 - 1);
    t4 = (t3 - 3);
    t5 = (t4 * -1);
    t6 = (1U * t5);
    t7 = (0 + t6);
    t1 = (t2 + t7);
    t8 = *((unsigned char *)t1);
    t9 = (t0 + 5856);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t8;
    xsi_driver_first_trans_fast_port(t9);

LAB2:    t14 = (t0 + 5712);
    *((int *)t14) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3021577853_1181938964_init()
{
	static char *pe[] = {(void *)work_a_3021577853_1181938964_p_0,(void *)work_a_3021577853_1181938964_p_1};
	xsi_register_didat("work_a_3021577853_1181938964", "isim/test_counter_mod_2n_testbench_isim_beh.exe.sim/work/a_3021577853_1181938964.didat");
	xsi_register_executes(pe);
}
