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
static const char *ng0 = "D:/Encryp/seven_seg_interface_adapter.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
char *ieee_p_2592010699_sub_1735675855_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1837678034_503743352(char *, char *, char *, char *);


static void work_a_2038529799_1181938964_p_0(char *t0)
{
    char t1[16];
    char t2[16];
    char t3[16];
    char t7[16];
    char t17[16];
    char t22[16];
    char t27[16];
    char *t4;
    char *t5;
    char *t6;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    unsigned char t14;
    char *t15;
    unsigned char t16;
    char *t18;
    char *t19;
    char *t20;
    unsigned char t21;
    char *t23;
    char *t24;
    char *t25;
    unsigned char t26;
    char *t28;
    char *t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    unsigned char t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;

LAB0:    xsi_set_current_line(150, ng0);

LAB3:    t4 = (t0 + 2632U);
    t5 = *((char **)t4);
    t4 = (t0 + 9332U);
    t6 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t3, t5, t4);
    t8 = (t0 + 1672U);
    t9 = *((char **)t8);
    t8 = (t0 + 9252U);
    t10 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t7, t9, t8);
    t11 = ieee_p_2592010699_sub_1735675855_503743352(IEEE_P_2592010699, t2, t6, t3, t10, t7);
    t12 = (t0 + 1352U);
    t13 = *((char **)t12);
    t14 = *((unsigned char *)t13);
    t12 = (t0 + 1352U);
    t15 = *((char **)t12);
    t16 = *((unsigned char *)t15);
    t18 = ((IEEE_P_2592010699) + 4024);
    t12 = xsi_base_array_concat(t12, t17, t18, (char)99, t14, (char)99, t16, (char)101);
    t19 = (t0 + 1352U);
    t20 = *((char **)t19);
    t21 = *((unsigned char *)t20);
    t23 = ((IEEE_P_2592010699) + 4024);
    t19 = xsi_base_array_concat(t19, t22, t23, (char)97, t12, t17, (char)99, t21, (char)101);
    t24 = (t0 + 1352U);
    t25 = *((char **)t24);
    t26 = *((unsigned char *)t25);
    t28 = ((IEEE_P_2592010699) + 4024);
    t24 = xsi_base_array_concat(t24, t27, t28, (char)97, t19, t22, (char)99, t26, (char)101);
    t29 = ieee_p_2592010699_sub_1735675855_503743352(IEEE_P_2592010699, t1, t11, t2, t24, t27);
    t30 = (t1 + 12U);
    t31 = *((unsigned int *)t30);
    t32 = (1U * t31);
    t33 = (4U != t32);
    if (t33 == 1)
        goto LAB5;

LAB6:    t34 = (t0 + 5888);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    t37 = (t36 + 56U);
    t38 = *((char **)t37);
    memcpy(t38, t29, 4U);
    xsi_driver_first_trans_fast_port(t34);

LAB2:    t39 = (t0 + 5744);
    *((int *)t39) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(4U, t32, 0);
    goto LAB6;

}

static void work_a_2038529799_1181938964_p_1(char *t0)
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

LAB0:    xsi_set_current_line(164, ng0);

LAB3:    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t3);
    t1 = (t0 + 5952);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t4;
    xsi_driver_first_trans_delta(t1, 0U, 1, 0LL);

LAB2:    t9 = (t0 + 5760);
    *((int *)t9) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2038529799_1181938964_p_2(char *t0)
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

LAB0:    xsi_set_current_line(117, ng0);

LAB3:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t3);
    t1 = (t0 + 6016);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t4;
    xsi_driver_first_trans_fast(t1);

LAB2:    t9 = (t0 + 5776);
    *((int *)t9) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2038529799_1181938964_p_3(char *t0)
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

LAB0:    xsi_set_current_line(126, ng0);

LAB3:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t3);
    t1 = (t0 + 6080);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t4;
    xsi_driver_first_trans_fast(t1);

LAB2:    t9 = (t0 + 5792);
    *((int *)t9) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2038529799_1181938964_p_4(char *t0)
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

LAB0:    xsi_set_current_line(128, ng0);

LAB3:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t3);
    t1 = (t0 + 6144);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t4;
    xsi_driver_first_trans_fast(t1);

LAB2:    t9 = (t0 + 5808);
    *((int *)t9) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2038529799_1181938964_init()
{
	static char *pe[] = {(void *)work_a_2038529799_1181938964_p_0,(void *)work_a_2038529799_1181938964_p_1,(void *)work_a_2038529799_1181938964_p_2,(void *)work_a_2038529799_1181938964_p_3,(void *)work_a_2038529799_1181938964_p_4};
	xsi_register_didat("work_a_2038529799_1181938964", "isim/tb_RSA_isim_beh.exe.sim/work/a_2038529799_1181938964.didat");
	xsi_register_executes(pe);
}
