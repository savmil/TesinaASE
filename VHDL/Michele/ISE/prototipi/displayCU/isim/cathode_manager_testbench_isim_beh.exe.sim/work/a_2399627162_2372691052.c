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
static const char *ng0 = "C:/Users/Public/ISE/display/cathode_manager_testbench.vhd";
extern char *IEEE_P_3499444699;

char *ieee_p_3499444699_sub_2213602152_3536714472(char *, char *, int , int );


static void work_a_2399627162_2372691052_p_0(char *t0)
{
    char t11[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    int t9;
    int t10;
    unsigned int t12;
    unsigned char t13;
    char *t14;
    char *t15;
    char *t16;
    int64 t17;
    int t18;

LAB0:    t1 = (t0 + 1528U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 3374);
    t4 = (t0 + 1760);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(50, ng0);
    t2 = (t0 + 3378);
    t4 = (t0 + 1796);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(51, ng0);
    t2 = (t0 + 3394);
    *((int *)t2) = 0;
    t3 = (t0 + 3398);
    *((int *)t3) = 3;
    t9 = 0;
    t10 = 3;

LAB4:    if (t9 <= t10)
        goto LAB5;

LAB7:    xsi_set_current_line(57, ng0);

LAB17:    *((char **)t1) = &&LAB18;

LAB1:    return;
LAB5:    xsi_set_current_line(52, ng0);
    t4 = (t0 + 3394);
    t5 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t11, *((int *)t4), 2);
    t6 = (t11 + 12U);
    t12 = *((unsigned int *)t6);
    t12 = (t12 * 1U);
    t13 = (2U != t12);
    if (t13 == 1)
        goto LAB8;

LAB9:    t7 = (t0 + 1832);
    t8 = (t7 + 32U);
    t14 = *((char **)t8);
    t15 = (t14 + 40U);
    t16 = *((char **)t15);
    memcpy(t16, t5, 2U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(53, ng0);
    t17 = (10 * 1000LL);
    t2 = (t0 + 1428);
    xsi_process_wait(t2, t17);

LAB12:    *((char **)t1) = &&LAB13;
    goto LAB1;

LAB6:    t2 = (t0 + 3394);
    t9 = *((int *)t2);
    t3 = (t0 + 3398);
    t10 = *((int *)t3);
    if (t9 == t10)
        goto LAB7;

LAB14:    t18 = (t9 + 1);
    t9 = t18;
    t4 = (t0 + 3394);
    *((int *)t4) = t9;
    goto LAB4;

LAB8:    xsi_size_not_matching(2U, t12, 0);
    goto LAB9;

LAB10:    goto LAB6;

LAB11:    goto LAB10;

LAB13:    goto LAB11;

LAB15:    goto LAB2;

LAB16:    goto LAB15;

LAB18:    goto LAB16;

}


extern void work_a_2399627162_2372691052_init()
{
	static char *pe[] = {(void *)work_a_2399627162_2372691052_p_0};
	xsi_register_didat("work_a_2399627162_2372691052", "isim/cathode_manager_testbench_isim_beh.exe.sim/work/a_2399627162_2372691052.didat");
	xsi_register_executes(pe);
}
