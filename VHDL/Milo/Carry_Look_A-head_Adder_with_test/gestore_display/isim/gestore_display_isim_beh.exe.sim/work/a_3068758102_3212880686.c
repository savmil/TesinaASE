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
static const char *ng0 = "/home/sav/ASE/gestore_display/clk_fil.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1006216973935652998_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3068758102_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    unsigned int t6;
    int t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    int t11;
    int t12;
    int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned char t16;
    unsigned int t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;

LAB0:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = xsi_get_transient_memory(1U);
    memset(t1, 0, 1U);
    t3 = t1;
    t4 = (2500000 / 2500000);
    t5 = (t4 - 1);
    if (-1 == -1)
        goto LAB5;

LAB6:    t6 = 0;

LAB7:    t7 = (t6 - 0);
    t8 = (t7 * -1);
    t9 = (1U * t8);
    t10 = (t3 + t9);
    t11 = (2500000 / 2500000);
    t12 = (t11 - 1);
    t13 = (0 - t12);
    t14 = (t13 * -1);
    t14 = (t14 + 1);
    t15 = (1U * t14);
    memset(t10, (unsigned char)3, t15);
    t16 = 1;
    if (1U == 1U)
        goto LAB8;

LAB9:    t16 = 0;

LAB10:    if (t16 != 0)
        goto LAB3;

LAB4:
LAB14:    t25 = (t0 + 4152);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    *((unsigned char *)t29) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t25);

LAB2:    t30 = (t0 + 4040);
    *((int *)t30) = 1;

LAB1:    return;
LAB3:    t20 = (t0 + 4152);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    *((unsigned char *)t24) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t20);
    goto LAB2;

LAB5:    t6 = t5;
    goto LAB7;

LAB8:    t17 = 0;

LAB11:    if (t17 < 1U)
        goto LAB12;
    else
        goto LAB10;

LAB12:    t18 = (t2 + t17);
    t19 = (t1 + t17);
    if (*((unsigned char *)t18) != *((unsigned char *)t19))
        goto LAB9;

LAB13:    t17 = (t17 + 1);
    goto LAB11;

LAB15:    goto LAB2;

}

static void work_a_3068758102_3212880686_p_1(char *t0)
{
    char t12[16];
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

LAB0:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 4056);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(50, ng0);
    t1 = xsi_get_transient_memory(1U);
    memset(t1, 0, 1U);
    t5 = t1;
    memset(t5, (unsigned char)2, 1U);
    t6 = (t0 + 4216);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 1U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 1192U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t11 = (t4 == (unsigned char)2);
    if (t11 != 0)
        goto LAB7;

LAB9:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 6160U);
    t5 = ieee_p_1242562249_sub_1006216973935652998_1035706684(IEEE_P_1242562249, t12, t2, t1, 1);
    t6 = (t0 + 4216);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t5, 1U);
    xsi_driver_first_trans_fast(t6);

LAB8:    goto LAB3;

LAB7:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1832U);
    t6 = *((char **)t2);
    t2 = (t0 + 4216);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t6, 1U);
    xsi_driver_first_trans_fast(t2);
    goto LAB8;

}

static void work_a_3068758102_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(64, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 4280);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 1U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4072);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3068758102_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3068758102_3212880686_p_0,(void *)work_a_3068758102_3212880686_p_1,(void *)work_a_3068758102_3212880686_p_2};
	xsi_register_didat("work_a_3068758102_3212880686", "isim/gestore_display_isim_beh.exe.sim/work/a_3068758102_3212880686.didat");
	xsi_register_executes(pe);
}
