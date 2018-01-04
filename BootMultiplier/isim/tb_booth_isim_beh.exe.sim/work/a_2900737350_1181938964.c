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
static const char *ng0 = "C:/Users/Mario/Desktop/BootMultiplier/RCAddSub.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1605435078_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_2507238156_503743352(char *, unsigned char , unsigned char );


static void work_a_2900737350_1181938964_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    int t5;
    int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    int t13;
    int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned char t18;
    unsigned char t19;
    unsigned char t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;

LAB0:    xsi_set_current_line(88, ng0);

LAB3:    t1 = (t0 + 1144U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 592U);
    t4 = *((char **)t1);
    t5 = (8 - 1);
    t6 = (t5 - 7);
    t7 = (t6 * -1);
    t8 = (1U * t7);
    t9 = (0 + t8);
    t1 = (t4 + t9);
    t10 = *((unsigned char *)t1);
    t11 = (t0 + 684U);
    t12 = *((char **)t11);
    t13 = (8 - 1);
    t14 = (t13 - 7);
    t15 = (t14 * -1);
    t16 = (1U * t15);
    t17 = (0 + t16);
    t11 = (t12 + t17);
    t18 = *((unsigned char *)t11);
    t19 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t10, t18);
    t20 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t3, t19);
    t21 = (t0 + 2112);
    t22 = (t21 + 32U);
    t23 = *((char **)t22);
    t24 = (t23 + 40U);
    t25 = *((char **)t24);
    *((unsigned char *)t25) = t20;
    xsi_driver_first_trans_fast_port(t21);

LAB2:    t26 = (t0 + 2068);
    *((int *)t26) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2900737350_1181938964_init()
{
	static char *pe[] = {(void *)work_a_2900737350_1181938964_p_0};
	xsi_register_didat("work_a_2900737350_1181938964", "isim/tb_booth_isim_beh.exe.sim/work/a_2900737350_1181938964.didat");
	xsi_register_executes(pe);
}
