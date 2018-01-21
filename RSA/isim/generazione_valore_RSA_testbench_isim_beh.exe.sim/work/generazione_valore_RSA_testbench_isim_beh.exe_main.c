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
char *IEEE_P_1242562249;
char *STD_TEXTIO;
char *IEEE_P_3564397177;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    std_textio_init();
    ieee_p_3564397177_init();
    work_a_1913778217_3212880686_init();
    ieee_p_3499444699_init();
    work_a_3726523567_3212880686_init();
    work_a_2311318681_3212880686_init();
    work_a_2252756781_3990940387_init();
    work_a_4072405405_3212880686_init();
    work_a_0930613858_1181938964_init();
    work_a_1819154898_3212880686_init();
    work_a_0918184021_1181938964_init();
    work_a_2735068677_3990940387_init();
    work_a_3112044328_1181938964_init();
    work_a_0624021471_1181938964_init();
    work_a_0971589226_1181938964_init();
    work_a_1597871442_3212880686_init();
    work_a_1637048481_1181938964_init();
    work_a_4096833309_3212880686_init();
    work_a_1446173097_3212880686_init();
    work_a_2190016988_3212880686_init();
    work_a_4043130820_3212880686_init();
    work_a_0765004786_3212880686_init();
    work_a_2340770496_3212880686_init();
    work_a_3184944839_1181938964_init();
    work_a_0375538527_1181938964_init();
    work_a_0180013802_1181938964_init();
    work_a_3097894121_3212880686_init();
    work_a_2506704038_1181938964_init();
    work_a_0538131719_3212880686_init();
    work_a_1994307600_3212880686_init();
    work_a_1987382903_3212880686_init();
    work_a_1933717569_3212880686_init();
    work_a_2114164126_2372691052_init();


    xsi_register_tops("work_a_2114164126_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_3564397177 = xsi_get_engine_memory("ieee_p_3564397177");

    return xsi_run_simulation(argc, argv);

}
