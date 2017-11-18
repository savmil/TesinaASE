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
    char t12[16];
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    int t9;
    int t10;
    int t11;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    t1 = (t0 + 2944U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(85, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 2752);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(86, ng0);
    t2 = (t0 + 3328);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(87, ng0);
    t8 = xsi_vhdl_pow(2, 4);
    t9 = (t8 - 1);
    t2 = (t0 + 5690);
    *((int *)t2) = 0;
    t4 = (t0 + 5694);
    *((int *)t4) = t9;
    t10 = 0;
    t11 = t9;

LAB8:    if (t10 <= t11)
        goto LAB9;

LAB11:    xsi_set_current_line(94, ng0);

LAB23:    *((char **)t1) = &&LAB24;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB9:    xsi_set_current_line(88, ng0);
    t5 = (t0 + 5690);
    t6 = ieee_p_1242562249_sub_10420449594411817395_1035706684(IEEE_P_1242562249, t12, *((int *)t5), 4);
    t7 = (t0 + 3392);
    t13 = (t7 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t6, 4U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(89, ng0);
    t3 = (2 * 1000LL);
    t2 = (t0 + 2752);
    xsi_process_wait(t2, t3);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB10:    t2 = (t0 + 5690);
    t10 = *((int *)t2);
    t4 = (t0 + 5694);
    t11 = *((int *)t4);
    if (t10 == t11)
        goto LAB11;

LAB20:    t8 = (t10 + 1);
    t10 = t8;
    t5 = (t0 + 5690);
    *((int *)t5) = t10;
    goto LAB8;

LAB12:    xsi_set_current_line(90, ng0);
    t2 = (t0 + 5690);
    t4 = ieee_p_1242562249_sub_10420449594411817395_1035706684(IEEE_P_1242562249, t12, *((int *)t2), 4);
    t5 = (t0 + 3456);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t13 = (t7 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t4, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(92, ng0);
    t3 = (2 * 1000LL);
    t2 = (t0 + 2752);
    xsi_process_wait(t2, t3);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    goto LAB10;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB21:    goto LAB2;

LAB22:    goto LAB21;

LAB24:    goto LAB22;

}


extern void work_a_0121825108_2372691052_init()
{
	static char *pe[] = {(void *)work_a_0121825108_2372691052_p_0};
	xsi_register_didat("work_a_0121825108_2372691052", "isim/Carry_Look_A_head_adder_testbench_isim_beh.exe.sim/work/a_0121825108_2372691052.didat");
	xsi_register_executes(pe);
}
