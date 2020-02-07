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
static unsigned int ng0[] = {0U, 0U};
static unsigned int ng1[] = {29U, 0U};
static unsigned int ng2[] = {5U, 0U};
static unsigned int ng3[] = {30U, 0U};
static unsigned int ng4[] = {13U, 0U};
static unsigned int ng5[] = {10U, 0U};
static unsigned int ng6[] = {14U, 0U};
static unsigned int ng7[] = {51U, 0U};
static unsigned int ng8[] = {1U, 0U};
static unsigned int ng9[] = {27U, 0U};
static unsigned int ng10[] = {28U, 0U};



static void Initial_45_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:
LAB2:    t1 = ((char*)((ng0)));
    t2 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 32, 0LL);
    t1 = ((char*)((ng0)));
    t2 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 32, 0LL);
    t1 = ((char*)((ng0)));
    t2 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 32, 0LL);
    t1 = ((char*)((ng0)));
    t2 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 1, 0LL);

LAB1:    return;
}

static void Always_52_1(char *t0)
{
    char t13[8];
    char t29[16];
    char t32[16];
    char t34[16];
    char t35[8];
    char t36[8];
    char t37[8];
    char t38[8];
    char t41[8];
    char t42[16];
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
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    int t28;
    char *t30;
    char *t31;
    char *t33;
    unsigned int t43;
    unsigned int t44;
    char *t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    char *t51;
    char *t52;
    char *t53;
    char *t54;
    char *t55;
    char *t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    char *t69;
    char *t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    char *t76;
    char *t77;
    char *t78;
    char *t79;
    char *t80;

LAB0:    t1 = (t0 + 4536U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 5600);
    *((int *)t2) = 1;
    t3 = (t0 + 4568);
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

LAB7:    t2 = (t0 + 3368);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t13, 0, 8);
    t5 = (t4 + 4);
    t6 = *((unsigned int *)t5);
    t7 = (~(t6));
    t8 = *((unsigned int *)t4);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB13;

LAB11:    if (*((unsigned int *)t5) == 0)
        goto LAB10;

LAB12:    t11 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t11) = 1;

LAB13:    t12 = (t13 + 4);
    t14 = *((unsigned int *)t12);
    t15 = (~(t14));
    t16 = *((unsigned int *)t13);
    t17 = (t16 & t15);
    t18 = (t17 != 0);
    if (t18 > 0)
        goto LAB14;

LAB15:    t2 = (t0 + 3368);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t11 = (t5 + 4);
    t6 = *((unsigned int *)t11);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB48;

LAB49:
LAB50:
LAB16:
LAB8:    goto LAB2;

LAB6:
LAB9:    t11 = ((char*)((ng0)));
    t12 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 32, 0LL);
    t2 = ((char*)((ng0)));
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    t2 = ((char*)((ng0)));
    t3 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    t2 = ((char*)((ng0)));
    t3 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB8;

LAB10:    *((unsigned int *)t13) = 1;
    goto LAB13;

LAB14:
LAB17:    t19 = (t0 + 1368U);
    t20 = *((char **)t19);
    t19 = (t20 + 4);
    t21 = *((unsigned int *)t19);
    t22 = (~(t21));
    t23 = *((unsigned int *)t20);
    t24 = (t23 & t22);
    t25 = (t24 != 0);
    if (t25 > 0)
        goto LAB18;

LAB19:
LAB39:    t2 = (t0 + 1848U);
    t3 = *((char **)t2);

LAB40:    t2 = ((char*)((ng9)));
    t28 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t28 == 1)
        goto LAB41;

LAB42:    t2 = ((char*)((ng10)));
    t28 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t28 == 1)
        goto LAB43;

LAB44:
LAB45:
LAB20:    goto LAB16;

LAB18:
LAB21:    t26 = (t0 + 1848U);
    t27 = *((char **)t26);

LAB22:    t26 = ((char*)((ng1)));
    t28 = xsi_vlog_unsigned_case_compare(t27, 6, t26, 6);
    if (t28 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng3)));
    t28 = xsi_vlog_unsigned_case_compare(t27, 6, t2, 6);
    if (t28 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng4)));
    t28 = xsi_vlog_unsigned_case_compare(t27, 6, t2, 6);
    if (t28 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng6)));
    t28 = xsi_vlog_unsigned_case_compare(t27, 6, t2, 6);
    if (t28 == 1)
        goto LAB29;

