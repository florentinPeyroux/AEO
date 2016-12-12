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

/* This file is designed for use with ISim build 0x9ca8bed6 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/m1/peyroux/Documents/M1S1/AEO/Nexys3V6/fibogen.vhd";
extern char *IEEE_P_3620187407;

char *ieee_p_3620187407_sub_1496620905533649268_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_2106971299_3212880686_p_0(char *t0)
{
    char t16[16];
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t17;

LAB0:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 3144);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(50, ng0);
    t4 = (t0 + 1192U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)2);
    if (t10 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB11;

LAB13:
LAB12:
LAB9:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 1672U);
    t4 = *((char **)t2);
    t2 = (t0 + 3352);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t4, 32U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB3;

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(51, ng0);
    t4 = (t0 + 1672U);
    t11 = *((char **)t4);
    t4 = (t0 + 3224);
    t12 = (t4 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t11, 32U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(52, ng0);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t2 = (t0 + 5144U);
    t5 = (t0 + 1672U);
    t8 = *((char **)t5);
    t5 = (t0 + 5160U);
    t11 = ieee_p_3620187407_sub_1496620905533649268_3965413181(IEEE_P_3620187407, t16, t4, t2, t8, t5);
    t12 = (t0 + 3288);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t17 = *((char **)t15);
    memcpy(t17, t11, 32U);
    xsi_driver_first_trans_fast(t12);
    goto LAB9;

LAB11:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 5250);
    t8 = (t0 + 3224);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t2, 32U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(57, ng0);
    t2 = (t0 + 5282);
    t5 = (t0 + 3288);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t2, 32U);
    xsi_driver_first_trans_fast(t5);
    goto LAB12;

}


extern void work_a_2106971299_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2106971299_3212880686_p_0};
	xsi_register_didat("work_a_2106971299_3212880686", "isim/fibogen_isim_beh.exe.sim/work/a_2106971299_3212880686.didat");
	xsi_register_executes(pe);
}
