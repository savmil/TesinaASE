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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/DAVIDE/ASE/Esercizi/ISE/Boundary_Scan_Chain/boundary_scan_chain.vhd";



static void work_a_3021577853_1181938964_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    int t11;
    char *t12;
    int t13;
    int t14;
    char *t15;
    char *t16;
    int t17;
    int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    unsigned char t23;
    char *t24;
    int t25;
    int t26;
    int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;

LAB0:    xsi_set_current_line(87, ng0);
    t2 = (t0 + 2208U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 5696);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(88, ng0);
    t4 = (t0 + 2728U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB8;

LAB10:
LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 2248U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(89, ng0);
    t11 = (4 - 1);
    t4 = (t0 + 10096);
    *((int *)t4) = 0;
    t12 = (t0 + 10100);
    *((int *)t12) = t11;
    t13 = 0;
    t14 = t11;

LAB11:    if (t13 <= t14)
        goto LAB12;

LAB14:    xsi_set_current_line(92, ng0);
    t2 = (t0 + 2088U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t2 = (t0 + 5792);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t12 = (t8 + 56U);
    t15 = *((char **)t12);
    *((unsigned char *)t15) = t1;
    xsi_driver_first_trans_delta(t2, 4U, 1, 0LL);
    goto LAB9;

LAB12:    xsi_set_current_line(90, ng0);
    t15 = (t0 + 3208U);
    t16 = *((char **)t15);
    t15 = (t0 + 10096);
    t17 = *((int *)t15);
    t18 = (t17 - 4);
    t19 = (t18 * -1);
    xsi_vhdl_check_range_of_index(4, 0, -1, *((int *)t15));
    t20 = (1U * t19);
    t21 = (0 + t20);
    t22 = (t16 + t21);
    t23 = *((unsigned char *)t22);
    t24 = (t0 + 10096);
    t25 = *((int *)t24);
    t26 = (t25 + 1);
    t27 = (t26 - 4);
    t28 = (t27 * -1);
    t29 = (1 * t28);
    t30 = (0U + t29);
    t31 = (t0 + 5792);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    *((unsigned char *)t35) = t23;
    xsi_driver_first_trans_delta(t31, t30, 1, 0LL);

LAB13:    t2 = (t0 + 10096);
    t13 = *((int *)t2);
    t4 = (t0 + 10100);
    t14 = *((int *)t4);
    if (t13 == t14)
        goto LAB14;

LAB15:    t11 = (t13 + 1);
    t13 = t11;
    t5 = (t0 + 10096);
    *((int *)t5) = t13;
    goto LAB11;

}

static void work_a_3021577853_1181938964_p_1(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(97, ng0);

LAB3:    t1 = (t0 + 3208U);
    t2 = *((char **)t1);
    t3 = (4 - 4);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 5856);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 5712);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3021577853_1181938964_init()
{
	static char *pe[] = {(void *)work_a_3021577853_1181938964_p_0,(void *)work_a_3021577853_1181938964_p_1};
	xsi_register_didat("work_a_3021577853_1181938964", "isim/test_counter_mod_2n_testbench_isim_beh.exe.sim/work/a_3021577853_1181938964.didat");
	xsi_register_executes(pe);
}
