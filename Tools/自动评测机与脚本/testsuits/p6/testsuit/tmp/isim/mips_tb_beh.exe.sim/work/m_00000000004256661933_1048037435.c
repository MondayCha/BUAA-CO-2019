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
static unsigned int ng0[] = {19U, 0U};
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {24, 0};
static unsigned int ng3[] = {1U, 0U};
static unsigned int ng4[] = {2U, 0U};
static unsigned int ng5[] = {3U, 0U};
static unsigned int ng6[] = {20U, 0U};
static unsigned int ng7[] = {21U, 0U};
static int ng8[] = {16, 0};
static unsigned int ng9[] = {22U, 0U};



static void Always_30_0(char *t0)
{
    char t7[8];
    char t19[8];
    char t20[8];
    char t30[8];
    char t34[8];
    char t43[8];
    char t44[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    int t18;
    char *t21;
    char *t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t31;
    char *t32;
    char *t33;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    char *t42;

LAB0:    t1 = (t0 + 2688U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 3008);
    *((int *)t2) = 1;
    t3 = (t0 + 2720);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:
LAB5:    t4 = (t0 + 1208U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng0)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t4, 6);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB13;

LAB14:
LAB16:
LAB15:
LAB54:    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);

LAB17:    goto LAB2;

LAB7:
LAB18:    t8 = (t0 + 1368U);
    t9 = *((char **)t8);
    memset(t7, 0, 8);
    t8 = (t7 + 4);
    t10 = (t9 + 4);
    t11 = *((unsigned int *)t9);
    t12 = (t11 >> 0);
    *((unsigned int *)t7) = t12;
    t13 = *((unsigned int *)t10);
    t14 = (t13 >> 0);
    *((unsigned int *)t8) = t14;
    t15 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t15 & 3U);
    t16 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t16 & 3U);

LAB19:    t17 = ((char*)((ng1)));
    t18 = xsi_vlog_unsigned_case_compare(t7, 2, t17, 2);
    if (t18 == 1)
        goto LAB20;

LAB21:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t7, 2, t2, 2);
    if (t6 == 1)
        goto LAB22;

LAB23:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t7, 2, t2, 2);
    if (t6 == 1)
        goto LAB24;

LAB25:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t7, 2, t2, 2);
    if (t6 == 1)
        goto LAB26;

LAB27:
LAB28:    goto LAB17;

LAB9:
LAB29:    t3 = (t0 + 1368U);
    t4 = *((char **)t3);
    memset(t19, 0, 8);
    t3 = (t19 + 4);
    t8 = (t4 + 4);
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 0);
    *((unsigned int *)t19) = t12;
    t13 = *((unsigned int *)t8);
    t14 = (t13 >> 0);
    *((unsigned int *)t3) = t14;
    t15 = *((unsigned int *)t19);
    *((unsigned int *)t19) = (t15 & 3U);
    t16 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t16 & 3U);

LAB30:    t9 = ((char*)((ng1)));
    t18 = xsi_vlog_unsigned_case_compare(t19, 2, t9, 2);
    if (t18 == 1)
        goto LAB31;

LAB32:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t19, 2, t2, 2);
    if (t6 == 1)
        goto LAB33;

LAB34:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t19, 2, t2, 2);
    if (t6 == 1)
        goto LAB35;

LAB36:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t19, 2, t2, 2);
    if (t6 == 1)
        goto LAB37;

LAB38:
LAB39:    goto LAB17;

LAB11:
LAB40:    t3 = (t0 + 1368U);
    t4 = *((char **)t3);
    memset(t20, 0, 8);
    t3 = (t20 + 4);
    t8 = (t4 + 4);
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 1);
    t13 = (t12 & 1);
    *((unsigned int *)t20) = t13;
    t14 = *((unsigned int *)t8);
    t15 = (t14 >> 1);
    t16 = (t15 & 1);
    *((unsigned int *)t3) = t16;

LAB41:    t9 = ((char*)((ng1)));
    t18 = xsi_vlog_unsigned_case_compare(t20, 1, t9, 1);
    if (t18 == 1)
        goto LAB42;

LAB43:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t20, 1, t2, 1);
    if (t6 == 1)
        goto LAB44;

LAB45:
LAB46:    goto LAB17;

