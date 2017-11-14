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
static const char *ng0 = "/home/sav/ASE/display_sette_segmenti/display_sette_segmenti_f.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_3488546069778340532_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_3488768496604610246_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_374109322130769762_503743352(char *, unsigned char );


static void work_a_2689510552_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t10;
    int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned char t15;
    unsigned char t16;
    unsigned char t17;
    char *t18;
    char *t19;
    int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned char t24;
    char *t25;
    char *t26;
    int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned char t31;
    unsigned char t32;
    unsigned char t33;
    unsigned char t34;
    char *t35;
    char *t36;
    unsigned char t37;
    unsigned char t38;
    unsigned char t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;

LAB0:    xsi_set_current_line(45, ng0);

LAB3:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = (1 - 3);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, t7);
    t9 = (t0 + 1032U);
    t10 = *((char **)t9);
    t11 = (0 - 3);
    t12 = (t11 * -1);
    t13 = (1U * t12);
    t14 = (0 + t13);
    t9 = (t10 + t14);
    t15 = *((unsigned char *)t9);
    t16 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, t15);
    t17 = ieee_p_2592010699_sub_3488768496604610246_503743352(IEEE_P_2592010699, t8, t16);
    t18 = (t0 + 1032U);
    t19 = *((char **)t18);
    t20 = (3 - 3);
    t21 = (t20 * -1);
    t22 = (1U * t21);
    t23 = (0 + t22);
    t18 = (t19 + t23);
    t24 = *((unsigned char *)t18);
    t25 = (t0 + 1032U);
    t26 = *((char **)t25);
    t27 = (2 - 3);
    t28 = (t27 * -1);
    t29 = (1U * t28);
    t30 = (0 + t29);
    t25 = (t26 + t30);
    t31 = *((unsigned char *)t25);
    t32 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, t31);
    t33 = ieee_p_2592010699_sub_3488768496604610246_503743352(IEEE_P_2592010699, t24, t32);
    t34 = ieee_p_2592010699_sub_3488546069778340532_503743352(IEEE_P_2592010699, t17, t33);
    t35 = (t0 + 1352U);
    t36 = *((char **)t35);
    t37 = *((unsigned char *)t36);
    t38 = ieee_p_2592010699_sub_3488546069778340532_503743352(IEEE_P_2592010699, t34, t37);
    t39 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, t38);
    t35 = (t0 + 2904);
    t40 = (t35 + 56U);
    t41 = *((char **)t40);
    t42 = (t41 + 56U);
    t43 = *((char **)t42);
    *((unsigned char *)t43) = t39;
    xsi_driver_first_trans_fast_port(t35);

LAB2:    t44 = (t0 + 2824);
    *((int *)t44) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2689510552_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2689510552_3212880686_p_0};
	xsi_register_didat("work_a_2689510552_3212880686", "isim/testbench_isim_beh.exe.sim/work/a_2689510552_3212880686.didat");
	xsi_register_executes(pe);
}
