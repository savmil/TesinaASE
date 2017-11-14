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
static const char *ng0 = "/home/sav/ASE/registro/flip_flop_rising_edge.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_2592010699_sub_374109322130769762_503743352(char *, unsigned char );


static void work_a_1884389192_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    unsigned char t13;
    unsigned char t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 4032);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(51, ng0);
    t8 = (t0 + 1672U);
    t9 = *((char **)t8);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)3);
    if (t11 == 1)
        goto LAB11;

LAB12:    t7 = (unsigned char)0;

LAB13:    if (t7 != 0)
        goto LAB8;

LAB10:    t2 = (t0 + 1832U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB16;

LAB17:    t1 = (unsigned char)0;

LAB18:    if (t1 != 0)
        goto LAB14;

LAB15:    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)2);
    if (t5 == 1)
        goto LAB21;

LAB22:    t1 = (unsigned char)0;

LAB23:    if (t1 != 0)
        goto LAB19;

LAB20:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 4144);
    t3 = (t2 + 56U);
    t8 = *((char **)t3);
    t9 = (t8 + 56U);
    t12 = *((char **)t9);
    *((unsigned char *)t12) = (unsigned char)1;
    xsi_driver_first_trans_fast(t2);

LAB9:    goto LAB3;

LAB5:    t2 = (t0 + 992U);
    t6 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t2, 0U, 0U);
    t1 = t6;
    goto LAB7;

LAB8:    xsi_set_current_line(52, ng0);
    t8 = (t0 + 4144);
    t15 = (t8 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = (unsigned char)3;
    xsi_driver_first_trans_fast(t8);
    goto LAB9;

LAB11:    t8 = (t0 + 1832U);
    t12 = *((char **)t8);
    t13 = *((unsigned char *)t12);
    t14 = (t13 == (unsigned char)2);
    t7 = t14;
    goto LAB13;

LAB14:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 4144);
    t9 = (t2 + 56U);
    t12 = *((char **)t9);
    t15 = (t12 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    goto LAB9;

LAB16:    t2 = (t0 + 1672U);
    t8 = *((char **)t2);
    t6 = *((unsigned char *)t8);
    t7 = (t6 == (unsigned char)2);
    t1 = t7;
    goto LAB18;

LAB19:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1992U);
    t9 = *((char **)t2);
    t10 = *((unsigned char *)t9);
    t2 = (t0 + 4144);
    t12 = (t2 + 56U);
    t15 = *((char **)t12);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = t10;
    xsi_driver_first_trans_fast(t2);
    goto LAB9;

LAB21:    t2 = (t0 + 1832U);
    t8 = *((char **)t2);
    t6 = *((unsigned char *)t8);
    t7 = (t6 == (unsigned char)2);
    t1 = t7;
    goto LAB23;

}

static void work_a_1884389192_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(62, ng0);

LAB3:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 4208);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 4048);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1884389192_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    xsi_set_current_line(63, ng0);

LAB3:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, t3);
    t1 = (t0 + 4272);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t4;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t9 = (t0 + 4064);
    *((int *)t9) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_1884389192_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1884389192_3212880686_p_0,(void *)work_a_1884389192_3212880686_p_1,(void *)work_a_1884389192_3212880686_p_2};
	xsi_register_didat("work_a_1884389192_3212880686", "isim/contatore_modulo_4_testbench_isim_beh.exe.sim/work/a_1884389192_3212880686.didat");
	xsi_register_executes(pe);
}
