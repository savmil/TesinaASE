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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/Encryp/Mux_2n_1n.vhd";
extern char *IEEE_P_2592010699;

char *ieee_p_2592010699_sub_1735675855_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1837678034_503743352(char *, char *, char *, char *);
char *ieee_p_2592010699_sub_795620321_503743352(char *, char *, char *, char *, char *, char *);


static void work_a_1567404363_3990940387_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    xsi_set_current_line(41, ng0);

LAB3:    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t2 = t1;
    t3 = (t0 + 1352U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    memset(t2, t5, 32U);
    t3 = (t0 + 3616);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 32U);
    xsi_driver_first_trans_fast(t3);

LAB2:    t10 = (t0 + 3520);
    *((int *)t10) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1567404363_3990940387_p_1(char *t0)
{
    char t1[16];
    char t2[16];
    char t5[16];
    char t10[16];
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned char t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;

LAB0:    xsi_set_current_line(42, ng0);

LAB3:    t3 = (t0 + 1032U);
    t4 = *((char **)t3);
    t3 = (t0 + 5204U);
    t6 = (t0 + 1672U);
    t7 = *((char **)t6);
    t6 = (t0 + 5252U);
    t8 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t5, t7, t6);
    t9 = ieee_p_2592010699_sub_795620321_503743352(IEEE_P_2592010699, t2, t4, t3, t8, t5);
    t11 = (t0 + 1192U);
    t12 = *((char **)t11);
    t11 = (t0 + 5220U);
    t13 = (t0 + 1672U);
    t14 = *((char **)t13);
    t13 = (t0 + 5252U);
    t15 = ieee_p_2592010699_sub_795620321_503743352(IEEE_P_2592010699, t10, t12, t11, t14, t13);
    t16 = ieee_p_2592010699_sub_1735675855_503743352(IEEE_P_2592010699, t1, t9, t2, t15, t10);
    t17 = (t1 + 12U);
    t18 = *((unsigned int *)t17);
    t19 = (1U * t18);
    t20 = (32U != t19);
    if (t20 == 1)
        goto LAB5;

LAB6:    t21 = (t0 + 3680);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t16, 32U);
    xsi_driver_first_trans_fast_port(t21);

LAB2:    t26 = (t0 + 3536);
    *((int *)t26) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(32U, t19, 0);
    goto LAB6;

}


extern void work_a_1567404363_3990940387_init()
{
	static char *pe[] = {(void *)work_a_1567404363_3990940387_p_0,(void *)work_a_1567404363_3990940387_p_1};
	xsi_register_didat("work_a_1567404363_3990940387", "isim/tb_RSA_isim_beh.exe.sim/work/a_1567404363_3990940387.didat");
	xsi_register_executes(pe);
}