LAB13:
LAB47:    t3 = (t0 + 1368U);
    t4 = *((char **)t3);
    memset(t30, 0, 8);
    t3 = (t30 + 4);
    t8 = (t4 + 4);
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 1);
    t13 = (t12 & 1);
    *((unsigned int *)t30) = t13;
    t14 = *((unsigned int *)t8);
    t15 = (t14 >> 1);
    t16 = (t15 & 1);
    *((unsigned int *)t3) = t16;

LAB48:    t9 = ((char*)((ng1)));
    t18 = xsi_vlog_unsigned_case_compare(t30, 1, t9, 1);
    if (t18 == 1)
        goto LAB49;

LAB50:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t30, 1, t2, 1);
    if (t6 == 1)
        goto LAB51;

LAB52:
LAB53:    goto LAB17;

LAB20:    t21 = (t0 + 1048U);
    t22 = *((char **)t21);
    memset(t20, 0, 8);
    t21 = (t20 + 4);
    t23 = (t22 + 4);
    t24 = *((unsigned int *)t22);
    t25 = (t24 >> 0);
    *((unsigned int *)t20) = t25;
    t26 = *((unsigned int *)t23);
    t27 = (t26 >> 0);
    *((unsigned int *)t21) = t27;
    t28 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t28 & 255U);
    t29 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t29 & 255U);
    t31 = ((char*)((ng2)));
    t32 = (t0 + 1048U);
    t33 = *((char **)t32);
    memset(t34, 0, 8);
    t32 = (t34 + 4);
    t35 = (t33 + 4);
    t36 = *((unsigned int *)t33);
    t37 = (t36 >> 7);
    t38 = (t37 & 1);
    *((unsigned int *)t34) = t38;
    t39 = *((unsigned int *)t35);
    t40 = (t39 >> 7);
    t41 = (t40 & 1);
    *((unsigned int *)t32) = t41;
    xsi_vlog_mul_concat(t30, 24, 1, t31, 1U, t34, 1);
    xsi_vlogtype_concat(t19, 32, 32, 2U, t30, 24, t20, 8);
    t42 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t42, t19, 0, 0, 32, 0LL);
    goto LAB28;

LAB22:    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    memset(t20, 0, 8);
    t3 = (t20 + 4);
    t8 = (t4 + 4);
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 8);
    *((unsigned int *)t20) = t12;
    t13 = *((unsigned int *)t8);
    t14 = (t13 >> 8);
    *((unsigned int *)t3) = t14;
    t15 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t15 & 255U);
    t16 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t16 & 255U);
    t9 = ((char*)((ng2)));
    t10 = (t0 + 1048U);
    t17 = *((char **)t10);
    memset(t34, 0, 8);
    t10 = (t34 + 4);
    t21 = (t17 + 4);
    t24 = *((unsigned int *)t17);
    t25 = (t24 >> 15);
    t26 = (t25 & 1);
    *((unsigned int *)t34) = t26;
    t27 = *((unsigned int *)t21);
    t28 = (t27 >> 15);
    t29 = (t28 & 1);
    *((unsigned int *)t10) = t29;
    xsi_vlog_mul_concat(t30, 24, 1, t9, 1U, t34, 1);
    xsi_vlogtype_concat(t19, 32, 32, 2U, t30, 24, t20, 8);
    t22 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t22, t19, 0, 0, 32, 0LL);
    goto LAB28;

LAB24:    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    memset(t20, 0, 8);
    t3 = (t20 + 4);
    t8 = (t4 + 4);
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 16);
    *((unsigned int *)t20) = t12;
    t13 = *((unsigned int *)t8);
    t14 = (t13 >> 16);
    *((unsigned int *)t3) = t14;
    t15 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t15 & 255U);
    t16 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t16 & 255U);
    t9 = ((char*)((ng2)));
    t10 = (t0 + 1048U);
    t17 = *((char **)t10);
    memset(t34, 0, 8);
    t10 = (t34 + 4);
    t21 = (t17 + 4);
    t24 = *((unsigned int *)t17);
    t25 = (t24 >> 23);
    t26 = (t25 & 1);
    *((unsigned int *)t34) = t26;
    t27 = *((unsigned int *)t21);
    t28 = (t27 >> 23);
    t29 = (t28 & 1);
    *((unsigned int *)t10) = t29;
    xsi_vlog_mul_concat(t30, 24, 1, t9, 1U, t34, 1);
    xsi_vlogtype_concat(t19, 32, 32, 2U, t30, 24, t20, 8);
    t22 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t22, t19, 0, 0, 32, 0LL);
    goto LAB28;

