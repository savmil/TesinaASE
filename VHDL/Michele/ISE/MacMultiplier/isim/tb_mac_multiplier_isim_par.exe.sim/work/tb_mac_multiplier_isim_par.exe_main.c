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

char *SIMPRIM_P_4208868169;
char *IEEE_P_1367372525;
char *IEEE_P_2592010699;
char *STD_STANDARD;
char *SIMPRIM_P_0947159679;
char *STD_TEXTIO;
char *IEEE_P_2717149903;
char *IEEE_P_1242562249;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    std_textio_init();
    ieee_p_2717149903_init();
    simprim_p_0947159679_init();
    ieee_p_1367372525_init();
    simprim_p_4208868169_init();
    simprim_a_2736823432_2431929443_1234510838_init();
    simprim_a_2736823432_2431929443_1589332752_init();
    simprim_a_2736823432_2431929443_0150903502_init();
    simprim_a_2736823432_2431929443_0061005299_init();
    simprim_a_2736823432_2431929443_0090775320_init();
    simprim_a_2736823432_2431929443_1318882090_init();
    simprim_a_2736823432_2431929443_0039892932_init();
    simprim_a_2736823432_2431929443_0002492829_init();
    simprim_a_2736823432_2431929443_0700682781_init();
    simprim_a_2736823432_2431929443_0760147631_init();
    simprim_a_2736823432_2431929443_0747406488_init();
    simprim_a_2736823432_2431929443_0078345519_init();
    simprim_a_2736823432_2431929443_1441205293_init();
    simprim_a_2736823432_2431929443_0120561985_init();
    simprim_a_2736823432_2431929443_1411737114_init();
    simprim_a_3156740924_4150518722_0078345519_init();
    simprim_a_3156740924_4150518722_1441205293_init();
    simprim_a_3156740924_4150518722_0120561985_init();
    simprim_a_3156740924_4150518722_1411737114_init();
    simprim_a_3327491007_1957906245_0700682781_init();
    simprim_a_2691545103_1957906245_0760147631_init();
    simprim_a_3793035803_1957906245_0671217706_init();
    simprim_a_3306669787_1957906245_0747406488_init();
    simprim_a_3306669787_1957906245_0760147631_init();
    simprim_a_2691545103_1957906245_0747406488_init();
    simprim_a_4181367278_3380326129_0433961640_init();
    simprim_a_2155285624_1178295121_0433961640_init();
    work_a_0431897656_0632001823_init();
    work_a_4167278167_3212880686_init();


    xsi_register_tops("work_a_4167278167_3212880686");

    SIMPRIM_P_4208868169 = xsi_get_engine_memory("simprim_p_4208868169");
    IEEE_P_1367372525 = xsi_get_engine_memory("ieee_p_1367372525");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    SIMPRIM_P_0947159679 = xsi_get_engine_memory("simprim_p_0947159679");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_2717149903 = xsi_get_engine_memory("ieee_p_2717149903");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");

    return xsi_run_simulation(argc, argv);

}
