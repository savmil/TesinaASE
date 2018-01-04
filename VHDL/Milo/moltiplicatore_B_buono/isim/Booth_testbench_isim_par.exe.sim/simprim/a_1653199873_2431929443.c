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
extern char *IEEE_P_2717149903;
extern char *IEEE_P_2592010699;
extern char *SIMPRIM_P_4208868169;

unsigned char ieee_p_2592010699_sub_381452733968206518_503743352(char *, unsigned char );
void ieee_p_2717149903_sub_15516143898403869343_2101202839(char *, char *, char *, unsigned int , unsigned int , char *, char *, char *, char *, unsigned char , char *, char *, char *, unsigned char , unsigned char , unsigned char , unsigned char , unsigned char , unsigned char , unsigned char );
void ieee_p_2717149903_sub_3475463994136715728_2101202839(char *, char *, char *, unsigned int , unsigned int , char *, char *, unsigned int , unsigned int , char *);
void simprim_p_4208868169_sub_11825782690353658018_3008368149(char *, char *, char *, char *, unsigned int , unsigned int , char *, char *, char *, char *, unsigned char , unsigned char , int64 , unsigned char , unsigned char );


static void simprim_a_1653199873_2431929443_p_0(char *t0)
{
    char t7[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;

LAB0:    t1 = (t0 + 4152);
    t2 = (t0 + 1576U);
    t3 = (t0 + 5040);
    t4 = (t0 + 1416U);
    t5 = (t0 + 2152U);
    t6 = *((char **)t5);
    memcpy(t7, t6, 16U);
    ieee_p_2717149903_sub_3475463994136715728_2101202839(IEEE_P_2717149903, t1, t2, 0U, 0U, t3, t4, 0U, 0U, t7);
    t5 = (t0 + 4912);
    *((int *)t5) = 1;

LAB1:    return;
}

static void simprim_a_1653199873_2431929443_p_1(char *t0)
{
    char t41[16];
    char t50[16];
    char t51[16];
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    unsigned char t14;
    unsigned char t15;
    char *t16;
    unsigned char t17;
    unsigned char t18;
    char *t19;
    unsigned char t20;
    unsigned char t21;
    int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    int64 t26;
    int64 t27;
    int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    int64 t32;
    int64 t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t42;
    char *t43;
    int t44;
    unsigned int t45;
    char *t46;
    char *t47;
    char *t48;
    int64 t49;
    char *t52;
    char *t53;

LAB0:    t1 = (t0 + 4592U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 1616U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = ieee_p_2592010699_sub_381452733968206518_503743352(IEEE_P_2592010699, t4);
    t2 = (t0 + 3112U);
    t6 = *((char **)t2);
    t2 = (t6 + 0);
    *((unsigned char *)t2) = t5;
    t2 = (t0 + 3232U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)1);
    if (t5 != 0)
        goto LAB4;

LAB6:    t2 = (t0 + 2272U);
    t3 = *((char **)t2);
    t22 = ((unsigned char)0 - 0);
    t23 = (t22 * 1);
    t24 = (8U * t23);
    t25 = (0 + t24);
    t2 = (t3 + t25);
    t26 = *((int64 *)t2);
    t6 = (t0 + 2392U);
    t10 = *((char **)t6);
    t27 = *((int64 *)t10);
    t5 = (t26 < t27);
    if (t5 == 1)
        goto LAB23;

LAB24:    t6 = (t0 + 2272U);
    t13 = *((char **)t6);
    t28 = ((unsigned char)1 - 0);
    t29 = (t28 * 1);
    t30 = (8U * t29);
    t31 = (0 + t30);
    t6 = (t13 + t31);
    t32 = *((int64 *)t6);
    t16 = (t0 + 2392U);
    t19 = *((char **)t16);
    t33 = *((int64 *)t19);
    t7 = (t32 < t33);
    t4 = t7;

LAB25:    if (t4 != 0)
        goto LAB20;

LAB22:    t16 = (t0 + 4400);
    t34 = (t0 + 2992U);
    t35 = *((char **)t34);
    t34 = (t35 + 0);
    t36 = (t0 + 1256U);
    t37 = (t0 + 5104);
    t38 = (t0 + 2752U);
    t39 = *((char **)t38);
    t38 = (t0 + 8220);
    t42 = (t41 + 0U);
    t43 = (t42 + 0U);
    *((int *)t43) = 1;
    t43 = (t42 + 4U);
    *((int *)t43) = 1;
    t43 = (t42 + 8U);
    *((int *)t43) = 1;
    t44 = (1 - 1);
    t45 = (t44 * 1);
    t45 = (t45 + 1);
    t43 = (t42 + 12U);
    *((unsigned int *)t43) = t45;
    t43 = (t0 + 3112U);
    t46 = *((char **)t43);
    t8 = *((unsigned char *)t46);
    t43 = (t0 + 2872U);
    t47 = *((char **)t43);
    t9 = *((unsigned char *)t47);
    t43 = (t0 + 2392U);
    t48 = *((char **)t43);
    t49 = *((int64 *)t48);
    simprim_p_4208868169_sub_11825782690353658018_3008368149(SIMPRIM_P_4208868169, t16, t34, t36, 0U, 0U, t37, t39, t38, t41, t8, t9, t49, (unsigned char)0, (unsigned char)1);

LAB21:
LAB5:    t2 = (t0 + 2992U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)0);
    if (t5 != 0)
        goto LAB26;

LAB28:
LAB27:    t2 = (t0 + 2992U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)1);
    if (t5 != 0)
        goto LAB29;

