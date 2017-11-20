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
static const char *ng0 = "C:/Users/Public/ISE/add_sub/add_sub.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1605435078_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
char *ieee_p_2592010699_sub_1837678034_503743352(char *, char *, char *, char *);


static void work_a_4099687704_1181938964_p_0(char *t0)
{
    char t5[16];
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    static char *nl0[] = {&&LAB6, &&LAB6, &&LAB6, &&LAB5, &&LAB6, &&LAB6, &&LAB6, &&LAB6, &&LAB6};

LAB0:    t1 = (t0 + 2056U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 776U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t2 = (char *)((nl0) + t4);
    goto **((char **)t2);

LAB4:    xsi_set_current_line(38, ng0);

LAB11:    t2 = (t0 + 2684);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB12;

LAB1:    return;
LAB5:    xsi_set_current_line(39, ng0);
    t6 = (t0 + 684U);
    t7 = *((char **)t6);
    t6 = (t0 + 4524U);
    t8 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t5, t7, t6);
    t9 = (t5 + 12U);
    t10 = *((unsigned int *)t9);
    t11 = (1U * t10);
    t12 = (8U != t11);
    if (t12 == 1)
        goto LAB7;

LAB8:    t13 = (t0 + 2752);
    t14 = (t13 + 32U);
    t15 = *((char **)t14);
    t16 = (t15 + 40U);
    t17 = *((char **)t16);
    memcpy(t17, t8, 8U);
    xsi_driver_first_trans_fast(t13);
    goto LAB4;

LAB6:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 684U);
    t3 = *((char **)t2);
    t2 = (t0 + 2752);
    t6 = (t2 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t3, 8U);
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB7:    xsi_size_not_matching(8U, t11, 0);
    goto LAB8;

LAB9:    t3 = (t0 + 2684);
    *((int *)t3) = 0;
    goto LAB2;

LAB10:    goto LAB9;

LAB12:    goto LAB10;

}

static void work_a_4099687704_1181938964_p_1(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    char *t11;
    int t12;
    int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned char t17;
    unsigned char t18;
    unsigned char t19;
    char *t20;
    char *t21;
    int t22;
    int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned char t27;
    unsigned char t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;

LAB0:    xsi_set_current_line(52, ng0);

LAB3:    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t3 = (8 - 1);
    t4 = (t3 - 7);
    t5 = (t4 * -1);
    t6 = (1U * t5);
    t7 = (0 + t6);
    t1 = (t2 + t7);
    t8 = *((unsigned char *)t1);
    t9 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t8);
    t10 = (t0 + 1236U);
    t11 = *((char **)t10);
    t12 = (8 - 1);
    t13 = (t12 - 7);
    t14 = (t13 * -1);
    t15 = (1U * t14);
    t16 = (0 + t15);
    t10 = (t11 + t16);
    t17 = *((unsigned char *)t10);
    t18 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t17);
    t19 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t9, t18);
    t20 = (t0 + 1328U);
    t21 = *((char **)t20);
    t22 = (8 - 1);
    t23 = (t22 - 7);
    t24 = (t23 * -1);
    t25 = (1U * t24);
    t26 = (0 + t25);
    t20 = (t21 + t26);
    t27 = *((unsigned char *)t20);
    t28 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t19, t27);
    t29 = (t0 + 2788);
    t30 = (t29 + 32U);
    t31 = *((char **)t30);
    t32 = (t31 + 40U);
    t33 = *((char **)t32);
    *((unsigned char *)t33) = t28;
    xsi_driver_first_trans_fast_port(t29);

LAB2:    t34 = (t0 + 2692);
    *((int *)t34) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4099687704_1181938964_p_2(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned char t8;
    char *t9;
    char *t10;
    int t11;
    int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned char t16;
    unsigned char t17;
    char *t18;
    char *t19;
    int t20;
    int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned char t25;
    unsigned char t26;
    unsigned char t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;

LAB0:    xsi_set_current_line(53, ng0);

LAB3:    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t3 = (8 - 1);
    t4 = (t3 - 7);
    t5 = (t4 * -1);
    t6 = (1U * t5);
    t7 = (0 + t6);
    t1 = (t2 + t7);
    t8 = *((unsigned char *)t1);
    t9 = (t0 + 1236U);
    t10 = *((char **)t9);
    t11 = (8 - 1);
    t12 = (t11 - 7);
    t13 = (t12 * -1);
    t14 = (1U * t13);
    t15 = (0 + t14);
    t9 = (t10 + t15);
    t16 = *((unsigned char *)t9);
    t17 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t8, t16);
    t18 = (t0 + 1328U);
    t19 = *((char **)t18);
    t20 = (8 - 1);
    t21 = (t20 - 7);
    t22 = (t21 * -1);
    t23 = (1U * t22);
    t24 = (0 + t23);
    t18 = (t19 + t24);
    t25 = *((unsigned char *)t18);
    t26 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t25);
    t27 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t17, t26);
    t28 = (t0 + 2824);
    t29 = (t28 + 32U);
    t30 = *((char **)t29);
    t31 = (t30 + 40U);
    t32 = *((char **)t31);
    *((unsigned char *)t32) = t27;
    xsi_driver_first_trans_fast_port(t28);

LAB2:    t33 = (t0 + 2700);
    *((int *)t33) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4099687704_1181938964_p_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(54, ng0);

LAB3:    t1 = (t0 + 1328U);
    t2 = *((char **)t1);
    t1 = (t0 + 2860);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 2708);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_4099687704_1181938964_init()
{
	static char *pe[] = {(void *)work_a_4099687704_1181938964_p_0,(void *)work_a_4099687704_1181938964_p_1,(void *)work_a_4099687704_1181938964_p_2,(void *)work_a_4099687704_1181938964_p_3};
	xsi_register_didat("work_a_4099687704_1181938964", "isim/add_sub_on_board_testbench_isim_beh.exe.sim/work/a_4099687704_1181938964.didat");
	xsi_register_executes(pe);
}
