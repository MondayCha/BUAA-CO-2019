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
static unsigned int ng0[] = {1U, 0U};
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {14, 0};
static int ng3[] = {4, 0};
static unsigned int ng4[] = {2U, 0U};
static unsigned int ng5[] = {5U, 0U};
static unsigned int ng6[] = {3U, 0U};
static unsigned int ng7[] = {4U, 0U};
static unsigned int ng8[] = {6U, 0U};
static unsigned int ng9[] = {7U, 0U};
static unsigned int ng10[] = {8U, 0U};
static unsigned int ng11[] = {9U, 0U};
static unsigned int ng12[] = {10U, 0U};



static void Always_34_0(char *t0)
{
    char t16[8];
    char t17[8];
    char t27[8];
    char t31[8];
    char t39[8];
    char t46[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t18;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    char *t28;
    char *t29;
    char *t30;
    char *t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;

LAB0:    t1 = (t0 + 3168U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 3488);
    *((int *)t2) = 1;
    t3 = (t0 + 3200);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:
LAB5:    t4 = (t0 + 1208U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng0)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t4, 4);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng10)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng11)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng12)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB25;

LAB26:
LAB28:
LAB27:
LAB82:    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng3)));
    memset(t16, 0, 8);
    xsi_vlog_unsigned_add(t16, 32, t3, 32, t2, 32);
    t4 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t4, t16, 0, 0, 32, 0LL);

LAB29:    goto LAB2;

LAB7:
LAB30:    t7 = (t0 + 1048U);
    t8 = *((char **)t7);
    t7 = (t8 + 4);
    t9 = *((unsigned int *)t7);
    t10 = (~(t9));
    t11 = *((unsigned int *)t8);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB31;

LAB32:
LAB35:    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng3)));
    memset(t16, 0, 8);
    xsi_vlog_unsigned_add(t16, 32, t3, 32, t2, 32);
    t4 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t4, t16, 0, 0, 32, 0LL);

LAB33:    goto LAB29;

LAB9:
LAB36:    t3 = ((char*)((ng1)));
    t4 = (t0 + 1368U);
    t7 = *((char **)t4);
    memset(t17, 0, 8);
    t4 = (t17 + 4);
    t8 = (t7 + 4);
    t9 = *((unsigned int *)t7);
    t10 = (t9 >> 0);
    *((unsigned int *)t17) = t10;
    t11 = *((unsigned int *)t8);
    t12 = (t11 >> 0);
    *((unsigned int *)t4) = t12;
    t13 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t13 & 67108863U);
    t21 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t21 & 67108863U);
    t14 = (t0 + 1848U);
    t15 = *((char **)t14);
    memset(t27, 0, 8);
    t14 = (t27 + 4);
    t18 = (t15 + 4);
    t22 = *((unsigned int *)t15);
    t23 = (t22 >> 28);
    *((unsigned int *)t27) = t23;
    t24 = *((unsigned int *)t18);
    t25 = (t24 >> 28);
    *((unsigned int *)t14) = t25;
    t26 = *((unsigned int *)t27);
    *((unsigned int *)t27) = (t26 & 15U);
    t33 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t33 & 15U);
    xsi_vlogtype_concat(t16, 32, 32, 3U, t27, 4, t17, 26, t3, 2);
    t19 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t19, t16, 0, 0, 32, 0LL);
    goto LAB29;

LAB11:
LAB37:    t3 = ((char*)((ng1)));
    t4 = (t0 + 1368U);
    t7 = *((char **)t4);
    memset(t17, 0, 8);
    t4 = (t17 + 4);
    t8 = (t7 + 4);
    t9 = *((unsigned int *)t7);
    t10 = (t9 >> 0);
    *((unsigned int *)t17) = t10;
    t11 = *((unsigned int *)t8);
    t12 = (t11 >> 0);
    *((unsigned int *)t4) = t12;
    t13 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t13 & 67108863U);
    t21 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t21 & 67108863U);
    t14 = (t0 + 1848U);
    t15 = *((char **)t14);
    memset(t27, 0, 8);
    t14 = (t27 + 4);
    t18 = (t15 + 4);
    t22 = *((unsigned int *)t15);
    t23 = (t22 >> 28);
    *((unsigned int *)t27) = t23;
    t24 = *((unsigned int *)t18);
    t25 = (t24 >> 28);
    *((unsigned int *)t14) = t25;
    t26 = *((unsigned int *)t27);
    *((unsigned int *)t27) = (t26 & 15U);
    t33 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t33 & 15U);
    xsi_vlogtype_concat(t16, 32, 32, 3U, t27, 4, t17, 26, t3, 2);
    t19 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t19, t16, 0, 0, 32, 0LL);
    goto LAB29;

