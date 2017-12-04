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
static const char *ng0 = "/home/sav/ASE/Davide/Boundary_Scan_Chain/boundary_scan_chain_testbench.vhd";



static void work_a_2121930834_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;

LAB0:    t1 = (t0 + 3384U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(87, ng0);
    t2 = (t0 + 4112);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(88, ng0);
    t2 = (t0 + 2408U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t2 = (t0 + 3192);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(89, ng0);
    t2 = (t0 + 4112);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(90, ng0);
    t2 = (t0 + 2408U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t2 = (t0 + 3192);
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
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    int64 t13;
    int64 t14;

LAB0:    t1 = (t0 + 3632U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(98, ng0);
    t2 = (t0 + 4176);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(99, ng0);
    t2 = (t0 + 4240);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(100, ng0);

LAB6:    t2 = (t0 + 3952);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    t4 = (t0 + 3952);
    *((int *)t4) = 0;
    xsi_set_current_line(104, ng0);
    t2 = (t0 + 6928);
    t4 = (t0 + 4304);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t11 = (t6 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(107, ng0);

LAB13:    t2 = (t0 + 3968);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB14;
    goto LAB1;

LAB5:    t3 = (t0 + 1152U);
    t8 = xsi_signal_has_event(t3);
    if (t8 == 1)
        goto LAB8;

LAB9:    t7 = (unsigned char)0;

LAB10:    if (t7 == 1)
        goto LAB4;
    else
        goto LAB6;

LAB7:    goto LAB5;

LAB8:    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t9 = *((unsigned char *)t5);
    t10 = (t9 == (unsigned char)3);
    t7 = t10;
    goto LAB10;

LAB11:    t4 = (t0 + 3968);
    *((int *)t4) = 0;
    xsi_set_current_line(108, ng0);
    t2 = (t0 + 4176);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(109, ng0);

LAB20:    t2 = (t0 + 3984);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB21;
    goto LAB1;

LAB12:    t3 = (t0 + 1152U);
    t8 = xsi_signal_has_event(t3);
    if (t8 == 1)
        goto LAB15;

LAB16:    t7 = (unsigned char)0;

LAB17:    if (t7 == 1)
        goto LAB11;
    else
        goto LAB13;

LAB14:    goto LAB12;

LAB15:    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t9 = *((unsigned char *)t5);
    t10 = (t9 == (unsigned char)3);
    t7 = t10;
    goto LAB17;

LAB18:    t4 = (t0 + 3984);
    *((int *)t4) = 0;
    xsi_set_current_line(110, ng0);
    t2 = (t0 + 4176);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(111, ng0);

LAB27:    t2 = (t0 + 4000);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB28;
    goto LAB1;

LAB19:    t3 = (t0 + 1152U);
    t8 = xsi_signal_has_event(t3);
    if (t8 == 1)
        goto LAB22;

LAB23:    t7 = (unsigned char)0;

LAB24:    if (t7 == 1)
        goto LAB18;
    else
        goto LAB20;

LAB21:    goto LAB19;

LAB22:    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t9 = *((unsigned char *)t5);
    t10 = (t9 == (unsigned char)3);
    t7 = t10;
    goto LAB24;

LAB25:    t4 = (t0 + 4000);
    *((int *)t4) = 0;
    xsi_set_current_line(112, ng0);
    t2 = (t0 + 4176);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(113, ng0);

LAB34:    t2 = (t0 + 4016);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB35;
    goto LAB1;

LAB26:    t3 = (t0 + 1152U);
    t8 = xsi_signal_has_event(t3);
    if (t8 == 1)
        goto LAB29;

LAB30:    t7 = (unsigned char)0;

LAB31:    if (t7 == 1)
        goto LAB25;
    else
        goto LAB27;

LAB28:    goto LAB26;

LAB29:    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t9 = *((unsigned char *)t5);
    t10 = (t9 == (unsigned char)3);
    t7 = t10;
    goto LAB31;

LAB32:    t4 = (t0 + 4016);
    *((int *)t4) = 0;
    xsi_set_current_line(119, ng0);

LAB41:    t2 = (t0 + 4032);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB42;
    goto LAB1;

LAB33:    t3 = (t0 + 1152U);
    t8 = xsi_signal_has_event(t3);
    if (t8 == 1)
        goto LAB36;

LAB37:    t7 = (unsigned char)0;

LAB38:    if (t7 == 1)
        goto LAB32;
    else
        goto LAB34;

LAB35:    goto LAB33;

LAB36:    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t9 = *((unsigned char *)t5);
    t10 = (t9 == (unsigned char)3);
    t7 = t10;
    goto LAB38;

LAB39:    t4 = (t0 + 4032);
    *((int *)t4) = 0;
    xsi_set_current_line(120, ng0);
    t2 = (t0 + 4240);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(121, ng0);
    t2 = (t0 + 2408U);
    t3 = *((char **)t2);
    t13 = *((int64 *)t3);
    t14 = (t13 * 10);
    t2 = (t0 + 3440);
    xsi_process_wait(t2, t14);

LAB48:    *((char **)t1) = &&LAB49;
    goto LAB1;

LAB40:    t3 = (t0 + 1152U);
    t8 = xsi_signal_has_event(t3);
    if (t8 == 1)
        goto LAB43;

LAB44:    t7 = (unsigned char)0;

LAB45:    if (t7 == 1)
        goto LAB39;
    else
        goto LAB41;

LAB42:    goto LAB40;

LAB43:    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t9 = *((unsigned char *)t5);
    t10 = (t9 == (unsigned char)3);
    t7 = t10;
    goto LAB45;

LAB46:    xsi_set_current_line(122, ng0);

LAB52:    *((char **)t1) = &&LAB53;
    goto LAB1;

LAB47:    goto LAB46;

LAB49:    goto LAB47;

LAB50:    goto LAB2;

LAB51:    goto LAB50;

LAB53:    goto LAB51;

}


extern void work_a_2121930834_2372691052_init()
{
	static char *pe[] = {(void *)work_a_2121930834_2372691052_p_0,(void *)work_a_2121930834_2372691052_p_1};
	xsi_register_didat("work_a_2121930834_2372691052", "isim/boundary_scan_chain_testbench_isim_beh.exe.sim/work/a_2121930834_2372691052.didat");
	xsi_register_executes(pe);
}
