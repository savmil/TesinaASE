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
static const char *ng0 = "C:/Users/Public/ISE/display/anode_manager_testbench.vhd";
extern char *IEEE_P_3499444699;

char *ieee_p_3499444699_sub_2213602152_3536714472(char *, char *, int , int );


static void work_a_2788608186_2372691052_p_0(char *t0)
{
    char t6[16];
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    int t17;
    int t18;
    int64 t19;
    int t20;

LAB0:    t1 = (t0 + 1436U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 3114);
    *((int *)t2) = 0;
    t3 = (t0 + 3118);
    *((int *)t3) = 15;
    t4 = 0;
    t5 = 15;

LAB4:    if (t4 <= t5)
        goto LAB5;

LAB7:    xsi_set_current_line(49, ng0);

LAB24:    *((char **)t1) = &&LAB25;

LAB1:    return;
LAB5:    xsi_set_current_line(43, ng0);
    t7 = (t0 + 3114);
    t8 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t6, *((int *)t7), 4);
    t9 = (t6 + 12U);
    t10 = *((unsigned int *)t9);
    t10 = (t10 * 1U);
    t11 = (4U != t10);
    if (t11 == 1)
        goto LAB8;

LAB9:    t12 = (t0 + 1668);
    t13 = (t12 + 32U);
    t14 = *((char **)t13);
    t15 = (t14 + 40U);
    t16 = *((char **)t15);
    memcpy(t16, t8, 4U);
    xsi_driver_first_trans_fast(t12);
    xsi_set_current_line(44, ng0);
    t2 = (t0 + 3122);
    *((int *)t2) = 0;
    t3 = (t0 + 3126);
    *((int *)t3) = 3;
    t17 = 0;
    t18 = 3;

LAB10:    if (t17 <= t18)
        goto LAB11;

LAB13:
LAB6:    t2 = (t0 + 3114);
    t4 = *((int *)t2);
    t3 = (t0 + 3118);
    t5 = *((int *)t3);
    if (t4 == t5)
        goto LAB7;

LAB21:    t17 = (t4 + 1);
    t4 = t17;
    t7 = (t0 + 3114);
    *((int *)t7) = t4;
    goto LAB4;

LAB8:    xsi_size_not_matching(4U, t10, 0);
    goto LAB9;

LAB11:    xsi_set_current_line(45, ng0);
    t7 = (t0 + 3122);
    t8 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t6, *((int *)t7), 2);
    t9 = (t6 + 12U);
    t10 = *((unsigned int *)t9);
    t10 = (t10 * 1U);
    t11 = (2U != t10);
    if (t11 == 1)
        goto LAB14;

LAB15:    t12 = (t0 + 1704);
    t13 = (t12 + 32U);
    t14 = *((char **)t13);
    t15 = (t14 + 40U);
    t16 = *((char **)t15);
    memcpy(t16, t8, 2U);
    xsi_driver_first_trans_fast(t12);
    xsi_set_current_line(46, ng0);
    t19 = (10 * 1000LL);
    t2 = (t0 + 1336);
    xsi_process_wait(t2, t19);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB12:    t2 = (t0 + 3122);
    t17 = *((int *)t2);
    t3 = (t0 + 3126);
    t18 = *((int *)t3);
    if (t17 == t18)
        goto LAB13;

LAB20:    t20 = (t17 + 1);
    t17 = t20;
    t7 = (t0 + 3122);
    *((int *)t7) = t17;
    goto LAB10;

LAB14:    xsi_size_not_matching(2U, t10, 0);
    goto LAB15;

LAB16:    goto LAB12;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB22:    goto LAB2;

LAB23:    goto LAB22;

LAB25:    goto LAB23;

}


extern void work_a_2788608186_2372691052_init()
{
	static char *pe[] = {(void *)work_a_2788608186_2372691052_p_0};
	xsi_register_didat("work_a_2788608186_2372691052", "isim/anode_manager_testbench_isim_beh.exe.sim/work/a_2788608186_2372691052.didat");
	xsi_register_executes(pe);
}
