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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *IEEE_P_1242562249;
char *STD_STANDARD;
char *IEEE_P_3972351953;
char *IEEE_P_3499444699;
char *IEEE_P_3620187407;
char *WORK_P_3647430093;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    work_p_3647430093_init();
    ieee_p_1242562249_init();
    work_a_2809054666_3212880686_init();
    work_a_1110216066_3212880686_init();
    work_a_0173281987_1181938964_init();
    work_a_4186995871_3990940387_init();
    work_a_2153090116_3990940387_init();
    work_a_2051049084_1181938964_init();
    work_a_3490035719_1181938964_init();
    work_a_3532872069_1181938964_init();
    work_a_1567404363_3990940387_init();
    work_a_2120252379_1516540902_init();
    work_a_3769354962_1516540902_init();
    work_a_4201611241_1273893462_init();
    ieee_p_3972351953_init();
    work_a_3408059710_3212880686_init();
    work_a_0568425658_1181938964_init();
    work_a_2494104469_3212880686_init();
    work_a_4033663260_3990940387_init();
    work_a_3038450533_3212880686_init();
    work_a_3705519221_3212880686_init();
    work_a_1268656262_3990940387_init();
    work_a_0834555087_3990940387_init();
    work_a_3504375680_1181938964_init();
    work_a_2937881628_1181938964_init();
    work_a_3911480383_3990940387_init();
    work_a_2038529799_1181938964_init();
    work_a_0030862998_1181938964_init();
    work_a_1604604118_2372691052_init();


    xsi_register_tops("work_a_1604604118_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_3972351953 = xsi_get_engine_memory("ieee_p_3972351953");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    WORK_P_3647430093 = xsi_get_engine_memory("work_p_3647430093");

    return xsi_run_simulation(argc, argv);

}
