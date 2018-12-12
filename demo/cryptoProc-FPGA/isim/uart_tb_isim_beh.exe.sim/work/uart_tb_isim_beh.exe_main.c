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

char *IEEE_P_1242562249;
char *IEEE_P_2592010699;
char *STD_STANDARD;
char *WORK_P_3647430093;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    work_p_3647430093_init();
    work_a_0768645600_1516540902_init();
    work_a_3643194780_3212880686_init();
    work_a_1262826880_3212880686_init();
    work_a_1678511039_3212880686_init();
    work_a_3187132500_3212880686_init();
    work_a_1739834337_0831356973_init();
    work_a_3550684507_4101860652_init();
    work_a_2105646802_3212880686_init();
    work_a_0550431143_1516540902_init();
    work_a_1335952598_3212880686_init();
    work_a_1344228498_0831356973_init();


    xsi_register_tops("work_a_1344228498_0831356973");

    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    WORK_P_3647430093 = xsi_get_engine_memory("work_p_3647430093");

    return xsi_run_simulation(argc, argv);

}
