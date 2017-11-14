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
static const char *ng0 = "/home/sav/ASE/display_sette_segmenti/diplay_sette_segmenti_c.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_3488546069778340532_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_3488768496604610246_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_374109322130769762_503743352(char *, unsigned char );


static void work_a_0769454328_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    char *t13;
    int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned char t18;
    unsigned char t19;
    unsigned char t20;
    unsigned char t21;
    char *t22;
    char *t23;
    int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned char t28;
    char *t29;
    char *t30;
    unsigned char t31;
    unsigned char t32;
    unsigned char t33;
    unsigned char t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;

LAB0:    xsi_set_current_line(45, ng0);

LAB3:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, t3);
    t1 = (t0 + 1032U);
    t5 = *((char **)t1);
    t6 = (2 - 3);
    t7 = (t6 * -1);
    t8 = (1U * t7);
    t9 = (0 + t8);
    t1 = (t5 + t9);
    t10 = *((unsigned char *)t1);
    t11 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, t10);
    t12 = (t0 + 1032U);
    t13 = *((char **)t12);
    t14 = (3 - 3);
    t15 = (t14 * -1);
    t16 = (1U * t15);
    t17 = (0 + t16);
    t12 = (t13 + t17);
    t18 = *((unsigned char *)t12);
    t19 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, t18);
    t20 = ieee_p_2592010699_sub_3488546069778340532_503743352(IEEE_P_2592010699, t11, t19);
    t21 = ieee_p_2592010699_sub_3488768496604610246_503743352(IEEE_P_2592010699, t4, t20);
    t22 = (t0 + 1032U);
    t23 = *((char **)t22);
    t24 = (0 - 3);
    t25 = (t24 * -1);
    t26 = (1U * t25);
    t27 = (0 + t26);
    t22 = (t23 + t27);
    t28 = *((unsigned char *)t22);
    t29 = (t0 + 1352U);
    t30 = *((char **)t29);
    t31 = *((unsigned char *)t30);
    t32 = ieee_p_2592010699_sub_3488768496604610246_503743352(IEEE_P_2592010699, t28, t31);
    t33 = ieee_p_2592010699_sub_3488546069778340532_503743352(IEEE_P_2592010699, t21, t32);
    t34 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, t33);
    t29 = (t0 + 2904);
    t35 = (t29 + 56U);
    t36 = *((char **)t35);
    t37 = (t36 + 56U);
    t38 = *((char **)t37);
    *((unsigned char *)t38) = t34;
    xsi_driver_first_trans_fast_port(t29);

LAB2:    t39 = (t0 + 2824);
    *((int *)t39) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0769454328_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0769454328_3212880686_p_0};
	xsi_register_didat("work_a_0769454328_3212880686", "isim/gestore_display_isim_beh.exe.sim/work/a_0769454328_3212880686.didat");
	xsi_register_executes(pe);
}
