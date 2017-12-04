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
static const char *ng0 = "/home/sav/ASE/addsub/add_sub_testbench.vhd";
extern char *IEEE_P_3499444699;

int ieee_p_3499444699_sub_1548073968174253783_3536714472(char *, int );
char *ieee_p_3499444699_sub_17544701978858283880_3536714472(char *, char *, int , int );


static void work_a_0333769045_3212880686_p_0(char *t0)
{
    char t12[16];
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    int t5;
    int t6;
    int t7;
    int t8;
    char *t9;
    int t10;
    int t11;
    char *t13;
    char *t14;
    char *t15;
    int t16;
    char *t17;
    unsigned int t18;
    unsigned char t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    int t25;
    int t26;

LAB0:    t1 = (t0 + 3104U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(30, ng0);
    t3 = (10 * 1000LL);
    t2 = (t0 + 2912);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 2128U);
    t4 = *((char **)t2);
    t5 = *((int *)t4);
    t6 = xsi_vhdl_pow(2, t5);
    t7 = (t6 - 1);
    t8 = ieee_p_3499444699_sub_1548073968174253783_3536714472(IEEE_P_3499444699, t7);
    t2 = (t0 + 5573);
    *((int *)t2) = 0;
    t9 = (t0 + 5577);
    *((int *)t9) = t8;
    t10 = 0;
    t11 = t8;

LAB8:    if (t10 <= t11)
        goto LAB9;

LAB11:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 3616);
    t4 = (t2 + 56U);
    t9 = *((char **)t4);
    t13 = (t9 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(41, ng0);
    t2 = (t0 + 2128U);
    t4 = *((char **)t2);
    t5 = *((int *)t4);
    t6 = xsi_vhdl_pow(2, t5);
    t7 = (t6 - 1);
    t8 = ieee_p_3499444699_sub_1548073968174253783_3536714472(IEEE_P_3499444699, t7);
    t2 = (t0 + 5589);
    *((int *)t2) = 0;
    t9 = (t0 + 5593);
    *((int *)t9) = t8;
    t10 = 0;
    t11 = t8;

LAB26:    if (t10 <= t11)
        goto LAB27;

LAB29:    xsi_set_current_line(49, ng0);

LAB46:    *((char **)t1) = &&LAB47;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB9:    xsi_set_current_line(32, ng0);
    t13 = (t0 + 5573);
    t14 = (t0 + 2128U);
    t15 = *((char **)t14);
    t16 = *((int *)t15);
    t14 = ieee_p_3499444699_sub_17544701978858283880_3536714472(IEEE_P_3499444699, t12, *((int *)t13), t16);
    t17 = (t12 + 12U);
    t18 = *((unsigned int *)t17);
    t18 = (t18 * 1U);
    t19 = (2U != t18);
    if (t19 == 1)
        goto LAB12;

LAB13:    t20 = (t0 + 3488);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t14, 2U);
    xsi_driver_first_trans_fast(t20);
    xsi_set_current_line(34, ng0);
    t2 = (t0 + 2128U);
    t4 = *((char **)t2);
    t5 = *((int *)t4);
    t6 = xsi_vhdl_pow(2, t5);
    t7 = (t6 - 1);
    t8 = ieee_p_3499444699_sub_1548073968174253783_3536714472(IEEE_P_3499444699, t7);
    t2 = (t0 + 5581);
    *((int *)t2) = 0;
    t9 = (t0 + 5585);
    *((int *)t9) = t8;
    t16 = 0;
    t25 = t8;

LAB14:    if (t16 <= t25)
        goto LAB15;

LAB17:
LAB10:    t2 = (t0 + 5573);
    t10 = *((int *)t2);
    t4 = (t0 + 5577);
    t11 = *((int *)t4);
    if (t10 == t11)
        goto LAB11;

LAB25:    t5 = (t10 + 1);
    t10 = t5;
    t9 = (t0 + 5573);
    *((int *)t9) = t10;
    goto LAB8;

LAB12:    xsi_size_not_matching(2U, t18, 0);
    goto LAB13;

LAB15:    xsi_set_current_line(35, ng0);
    t13 = (t0 + 5581);
    t14 = (t0 + 2128U);
    t15 = *((char **)t14);
    t26 = *((int *)t15);
    t14 = ieee_p_3499444699_sub_17544701978858283880_3536714472(IEEE_P_3499444699, t12, *((int *)t13), t26);
    t17 = (t12 + 12U);
    t18 = *((unsigned int *)t17);
    t18 = (t18 * 1U);
    t19 = (2U != t18);
    if (t19 == 1)
        goto LAB18;

