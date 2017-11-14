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
static const char *ng0 = "/home/sav/ASE/display_sette_segmenti/display_sette_segmenti_a.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_3488546069778340532_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_3488768496604610246_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_374109322130769762_503743352(char *, unsigned char );


static void work_a_3291464017_1181938964_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned char t13;
    unsigned char t14;
    char *t15;
    char *t16;
    unsigned char t17;
    unsigned char t18;
    unsigned char t19;
    unsigned char t20;
    char *t21;
    int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned char t26;
    char *t27;
    char *t28;
    unsigned char t29;
    unsigned char t30;
    unsigned char t31;
    unsigned char t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;

LAB0:    xsi_set_current_line(51, ng0);

LAB3:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, t3);
    t1 = (t0 + 1512U);
    t5 = *((char **)t1);
    t6 = *((unsigned char *)t5);
    t7 = ieee_p_2592010699_sub_3488768496604610246_503743352(IEEE_P_2592010699, t4, t6);
    t1 = (t0 + 1032U);
    t8 = *((char **)t1);
    t9 = (0 - 3);
    t10 = (t9 * -1);
    t11 = (1U * t10);
    t12 = (0 + t11);
    t1 = (t8 + t12);
    t13 = *((unsigned char *)t1);
    t14 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, t13);
    t15 = (t0 + 1512U);
    t16 = *((char **)t15);
    t17 = *((unsigned char *)t16);
    t18 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, t17);
    t19 = ieee_p_2592010699_sub_3488768496604610246_503743352(IEEE_P_2592010699, t14, t18);
    t20 = ieee_p_2592010699_sub_3488546069778340532_503743352(IEEE_P_2592010699, t7, t19);
    t15 = (t0 + 1032U);
    t21 = *((char **)t15);
    t22 = (1 - 3);
    t23 = (t22 * -1);
    t24 = (1U * t23);
    t25 = (0 + t24);
    t15 = (t21 + t25);
    t26 = *((unsigned char *)t15);
    t27 = (t0 + 1352U);
    t28 = *((char **)t27);
    t29 = *((unsigned char *)t28);
    t30 = ieee_p_2592010699_sub_3488768496604610246_503743352(IEEE_P_2592010699, t26, t29);
    t31 = ieee_p_2592010699_sub_3488546069778340532_503743352(IEEE_P_2592010699, t20, t30);
    t32 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, t31);
    t27 = (t0 + 3064);
    t33 = (t27 + 56U);
    t34 = *((char **)t33);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    *((unsigned char *)t36) = t32;
    xsi_driver_first_trans_fast_port(t27);

LAB2:    t37 = (t0 + 2984);
    *((int *)t37) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3291464017_1181938964_init()
{
	static char *pe[] = {(void *)work_a_3291464017_1181938964_p_0};
	xsi_register_didat("work_a_3291464017_1181938964", "isim/gestore_display_testbench_isim_beh.exe.sim/work/a_3291464017_1181938964.didat");
	xsi_register_executes(pe);
}
