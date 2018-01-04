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
static const char *ng0 = "C:/Users/Michele/Documents/TesinaASE/VHDL/Michele/ISE/display/display_on_board_testbench.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );


static void work_a_3218921749_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 2056U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(91, ng0);
    t2 = (t0 + 2432);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(92, ng0);
    t2 = (t0 + 1500U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 1956);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(93, ng0);
    t2 = (t0 + 2432);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(94, ng0);
    t2 = (t0 + 1500U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 1956);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_3218921749_2372691052_p_1(char *t0)
{
    char t22[16];
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    int64 t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    unsigned char t14;
    unsigned char t15;
    unsigned char t16;
    unsigned char t17;
    unsigned char t18;
    unsigned char t19;
    int t20;
    int t21;
    int t23;
    int t24;
    char *t25;
    unsigned char t26;

LAB0:    t1 = (t0 + 2200U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(102, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 2100);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(104, ng0);
    t2 = (t0 + 1500U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t5 = (t3 * 10);
    t2 = (t0 + 2100);
    xsi_process_wait(t2, t5);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(107, ng0);
    t2 = (t0 + 5264);
    *((unsigned char *)t2) = (unsigned char)2;
    t4 = (t0 + 5265);
    *((unsigned char *)t4) = (unsigned char)3;
    t6 = (unsigned char)2;
    t7 = (unsigned char)3;

LAB12:    if (t6 <= t7)
        goto LAB13;

LAB15:    xsi_set_current_line(125, ng0);

LAB43:    *((char **)t1) = &&LAB44;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB13:    xsi_set_current_line(110, ng0);
    t8 = (t0 + 5264);
    t9 = (t0 + 2468);
    t10 = (t9 + 32U);
    t11 = *((char **)t10);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = *((unsigned char *)t8);
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(111, ng0);
    t2 = (t0 + 5266);
    *((unsigned char *)t2) = (unsigned char)2;
    t4 = (t0 + 5267);
    *((unsigned char *)t4) = (unsigned char)3;
    t14 = (unsigned char)2;
    t15 = (unsigned char)3;

LAB16:    if (t14 <= t15)
        goto LAB17;

LAB19:
LAB14:    t2 = (t0 + 5264);
    t6 = *((unsigned char *)t2);
    t4 = (t0 + 5265);
    t7 = *((unsigned char *)t4);
    if (t6 == t7)
        goto LAB15;

LAB40:    t14 = (t6 + (unsigned char)1);
    t6 = t14;
    t8 = (t0 + 5264);
    *((unsigned char *)t8) = t6;
    goto LAB12;

LAB17:    xsi_set_current_line(112, ng0);
    t8 = (t0 + 5266);
    t9 = (t0 + 2504);
    t10 = (t9 + 32U);
    t11 = *((char **)t10);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = *((unsigned char *)t8);
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(113, ng0);
    t2 = (t0 + 5268);
    *((unsigned char *)t2) = (unsigned char)2;
    t4 = (t0 + 5269);
    *((unsigned char *)t4) = (unsigned char)3;
    t16 = (unsigned char)2;
    t17 = (unsigned char)3;

LAB20:    if (t16 <= t17)
        goto LAB21;

LAB23:
LAB18:    t2 = (t0 + 5266);
    t14 = *((unsigned char *)t2);
    t4 = (t0 + 5267);
    t15 = *((unsigned char *)t4);
    if (t14 == t15)
        goto LAB19;

LAB39:    t16 = (t14 + (unsigned char)1);
    t14 = t16;
    t8 = (t0 + 5266);
    *((unsigned char *)t8) = t14;
    goto LAB16;

LAB21:    xsi_set_current_line(114, ng0);
    t8 = (t0 + 5268);
    t9 = (t0 + 2540);
    t10 = (t9 + 32U);
    t11 = *((char **)t10);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = *((unsigned char *)t8);
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(115, ng0);
    t2 = (t0 + 5270);
    *((unsigned char *)t2) = (unsigned char)2;
    t4 = (t0 + 5271);
    *((unsigned char *)t4) = (unsigned char)3;
    t18 = (unsigned char)2;
    t19 = (unsigned char)3;

LAB24:    if (t18 <= t19)
        goto LAB25;

LAB27:
LAB22:    t2 = (t0 + 5268);
    t16 = *((unsigned char *)t2);
    t4 = (t0 + 5269);
    t17 = *((unsigned char *)t4);
    if (t16 == t17)
        goto LAB23;

LAB38:    t18 = (t16 + (unsigned char)1);
    t16 = t18;
    t8 = (t0 + 5268);
    *((unsigned char *)t8) = t16;
    goto LAB20;

LAB25:    xsi_set_current_line(116, ng0);
    t8 = (t0 + 5270);
    t9 = (t0 + 2576);
    t10 = (t9 + 32U);
    t11 = *((char **)t10);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = *((unsigned char *)t8);
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(117, ng0);
    t2 = (t0 + 5272);
    *((int *)t2) = 0;
    t4 = (t0 + 5276);
    *((int *)t4) = 2;
    t20 = 0;
    t21 = 2;

LAB28:    if (t20 <= t21)
        goto LAB29;

LAB31:
LAB26:    t2 = (t0 + 5270);
    t18 = *((unsigned char *)t2);
    t4 = (t0 + 5271);
    t19 = *((unsigned char *)t4);
    if (t18 == t19)
        goto LAB27;

LAB37:    t26 = (t18 + (unsigned char)1);
    t18 = t26;
    t8 = (t0 + 5270);
    *((unsigned char *)t8) = t18;
    goto LAB24;

LAB29:    xsi_set_current_line(118, ng0);
    t8 = (t0 + 5272);
    t23 = *((int *)t8);
    t24 = (t23 * 8);
    t9 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t22, t24, 8);
    t10 = (t0 + 2612);
    t11 = (t10 + 32U);
    t12 = *((char **)t11);
    t13 = (t12 + 40U);
    t25 = *((char **)t13);
    memcpy(t25, t9, 8U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(119, ng0);
    t3 = (50 * 1000LL);
    t2 = (t0 + 2100);
    xsi_process_wait(t2, t3);

LAB34:    *((char **)t1) = &&LAB35;
    goto LAB1;

LAB30:    t2 = (t0 + 5272);
    t20 = *((int *)t2);
    t4 = (t0 + 5276);
    t21 = *((int *)t4);
    if (t20 == t21)
        goto LAB31;

LAB36:    t23 = (t20 + 1);
    t20 = t23;
    t8 = (t0 + 5272);
    *((int *)t8) = t20;
    goto LAB28;

LAB32:    goto LAB30;

LAB33:    goto LAB32;

LAB35:    goto LAB33;

LAB41:    goto LAB2;

LAB42:    goto LAB41;

LAB44:    goto LAB42;

}


extern void work_a_3218921749_2372691052_init()
{
	static char *pe[] = {(void *)work_a_3218921749_2372691052_p_0,(void *)work_a_3218921749_2372691052_p_1};
	xsi_register_didat("work_a_3218921749_2372691052", "isim/display_on_board_testbench_isim_beh.exe.sim/work/a_3218921749_2372691052.didat");
	xsi_register_executes(pe);
}
