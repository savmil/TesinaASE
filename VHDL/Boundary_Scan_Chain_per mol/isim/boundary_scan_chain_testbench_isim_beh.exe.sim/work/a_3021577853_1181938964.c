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
static const char *ng0 = "/media/sf_ASE/VHDL/Davide/Boundary_Scan_Chain/boundary_scan_chain.vhd";
extern char *IEEE_P_2592010699;



static void work_a_3021577853_1181938964_p_0(char *t0)
{
    char t14[16];
    char t16[16];
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    char *t5;
    char *t6;
    int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    unsigned char t13;
    char *t15;
    char *t17;
    char *t18;
    int t19;
    unsigned int t20;
    unsigned char t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    static char *nl0[] = {&&LAB6, &&LAB6, &&LAB5, &&LAB6, &&LAB6, &&LAB6, &&LAB6, &&LAB6, &&LAB6};

LAB0:    t1 = (t0 + 6336U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(116, ng0);
    t2 = (t0 + 3784U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t2 = (char *)((nl0) + t4);
    goto **((char **)t2);

LAB4:    xsi_set_current_line(116, ng0);

LAB11:    t2 = (t0 + 6904);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB12;

LAB1:    return;
LAB5:    xsi_set_current_line(117, ng0);
    t5 = (t0 + 4264U);
    t6 = *((char **)t5);
    t7 = (4 - 2);
    t8 = (3 - t7);
    t9 = (t8 * 1U);
    t10 = (0 + t9);
    t5 = (t6 + t10);
    t11 = (t0 + 4584U);
    t12 = *((char **)t11);
    t13 = *((unsigned char *)t12);
    t15 = ((IEEE_P_2592010699) + 4000);
    t17 = (t16 + 0U);
    t18 = (t17 + 0U);
    *((int *)t18) = 2;
    t18 = (t17 + 4U);
    *((int *)t18) = 0;
    t18 = (t17 + 8U);
    *((int *)t18) = -1;
    t19 = (0 - 2);
    t20 = (t19 * -1);
    t20 = (t20 + 1);
    t18 = (t17 + 12U);
    *((unsigned int *)t18) = t20;
    t11 = xsi_base_array_concat(t11, t14, t15, (char)97, t5, t16, (char)99, t13, (char)101);
    t20 = (3U + 1U);
    t21 = (4U != t20);
    if (t21 == 1)
        goto LAB7;

LAB8:    t18 = (t0 + 7000);
    t22 = (t18 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t11, 4U);
    xsi_driver_first_trans_fast_port(t18);
    goto LAB4;

LAB6:    xsi_set_current_line(117, ng0);
    t2 = (t0 + 4264U);
    t3 = *((char **)t2);
    t2 = (t0 + 7000);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t11 = (t6 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 4U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB4;

LAB7:    xsi_size_not_matching(4U, t20, 0);
    goto LAB8;

LAB9:    t3 = (t0 + 6904);
    *((int *)t3) = 0;
    goto LAB2;

LAB10:    goto LAB9;

LAB12:    goto LAB10;

}

static void work_a_3021577853_1181938964_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(120, ng0);

LAB3:    t1 = (t0 + 4584U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 7064);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 6920);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3021577853_1181938964_init()
{
	static char *pe[] = {(void *)work_a_3021577853_1181938964_p_0,(void *)work_a_3021577853_1181938964_p_1};
	xsi_register_didat("work_a_3021577853_1181938964", "isim/boundary_scan_chain_testbench_isim_beh.exe.sim/work/a_3021577853_1181938964.didat");
	xsi_register_executes(pe);
}
