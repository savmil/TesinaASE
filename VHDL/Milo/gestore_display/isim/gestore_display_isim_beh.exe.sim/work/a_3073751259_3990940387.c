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
static const char *ng0 = "/home/sav/ASE/display_sette_segmenti/display_sette_segmenti_g.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_3488546069778340532_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_3488768496604610246_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_374109322130769762_503743352(char *, unsigned char );


static void work_a_3073751259_3990940387_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned char t13;
    char *t14;
    char *t15;
    unsigned char t16;
    unsigned char t17;
    unsigned char t18;
    unsigned char t19;
    char *t20;
    int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned char t25;
    char *t26;
    char *t27;
    unsigned char t28;
    unsigned char t29;
    unsigned char t30;
    char *t31;
    int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned char t36;
    char *t37;
    char *t38;
    unsigned char t39;
    unsigned char t40;
    unsigned char t41;
    unsigned char t42;
    unsigned char t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;

LAB0:    xsi_set_current_line(61, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 1832U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, t5);
    t7 = ieee_p_2592010699_sub_3488768496604610246_503743352(IEEE_P_2592010699, t3, t6);
    t1 = (t0 + 1032U);
    t8 = *((char **)t1);
    t9 = (1 - 3);
    t10 = (t9 * -1);
    t11 = (1U * t10);
    t12 = (0 + t11);
    t1 = (t8 + t12);
    t13 = *((unsigned char *)t1);
    t14 = (t0 + 1512U);
    t15 = *((char **)t14);
    t16 = *((unsigned char *)t15);
    t17 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, t16);
    t18 = ieee_p_2592010699_sub_3488768496604610246_503743352(IEEE_P_2592010699, t13, t17);
    t19 = ieee_p_2592010699_sub_3488546069778340532_503743352(IEEE_P_2592010699, t7, t18);
    t14 = (t0 + 1032U);
    t20 = *((char **)t14);
    t21 = (1 - 3);
    t22 = (t21 * -1);
    t23 = (1U * t22);
    t24 = (0 + t23);
    t14 = (t20 + t24);
    t25 = *((unsigned char *)t14);
    t26 = (t0 + 1352U);
    t27 = *((char **)t26);
    t28 = *((unsigned char *)t27);
    t29 = ieee_p_2592010699_sub_3488768496604610246_503743352(IEEE_P_2592010699, t25, t28);
    t30 = ieee_p_2592010699_sub_3488546069778340532_503743352(IEEE_P_2592010699, t19, t29);
    t26 = (t0 + 1032U);
    t31 = *((char **)t26);
    t32 = (3 - 3);
    t33 = (t32 * -1);
    t34 = (1U * t33);
    t35 = (0 + t34);
    t26 = (t31 + t35);
    t36 = *((unsigned char *)t26);
    t37 = (t0 + 1352U);
    t38 = *((char **)t37);
    t39 = *((unsigned char *)t38);
    t40 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, t39);
    t41 = ieee_p_2592010699_sub_3488768496604610246_503743352(IEEE_P_2592010699, t36, t40);
    t42 = ieee_p_2592010699_sub_3488546069778340532_503743352(IEEE_P_2592010699, t30, t41);
    t43 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, t42);
    t37 = (t0 + 3384);
    t44 = (t37 + 56U);
    t45 = *((char **)t44);
    t46 = (t45 + 56U);
    t47 = *((char **)t46);
    *((unsigned char *)t47) = t43;
    xsi_driver_first_trans_fast_port(t37);

LAB2:    t48 = (t0 + 3304);
    *((int *)t48) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3073751259_3990940387_init()
{
	static char *pe[] = {(void *)work_a_3073751259_3990940387_p_0};
	xsi_register_didat("work_a_3073751259_3990940387", "isim/gestore_display_isim_beh.exe.sim/work/a_3073751259_3990940387.didat");
	xsi_register_executes(pe);
}
