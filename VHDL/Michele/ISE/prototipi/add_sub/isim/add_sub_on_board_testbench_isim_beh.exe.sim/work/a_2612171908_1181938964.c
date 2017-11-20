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

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Public/ISE/add_sub/add_sub_on_board.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );


static void work_a_2612171908_1181938964_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    xsi_set_current_line(129, ng0);

LAB3:    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t3);
    t1 = (t0 + 3344);
    t5 = (t1 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t4;
    xsi_driver_first_trans_fast(t1);

LAB2:    t9 = (t0 + 3292);
    *((int *)t9) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2612171908_1181938964_p_1(char *t0)
{
    char t8[16];
    char t10[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    char *t11;
    char *t12;
    int t13;
    unsigned int t14;
    unsigned char t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;

LAB0:    xsi_set_current_line(173, ng0);
    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 868U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB7;

LAB8:    xsi_set_current_line(178, ng0);
    t1 = (t0 + 6388);
    t5 = (t0 + 1696U);
    t6 = *((char **)t5);
    t7 = ((IEEE_P_2592010699) + 2332);
    t9 = (t10 + 0U);
    t11 = (t9 + 0U);
    *((int *)t11) = 0;
    t11 = (t9 + 4U);
    *((int *)t11) = 7;
    t11 = (t9 + 8U);
    *((int *)t11) = 1;
    t13 = (7 - 0);
    t14 = (t13 * 1);
    t14 = (t14 + 1);
    t11 = (t9 + 12U);
    *((unsigned int *)t11) = t14;
    t11 = (t0 + 6228U);
    t5 = xsi_base_array_concat(t5, t8, t7, (char)97, t1, t10, (char)97, t6, t11, (char)101);
    t14 = (8U + 8U);
    t3 = (16U != t14);
    if (t3 == 1)
        goto LAB11;

LAB12:    t12 = (t0 + 3380);
    t16 = (t12 + 32U);
    t17 = *((char **)t16);
    t18 = (t17 + 40U);
    t19 = *((char **)t18);
    memcpy(t19, t5, 16U);
    xsi_driver_first_trans_fast(t12);

LAB3:    t1 = (t0 + 3300);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(174, ng0);
    t1 = (t0 + 6372);
    t6 = (t0 + 1512U);
    t7 = *((char **)t6);
    t9 = ((IEEE_P_2592010699) + 2332);
    t11 = (t10 + 0U);
    t12 = (t11 + 0U);
    *((int *)t12) = 0;
    t12 = (t11 + 4U);
    *((int *)t12) = 7;
    t12 = (t11 + 8U);
    *((int *)t12) = 1;
    t13 = (7 - 0);
    t14 = (t13 * 1);
    t14 = (t14 + 1);
    t12 = (t11 + 12U);
    *((unsigned int *)t12) = t14;
    t12 = (t0 + 6196U);
    t6 = xsi_base_array_concat(t6, t8, t9, (char)97, t1, t10, (char)97, t7, t12, (char)101);
    t14 = (8U + 8U);
    t15 = (16U != t14);
    if (t15 == 1)
        goto LAB5;

LAB6:    t16 = (t0 + 3380);
    t17 = (t16 + 32U);
    t18 = *((char **)t17);
    t19 = (t18 + 40U);
    t20 = *((char **)t19);
    memcpy(t20, t6, 16U);
    xsi_driver_first_trans_fast(t16);
    goto LAB3;

LAB5:    xsi_size_not_matching(16U, t14, 0);
    goto LAB6;

LAB7:    xsi_set_current_line(176, ng0);
    t1 = (t0 + 6380);
    t6 = (t0 + 1604U);
    t7 = *((char **)t6);
    t9 = ((IEEE_P_2592010699) + 2332);
    t11 = (t10 + 0U);
    t12 = (t11 + 0U);
    *((int *)t12) = 0;
    t12 = (t11 + 4U);
    *((int *)t12) = 7;
    t12 = (t11 + 8U);
    *((int *)t12) = 1;
    t13 = (7 - 0);
    t14 = (t13 * 1);
    t14 = (t14 + 1);
    t12 = (t11 + 12U);
    *((unsigned int *)t12) = t14;
    t12 = (t0 + 6212U);
    t6 = xsi_base_array_concat(t6, t8, t9, (char)97, t1, t10, (char)97, t7, t12, (char)101);
    t14 = (8U + 8U);
    t15 = (16U != t14);
    if (t15 == 1)
        goto LAB9;

LAB10:    t16 = (t0 + 3380);
    t17 = (t16 + 32U);
    t18 = *((char **)t17);
    t19 = (t18 + 40U);
    t20 = *((char **)t19);
    memcpy(t20, t6, 16U);
    xsi_driver_first_trans_fast(t16);
    goto LAB3;

LAB9:    xsi_size_not_matching(16U, t14, 0);
    goto LAB10;

LAB11:    xsi_size_not_matching(16U, t14, 0);
    goto LAB12;

}


extern void work_a_2612171908_1181938964_init()
{
	static char *pe[] = {(void *)work_a_2612171908_1181938964_p_0,(void *)work_a_2612171908_1181938964_p_1};
	xsi_register_didat("work_a_2612171908_1181938964", "isim/add_sub_on_board_testbench_isim_beh.exe.sim/work/a_2612171908_1181938964.didat");
	xsi_register_executes(pe);
}
