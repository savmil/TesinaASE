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
static const char *ng0 = "C:/Users/Michele/Documents/TesinaASE/VHDL/Display/anode_manager_testbench.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );


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
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    int t14;
    int t15;
    int64 t16;
    int t17;

LAB0:    t1 = (t0 + 1436U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 3254);
    *((int *)t2) = 0;
    t3 = (t0 + 3258);
    *((int *)t3) = 15;
    t4 = 0;
    t5 = 15;

LAB4:    if (t4 <= t5)
        goto LAB5;

LAB7:    xsi_set_current_line(49, ng0);

LAB20:    *((char **)t1) = &&LAB21;

LAB1:    return;
LAB5:    xsi_set_current_line(43, ng0);
    t7 = (t0 + 3254);
    t8 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t6, *((int *)t7), 4);
    t9 = (t0 + 1668);
    t10 = (t9 + 32U);
    t11 = *((char **)t10);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    memcpy(t13, t8, 4U);
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(44, ng0);
    t2 = (t0 + 3262);
    *((int *)t2) = 0;
    t3 = (t0 + 3266);
    *((int *)t3) = 3;
    t14 = 0;
    t15 = 3;

LAB8:    if (t14 <= t15)
        goto LAB9;

LAB11:
LAB6:    t2 = (t0 + 3254);
    t4 = *((int *)t2);
    t3 = (t0 + 3258);
    t5 = *((int *)t3);
    if (t4 == t5)
        goto LAB7;

LAB17:    t14 = (t4 + 1);
    t4 = t14;
    t7 = (t0 + 3254);
    *((int *)t7) = t4;
    goto LAB4;

LAB9:    xsi_set_current_line(45, ng0);
    t7 = (t0 + 3262);
    t8 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t6, *((int *)t7), 2);
    t9 = (t0 + 1704);
    t10 = (t9 + 32U);
    t11 = *((char **)t10);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    memcpy(t13, t8, 2U);
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(46, ng0);
    t16 = (10 * 1000LL);
    t2 = (t0 + 1336);
    xsi_process_wait(t2, t16);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB10:    t2 = (t0 + 3262);
    t14 = *((int *)t2);
    t3 = (t0 + 3266);
    t15 = *((int *)t3);
    if (t14 == t15)
        goto LAB11;

LAB16:    t17 = (t14 + 1);
    t14 = t17;
    t7 = (t0 + 3262);
    *((int *)t7) = t14;
    goto LAB8;

LAB12:    goto LAB10;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB18:    goto LAB2;

LAB19:    goto LAB18;

LAB21:    goto LAB19;

}


extern void work_a_2788608186_2372691052_init()
{
	static char *pe[] = {(void *)work_a_2788608186_2372691052_p_0};
	xsi_register_didat("work_a_2788608186_2372691052", "isim/anode_manager_testbench_isim_beh.exe.sim/work/a_2788608186_2372691052.didat");
	xsi_register_executes(pe);
}
