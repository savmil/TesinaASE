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
static const char *ng0 = "C:/DAVIDE/ASE/Esercizi/ISE/Boundary_Scan_Chain/test_counter_mod_2n_testbench.vhd";



static void work_a_2320249668_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;

LAB0:    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(85, ng0);
    t2 = (t0 + 4016);
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
    t2 = (t0 + 3080);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(87, ng0);
    t2 = (t0 + 4016);
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
    t2 = (t0 + 3080);
    xsi_process_wait(t2, t7);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_2320249668_2372691052_p_1(char *t0)
{
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    int64 t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;

LAB0:    t1 = (t0 + 3520U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(96, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 3328);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(98, ng0);
    t2 = (t0 + 2288U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t5 = (t3 * 10);
    t2 = (t0 + 3328);
    xsi_process_wait(t2, t5);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(101, ng0);

LAB14:    t2 = (t0 + 3840);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    t8 = (t0 + 3840);
    *((int *)t8) = 0;
    xsi_set_current_line(102, ng0);
    t2 = (t0 + 4080);
    t4 = (t2 + 56U);
    t8 = *((char **)t4);
    t9 = (t8 + 56U);
    t12 = *((char **)t9);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(103, ng0);
    t2 = (t0 + 4144);
    t4 = (t2 + 56U);
    t8 = *((char **)t4);
    t9 = (t8 + 56U);
    t12 = *((char **)t9);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(104, ng0);

LAB21:    t2 = (t0 + 3856);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB22;
    goto LAB1;

LAB13:    t4 = (t0 + 1152U);
    t7 = xsi_signal_has_event(t4);
    if (t7 == 1)
        goto LAB16;

LAB17:    t6 = (unsigned char)0;

LAB18:    if (t6 == 1)
        goto LAB12;
    else
        goto LAB14;

LAB15:    goto LAB13;

LAB16:    t8 = (t0 + 1192U);
    t9 = *((char **)t8);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)3);
    t6 = t11;
    goto LAB18;

LAB19:    t8 = (t0 + 3856);
    *((int *)t8) = 0;
    xsi_set_current_line(105, ng0);
    t2 = (t0 + 4080);
    t4 = (t2 + 56U);
    t8 = *((char **)t4);
    t9 = (t8 + 56U);
    t12 = *((char **)t9);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(106, ng0);

LAB28:    t2 = (t0 + 3872);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB29;
    goto LAB1;

LAB20:    t4 = (t0 + 1152U);
    t7 = xsi_signal_has_event(t4);
    if (t7 == 1)
        goto LAB23;

LAB24:    t6 = (unsigned char)0;

LAB25:    if (t6 == 1)
        goto LAB19;
    else
        goto LAB21;

LAB22:    goto LAB20;

LAB23:    t8 = (t0 + 1192U);
    t9 = *((char **)t8);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)3);
    t6 = t11;
    goto LAB25;

LAB26:    t8 = (t0 + 3872);
    *((int *)t8) = 0;
    xsi_set_current_line(107, ng0);
    t2 = (t0 + 4080);
    t4 = (t2 + 56U);
    t8 = *((char **)t4);
    t9 = (t8 + 56U);
    t12 = *((char **)t9);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(108, ng0);

LAB35:    t2 = (t0 + 3888);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB36;
    goto LAB1;

LAB27:    t4 = (t0 + 1152U);
    t7 = xsi_signal_has_event(t4);
    if (t7 == 1)
        goto LAB30;

LAB31:    t6 = (unsigned char)0;

LAB32:    if (t6 == 1)
        goto LAB26;
    else
        goto LAB28;

LAB29:    goto LAB27;

LAB30:    t8 = (t0 + 1192U);
    t9 = *((char **)t8);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)3);
    t6 = t11;
    goto LAB32;

LAB33:    t8 = (t0 + 3888);
    *((int *)t8) = 0;
    xsi_set_current_line(109, ng0);
    t2 = (t0 + 4080);
    t4 = (t2 + 56U);
    t8 = *((char **)t4);
    t9 = (t8 + 56U);
    t12 = *((char **)t9);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(110, ng0);

