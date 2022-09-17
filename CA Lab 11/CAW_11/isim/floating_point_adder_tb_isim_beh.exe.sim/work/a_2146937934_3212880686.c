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
static const char *ng0 = "E:/Projects/ISE Design/CAW_11/floating_point_adder.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
char *ieee_p_1242562249_sub_1830103426_1035706684(char *, char *, char *, char *, int );
char *ieee_p_1242562249_sub_2770553711_1035706684(char *, char *, char *, char *, int );
char *ieee_p_2592010699_sub_1837678034_503743352(char *, char *, char *, char *);
unsigned char ieee_p_2592010699_sub_2507238156_503743352(char *, unsigned char , unsigned char );
char *ieee_p_3620187407_sub_674691591_3965413181(char *, char *, char *, char *, unsigned char );
char *ieee_p_3620187407_sub_674763465_3965413181(char *, char *, char *, char *, unsigned char );
char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_2146937934_3212880686_p_0(char *t0)
{
    char t20[16];
    char t24[16];
    char t32[16];
    char t33[16];
    char t34[16];
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
    char *t14;
    char *t15;
    unsigned char t16;
    unsigned char t17;
    unsigned char t18;
    unsigned char t19;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    int t25;
    unsigned int t26;
    unsigned char t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;

LAB0:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = (31 - 31);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 1808U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    *((unsigned char *)t8) = t7;
    xsi_set_current_line(62, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = (31 - 31);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 1928U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    *((unsigned char *)t8) = t7;
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t4 = (31 - 30);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t8 = (t0 + 2048U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    memcpy(t8, t1, 8U);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t4 = (31 - 30);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t8 = (t0 + 2168U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    memcpy(t8, t1, 8U);
    xsi_set_current_line(65, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t4 = (31 - 22);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t8 = (t0 + 2288U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    memcpy(t8, t1, 23U);
    xsi_set_current_line(66, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t4 = (31 - 22);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t8 = (t0 + 2408U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    memcpy(t8, t1, 23U);
    xsi_set_current_line(69, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 7932U);
    t8 = (t0 + 1512U);
    t9 = *((char **)t8);
    t8 = (t0 + 7980U);
    t7 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t9, t8);
    if (t7 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 7948U);
    t8 = (t0 + 1512U);
    t9 = *((char **)t8);
    t8 = (t0 + 7980U);
    t7 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t9, t8);
    if (t7 != 0)
        goto LAB5;

LAB6:    t1 = (t0 + 1808U);
    t2 = *((char **)t1);
    t16 = *((unsigned char *)t2);
    t1 = (t0 + 1928U);
    t8 = *((char **)t1);
    t17 = *((unsigned char *)t8);
    t18 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t16, t17);
    t19 = (t18 == (unsigned char)3);
    if (t19 == 1)
        goto LAB9;

LAB10:    t7 = (unsigned char)0;

LAB11:    if (t7 != 0)
        goto LAB7;

LAB8:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 2048U);
    t2 = *((char **)t1);
    t8 = ((IEEE_P_2592010699) + 4024);
    t9 = (t0 + 7996U);
    t1 = xsi_base_array_concat(t1, t32, t8, (char)99, (unsigned char)2, (char)97, t2, t9, (char)101);
    t10 = (t0 + 2168U);
    t11 = *((char **)t10);
    t12 = ((IEEE_P_2592010699) + 4024);
    t13 = (t0 + 8012U);
    t10 = xsi_base_array_concat(t10, t34, t12, (char)99, (unsigned char)3, (char)97, t11, t13, (char)101);
    t14 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t33, t10, t34);
    t15 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t24, t1, t32, t14, t33);
    t28 = ieee_p_3620187407_sub_674691591_3965413181(IEEE_P_3620187407, t20, t15, t24, (unsigned char)3);
    t29 = (t0 + 2528U);
    t30 = *((char **)t29);
    t29 = (t30 + 0);
    t31 = (t20 + 12U);
    t4 = *((unsigned int *)t31);
    t5 = (1U * t4);
    memcpy(t29, t28, t5);
    xsi_set_current_line(78, ng0);
    t1 = (t0 + 2528U);
    t2 = *((char **)t1);
    t3 = (8 - 8);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t16 = (t7 == (unsigned char)3);
    if (t16 != 0)
        goto LAB12;

LAB14:    xsi_set_current_line(81, ng0);
    t1 = (t0 + 2528U);
    t2 = *((char **)t1);
    t4 = (8 - 7);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t8 = (t32 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 7;
    t9 = (t8 + 4U);
    *((int *)t9) = 0;
    t9 = (t8 + 8U);
    *((int *)t9) = -1;
    t3 = (0 - 7);
    t21 = (t3 * -1);
    t21 = (t21 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t21;
    t9 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t24, t1, t32);
    t10 = ieee_p_3620187407_sub_674691591_3965413181(IEEE_P_3620187407, t20, t9, t24, (unsigned char)3);
    t11 = (t0 + 2648U);
    t12 = *((char **)t11);
    t11 = (t12 + 0);
    t13 = (t20 + 12U);
    t21 = *((unsigned int *)t13);
    t22 = (1U * t21);
    memcpy(t11, t10, t22);

LAB13:    xsi_set_current_line(85, ng0);
    t1 = (t0 + 2528U);
    t2 = *((char **)t1);
    t3 = (8 - 8);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t16 = (t7 == (unsigned char)3);
    if (t16 != 0)
        goto LAB15;

LAB17:    xsi_set_current_line(90, ng0);
    t1 = (t0 + 2288U);
    t2 = *((char **)t1);
    t8 = ((IEEE_P_2592010699) + 4024);
    t9 = (t0 + 8028U);
    t1 = xsi_base_array_concat(t1, t24, t8, (char)99, (unsigned char)3, (char)97, t2, t9, (char)101);
    t10 = (t0 + 2648U);
    t11 = *((char **)t10);
    t10 = (t0 + 8076U);
    t3 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t11, t10);
    t12 = ieee_p_1242562249_sub_1830103426_1035706684(IEEE_P_1242562249, t20, t1, t24, t3);
    t13 = (t0 + 2768U);
    t14 = *((char **)t13);
    t13 = (t14 + 0);
    t15 = (t20 + 12U);
    t4 = *((unsigned int *)t15);
    t4 = (t4 * 1U);
    memcpy(t13, t12, t4);
    xsi_set_current_line(91, ng0);
    t1 = (t0 + 2408U);
    t2 = *((char **)t1);
    t8 = ((IEEE_P_2592010699) + 4024);
    t9 = (t0 + 8044U);
    t1 = xsi_base_array_concat(t1, t20, t8, (char)99, (unsigned char)3, (char)97, t2, t9, (char)101);
    t10 = (t0 + 2888U);
    t11 = *((char **)t10);
    t10 = (t11 + 0);
    t4 = (1U + 23U);
    memcpy(t10, t1, t4);
    xsi_set_current_line(92, ng0);
    t1 = (t0 + 2168U);
    t2 = *((char **)t1);
    t1 = (t0 + 3488U);
    t8 = *((char **)t1);
    t1 = (t8 + 0);
    memcpy(t1, t2, 8U);

LAB16:    xsi_set_current_line(96, ng0);
    t1 = (t0 + 1808U);
    t2 = *((char **)t1);
    t7 = *((unsigned char *)t2);
    t1 = (t0 + 1928U);
    t8 = *((char **)t1);
    t16 = *((unsigned char *)t8);
    t17 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t7, t16);
    t18 = (t17 == (unsigned char)2);
    if (t18 != 0)
        goto LAB18;

LAB20:    xsi_set_current_line(100, ng0);
    t1 = (t0 + 2768U);
    t2 = *((char **)t1);
    t8 = ((IEEE_P_2592010699) + 4024);
    t9 = (t0 + 8092U);
    t1 = xsi_base_array_concat(t1, t32, t8, (char)99, (unsigned char)2, (char)97, t2, t9, (char)101);
    t10 = (t0 + 2888U);
    t11 = *((char **)t10);
    t12 = ((IEEE_P_2592010699) + 4024);
    t13 = (t0 + 8108U);
    t10 = xsi_base_array_concat(t10, t34, t12, (char)99, (unsigned char)3, (char)97, t11, t13, (char)101);
    t14 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t33, t10, t34);
    t15 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t24, t1, t32, t14, t33);
    t28 = ieee_p_3620187407_sub_674691591_3965413181(IEEE_P_3620187407, t20, t15, t24, (unsigned char)3);
    t29 = (t0 + 3248U);
    t30 = *((char **)t29);
    t29 = (t30 + 0);
    t31 = (t20 + 12U);
    t4 = *((unsigned int *)t31);
    t5 = (1U * t4);
    memcpy(t29, t28, t5);
    xsi_set_current_line(101, ng0);
    t1 = (t0 + 3248U);
    t2 = *((char **)t1);
    t3 = (24 - 24);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t16 = (t7 == (unsigned char)3);
    if (t16 != 0)
        goto LAB21;

