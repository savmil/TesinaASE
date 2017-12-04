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
static const char *ng0 = "/home/sav/ASE/Carry_Look_A-head_Adder/clock_filter.vhd";
extern char *IEEE_P_1242562249;
extern char *IEEE_P_2592010699;

char *ieee_p_1242562249_sub_1006216973935652998_1035706684(char *, char *, char *, char *, int );
char *ieee_p_1242562249_sub_10420449594411817395_1035706684(char *, char *, int , int );
unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3511606049_3212880686_p_0(char *t0)
{
    char t3[16];
    char *t1;
    char *t2;
    char *t4;
    int t5;
    int t6;
    int t7;
    char *t8;
    int t9;
    unsigned char t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;

LAB0:    xsi_set_current_line(24, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 2168U);
    t4 = *((char **)t1);
    t5 = *((int *)t4);
    t6 = xsi_vhdl_pow(2, t5);
    t7 = (t6 - 1);
    t1 = (t0 + 2168U);
    t8 = *((char **)t1);
    t9 = *((int *)t8);
    t1 = ieee_p_1242562249_sub_10420449594411817395_1035706684(IEEE_P_1242562249, t3, t7, t9);
    t10 = 1;
    if (18U == 18U)
        goto LAB5;

LAB6:    t10 = 0;

LAB7:    if (t10 != 0)
        goto LAB3;

LAB4:
LAB11:    t19 = (t0 + 3808);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    *((unsigned char *)t23) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t19);

LAB2:    t24 = (t0 + 3712);
    *((int *)t24) = 1;

LAB1:    return;
LAB3:    t14 = (t0 + 3808);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t14);
    goto LAB2;

LAB5:    t11 = 0;

LAB8:    if (t11 < 18U)
        goto LAB9;
    else
        goto LAB7;

LAB9:    t12 = (t2 + t11);
    t13 = (t1 + t11);
    if (*((unsigned char *)t12) != *((unsigned char *)t13))
        goto LAB6;

LAB10:    t11 = (t11 + 1);
    goto LAB8;

LAB12:    goto LAB2;

}

static void work_a_3511606049_3212880686_p_1(char *t0)
{
    char t11[16];
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
    char *t12;

LAB0:    xsi_set_current_line(28, ng0);
    t1 = (t0 + 1032U);
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
LAB3:    t1 = (t0 + 3728);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(29, ng0);
    t1 = xsi_get_transient_memory(18U);
    memset(t1, 0, 18U);
    t5 = t1;
    memset(t5, (unsigned char)2, 18U);
    t6 = (t0 + 3872);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 18U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 1512U);
    t5 = *((char **)t2);
    t2 = (t0 + 5872U);
    t6 = ieee_p_1242562249_sub_1006216973935652998_1035706684(IEEE_P_1242562249, t11, t5, t2, 1);
    t7 = (t0 + 3872);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t12 = *((char **)t10);
    memcpy(t12, t6, 18U);
    xsi_driver_first_trans_fast(t7);
    goto LAB3;

}


extern void work_a_3511606049_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3511606049_3212880686_p_0,(void *)work_a_3511606049_3212880686_p_1};
	xsi_register_didat("work_a_3511606049_3212880686", "isim/display_top_level_isim_beh.exe.sim/work/a_3511606049_3212880686.didat");
	xsi_register_executes(pe);
}