LAB42:    t2 = (t0 + 3904);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB43;
    goto LAB1;

LAB34:    t4 = (t0 + 1152U);
    t7 = xsi_signal_has_event(t4);
    if (t7 == 1)
        goto LAB37;

LAB38:    t6 = (unsigned char)0;

LAB39:    if (t6 == 1)
        goto LAB33;
    else
        goto LAB35;

LAB36:    goto LAB34;

LAB37:    t8 = (t0 + 1192U);
    t9 = *((char **)t8);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)3);
    t6 = t11;
    goto LAB39;

LAB40:    t8 = (t0 + 3904);
    *((int *)t8) = 0;
    xsi_set_current_line(112, ng0);
    t2 = (t0 + 4144);
    t4 = (t2 + 56U);
    t8 = *((char **)t4);
    t9 = (t8 + 56U);
    t12 = *((char **)t9);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(113, ng0);
    t2 = (t0 + 4208);
    t4 = (t2 + 56U);
    t8 = *((char **)t4);
    t9 = (t8 + 56U);
    t12 = *((char **)t9);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(114, ng0);

LAB49:    t2 = (t0 + 3920);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB50;
    goto LAB1;

LAB41:    t4 = (t0 + 1152U);
    t7 = xsi_signal_has_event(t4);
    if (t7 == 1)
        goto LAB44;

LAB45:    t6 = (unsigned char)0;

LAB46:    if (t6 == 1)
        goto LAB40;
    else
        goto LAB42;

LAB43:    goto LAB41;

LAB44:    t8 = (t0 + 1192U);
    t9 = *((char **)t8);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)3);
    t6 = t11;
    goto LAB46;

LAB47:    t8 = (t0 + 3920);
    *((int *)t8) = 0;
    xsi_set_current_line(115, ng0);
    t2 = (t0 + 4208);
    t4 = (t2 + 56U);
    t8 = *((char **)t4);
    t9 = (t8 + 56U);
    t12 = *((char **)t9);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(116, ng0);

LAB56:    t2 = (t0 + 3936);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB57;
    goto LAB1;

LAB48:    t4 = (t0 + 1152U);
    t7 = xsi_signal_has_event(t4);
    if (t7 == 1)
        goto LAB51;

LAB52:    t6 = (unsigned char)0;

LAB53:    if (t6 == 1)
        goto LAB47;
    else
        goto LAB49;

LAB50:    goto LAB48;

LAB51:    t8 = (t0 + 1192U);
    t9 = *((char **)t8);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)3);
    t6 = t11;
    goto LAB53;

LAB54:    t8 = (t0 + 3936);
    *((int *)t8) = 0;
    xsi_set_current_line(117, ng0);
    t2 = (t0 + 4144);
    t4 = (t2 + 56U);
    t8 = *((char **)t4);
    t9 = (t8 + 56U);
    t12 = *((char **)t9);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(119, ng0);

LAB63:    *((char **)t1) = &&LAB64;
    goto LAB1;

LAB55:    t4 = (t0 + 1152U);
    t7 = xsi_signal_has_event(t4);
    if (t7 == 1)
        goto LAB58;

LAB59:    t6 = (unsigned char)0;

LAB60:    if (t6 == 1)
        goto LAB54;
    else
        goto LAB56;

LAB57:    goto LAB55;

LAB58:    t8 = (t0 + 1192U);
    t9 = *((char **)t8);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)3);
    t6 = t11;
    goto LAB60;

LAB61:    goto LAB2;

LAB62:    goto LAB61;

LAB64:    goto LAB62;

}


extern void work_a_2320249668_2372691052_init()
{
	static char *pe[] = {(void *)work_a_2320249668_2372691052_p_0,(void *)work_a_2320249668_2372691052_p_1};
	xsi_register_didat("work_a_2320249668_2372691052", "isim/test_counter_mod_2n_testbench_isim_beh.exe.sim/work/a_2320249668_2372691052.didat");
	xsi_register_executes(pe);
}
