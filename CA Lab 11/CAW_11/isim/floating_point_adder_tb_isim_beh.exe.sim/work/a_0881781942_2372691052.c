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
static const char *ng0 = "E:/Projects/ISE Design/CAW_11/floating_point_adder_tb.vhd";



static void work_a_0881781942_2372691052_p_0(char *t0)
{
    char *t1;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int64 t8;
    char *t9;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    int64 t16;
    char *t17;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    int64 t24;
    char *t25;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;

LAB0:    xsi_set_current_line(53, ng0);

LAB3:    t1 = (t0 + 5212);
    t3 = (t0 + 3144);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 32U);
    xsi_driver_first_trans_delta(t3, 0U, 32U, 0LL);
    t8 = (100 * 1000LL);
    t9 = (t0 + 5244);
    t11 = (t0 + 3144);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t9, 32U);
    xsi_driver_subsequent_trans_delta(t11, 0U, 32U, t8);
    t16 = (200 * 1000LL);
    t17 = (t0 + 5276);
    t19 = (t0 + 3144);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t17, 32U);
    xsi_driver_subsequent_trans_delta(t19, 0U, 32U, t16);
    t24 = (300 * 1000LL);
    t25 = (t0 + 5308);
    t27 = (t0 + 3144);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    memcpy(t31, t25, 32U);
    xsi_driver_subsequent_trans_delta(t27, 0U, 32U, t24);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0881781942_2372691052_p_1(char *t0)
{
    char *t1;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int64 t8;
    char *t9;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    int64 t16;
    char *t17;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    int64 t24;
    char *t25;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;

LAB0:    xsi_set_current_line(54, ng0);

LAB3:    t1 = (t0 + 5340);
    t3 = (t0 + 3208);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 32U);
    xsi_driver_first_trans_delta(t3, 0U, 32U, 0LL);
    t8 = (100 * 1000LL);
    t9 = (t0 + 5372);
    t11 = (t0 + 3208);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t9, 32U);
    xsi_driver_subsequent_trans_delta(t11, 0U, 32U, t8);
    t16 = (200 * 1000LL);
    t17 = (t0 + 5404);
    t19 = (t0 + 3208);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t17, 32U);
    xsi_driver_subsequent_trans_delta(t19, 0U, 32U, t16);
    t24 = (300 * 1000LL);
    t25 = (t0 + 5436);
    t27 = (t0 + 3208);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    memcpy(t31, t25, 32U);
    xsi_driver_subsequent_trans_delta(t27, 0U, 32U, t24);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0881781942_2372691052_init()
{
	static char *pe[] = {(void *)work_a_0881781942_2372691052_p_0,(void *)work_a_0881781942_2372691052_p_1};
	xsi_register_didat("work_a_0881781942_2372691052", "isim/floating_point_adder_tb_isim_beh.exe.sim/work/a_0881781942_2372691052.didat");
	xsi_register_executes(pe);
}
