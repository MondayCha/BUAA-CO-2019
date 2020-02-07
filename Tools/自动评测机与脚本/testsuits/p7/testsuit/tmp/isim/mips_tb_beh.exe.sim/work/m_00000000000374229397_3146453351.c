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
static unsigned int ng0[] = {16768U, 0U};
static unsigned int ng1[] = {1U, 0U};
static unsigned int ng2[] = {0U, 0U};
static int ng3[] = {14, 0};
static int ng4[] = {4, 0};
static unsigned int ng5[] = {2U, 0U};
static unsigned int ng6[] = {5U, 0U};
static unsigned int ng7[] = {3U, 0U};
static unsigned int ng8[] = {4U, 0U};
static unsigned int ng9[] = {6U, 0U};
static unsigned int ng10[] = {7U, 0U};
static unsigned int ng11[] = {8U, 0U};
static unsigned int ng12[] = {9U, 0U};
static unsigned int ng13[] = {10U, 0U};
static unsigned int ng14[] = {11U, 0U};



static void Always_36_0(char *t0)
{
    char t14[8];
    char t15[8];
    char t25[8];
    char t29[8];
    char t37[8];
    char t45[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    int t13;
    char *t16;
    char *t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t26;
    char *t27;
    char *t28;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    char *t38;
    char *t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    char *t46;

LAB0:    t1 = (t0 + 3488U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 3808);
    *((int *)t2) = 1;
    t3 = (t0 + 3520);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:
LAB5:    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:
LAB10:    t2 = (t0 + 1368U);
    t3 = *((char **)t2);

LAB11:    t2 = ((char*)((ng1)));
    t13 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t13 == 1)
        goto LAB12;

LAB13:    t2 = ((char*)((ng5)));
    t13 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t13 == 1)
        goto LAB14;

LAB15:    t2 = ((char*)((ng6)));
    t13 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t13 == 1)
        goto LAB16;

LAB17:    t2 = ((char*)((ng7)));
    t13 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t13 == 1)
        goto LAB18;

LAB19:    t2 = ((char*)((ng8)));
    t13 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t13 == 1)
        goto LAB20;

LAB21:    t2 = ((char*)((ng9)));
    t13 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t13 == 1)
        goto LAB22;

LAB23:    t2 = ((char*)((ng10)));
    t13 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t13 == 1)
        goto LAB24;

LAB25:    t2 = ((char*)((ng11)));
    t13 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t13 == 1)
        goto LAB26;

LAB27:    t2 = ((char*)((ng12)));
    t13 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t13 == 1)
        goto LAB28;

LAB29:    t2 = ((char*)((ng13)));
    t13 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t13 == 1)
        goto LAB30;

LAB31:    t2 = ((char*)((ng14)));
    t13 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t13 == 1)
        goto LAB32;

LAB33:
LAB35:
LAB34:
LAB90:    t2 = (t0 + 2008U);
    t4 = *((char **)t2);
    t2 = ((char*)((ng4)));
    memset(t14, 0, 8);
    xsi_vlog_unsigned_add(t14, 32, t4, 32, t2, 32);
    t5 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t5, t14, 0, 0, 32, 0LL);

LAB36:
LAB8:    goto LAB2;

LAB6:
LAB9:    t11 = ((char*)((ng0)));
    t12 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 32, 0LL);
    goto LAB8;

LAB12:
LAB37:    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB38;

LAB39:
LAB42:    t2 = (t0 + 2168U);
    t4 = *((char **)t2);
    t2 = ((char*)((ng4)));
    memset(t14, 0, 8);
    xsi_vlog_unsigned_add(t14, 32, t4, 32, t2, 32);
    t5 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t5, t14, 0, 0, 32, 0LL);

LAB40:    goto LAB36;