LAB23:    xsi_set_current_line(105, ng0);
    t1 = (t0 + 3248U);
    t2 = *((char **)t1);
    t4 = (24 - 23);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t8 = (t32 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 23;
    t9 = (t8 + 4U);
    *((int *)t9) = 0;
    t9 = (t8 + 8U);
    *((int *)t9) = -1;
    t3 = (0 - 23);
    t21 = (t3 * -1);
    t21 = (t21 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t21;
    t9 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t24, t1, t32);
    t10 = ieee_p_3620187407_sub_674691591_3965413181(IEEE_P_3620187407, t20, t9, t24, (unsigned char)3);
    t12 = ((IEEE_P_2592010699) + 4024);
    t11 = xsi_base_array_concat(t11, t33, t12, (char)99, (unsigned char)2, (char)97, t10, t20, (char)101);
    t13 = (t0 + 3008U);
    t14 = *((char **)t13);
    t13 = (t14 + 0);
    t15 = (t20 + 12U);
    t21 = *((unsigned int *)t15);
    t22 = (1U * t21);
    t23 = (1U + t22);
    memcpy(t13, t11, t23);
    xsi_set_current_line(106, ng0);
    t1 = (t0 + 1928U);
    t2 = *((char **)t1);
    t7 = *((unsigned char *)t2);
    t1 = (t0 + 3128U);
    t8 = *((char **)t1);
    t1 = (t8 + 0);
    *((unsigned char *)t1) = t7;

LAB22:
LAB19:    xsi_set_current_line(109, ng0);
    t1 = (t0 + 3128U);
    t2 = *((char **)t1);
    t7 = *((unsigned char *)t2);
    t1 = (t0 + 3368U);
    t8 = *((char **)t1);
    t1 = (t8 + 0);
    *((unsigned char *)t1) = t7;
    xsi_set_current_line(112, ng0);
    t1 = (t0 + 3008U);
    t2 = *((char **)t1);
    t3 = (24 - 24);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t16 = (t7 == (unsigned char)3);
    if (t16 != 0)
        goto LAB24;

LAB26:    xsi_set_current_line(116, ng0);

LAB27:    t1 = (t0 + 3008U);
    t2 = *((char **)t1);
    t3 = (23 - 24);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t16 = (t7 == (unsigned char)2);
    if (t16 != 0)
        goto LAB28;

LAB30:    xsi_set_current_line(120, ng0);
    t1 = (t0 + 3008U);
    t2 = *((char **)t1);
    t4 = (24 - 22);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t8 = (t0 + 3608U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    memcpy(t8, t1, 23U);

LAB25:    xsi_set_current_line(123, ng0);
    t1 = (t0 + 3368U);
    t2 = *((char **)t1);
    t7 = *((unsigned char *)t2);
    t1 = (t0 + 4992);
    t8 = (t1 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t7;
    xsi_driver_first_trans_delta(t1, 0U, 1, 0LL);
    xsi_set_current_line(124, ng0);
    t1 = (t0 + 3488U);
    t2 = *((char **)t1);
    t1 = (t0 + 4992);
    t8 = (t1 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t2, 8U);
    xsi_driver_first_trans_delta(t1, 1U, 8U, 0LL);
    xsi_set_current_line(125, ng0);
    t1 = (t0 + 3608U);
    t2 = *((char **)t1);
    t1 = (t0 + 4992);
    t8 = (t1 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t2, 23U);
    xsi_driver_first_trans_delta(t1, 9U, 23U, 0LL);

LAB3:    t1 = (t0 + 4912);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(70, ng0);
    t10 = (t0 + 1192U);
    t11 = *((char **)t10);
    t10 = (t0 + 4992);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t11, 32U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB3;

LAB5:    xsi_set_current_line(72, ng0);
    t10 = (t0 + 1032U);
    t11 = *((char **)t10);
    t10 = (t0 + 4992);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t11, 32U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB3;

LAB7:    xsi_set_current_line(74, ng0);
    t14 = (t0 + 1512U);
    t15 = *((char **)t14);
    t14 = (t0 + 4992);
    t28 = (t14 + 56U);
    t29 = *((char **)t28);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    memcpy(t31, t15, 32U);
    xsi_driver_first_trans_fast_port(t14);
    goto LAB3;

LAB9:    t1 = (t0 + 1032U);
    t9 = *((char **)t1);
    t4 = (31 - 30);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t1 = (t9 + t6);
    t10 = (t20 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 30;
    t11 = (t10 + 4U);
    *((int *)t11) = 0;
    t11 = (t10 + 8U);
    *((int *)t11) = -1;
    t3 = (0 - 30);
    t21 = (t3 * -1);
    t21 = (t21 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t21;
    t11 = (t0 + 1192U);
    t12 = *((char **)t11);
    t21 = (31 - 30);
    t22 = (t21 * 1U);
    t23 = (0 + t22);
    t11 = (t12 + t23);
    t13 = (t24 + 0U);
    t14 = (t13 + 0U);
    *((int *)t14) = 30;
    t14 = (t13 + 4U);
    *((int *)t14) = 0;
    t14 = (t13 + 8U);
    *((int *)t14) = -1;
    t25 = (0 - 30);
    t26 = (t25 * -1);
    t26 = (t26 + 1);
    t14 = (t13 + 12U);
    *((unsigned int *)t14) = t26;
    t27 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t1, t20, t11, t24);
    t7 = t27;
    goto LAB11;

LAB12:    xsi_set_current_line(79, ng0);
    t8 = (t0 + 2528U);
    t9 = *((char **)t8);
    t21 = (8 - 7);
    t22 = (t21 * 1U);
    t23 = (0 + t22);
    t8 = (t9 + t23);
    t10 = (t0 + 2648U);
    t11 = *((char **)t10);
    t10 = (t11 + 0);
    memcpy(t10, t8, 8U);
    goto LAB13;

LAB15:    xsi_set_current_line(86, ng0);
    t8 = (t0 + 2288U);
    t9 = *((char **)t8);
    t10 = ((IEEE_P_2592010699) + 4024);
    t11 = (t0 + 8028U);
    t8 = xsi_base_array_concat(t8, t20, t10, (char)99, (unsigned char)3, (char)97, t9, t11, (char)101);
    t12 = (t0 + 2768U);
    t13 = *((char **)t12);
    t12 = (t13 + 0);
    t21 = (1U + 23U);
    memcpy(t12, t8, t21);
    xsi_set_current_line(87, ng0);
    t1 = (t0 + 2408U);
    t2 = *((char **)t1);
    t8 = ((IEEE_P_2592010699) + 4024);
    t9 = (t0 + 8044U);
    t1 = xsi_base_array_concat(t1, t24, t8, (char)99, (unsigned char)3, (char)97, t2, t9, (char)101);
    t10 = (t0 + 2648U);
    t11 = *((char **)t10);
    t10 = (t0 + 8076U);
    t3 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t11, t10);
    t12 = ieee_p_1242562249_sub_1830103426_1035706684(IEEE_P_1242562249, t20, t1, t24, t3);
    t13 = (t0 + 2888U);
    t14 = *((char **)t13);
    t13 = (t14 + 0);
    t15 = (t20 + 12U);
    t4 = *((unsigned int *)t15);
    t4 = (t4 * 1U);
    memcpy(t13, t12, t4);
    xsi_set_current_line(88, ng0);
    t1 = (t0 + 2048U);
    t2 = *((char **)t1);
    t1 = (t0 + 3488U);
    t8 = *((char **)t1);
    t1 = (t8 + 0);
    memcpy(t1, t2, 8U);
    goto LAB16;

LAB18:    xsi_set_current_line(97, ng0);
    t1 = (t0 + 2768U);
    t9 = *((char **)t1);
    t10 = ((IEEE_P_2592010699) + 4024);
    t11 = (t0 + 8092U);
    t1 = xsi_base_array_concat(t1, t24, t10, (char)99, (unsigned char)2, (char)97, t9, t11, (char)101);
    t12 = (t0 + 2888U);
    t13 = *((char **)t12);
    t14 = ((IEEE_P_2592010699) + 4024);
    t15 = (t0 + 8108U);
    t12 = xsi_base_array_concat(t12, t32, t14, (char)99, (unsigned char)2, (char)97, t13, t15, (char)101);
    t28 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t20, t1, t24, t12, t32);
    t29 = (t0 + 3008U);
    t30 = *((char **)t29);
    t29 = (t30 + 0);
    t31 = (t20 + 12U);
    t4 = *((unsigned int *)t31);
    t5 = (1U * t4);
    memcpy(t29, t28, t5);
    xsi_set_current_line(98, ng0);
    t1 = (t0 + 1808U);
    t2 = *((char **)t1);
    t7 = *((unsigned char *)t2);
    t1 = (t0 + 3128U);
    t8 = *((char **)t1);
    t1 = (t8 + 0);
    *((unsigned char *)t1) = t7;
    goto LAB19;

LAB21:    xsi_set_current_line(102, ng0);
    t8 = (t0 + 3248U);
    t9 = *((char **)t8);
    t21 = (24 - 23);
    t22 = (t21 * 1U);
    t23 = (0 + t22);
    t8 = (t9 + t23);
    t11 = ((IEEE_P_2592010699) + 4024);
    t12 = (t24 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 23;
    t13 = (t12 + 4U);
    *((int *)t13) = 0;
    t13 = (t12 + 8U);
    *((int *)t13) = -1;
    t25 = (0 - 23);
    t26 = (t25 * -1);
    t26 = (t26 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t26;
    t10 = xsi_base_array_concat(t10, t20, t11, (char)99, (unsigned char)2, (char)97, t8, t24, (char)101);
    t13 = (t0 + 3008U);
    t14 = *((char **)t13);
    t13 = (t14 + 0);
    t26 = (1U + 24U);
    memcpy(t13, t10, t26);
    xsi_set_current_line(103, ng0);
    t1 = (t0 + 1808U);
    t2 = *((char **)t1);
    t7 = *((unsigned char *)t2);
    t1 = (t0 + 3128U);
    t8 = *((char **)t1);
    t1 = (t8 + 0);
    *((unsigned char *)t1) = t7;
    goto LAB22;

LAB24:    xsi_set_current_line(113, ng0);
    t8 = (t0 + 3008U);
    t9 = *((char **)t8);
    t21 = (24 - 23);
    t22 = (t21 * 1U);
    t23 = (0 + t22);
    t8 = (t9 + t23);
    t10 = (t0 + 3608U);
    t11 = *((char **)t10);
    t10 = (t11 + 0);
    memcpy(t10, t8, 23U);
    xsi_set_current_line(114, ng0);
    t1 = (t0 + 3488U);
    t2 = *((char **)t1);
    t1 = (t0 + 8156U);
    t8 = ieee_p_3620187407_sub_674691591_3965413181(IEEE_P_3620187407, t20, t2, t1, (unsigned char)3);
    t9 = (t0 + 3488U);
    t10 = *((char **)t9);
    t9 = (t10 + 0);
    t11 = (t20 + 12U);
    t4 = *((unsigned int *)t11);
    t5 = (1U * t4);
    memcpy(t9, t8, t5);
    goto LAB25;

LAB28:    xsi_set_current_line(117, ng0);
    t8 = (t0 + 3008U);
    t9 = *((char **)t8);
    t8 = (t0 + 8124U);
    t10 = ieee_p_1242562249_sub_2770553711_1035706684(IEEE_P_1242562249, t20, t9, t8, 1);
    t11 = (t0 + 3008U);
    t12 = *((char **)t11);
    t11 = (t12 + 0);
    t13 = (t20 + 12U);
    t21 = *((unsigned int *)t13);
    t21 = (t21 * 1U);
    memcpy(t11, t10, t21);
    xsi_set_current_line(118, ng0);
    t1 = (t0 + 3488U);
    t2 = *((char **)t1);
    t1 = (t0 + 8156U);
    t8 = ieee_p_3620187407_sub_674763465_3965413181(IEEE_P_3620187407, t20, t2, t1, (unsigned char)3);
    t9 = (t0 + 3488U);
    t10 = *((char **)t9);
    t9 = (t10 + 0);
    t11 = (t20 + 12U);
    t4 = *((unsigned int *)t11);
    t5 = (1U * t4);
    memcpy(t9, t8, t5);
    goto LAB27;

LAB29:;
}


extern void work_a_2146937934_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2146937934_3212880686_p_0};
	xsi_register_didat("work_a_2146937934_3212880686", "isim/floating_point_adder_tb_isim_beh.exe.sim/work/a_2146937934_3212880686.didat");
	xsi_register_executes(pe);
}
