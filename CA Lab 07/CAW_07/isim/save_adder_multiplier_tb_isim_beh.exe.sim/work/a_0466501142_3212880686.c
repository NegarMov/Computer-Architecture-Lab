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
static const char *ng0 = "E:/Projects/ISE Design/CAW_07/save_adder_multiplier.vhd";
extern char *IEEE_P_2592010699;

char *ieee_p_2592010699_sub_795620321_503743352(char *, char *, char *, char *, char *, char *);


static void work_a_0466501142_3212880686_p_0(char *t0)
{
    char t1[16];
    char t17[16];
    char t27[16];
    char t37[16];
    char t47[16];
    char *t2;
    char *t3;
    int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned char t8;
    char *t9;
    char *t10;
    int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned char t15;
    char *t16;
    char *t18;
    char *t19;
    char *t20;
    int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned char t25;
    char *t26;
    char *t28;
    char *t29;
    char *t30;
    int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned char t35;
    char *t36;
    char *t38;
    char *t39;
    char *t40;
    int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned char t45;
    char *t46;
    char *t48;
    char *t49;
    char *t50;
    char *t51;
    char *t52;
    unsigned int t53;
    unsigned int t54;
    unsigned char t55;
    char *t56;
    char *t57;
    char *t58;
    char *t59;
    char *t60;
    char *t61;

LAB0:    xsi_set_current_line(67, ng0);

LAB3:    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t4 = (0 - 3);
    t5 = (t4 * -1);
    t6 = (1U * t5);
    t7 = (0 + t6);
    t2 = (t3 + t7);
    t8 = *((unsigned char *)t2);
    t9 = (t0 + 1032U);
    t10 = *((char **)t9);
    t11 = (0 - 3);
    t12 = (t11 * -1);
    t13 = (1U * t12);
    t14 = (0 + t13);
    t9 = (t10 + t14);
    t15 = *((unsigned char *)t9);
    t18 = ((IEEE_P_2592010699) + 4024);
    t16 = xsi_base_array_concat(t16, t17, t18, (char)99, t8, (char)99, t15, (char)101);
    t19 = (t0 + 1032U);
    t20 = *((char **)t19);
    t21 = (0 - 3);
    t22 = (t21 * -1);
    t23 = (1U * t22);
    t24 = (0 + t23);
    t19 = (t20 + t24);
    t25 = *((unsigned char *)t19);
    t28 = ((IEEE_P_2592010699) + 4024);
    t26 = xsi_base_array_concat(t26, t27, t28, (char)97, t16, t17, (char)99, t25, (char)101);
    t29 = (t0 + 1032U);
    t30 = *((char **)t29);
    t31 = (0 - 3);
    t32 = (t31 * -1);
    t33 = (1U * t32);
    t34 = (0 + t33);
    t29 = (t30 + t34);
    t35 = *((unsigned char *)t29);
    t38 = ((IEEE_P_2592010699) + 4024);
    t36 = xsi_base_array_concat(t36, t37, t38, (char)97, t26, t27, (char)99, t35, (char)101);
    t39 = (t0 + 1032U);
    t40 = *((char **)t39);
    t41 = (0 - 3);
    t42 = (t41 * -1);
    t43 = (1U * t42);
    t44 = (0 + t43);
    t39 = (t40 + t44);
    t45 = *((unsigned char *)t39);
    t48 = ((IEEE_P_2592010699) + 4024);
    t46 = xsi_base_array_concat(t46, t47, t48, (char)97, t36, t37, (char)99, t45, (char)101);
    t49 = (t0 + 1192U);
    t50 = *((char **)t49);
    t49 = (t0 + 10668U);
    t51 = ieee_p_2592010699_sub_795620321_503743352(IEEE_P_2592010699, t1, t46, t47, t50, t49);
    t52 = (t1 + 12U);
    t53 = *((unsigned int *)t52);
    t54 = (1U * t53);
    t55 = (5U != t54);
    if (t55 == 1)
        goto LAB5;

LAB6:    t56 = (t0 + 5888);
    t57 = (t56 + 56U);
    t58 = *((char **)t57);
    t59 = (t58 + 56U);
    t60 = *((char **)t59);
    memcpy(t60, t51, 5U);
    xsi_driver_first_trans_fast(t56);

LAB2:    t61 = (t0 + 5744);
    *((int *)t61) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(5U, t54, 0);
    goto LAB6;

}

