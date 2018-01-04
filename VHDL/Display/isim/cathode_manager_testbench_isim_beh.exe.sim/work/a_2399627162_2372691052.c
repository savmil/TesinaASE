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
static const char *ng0 = "C:/Users/Michele/Documents/TesinaASE/VHDL/Display/cathode_manager_testbench.vhd";
extern char *IEEE_P_3499444699;

char *ieee_p_3499444699_sub_2213602152_3536714472(char *, char *, int , int );


static void work_a_2399627162_2372691052_p_0(char *t0)
{
    char t12[16];
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    int t10;
    int t11;
    unsigned int t13;
    unsigned char t14;
    char *t15;
    char *t16;
    char *t17;
    int t18;

LAB0:    t1 = (t0 + 1528U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(43, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 1428);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 3554);
    t5 = (t0 + 1760);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(47, ng0);
    t2 = (t0 + 3558);
    t5 = (t0 + 1796);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 16U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(48, ng0);
    t2 = (t0 + 3574);
    *((int *)t2) = 0;
    t4 = (t0 + 3578);
    *((int *)t4) = 3;
    t10 = 0;
    t11 = 3;

LAB8:    if (t10 <= t11)
        goto LAB9;

LAB11:    xsi_set_current_line(52, ng0);

LAB21:    *((char **)t1) = &&LAB22;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB9:    xsi_set_current_line(49, ng0);
    t5 = (t0 + 3574);
    t6 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t12, *((int *)t5), 2);
    t7 = (t12 + 12U);
    t13 = *((unsigned int *)t7);
    t13 = (t13 * 1U);
    t14 = (2U != t13);
    if (t14 == 1)
        goto LAB12;

LAB13:    t8 = (t0 + 1832);
    t9 = (t8 + 32U);
    t15 = *((char **)t9);
    t16 = (t15 + 40U);
    t17 = *((char **)t16);
    memcpy(t17, t6, 2U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(50, ng0);
    t3 = (50 * 1000LL);
    t2 = (t0 + 1428);
    xsi_process_wait(t2, t3);

LAB16:    *((char **)t1) = &&LAB17;
    goto LAB1;

LAB10:    t2 = (t0 + 3574);
    t10 = *((int *)t2);
    t4 = (t0 + 3578);
    t11 = *((int *)t4);
    if (t10 == t11)
        goto LAB11;

LAB18:    t18 = (t10 + 1);
    t10 = t18;
    t5 = (t0 + 3574);
    *((int *)t5) = t10;
    goto LAB8;

LAB12:    xsi_size_not_matching(2U, t13, 0);
    goto LAB13;

LAB14:    goto LAB10;

LAB15:    goto LAB14;

LAB17:    goto LAB15;

LAB19:    goto LAB2;

LAB20:    goto LAB19;

LAB22:    goto LAB20;

}


extern void work_a_2399627162_2372691052_init()
{
	static char *pe[] = {(void *)work_a_2399627162_2372691052_p_0};
	xsi_register_didat("work_a_2399627162_2372691052", "isim/cathode_manager_testbench_isim_beh.exe.sim/work/a_2399627162_2372691052.didat");
	xsi_register_executes(pe);
}