LAB31:
LAB30:    t2 = (t0 + 1616U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = ieee_p_2592010699_sub_381452733968206518_503743352(IEEE_P_2592010699, t4);
    t2 = (t0 + 2512U);
    t6 = *((char **)t2);
    t2 = (t6 + 0);
    *((unsigned char *)t2) = t5;
    t2 = (t0 + 4400);
    t3 = (t0 + 1256U);
    t6 = (t0 + 5104);
    t10 = (t0 + 2632U);
    t13 = *((char **)t10);
    t10 = (t0 + 8221);
    t19 = (t41 + 0U);
    t34 = (t19 + 0U);
    *((int *)t34) = 1;
    t34 = (t19 + 4U);
    *((int *)t34) = 1;
    t34 = (t19 + 8U);
    *((int *)t34) = 1;
    t22 = (1 - 1);
    t23 = (t22 * 1);
    t23 = (t23 + 1);
    t34 = (t19 + 12U);
    *((unsigned int *)t34) = t23;
    t34 = (t0 + 2512U);
    t35 = *((char **)t34);
    t4 = *((unsigned char *)t35);
    t34 = xsi_get_transient_memory(32U);
    memset(t34, 0, 32U);
    t36 = t34;
    t28 = (0 - 0);
    t23 = (t28 * 1);
    t24 = (32U * t23);
    t37 = (t36 + t24);
    t38 = t37;
    t39 = (t0 + 1576U);
    t26 = xsi_signal_get_last_event(t39);
    *((int64 *)t38) = t26;
    t40 = (t37 + 8U);
    t42 = (t0 + 2272U);
    t43 = *((char **)t42);
    memcpy(t40, t43, 16U);
    t42 = (t37 + 24U);
    *((unsigned char *)t42) = (unsigned char)1;
    t46 = (t50 + 0U);
    t47 = (t46 + 0U);
    *((int *)t47) = 0;
    t47 = (t46 + 4U);
    *((int *)t47) = 0;
    t47 = (t46 + 8U);
    *((int *)t47) = 1;
    t44 = (0 - 0);
    t25 = (t44 * 1);
    t25 = (t25 + 1);
    t47 = (t46 + 12U);
    *((unsigned int *)t47) = t25;
    t47 = ((IEEE_P_2717149903) + 1288U);
    t48 = *((char **)t47);
    memcpy(t51, t48, 16U);
    t47 = (t0 + 1912U);
    t52 = *((char **)t47);
    t5 = *((unsigned char *)t52);
    t47 = (t0 + 2032U);
    t53 = *((char **)t47);
    t7 = *((unsigned char *)t53);
    ieee_p_2717149903_sub_15516143898403869343_2101202839(IEEE_P_2717149903, t2, t3, 0U, 0U, t6, t13, t10, t41, t4, t34, t50, t51, (unsigned char)3, t5, t7, (unsigned char)1, (unsigned char)0, (unsigned char)0, (unsigned char)0);

LAB34:    t2 = (t0 + 4960);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB35;

LAB1:    return;
LAB4:
LAB9:    t2 = (t0 + 4928);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB10;
    goto LAB1;

LAB7:    t6 = (t0 + 4928);
    *((int *)t6) = 0;
    t2 = (t0 + 3232U);
    t3 = *((char **)t2);
    t2 = (t3 + 0);
    *((unsigned char *)t2) = (unsigned char)0;
    goto LAB5;

LAB8:    t6 = (t0 + 1616U);
    t10 = *((char **)t6);
    t11 = *((unsigned char *)t10);
    t12 = (t11 == (unsigned char)2);
    if (t12 == 1)
        goto LAB17;

LAB18:    t6 = (t0 + 1616U);
    t13 = *((char **)t6);
    t14 = *((unsigned char *)t13);
    t15 = (t14 == (unsigned char)3);
    t9 = t15;

LAB19:    if (t9 == 1)
        goto LAB14;

LAB15:    t6 = (t0 + 1616U);
    t16 = *((char **)t6);
    t17 = *((unsigned char *)t16);
    t18 = (t17 == (unsigned char)6);
    t8 = t18;

LAB16:    if (t8 == 1)
        goto LAB11;

LAB12:    t6 = (t0 + 1616U);
    t19 = *((char **)t6);
    t20 = *((unsigned char *)t19);
    t21 = (t20 == (unsigned char)7);
    t7 = t21;

LAB13:    if (t7 == 1)
        goto LAB7;
    else
        goto LAB9;

LAB10:    goto LAB8;

LAB11:    t7 = (unsigned char)1;
    goto LAB13;

LAB14:    t8 = (unsigned char)1;
    goto LAB16;

LAB17:    t9 = (unsigned char)1;
    goto LAB19;

LAB20:    goto LAB21;

LAB23:    t4 = (unsigned char)1;
    goto LAB25;

LAB26:    t2 = (t0 + 2512U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = ieee_p_2592010699_sub_381452733968206518_503743352(IEEE_P_2592010699, t7);
    t2 = (t0 + 2872U);
    t10 = *((char **)t2);
    t2 = (t10 + 0);
    *((unsigned char *)t2) = t8;
    goto LAB27;

LAB29:    t2 = (t0 + 2992U);
    t6 = *((char **)t2);
    t2 = (t6 + 0);
    *((unsigned char *)t2) = (unsigned char)0;
    goto LAB30;

LAB32:    t3 = (t0 + 4960);
    *((int *)t3) = 0;
    goto LAB2;

LAB33:    goto LAB32;

LAB35:    goto LAB33;

}


extern void simprim_a_1653199873_2431929443_0001130173_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_0001130173", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_0001130173.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_1504178867_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_1504178867", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_1504178867.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_3740396074_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_3740396074", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_3740396074.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_0115014742_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_0115014742", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_0115014742.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_2428346191_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_2428346191", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_2428346191.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_2470005537_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_2470005537", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_2470005537.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_3508588965_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_3508588965", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_3508588965.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_2441082232_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_2441082232", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_2441082232.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_0060156627_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_0060156627", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_0060156627.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_1335828975_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_1335828975", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_1335828975.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_1276900737_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_1276900737", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_1276900737.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_0119051873_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_0119051873", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_0119051873.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_1255159658_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_1255159658", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_1255159658.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_3368630646_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_3368630646", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_3368630646.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_3485503914_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_3485503914", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_3485503914.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_2173494479_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_2173494479", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_2173494479.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_3448123379_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_3448123379", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_3448123379.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_1234510838_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_1234510838", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_1234510838.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_1318882090_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_1318882090", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_1318882090.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_3196847457_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_3196847457", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_3196847457.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_2121743115_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_2121743115", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_2121743115.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_3091711882_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_3091711882", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_3091711882.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_0016490735_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_0016490735", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_0016490735.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_0074898525_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_0074898525", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_0074898525.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_3036287273_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_3036287273", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_3036287273.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_3775825065_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_3775825065", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_3775825065.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_3040377630_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_3040377630", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_3040377630.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_3982191432_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_3982191432", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_3982191432.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_1574413884_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_1574413884", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_1574413884.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_0020564696_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_0020564696", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_0020564696.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_3215349268_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_3215349268", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_3215349268.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_3185633357_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_3185633357", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_3185633357.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_1603344485_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_1603344485", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_1603344485.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_1524502240_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_1524502240", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_1524502240.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_0039892932_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_0039892932", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_0039892932.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_0150903502_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_0150903502", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_0150903502.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_0241438413_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_0241438413", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_0241438413.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_2409608567_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_2409608567", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_2409608567.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_3372962625_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_3372962625", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_3372962625.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_2465931542_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_2465931542", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_2465931542.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_3398403887_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_3398403887", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_3398403887.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_1512253149_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_1512253149", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_1512253149.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_1483053188_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_1483053188", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_1483053188.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_2388516672_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_2388516672", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_2388516672.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_3744694301_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_3744694301", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_3744694301.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_2256882707_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_2256882707", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_2256882707.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_1306107830_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_1306107830", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_1306107830.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_2231474301_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_2231474301", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_2231474301.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_1153656530_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_1153656530", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_1153656530.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_1314737112_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_1314737112", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_1314737112.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_3281354315_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_3281354315", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_3281354315.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_0039289060_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_0039289060", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_0039289060.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_3504520082_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_3504520082", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_3504520082.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_2269586980_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_2269586980", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_2269586980.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_1563069953_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_1563069953", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_1563069953.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_2545170323_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_2545170323", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_2545170323.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_1157696741_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_1157696741", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_1157696741.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_0371846625_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_0371846625", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_0371846625.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_0444334592_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_0444334592", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_0444334592.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_0401311702_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_0401311702", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_0401311702.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_0090056760_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_0090056760", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_0090056760.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_2227434058_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_2227434058", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_2227434058.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_0147434990_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_0147434990", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_0147434990.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_3715448388_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_3715448388", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_3715448388.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_0342840248_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_0342840248", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_0342840248.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_3456301981_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_3456301981", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_3456301981.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_0151767001_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_0151767001", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_0151767001.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_1541491946_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_1541491946", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_1541491946.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_3703002227_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_3703002227", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_3703002227.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_3427026372_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_3427026372", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_3427026372.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_0747406488_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_0747406488", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_0747406488.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_2515700170_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_2515700170", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_2515700170.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_0785005249_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_0785005249", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_0785005249.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_0363673999_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_0363673999", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_0363673999.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_0061005299_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_0061005299", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_0061005299.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_0002492829_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_0002492829", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_0002492829.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_0078345519_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_0078345519", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_0078345519.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_1513502626_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_1513502626", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_1513502626.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_0090775320_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_0090775320", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_0090775320.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_3969450367_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_3969450367", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_3969450367.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_0120561985_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_0120561985", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_0120561985.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_3771526814_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_3771526814", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_3771526814.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_1411737114_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_1411737114", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_1411737114.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_3859229813_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_3859229813", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_3859229813.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_1441205293_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_1441205293", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_1441205293.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_3850631195_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_3850631195", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_3850631195.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_1589332752_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_1589332752", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_1589332752.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_3829502508_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_3829502508", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_3829502508.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_1483770363_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_1483770363", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_1483770363.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_1560147273_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_1560147273", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_1560147273.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_1504895948_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_1504895948", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_1504895948.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1653199873_2431929443_1601773863_init()
{
	static char *pe[] = {(void *)simprim_a_1653199873_2431929443_p_0,(void *)simprim_a_1653199873_2431929443_p_1};
	xsi_register_didat("simprim_a_1653199873_2431929443_1601773863", "isim/Booth_testbench_isim_par.exe.sim/simprim/a_1653199873_2431929443_1601773863.didat");
	xsi_register_executes(pe);
}