LAB26:    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    memset(t20, 0, 8);
    t3 = (t20 + 4);
    t8 = (t4 + 4);
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 24);
    *((unsigned int *)t20) = t12;
    t13 = *((unsigned int *)t8);
    t14 = (t13 >> 24);
    *((unsigned int *)t3) = t14;
    t15 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t15 & 255U);
    t16 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t16 & 255U);
    t9 = ((char*)((ng2)));
    t10 = (t0 + 1048U);
    t17 = *((char **)t10);
    memset(t34, 0, 8);
    t10 = (t34 + 4);
    t21 = (t17 + 4);
    t24 = *((unsigned int *)t17);
    t25 = (t24 >> 31);
    t26 = (t25 & 1);
    *((unsigned int *)t34) = t26;
    t27 = *((unsigned int *)t21);
    t28 = (t27 >> 31);
    t29 = (t28 & 1);
    *((unsigned int *)t10) = t29;
    xsi_vlog_mul_concat(t30, 24, 1, t9, 1U, t34, 1);
    xsi_vlogtype_concat(t19, 32, 32, 2U, t30, 24, t20, 8);
    t22 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t22, t19, 0, 0, 32, 0LL);
    goto LAB28;

LAB31:    t10 = (t0 + 1048U);
    t17 = *((char **)t10);
    memset(t30, 0, 8);
    t10 = (t30 + 4);
    t21 = (t17 + 4);
    t24 = *((unsigned int *)t17);
    t25 = (t24 >> 0);
    *((unsigned int *)t30) = t25;
    t26 = *((unsigned int *)t21);
    t27 = (t26 >> 0);
    *((unsigned int *)t10) = t27;
    t28 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t28 & 255U);
    t29 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t29 & 255U);
    t22 = ((char*)((ng1)));
    xsi_vlogtype_concat(t20, 32, 32, 2U, t22, 24, t30, 8);
    t23 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t23, t20, 0, 0, 32, 0LL);
    goto LAB39;

LAB33:    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    memset(t30, 0, 8);
    t3 = (t30 + 4);
    t8 = (t4 + 4);
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 8);
    *((unsigned int *)t30) = t12;
    t13 = *((unsigned int *)t8);
    t14 = (t13 >> 8);
    *((unsigned int *)t3) = t14;
    t15 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t15 & 255U);
    t16 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t16 & 255U);
    t9 = ((char*)((ng1)));
    xsi_vlogtype_concat(t20, 32, 32, 2U, t9, 24, t30, 8);
    t10 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t10, t20, 0, 0, 32, 0LL);
    goto LAB39;

LAB35:    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    memset(t30, 0, 8);
    t3 = (t30 + 4);
    t8 = (t4 + 4);
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 16);
    *((unsigned int *)t30) = t12;
    t13 = *((unsigned int *)t8);
    t14 = (t13 >> 16);
    *((unsigned int *)t3) = t14;
    t15 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t15 & 255U);
    t16 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t16 & 255U);
    t9 = ((char*)((ng1)));
    xsi_vlogtype_concat(t20, 32, 32, 2U, t9, 24, t30, 8);
    t10 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t10, t20, 0, 0, 32, 0LL);
    goto LAB39;

LAB37:    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    memset(t30, 0, 8);
    t3 = (t30 + 4);
    t8 = (t4 + 4);
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 24);
    *((unsigned int *)t30) = t12;
    t13 = *((unsigned int *)t8);
    t14 = (t13 >> 24);
    *((unsigned int *)t3) = t14;
    t15 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t15 & 255U);
    t16 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t16 & 255U);
    t9 = ((char*)((ng1)));
    xsi_vlogtype_concat(t20, 32, 32, 2U, t9, 24, t30, 8);
    t10 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t10, t20, 0, 0, 32, 0LL);
    goto LAB39;

