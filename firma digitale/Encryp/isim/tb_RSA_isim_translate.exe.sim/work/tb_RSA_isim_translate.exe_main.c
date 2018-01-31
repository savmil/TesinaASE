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

char *STD_TEXTIO;
char *IEEE_P_2717149903;
char *IEEE_P_2592010699;
char *SIMPRIM_P_0947159679;
char *STD_STANDARD;
char *SIMPRIM_P_4208868169;
char *IEEE_P_1367372525;


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
    simprim_a_3395610110_2220797900_0433961640_init();
    simprim_a_1509725169_3980060181_0433961640_init();
    simprim_a_2880286190_2413300256_0433961640_init();
    simprim_a_4021053430_1957906245_0433961640_init();
    simprim_a_3960525574_1957906245_0433961640_init();
    simprim_a_3370445208_1957906245_0433961640_init();
    simprim_a_4030355287_1957906245_0433961640_init();
    simprim_a_0371756598_1957906245_0433961640_init();
    simprim_a_4063772280_1957906245_0433961640_init();
    simprim_a_4250343463_1957906245_0433961640_init();
    simprim_a_1246049111_1957906245_0433961640_init();
    simprim_a_4283013320_1957906245_0433961640_init();
    simprim_a_0636730483_1957906245_0433961640_init();
    simprim_a_3500459804_1957906245_0433961640_init();
    simprim_a_3691246668_1957906245_0433961640_init();
    simprim_a_1383365951_1957906245_0433961640_init();
    simprim_a_1365149796_1957906245_0433961640_init();
    simprim_a_4040398785_1957906245_0433961640_init();
    simprim_a_0981190682_1957906245_0433961640_init();
    simprim_a_3137074489_1957906245_0433961640_init();
    simprim_a_1193121716_1957906245_0433961640_init();
    simprim_a_1446033826_1957906245_0433961640_init();
    simprim_a_0667644748_1957906245_0433961640_init();
    simprim_a_2559249880_1957906245_0433961640_init();
    simprim_a_4049390796_1957906245_0433961640_init();
    simprim_a_1626464249_1957906245_0433961640_init();
    simprim_a_2381464138_1957906245_0433961640_init();
    simprim_a_1924662107_1957906245_0433961640_init();
    simprim_a_2316793781_1957906245_0433961640_init();
    simprim_a_0251519043_1957906245_0433961640_init();
    simprim_a_0095104692_1957906245_0433961640_init();
    simprim_a_0728689940_1957906245_0433961640_init();
    simprim_a_2835396765_1957906245_0433961640_init();
    simprim_a_2667177899_1957906245_0433961640_init();
    simprim_a_3334641222_1957906245_0433961640_init();
    simprim_a_2858369131_1957906245_0433961640_init();
    simprim_a_3180864628_1957906245_0433961640_init();
    simprim_a_0354851253_1957906245_0433961640_init();
    simprim_a_0060526577_1957906245_0433961640_init();
    simprim_a_3719694673_1957906245_0433961640_init();
    simprim_a_4212618716_1957906245_0433961640_init();
    simprim_a_1285242527_1957906245_0433961640_init();
    simprim_a_3275015133_1957906245_0433961640_init();
    simprim_a_2954413779_1957906245_0433961640_init();
    simprim_a_0692045382_1957906245_0433961640_init();
    simprim_a_0029141076_1957906245_0433961640_init();
    simprim_a_4270375978_1957906245_0433961640_init();
    simprim_a_1153394572_1957906245_0433961640_init();
    simprim_a_3663376740_1957906245_0433961640_init();
    simprim_a_1609905098_1957906245_0433961640_init();
    simprim_a_3652108850_1957906245_0433961640_init();
    simprim_a_0233062082_1957906245_0433961640_init();
    simprim_a_0303622996_1957906245_0433961640_init();
    simprim_a_3904305103_1957906245_0433961640_init();
    simprim_a_2914252894_1957906245_0433961640_init();
    simprim_a_2113383069_1957906245_0433961640_init();
    simprim_a_2356647383_1957906245_0433961640_init();
    simprim_a_0405168105_1957906245_0433961640_init();
    simprim_a_2949001684_1957906245_0433961640_init();
    simprim_a_0286429590_1957906245_0433961640_init();
    simprim_a_3150938253_1957906245_0433961640_init();
    simprim_a_2379759939_1957906245_0433961640_init();
    simprim_a_0020532668_1957906245_0433961640_init();
    simprim_a_1366205156_1957906245_0433961640_init();
    simprim_a_3936907874_4055128042_0433961640_init();
    simprim_a_3592211381_2402822232_0433961640_init();
    simprim_a_0720641496_2402822232_0433961640_init();
    simprim_a_4130118134_1564065396_0433961640_init();
    simprim_a_0860940424_1564065396_0433961640_init();
    simprim_a_1387470219_3879906181_0433961640_init();
    simprim_a_0562922936_1912361408_0433961640_init();
    simprim_a_2870030007_1912361408_0433961640_init();
    simprim_a_2564782328_1912361408_0433961640_init();
    simprim_a_0720627022_1912361408_0433961640_init();
    simprim_a_2195682405_1912361408_0433961640_init();
    simprim_a_1982779802_1912361408_0433961640_init();
    simprim_a_2671273921_1912361408_0433961640_init();
    simprim_a_3481021658_1912361408_0433961640_init();
    simprim_a_2504801820_1912361408_0433961640_init();
    simprim_a_0060070196_1912361408_0433961640_init();
    simprim_a_2697357545_1912361408_0433961640_init();
    simprim_a_0907988929_1912361408_0433961640_init();
    simprim_a_0336057165_1912361408_0433961640_init();
    simprim_a_1487844057_1912361408_0433961640_init();
    simprim_a_3581681735_1912361408_0433961640_init();
    simprim_a_3791409049_1912361408_0433961640_init();
    simprim_a_2901815694_1912361408_0433961640_init();
    simprim_a_0097556878_1912361408_0433961640_init();
    simprim_a_2498699679_1912361408_0433961640_init();
    simprim_a_3624651761_1883126775_0433961640_init();
    simprim_a_3949771542_1883126775_0433961640_init();
    simprim_a_1385652478_1883126775_0433961640_init();
    simprim_a_4244631919_1883126775_0433961640_init();
    simprim_a_2399254907_1883126775_0433961640_init();
    simprim_a_1157900935_1883126775_0433961640_init();
    simprim_a_3702995043_2431929443_0433961640_init();
    simprim_a_1859873907_2082082460_init();
    simprim_a_2027651288_3300903326_0433961640_init();
    simprim_a_3156740924_4150518722_0433961640_init();
    simprim_a_4181367278_3380326129_0433961640_init();
    simprim_a_2155285624_1178295121_0433961640_init();
    work_a_0557709761_0632001823_init();
    work_a_1604604118_2372691052_init();


    xsi_register_tops("work_a_1604604118_2372691052");

    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_2717149903 = xsi_get_engine_memory("ieee_p_2717149903");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    SIMPRIM_P_0947159679 = xsi_get_engine_memory("simprim_p_0947159679");
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    SIMPRIM_P_4208868169 = xsi_get_engine_memory("simprim_p_4208868169");
    IEEE_P_1367372525 = xsi_get_engine_memory("ieee_p_1367372525");

    return xsi_run_simulation(argc, argv);

}