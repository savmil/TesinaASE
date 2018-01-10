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
static const char *ng0 = "/media/sf_ASE/VHDL/Milo/moltiplicatore_B_buono/boundary_scan_chain.vhd";
extern char *IEEE_P_2592010699;



static void work_a_3166768430_1181938964_p_0(char *t0)
{
    char t10[16];
    char t12[16];
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    char *t7;
    char *t8;
    unsigned char t9;
    char *t11;
    char *t13;
    char *t14;
    int t15;
    unsigned int t16;
    unsigned char t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(121, ng0);

LAB3:    t1 = (t0 + 7064U);
    t2 = *((char **)t1);
    t3 = (9 - 2);
    t4 = (8 - t3);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = (t0 + 7544U);
    t8 = *((char **)t7);
    t9 = *((unsigned char *)t8);
    t11 = ((IEEE_P_2592010699) + 4000);
    t13 = (t12 + 0U);
    t14 = (t13 + 0U);
    *((int *)t14) = 7;
    t14 = (t13 + 4U);
    *((int *)t14) = 0;
    t14 = (t13 + 8U);
    *((int *)t14) = -1;
    t15 = (0 - 7);
    t16 = (t15 * -1);
    t16 = (t16 + 1);
    t14 = (t13 + 12U);
    *((unsigned int *)t14) = t16;
    t7 = xsi_base_array_concat(t7, t10, t11, (char)97, t1, t12, (char)99, t9, (char)101);
    t16 = (8U + 1U);
    t17 = (9U != t16);
    if (t17 == 1)
        goto LAB5;

LAB6:    t14 = (t0 + 12584);
    t18 = (t14 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t7, 9U);
    xsi_driver_first_trans_fast_port(t14);

LAB2:    t22 = (t0 + 12472);
    *((int *)t22) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(9U, t16, 0);
    goto LAB6;

}

static void work_a_3166768430_1181938964_p_1(char *t0)
{
    char t16[16];
    char t17[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned char t15;
    int t18;
    unsigned int t19;
    unsigned char t20;
    char *t21;
    char *t22;

LAB0:    t1 = (t0 + 11904U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(123, ng0);
    t2 = (t0 + 6264U);
    t3 = *((char **)t2);
    t2 = (t0 + 21349);
    t5 = xsi_mem_cmp(t2, t3, 1U);
    if (t5 == 1)
        goto LAB5;

LAB7:
LAB6:    xsi_set_current_line(124, ng0);
    t2 = (t0 + 7064U);
    t3 = *((char **)t2);
    t5 = (9 - 2);
    t12 = (8 - t5);
    t13 = (t12 * 1U);
    t14 = (0 + t13);
    t2 = (t3 + t14);
    t4 = (t0 + 7544U);
    t6 = *((char **)t4);
    t15 = *((unsigned char *)t6);
    t7 = ((IEEE_P_2592010699) + 4000);
    t8 = (t17 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 7;
    t9 = (t8 + 4U);
    *((int *)t9) = 0;
    t9 = (t8 + 8U);
    *((int *)t9) = -1;
    t18 = (0 - 7);
    t19 = (t18 * -1);
    t19 = (t19 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t19;
    t4 = xsi_base_array_concat(t4, t16, t7, (char)97, t2, t17, (char)99, t15, (char)101);
    t19 = (8U + 1U);
    t20 = (9U != t19);
    if (t20 == 1)
        goto LAB9;

LAB10:    t9 = (t0 + 12648);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t21 = (t11 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t4, 9U);
    xsi_driver_first_trans_fast(t9);

LAB4:    xsi_set_current_line(123, ng0);

LAB13:    t2 = (t0 + 12488);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB14;

LAB1:    return;
LAB5:    xsi_set_current_line(124, ng0);
    t6 = (t0 + 6424U);
    t7 = *((char **)t6);
    t6 = (t0 + 12648);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t7, 9U);
    xsi_driver_first_trans_fast(t6);
    goto LAB4;

LAB8:;
LAB9:    xsi_size_not_matching(9U, t19, 0);
    goto LAB10;

LAB11:    t3 = (t0 + 12488);
    *((int *)t3) = 0;
    goto LAB2;

LAB12:    goto LAB11;

LAB14:    goto LAB12;

}

static void work_a_3166768430_1181938964_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(126, ng0);

LAB3:    t1 = (t0 + 7544U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 12712);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 12504);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3166768430_1181938964_init()
{
	static char *pe[] = {(void *)work_a_3166768430_1181938964_p_0,(void *)work_a_3166768430_1181938964_p_1,(void *)work_a_3166768430_1181938964_p_2};
	xsi_register_didat("work_a_3166768430_1181938964", "isim/Booth_testbench_isim_beh.exe.sim/work/a_3166768430_1181938964.didat");
	xsi_register_executes(pe);
}
