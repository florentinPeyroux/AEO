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
char *IEEE_P_3620187407;
char *UNISIM_P_0947159679;
char *IEEE_P_3499444699;
char *IEEE_P_1242562249;
char *STD_TEXTIO;
char *IEEE_P_0774719531;
char *WORK_P_4079225897;
char *WORK_P_2431924499;
char *UNISIM_P_3222816464;
char *IEEE_P_1367372525;
char *IEEE_P_2717149903;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    ieee_p_1242562249_init();
    ieee_p_0774719531_init();
    std_textio_init();
    ieee_p_2717149903_init();
    ieee_p_1367372525_init();
    work_p_4079225897_init();
    unisim_p_0947159679_init();
    work_a_0762796124_3212880686_init();
    unisim_a_0350208134_1521797606_init();
    unisim_a_2312877582_0635394241_init();
    unisim_a_3055263662_1392679692_init();
    work_a_3795921498_3212880686_init();
    work_a_0768645600_2540666801_init();
    work_a_4249214645_3212880686_init();
    work_a_1290818083_3212880686_init();
    work_a_0946580575_1280263487_init();
    work_p_2431924499_init();
    work_a_2958612305_3212880686_init();
    work_a_4234865043_3212880686_init();
    work_a_2452422755_3212880686_init();
    unisim_a_2661327437_0605893366_init();
    work_a_3138163414_3212880686_init();
    work_a_0768021204_1322094452_init();
    work_a_1734369168_3212880686_init();
    work_a_3152475931_3212880686_init();
    work_a_1136051149_3212880686_init();
    work_a_1492497583_3212880686_init();
    work_a_0737135909_3212880686_init();
    work_a_1279054538_3212880686_init();
    work_a_0535152851_1516540902_init();
    work_a_1556331924_1799128906_init();
    work_a_3743478949_3212880686_init();
    work_a_0673290681_3212880686_init();
    work_a_4124023227_3212880686_init();
    unisim_a_4147737283_2967259552_init();
    unisim_a_3762448000_2971575191_init();
    work_a_3555047783_3212880686_init();
    work_a_0736105500_3212880686_init();
    work_a_2086890402_3212880686_init();
    work_a_3579933465_3212880686_init();
    work_a_3810147011_3212880686_init();
    work_a_0548079887_3212880686_init();
    work_a_1397104654_3212880686_init();
    work_a_3501503323_3212880686_init();
    unisim_a_3870564484_3219970547_init();
    work_a_3965230311_3212880686_init();
    work_a_1862678766_3212880686_init();
    work_a_0124003922_0204290887_init();
    work_a_3532375871_0204290887_init();
    work_a_0264796693_0024109146_init();
    work_a_2790152726_3212880686_init();
    work_a_0690313384_3212880686_init();
    work_a_3427547875_0410308891_init();
    work_a_2043985290_2030911003_init();
    work_a_4258046745_0410308891_init();
    work_a_3189010558_3212880686_init();
    work_a_0202117036_3212880686_init();
    work_a_0178790185_3212880686_init();
    work_a_0808984730_3212880686_init();
    work_a_0939384457_3212880686_init();
    work_a_4200226138_1237899726_init();
    unisim_p_3222816464_init();
    unisim_a_0780662263_2014779070_init();
    unisim_a_0850834979_2152628908_init();
    unisim_a_0714155612_2768510774_init();
    unisim_a_0018426790_2768510774_init();
    unisim_a_1297477671_0429821216_init();
    unisim_a_0128330363_2584565154_init();
    unisim_a_1490675510_1976025627_init();
    work_a_0141943142_0912031422_init();
    work_a_1565669756_3212880686_init();
    work_a_3741737743_3212880686_init();
    work_a_0548005755_2213756369_init();
    unisim_a_2562466605_1496654361_init();
    work_a_1430501046_3212880686_init();
    unisim_a_3519694068_2693788048_init();
    unisim_a_1769350033_2693788048_init();
    work_a_3306851478_3212880686_init();
    work_a_3436103216_3212880686_init();
    work_a_1995955789_3212880686_init();
    unisim_a_0118100819_2639897040_init();
    work_a_2669644083_3212880686_init();
    work_a_0498531477_3212880686_init();
    work_a_0664771846_3212880686_init();
    work_a_0901896254_3212880686_init();


    xsi_register_tops("work_a_0901896254_3212880686");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    UNISIM_P_0947159679 = xsi_get_engine_memory("unisim_p_0947159679");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_0774719531 = xsi_get_engine_memory("ieee_p_0774719531");
    WORK_P_4079225897 = xsi_get_engine_memory("work_p_4079225897");
    WORK_P_2431924499 = xsi_get_engine_memory("work_p_2431924499");
    UNISIM_P_3222816464 = xsi_get_engine_memory("unisim_p_3222816464");
    IEEE_P_1367372525 = xsi_get_engine_memory("ieee_p_1367372525");
    IEEE_P_2717149903 = xsi_get_engine_memory("ieee_p_2717149903");

    return xsi_run_simulation(argc, argv);

}