LAB14:
LAB43:    t4 = ((char*)((ng2)));
    t5 = (t0 + 1528U);
    t11 = *((char **)t5);
    memset(t15, 0, 8);
    t5 = (t15 + 4);
    t12 = (t11 + 4);
    t6 = *((unsigned int *)t11);
    t7 = (t6 >> 0);
    *((unsigned int *)t15) = t7;
    t8 = *((unsigned int *)t12);
    t9 = (t8 >> 0);
    *((unsigned int *)t5) = t9;
    t10 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t10 & 67108863U);
    t19 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t19 & 67108863U);
    t16 = (t0 + 2168U);
    t17 = *((char **)t16);
    memset(t25, 0, 8);
    t16 = (t25 + 4);
    t18 = (t17 + 4);
    t20 = *((unsigned int *)t17);
    t21 = (t20 >> 28);
    *((unsigned int *)t25) = t21;
    t22 = *((unsigned int *)t18);
    t23 = (t22 >> 28);
    *((unsigned int *)t16) = t23;
    t24 = *((unsigned int *)t25);
    *((unsigned int *)t25) = (t24 & 15U);
    t31 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t31 & 15U);
    xsi_vlogtype_concat(t14, 32, 32, 3U, t25, 4, t15, 26, t4, 2);
    t26 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t26, t14, 0, 0, 32, 0LL);
    goto LAB36;

LAB16:
LAB44:    t4 = ((char*)((ng2)));
    t5 = (t0 + 1528U);
    t11 = *((char **)t5);
    memset(t15, 0, 8);
    t5 = (t15 + 4);
    t12 = (t11 + 4);
    t6 = *((unsigned int *)t11);
    t7 = (t6 >> 0);
    *((unsigned int *)t15) = t7;
    t8 = *((unsigned int *)t12);
    t9 = (t8 >> 0);
    *((unsigned int *)t5) = t9;
    t10 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t10 & 67108863U);
    t19 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t19 & 67108863U);
    t16 = (t0 + 2168U);
    t17 = *((char **)t16);
    memset(t25, 0, 8);
    t16 = (t25 + 4);
    t18 = (t17 + 4);
    t20 = *((unsigned int *)t17);
    t21 = (t20 >> 28);
    *((unsigned int *)t25) = t21;
    t22 = *((unsigned int *)t18);
    t23 = (t22 >> 28);
    *((unsigned int *)t16) = t23;
    t24 = *((unsigned int *)t25);
    *((unsigned int *)t25) = (t24 & 15U);
    t31 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t31 & 15U);
    xsi_vlogtype_concat(t14, 32, 32, 3U, t25, 4, t15, 26, t4, 2);
    t26 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t26, t14, 0, 0, 32, 0LL);
    goto LAB36;

LAB18:
LAB45:    t4 = (t0 + 1688U);
    t5 = *((char **)t4);
    t4 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 32, 0LL);
    goto LAB36;

LAB20:
LAB46:    t4 = (t0 + 1688U);
    t5 = *((char **)t4);
    t4 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 32, 0LL);
    goto LAB36;

LAB22:
LAB47:    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    memset(t14, 0, 8);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB51;

LAB49:    if (*((unsigned int *)t4) == 0)
        goto LAB48;

LAB50:    t11 = (t14 + 4);
    *((unsigned int *)t14) = 1;
    *((unsigned int *)t11) = 1;

LAB51:    t12 = (t14 + 4);
    t19 = *((unsigned int *)t12);
    t20 = (~(t19));
    t21 = *((unsigned int *)t14);
    t22 = (t21 & t20);
    t23 = (t22 != 0);
    if (t23 > 0)
        goto LAB52;

LAB53:
LAB56:    t2 = (t0 + 2168U);
    t4 = *((char **)t2);
    t2 = ((char*)((ng4)));
    memset(t14, 0, 8);
    xsi_vlog_unsigned_add(t14, 32, t4, 32, t2, 32);
    t5 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t5, t14, 0, 0, 32, 0LL);

LAB54:    goto LAB36;

LAB24:
LAB57:    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB58;

LAB59:
LAB62:    t2 = (t0 + 2168U);
    t4 = *((char **)t2);
    t2 = ((char*)((ng4)));
    memset(t14, 0, 8);
    xsi_vlog_unsigned_add(t14, 32, t4, 32, t2, 32);
    t5 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t5, t14, 0, 0, 32, 0LL);

LAB60:    goto LAB36;

LAB26:
LAB63:    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    memset(t14, 0, 8);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB67;

LAB65:    if (*((unsigned int *)t4) == 0)
        goto LAB64;

LAB66:    t11 = (t14 + 4);
    *((unsigned int *)t14) = 1;
    *((unsigned int *)t11) = 1;

