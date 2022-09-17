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
static const char *ng0 = "E:/Projects/ISE Design/CAW_12/RAM128x8.vhd";
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );


static void work_a_1276405400_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    xsi_set_current_line(44, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 6632U);
    t3 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t2, t1);
    t4 = (t0 + 4136);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t3;
    xsi_driver_first_trans_fast(t4);

LAB2:    t9 = (t0 + 4040);
    *((int *)t9) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1276405400_3212880686_p_1(char *t0)
{
    char t11[16];
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
    char *t12;
    char *t13;
    char *t14;
    int t15;
    int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    unsigned char t25;
    unsigned char t26;

LAB0:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 1152U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB15;

LAB16:    t1 = (unsigned char)0;

LAB17:    if (t1 != 0)
        goto LAB13;

LAB14:
LAB3:    t2 = (t0 + 4056);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(48, ng0);
    t4 = (t0 + 7784);
    *((int *)t4) = 0;
    t8 = (t0 + 7788);
    *((int *)t8) = 127;
    t9 = 0;
    t10 = 127;

LAB8:    if (t9 <= t10)
        goto LAB9;

LAB11:    goto LAB3;

LAB5:    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)2);
    t1 = t7;
    goto LAB7;

LAB9:    xsi_set_current_line(49, ng0);
    t12 = (t0 + 7784);
    t13 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t11, *((int *)t12), 8);
    t14 = (t0 + 7784);
    t15 = *((int *)t14);
    t16 = (t15 - 0);
    t17 = (t16 * 1);
    t18 = (8U * t17);
    t19 = (0U + t18);
    t20 = (t0 + 4200);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t13, 8U);
    xsi_driver_first_trans_delta(t20, t19, 8U, 0LL);

LAB10:    t2 = (t0 + 7784);
    t9 = *((int *)t2);
    t4 = (t0 + 7788);
    t10 = *((int *)t4);
    if (t9 == t10)
        goto LAB11;

LAB12:    t15 = (t9 + 1);
    t9 = t15;
    t5 = (t0 + 7784);
    *((int *)t5) = t9;
    goto LAB8;

LAB13:    xsi_set_current_line(52, ng0);
    t4 = (t0 + 1352U);
    t8 = *((char **)t4);
    t25 = *((unsigned char *)t8);
    t26 = (t25 == (unsigned char)3);
    if (t26 != 0)
        goto LAB18;

LAB20:
LAB19:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB21;

LAB23:
LAB22:    goto LAB3;

LAB15:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB17;

LAB18:    xsi_set_current_line(53, ng0);
    t4 = (t0 + 1832U);
    t12 = *((char **)t4);
    t4 = (t0 + 2312U);
    t13 = *((char **)t4);
    t9 = *((int *)t13);
    t10 = (t9 - 0);
    t17 = (t10 * 1);
    t18 = (8U * t17);
    t19 = (0U + t18);
    t4 = (t0 + 4200);
    t14 = (t4 + 56U);
    t20 = *((char **)t14);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t12, 8U);
    xsi_driver_first_trans_delta(t4, t19, 8U, 0LL);
    goto LAB19;

LAB21:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 2152U);
    t5 = *((char **)t2);
    t2 = (t0 + 2312U);
    t8 = *((char **)t2);
    t9 = *((int *)t8);
    t10 = (t9 - 0);
    t17 = (t10 * 1);
    xsi_vhdl_check_range_of_index(0, 127, 1, t9);
    t18 = (8U * t17);
    t19 = (0 + t18);
    t2 = (t5 + t19);
    t12 = (t0 + 4264);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t20 = (t14 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t2, 8U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB22;

}


extern void work_a_1276405400_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1276405400_3212880686_p_0,(void *)work_a_1276405400_3212880686_p_1};
	xsi_register_didat("work_a_1276405400_3212880686", "isim/basic_computer_tb_isim_beh.exe.sim/work/a_1276405400_3212880686.didat");
	xsi_register_executes(pe);
}
