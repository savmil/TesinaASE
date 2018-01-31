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
static const char *ng0 = "D:/Encryp/RAsync_H_Count_UpCounter.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3408059710_3212880686_p_0(char *t0)
{
    char t14[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    int t11;
    int t12;
    char *t13;
    char *t15;

LAB0:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 2208U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(68, ng0);
    t1 = (t0 + 3592);
    t2 = (t1 + 56U);
    t6 = *((char **)t2);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB3:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 2208U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t1 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t14, t11, 3);
    t6 = (t0 + 3656);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    t13 = (t10 + 56U);
    t15 = *((char **)t13);
    memcpy(t15, t1, 3U);
    xsi_driver_first_trans_fast_port(t6);
    t1 = (t0 + 3512);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 992U);
    t5 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t5 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(54, ng0);
    t6 = (t0 + 1352U);
    t7 = *((char **)t6);
    t8 = *((unsigned char *)t7);
    t9 = (t8 == (unsigned char)2);
    if (t9 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 3592);
    t2 = (t1 + 56U);
    t6 = *((char **)t2);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB9:    goto LAB6;

LAB8:    xsi_set_current_line(55, ng0);
    t6 = (t0 + 2208U);
    t10 = *((char **)t6);
    t11 = *((int *)t10);
    t12 = (t11 + 1);
    t6 = (t0 + 2208U);
    t13 = *((char **)t6);
    t6 = (t13 + 0);
    *((int *)t6) = t12;
    xsi_set_current_line(56, ng0);
    t1 = (t0 + 2208U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t3 = (t11 == 4);
    if (t3 != 0)
        goto LAB11;

LAB13:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 3592);
    t2 = (t1 + 56U);
    t6 = *((char **)t2);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB12:    goto LAB9;

LAB11:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 3592);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t10 = (t7 + 56U);
    t13 = *((char **)t10);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(58, ng0);
    t1 = (t0 + 2208U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 0;
    goto LAB12;

}


extern void work_a_3408059710_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3408059710_3212880686_p_0};
	xsi_register_didat("work_a_3408059710_3212880686", "isim/tb_RSA_isim_beh.exe.sim/work/a_3408059710_3212880686.didat");
	xsi_register_executes(pe);
}