LAB67:    t12 = (t14 + 4);
    t19 = *((unsigned int *)t12);
    t20 = (~(t19));
    t21 = *((unsigned int *)t14);
    t22 = (t21 & t20);
    t23 = (t22 != 0);
    if (t23 > 0)
        goto LAB68;

LAB69:
LAB72:    t2 = (t0 + 2168U);
    t4 = *((char **)t2);
    t2 = ((char*)((ng4)));
    memset(t14, 0, 8);
    xsi_vlog_unsigned_add(t14, 32, t4, 32, t2, 32);
    t5 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t5, t14, 0, 0, 32, 0LL);

LAB70:    goto LAB36;

LAB28:
LAB73:    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB74;

LAB75:
LAB78:    t2 = (t0 + 2168U);
    t4 = *((char **)t2);
    t2 = ((char*)((ng4)));
    memset(t14, 0, 8);
    xsi_vlog_unsigned_add(t14, 32, t4, 32, t2, 32);
    t5 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t5, t14, 0, 0, 32, 0LL);

LAB76:    goto LAB36;

LAB30:
LAB79:    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    memset(t14, 0, 8);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB83;

LAB81:    if (*((unsigned int *)t4) == 0)
        goto LAB80;

LAB82:    t11 = (t14 + 4);
    *((unsigned int *)t14) = 1;
    *((unsigned int *)t11) = 1;

LAB83:    t12 = (t14 + 4);
    t19 = *((unsigned int *)t12);
    t20 = (~(t19));
    t21 = *((unsigned int *)t14);
    t22 = (t21 & t20);
    t23 = (t22 != 0);
    if (t23 > 0)
        goto LAB84;

LAB85:
LAB88:    t2 = (t0 + 2168U);
    t4 = *((char **)t2);
    t2 = ((char*)((ng4)));
    memset(t14, 0, 8);
    xsi_vlog_unsigned_add(t14, 32, t4, 32, t2, 32);
    t5 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t5, t14, 0, 0, 32, 0LL);

LAB86:    goto LAB36;

LAB32:
LAB89:    t4 = (t0 + 1848U);
    t5 = *((char **)t4);
    t4 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 32, 0LL);
    goto LAB36;

LAB38:
LAB41:    t11 = (t0 + 2168U);
    t12 = *((char **)t11);
    t11 = ((char*)((ng2)));
    t16 = (t0 + 1528U);
    t17 = *((char **)t16);
    memset(t15, 0, 8);
    t16 = (t15 + 4);
    t18 = (t17 + 4);
    t19 = *((unsigned int *)t17);
    t20 = (t19 >> 0);
    *((unsigned int *)t15) = t20;
    t21 = *((unsigned int *)t18);
    t22 = (t21 >> 0);
    *((unsigned int *)t16) = t22;
    t23 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t23 & 65535U);
    t24 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t24 & 65535U);
    t26 = ((char*)((ng3)));
    t27 = (t0 + 1528U);
    t28 = *((char **)t27);
    memset(t29, 0, 8);
    t27 = (t29 + 4);
    t30 = (t28 + 4);
    t31 = *((unsigned int *)t28);
    t32 = (t31 >> 15);
    t33 = (t32 & 1);
    *((unsigned int *)t29) = t33;
    t34 = *((unsigned int *)t30);
    t35 = (t34 >> 15);
    t36 = (t35 & 1);
    *((unsigned int *)t27) = t36;
    xsi_vlog_mul_concat(t25, 14, 1, t26, 1U, t29, 1);
    xsi_vlogtype_concat(t14, 32, 32, 3U, t25, 14, t15, 16, t11, 2);
    memset(t37, 0, 8);
    xsi_vlog_unsigned_add(t37, 32, t12, 32, t14, 32);
    t38 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t38, t37, 0, 0, 32, 0LL);
    goto LAB40;

LAB48:    *((unsigned int *)t14) = 1;
    goto LAB51;

