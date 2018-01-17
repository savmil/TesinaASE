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
static const char *ng0 = "/home/sav/ASE/RippleCarryAdder/RippleCarryAdder_testbench.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_10420449594411817395_1035706684(char *, char *, int , int );


static void work_a_0278477542_2372691052_p_0(char *t0)
{
    char t10[16];
    char *t1;
    char *t2;
    int64 t3;
    int t4;
    int t5;
    char *t6;
    int t7;
    int t8;
    char *t9;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    t1 = (t0 + 2784U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(76, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 2592);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(78, ng0);
    t4 = xsi_vhdl_pow(2, 2);
    t5 = (t4 - 1);
    t2 = (t0 + 5243);
    *((int *)t2) = 0;
    t6 = (t0 + 5247);
    *((int *)t6) = t5;
    t7 = 0;
    t8 = t5;

LAB8:    if (t7 <= t8)
        goto LAB9;

LAB11:    xsi_set_current_line(87, ng0);

LAB23:    *((char **)t1) = &&LAB24;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB9:    xsi_set_current_line(79, ng0);
    t3 = (1 * 1000LL);
    t9 = (t0 + 2592);
    xsi_process_wait(t9, t3);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB10:    t2 = (t0 + 5243);
    t7 = *((int *)t2);
    t6 = (t0 + 5247);
    t8 = *((int *)t6);
    if (t7 == t8)
        goto LAB11;

LAB20:    t4 = (t7 + 1);
    t7 = t4;
    t9 = (t0 + 5243);
    *((int *)t9) = t7;
    goto LAB8;

LAB12:    xsi_set_current_line(80, ng0);
    t2 = (t0 + 5243);
    t6 = ieee_p_1242562249_sub_10420449594411817395_1035706684(IEEE_P_1242562249, t10, *((int *)t2), 2);
    t9 = (t0 + 3168);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t6, 2U);
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(81, ng0);
    t3 = (1 * 1000LL);
    t2 = (t0 + 2592);
    xsi_process_wait(t2, t3);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 5243);
    t6 = ieee_p_1242562249_sub_10420449594411817395_1035706684(IEEE_P_1242562249, t10, *((int *)t2), 2);
    t9 = (t0 + 3232);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t6, 2U);
    xsi_driver_first_trans_fast(t9);
    goto LAB10;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB21:    goto LAB2;

LAB22:    goto LAB21;

LAB24:    goto LAB22;

}


extern void work_a_0278477542_2372691052_init()
{
	static char *pe[] = {(void *)work_a_0278477542_2372691052_p_0};
	xsi_register_didat("work_a_0278477542_2372691052", "isim/RippleCarryAdder_testbench_isim_beh.exe.sim/work/a_0278477542_2372691052.didat");
	xsi_register_executes(pe);
}
