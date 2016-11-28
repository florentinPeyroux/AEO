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
static const char *ng0 = "/home/m1/peyroux/Documents/M1S1/AEO/TP41/shift_vector.vhd";
extern char *IEEE_P_2592010699;



static void work_a_2868493807_3212880686_p_0(char *t0)
{
    char t18[16];
    char t20[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    char *t19;
    char *t21;
    char *t22;
    int t23;
    unsigned int t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;

LAB0:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 2968);
    t5 = (t1 + 56U);
    t12 = *((char **)t5);
    t13 = (t12 + 56U);
    t17 = *((char **)t13);
    memcpy(t17, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    t1 = (t0 + 2824);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 1352U);
    t5 = *((char **)t1);
    t6 = (7 - 7);
    t7 = (t6 * -1);
    t8 = (1U * t7);
    t9 = (0 + t8);
    t1 = (t5 + t9);
    t10 = *((unsigned char *)t1);
    t11 = (t10 == (unsigned char)3);
    if (t11 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t7 = (7 - 6);
    t8 = (t7 * 1U);
    t9 = (0 + t8);
    t1 = (t2 + t9);
    t12 = ((IEEE_P_2592010699) + 4000);
    t13 = (t20 + 0U);
    t17 = (t13 + 0U);
    *((int *)t17) = 6;
    t17 = (t13 + 4U);
    *((int *)t17) = 0;
    t17 = (t13 + 8U);
    *((int *)t17) = -1;
    t6 = (0 - 6);
    t14 = (t6 * -1);
    t14 = (t14 + 1);
    t17 = (t13 + 12U);
    *((unsigned int *)t17) = t14;
    t5 = xsi_base_array_concat(t5, t18, t12, (char)97, t1, t20, (char)99, (unsigned char)2, (char)101);
    t17 = (t0 + 2904);
    t19 = (t17 + 56U);
    t21 = *((char **)t19);
    t22 = (t21 + 56U);
    t25 = *((char **)t22);
    memcpy(t25, t5, 8U);
    xsi_driver_first_trans_fast(t17);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(48, ng0);
    t12 = (t0 + 1352U);
    t13 = *((char **)t12);
    t14 = (7 - 6);
    t15 = (t14 * 1U);
    t16 = (0 + t15);
    t12 = (t13 + t16);
    t19 = ((IEEE_P_2592010699) + 4000);
    t21 = (t20 + 0U);
    t22 = (t21 + 0U);
    *((int *)t22) = 6;
    t22 = (t21 + 4U);
    *((int *)t22) = 0;
    t22 = (t21 + 8U);
    *((int *)t22) = -1;
    t23 = (0 - 6);
    t24 = (t23 * -1);
    t24 = (t24 + 1);
    t22 = (t21 + 12U);
    *((unsigned int *)t22) = t24;
    t17 = xsi_base_array_concat(t17, t18, t19, (char)97, t12, t20, (char)99, (unsigned char)3, (char)101);
    t22 = (t0 + 2904);
    t25 = (t22 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    memcpy(t28, t17, 8U);
    xsi_driver_first_trans_fast(t22);
    goto LAB6;

}


extern void work_a_2868493807_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2868493807_3212880686_p_0};
	xsi_register_didat("work_a_2868493807_3212880686", "isim/chenillard_isim_beh.exe.sim/work/a_2868493807_3212880686.didat");
	xsi_register_executes(pe);
}
