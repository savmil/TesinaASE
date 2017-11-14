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
static const char *ng0 = "/home/sav/ASE/Carry_Look_A-head_Adder/Carry_Look_A_head_adder_testbench.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_10420449594411817395_1035706684(char *, char *, int , int );


static void work_a_0121825108_2372691052_p_0(char *t0)
{
    char t8[16];
    char *t1;
    char *t2;
    int t3;
    int t4;
    char *t5;
    int t6;
    int t7;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    int64 t16;

LAB0:    t1 = (t0 + 2784U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(80, ng0);
    t3 = xsi_vhdl_pow(2, 3);
    t4 = (t3 - 1);
    t2 = (t0 + 5374);
    *((int *)t2) = 0;
    t5 = (t0 + 5378);
    *((int *)t5) = t4;
    t6 = 0;
    t7 = t4;

LAB4:    if (t6 <= t7)
        goto LAB5;

LAB7:    xsi_set_current_line(87, ng0);

LAB19:    *((char **)t1) = &&LAB20;

LAB1:    return;
LAB5:    xsi_set_current_line(81, ng0);
    t9 = (t0 + 5374);
    t10 = ieee_p_1242562249_sub_10420449594411817395_1035706684(IEEE_P_1242562249, t8, *((int *)t9), 3);
    t11 = (t0 + 3168);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t10, 3U);
    xsi_driver_first_trans_fast(t11);
    xsi_set_current_line(82, ng0);
    t16 = (2 * 1000LL);
    t2 = (t0 + 2592);
    xsi_process_wait(t2, t16);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB6:    t2 = (t0 + 5374);
    t6 = *((int *)t2);
    t5 = (t0 + 5378);
    t7 = *((int *)t5);
    if (t6 == t7)
        goto LAB7;

LAB16:    t3 = (t6 + 1);
    t6 = t3;
    t9 = (t0 + 5374);
    *((int *)t9) = t6;
    goto LAB4;

LAB8:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 5374);
    t5 = ieee_p_1242562249_sub_10420449594411817395_1035706684(IEEE_P_1242562249, t8, *((int *)t2), 3);
    t9 = (t0 + 3232);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t5, 3U);
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(85, ng0);
    t16 = (2 * 1000LL);
    t2 = (t0 + 2592);
    xsi_process_wait(t2, t16);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    goto LAB6;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB17:    goto LAB2;

LAB18:    goto LAB17;

LAB20:    goto LAB18;

}


extern void work_a_0121825108_2372691052_init()
{
	static char *pe[] = {(void *)work_a_0121825108_2372691052_p_0};
	xsi_register_didat("work_a_0121825108_2372691052", "isim/Carry_Look_A_head_adder_testbench_isim_beh.exe.sim/work/a_0121825108_2372691052.didat");
	xsi_register_executes(pe);
}
