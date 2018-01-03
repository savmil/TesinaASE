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

/* This file is designed for use with ISim build 0x2f00eba5 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Mario/Desktop/BootMultiplier/counter.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3499444699;
extern char *WORK_P_0502699902;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
char *ieee_p_3499444699_sub_2213602152_3536714472(char *, char *, int , int );
int work_p_0502699902_sub_3319369011_1611706926(char *, int );


static void work_a_0010332520_3212880686_p_0(char *t0)
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

LAB0:    xsi_set_current_line(50, ng0);

LAB3:    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t3);
    t1 = (t0 + 2568);
    t5 = (t1 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t4;
    xsi_driver_first_trans_fast(t1);

LAB2:    t9 = (t0 + 2500);
    *((int *)t9) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0010332520_3212880686_p_1(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    int t4;
    int t5;
    char *t6;
    unsigned int t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(52, ng0);

LAB3:    t2 = (t0 + 1144U);
    t3 = *((char **)t2);
    t4 = *((int *)t3);
    t5 = work_p_0502699902_sub_3319369011_1611706926(WORK_P_0502699902, 8);
    t2 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t1, t4, t5);
    t6 = (t1 + 12U);
    t7 = *((unsigned int *)t6);
    t7 = (t7 * 1U);
    t8 = (3U != t7);
    if (t8 == 1)
        goto LAB5;

LAB6:    t9 = (t0 + 2604);
    t10 = (t9 + 32U);
    t11 = *((char **)t10);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    memcpy(t13, t2, 3U);
    xsi_driver_first_trans_fast_port(t9);

LAB2:    t14 = (t0 + 2508);
    *((int *)t14) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(3U, t7, 0);
    goto LAB6;

}

static void work_a_0010332520_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    int t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 1144U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t4 = (8 - 1);
    t5 = (t3 == t4);
    if (t5 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 2640);
    t2 = (t1 + 32U);
    t6 = *((char **)t2);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB3:    t1 = (t0 + 2516);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 2640);
    t6 = (t1 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

}

static void work_a_0010332520_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    int t11;
    unsigned char t12;
    int t13;
    int t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 1052U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 568U);
    t4 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t4 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 2524);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 2676);
    t5 = (t1 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    *((int *)t8) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(69, ng0);
    t2 = (t0 + 1144U);
    t6 = *((char **)t2);
    t11 = *((int *)t6);
    t12 = (t11 < 8);
    if (t12 != 0)
        goto LAB10;

LAB12:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 2676);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    *((int *)t7) = 0;
    xsi_driver_first_trans_fast(t1);

LAB11:    goto LAB3;

LAB7:    t2 = (t0 + 684U);
    t5 = *((char **)t2);
    t9 = *((unsigned char *)t5);
    t10 = (t9 == (unsigned char)3);
    t3 = t10;
    goto LAB9;

LAB10:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 1144U);
    t7 = *((char **)t2);
    t13 = *((int *)t7);
    t14 = (t13 + 1);
    t2 = (t0 + 2676);
    t8 = (t2 + 32U);
    t15 = *((char **)t8);
    t16 = (t15 + 40U);
    t17 = *((char **)t16);
    *((int *)t17) = t14;
    xsi_driver_first_trans_fast(t2);
    goto LAB11;

}


extern void work_a_0010332520_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0010332520_3212880686_p_0,(void *)work_a_0010332520_3212880686_p_1,(void *)work_a_0010332520_3212880686_p_2,(void *)work_a_0010332520_3212880686_p_3};
	xsi_register_didat("work_a_0010332520_3212880686", "isim/tb_booth_isim_beh.exe.sim/work/a_0010332520_3212880686.didat");
	xsi_register_executes(pe);
}