LAB52:
LAB55:    t16 = (t0 + 2168U);
    t17 = *((char **)t16);
    t16 = ((char*)((ng2)));
    t18 = (t0 + 1528U);
    t26 = *((char **)t18);
    memset(t25, 0, 8);
    t18 = (t25 + 4);
    t27 = (t26 + 4);
    t24 = *((unsigned int *)t26);
    t31 = (t24 >> 0);
    *((unsigned int *)t25) = t31;
    t32 = *((unsigned int *)t27);
    t33 = (t32 >> 0);
    *((unsigned int *)t18) = t33;
    t34 = *((unsigned int *)t25);
    *((unsigned int *)t25) = (t34 & 65535U);
    t35 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t35 & 65535U);
    t28 = ((char*)((ng3)));
    t30 = (t0 + 1528U);
    t38 = *((char **)t30);
    memset(t37, 0, 8);
    t30 = (t37 + 4);
    t39 = (t38 + 4);
    t36 = *((unsigned int *)t38);
    t40 = (t36 >> 15);
    t41 = (t40 & 1);
    *((unsigned int *)t37) = t41;
    t42 = *((unsigned int *)t39);
    t43 = (t42 >> 15);
    t44 = (t43 & 1);
    *((unsigned int *)t30) = t44;
    xsi_vlog_mul_concat(t29, 14, 1, t28, 1U, t37, 1);
    xsi_vlogtype_concat(t15, 32, 32, 3U, t29, 14, t25, 16, t16, 2);
    memset(t45, 0, 8);
    xsi_vlog_unsigned_add(t45, 32, t17, 32, t15, 32);
    t46 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t46, t45, 0, 0, 32, 0LL);
    goto LAB54;

LAB58:
LAB61:    t11 = (t0 + 2168U);
    t12 = *((char **)t11);
    t11 = ((char*)((ng2)));
    t16 = (t0 + 1528U);
    t17 = *((char **)t16);
    memset(t15, 0, 8);
    t16 = (t15 + 4);
    t18 = (t17 + 4);
    t19 = *((unsigned int *)t17);
    t20 = (t19 >> 0);
    *((unsigned int *)t15) = t20;
    t21 = *((unsigned int *)t18);
    t22 = (t21 >> 0);
    *((unsigned int *)t16) = t22;
    t23 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t23 & 65535U);
    t24 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t24 & 65535U);
    t26 = ((char*)((ng3)));
    t27 = (t0 + 1528U);
    t28 = *((char **)t27);
    memset(t29, 0, 8);
    t27 = (t29 + 4);
    t30 = (t28 + 4);
    t31 = *((unsigned int *)t28);
    t32 = (t31 >> 15);
    t33 = (t32 & 1);
    *((unsigned int *)t29) = t33;
    t34 = *((unsigned int *)t30);
    t35 = (t34 >> 15);
    t36 = (t35 & 1);
    *((unsigned int *)t27) = t36;
    xsi_vlog_mul_concat(t25, 14, 1, t26, 1U, t29, 1);
    xsi_vlogtype_concat(t14, 32, 32, 3U, t25, 14, t15, 16, t11, 2);
    memset(t37, 0, 8);
    xsi_vlog_unsigned_add(t37, 32, t12, 32, t14, 32);
    t38 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t38, t37, 0, 0, 32, 0LL);
    goto LAB60;

LAB64:    *((unsigned int *)t14) = 1;
    goto LAB67;

LAB68:
LAB71:    t16 = (t0 + 2168U);
    t17 = *((char **)t16);
    t16 = ((char*)((ng2)));
    t18 = (t0 + 1528U);
    t26 = *((char **)t18);
    memset(t25, 0, 8);
    t18 = (t25 + 4);
    t27 = (t26 + 4);
    t24 = *((unsigned int *)t26);
    t31 = (t24 >> 0);
    *((unsigned int *)t25) = t31;
    t32 = *((unsigned int *)t27);
    t33 = (t32 >> 0);
    *((unsigned int *)t18) = t33;
    t34 = *((unsigned int *)t25);
    *((unsigned int *)t25) = (t34 & 65535U);
    t35 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t35 & 65535U);
    t28 = ((char*)((ng3)));
    t30 = (t0 + 1528U);
    t38 = *((char **)t30);
    memset(t37, 0, 8);
    t30 = (t37 + 4);
    t39 = (t38 + 4);
    t36 = *((unsigned int *)t38);
    t40 = (t36 >> 15);
    t41 = (t40 & 1);
    *((unsigned int *)t37) = t41;
    t42 = *((unsigned int *)t39);
    t43 = (t42 >> 15);
    t44 = (t43 & 1);
    *((unsigned int *)t30) = t44;
    xsi_vlog_mul_concat(t29, 14, 1, t28, 1U, t37, 1);
    xsi_vlogtype_concat(t15, 32, 32, 3U, t29, 14, t25, 16, t16, 2);
    memset(t45, 0, 8);
    xsi_vlog_unsigned_add(t45, 32, t17, 32, t15, 32);
    t46 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t46, t45, 0, 0, 32, 0LL);
    goto LAB70;

