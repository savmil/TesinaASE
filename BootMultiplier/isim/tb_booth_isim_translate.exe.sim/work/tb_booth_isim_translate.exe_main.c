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
char *SIMPRIM_P_0947159679;
char *IEEE_P_2717149903;
char *STD_TEXTIO;
char *SIMPRIM_P_4208868169;
char *IEEE_P_1367372525;
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
    simprim_a_4130118134_1564065396_0433961640_init();
    simprim_a_0517647416_1912361408_0433961640_init();
    simprim_a_0406293034_1912361408_0433961640_init();
    simprim_a_3934400367_1912361408_0433961640_init();
    simprim_a_2787856123_1912361408_0433961640_init();
    simprim_a_1145280598_1912361408_0433961640_init();
    simprim_a_0562922936_1912361408_0433961640_init();
    simprim_a_0060070196_1912361408_0433961640_init();
    simprim_a_2048821501_1912361408_0433961640_init();
    simprim_a_2870030007_1912361408_0433961640_init();
    simprim_a_2697357545_1912361408_0433961640_init();
    simprim_a_1592439395_1912361408_0433961640_init();
    simprim_a_1385652478_1883126775_0433961640_init();
    simprim_a_3482878344_1883126775_0433961640_init();
    simprim_a_3624651761_1883126775_0433961640_init();
    simprim_a_1032739068_1957906245_0433961640_init();
    simprim_a_1460551814_1957906245_0433961640_init();
    simprim_a_2667177899_1957906245_0433961640_init();
    simprim_a_2436441877_1957906245_0433961640_init();
    simprim_a_0901859466_1957906245_0433961640_init();
    simprim_a_1179782780_1957906245_0433961640_init();
    simprim_a_2159603384_1957906245_0433961640_init();
    simprim_a_0020532668_1957906245_0433961640_init();
    simprim_a_1338295913_1957906245_0433961640_init();
    simprim_a_0889293391_1957906245_0433961640_init();
    simprim_a_1156244920_1957906245_0433961640_init();
    simprim_a_2002949504_1957906245_0433961640_init();
    simprim_a_0499434026_1957906245_0433961640_init();
    simprim_a_0354851253_1957906245_0433961640_init();
    simprim_a_2846646054_1957906245_0433961640_init();
    simprim_a_2896604705_1957906245_0433961640_init();
    simprim_a_0441106096_1957906245_0433961640_init();
    simprim_a_2128125653_1957906245_0433961640_init();
    simprim_a_3956876729_1957906245_0433961640_init();
    simprim_a_3824196641_1957906245_0433961640_init();
    simprim_a_0026674959_1957906245_0433961640_init();
    simprim_a_3756983195_1957906245_0433961640_init();
    simprim_a_2884489581_1957906245_0433961640_init();
    simprim_a_4001446545_1957906245_0433961640_init();
    simprim_a_2954413779_1957906245_0433961640_init();
    simprim_a_3513162404_1957906245_0433961640_init();
    simprim_a_3416154084_1957906245_0433961640_init();
    simprim_a_3702995043_2431929443_0433961640_init();
    simprim_a_3936907874_4055128042_0433961640_init();
    simprim_a_1859873907_2082082460_init();
    simprim_a_2027651288_3300903326_0433961640_init();
    simprim_a_3156740924_4150518722_0433961640_init();
    simprim_a_3395610110_2220797900_0433961640_init();
    simprim_a_1509725169_3980060181_0433961640_init();
    simprim_a_4181367278_3380326129_0433961640_init();
    simprim_a_2155285624_1178295121_0433961640_init();
    work_a_3307581099_0632001823_init();
    work_a_3506993612_2372691052_init();


    xsi_register_tops("work_a_3506993612_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    SIMPRIM_P_0947159679 = xsi_get_engine_memory("simprim_p_0947159679");
    IEEE_P_2717149903 = xsi_get_engine_memory("ieee_p_2717149903");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    SIMPRIM_P_4208868169 = xsi_get_engine_memory("simprim_p_4208868169");
    IEEE_P_1367372525 = xsi_get_engine_memory("ieee_p_1367372525");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");

    return xsi_run_simulation(argc, argv);

}
