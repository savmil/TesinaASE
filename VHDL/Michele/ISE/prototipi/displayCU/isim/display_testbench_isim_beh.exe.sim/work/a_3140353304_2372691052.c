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

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Public/ISE/display/display_testbench.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );


static void work_a_3140353304_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 1872U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(84, ng0);
    t2 = (t0 + 2248);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(85, ng0);
    t2 = (t0 + 1316U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 1772);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(86, ng0);
    t2 = (t0 + 2248);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(87, ng0);
    t2 = (t0 + 1316U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 1772);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_3140353304_2372691052_p_1(char *t0)
{
    char t16[16];
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    int64 t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    int t14;
    int t15;
    char *t17;
    int t18;
    int t19;
    int t20;
    int t21;
    int t22;
    unsigned char t23;

LAB0:    t1 = (t0 + 2016U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(95, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 1916);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(97, ng0);
    t2 = (t0 + 1316U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t5 = (t3 * 10);
    t2 = (t0 + 1916);
    xsi_process_wait(t2, t5);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(100, ng0);
    t2 = (t0 + 4224);
    *((unsigned char *)t2) = (unsigned char)2;
    t4 = (t0 + 4225);
    *((unsigned char *)t4) = (unsigned char)3;
    t6 = (unsigned char)2;
    t7 = (unsigned char)3;

LAB12:    if (t6 <= t7)
        goto LAB13;

LAB15:    xsi_set_current_line(116, ng0);

LAB38:    *((char **)t1) = &&LAB39;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB13:    xsi_set_current_line(103, ng0);
    t8 = (t0 + 4224);
    t9 = (t0 + 2284);
    t10 = (t9 + 32U);
    t11 = *((char **)t10);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = *((unsigned char *)t8);
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(104, ng0);
    t2 = (t0 + 4226);
    *((int *)t2) = 0;
    t4 = (t0 + 4230);
    *((int *)t4) = 15;
    t14 = 0;
    t15 = 15;

LAB16:    if (t14 <= t15)
        goto LAB17;

LAB19:
LAB14:    t2 = (t0 + 4224);
    t6 = *((unsigned char *)t2);
    t4 = (t0 + 4225);
    t7 = *((unsigned char *)t4);
    if (t6 == t7)
        goto LAB15;

LAB35:    t23 = (t6 + (unsigned char)1);
    t6 = t23;
    t8 = (t0 + 4224);
    *((unsigned char *)t8) = t6;
    goto LAB12;

LAB17:    xsi_set_current_line(105, ng0);
    t8 = (t0 + 4226);
    t9 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t16, *((int *)t8), 4);
    t10 = (t0 + 2320);
    t11 = (t10 + 32U);
    t12 = *((char **)t11);
    t13 = (t12 + 40U);
    t17 = *((char **)t13);
    memcpy(t17, t9, 4U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(106, ng0);
    t2 = (t0 + 4234);
    *((int *)t2) = 0;
    t4 = (t0 + 4238);
    *((int *)t4) = 3;
    t18 = 0;
    t19 = 3;

LAB20:    if (t18 <= t19)
        goto LAB21;

LAB23:
LAB18:    t2 = (t0 + 4226);
    t14 = *((int *)t2);
    t4 = (t0 + 4230);
    t15 = *((int *)t4);
    if (t14 == t15)
        goto LAB19;

LAB34:    t18 = (t14 + 1);
    t14 = t18;
    t8 = (t0 + 4226);
    *((int *)t8) = t14;
    goto LAB16;

LAB21:    xsi_set_current_line(107, ng0);
    t8 = (t0 + 4234);
    t20 = *((int *)t8);
    t21 = (t20 * 4);
    t9 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t16, t21, 2);
    t10 = (t0 + 2356);
    t11 = (t10 + 32U);
    t12 = *((char **)t11);
    t13 = (t12 + 40U);
    t17 = *((char **)t13);
    memcpy(t17, t9, 16U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(108, ng0);
    t2 = (t0 + 4242);
    *((int *)t2) = 0;
    t4 = (t0 + 4246);
    *((int *)t4) = 15;
    t20 = 0;
    t21 = 15;

LAB24:    if (t20 <= t21)
        goto LAB25;

LAB27:
LAB22:    t2 = (t0 + 4234);
    t18 = *((int *)t2);
    t4 = (t0 + 4238);
    t19 = *((int *)t4);
    if (t18 == t19)
        goto LAB23;

LAB33:    t20 = (t18 + 1);
    t18 = t20;
    t8 = (t0 + 4234);
    *((int *)t8) = t18;
    goto LAB20;

LAB25:    xsi_set_current_line(109, ng0);
    t8 = (t0 + 4242);
    t9 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t16, *((int *)t8), 4);
    t10 = (t0 + 2392);
    t11 = (t10 + 32U);
    t12 = *((char **)t11);
    t13 = (t12 + 40U);
    t17 = *((char **)t13);
    memcpy(t17, t9, 4U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(110, ng0);
    t3 = (50 * 1000LL);
    t2 = (t0 + 1916);
    xsi_process_wait(t2, t3);

LAB30:    *((char **)t1) = &&LAB31;
    goto LAB1;

LAB26:    t2 = (t0 + 4242);
    t20 = *((int *)t2);
    t4 = (t0 + 4246);
    t21 = *((int *)t4);
    if (t20 == t21)
        goto LAB27;

LAB32:    t22 = (t20 + 1);
    t20 = t22;
    t8 = (t0 + 4242);
    *((int *)t8) = t20;
    goto LAB24;

LAB28:    goto LAB26;

LAB29:    goto LAB28;

LAB31:    goto LAB29;

LAB36:    goto LAB2;

LAB37:    goto LAB36;

LAB39:    goto LAB37;

}


extern void work_a_3140353304_2372691052_init()
{
	static char *pe[] = {(void *)work_a_3140353304_2372691052_p_0,(void *)work_a_3140353304_2372691052_p_1};
	xsi_register_didat("work_a_3140353304_2372691052", "isim/display_testbench_isim_beh.exe.sim/work/a_3140353304_2372691052.didat");
	xsi_register_executes(pe);
}
