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
static const char *ng0 = "/home/m1/peyroux/Documents/M1S1/AEO/TP4/shift_vector.vhd";



static void work_a_3915993504_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    int t9;
    int t10;
    char *t11;
    int t12;
    unsigned char t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    int t19;
    int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;

LAB0:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t2 = (t0 + 2968);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t11 = (t8 + 56U);
    t14 = *((char **)t11);
    memcpy(t14, t4, 8U);
    xsi_driver_first_trans_fast_port(t2);
    t2 = (t0 + 2824);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(45, ng0);
    t4 = (t0 + 4617);
    *((int *)t4) = 0;
    t8 = (t0 + 4621);
    *((int *)t8) = 7;
    t9 = 0;
    t10 = 7;

LAB8:    if (t9 <= t10)
        goto LAB9;

LAB11:    goto LAB3;

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB9:    xsi_set_current_line(46, ng0);
    t11 = (t0 + 4617);
    t12 = *((int *)t11);
    t13 = (t12 == 0);
    if (t13 != 0)
        goto LAB12;

LAB14:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 4617);
    t12 = *((int *)t2);
    t19 = (t12 - 1);
    t20 = (t19 - 7);
    t21 = (t20 * -1);
    t22 = (1 * t21);
    t23 = (0U + t22);
    t4 = (t0 + 2904);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    t11 = (t8 + 56U);
    t14 = *((char **)t11);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_delta(t4, t23, 1, 0LL);

LAB13:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 4617);
    t12 = *((int *)t2);
    t19 = (t12 - 7);
    t21 = (t19 * -1);
    t22 = (1 * t21);
    t23 = (0U + t22);
    t4 = (t0 + 2904);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    t11 = (t8 + 56U);
    t14 = *((char **)t11);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_delta(t4, t23, 1, 0LL);

LAB10:    t2 = (t0 + 4617);
    t9 = *((int *)t2);
    t4 = (t0 + 4621);
    t10 = *((int *)t4);
    if (t9 == t10)
        goto LAB11;

LAB15:    t12 = (t9 + 1);
    t9 = t12;
    t5 = (t0 + 4617);
    *((int *)t5) = t9;
    goto LAB8;

LAB12:    xsi_set_current_line(47, ng0);
    t14 = (t0 + 2904);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = (unsigned char)2;
    xsi_driver_first_trans_delta(t14, 0U, 1, 0LL);
    goto LAB13;

}


extern void work_a_3915993504_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3915993504_3212880686_p_0};
	xsi_register_didat("work_a_3915993504_3212880686", "isim/shift_vector_isim_beh.exe.sim/work/a_3915993504_3212880686.didat");
	xsi_register_executes(pe);
}
