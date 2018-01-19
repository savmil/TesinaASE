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
static const char *ng0 = "/media/sf_ASE/VHDL/Boundary_Scan_Chain_per mol/boundary_scan_chain_testbench.vhd";



static void work_a_2121930834_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;

LAB0:    t1 = (t0 + 3424U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(88, ng0);
    t2 = (t0 + 4248);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(89, ng0);
    t2 = (t0 + 2448U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t2 = (t0 + 3232);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(90, ng0);
    t2 = (t0 + 4248);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(91, ng0);
    t2 = (t0 + 2448U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t2 = (t0 + 3232);
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
    unsigned char t8;
    unsigned char t9;
    unsigned char t10;
    unsigned char t11;

LAB0:    t1 = (t0 + 3672U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(98, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 3480);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(99, ng0);
    t2 = (t0 + 4312);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(100, ng0);
    t2 = (t0 + 4376);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(101, ng0);

LAB10:    t2 = (t0 + 3992);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    t5 = (t0 + 3992);
    *((int *)t5) = 0;
    xsi_set_current_line(102, ng0);
    t2 = (t0 + 4440);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(103, ng0);

LAB17:    t2 = (t0 + 4008);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB18;
    goto LAB1;

LAB9:    t4 = (t0 + 1152U);
    t9 = xsi_signal_has_event(t4);
    if (t9 == 1)
        goto LAB12;

LAB13:    t8 = (unsigned char)0;

LAB14:    if (t8 == 1)
        goto LAB8;
    else
        goto LAB10;

LAB11:    goto LAB9;

LAB12:    t5 = (t0 + 1192U);
    t6 = *((char **)t5);
    t10 = *((unsigned char *)t6);
    t11 = (t10 == (unsigned char)3);
    t8 = t11;
    goto LAB14;

LAB15:    t5 = (t0 + 4008);
    *((int *)t5) = 0;
    xsi_set_current_line(104, ng0);
    t2 = (t0 + 4504);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(105, ng0);

LAB24:    t2 = (t0 + 4024);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB25;
    goto LAB1;

LAB16:    t4 = (t0 + 1152U);
    t9 = xsi_signal_has_event(t4);
    if (t9 == 1)
        goto LAB19;

LAB20:    t8 = (unsigned char)0;

LAB21:    if (t8 == 1)
        goto LAB15;
    else
        goto LAB17;

LAB18:    goto LAB16;

LAB19:    t5 = (t0 + 1192U);
    t6 = *((char **)t5);
    t10 = *((unsigned char *)t6);
    t11 = (t10 == (unsigned char)3);
    t8 = t11;
    goto LAB21;

LAB22:    t5 = (t0 + 4024);
    *((int *)t5) = 0;
    xsi_set_current_line(106, ng0);
    t2 = (t0 + 4504);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(107, ng0);

LAB31:    t2 = (t0 + 4040);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB32;
    goto LAB1;

LAB23:    t4 = (t0 + 1152U);
    t9 = xsi_signal_has_event(t4);
    if (t9 == 1)
        goto LAB26;

LAB27:    t8 = (unsigned char)0;

LAB28:    if (t8 == 1)
        goto LAB22;
    else
        goto LAB24;

LAB25:    goto LAB23;

LAB26:    t5 = (t0 + 1192U);
    t6 = *((char **)t5);
    t10 = *((unsigned char *)t6);
    t11 = (t10 == (unsigned char)3);
    t8 = t11;
    goto LAB28;

LAB29:    t5 = (t0 + 4040);
    *((int *)t5) = 0;
    xsi_set_current_line(108, ng0);
    t2 = (t0 + 4504);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(109, ng0);

LAB38:    t2 = (t0 + 4056);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB39;
    goto LAB1;

LAB30:    t4 = (t0 + 1152U);
    t9 = xsi_signal_has_event(t4);
    if (t9 == 1)
        goto LAB33;

LAB34:    t8 = (unsigned char)0;

LAB35:    if (t8 == 1)
        goto LAB29;
    else
        goto LAB31;

LAB32:    goto LAB30;

LAB33:    t5 = (t0 + 1192U);
    t6 = *((char **)t5);
    t10 = *((unsigned char *)t6);
    t11 = (t10 == (unsigned char)3);
    t8 = t11;
    goto LAB35;

LAB36:    t5 = (t0 + 4056);
    *((int *)t5) = 0;
    xsi_set_current_line(110, ng0);
    t2 = (t0 + 4504);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(111, ng0);

LAB45:    t2 = (t0 + 4072);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB46;
    goto LAB1;

LAB37:    t4 = (t0 + 1152U);
    t9 = xsi_signal_has_event(t4);
    if (t9 == 1)
        goto LAB40;

LAB41:    t8 = (unsigned char)0;

LAB42:    if (t8 == 1)
        goto LAB36;
    else
        goto LAB38;

LAB39:    goto LAB37;

LAB40:    t5 = (t0 + 1192U);
    t6 = *((char **)t5);
    t10 = *((unsigned char *)t6);
    t11 = (t10 == (unsigned char)3);
    t8 = t11;
    goto LAB42;

LAB43:    t5 = (t0 + 4072);
    *((int *)t5) = 0;
    xsi_set_current_line(116, ng0);
    t2 = (t0 + 4440);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(117, ng0);

LAB52:    t2 = (t0 + 4088);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB53;
    goto LAB1;

LAB44:    t4 = (t0 + 1152U);
    t9 = xsi_signal_has_event(t4);
    if (t9 == 1)
        goto LAB47;

LAB48:    t8 = (unsigned char)0;

LAB49:    if (t8 == 1)
        goto LAB43;
    else
        goto LAB45;

LAB46:    goto LAB44;

LAB47:    t5 = (t0 + 1192U);
    t6 = *((char **)t5);
    t10 = *((unsigned char *)t6);
    t11 = (t10 == (unsigned char)3);
    t8 = t11;
    goto LAB49;

LAB50:    t5 = (t0 + 4088);
    *((int *)t5) = 0;
    xsi_set_current_line(118, ng0);
    t2 = (t0 + 4440);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(119, ng0);

LAB59:    t2 = (t0 + 4104);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB60;
    goto LAB1;

LAB51:    t4 = (t0 + 1152U);
    t9 = xsi_signal_has_event(t4);
    if (t9 == 1)
        goto LAB54;

LAB55:    t8 = (unsigned char)0;

LAB56:    if (t8 == 1)
        goto LAB50;
    else
        goto LAB52;

LAB53:    goto LAB51;

LAB54:    t5 = (t0 + 1192U);
    t6 = *((char **)t5);
    t10 = *((unsigned char *)t6);
    t11 = (t10 == (unsigned char)3);
    t8 = t11;
    goto LAB56;

LAB57:    t5 = (t0 + 4104);
    *((int *)t5) = 0;
    xsi_set_current_line(120, ng0);
    t2 = (t0 + 4504);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(121, ng0);

LAB66:    t2 = (t0 + 4120);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB67;
    goto LAB1;

LAB58:    t4 = (t0 + 1152U);
    t9 = xsi_signal_has_event(t4);
    if (t9 == 1)
        goto LAB61;

LAB62:    t8 = (unsigned char)0;

LAB63:    if (t8 == 1)
        goto LAB57;
    else
        goto LAB59;

LAB60:    goto LAB58;

LAB61:    t5 = (t0 + 1192U);
    t6 = *((char **)t5);
    t10 = *((unsigned char *)t6);
    t11 = (t10 == (unsigned char)3);
    t8 = t11;
    goto LAB63;

LAB64:    t5 = (t0 + 4120);
    *((int *)t5) = 0;
    xsi_set_current_line(122, ng0);
    t2 = (t0 + 4504);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(123, ng0);

LAB73:    t2 = (t0 + 4136);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB74;
    goto LAB1;

LAB65:    t4 = (t0 + 1152U);
    t9 = xsi_signal_has_event(t4);
    if (t9 == 1)
        goto LAB68;

LAB69:    t8 = (unsigned char)0;

LAB70:    if (t8 == 1)
        goto LAB64;
    else
        goto LAB66;

LAB67:    goto LAB65;

LAB68:    t5 = (t0 + 1192U);
    t6 = *((char **)t5);
    t10 = *((unsigned char *)t6);
    t11 = (t10 == (unsigned char)3);
    t8 = t11;
    goto LAB70;

LAB71:    t5 = (t0 + 4136);
    *((int *)t5) = 0;
    xsi_set_current_line(124, ng0);
    t2 = (t0 + 4504);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(125, ng0);

LAB80:    t2 = (t0 + 4152);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB81;
    goto LAB1;

LAB72:    t4 = (t0 + 1152U);
    t9 = xsi_signal_has_event(t4);
    if (t9 == 1)
        goto LAB75;

LAB76:    t8 = (unsigned char)0;

LAB77:    if (t8 == 1)
        goto LAB71;
    else
        goto LAB73;

LAB74:    goto LAB72;

LAB75:    t5 = (t0 + 1192U);
    t6 = *((char **)t5);
    t10 = *((unsigned char *)t6);
    t11 = (t10 == (unsigned char)3);
    t8 = t11;
    goto LAB77;

LAB78:    t5 = (t0 + 4152);
    *((int *)t5) = 0;
    xsi_set_current_line(126, ng0);
    t2 = (t0 + 4504);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(127, ng0);

LAB87:    t2 = (t0 + 4168);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB88;
    goto LAB1;

LAB79:    t4 = (t0 + 1152U);
    t9 = xsi_signal_has_event(t4);
    if (t9 == 1)
        goto LAB82;

LAB83:    t8 = (unsigned char)0;

LAB84:    if (t8 == 1)
        goto LAB78;
    else
        goto LAB80;

LAB81:    goto LAB79;

LAB82:    t5 = (t0 + 1192U);
    t6 = *((char **)t5);
    t10 = *((unsigned char *)t6);
    t11 = (t10 == (unsigned char)3);
    t8 = t11;
    goto LAB84;

LAB85:    t5 = (t0 + 4168);
    *((int *)t5) = 0;
    xsi_set_current_line(128, ng0);
    t2 = (t0 + 4440);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(129, ng0);

LAB94:    *((char **)t1) = &&LAB95;
    goto LAB1;

LAB86:    t4 = (t0 + 1152U);
    t9 = xsi_signal_has_event(t4);
    if (t9 == 1)
        goto LAB89;

LAB90:    t8 = (unsigned char)0;

LAB91:    if (t8 == 1)
        goto LAB85;
    else
        goto LAB87;

LAB88:    goto LAB86;

LAB89:    t5 = (t0 + 1192U);
    t6 = *((char **)t5);
    t10 = *((unsigned char *)t6);
    t11 = (t10 == (unsigned char)3);
    t8 = t11;
    goto LAB91;

LAB92:    goto LAB2;

LAB93:    goto LAB92;

LAB95:    goto LAB93;

}


extern void work_a_2121930834_2372691052_init()
{
	static char *pe[] = {(void *)work_a_2121930834_2372691052_p_0,(void *)work_a_2121930834_2372691052_p_1};
	xsi_register_didat("work_a_2121930834_2372691052", "isim/boundary_scan_chain_testbench_isim_beh.exe.sim/work/a_2121930834_2372691052.didat");
	xsi_register_executes(pe);
}
