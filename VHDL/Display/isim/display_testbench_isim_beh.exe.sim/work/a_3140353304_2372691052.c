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
static const char *ng0 = "C:/Users/Michele/Documents/TesinaASE/VHDL/Display/display_testbench.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );
unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );


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

LAB0:    t1 = (t0 + 2008U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(94, ng0);
    t2 = (t0 + 2384);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(95, ng0);
    t2 = (t0 + 1316U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 1908);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(96, ng0);
    t2 = (t0 + 2384);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(97, ng0);
    t2 = (t0 + 1316U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 1908);
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
    char t17[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;
    unsigned char t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t14;
    int t15;
    int t16;
    int t18;
    int t19;
    char *t20;
    int t21;
    int t22;
    int t23;
    int64 t24;

LAB0:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(104, ng0);
    t2 = (t0 + 2420);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(106, ng0);
    t7 = (100 * 1000LL);
    t2 = (t0 + 2052);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(108, ng0);
    t2 = (t0 + 1316U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 * 10);
    t2 = (t0 + 2052);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(111, ng0);
    t2 = (t0 + 4816);
    *((unsigned char *)t2) = (unsigned char)2;
    t3 = (t0 + 4817);
    *((unsigned char *)t3) = (unsigned char)3;
    t9 = (unsigned char)2;
    t10 = (unsigned char)3;

LAB12:    if (t9 <= t10)
        goto LAB13;

LAB15:    xsi_set_current_line(128, ng0);

LAB33:    *((char **)t1) = &&LAB34;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB13:    xsi_set_current_line(112, ng0);
    t4 = (t0 + 4816);
    t11 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, *((unsigned char *)t4));
    t5 = (t0 + 2420);
    t6 = (t5 + 32U);
    t12 = *((char **)t6);
    t13 = (t12 + 40U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = t11;
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(113, ng0);
    t2 = (t0 + 4818);
    *((int *)t2) = 0;
    t3 = (t0 + 4822);
    *((int *)t3) = 2;
    t15 = 0;
    t16 = 2;

LAB16:    if (t15 <= t16)
        goto LAB17;

LAB19:
LAB14:    t2 = (t0 + 4816);
    t9 = *((unsigned char *)t2);
    t3 = (t0 + 4817);
    t10 = *((unsigned char *)t3);
    if (t9 == t10)
        goto LAB15;

LAB30:    t11 = (t9 + (unsigned char)1);
    t9 = t11;
    t4 = (t0 + 4816);
    *((unsigned char *)t4) = t9;
    goto LAB12;

LAB17:    xsi_set_current_line(114, ng0);
    t4 = (t0 + 4818);
    t18 = *((int *)t4);
    t19 = (t18 * 4);
    t5 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t17, t19, 4);
    t6 = (t0 + 2456);
    t12 = (t6 + 32U);
    t13 = *((char **)t12);
    t14 = (t13 + 40U);
    t20 = *((char **)t14);
    memcpy(t20, t5, 4U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(115, ng0);
    t2 = (t0 + 4818);
    t18 = *((int *)t2);
    t19 = (t18 * 4);
    t3 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t17, t19, 4);
    t4 = (t0 + 2492);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    t12 = (t6 + 40U);
    t13 = *((char **)t12);
    memcpy(t13, t3, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(119, ng0);
    t2 = (t0 + 4826);
    *((int *)t2) = 1;
    t3 = (t0 + 4830);
    *((int *)t3) = 2;
    t18 = 1;
    t19 = 2;

LAB20:    if (t18 <= t19)
        goto LAB21;

LAB23:
LAB18:    t2 = (t0 + 4818);
    t15 = *((int *)t2);
    t3 = (t0 + 4822);
    t16 = *((int *)t3);
    if (t15 == t16)
        goto LAB19;

LAB29:    t18 = (t15 + 1);
    t15 = t18;
    t4 = (t0 + 4818);
    *((int *)t4) = t15;
    goto LAB16;

LAB21:    xsi_set_current_line(120, ng0);
    t4 = (t0 + 4826);
    t21 = *((int *)t4);
    t22 = (t21 * 8);
    t5 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t17, t22, 16);
    t6 = (t0 + 2528);
    t12 = (t6 + 32U);
    t13 = *((char **)t12);
    t14 = (t13 + 40U);
    t20 = *((char **)t14);
    memcpy(t20, t5, 16U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(123, ng0);
    t2 = (t0 + 1384U);
    t3 = *((char **)t2);
    t21 = *((int *)t3);
    t2 = (t0 + 1452U);
    t4 = *((char **)t2);
    t22 = *((int *)t4);
    t23 = (t21 / t22);
    t2 = (t0 + 1316U);
    t5 = *((char **)t2);
    t7 = *((int64 *)t5);
    t8 = (t23 * t7);
    t24 = (t8 * 4);
    t2 = (t0 + 2052);
    xsi_process_wait(t2, t24);

LAB26:    *((char **)t1) = &&LAB27;
    goto LAB1;

LAB22:    t2 = (t0 + 4826);
    t18 = *((int *)t2);
    t3 = (t0 + 4830);
    t19 = *((int *)t3);
    if (t18 == t19)
        goto LAB23;

LAB28:    t21 = (t18 + 1);
    t18 = t21;
    t4 = (t0 + 4826);
    *((int *)t4) = t18;
    goto LAB20;

LAB24:    goto LAB22;

LAB25:    goto LAB24;

LAB27:    goto LAB25;

LAB31:    goto LAB2;

LAB32:    goto LAB31;

LAB34:    goto LAB32;

}


extern void work_a_3140353304_2372691052_init()
{
	static char *pe[] = {(void *)work_a_3140353304_2372691052_p_0,(void *)work_a_3140353304_2372691052_p_1};
	xsi_register_didat("work_a_3140353304_2372691052", "isim/display_testbench_isim_beh.exe.sim/work/a_3140353304_2372691052.didat");
	xsi_register_executes(pe);
}