LAB30:    t2 = ((char*)((ng7)));
    t28 = xsi_vlog_unsigned_case_compare(t27, 6, t2, 6);
    if (t28 == 1)
        goto LAB31;

LAB32:
LAB33:    t2 = ((char*)((ng8)));
    t3 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB20;

LAB23:
LAB34:    t30 = (t0 + 1528U);
    t31 = *((char **)t30);
    xsi_vlogtype_sign_extend(t29, 64, t31, 32);
    t30 = (t0 + 1688U);
    t33 = *((char **)t30);
    xsi_vlogtype_sign_extend(t32, 64, t33, 32);
    xsi_vlog_signed_multiply(t34, 64, t29, 64, t32, 64);
    t30 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t30, t34, 0, 0, 64, 0LL);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    goto LAB33;

LAB25:
LAB35:    t3 = (t0 + 1528U);
    t4 = *((char **)t3);
    t3 = (t0 + 1688U);
    t5 = *((char **)t3);
    xsi_vlog_unsigned_multiply(t29, 64, t4, 32, t5, 32);
    t3 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t3, t29, 0, 0, 64, 0LL);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    goto LAB33;

LAB27:
LAB36:    t3 = (t0 + 1528U);
    t4 = *((char **)t3);
    t3 = (t0 + 1688U);
    t5 = *((char **)t3);
    memset(t37, 0, 8);
    xsi_vlog_signed_divide(t37, 32, t4, 32, t5, 32);
    xsi_vlogtype_concat(t13, 32, 32, 1U, t37, 32);
    t3 = (t0 + 1528U);
    t11 = *((char **)t3);
    t3 = (t0 + 1688U);
    t12 = *((char **)t3);
    memset(t41, 0, 8);
    xsi_vlog_signed_mod(t41, 32, t11, 32, t12, 32);
    xsi_vlogtype_concat(t38, 32, 32, 1U, t41, 32);
    xsi_vlogtype_concat(t29, 64, 64, 2U, t38, 32, t13, 32);
    t3 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t3, t29, 0, 0, 64, 0LL);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    goto LAB33;

LAB29:
LAB37:    t3 = (t0 + 1528U);
    t4 = *((char **)t3);
    t3 = (t0 + 1688U);
    t5 = *((char **)t3);
    memset(t35, 0, 8);
    xsi_vlog_unsigned_divide(t35, 32, t4, 32, t5, 32);
    xsi_vlogtype_concat(t13, 32, 32, 1U, t35, 32);
    t3 = (t0 + 1528U);
    t11 = *((char **)t3);
    t3 = (t0 + 1688U);
    t12 = *((char **)t3);
    memset(t37, 0, 8);
    xsi_vlog_unsigned_mod(t37, 32, t11, 32, t12, 32);
    xsi_vlogtype_concat(t36, 32, 32, 1U, t37, 32);
    xsi_vlogtype_concat(t29, 64, 64, 2U, t36, 32, t13, 32);
    t3 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t3, t29, 0, 0, 64, 0LL);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    goto LAB33;

LAB31:
LAB38:    t3 = (t0 + 3208);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t11 = (t0 + 1528U);
    t12 = *((char **)t11);
    xsi_vlogtype_zero_extend(t29, 64, t12, 32);
    t11 = (t0 + 1688U);
    t19 = *((char **)t11);
    xsi_vlogtype_zero_extend(t32, 64, t19, 32);
    xsi_vlog_unsigned_multiply(t34, 64, t29, 64, t32, 64);
    xsi_vlog_unsigned_add(t42, 64, t5, 64, t34, 64);
    t11 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t11, t42, 0, 0, 64, 0LL);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    goto LAB33;

LAB41:
LAB46:    t4 = (t0 + 1528U);
    t5 = *((char **)t4);
    t4 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 32, 0LL);
    goto LAB45;

LAB43:
LAB47:    t4 = (t0 + 1528U);
    t5 = *((char **)t4);
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 32, 0LL);
    goto LAB45;

