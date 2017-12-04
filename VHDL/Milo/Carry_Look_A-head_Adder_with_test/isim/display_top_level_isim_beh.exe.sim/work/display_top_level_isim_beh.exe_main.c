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

char *STD_STANDARD;
char *IEEE_P_1242562249;
char *IEEE_P_2592010699;
char *IEEE_P_3620187407;
char *IEEE_P_3499444699;
char *IEEE_P_3972351953;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    work_a_4214405630_3212880686_init();
    work_a_2064320845_3212880686_init();
    work_a_1257470960_3212880686_init();
    ieee_p_1242562249_init();
    ieee_p_3972351953_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    work_a_3511606049_3212880686_init();
    work_a_2992170542_3212880686_init();
    work_a_1862230895_3990940387_init();
    work_a_4198048548_3212880686_init();
    work_a_1423674932_1181938964_init();
    work_a_2389698933_3990940387_init();
    work_a_2197877842_1181938964_init();
    work_a_4157290836_1181938964_init();
    work_a_2321293710_1181938964_init();


    xsi_register_tops("work_a_2321293710_1181938964");

    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_3972351953 = xsi_get_engine_memory("ieee_p_3972351953");

    return xsi_run_simulation(argc, argv);

}