LAB13:
LAB38:    t3 = (t0 + 1528U);
    t4 = *((char **)t3);
    t3 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t3, t4, 0, 0, 32, 0LL);
    goto LAB29;

LAB15:
LAB39:    t3 = (t0 + 1528U);
    t4 = *((char **)t3);
    t3 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t3, t4, 0, 0, 32, 0LL);
    goto LAB29;

LAB17:
LAB40:    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    memset(t16, 0, 8);
    t3 = (t4 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (~(t9));
    t11 = *((unsigned int *)t4);
    t12 = (t11 & t10);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB44;

LAB42:    if (*((unsigned int *)t3) == 0)
        goto LAB41;

LAB43:    t7 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t7) = 1;

LAB44:    t8 = (t16 + 4);
    t21 = *((unsigned int *)t8);
    t22 = (~(t21));
    t23 = *((unsigned int *)t16);
    t24 = (t23 & t22);
    t25 = (t24 != 0);
    if (t25 > 0)
        goto LAB45;

LAB46:
LAB49:    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng3)));
    memset(t16, 0, 8);
    xsi_vlog_unsigned_add(t16, 32, t3, 32, t2, 32);
    t4 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t4, t16, 0, 0, 32, 0LL);

LAB47:    goto LAB29;

LAB19:
LAB50:    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t4 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (~(t9));
    t11 = *((unsigned int *)t4);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB51;

LAB52:
LAB55:    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng3)));
    memset(t16, 0, 8);
    xsi_vlog_unsigned_add(t16, 32, t3, 32, t2, 32);
    t4 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t4, t16, 0, 0, 32, 0LL);

LAB53:    goto LAB29;

LAB21:
LAB56:    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    memset(t16, 0, 8);
    t3 = (t4 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (~(t9));
    t11 = *((unsigned int *)t4);
    t12 = (t11 & t10);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB60;

LAB58:    if (*((unsigned int *)t3) == 0)
        goto LAB57;

LAB59:    t7 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t7) = 1;

LAB60:    t8 = (t16 + 4);
    t21 = *((unsigned int *)t8);
    t22 = (~(t21));
    t23 = *((unsigned int *)t16);
    t24 = (t23 & t22);
    t25 = (t24 != 0);
    if (t25 > 0)
        goto LAB61;

LAB62:
LAB65:    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng3)));
    memset(t16, 0, 8);
    xsi_vlog_unsigned_add(t16, 32, t3, 32, t2, 32);
    t4 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t4, t16, 0, 0, 32, 0LL);

LAB63:    goto LAB29;

LAB23:
LAB66:    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t4 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (~(t9));
    t11 = *((unsigned int *)t4);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB67;

LAB68:
LAB71:    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng3)));
    memset(t16, 0, 8);
    xsi_vlog_unsigned_add(t16, 32, t3, 32, t2, 32);
    t4 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t4, t16, 0, 0, 32, 0LL);

LAB69:    goto LAB29;

LAB25:
LAB72:    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    memset(t16, 0, 8);
    t3 = (t4 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (~(t9));
    t11 = *((unsigned int *)t4);
    t12 = (t11 & t10);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB76;

LAB74:    if (*((unsigned int *)t3) == 0)
        goto LAB73;

LAB75:    t7 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t7) = 1;

LAB76:    t8 = (t16 + 4);
    t21 = *((unsigned int *)t8);
    t22 = (~(t21));
    t23 = *((unsigned int *)t16);
    t24 = (t23 & t22);
    t25 = (t24 != 0);
    if (t25 > 0)
        goto LAB77;

LAB78:
LAB81:    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng3)));
    memset(t16, 0, 8);
    xsi_vlog_unsigned_add(t16, 32, t3, 32, t2, 32);
    t4 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t4, t16, 0, 0, 32, 0LL);

LAB79:    goto LAB29;

LAB31:
LAB34:    t14 = (t0 + 1848U);
    t15 = *((char **)t14);
    t14 = ((char*)((ng1)));
    t18 = (t0 + 1368U);
    t19 = *((char **)t18);
    memset(t17, 0, 8);
    t18 = (t17 + 4);
    t20 = (t19 + 4);
    t21 = *((unsigned int *)t19);
    t22 = (t21 >> 0);
    *((unsigned int *)t17) = t22;
    t23 = *((unsigned int *)t20);
    t24 = (t23 >> 0);
    *((unsigned int *)t18) = t24;
    t25 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t25 & 65535U);
    t26 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t26 & 65535U);
    t28 = ((char*)((ng2)));
    t29 = (t0 + 1368U);
    t30 = *((char **)t29);
    memset(t31, 0, 8);
    t29 = (t31 + 4);
    t32 = (t30 + 4);
    t33 = *((unsigned int *)t30);
    t34 = (t33 >> 15);
    t35 = (t34 & 1);
    *((unsigned int *)t31) = t35;
    t36 = *((unsigned int *)t32);
    t37 = (t36 >> 15);
    t38 = (t37 & 1);
    *((unsigned int *)t29) = t38;
    xsi_vlog_mul_concat(t27, 14, 1, t28, 1U, t31, 1);
    xsi_vlogtype_concat(t16, 32, 32, 3U, t27, 14, t17, 16, t14, 2);
    memset(t39, 0, 8);
    xsi_vlog_unsigned_add(t39, 32, t15, 32, t16, 32);
    t40 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t40, t39, 0, 0, 32, 0LL);
    goto LAB33;

