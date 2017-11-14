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
static const char *ng0 = "/home/sav/ASE/mux16_1/mux16_1_testbench.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_10420449594411817395_1035706684(char *, char *, int , int );


static void work_a_0999974925_2372691052_p_0(char *t0)
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
    int t16;
    int t17;
    int t18;

LAB0:    t1 = (t0 + 2504U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(76, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 2312);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(77, ng0);
    t2 = (t0 + 4669);
    *((int *)t2) = 0;
    t4 = (t0 + 4673);
    *((int *)t4) = 15;
    t5 = 0;
    t6 = 15;

LAB8:    if (t5 <= t6)
        goto LAB9;

LAB11:    xsi_set_current_line(86, ng0);

LAB28:    *((char **)t1) = &&LAB29;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB9:    xsi_set_current_line(78, ng0);
    t8 = (t0 + 4669);
    t9 = ieee_p_1242562249_sub_10420449594411817395_1035706684(IEEE_P_1242562249, t7, *((int *)t8), 4);
    t10 = (t0 + 2888);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t9, 4U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(79, ng0);
    t3 = (1 * 1000LL);
    t2 = (t0 + 2312);
    xsi_process_wait(t2, t3);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB10:    t2 = (t0 + 4669);
    t5 = *((int *)t2);
    t4 = (t0 + 4673);
    t6 = *((int *)t4);
    if (t5 == t6)
        goto LAB11;

LAB25:    t15 = (t5 + 1);
    t5 = t15;
    t8 = (t0 + 4669);
    *((int *)t8) = t5;
    goto LAB8;

LAB12:    xsi_set_current_line(80, ng0);
    t15 = xsi_vhdl_pow(2, 16);
    t16 = (t15 - 1);
    t2 = (t0 + 4677);
    *((int *)t2) = 0;
    t4 = (t0 + 4681);
    *((int *)t4) = t16;
    t17 = 0;
    t18 = t16;

LAB16:    if (t17 <= t18)
        goto LAB17;

LAB19:    goto LAB10;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB17:    xsi_set_current_line(81, ng0);
    t8 = (t0 + 4677);
    t9 = ieee_p_1242562249_sub_10420449594411817395_1035706684(IEEE_P_1242562249, t7, *((int *)t8), 16);
    t10 = (t0 + 2952);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t9, 16U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(82, ng0);
    t3 = (1 * 1000LL);
    t2 = (t0 + 2312);
    xsi_process_wait(t2, t3);

LAB22:    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB18:    t2 = (t0 + 4677);
    t17 = *((int *)t2);
    t4 = (t0 + 4681);
    t18 = *((int *)t4);
    if (t17 == t18)
        goto LAB19;

LAB24:    t15 = (t17 + 1);
    t17 = t15;
    t8 = (t0 + 4677);
    *((int *)t8) = t17;
    goto LAB16;

LAB20:    goto LAB18;

LAB21:    goto LAB20;

LAB23:    goto LAB21;

LAB26:    goto LAB2;

LAB27:    goto LAB26;

LAB29:    goto LAB27;

}


extern void work_a_0999974925_2372691052_init()
{
	static char *pe[] = {(void *)work_a_0999974925_2372691052_p_0};
	xsi_register_didat("work_a_0999974925_2372691052", "isim/mux16_1_testbench_isim_beh.exe.sim/work/a_0999974925_2372691052.didat");
	xsi_register_executes(pe);
}
