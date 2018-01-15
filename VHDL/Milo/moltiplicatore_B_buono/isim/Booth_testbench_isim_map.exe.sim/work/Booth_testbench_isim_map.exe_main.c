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


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    std_textio_init();
    ieee_p_2717149903_init();
    simprim_p_0947159679_init();
    ieee_p_1367372525_init();
    simprim_p_4208868169_init();
    simprim_a_1653199873_2431929443_0433961640_init();
    simprim_a_3156740924_4150518722_0433961640_init();
    simprim_a_1452489327_2810828532_init();
    simprim_a_1145954769_2082082460_init();
    simprim_a_3936907874_4055128042_0433961640_init();
    simprim_a_1621802012_1957906245_0433961640_init();
    simprim_a_3279087018_1957906245_0433961640_init();
    simprim_a_2585453647_1957906245_0433961640_init();
    simprim_a_0650005652_1957906245_0433961640_init();
    simprim_a_3327491007_1957906245_0433961640_init();
    simprim_a_3691246668_1957906245_0433961640_init();
    simprim_a_3921003744_1957906245_0433961640_init();
    simprim_a_2707860152_1957906245_0433961640_init();
    simprim_a_0072023503_1957906245_0433961640_init();
    simprim_a_1947206244_1957906245_0433961640_init();
    simprim_a_0888552548_1957906245_0433961640_init();
    simprim_a_3687026489_1957906245_0433961640_init();
    simprim_a_0369380726_1957906245_0433961640_init();
    simprim_a_2846646054_1957906245_0433961640_init();
    simprim_a_2010757945_1957906245_0433961640_init();
    simprim_a_0969694248_1957906245_0433961640_init();
    simprim_a_0041226505_1957906245_0433961640_init();
    simprim_a_1335093589_1957906245_0433961640_init();
    simprim_a_3931427772_1957906245_0433961640_init();
    simprim_a_1581010608_1957906245_0433961640_init();
    simprim_a_3834619052_1957906245_0433961640_init();
    simprim_a_1011255764_1957906245_0433961640_init();
    simprim_a_3491128431_1957906245_0433961640_init();
    simprim_a_2713960649_1957906245_0433961640_init();
    simprim_a_2667177899_1957906245_0433961640_init();
    simprim_a_3559886023_1957906245_0433961640_init();
    simprim_a_2863015396_1957906245_0433961640_init();
    simprim_a_3168145902_1957906245_0433961640_init();
    simprim_a_2211724692_1957906245_0433961640_init();
    simprim_a_0499434026_1957906245_0433961640_init();
    simprim_a_0058442413_1957906245_0433961640_init();
    simprim_a_1492830201_1957906245_0433961640_init();
    simprim_a_0238887558_1957906245_0433961640_init();
    simprim_a_2436441877_1957906245_0433961640_init();
    simprim_a_2935367969_1957906245_0433961640_init();
    simprim_a_3840208329_1957906245_0433961640_init();
    simprim_a_3934223591_1957906245_0433961640_init();
    simprim_a_1094762461_1957906245_0433961640_init();
    simprim_a_2951689095_1957906245_0433961640_init();
    simprim_a_0971125344_1957906245_0433961640_init();
    simprim_a_1023003180_1957906245_0433961640_init();
    simprim_a_3925590799_1957906245_0433961640_init();
    simprim_a_0763864647_1957906245_0433961640_init();
    simprim_a_3942226005_1957906245_0433961640_init();
    simprim_a_4130118134_1564065396_0433961640_init();
    simprim_a_0860940424_1564065396_0433961640_init();
    simprim_a_3395610110_2220797900_0433961640_init();
    simprim_a_1509725169_3980060181_0433961640_init();
    simprim_a_4181367278_3380326129_0433961640_init();
    simprim_a_2155285624_1178295121_0433961640_init();
    work_a_3307581099_0632001823_init();
    work_a_0271826487_2372691052_init();


    xsi_register_tops("work_a_0271826487_2372691052");

    SIMPRIM_P_4208868169 = xsi_get_engine_memory("simprim_p_4208868169");
    IEEE_P_1367372525 = xsi_get_engine_memory("ieee_p_1367372525");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    SIMPRIM_P_0947159679 = xsi_get_engine_memory("simprim_p_0947159679");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_2717149903 = xsi_get_engine_memory("ieee_p_2717149903");

    return xsi_run_simulation(argc, argv);

}
