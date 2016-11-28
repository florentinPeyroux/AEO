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
static const char *ng0 = "/home/m1/peyroux/Documents/M1S1/AEO/TP41/clk_div.vhd";
extern char *IEEE_P_1242562249;
extern char *IEEE_P_2592010699;

char *ieee_p_1242562249_sub_1006216973935652998_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_1242562249_sub_1434214030532789707_1035706684(char *, char *, char *, char *, char *);
unsigned char ieee_p_2592010699_sub_374109322130769762_503743352(char *, unsigned char );


static void work_a_3125025815_3212880686_p_0(char *t0)
{
    char t5[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    unsigned char t14;
    unsigned char t15;
    unsigned char t16;
    unsigned int t17;

LAB0:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1488U);
    t2 = *((char **)t1);
    t1 = (t0 + 4640U);
    t3 = (t0 + 4690);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 23;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (23 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_p_1242562249_sub_1434214030532789707_1035706684(IEEE_P_1242562249, t2, t1, t3, t5);
    if (t10 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 992U);
    t14 = xsi_signal_has_event(t1);
    if (t14 == 1)
        goto LAB8;

LAB9:    t10 = (unsigned char)0;

LAB10:    if (t10 != 0)
        goto LAB5;

LAB7:
LAB6:    t1 = (t0 + 2904);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(47, ng0);
    t7 = (t0 + 4714);
    t12 = (t0 + 1488U);
    t13 = *((char **)t12);
    t12 = (t13 + 0);
    memcpy(t12, t7, 24U);
    xsi_set_current_line(48, ng0);
    t1 = (t0 + 1608U);
    t2 = *((char **)t1);
    t10 = *((unsigned char *)t2);
    t14 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, t10);
    t1 = (t0 + 1608U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    *((unsigned char *)t1) = t14;
    xsi_set_current_line(49, ng0);
    t1 = (t0 + 1608U);
    t2 = *((char **)t1);
    t10 = *((unsigned char *)t2);
    t1 = (t0 + 2984);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t10;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1488U);
    t4 = *((char **)t2);
    t2 = (t0 + 4640U);
    t6 = ieee_p_1242562249_sub_1006216973935652998_1035706684(IEEE_P_1242562249, t5, t4, t2, 1);
    t7 = (t0 + 1488U);
    t11 = *((char **)t7);
    t7 = (t11 + 0);
    t12 = (t5 + 12U);
    t9 = *((unsigned int *)t12);
    t17 = (1U * t9);
    memcpy(t7, t6, t17);
    goto LAB6;

LAB8:    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t15 = *((unsigned char *)t3);
    t16 = (t15 == (unsigned char)3);
    t10 = t16;
    goto LAB10;

}


extern void work_a_3125025815_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3125025815_3212880686_p_0};
	xsi_register_didat("work_a_3125025815_3212880686", "isim/shift_vector_isim_beh.exe.sim/work/a_3125025815_3212880686.didat");
	xsi_register_executes(pe);
}