LAB48:
LAB51:    t12 = (t0 + 3048);
    t19 = (t12 + 56U);
    t20 = *((char **)t19);
    t26 = ((char*)((ng0)));
    memset(t13, 0, 8);
    t30 = (t20 + 4);
    t31 = (t26 + 4);
    t14 = *((unsigned int *)t20);
    t15 = *((unsigned int *)t26);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t30);
    t18 = *((unsigned int *)t31);
    t21 = (t17 ^ t18);
    t22 = (t16 | t21);
    t23 = *((unsigned int *)t30);
    t24 = *((unsigned int *)t31);
    t25 = (t23 | t24);
    t43 = (~(t25));
    t44 = (t22 & t43);
    if (t44 != 0)
        goto LAB53;

LAB52:    if (t25 != 0)
        goto LAB54;

LAB55:    t45 = (t13 + 4);
    t46 = *((unsigned int *)t45);
    t47 = (~(t46));
    t48 = *((unsigned int *)t13);
    t49 = (t48 & t47);
    t50 = (t49 != 0);
    if (t50 > 0)
        goto LAB56;

LAB57:
LAB58:    goto LAB50;

LAB53:    *((unsigned int *)t13) = 1;
    goto LAB55;

LAB54:    t33 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t33) = 1;
    goto LAB55;

LAB56:
LAB59:    t51 = (t0 + 3048);
    t52 = (t51 + 56U);
    t53 = *((char **)t52);
    t54 = ((char*)((ng8)));
    memset(t35, 0, 8);
    t55 = (t53 + 4);
    t56 = (t54 + 4);
    t57 = *((unsigned int *)t53);
    t58 = *((unsigned int *)t54);
    t59 = (t57 ^ t58);
    t60 = *((unsigned int *)t55);
    t61 = *((unsigned int *)t56);
    t62 = (t60 ^ t61);
    t63 = (t59 | t62);
    t64 = *((unsigned int *)t55);
    t65 = *((unsigned int *)t56);
    t66 = (t64 | t65);
    t67 = (~(t66));
    t68 = (t63 & t67);
    if (t68 != 0)
        goto LAB63;

LAB60:    if (t66 != 0)
        goto LAB62;

LAB61:    *((unsigned int *)t35) = 1;

LAB63:    t70 = (t35 + 4);
    t71 = *((unsigned int *)t70);
    t72 = (~(t71));
    t73 = *((unsigned int *)t35);
    t74 = (t73 & t72);
    t75 = (t74 != 0);
    if (t75 > 0)
        goto LAB64;

LAB65:
LAB66:    t2 = (t0 + 3048);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t11 = ((char*)((ng8)));
    memset(t13, 0, 8);
    xsi_vlog_unsigned_minus(t13, 32, t5, 32, t11, 32);
    t12 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t12, t13, 0, 0, 32, 0LL);
    goto LAB58;

LAB62:    t69 = (t35 + 4);
    *((unsigned int *)t35) = 1;
    *((unsigned int *)t69) = 1;
    goto LAB63;

LAB64:
LAB67:    t76 = (t0 + 3208);
    t77 = (t76 + 56U);
    t78 = *((char **)t77);
    t79 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t79, t78, 0, 0, 32, 0LL);
    t80 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t80, t78, 32, 0, 32, 0LL);
    t2 = ((char*)((ng0)));
    t4 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    goto LAB66;

}

static void Cont_107_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 4784U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 2728);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 5728);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 8);
    xsi_driver_vfirst_trans(t5, 0, 31);
    t10 = (t0 + 5616);
    *((int *)t10) = 1;

LAB1:    return;
}

static void Cont_108_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 5032U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 5792);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 8);
    xsi_driver_vfirst_trans(t5, 0, 31);
    t10 = (t0 + 5632);
    *((int *)t10) = 1;

LAB1:    return;
}

static void Cont_109_4(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 5280U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 3368);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 5856);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 1U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 0);
    t18 = (t0 + 5648);
    *((int *)t18) = 1;

LAB1:    return;
}


extern void work_m_00000000000572766651_1672990010_init()
{
	static char *pe[] = {(void *)Initial_45_0,(void *)Always_52_1,(void *)Cont_107_2,(void *)Cont_108_3,(void *)Cont_109_4};
	xsi_register_didat("work_m_00000000000572766651_1672990010", "isim/mips_tb_beh.exe.sim/work/m_00000000000572766651_1672990010.didat");
	xsi_register_executes(pe);
}
