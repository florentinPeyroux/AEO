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
static const char *ng0 = "/home/m1/peyroux/Documents/M1S1/AEO/Nexys3V6/random.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_3488768497506413324_503743352(char *, unsigned char , unsigned char );


static void work_a_1906350187_3212880686_p_0(char *t0)
{
    char t48[16];
    char t50[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    unsigned char t15;
    int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned char t20;
    int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned char t25;
    unsigned char t26;
    char *t27;
    int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned char t32;
    unsigned char t33;
    char *t34;
    char *t35;
    int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned char t40;
    unsigned char t41;
    char *t42;
    char *t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    char *t47;
    char *t49;
    char *t51;
    char *t52;
    int t53;
    unsigned int t54;
    char *t55;
    char *t56;
    char *t57;
    char *t58;

LAB0:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 992U);
    t11 = xsi_signal_has_event(t1);
    if (t11 == 1)
        goto LAB11;

LAB12:    t4 = (unsigned char)0;

LAB13:    if (t4 == 1)
        goto LAB8;

LAB9:    t3 = (unsigned char)0;

LAB10:    if (t3 != 0)
        goto LAB5;

LAB7:
LAB6:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 3408);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 32U);
    xsi_driver_first_trans_fast_port(t1);
    t1 = (t0 + 3264);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 5263);
    t6 = (t0 + 3344);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 1672U);
    t7 = *((char **)t2);
    t16 = (0 - 31);
    t17 = (t16 * -1);
    t18 = (1U * t17);
    t19 = (0 + t18);
    t2 = (t7 + t19);
    t20 = *((unsigned char *)t2);
    t8 = (t0 + 1672U);
    t9 = *((char **)t8);
    t21 = (2 - 31);
    t22 = (t21 * -1);
    t23 = (1U * t22);
    t24 = (0 + t23);
    t8 = (t9 + t24);
    t25 = *((unsigned char *)t8);
    t26 = ieee_p_2592010699_sub_3488768497506413324_503743352(IEEE_P_2592010699, t20, t25);
    t10 = (t0 + 1672U);
    t27 = *((char **)t10);
    t28 = (3 - 31);
    t29 = (t28 * -1);
    t30 = (1U * t29);
    t31 = (0 + t30);
    t10 = (t27 + t31);
    t32 = *((unsigned char *)t10);
    t33 = ieee_p_2592010699_sub_3488768497506413324_503743352(IEEE_P_2592010699, t26, t32);
    t34 = (t0 + 1672U);
    t35 = *((char **)t34);
    t36 = (4 - 31);
    t37 = (t36 * -1);
    t38 = (1U * t37);
    t39 = (0 + t38);
    t34 = (t35 + t39);
    t40 = *((unsigned char *)t34);
    t41 = ieee_p_2592010699_sub_3488768497506413324_503743352(IEEE_P_2592010699, t33, t40);
    t42 = (t0 + 1672U);
    t43 = *((char **)t42);
    t44 = (31 - 31);
    t45 = (t44 * 1U);
    t46 = (0 + t45);
    t42 = (t43 + t46);
    t49 = ((IEEE_P_2592010699) + 4000);
    t51 = (t50 + 0U);
    t52 = (t51 + 0U);
    *((int *)t52) = 31;
    t52 = (t51 + 4U);
    *((int *)t52) = 1;
    t52 = (t51 + 8U);
    *((int *)t52) = -1;
    t53 = (1 - 31);
    t54 = (t53 * -1);
    t54 = (t54 + 1);
    t52 = (t51 + 12U);
    *((unsigned int *)t52) = t54;
    t47 = xsi_base_array_concat(t47, t48, t49, (char)99, t41, (char)97, t42, t50, (char)101);
    t52 = (t0 + 3344);
    t55 = (t52 + 56U);
    t56 = *((char **)t55);
    t57 = (t56 + 56U);
    t58 = *((char **)t57);
    memcpy(t58, t47, 32U);
    xsi_driver_first_trans_fast(t52);
    goto LAB6;

LAB8:    t2 = (t0 + 1352U);
    t6 = *((char **)t2);
    t14 = *((unsigned char *)t6);
    t15 = (t14 == (unsigned char)3);
    t3 = t15;
    goto LAB10;

LAB11:    t2 = (t0 + 1032U);
    t5 = *((char **)t2);
    t12 = *((unsigned char *)t5);
    t13 = (t12 == (unsigned char)3);
    t4 = t13;
    goto LAB13;

}


extern void work_a_1906350187_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1906350187_3212880686_p_0};
	xsi_register_didat("work_a_1906350187_3212880686", "isim/random_isim_beh.exe.sim/work/a_1906350187_3212880686.didat");
	xsi_register_executes(pe);
}
