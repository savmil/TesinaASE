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
static const char *ng0 = "/home/sav/ASE/contatore_behavioural_g/contatore_modulo_4.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1006216973935652998_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_2358049308_3212880686_p_0(char *t0)
{
    char t13[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    char *t14;
    char *t15;
    int t16;
    unsigned int t17;
    int t18;
    unsigned int t19;
    unsigned int t20;
    int t21;
    int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;

LAB0:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t4 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t4 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 3672);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(47, ng0);
    t1 = xsi_get_transient_memory(2U);
    memset(t1, 0, 2U);
    t5 = t1;
    memset(t5, (unsigned char)2, 2U);
    t6 = (t0 + 3768);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 2U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 1832U);
    t6 = *((char **)t2);
    t2 = (t0 + 5896U);
    t7 = ieee_p_1242562249_sub_1006216973935652998_1035706684(IEEE_P_1242562249, t13, t6, t2, 1);
    t8 = (t0 + 3768);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t7, 2U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = xsi_get_transient_memory(2U);
    memset(t1, 0, 2U);
    t5 = t1;
    t16 = (2 - 1);
    if (-1 == -1)
        goto LAB13;

LAB14:    t17 = 0;

LAB15:    t18 = (t17 - 1);
    t19 = (t18 * -1);
    t20 = (1U * t19);
    t6 = (t5 + t20);
    t21 = (2 - 1);
    t22 = (0 - t21);
    t23 = (t22 * -1);
    t23 = (t23 + 1);
    t24 = (1U * t23);
    memset(t6, (unsigned char)3, t24);
    t3 = 1;
    if (2U == 2U)
        goto LAB16;

LAB17:    t3 = 0;

LAB18:    if (t3 != 0)
        goto LAB10;

LAB12:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 3832);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB11:    goto LAB3;

LAB7:    t2 = (t0 + 1192U);
    t5 = *((char **)t2);
    t11 = *((unsigned char *)t5);
    t12 = (t11 == (unsigned char)3);
    t3 = t12;
    goto LAB9;

LAB10:    xsi_set_current_line(51, ng0);
    t9 = (t0 + 3832);
    t10 = (t9 + 56U);
    t14 = *((char **)t10);
    t15 = (t14 + 56U);
    t26 = *((char **)t15);
    *((unsigned char *)t26) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t9);
    goto LAB11;

LAB13:    t17 = t16;
    goto LAB15;

LAB16:    t25 = 0;

LAB19:    if (t25 < 2U)
        goto LAB20;
    else
        goto LAB18;

LAB20:    t7 = (t2 + t25);
    t8 = (t1 + t25);
    if (*((unsigned char *)t7) != *((unsigned char *)t8))
        goto LAB17;

LAB21:    t25 = (t25 + 1);
    goto LAB19;

}

static void work_a_2358049308_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(57, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 3896);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 2U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3688);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2358049308_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2358049308_3212880686_p_0,(void *)work_a_2358049308_3212880686_p_1};
	xsi_register_didat("work_a_2358049308_3212880686", "isim/contatore_modulo_2n_testbench_isim_beh.exe.sim/work/a_2358049308_3212880686.didat");
	xsi_register_executes(pe);
}