LAB41:    *((unsigned int *)t16) = 1;
    goto LAB44;

LAB45:
LAB48:    t14 = (t0 + 1848U);
    t15 = *((char **)t14);
    t14 = ((char*)((ng1)));
    t18 = (t0 + 1368U);
    t19 = *((char **)t18);
    memset(t27, 0, 8);
    t18 = (t27 + 4);
    t20 = (t19 + 4);
    t26 = *((unsigned int *)t19);
    t33 = (t26 >> 0);
    *((unsigned int *)t27) = t33;
    t34 = *((unsigned int *)t20);
    t35 = (t34 >> 0);
    *((unsigned int *)t18) = t35;
    t36 = *((unsigned int *)t27);
    *((unsigned int *)t27) = (t36 & 65535U);
    t37 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t37 & 65535U);
    t28 = ((char*)((ng2)));
    t29 = (t0 + 1368U);
    t30 = *((char **)t29);
    memset(t39, 0, 8);
    t29 = (t39 + 4);
    t32 = (t30 + 4);
    t38 = *((unsigned int *)t30);
    t41 = (t38 >> 15);
    t42 = (t41 & 1);
    *((unsigned int *)t39) = t42;
    t43 = *((unsigned int *)t32);
    t44 = (t43 >> 15);
    t45 = (t44 & 1);
    *((unsigned int *)t29) = t45;
    xsi_vlog_mul_concat(t31, 14, 1, t28, 1U, t39, 1);
    xsi_vlogtype_concat(t17, 32, 32, 3U, t31, 14, t27, 16, t14, 2);
    memset(t46, 0, 8);
    xsi_vlog_unsigned_add(t46, 32, t15, 32, t17, 32);
    t40 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t40, t46, 0, 0, 32, 0LL);
    goto LAB47;

LAB51:
LAB54:    t7 = (t0 + 1848U);
    t8 = *((char **)t7);
    t7 = ((char*)((ng1)));
    t14 = (t0 + 1368U);
    t15 = *((char **)t14);
    memset(t17, 0, 8);
    t14 = (t17 + 4);
    t18 = (t15 + 4);
    t21 = *((unsigned int *)t15);
    t22 = (t21 >> 0);
    *((unsigned int *)t17) = t22;
    t23 = *((unsigned int *)t18);
    t24 = (t23 >> 0);
    *((unsigned int *)t14) = t24;
    t25 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t25 & 65535U);
    t26 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t26 & 65535U);
    t19 = ((char*)((ng2)));
    t20 = (t0 + 1368U);
    t28 = *((char **)t20);
    memset(t31, 0, 8);
    t20 = (t31 + 4);
    t29 = (t28 + 4);
    t33 = *((unsigned int *)t28);
    t34 = (t33 >> 15);
    t35 = (t34 & 1);
    *((unsigned int *)t31) = t35;
    t36 = *((unsigned int *)t29);
    t37 = (t36 >> 15);
    t38 = (t37 & 1);
    *((unsigned int *)t20) = t38;
    xsi_vlog_mul_concat(t27, 14, 1, t19, 1U, t31, 1);
    xsi_vlogtype_concat(t16, 32, 32, 3U, t27, 14, t17, 16, t7, 2);
    memset(t39, 0, 8);
    xsi_vlog_unsigned_add(t39, 32, t8, 32, t16, 32);
    t30 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t30, t39, 0, 0, 32, 0LL);
    goto LAB53;

LAB57:    *((unsigned int *)t16) = 1;
    goto LAB60;

