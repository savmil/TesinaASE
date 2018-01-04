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

/* This file is designed for use with ISim build 0x2f00eba5 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Mario/Desktop/BootMultiplier/tb_booth.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_2807594338_1035706684(char *, char *, char *, char *, char *, char *);


static void work_a_3506993612_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 1872U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(84, ng0);
    t2 = (t0 + 2272);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(85, ng0);
    t2 = (t0 + 1316U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 1772);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(86, ng0);
    t2 = (t0 + 2272);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(87, ng0);
    t2 = (t0 + 1316U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 1772);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_3506993612_2372691052_p_1(char *t0)
{
    char t13[16];
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    int64 t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    char *t18;
    char *t19;

LAB0:    t1 = (t0 + 2016U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(95, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 1916);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(97, ng0);
    t2 = (t0 + 1316U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t5 = (t3 * 10);
    t2 = (t0 + 1916);
    xsi_process_wait(t2, t5);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(100, ng0);
    t2 = (t0 + 4260);
    t6 = (t0 + 2308);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(101, ng0);
    t2 = (t0 + 4268);
    t6 = (t0 + 2344);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(102, ng0);
    t3 = (5 * 1000LL);
    t2 = (t0 + 1916);
    xsi_process_wait(t2, t3);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    xsi_set_current_line(103, ng0);
    t2 = (t0 + 2380);
    t4 = (t2 + 32U);
    t6 = *((char **)t4);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(104, ng0);
    t2 = (t0 + 1316U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t5 = (t3 * 2);
    t2 = (t0 + 1916);
    xsi_process_wait(t2, t5);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    xsi_set_current_line(105, ng0);
    t2 = (t0 + 2380);
    t4 = (t2 + 32U);
    t6 = *((char **)t4);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(107, ng0);

LAB22:    t2 = (t0 + 2212);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB20:    t4 = (t0 + 2212);
    *((int *)t4) = 0;
    xsi_set_current_line(108, ng0);
    t3 = (2 * 1000LL);
    t2 = (t0 + 1916);
    xsi_process_wait(t2, t3);

LAB26:    *((char **)t1) = &&LAB27;
    goto LAB1;

LAB21:    t4 = (t0 + 1052U);
    t6 = *((char **)t4);
    t11 = *((unsigned char *)t6);
    t12 = (t11 == (unsigned char)3);
    if (t12 == 1)
        goto LAB20;
    else
        goto LAB22;

LAB23:    goto LAB21;

LAB24:    xsi_set_current_line(110, ng0);
    t2 = (t0 + 1144U);
    t4 = *((char **)t2);
    t2 = (t0 + 592U);
    t6 = *((char **)t2);
    t2 = (t0 + 4156U);
    t7 = (t0 + 684U);
    t8 = *((char **)t7);
    t7 = (t0 + 4172U);
    t9 = ieee_p_1242562249_sub_2807594338_1035706684(IEEE_P_1242562249, t13, t6, t2, t8, t7);
    t10 = (t13 + 12U);
    t14 = *((unsigned int *)t10);
    t15 = (1U * t14);
    t11 = 1;
    if (16U == t15)
        goto LAB30;

LAB31:    t11 = 0;

LAB32:    if (t11 == 0)
        goto LAB28;

LAB29:    xsi_set_current_line(112, ng0);
    t2 = (t0 + 4298);
    t6 = (t0 + 2308);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(113, ng0);
    t2 = (t0 + 4306);
    t6 = (t0 + 2344);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(114, ng0);
    t3 = (5 * 1000LL);
    t2 = (t0 + 1916);
    xsi_process_wait(t2, t3);

LAB38:    *((char **)t1) = &&LAB39;
    goto LAB1;

LAB25:    goto LAB24;

LAB27:    goto LAB25;

LAB28:    t19 = (t0 + 4276);
    xsi_report(t19, 22U, 2);
    goto LAB29;

LAB30:    t16 = 0;

LAB33:    if (t16 < 16U)
        goto LAB34;
    else
        goto LAB32;

LAB34:    t17 = (t4 + t16);
    t18 = (t9 + t16);
    if (*((unsigned char *)t17) != *((unsigned char *)t18))
        goto LAB31;

LAB35:    t16 = (t16 + 1);
    goto LAB33;

LAB36:    xsi_set_current_line(115, ng0);
    t2 = (t0 + 2380);
    t4 = (t2 + 32U);
    t6 = *((char **)t4);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(116, ng0);
    t2 = (t0 + 1316U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t5 = (t3 * 2);
    t2 = (t0 + 1916);
    xsi_process_wait(t2, t5);

LAB42:    *((char **)t1) = &&LAB43;
    goto LAB1;

LAB37:    goto LAB36;

LAB39:    goto LAB37;

LAB40:    xsi_set_current_line(117, ng0);
    t2 = (t0 + 2380);
    t4 = (t2 + 32U);
    t6 = *((char **)t4);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(119, ng0);

LAB46:    t2 = (t0 + 2220);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB47;
    goto LAB1;

LAB41:    goto LAB40;

LAB43:    goto LAB41;

LAB44:    t4 = (t0 + 2220);
    *((int *)t4) = 0;
    xsi_set_current_line(120, ng0);
    t3 = (2 * 1000LL);
    t2 = (t0 + 1916);
    xsi_process_wait(t2, t3);

LAB50:    *((char **)t1) = &&LAB51;
    goto LAB1;

LAB45:    t4 = (t0 + 1052U);
    t6 = *((char **)t4);
    t11 = *((unsigned char *)t6);
    t12 = (t11 == (unsigned char)3);
    if (t12 == 1)
        goto LAB44;
    else
        goto LAB46;

LAB47:    goto LAB45;

LAB48:    xsi_set_current_line(122, ng0);
    t2 = (t0 + 1144U);
    t4 = *((char **)t2);
    t2 = (t0 + 592U);
    t6 = *((char **)t2);
    t2 = (t0 + 4156U);
    t7 = (t0 + 684U);
    t8 = *((char **)t7);
    t7 = (t0 + 4172U);
    t9 = ieee_p_1242562249_sub_2807594338_1035706684(IEEE_P_1242562249, t13, t6, t2, t8, t7);
    t10 = (t13 + 12U);
    t14 = *((unsigned int *)t10);
    t15 = (1U * t14);
    t11 = 1;
    if (16U == t15)
        goto LAB54;

LAB55:    t11 = 0;

LAB56:    if (t11 == 0)
        goto LAB52;

LAB53:    xsi_set_current_line(124, ng0);
    t2 = (t0 + 4336);
    t6 = (t0 + 2308);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(125, ng0);
    t2 = (t0 + 4344);
    t6 = (t0 + 2344);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(126, ng0);
    t3 = (5 * 1000LL);
    t2 = (t0 + 1916);
    xsi_process_wait(t2, t3);

LAB62:    *((char **)t1) = &&LAB63;
    goto LAB1;

LAB49:    goto LAB48;

LAB51:    goto LAB49;

LAB52:    t19 = (t0 + 4314);
    xsi_report(t19, 22U, 2);
    goto LAB53;

LAB54:    t16 = 0;

LAB57:    if (t16 < 16U)
        goto LAB58;
    else
        goto LAB56;

LAB58:    t17 = (t4 + t16);
    t18 = (t9 + t16);
    if (*((unsigned char *)t17) != *((unsigned char *)t18))
        goto LAB55;

LAB59:    t16 = (t16 + 1);
    goto LAB57;

LAB60:    xsi_set_current_line(127, ng0);
    t2 = (t0 + 2380);
    t4 = (t2 + 32U);
    t6 = *((char **)t4);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(128, ng0);
    t2 = (t0 + 1316U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t5 = (t3 * 2);
    t2 = (t0 + 1916);
    xsi_process_wait(t2, t5);

LAB66:    *((char **)t1) = &&LAB67;
    goto LAB1;

LAB61:    goto LAB60;

LAB63:    goto LAB61;

LAB64:    xsi_set_current_line(129, ng0);
    t2 = (t0 + 2380);
    t4 = (t2 + 32U);
    t6 = *((char **)t4);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(131, ng0);

LAB70:    t2 = (t0 + 2228);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB71;
    goto LAB1;

LAB65:    goto LAB64;

LAB67:    goto LAB65;

LAB68:    t4 = (t0 + 2228);
    *((int *)t4) = 0;
    xsi_set_current_line(132, ng0);
    t3 = (2 * 1000LL);
    t2 = (t0 + 1916);
    xsi_process_wait(t2, t3);

LAB74:    *((char **)t1) = &&LAB75;
    goto LAB1;

LAB69:    t4 = (t0 + 1052U);
    t6 = *((char **)t4);
    t11 = *((unsigned char *)t6);
    t12 = (t11 == (unsigned char)3);
    if (t12 == 1)
        goto LAB68;
    else
        goto LAB70;

LAB71:    goto LAB69;

LAB72:    xsi_set_current_line(134, ng0);
    t2 = (t0 + 1144U);
    t4 = *((char **)t2);
    t2 = (t0 + 592U);
    t6 = *((char **)t2);
    t2 = (t0 + 4156U);
    t7 = (t0 + 684U);
    t8 = *((char **)t7);
    t7 = (t0 + 4172U);
    t9 = ieee_p_1242562249_sub_2807594338_1035706684(IEEE_P_1242562249, t13, t6, t2, t8, t7);
    t10 = (t13 + 12U);
    t14 = *((unsigned int *)t10);
    t15 = (1U * t14);
    t11 = 1;
    if (16U == t15)
        goto LAB78;

LAB79:    t11 = 0;

LAB80:    if (t11 == 0)
        goto LAB76;

LAB77:    xsi_set_current_line(136, ng0);

LAB86:    *((char **)t1) = &&LAB87;
    goto LAB1;

LAB73:    goto LAB72;

LAB75:    goto LAB73;

LAB76:    t19 = (t0 + 4352);
    xsi_report(t19, 22U, 2);
    goto LAB77;

LAB78:    t16 = 0;

LAB81:    if (t16 < 16U)
        goto LAB82;
    else
        goto LAB80;

LAB82:    t17 = (t4 + t16);
    t18 = (t9 + t16);
    if (*((unsigned char *)t17) != *((unsigned char *)t18))
        goto LAB79;

LAB83:    t16 = (t16 + 1);
    goto LAB81;

LAB84:    goto LAB2;

LAB85:    goto LAB84;

LAB87:    goto LAB85;

}


extern void work_a_3506993612_2372691052_init()
{
	static char *pe[] = {(void *)work_a_3506993612_2372691052_p_0,(void *)work_a_3506993612_2372691052_p_1};
	xsi_register_didat("work_a_3506993612_2372691052", "isim/tb_booth_isim_beh.exe.sim/work/a_3506993612_2372691052.didat");
	xsi_register_executes(pe);
}
