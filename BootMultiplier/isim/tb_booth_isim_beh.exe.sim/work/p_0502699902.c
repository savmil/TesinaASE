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

/* This file is designed for use with ISim build 0x2f00eba5 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
extern char *STD_STANDARD;



int work_p_0502699902_sub_3319369011_1611706926(char *t1, int t2)
{
    char t3[144];
    char t4[8];
    char t8[8];
    char t14[8];
    int t0;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    int t20;
    unsigned char t21;
    int t22;
    int t23;

LAB0:    t5 = (t3 + 4U);
    t6 = ((STD_STANDARD) + 552);
    t7 = (t5 + 52U);
    *((char **)t7) = t6;
    t9 = (t5 + 36U);
    *((char **)t9) = t8;
    xsi_type_set_default_value(t6, t8, 0);
    t10 = (t5 + 48U);
    *((unsigned int *)t10) = 4U;
    t11 = (t3 + 72U);
    t12 = ((STD_STANDARD) + 552);
    t13 = (t11 + 52U);
    *((char **)t13) = t12;
    t15 = (t11 + 36U);
    *((char **)t15) = t14;
    xsi_type_set_default_value(t12, t14, 0);
    t16 = (t11 + 48U);
    *((unsigned int *)t16) = 4U;
    t17 = (t4 + 4U);
    *((int *)t17) = t2;
    t18 = (t5 + 36U);
    t19 = *((char **)t18);
    t18 = (t19 + 0);
    *((int *)t18) = 0;
    t6 = (t11 + 36U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    *((int *)t6) = 1;

LAB2:    t6 = (t11 + 36U);
    t7 = *((char **)t6);
    t20 = *((int *)t7);
    t21 = (t20 < t2);
    if (t21 != 0)
        goto LAB3;

LAB5:    t6 = (t5 + 36U);
    t7 = *((char **)t6);
    t20 = *((int *)t7);
    t0 = t20;

LAB1:    return t0;
LAB3:    t6 = (t5 + 36U);
    t9 = *((char **)t6);
    t22 = *((int *)t9);
    t23 = (t22 + 1);
    t6 = (t5 + 36U);
    t10 = *((char **)t6);
    t6 = (t10 + 0);
    *((int *)t6) = t23;
    t6 = (t11 + 36U);
    t7 = *((char **)t6);
    t20 = *((int *)t7);
    t22 = (2 * t20);
    t6 = (t11 + 36U);
    t9 = *((char **)t6);
    t6 = (t9 + 0);
    *((int *)t6) = t22;
    goto LAB2;

LAB4:;
LAB6:;
}


extern void work_p_0502699902_init()
{
	static char *se[] = {(void *)work_p_0502699902_sub_3319369011_1611706926};
	xsi_register_didat("work_p_0502699902", "isim/tb_booth_isim_beh.exe.sim/work/p_0502699902.didat");
	xsi_register_subprogram_executes(se);
}