LAB74:
LAB77:    t11 = (t0 + 2168U);
    t12 = *((char **)t11);
    t11 = ((char*)((ng2)));
    t16 = (t0 + 1528U);
    t17 = *((char **)t16);
    memset(t15, 0, 8);
    t16 = (t15 + 4);
    t18 = (t17 + 4);
    t19 = *((unsigned int *)t17);
    t20 = (t19 >> 0);
    *((unsigned int *)t15) = t20;
    t21 = *((unsigned int *)t18);
    t22 = (t21 >> 0);
    *((unsigned int *)t16) = t22;
    t23 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t23 & 65535U);
    t24 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t24 & 65535U);
    t26 = ((char*)((ng3)));
    t27 = (t0 + 1528U);
    t28 = *((char **)t27);
    memset(t29, 0, 8);
    t27 = (t29 + 4);
    t30 = (t28 + 4);
    t31 = *((unsigned int *)t28);
    t32 = (t31 >> 15);
    t33 = (t32 & 1);
    *((unsigned int *)t29) = t33;
    t34 = *((unsigned int *)t30);
    t35 = (t34 >> 15);
    t36 = (t35 & 1);
    *((unsigned int *)t27) = t36;
    xsi_vlog_mul_concat(t25, 14, 1, t26, 1U, t29, 1);
    xsi_vlogtype_concat(t14, 32, 32, 3U, t25, 14, t15, 16, t11, 2);
    memset(t37, 0, 8);
    xsi_vlog_unsigned_add(t37, 32, t12, 32, t14, 32);
    t38 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t38, t37, 0, 0, 32, 0LL);
    goto LAB76;

LAB80:    *((unsigned int *)t14) = 1;
    goto LAB83;

LAB84:
LAB87:    t16 = (t0 + 2168U);
    t17 = *((char **)t16);
    t16 = ((char*)((ng2)));
    t18 = (t0 + 1528U);
    t26 = *((char **)t18);
    memset(t25, 0, 8);
    t18 = (t25 + 4);
    t27 = (t26 + 4);
    t24 = *((unsigned int *)t26);
    t31 = (t24 >> 0);
    *((unsigned int *)t25) = t31;
    t32 = *((unsigned int *)t27);
    t33 = (t32 >> 0);
    *((unsigned int *)t18) = t33;
    t34 = *((unsigned int *)t25);
    *((unsigned int *)t25) = (t34 & 65535U);
    t35 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t35 & 65535U);
    t28 = ((char*)((ng3)));
    t30 = (t0 + 1528U);
    t38 = *((char **)t30);
    memset(t37, 0, 8);
    t30 = (t37 + 4);
    t39 = (t38 + 4);
    t36 = *((unsigned int *)t38);
    t40 = (t36 >> 15);
    t41 = (t40 & 1);
    *((unsigned int *)t37) = t41;
    t42 = *((unsigned int *)t39);
    t43 = (t42 >> 15);
    t44 = (t43 & 1);
    *((unsigned int *)t30) = t44;
    xsi_vlog_mul_concat(t29, 14, 1, t28, 1U, t37, 1);
    xsi_vlogtype_concat(t15, 32, 32, 3U, t29, 14, t25, 16, t16, 2);
    memset(t45, 0, 8);
    xsi_vlog_unsigned_add(t45, 32, t17, 32, t15, 32);
    t46 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t46, t45, 0, 0, 32, 0LL);
    goto LAB86;

}


extern void work_m_00000000000374229397_3146453351_init()
{
	static char *pe[] = {(void *)Always_36_0};
	xsi_register_didat("work_m_00000000000374229397_3146453351", "isim/mips_tb_beh.exe.sim/work/m_00000000000374229397_3146453351.didat");
	xsi_register_executes(pe);
}