static void work_a_0466501142_3212880686_p_1(char *t0)
{
    char t1[16];
    char t17[16];
    char t27[16];
    char t37[16];
    char t47[16];
    char *t2;
    char *t3;
    int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned char t8;
    char *t9;
    char *t10;
    int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned char t15;
    char *t16;
    char *t18;
    char *t19;
    char *t20;
    int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned char t25;
    char *t26;
    char *t28;
    char *t29;
    char *t30;
    int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned char t35;
    char *t36;
    char *t38;
    char *t39;
    char *t40;
    int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned char t45;
    char *t46;
    char *t48;
    char *t49;
    char *t50;
    char *t51;
    char *t52;
    unsigned int t53;
    unsigned int t54;
    unsigned char t55;
    char *t56;
    char *t57;
    char *t58;
    char *t59;
    char *t60;
    char *t61;

LAB0:    xsi_set_current_line(68, ng0);

LAB3:    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t4 = (1 - 3);
    t5 = (t4 * -1);
    t6 = (1U * t5);
    t7 = (0 + t6);
    t2 = (t3 + t7);
    t8 = *((unsigned char *)t2);
    t9 = (t0 + 1032U);
    t10 = *((char **)t9);
    t11 = (1 - 3);
    t12 = (t11 * -1);
    t13 = (1U * t12);
    t14 = (0 + t13);
    t9 = (t10 + t14);
    t15 = *((unsigned char *)t9);
    t18 = ((IEEE_P_2592010699) + 4024);
    t16 = xsi_base_array_concat(t16, t17, t18, (char)99, t8, (char)99, t15, (char)101);
    t19 = (t0 + 1032U);
    t20 = *((char **)t19);
    t21 = (1 - 3);
    t22 = (t21 * -1);
    t23 = (1U * t22);
    t24 = (0 + t23);
    t19 = (t20 + t24);
    t25 = *((unsigned char *)t19);
    t28 = ((IEEE_P_2592010699) + 4024);
    t26 = xsi_base_array_concat(t26, t27, t28, (char)97, t16, t17, (char)99, t25, (char)101);
    t29 = (t0 + 1032U);
    t30 = *((char **)t29);
    t31 = (1 - 3);
    t32 = (t31 * -1);
    t33 = (1U * t32);
    t34 = (0 + t33);
    t29 = (t30 + t34);
    t35 = *((unsigned char *)t29);
    t38 = ((IEEE_P_2592010699) + 4024);
    t36 = xsi_base_array_concat(t36, t37, t38, (char)97, t26, t27, (char)99, t35, (char)101);
    t39 = (t0 + 1032U);
    t40 = *((char **)t39);
    t41 = (1 - 3);
    t42 = (t41 * -1);
    t43 = (1U * t42);
    t44 = (0 + t43);
    t39 = (t40 + t44);
    t45 = *((unsigned char *)t39);
    t48 = ((IEEE_P_2592010699) + 4024);
    t46 = xsi_base_array_concat(t46, t47, t48, (char)97, t36, t37, (char)99, t45, (char)101);
    t49 = (t0 + 1192U);
    t50 = *((char **)t49);
    t49 = (t0 + 10668U);
    t51 = ieee_p_2592010699_sub_795620321_503743352(IEEE_P_2592010699, t1, t46, t47, t50, t49);
    t52 = (t1 + 12U);
    t53 = *((unsigned int *)t52);
    t54 = (1U * t53);
    t55 = (5U != t54);
    if (t55 == 1)
        goto LAB5;

LAB6:    t56 = (t0 + 5952);
    t57 = (t56 + 56U);
    t58 = *((char **)t57);
    t59 = (t58 + 56U);
    t60 = *((char **)t59);
    memcpy(t60, t51, 5U);
    xsi_driver_first_trans_fast(t56);

LAB2:    t61 = (t0 + 5760);
    *((int *)t61) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(5U, t54, 0);
    goto LAB6;

}

