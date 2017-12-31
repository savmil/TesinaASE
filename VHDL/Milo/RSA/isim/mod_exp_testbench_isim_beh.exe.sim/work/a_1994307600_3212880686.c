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
static const char *ng0 = "/media/sf_ASE/VHDL/Milo/RSA/mod_exp.vhd";
extern char *IEEE_P_1242562249;
extern char *IEEE_P_2592010699;
extern char *STD_TEXTIO;

char *ieee_p_1242562249_sub_10420449594411817395_1035706684(char *, char *, int , int );
int ieee_p_1242562249_sub_17802405650254020620_1035706684(char *, char *, char *);
unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1994307600_3212880686_p_0(char *t0)
{
    char t20[16];
    char *t1;
    char *t2;
    int t3;
    char *t4;
    char *t5;
    int t6;
    unsigned char t7;
    unsigned char t8;
    int t9;
    unsigned char t10;
    char *t11;
    int t12;
    int t13;
    char *t14;
    int t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t21;
    char *t22;
    unsigned int t23;

LAB0:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 6784U);
    t3 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t2, t1);
    t4 = (t0 + 1968U);
    t5 = *((char **)t4);
    t4 = (t5 + 0);
    *((int *)t4) = t3;
    xsi_set_current_line(54, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 6816U);
    t3 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t2, t1);
    t4 = (t0 + 2088U);
    t5 = *((char **)t4);
    t4 = (t5 + 0);
    *((int *)t4) = t3;
    xsi_set_current_line(55, ng0);
    t1 = (t0 + 2688U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t6 = (-(1));
    t7 = (t3 != t6);
    if (t7 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(125, ng0);
    t1 = (t0 + 2808U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t1 = ieee_p_1242562249_sub_10420449594411817395_1035706684(IEEE_P_1242562249, t20, t3, 32);
    t4 = (t0 + 4496);
    t5 = (t4 + 56U);
    t11 = *((char **)t5);
    t14 = (t11 + 56U);
    t16 = *((char **)t14);
    memcpy(t16, t1, 32U);
    xsi_driver_first_trans_fast_port(t4);
    t1 = (t0 + 4416);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 992U);
    t8 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t8 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(57, ng0);
    t4 = (t0 + 2568U);
    t5 = *((char **)t4);
    t9 = *((int *)t5);
    t10 = (t9 == 0);
    if (t10 != 0)
        goto LAB8;

LAB10:
LAB9:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 2928U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t7 = (t3 != 65536);
    if (t7 != 0)
        goto LAB11;

LAB13:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 2688U);
    t4 = *((char **)t1);
    t3 = *((int *)t4);
    t6 = (t3 - 15);
    t17 = (t6 * -1);
    xsi_vhdl_check_range_of_index(15, 0, -1, t3);
    t18 = (1U * t17);
    t19 = (0 + t18);
    t1 = (t2 + t19);
    t7 = *((unsigned char *)t1);
    t8 = (t7 == (unsigned char)3);
    if (t8 != 0)
        goto LAB17;

LAB19:
LAB18:    xsi_set_current_line(102, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 2688U);
    t4 = *((char **)t1);
    t3 = *((int *)t4);
    t6 = (t3 - 15);
    t17 = (t6 * -1);
    xsi_vhdl_check_range_of_index(15, 0, -1, t3);
    t18 = (1U * t17);
    t19 = (0 + t18);
    t1 = (t2 + t19);
    t7 = *((unsigned char *)t1);
    t8 = (t7 == (unsigned char)2);
    if (t8 != 0)
        goto LAB29;

LAB31:    t1 = (t0 + 3048U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t7 = (t3 == 65536);
    if (t7 != 0)
        goto LAB32;

LAB33:
LAB30:
LAB12:    goto LAB6;

LAB8:    xsi_set_current_line(58, ng0);
    t4 = (t0 + 2208U);
    t11 = *((char **)t4);
    t12 = *((int *)t11);
    t13 = (t12 * 2);
    t4 = (t0 + 2208U);
    t14 = *((char **)t4);
    t4 = (t14 + 0);
    *((int *)t4) = t13;
    xsi_set_current_line(59, ng0);
    t1 = (t0 + 2808U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t1 = (t0 + 2808U);
    t4 = *((char **)t1);
    t6 = *((int *)t4);
    t9 = (t3 * t6);
    t1 = (t0 + 2808U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = t9;
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 2568U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 1;
    goto LAB9;

LAB11:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 2808U);
    t4 = *((char **)t1);
    t6 = *((int *)t4);
    t1 = (t0 + 2088U);
    t5 = *((char **)t1);
    t9 = *((int *)t5);
    t8 = (t6 >= t9);
    if (t8 != 0)
        goto LAB14;

LAB16:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 2928U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 65535;

LAB15:    xsi_set_current_line(75, ng0);
    t1 = (t0 + 2928U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t6 = (t3 + 1);
    t1 = (t0 + 2928U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = t6;
    goto LAB12;

LAB14:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 2808U);
    t11 = *((char **)t1);
    t12 = *((int *)t11);
    t1 = (t0 + 2088U);
    t14 = *((char **)t1);
    t13 = *((int *)t14);
    t15 = (t12 - t13);
    t1 = (t0 + 2808U);
    t16 = *((char **)t1);
    t1 = (t16 + 0);
    *((int *)t1) = t15;
    goto LAB15;

LAB17:    xsi_set_current_line(78, ng0);
    t5 = (t0 + 3904);
    t11 = (t0 + 3448U);
    t14 = (t0 + 7024);
    t21 = (t20 + 0U);
    t22 = (t21 + 0U);
    *((int *)t22) = 1;
    t22 = (t21 + 4U);
    *((int *)t22) = 7;
    t22 = (t21 + 8U);
    *((int *)t22) = 1;
    t9 = (7 - 1);
    t23 = (t9 * 1);
    t23 = (t23 + 1);
    t22 = (t21 + 12U);
    *((unsigned int *)t22) = t23;
    std_textio_write7(STD_TEXTIO, t5, t11, t14, t20, (unsigned char)0, 0);
    xsi_set_current_line(79, ng0);
    t1 = (t0 + 3904);
    t2 = (t0 + 3448U);
    t4 = (t0 + 2688U);
    t5 = *((char **)t4);
    t3 = *((int *)t5);
    std_textio_write5(STD_TEXTIO, t1, t2, t3, (unsigned char)0, 0);
    xsi_set_current_line(80, ng0);
    t1 = (t0 + 3904);
    t2 = ((STD_TEXTIO) + 1480U);
    t4 = (t0 + 3448U);
    std_textio_writeline(STD_TEXTIO, t1, t2, t4);
    xsi_set_current_line(81, ng0);
    t1 = (t0 + 2448U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t7 = (t3 == 0);
    if (t7 != 0)
        goto LAB20;

LAB22:
LAB21:    xsi_set_current_line(87, ng0);
    t1 = (t0 + 3048U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t7 = (t3 != 65536);
    if (t7 != 0)
        goto LAB23;

LAB25:
LAB24:    xsi_set_current_line(97, ng0);
    t1 = (t0 + 3904);
    t2 = (t0 + 3448U);
    t4 = (t0 + 7031);
    t11 = (t20 + 0U);
    t14 = (t11 + 0U);
    *((int *)t14) = 1;
    t14 = (t11 + 4U);
    *((int *)t14) = 2;
    t14 = (t11 + 8U);
    *((int *)t14) = 1;
    t3 = (2 - 1);
    t17 = (t3 * 1);
    t17 = (t17 + 1);
    t14 = (t11 + 12U);
    *((unsigned int *)t14) = t17;
    std_textio_write7(STD_TEXTIO, t1, t2, t4, t20, (unsigned char)0, 0);
    xsi_set_current_line(98, ng0);
    t1 = (t0 + 3904);
    t2 = (t0 + 3448U);
    t4 = (t0 + 2808U);
    t5 = *((char **)t4);
    t3 = *((int *)t5);
    std_textio_write5(STD_TEXTIO, t1, t2, t3, (unsigned char)0, 0);
    xsi_set_current_line(99, ng0);
    t1 = (t0 + 3904);
    t2 = ((STD_TEXTIO) + 1480U);
    t4 = (t0 + 3448U);
    std_textio_writeline(STD_TEXTIO, t1, t2, t4);
    goto LAB18;

LAB20:    xsi_set_current_line(83, ng0);
    t1 = (t0 + 2448U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = 1;
    xsi_set_current_line(84, ng0);
    t1 = (t0 + 2208U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t6 = (t3 + 1);
    t1 = (t0 + 2208U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = t6;
    xsi_set_current_line(85, ng0);
    t1 = (t0 + 2808U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t1 = (t0 + 1968U);
    t4 = *((char **)t1);
    t6 = *((int *)t4);
    t9 = (t3 * t6);
    t1 = (t0 + 2808U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = t9;
    goto LAB21;

LAB23:    xsi_set_current_line(88, ng0);
    t1 = (t0 + 2808U);
    t4 = *((char **)t1);
    t6 = *((int *)t4);
    t1 = (t0 + 2088U);
    t5 = *((char **)t1);
    t9 = *((int *)t5);
    t8 = (t6 >= t9);
    if (t8 != 0)
        goto LAB26;

LAB28:    xsi_set_current_line(93, ng0);
    t1 = (t0 + 3048U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 65535;

LAB27:    xsi_set_current_line(95, ng0);
    t1 = (t0 + 3048U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t6 = (t3 + 1);
    t1 = (t0 + 3048U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = t6;
    goto LAB24;

LAB26:    xsi_set_current_line(90, ng0);
    t1 = (t0 + 2808U);
    t11 = *((char **)t1);
    t12 = *((int *)t11);
    t1 = (t0 + 2088U);
    t14 = *((char **)t1);
    t13 = *((int *)t14);
    t15 = (t12 - t13);
    t1 = (t0 + 2808U);
    t16 = *((char **)t1);
    t1 = (t16 + 0);
    *((int *)t1) = t15;
    goto LAB27;

LAB29:    xsi_set_current_line(103, ng0);
    t5 = (t0 + 2688U);
    t11 = *((char **)t5);
    t9 = *((int *)t11);
    t12 = (t9 - 1);
    t5 = (t0 + 2688U);
    t14 = *((char **)t5);
    t5 = (t14 + 0);
    *((int *)t5) = t12;
    xsi_set_current_line(104, ng0);
    t1 = (t0 + 3904);
    t2 = (t0 + 3448U);
    t4 = (t0 + 7033);
    t11 = (t20 + 0U);
    t14 = (t11 + 0U);
    *((int *)t14) = 1;
    t14 = (t11 + 4U);
    *((int *)t14) = 3;
    t14 = (t11 + 8U);
    *((int *)t14) = 1;
    t3 = (3 - 1);
    t17 = (t3 * 1);
    t17 = (t17 + 1);
    t14 = (t11 + 12U);
    *((unsigned int *)t14) = t17;
    std_textio_write7(STD_TEXTIO, t1, t2, t4, t20, (unsigned char)0, 0);
    xsi_set_current_line(105, ng0);
    t1 = (t0 + 3904);
    t2 = (t0 + 3448U);
    t4 = (t0 + 2808U);
    t5 = *((char **)t4);
    t3 = *((int *)t5);
    std_textio_write5(STD_TEXTIO, t1, t2, t3, (unsigned char)0, 0);
    xsi_set_current_line(106, ng0);
    t1 = (t0 + 2448U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(107, ng0);
    t1 = (t0 + 2568U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(108, ng0);
    t1 = (t0 + 2928U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(109, ng0);
    t1 = (t0 + 3048U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 0;
    goto LAB30;

LAB32:    xsi_set_current_line(111, ng0);
    t1 = (t0 + 2688U);
    t4 = *((char **)t1);
    t6 = *((int *)t4);
    t9 = (t6 - 1);
    t1 = (t0 + 2688U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = t9;
    xsi_set_current_line(112, ng0);
    t1 = (t0 + 2448U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(113, ng0);
    t1 = (t0 + 2568U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(114, ng0);
    t1 = (t0 + 2928U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(115, ng0);
    t1 = (t0 + 3048U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 0;
    goto LAB30;

}


extern void work_a_1994307600_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1994307600_3212880686_p_0};
	xsi_register_didat("work_a_1994307600_3212880686", "isim/mod_exp_testbench_isim_beh.exe.sim/work/a_1994307600_3212880686.didat");
	xsi_register_executes(pe);
}
