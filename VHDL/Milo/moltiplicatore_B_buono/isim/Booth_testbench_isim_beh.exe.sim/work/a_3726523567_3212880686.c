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
static const char *ng0 = "/media/sf_ASE/VHDL/Milo/moltiplicatore_B_buono/Serial_Booth_PC_Moore.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3726523567_3212880686_p_0(char *t0)
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
    char *t11;
    char *t12;
    char *t13;
    static char *nl0[] = {&&LAB8, &&LAB10, &&LAB9, &&LAB11, &&LAB12};

LAB0:    xsi_set_current_line(53, ng0);
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
LAB3:    t1 = (t0 + 4672);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 4768);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 2792U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t2 = (char *)((nl0) + t4);
    goto **((char **)t2);

LAB7:    goto LAB3;

LAB8:    xsi_set_current_line(57, ng0);
    t6 = (t0 + 1192U);
    t7 = *((char **)t6);
    t9 = *((unsigned char *)t7);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB13;

LAB15:
LAB14:    goto LAB7;

LAB9:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 4768);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    goto LAB7;

LAB10:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 4768);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB7;

LAB11:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 4768);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)4;
    xsi_driver_first_trans_fast(t1);
    goto LAB7;

LAB12:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB16;

LAB18:    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB19;

LAB20:
LAB17:    goto LAB7;

LAB13:    xsi_set_current_line(58, ng0);
    t6 = (t0 + 4768);
    t8 = (t6 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast(t6);
    goto LAB14;

LAB16:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 4768);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    goto LAB17;

LAB19:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 4768);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB17;

}

static void work_a_3726523567_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned char t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned int t10;
    char *t11;
    unsigned char t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    unsigned char t19;
    unsigned int t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    static char *nl0[] = {&&LAB3, &&LAB5, &&LAB4, &&LAB6, &&LAB7};

LAB0:    xsi_set_current_line(75, ng0);
    t1 = (t0 + 4832);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(76, ng0);
    t1 = (t0 + 4896);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(77, ng0);
    t1 = (t0 + 4960);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(78, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t6 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t6);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 4688);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(79, ng0);
    t3 = (t0 + 5024);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(80, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t6 = *((unsigned char *)t2);
    t9 = (t6 == (unsigned char)3);
    if (t9 != 0)
        goto LAB8;

LAB10:
LAB9:    goto LAB2;

LAB4:    xsi_set_current_line(85, ng0);
    t1 = (t0 + 4832);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(86, ng0);
    t1 = (t0 + 5088);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(87, ng0);
    t1 = (t0 + 5152);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB5:    xsi_set_current_line(88, ng0);
    t1 = (t0 + 4960);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(89, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 8032);
    t9 = 1;
    if (2U == 2U)
        goto LAB17;

LAB18:    t9 = 0;

LAB19:    if (t9 == 1)
        goto LAB14;

LAB15:    t7 = (t0 + 1352U);
    t8 = *((char **)t7);
    t7 = (t0 + 8034);
    t12 = 1;
    if (2U == 2U)
        goto LAB23;

LAB24:    t12 = 0;

LAB25:    t6 = t12;

LAB16:    if (t6 != 0)
        goto LAB11;

LAB13:    t16 = (t0 + 1352U);
    t17 = *((char **)t16);
    t16 = (t0 + 8036);
    t19 = 1;
    if (2U == 2U)
        goto LAB31;

LAB32:    t19 = 0;

LAB33:    if (t19 != 0)
        goto LAB29;

LAB30:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 8038);
    t6 = 1;
    if (2U == 2U)
        goto LAB39;

LAB40:    t6 = 0;

LAB41:    if (t6 != 0)
        goto LAB37;

LAB38:
LAB12:    goto LAB2;

LAB6:    xsi_set_current_line(95, ng0);
    t1 = (t0 + 4896);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB7:    xsi_set_current_line(96, ng0);
    t1 = (t0 + 4896);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(97, ng0);
    t1 = (t0 + 5152);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB8:    xsi_set_current_line(81, ng0);
    t1 = (t0 + 5088);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(82, ng0);
    t1 = (t0 + 5152);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(83, ng0);
    t1 = (t0 + 5024);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB9;

LAB11:    goto LAB12;

LAB14:    t6 = (unsigned char)1;
    goto LAB16;

LAB17:    t10 = 0;

LAB20:    if (t10 < 2U)
        goto LAB21;
    else
        goto LAB19;

LAB21:    t4 = (t2 + t10);
    t5 = (t1 + t10);
    if (*((unsigned char *)t4) != *((unsigned char *)t5))
        goto LAB18;

LAB22:    t10 = (t10 + 1);
    goto LAB20;

LAB23:    t13 = 0;

LAB26:    if (t13 < 2U)
        goto LAB27;
    else
        goto LAB25;

LAB27:    t14 = (t8 + t13);
    t15 = (t7 + t13);
    if (*((unsigned char *)t14) != *((unsigned char *)t15))
        goto LAB24;

LAB28:    t13 = (t13 + 1);
    goto LAB26;

LAB29:    xsi_set_current_line(91, ng0);
    t23 = (t0 + 5152);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    *((unsigned char *)t27) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t23);
    goto LAB12;

LAB31:    t20 = 0;

LAB34:    if (t20 < 2U)
        goto LAB35;
    else
        goto LAB33;

LAB35:    t21 = (t17 + t20);
    t22 = (t16 + t20);
    if (*((unsigned char *)t21) != *((unsigned char *)t22))
        goto LAB32;

LAB36:    t20 = (t20 + 1);
    goto LAB34;

LAB37:    xsi_set_current_line(93, ng0);
    t7 = (t0 + 5152);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    t14 = (t11 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t7);
    goto LAB12;

LAB39:    t10 = 0;

LAB42:    if (t10 < 2U)
        goto LAB43;
    else
        goto LAB41;

LAB43:    t4 = (t2 + t10);
    t5 = (t1 + t10);
    if (*((unsigned char *)t4) != *((unsigned char *)t5))
        goto LAB40;

LAB44:    t10 = (t10 + 1);
    goto LAB42;

}


extern void work_a_3726523567_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3726523567_3212880686_p_0,(void *)work_a_3726523567_3212880686_p_1};
	xsi_register_didat("work_a_3726523567_3212880686", "isim/Booth_testbench_isim_beh.exe.sim/work/a_3726523567_3212880686.didat");
	xsi_register_executes(pe);
}
