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
static const char *ng0 = "/media/sf_ASE/RSA/funzione_hash_moltiplicazione.vhd";
extern char *IEEE_P_1242562249;
extern char *IEEE_P_2592010699;

char *ieee_p_1242562249_sub_2177518728674633585_1035706684(char *, char *, char *, char *, char *, char *);


static void work_a_4096833309_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(119, ng0);

LAB3:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 4768);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_delta(t1, 24U, 8U, 0LL);

LAB2:    t7 = (t0 + 4672);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4096833309_3212880686_p_1(char *t0)
{
    char t5[16];
    char t18[16];
    char t21[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    int t19;
    unsigned int t20;
    int t22;
    char *t23;
    char *t24;

LAB0:    xsi_set_current_line(122, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(128, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB7;

LAB9:
LAB8:    t1 = (t0 + 4688);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(123, ng0);
    t1 = (t0 + 2952U);
    t6 = *((char **)t1);
    t1 = (t0 + 7352U);
    t7 = (t0 + 1352U);
    t8 = *((char **)t7);
    t7 = (t0 + 7288U);
    t9 = ieee_p_1242562249_sub_2177518728674633585_1035706684(IEEE_P_1242562249, t5, t6, t1, t8, t7);
    t10 = (t0 + 4832);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t9, 64U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(124, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t15 = (63 - 31);
    t16 = (t15 * 1U);
    t17 = (0 + t16);
    t1 = (t2 + t17);
    t6 = (t0 + 7618);
    t9 = ((IEEE_P_2592010699) + 4000);
    t10 = (t18 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 31;
    t11 = (t10 + 4U);
    *((int *)t11) = 16;
    t11 = (t10 + 8U);
    *((int *)t11) = -1;
    t19 = (16 - 31);
    t20 = (t19 * -1);
    t20 = (t20 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t20;
    t11 = (t21 + 0U);
    t12 = (t11 + 0U);
    *((int *)t12) = 0;
    t12 = (t11 + 4U);
    *((int *)t12) = 15;
    t12 = (t11 + 8U);
    *((int *)t12) = 1;
    t22 = (15 - 0);
    t20 = (t22 * 1);
    t20 = (t20 + 1);
    t12 = (t11 + 12U);
    *((unsigned int *)t12) = t20;
    t8 = xsi_base_array_concat(t8, t5, t9, (char)97, t1, t18, (char)97, t6, t21, (char)101);
    t20 = (16U + 16U);
    t3 = (32U != t20);
    if (t3 == 1)
        goto LAB5;

LAB6:    t12 = (t0 + 4896);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t23 = (t14 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t8, 32U);
    xsi_driver_first_trans_fast_port(t12);
    xsi_set_current_line(126, ng0);
    t1 = (t0 + 4960);
    t2 = (t1 + 56U);
    t6 = *((char **)t2);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB5:    xsi_size_not_matching(32U, t20, 0);
    goto LAB6;

LAB7:    xsi_set_current_line(129, ng0);
    t1 = (t0 + 4960);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(130, ng0);
    t1 = xsi_get_transient_memory(64U);
    memset(t1, 0, 64U);
    t2 = t1;
    memset(t2, (unsigned char)2, 64U);
    t6 = (t0 + 4832);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 64U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(131, ng0);
    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t2 = t1;
    memset(t2, (unsigned char)2, 32U);
    t6 = (t0 + 4896);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB8;

}


extern void work_a_4096833309_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4096833309_3212880686_p_0,(void *)work_a_4096833309_3212880686_p_1};
	xsi_register_didat("work_a_4096833309_3212880686", "isim/generazione_valore_RSA_testbench_isim_beh.exe.sim/work/a_4096833309_3212880686.didat");
	xsi_register_executes(pe);
}
