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
static const char *ng0 = "/media/sf_ASE/moltiplicatore_B/boundary_scan_chain.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3166768430_1181938964_p_0(char *t0)
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
    char *t10;
    int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    int t15;
    int t16;
    int t17;
    int t18;
    int t19;
    unsigned char t20;
    int t21;
    int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;

LAB0:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 3888U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 3688U);
    t3 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:    t1 = (t0 + 3568U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB15;

LAB16:
LAB3:    t1 = (t0 + 7360);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(78, ng0);
    t1 = xsi_get_transient_memory(9U);
    memset(t1, 0, 9U);
    t5 = t1;
    memset(t5, (unsigned char)2, 9U);
    t6 = (t0 + 7440);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 9U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(80, ng0);
    t2 = (t0 + 4688U);
    t5 = *((char **)t2);
    t11 = (0 - 8);
    t12 = (t11 * -1);
    t13 = (1U * t12);
    t14 = (0 + t13);
    t2 = (t5 + t14);
    t4 = *((unsigned char *)t2);
    t6 = (t0 + 7504);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t4;
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(81, ng0);
    t1 = (t0 + 4208U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB7;

LAB9:
LAB8:    goto LAB3;

LAB7:    xsi_set_current_line(82, ng0);
    t11 = (9 - 2);
    t1 = (t0 + 12016);
    *((int *)t1) = t11;
    t5 = (t0 + 12020);
    *((int *)t5) = 0;
    t15 = t11;
    t16 = 0;

LAB10:    if (t15 >= t16)
        goto LAB11;

LAB13:    xsi_set_current_line(85, ng0);
    t1 = (t0 + 3408U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 7440);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t3;
    xsi_driver_first_trans_delta(t1, 0U, 1, 0LL);
    goto LAB8;

LAB11:    xsi_set_current_line(83, ng0);
    t6 = (t0 + 4688U);
    t7 = *((char **)t6);
    t6 = (t0 + 12016);
    t17 = *((int *)t6);
    t18 = (t17 + 1);
    t19 = (t18 - 8);
    t12 = (t19 * -1);
    xsi_vhdl_check_range_of_index(8, 0, -1, t18);
    t13 = (1U * t12);
    t14 = (0 + t13);
    t8 = (t7 + t14);
    t20 = *((unsigned char *)t8);
    t9 = (t0 + 12016);
    t21 = *((int *)t9);
    t22 = (t21 - 8);
    t23 = (t22 * -1);
    t24 = (1 * t23);
    t25 = (0U + t24);
    t10 = (t0 + 7440);
    t26 = (t10 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    *((unsigned char *)t29) = t20;
    xsi_driver_first_trans_delta(t10, t25, 1, 0LL);

LAB12:    t1 = (t0 + 12016);
    t15 = *((int *)t1);
    t2 = (t0 + 12020);
    t16 = *((int *)t2);
    if (t15 == t16)
        goto LAB13;

LAB14:    t11 = (t15 + -1);
    t15 = t11;
    t5 = (t0 + 12016);
    *((int *)t5) = t15;
    goto LAB10;

LAB15:    xsi_set_current_line(88, ng0);
    t1 = (t0 + 4048U);
    t5 = *((char **)t1);
    t1 = (t0 + 7440);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 9U);
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

}


extern void work_a_3166768430_1181938964_init()
{
	static char *pe[] = {(void *)work_a_3166768430_1181938964_p_0};
	xsi_register_didat("work_a_3166768430_1181938964", "isim/Booth_testbench_isim_beh.exe.sim/work/a_3166768430_1181938964.didat");
	xsi_register_executes(pe);
}
