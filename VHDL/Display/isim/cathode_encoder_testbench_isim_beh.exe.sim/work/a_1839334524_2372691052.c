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
static const char *ng0 = "C:/Users/Michele/Documents/TesinaASE/VHDL/Display/cathode_encoder_testbench.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );


static void work_a_1839334524_2372691052_p_0(char *t0)
{
    char t7[16];
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    int t5;
    int t6;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    int t15;

LAB0:    t1 = (t0 + 1344U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(83, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 1244);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(88, ng0);
    t2 = (t0 + 3035);
    *((int *)t2) = 0;
    t4 = (t0 + 3039);
    *((int *)t4) = 15;
    t5 = 0;
    t6 = 15;

LAB8:    if (t5 <= t6)
        goto LAB9;

LAB11:    xsi_set_current_line(92, ng0);

LAB19:    *((char **)t1) = &&LAB20;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB9:    xsi_set_current_line(89, ng0);
    t8 = (t0 + 3035);
    t9 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t7, *((int *)t8), 4);
    t10 = (t0 + 1576);
    t11 = (t10 + 32U);
    t12 = *((char **)t11);
    t13 = (t12 + 40U);
    t14 = *((char **)t13);
    memcpy(t14, t9, 4U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(90, ng0);
    t3 = (50 * 1000LL);
    t2 = (t0 + 1244);
    xsi_process_wait(t2, t3);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB10:    t2 = (t0 + 3035);
    t5 = *((int *)t2);
    t4 = (t0 + 3039);
    t6 = *((int *)t4);
    if (t5 == t6)
        goto LAB11;

LAB16:    t15 = (t5 + 1);
    t5 = t15;
    t8 = (t0 + 3035);
    *((int *)t8) = t5;
    goto LAB8;

LAB12:    goto LAB10;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB17:    goto LAB2;

LAB18:    goto LAB17;

LAB20:    goto LAB18;

}


extern void work_a_1839334524_2372691052_init()
{
	static char *pe[] = {(void *)work_a_1839334524_2372691052_p_0};
	xsi_register_didat("work_a_1839334524_2372691052", "isim/cathode_encoder_testbench_isim_beh.exe.sim/work/a_1839334524_2372691052.didat");
	xsi_register_executes(pe);
}
