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
char *IEEE_P_1242562249;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    work_a_3605239827_3212880686_init();
    work_a_2358049308_3212880686_init();
    work_a_0357919962_1181938964_init();
    work_a_2579730525_3990940387_init();
    work_a_0984081595_1181938964_init();
    work_a_2689510552_3212880686_init();
    work_a_1237163313_1181938964_init();
    work_a_0769454328_3212880686_init();
    work_a_3073751259_3990940387_init();
    work_a_3291464017_1181938964_init();
    work_a_4158864252_1181938964_init();
    work_a_3829802261_3990940387_init();
    work_a_4224490273_3212880686_init();
    work_a_3580873330_2372691052_init();


    xsi_register_tops("work_a_3580873330_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");

    return xsi_run_simulation(argc, argv);

}
