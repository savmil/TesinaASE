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
static const char *ng0 = "/home/sav/ASE/Carry_Look_A-head_Adder/Carry_Look_A_head_unit.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_3488546069778340532_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_3488768496604610246_503743352(char *, unsigned char , unsigned char );


static void work_a_3960289611_3212880686_p_0(char *t0)
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
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    int t14;
    int t15;
    int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned char t20;
    char *t21;
    char *t22;
    unsigned char t23;
    unsigned char t24;
    unsigned char t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;

LAB0:    xsi_set_current_line(48, ng0);

LAB3:    t1 = (t0 + 1560U);
    t2 = *((char **)t1);
    t1 = (t0 + 2616U);
    t3 = *((char **)t1);
    t4 = *((int *)t3);
    t5 = (t4 - 1);
    t6 = (t5 - 0);
    t7 = (t6 * -1);
    t8 = (1U * t7);
    t9 = (0 + t8);
    t1 = (t2 + t9);
    t10 = *((unsigned char *)t1);
    t11 = (t0 + 1720U);
    t12 = *((char **)t11);
    t11 = (t0 + 2616U);
    t13 = *((char **)t11);
    t14 = *((int *)t13);
    t15 = (t14 - 1);
    t16 = (t15 - 0);
    t17 = (t16 * -1);
    t18 = (1U * t17);
    t19 = (0 + t18);
    t11 = (t12 + t19);
    t20 = *((unsigned char *)t11);
    t21 = (t0 + 1880U);
    t22 = *((char **)t21);
    t23 = *((unsigned char *)t22);
    t24 = ieee_p_2592010699_sub_3488768496604610246_503743352(IEEE_P_2592010699, t20, t23);
    t25 = ieee_p_2592010699_sub_3488546069778340532_503743352(IEEE_P_2592010699, t10, t24);
    t21 = (t0 + 4256);
    t26 = (t21 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    *((unsigned char *)t29) = t25;
    xsi_driver_first_trans_delta(t21, 0U, 1, 0LL);

LAB2:    t30 = (t0 + 4160);
    *((int *)t30) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3960289611_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(54, ng0);

LAB3:    t1 = (t0 + 2200U);
    t2 = *((char **)t1);
    t3 = (1 - 1);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 4320);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 4176);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3960289611_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3960289611_3212880686_p_0,(void *)work_a_3960289611_3212880686_p_1};
	xsi_register_didat("work_a_3960289611_3212880686", "isim/Carry_Look_A_head_adder_testbench_isim_beh.exe.sim/work/a_3960289611_3212880686.didat");
	xsi_register_executes(pe);
}
