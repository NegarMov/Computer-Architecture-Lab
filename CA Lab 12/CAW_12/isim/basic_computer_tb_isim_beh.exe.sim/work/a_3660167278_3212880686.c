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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "E:/Projects/ISE Design/CAW_12/pulse_generator.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_2592010699;

char *ieee_p_3620187407_sub_674691591_3965413181(char *, char *, char *, char *, unsigned char );


static void work_a_3660167278_3212880686_p_0(char *t0)
{
    char t11[16];
    char t30[16];
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned char t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    int t23;
    unsigned int t24;
    int t25;
    int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    int t31;
    unsigned int t32;

LAB0:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 3520);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(42, ng0);
    t7 = (t0 + 1192U);
    t8 = *((char **)t7);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t23 = (5 - 2);
    t15 = (4 - t23);
    t16 = (t15 * 1U);
    t24 = (0 + t16);
    t2 = (t3 + t24);
    t7 = (t0 + 1672U);
    t8 = *((char **)t7);
    t25 = (5 - 1);
    t26 = (t25 - 4);
    t27 = (t26 * -1);
    t28 = (1U * t27);
    t29 = (0 + t28);
    t7 = (t8 + t29);
    t1 = *((unsigned char *)t7);
    t13 = ((IEEE_P_2592010699) + 4024);
    t14 = (t30 + 0U);
    t18 = (t14 + 0U);
    *((int *)t18) = 3;
    t18 = (t14 + 4U);
    *((int *)t18) = 0;
    t18 = (t14 + 8U);
    *((int *)t18) = -1;
    t31 = (0 - 3);
    t32 = (t31 * -1);
    t32 = (t32 + 1);
    t18 = (t14 + 12U);
    *((unsigned int *)t18) = t32;
    t12 = xsi_base_array_concat(t12, t11, t13, (char)97, t2, t30, (char)99, t1, (char)101);
    t32 = (4U + 1U);
    t4 = (5U != t32);
    if (t4 == 1)
        goto LAB13;

LAB14:    t18 = (t0 + 3616);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t12, 5U);
    xsi_driver_first_trans_fast(t18);

LAB9:    goto LAB3;

LAB5:    t2 = (t0 + 992U);
    t6 = xsi_signal_has_event(t2);
    t1 = t6;
    goto LAB7;

LAB8:    xsi_set_current_line(43, ng0);
    t7 = (t0 + 1512U);
    t12 = *((char **)t7);
    t7 = (t0 + 5552U);
    t13 = ieee_p_3620187407_sub_674691591_3965413181(IEEE_P_3620187407, t11, t12, t7, (unsigned char)3);
    t14 = (t11 + 12U);
    t15 = *((unsigned int *)t14);
    t16 = (1U * t15);
    t17 = (5U != t16);
    if (t17 == 1)
        goto LAB11;

LAB12:    t18 = (t0 + 3616);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t13, 5U);
    xsi_driver_first_trans_fast(t18);
    goto LAB9;

LAB11:    xsi_size_not_matching(5U, t16, 0);
    goto LAB12;

LAB13:    xsi_size_not_matching(5U, t32, 0);
    goto LAB14;

}

static void work_a_3660167278_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(50, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 3680);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 5U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3536);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3660167278_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3660167278_3212880686_p_0,(void *)work_a_3660167278_3212880686_p_1};
	xsi_register_didat("work_a_3660167278_3212880686", "isim/basic_computer_tb_isim_beh.exe.sim/work/a_3660167278_3212880686.didat");
	xsi_register_executes(pe);
}