static void work_a_0466501142_3212880686_p_2(char *t0)
{
    char t1[16];
    char t17[16];
    char t27[16];
    char t37[16];
    char t47[16];
    char *t2;
    char *t3;
    int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned char t8;
    char *t9;
    char *t10;
    int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned char t15;
    char *t16;
    char *t18;
    char *t19;
    char *t20;
    int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned char t25;
    char *t26;
    char *t28;
    char *t29;
    char *t30;
    int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned char t35;
    char *t36;
    char *t38;
    char *t39;
    char *t40;
    int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned char t45;
    char *t46;
    char *t48;
    char *t49;
    char *t50;
    char *t51;
    char *t52;
    unsigned int t53;
    unsigned int t54;
    unsigned char t55;
    char *t56;
    char *t57;
    char *t58;
    char *t59;
    char *t60;
    char *t61;

LAB0:    xsi_set_current_line(69, ng0);

LAB3:    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t4 = (2 - 3);
    t5 = (t4 * -1);
    t6 = (1U * t5);
    t7 = (0 + t6);
    t2 = (t3 + t7);
    t8 = *((unsigned char *)t2);
    t9 = (t0 + 1032U);
    t10 = *((char **)t9);
    t11 = (2 - 3);
    t12 = (t11 * -1);
    t13 = (1U * t12);
    t14 = (0 + t13);
    t9 = (t10 + t14);
    t15 = *((unsigned char *)t9);
    t18 = ((IEEE_P_2592010699) + 4024);
    t16 = xsi_base_array_concat(t16, t17, t18, (char)99, t8, (char)99, t15, (char)101);
    t19 = (t0 + 1032U);
    t20 = *((char **)t19);
    t21 = (2 - 3);
    t22 = (t21 * -1);
    t23 = (1U * t22);
    t24 = (0 + t23);
    t19 = (t20 + t24);
    t25 = *((unsigned char *)t19);
    t28 = ((IEEE_P_2592010699) + 4024);
    t26 = xsi_base_array_concat(t26, t27, t28, (char)97, t16, t17, (char)99, t25, (char)101);
    t29 = (t0 + 1032U);
    t30 = *((char **)t29);
    t31 = (2 - 3);
    t32 = (t31 * -1);
    t33 = (1U * t32);
    t34 = (0 + t33);
    t29 = (t30 + t34);
    t35 = *((unsigned char *)t29);
    t38 = ((IEEE_P_2592010699) + 4024);
    t36 = xsi_base_array_concat(t36, t37, t38, (char)97, t26, t27, (char)99, t35, (char)101);
    t39 = (t0 + 1032U);
    t40 = *((char **)t39);
    t41 = (2 - 3);
    t42 = (t41 * -1);
    t43 = (1U * t42);
    t44 = (0 + t43);
    t39 = (t40 + t44);
    t45 = *((unsigned char *)t39);
    t48 = ((IEEE_P_2592010699) + 4024);
    t46 = xsi_base_array_concat(t46, t47, t48, (char)97, t36, t37, (char)99, t45, (char)101);
    t49 = (t0 + 1192U);
    t50 = *((char **)t49);
    t49 = (t0 + 10668U);
    t51 = ieee_p_2592010699_sub_795620321_503743352(IEEE_P_2592010699, t1, t46, t47, t50, t49);
    t52 = (t1 + 12U);
    t53 = *((unsigned int *)t52);
    t54 = (1U * t53);
    t55 = (5U != t54);
    if (t55 == 1)
        goto LAB5;

LAB6:    t56 = (t0 + 6016);
    t57 = (t56 + 56U);
    t58 = *((char **)t57);
    t59 = (t58 + 56U);
    t60 = *((char **)t59);
    memcpy(t60, t51, 5U);
    xsi_driver_first_trans_fast(t56);

LAB2:    t61 = (t0 + 5776);
    *((int *)t61) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(5U, t54, 0);
    goto LAB6;

}