LAB61:
LAB64:    t14 = (t0 + 1848U);
    t15 = *((char **)t14);
    t14 = ((char*)((ng1)));
    t18 = (t0 + 1368U);
    t19 = *((char **)t18);
    memset(t27, 0, 8);
    t18 = (t27 + 4);
    t20 = (t19 + 4);
    t26 = *((unsigned int *)t19);
    t33 = (t26 >> 0);
    *((unsigned int *)t27) = t33;
    t34 = *((unsigned int *)t20);
    t35 = (t34 >> 0);
    *((unsigned int *)t18) = t35;
    t36 = *((unsigned int *)t27);
    *((unsigned int *)t27) = (t36 & 65535U);
    t37 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t37 & 65535U);
    t28 = ((char*)((ng2)));
    t29 = (t0 + 1368U);
    t30 = *((char **)t29);
    memset(t39, 0, 8);
    t29 = (t39 + 4);
    t32 = (t30 + 4);
    t38 = *((unsigned int *)t30);
    t41 = (t38 >> 15);
    t42 = (t41 & 1);
    *((unsigned int *)t39) = t42;
    t43 = *((unsigned int *)t32);
    t44 = (t43 >> 15);
    t45 = (t44 & 1);
    *((unsigned int *)t29) = t45;
    xsi_vlog_mul_concat(t31, 14, 1, t28, 1U, t39, 1);
    xsi_vlogtype_concat(t17, 32, 32, 3U, t31, 14, t27, 16, t14, 2);
    memset(t46, 0, 8);
    xsi_vlog_unsigned_add(t46, 32, t15, 32, t17, 32);
    t40 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t40, t46, 0, 0, 32, 0LL);
    goto LAB63;

LAB67:
LAB70:    t7 = (t0 + 1848U);
    t8 = *((char **)t7);
    t7 = ((char*)((ng1)));
    t14 = (t0 + 1368U);
    t15 = *((char **)t14);
    memset(t17, 0, 8);
    t14 = (t17 + 4);
    t18 = (t15 + 4);
    t21 = *((unsigned int *)t15);
    t22 = (t21 >> 0);
    *((unsigned int *)t17) = t22;
    t23 = *((unsigned int *)t18);
    t24 = (t23 >> 0);
    *((unsigned int *)t14) = t24;
    t25 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t25 & 65535U);
    t26 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t26 & 65535U);
    t19 = ((char*)((ng2)));
    t20 = (t0 + 1368U);
    t28 = *((char **)t20);
    memset(t31, 0, 8);
    t20 = (t31 + 4);
    t29 = (t28 + 4);
    t33 = *((unsigned int *)t28);
    t34 = (t33 >> 15);
    t35 = (t34 & 1);
    *((unsigned int *)t31) = t35;
    t36 = *((unsigned int *)t29);
    t37 = (t36 >> 15);
    t38 = (t37 & 1);
    *((unsigned int *)t20) = t38;
    xsi_vlog_mul_concat(t27, 14, 1, t19, 1U, t31, 1);
    xsi_vlogtype_concat(t16, 32, 32, 3U, t27, 14, t17, 16, t7, 2);
    memset(t39, 0, 8);
    xsi_vlog_unsigned_add(t39, 32, t8, 32, t16, 32);
    t30 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t30, t39, 0, 0, 32, 0LL);
    goto LAB69;

LAB73:    *((unsigned int *)t16) = 1;
    goto LAB76;

LAB77:
LAB80:    t14 = (t0 + 1848U);
    t15 = *((char **)t14);
    t14 = ((char*)((ng1)));
    t18 = (t0 + 1368U);
    t19 = *((char **)t18);
    memset(t27, 0, 8);
    t18 = (t27 + 4);
    t20 = (t19 + 4);
    t26 = *((unsigned int *)t19);
    t33 = (t26 >> 0);
    *((unsigned int *)t27) = t33;
    t34 = *((unsigned int *)t20);
    t35 = (t34 >> 0);
    *((unsigned int *)t18) = t35;
    t36 = *((unsigned int *)t27);
    *((unsigned int *)t27) = (t36 & 65535U);
    t37 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t37 & 65535U);
    t28 = ((char*)((ng2)));
    t29 = (t0 + 1368U);
    t30 = *((char **)t29);
    memset(t39, 0, 8);
    t29 = (t39 + 4);
    t32 = (t30 + 4);
    t38 = *((unsigned int *)t30);
    t41 = (t38 >> 15);
    t42 = (t41 & 1);
    *((unsigned int *)t39) = t42;
    t43 = *((unsigned int *)t32);
    t44 = (t43 >> 15);
    t45 = (t44 & 1);
    *((unsigned int *)t29) = t45;
    xsi_vlog_mul_concat(t31, 14, 1, t28, 1U, t39, 1);
    xsi_vlogtype_concat(t17, 32, 32, 3U, t31, 14, t27, 16, t14, 2);
    memset(t46, 0, 8);
    xsi_vlog_unsigned_add(t46, 32, t15, 32, t17, 32);
    t40 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t40, t46, 0, 0, 32, 0LL);
    goto LAB79;

}


extern void work_m_00000000002749911176_3146453351_init()
{
	static char *pe[] = {(void *)Always_34_0};
	xsi_register_didat("work_m_00000000002749911176_3146453351", "isim/mips_tb_beh.exe.sim/work/m_00000000002749911176_3146453351.didat");
	xsi_register_executes(pe);
}
