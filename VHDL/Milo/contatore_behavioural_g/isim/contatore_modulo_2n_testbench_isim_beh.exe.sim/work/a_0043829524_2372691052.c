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
static const char *ng0 = "/home/sav/ASE/contatore_behavioural_g/contatore_modulo_2n_testbench.vhd";



static void work_a_0043829524_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    int t9;
    char *t10;
    char *t11;
    int t12;

LAB0:    t1 = (t0 + 2944U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(83, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 2752);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(84, ng0);
    t2 = (t0 + 3328);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(85, ng0);
    t2 = (t0 + 5546);
    *((int *)t2) = 0;
    t4 = (t0 + 5550);
    *((int *)t4) = 6;
    t8 = 0;
    t9 = 6;

LAB8:    if (t8 <= t9)
        goto LAB9;

LAB11:    xsi_set_current_line(93, ng0);

LAB23:    *((char **)t1) = &&LAB24;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB9:    xsi_set_current_line(86, ng0);
    t5 = (t0 + 3392);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(87, ng0);
    t3 = (1 * 1000LL);
    t2 = (t0 + 2752);
    xsi_process_wait(t2, t3);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB10:    t2 = (t0 + 5546);
    t8 = *((int *)t2);
    t4 = (t0 + 5550);
    t9 = *((int *)t4);
    if (t8 == t9)
        goto LAB11;

LAB20:    t12 = (t8 + 1);
    t8 = t12;
    t5 = (t0 + 5546);
    *((int *)t5) = t8;
    goto LAB8;

LAB12:    xsi_set_current_line(88, ng0);
    t2 = (t0 + 3392);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(89, ng0);
    t3 = (1 * 1000LL);
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


extern void work_a_0043829524_2372691052_init()
{
	static char *pe[] = {(void *)work_a_0043829524_2372691052_p_0};
	xsi_register_didat("work_a_0043829524_2372691052", "isim/contatore_modulo_2n_testbench_isim_beh.exe.sim/work/a_0043829524_2372691052.didat");
	xsi_register_executes(pe);
}