static void work_a_0466501142_3212880686_p_3(char *t0)
{
    char t1[16];
    char t17[16];
    char t27[16];
    char t37[16];
    char t47[16];
    char *t2;
    char *t3;
    int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned char t8;
    char *t9;
    char *t10;
    int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned char t15;
    char *t16;
    char *t18;
    char *t19;
    char *t20;
    int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned char t25;
    char *t26;
    char *t28;
    char *t29;
    char *t30;
    int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned char t35;
    char *t36;
    char *t38;
    char *t39;
    char *t40;
    int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned char t45;
    char *t46;
    char *t48;
    char *t49;
    char *t50;
    char *t51;
    char *t52;
    unsigned int t53;
    unsigned int t54;
    unsigned char t55;
    char *t56;
    char *t57;
    char *t58;
    char *t59;
    char *t60;
    char *t61;

LAB0:    xsi_set_current_line(70, ng0);

LAB3:    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t4 = (3 - 3);
    t5 = (t4 * -1);
    t6 = (1U * t5);
    t7 = (0 + t6);
    t2 = (t3 + t7);
    t8 = *((unsigned char *)t2);
    t9 = (t0 + 1032U);
    t10 = *((char **)t9);
    t11 = (3 - 3);
    t12 = (t11 * -1);
    t13 = (1U * t12);
    t14 = (0 + t13);
    t9 = (t10 + t14);
    t15 = *((unsigned char *)t9);
    t18 = ((IEEE_P_2592010699) + 4024);
    t16 = xsi_base_array_concat(t16, t17, t18, (char)99, t8, (char)99, t15, (char)101);
    t19 = (t0 + 1032U);
    t20 = *((char **)t19);
    t21 = (3 - 3);
    t22 = (t21 * -1);
    t23 = (1U * t22);
    t24 = (0 + t23);
    t19 = (t20 + t24);
    t25 = *((unsigned char *)t19);
    t28 = ((IEEE_P_2592010699) + 4024);
    t26 = xsi_base_array_concat(t26, t27, t28, (char)97, t16, t17, (char)99, t25, (char)101);
    t29 = (t0 + 1032U);
    t30 = *((char **)t29);
    t31 = (3 - 3);
    t32 = (t31 * -1);
    t33 = (1U * t32);
    t34 = (0 + t33);
    t29 = (t30 + t34);
    t35 = *((unsigned char *)t29);
    t38 = ((IEEE_P_2592010699) + 4024);
    t36 = xsi_base_array_concat(t36, t37, t38, (char)97, t26, t27, (char)99, t35, (char)101);
    t39 = (t0 + 1032U);
    t40 = *((char **)t39);
    t41 = (3 - 3);
    t42 = (t41 * -1);
    t43 = (1U * t42);
    t44 = (0 + t43);
    t39 = (t40 + t44);
    t45 = *((unsigned char *)t39);
    t48 = ((IEEE_P_2592010699) + 4024);
    t46 = xsi_base_array_concat(t46, t47, t48, (char)97, t36, t37, (char)99, t45, (char)101);
    t49 = (t0 + 1192U);
    t50 = *((char **)t49);
    t49 = (t0 + 10668U);
    t51 = ieee_p_2592010699_sub_795620321_503743352(IEEE_P_2592010699, t1, t46, t47, t50, t49);
    t52 = (t1 + 12U);
    t53 = *((unsigned int *)t52);
    t54 = (1U * t53);
    t55 = (5U != t54);
    if (t55 == 1)
        goto LAB5;

LAB6:    t56 = (t0 + 6080);
    t57 = (t56 + 56U);
    t58 = *((char **)t57);
    t59 = (t58 + 56U);
    t60 = *((char **)t59);
    memcpy(t60, t51, 5U);
    xsi_driver_first_trans_fast(t56);

LAB2:    t61 = (t0 + 5792);
    *((int *)t61) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(5U, t54, 0);
    goto LAB6;

}

static void work_a_0466501142_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(72, ng0);

LAB3:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = (0 - 4);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 6144);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_delta(t8, 8U, 1, 0LL);

LAB2:    t13 = (t0 + 5808);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0466501142_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0466501142_3212880686_p_0,(void *)work_a_0466501142_3212880686_p_1,(void *)work_a_0466501142_3212880686_p_2,(void *)work_a_0466501142_3212880686_p_3,(void *)work_a_0466501142_3212880686_p_4};
	xsi_register_didat("work_a_0466501142_3212880686", "isim/save_adder_multiplier_tb_isim_beh.exe.sim/work/a_0466501142_3212880686.didat");
	xsi_register_executes(pe);
}