LAB42:    t10 = (t0 + 1048U);
    t17 = *((char **)t10);
    memset(t34, 0, 8);
    t10 = (t34 + 4);
    t21 = (t17 + 4);
    t24 = *((unsigned int *)t17);
    t25 = (t24 >> 0);
    *((unsigned int *)t34) = t25;
    t26 = *((unsigned int *)t21);
    t27 = (t26 >> 0);
    *((unsigned int *)t10) = t27;
    t28 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t28 & 65535U);
    t29 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t29 & 65535U);
    t22 = ((char*)((ng8)));
    t23 = (t0 + 1048U);
    t31 = *((char **)t23);
    memset(t44, 0, 8);
    t23 = (t44 + 4);
    t32 = (t31 + 4);
    t36 = *((unsigned int *)t31);
    t37 = (t36 >> 15);
    t38 = (t37 & 1);
    *((unsigned int *)t44) = t38;
    t39 = *((unsigned int *)t32);
    t40 = (t39 >> 15);
    t41 = (t40 & 1);
    *((unsigned int *)t23) = t41;
    xsi_vlog_mul_concat(t43, 16, 1, t22, 1U, t44, 1);
    xsi_vlogtype_concat(t30, 32, 32, 2U, t43, 16, t34, 16);
    t33 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t33, t30, 0, 0, 32, 0LL);
    goto LAB46;

LAB44:    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    memset(t34, 0, 8);
    t3 = (t34 + 4);
    t8 = (t4 + 4);
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 16);
    *((unsigned int *)t34) = t12;
    t13 = *((unsigned int *)t8);
    t14 = (t13 >> 16);
    *((unsigned int *)t3) = t14;
    t15 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t15 & 65535U);
    t16 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t16 & 65535U);
    t9 = ((char*)((ng8)));
    t10 = (t0 + 1048U);
    t17 = *((char **)t10);
    memset(t44, 0, 8);
    t10 = (t44 + 4);
    t21 = (t17 + 4);
    t24 = *((unsigned int *)t17);
    t25 = (t24 >> 31);
    t26 = (t25 & 1);
    *((unsigned int *)t44) = t26;
    t27 = *((unsigned int *)t21);
    t28 = (t27 >> 31);
    t29 = (t28 & 1);
    *((unsigned int *)t10) = t29;
    xsi_vlog_mul_concat(t43, 16, 1, t9, 1U, t44, 1);
    xsi_vlogtype_concat(t30, 32, 32, 2U, t43, 16, t34, 16);
    t22 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t22, t30, 0, 0, 32, 0LL);
    goto LAB46;

LAB49:    t10 = (t0 + 1048U);
    t17 = *((char **)t10);
    memset(t43, 0, 8);
    t10 = (t43 + 4);
    t21 = (t17 + 4);
    t24 = *((unsigned int *)t17);
    t25 = (t24 >> 0);
    *((unsigned int *)t43) = t25;
    t26 = *((unsigned int *)t21);
    t27 = (t26 >> 0);
    *((unsigned int *)t10) = t27;
    t28 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t28 & 65535U);
    t29 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t29 & 65535U);
    t22 = ((char*)((ng1)));
    xsi_vlogtype_concat(t34, 32, 32, 2U, t22, 16, t43, 16);
    t23 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t23, t34, 0, 0, 32, 0LL);
    goto LAB53;

LAB51:    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    memset(t43, 0, 8);
    t3 = (t43 + 4);
    t8 = (t4 + 4);
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 16);
    *((unsigned int *)t43) = t12;
    t13 = *((unsigned int *)t8);
    t14 = (t13 >> 16);
    *((unsigned int *)t3) = t14;
    t15 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t15 & 65535U);
    t16 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t16 & 65535U);
    t9 = ((char*)((ng1)));
    xsi_vlogtype_concat(t34, 32, 32, 2U, t9, 16, t43, 16);
    t10 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t10, t34, 0, 0, 32, 0LL);
    goto LAB53;

}


extern void work_m_00000000004256661933_1048037435_init()
{
	static char *pe[] = {(void *)Always_30_0};
	xsi_register_didat("work_m_00000000004256661933_1048037435", "isim/mips_tb_beh.exe.sim/work/m_00000000004256661933_1048037435.didat");
	xsi_register_executes(pe);
}
