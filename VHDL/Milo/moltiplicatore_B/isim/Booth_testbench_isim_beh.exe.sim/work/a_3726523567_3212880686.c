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
static const char *ng0 = "/media/sf_ASE/moltiplicatore_B/Serial_Booth_PC_Moore.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3726523567_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    char *t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    static char *nl0[] = {&&LAB6, &&LAB8, &&LAB7, &&LAB9, &&LAB10};

LAB0:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4104);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(58, ng0);
    t3 = (t0 + 4184);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 4248);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(61, ng0);
    t1 = (t0 + 4312);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(62, ng0);
    t1 = (t0 + 4376);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 4440);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 2472U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (char *)((nl0) + t2);
    goto **((char **)t1);

LAB5:    goto LAB3;

LAB6:    xsi_set_current_line(65, ng0);
    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t8 = *((unsigned char *)t5);
    t9 = (t8 == (unsigned char)3);
    if (t9 != 0)
        goto LAB11;

LAB13:
LAB12:    goto LAB5;

LAB7:    xsi_set_current_line(75, ng0);
    t1 = (t0 + 4184);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(82, ng0);
    t1 = (t0 + 4504);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    goto LAB5;

LAB8:    xsi_set_current_line(83, ng0);
    t1 = (t0 + 4376);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(84, ng0);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t1 = (t0 + 6879);
    t8 = 1;
    if (2U == 2U)
        goto LAB20;

LAB21:    t8 = 0;

LAB22:    if (t8 == 1)
        goto LAB17;

LAB18:    t7 = (t0 + 1352U);
    t10 = *((char **)t7);
    t7 = (t0 + 6881);
    t9 = 1;
    if (2U == 2U)
        goto LAB26;

LAB27:    t9 = 0;

LAB28:    t2 = t9;

LAB19:    if (t2 != 0)
        goto LAB14;

LAB16:    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t1 = (t0 + 6883);
    t2 = 1;
    if (2U == 2U)
        goto LAB34;

LAB35:    t2 = 0;

LAB36:    if (t2 != 0)
        goto LAB32;

LAB33:    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t1 = (t0 + 6885);
    t2 = 1;
    if (2U == 2U)
        goto LAB42;

LAB43:    t2 = 0;

LAB44:    if (t2 != 0)
        goto LAB40;

LAB41:
LAB15:    goto LAB5;

LAB9:    xsi_set_current_line(101, ng0);
    t1 = (t0 + 4312);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(103, ng0);
    t1 = (t0 + 4504);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)4;
    xsi_driver_first_trans_fast(t1);
    goto LAB5;

LAB10:    xsi_set_current_line(111, ng0);
    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t8 = (t2 == (unsigned char)2);
    if (t8 != 0)
        goto LAB48;

LAB50:    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t8 = (t2 == (unsigned char)3);
    if (t8 != 0)
        goto LAB51;

LAB52:
LAB49:    goto LAB5;

LAB11:    xsi_set_current_line(71, ng0);
    t4 = (t0 + 4504);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(72, ng0);
    t1 = (t0 + 4248);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB12;

LAB14:    xsi_set_current_line(85, ng0);
    t16 = (t0 + 4504);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    *((unsigned char *)t20) = (unsigned char)3;
    xsi_driver_first_trans_fast(t16);
    goto LAB15;

LAB17:    t2 = (unsigned char)1;
    goto LAB19;

LAB20:    t12 = 0;

LAB23:    if (t12 < 2U)
        goto LAB24;
    else
        goto LAB22;

LAB24:    t5 = (t3 + t12);
    t6 = (t1 + t12);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB21;

LAB25:    t12 = (t12 + 1);
    goto LAB23;

LAB26:    t13 = 0;

LAB29:    if (t13 < 2U)
        goto LAB30;
    else
        goto LAB28;

LAB30:    t14 = (t10 + t13);
    t15 = (t7 + t13);
    if (*((unsigned char *)t14) != *((unsigned char *)t15))
        goto LAB27;

LAB31:    t13 = (t13 + 1);
    goto LAB29;

LAB32:    xsi_set_current_line(91, ng0);
    t7 = (t0 + 4440);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    t14 = (t11 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t7);
    xsi_set_current_line(92, ng0);
    t1 = (t0 + 4504);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB15;

LAB34:    t12 = 0;

LAB37:    if (t12 < 2U)
        goto LAB38;
    else
        goto LAB36;

LAB38:    t5 = (t3 + t12);
    t6 = (t1 + t12);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB35;

LAB39:    t12 = (t12 + 1);
    goto LAB37;

LAB40:    xsi_set_current_line(97, ng0);
    t7 = (t0 + 4440);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    t14 = (t11 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t7);
    xsi_set_current_line(98, ng0);
    t1 = (t0 + 4504);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB15;

LAB42:    t12 = 0;

LAB45:    if (t12 < 2U)
        goto LAB46;
    else
        goto LAB44;

LAB46:    t5 = (t3 + t12);
    t6 = (t1 + t12);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB43;

LAB47:    t12 = (t12 + 1);
    goto LAB45;

LAB48:    xsi_set_current_line(112, ng0);
    t1 = (t0 + 4504);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB49;

LAB51:    xsi_set_current_line(114, ng0);
    t1 = (t0 + 4504);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB49;

}


extern void work_a_3726523567_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3726523567_3212880686_p_0};
	xsi_register_didat("work_a_3726523567_3212880686", "isim/Booth_testbench_isim_beh.exe.sim/work/a_3726523567_3212880686.didat");
	xsi_register_executes(pe);
}
