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
static const char *ng0 = "/media/sf_ASE/moltiplicatore_B/latch_d.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3958234332_3212880686_p_0(char *t0)
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
    int t12;
    int t13;
    int t14;
    int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    int t19;
    int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;

LAB0:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1152U);
    t3 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 3104);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(46, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t5 = t1;
    memset(t5, (unsigned char)2, 8U);
    t6 = (t0 + 3184);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(48, ng0);
    t11 = (8 - 1);
    t2 = (t0 + 4846);
    *((int *)t2) = 0;
    t5 = (t0 + 4850);
    *((int *)t5) = t11;
    t12 = 0;
    t13 = t11;

LAB7:    if (t12 <= t13)
        goto LAB8;

LAB10:    goto LAB3;

LAB8:    xsi_set_current_line(49, ng0);
    t6 = (t0 + 1032U);
    t7 = *((char **)t6);
    t6 = (t0 + 4846);
    t14 = *((int *)t6);
    t15 = (t14 - 7);
    t16 = (t15 * -1);
    xsi_vhdl_check_range_of_index(7, 0, -1, *((int *)t6));
    t17 = (1U * t16);
    t18 = (0 + t17);
    t8 = (t7 + t18);
    t4 = *((unsigned char *)t8);
    t9 = (t0 + 4846);
    t19 = *((int *)t9);
    t20 = (t19 - 7);
    t21 = (t20 * -1);
    t22 = (1 * t21);
    t23 = (0U + t22);
    t10 = (t0 + 3184);
    t24 = (t10 + 56U);
    t25 = *((char **)t24);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    *((unsigned char *)t27) = t4;
    xsi_driver_first_trans_delta(t10, t23, 1, 0LL);

LAB9:    t1 = (t0 + 4846);
    t12 = *((int *)t1);
    t2 = (t0 + 4850);
    t13 = *((int *)t2);
    if (t12 == t13)
        goto LAB10;

LAB11:    t11 = (t12 + 1);
    t12 = t11;
    t5 = (t0 + 4846);
    *((int *)t5) = t12;
    goto LAB7;

}


extern void work_a_3958234332_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3958234332_3212880686_p_0};
	xsi_register_didat("work_a_3958234332_3212880686", "isim/Booth_testbench_isim_beh.exe.sim/work/a_3958234332_3212880686.didat");
	xsi_register_executes(pe);
}
