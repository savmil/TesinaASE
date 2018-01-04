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
char *STD_STANDARD;
char *IEEE_P_3499444699;
char *IEEE_P_3620187407;
char *WORK_P_0502699902;
char *IEEE_P_1242562249;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    work_p_0502699902_init();
    ieee_p_3499444699_init();
    work_a_2333151514_3990940387_init();
    ieee_p_3620187407_init();
    work_a_3112044328_3990940387_init();
    work_a_1714279634_1181938964_init();
    work_a_2900737350_1181938964_init();
    work_a_0010332520_3212880686_init();
    work_a_0737135909_3990940387_init();
    work_a_1106649265_3212880686_init();
    work_a_2299082355_1181938964_init();
    work_a_1530886627_3212880686_init();
    work_a_4249383511_3212880686_init();
    work_a_0192888165_3212880686_init();
    work_a_3853510154_3212880686_init();
    work_a_0477168034_1181938964_init();
    work_a_3506993612_2372691052_init();


    xsi_register_tops("work_a_3506993612_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    WORK_P_0502699902 = xsi_get_engine_memory("work_p_0502699902");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");

    return xsi_run_simulation(argc, argv);

}