LAB19:    t20 = (t0 + 3552);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t14, 2U);
    xsi_driver_first_trans_fast(t20);
    xsi_set_current_line(36, ng0);
    t3 = (10 * 1000LL);
    t2 = (t0 + 2912);
    xsi_process_wait(t2, t3);

LAB22:    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB16:    t2 = (t0 + 5581);
    t16 = *((int *)t2);
    t4 = (t0 + 5585);
    t25 = *((int *)t4);
    if (t16 == t25)
        goto LAB17;

LAB24:    t5 = (t16 + 1);
    t16 = t5;
    t9 = (t0 + 5581);
    *((int *)t9) = t16;
    goto LAB14;

LAB18:    xsi_size_not_matching(2U, t18, 0);
    goto LAB19;

LAB20:    goto LAB16;

LAB21:    goto LAB20;

LAB23:    goto LAB21;

LAB27:    xsi_set_current_line(42, ng0);
    t13 = (t0 + 5589);
    t14 = (t0 + 2128U);
    t15 = *((char **)t14);
    t16 = *((int *)t15);
    t14 = ieee_p_3499444699_sub_17544701978858283880_3536714472(IEEE_P_3499444699, t12, *((int *)t13), t16);
    t17 = (t12 + 12U);
    t18 = *((unsigned int *)t17);
    t18 = (t18 * 1U);
    t19 = (2U != t18);
    if (t19 == 1)
        goto LAB30;

LAB31:    t20 = (t0 + 3488);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t14, 2U);
    xsi_driver_first_trans_fast(t20);
    xsi_set_current_line(44, ng0);
    t2 = (t0 + 2128U);
    t4 = *((char **)t2);
    t5 = *((int *)t4);
    t6 = xsi_vhdl_pow(2, t5);
    t7 = (t6 - 1);
    t8 = ieee_p_3499444699_sub_1548073968174253783_3536714472(IEEE_P_3499444699, t7);
    t2 = (t0 + 5597);
    *((int *)t2) = 0;
    t9 = (t0 + 5601);
    *((int *)t9) = t8;
    t16 = 0;
    t25 = t8;

LAB32:    if (t16 <= t25)
        goto LAB33;

LAB35:
LAB28:    t2 = (t0 + 5589);
    t10 = *((int *)t2);
    t4 = (t0 + 5593);
    t11 = *((int *)t4);
    if (t10 == t11)
        goto LAB29;

LAB43:    t5 = (t10 + 1);
    t10 = t5;
    t9 = (t0 + 5589);
    *((int *)t9) = t10;
    goto LAB26;

LAB30:    xsi_size_not_matching(2U, t18, 0);
    goto LAB31;

LAB33:    xsi_set_current_line(45, ng0);
    t13 = (t0 + 5597);
    t14 = (t0 + 2128U);
    t15 = *((char **)t14);
    t26 = *((int *)t15);
    t14 = ieee_p_3499444699_sub_17544701978858283880_3536714472(IEEE_P_3499444699, t12, *((int *)t13), t26);
    t17 = (t12 + 12U);
    t18 = *((unsigned int *)t17);
    t18 = (t18 * 1U);
    t19 = (2U != t18);
    if (t19 == 1)
        goto LAB36;

LAB37:    t20 = (t0 + 3552);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t14, 2U);
    xsi_driver_first_trans_fast(t20);
    xsi_set_current_line(46, ng0);
    t3 = (10 * 1000LL);
    t2 = (t0 + 2912);
    xsi_process_wait(t2, t3);

LAB40:    *((char **)t1) = &&LAB41;
    goto LAB1;

LAB34:    t2 = (t0 + 5597);
    t16 = *((int *)t2);
    t4 = (t0 + 5601);
    t25 = *((int *)t4);
    if (t16 == t25)
        goto LAB35;

LAB42:    t5 = (t16 + 1);
    t16 = t5;
    t9 = (t0 + 5597);
    *((int *)t9) = t16;
    goto LAB32;

LAB36:    xsi_size_not_matching(2U, t18, 0);
    goto LAB37;

LAB38:    goto LAB34;

LAB39:    goto LAB38;

LAB41:    goto LAB39;

LAB44:    goto LAB2;

LAB45:    goto LAB44;

LAB47:    goto LAB45;

}


extern void work_a_0333769045_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0333769045_3212880686_p_0};
	xsi_register_didat("work_a_0333769045_3212880686", "isim/add_sub_testbench_isim_beh.exe.sim/work/a_0333769045_3212880686.didat");
	xsi_register_executes(pe);
}
