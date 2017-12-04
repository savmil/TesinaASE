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
static const char *ng0 = "/home/sav/ASE/gestore_display/contatore_modulo_4.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1006216973935652998_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_2358049308_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    unsigned int t5;
    int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    int t10;
    int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned char t14;
    unsigned int t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;

LAB0:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = xsi_get_transient_memory(2U);
    memset(t1, 0, 2U);
    t3 = t1;
    t4 = (2 - 1);
    if (-1 == -1)
        goto LAB5;

LAB6:    t5 = 0;

LAB7:    t6 = (t5 - 1);
    t7 = (t6 * -1);
    t8 = (1U * t7);
    t9 = (t3 + t8);
    t10 = (2 - 1);
    t11 = (0 - t10);
    t12 = (t11 * -1);
    t12 = (t12 + 1);
    t13 = (1U * t12);
    memset(t9, (unsigned char)3, t13);
    t14 = 1;
    if (2U == 2U)
        goto LAB8;

LAB9:    t14 = 0;

LAB10:    if (t14 != 0)
        goto LAB3;

LAB4:
LAB14:    t23 = (t0 + 4032);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    *((unsigned char *)t27) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t23);

LAB2:    t28 = (t0 + 3920);
    *((int *)t28) = 1;

LAB1:    return;
LAB3:    t18 = (t0 + 4032);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    *((unsigned char *)t22) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t18);
    goto LAB2;

LAB5:    t5 = t4;
    goto LAB7;

LAB8:    t15 = 0;

LAB11:    if (t15 < 2U)
        goto LAB12;
    else
        goto LAB10;

LAB12:    t16 = (t2 + t15);
    t17 = (t1 + t15);
    if (*((unsigned char *)t16) != *((unsigned char *)t17))
        goto LAB9;

LAB13:    t15 = (t15 + 1);
    goto LAB11;

LAB15:    goto LAB2;

}

static void work_a_2358049308_3212880686_p_1(char *t0)
{
    char t11[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t12;

LAB0:    xsi_set_current_line(48, ng0);
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
LAB3:    t1 = (t0 + 3936);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(49, ng0);
    t1 = xsi_get_transient_memory(2U);
    memset(t1, 0, 2U);
    t5 = t1;
    memset(t5, (unsigned char)2, 2U);
    t6 = (t0 + 4096);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 2U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1832U);
    t5 = *((char **)t2);
    t2 = (t0 + 6120U);
    t6 = ieee_p_1242562249_sub_1006216973935652998_1035706684(IEEE_P_1242562249, t11, t5, t2, 1);
    t7 = (t0 + 4096);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t12 = *((char **)t10);
    memcpy(t12, t6, 2U);
    xsi_driver_first_trans_fast(t7);
    goto LAB3;

}

static void work_a_2358049308_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(54, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 4160);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 2U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3952);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2358049308_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2358049308_3212880686_p_0,(void *)work_a_2358049308_3212880686_p_1,(void *)work_a_2358049308_3212880686_p_2};
	xsi_register_didat("work_a_2358049308_3212880686", "isim/gestore_display_isim_beh.exe.sim/work/a_2358049308_3212880686.didat");
	xsi_register_executes(pe);
}
