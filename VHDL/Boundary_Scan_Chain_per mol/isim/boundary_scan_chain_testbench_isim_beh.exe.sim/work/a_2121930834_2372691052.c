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
static const char *ng0 = "/media/sf_ASE/VHDL/Davide/Boundary_Scan_Chain/boundary_scan_chain_testbench.vhd";



static void work_a_2121930834_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;

LAB0:    t1 = (t0 + 3264U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(85, ng0);
    t2 = (t0 + 3976);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(86, ng0);
    t2 = (t0 + 2288U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t2 = (t0 + 3072);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(87, ng0);
    t2 = (t0 + 3976);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(88, ng0);
    t2 = (t0 + 2288U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t2 = (t0 + 3072);
    xsi_process_wait(t2, t7);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_2121930834_2372691052_p_1(char *t0)
{
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;

LAB0:    t1 = (t0 + 3512U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(96, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 3320);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(101, ng0);
    t2 = (t0 + 6768);
    t5 = (t0 + 4040);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(102, ng0);

LAB10:    t2 = (t0 + 3832);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    t5 = (t0 + 3832);
    *((int *)t5) = 0;
    xsi_set_current_line(103, ng0);
    t2 = (t0 + 4104);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(104, ng0);
    t2 = (t0 + 4168);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(105, ng0);

LAB17:    t2 = (t0 + 3848);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB18;
    goto LAB1;

LAB9:    t4 = (t0 + 1152U);
    t11 = xsi_signal_has_event(t4);
    if (t11 == 1)
        goto LAB12;

LAB13:    t10 = (unsigned char)0;

LAB14:    if (t10 == 1)
        goto LAB8;
    else
        goto LAB10;

LAB11:    goto LAB9;

LAB12:    t5 = (t0 + 1192U);
    t6 = *((char **)t5);
    t12 = *((unsigned char *)t6);
    t13 = (t12 == (unsigned char)3);
    t10 = t13;
    goto LAB14;

LAB15:    t5 = (t0 + 3848);
    *((int *)t5) = 0;
    xsi_set_current_line(106, ng0);
    t2 = (t0 + 4104);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(107, ng0);

LAB24:    t2 = (t0 + 3864);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB25;
    goto LAB1;

LAB16:    t4 = (t0 + 1152U);
    t11 = xsi_signal_has_event(t4);
    if (t11 == 1)
        goto LAB19;

LAB20:    t10 = (unsigned char)0;

LAB21:    if (t10 == 1)
        goto LAB15;
    else
        goto LAB17;

LAB18:    goto LAB16;

LAB19:    t5 = (t0 + 1192U);
    t6 = *((char **)t5);
    t12 = *((unsigned char *)t6);
    t13 = (t12 == (unsigned char)3);
    t10 = t13;
    goto LAB21;

LAB22:    t5 = (t0 + 3864);
    *((int *)t5) = 0;
    xsi_set_current_line(113, ng0);
    t2 = (t0 + 4168);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(114, ng0);

LAB31:    t2 = (t0 + 3880);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB32;
    goto LAB1;

LAB23:    t4 = (t0 + 1152U);
    t11 = xsi_signal_has_event(t4);
    if (t11 == 1)
        goto LAB26;

LAB27:    t10 = (unsigned char)0;

LAB28:    if (t10 == 1)
        goto LAB22;
    else
        goto LAB24;

LAB25:    goto LAB23;

LAB26:    t5 = (t0 + 1192U);
    t6 = *((char **)t5);
    t12 = *((unsigned char *)t6);
    t13 = (t12 == (unsigned char)3);
    t10 = t13;
    goto LAB28;

LAB29:    t5 = (t0 + 3880);
    *((int *)t5) = 0;
    xsi_set_current_line(115, ng0);
    t2 = (t0 + 4168);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(116, ng0);

LAB38:    t2 = (t0 + 3896);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB39;
    goto LAB1;

LAB30:    t4 = (t0 + 1152U);
    t11 = xsi_signal_has_event(t4);
    if (t11 == 1)
        goto LAB33;

LAB34:    t10 = (unsigned char)0;

LAB35:    if (t10 == 1)
        goto LAB29;
    else
        goto LAB31;

LAB32:    goto LAB30;

LAB33:    t5 = (t0 + 1192U);
    t6 = *((char **)t5);
    t12 = *((unsigned char *)t6);
    t13 = (t12 == (unsigned char)3);
    t10 = t13;
    goto LAB35;

LAB36:    t5 = (t0 + 3896);
    *((int *)t5) = 0;
    xsi_set_current_line(117, ng0);
    t2 = (t0 + 4168);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(118, ng0);

LAB45:    *((char **)t1) = &&LAB46;
    goto LAB1;

LAB37:    t4 = (t0 + 1152U);
    t11 = xsi_signal_has_event(t4);
    if (t11 == 1)
        goto LAB40;

LAB41:    t10 = (unsigned char)0;

LAB42:    if (t10 == 1)
        goto LAB36;
    else
        goto LAB38;

LAB39:    goto LAB37;

LAB40:    t5 = (t0 + 1192U);
    t6 = *((char **)t5);
    t12 = *((unsigned char *)t6);
    t13 = (t12 == (unsigned char)3);
    t10 = t13;
    goto LAB42;

LAB43:    goto LAB2;

LAB44:    goto LAB43;

LAB46:    goto LAB44;

}


extern void work_a_2121930834_2372691052_init()
{
	static char *pe[] = {(void *)work_a_2121930834_2372691052_p_0,(void *)work_a_2121930834_2372691052_p_1};
	xsi_register_didat("work_a_2121930834_2372691052", "isim/boundary_scan_chain_testbench_isim_beh.exe.sim/work/a_2121930834_2372691052.didat");
	xsi_register_executes(pe);
}
