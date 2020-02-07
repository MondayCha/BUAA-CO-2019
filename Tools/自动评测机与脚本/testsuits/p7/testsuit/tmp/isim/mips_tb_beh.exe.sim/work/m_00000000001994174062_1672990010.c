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
static unsigned int ng7[] = {1U, 0U};
static unsigned int ng8[] = {27U, 0U};
static unsigned int ng9[] = {28U, 0U};



static void Initial_46_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:
LAB2:    t1 = ((char*)((ng0)));
    t2 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 32, 0LL);
    t1 = ((char*)((ng0)));
    t2 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 32, 0LL);
    t1 = ((char*)((ng0)));
    t2 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 32, 0LL);
    t1 = ((char*)((ng0)));
    t2 = (t0 + 3528);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 1, 0LL);

LAB1:    return;
}

static void Always_53_1(char *t0)
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
    unsigned int t42;
    unsigned int t43;
    char *t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    char *t50;
    char *t51;
    char *t52;
    char *t53;
    char *t54;
    char *t55;
    unsigned int t56;
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
    char *t68;
    char *t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    char *t75;
    char *t76;
    char *t77;
    char *t78;
    char *t79;

LAB0:    t1 = (t0 + 4696U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 5760);
    *((int *)t2) = 1;
    t3 = (t0 + 4728);
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

LAB7:    t2 = (t0 + 3528);
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

LAB15:    t2 = (t0 + 3528);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t11 = (t5 + 4);
    t6 = *((unsigned int *)t11);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB61;

LAB62:
LAB63:
LAB16:
LAB8:    goto LAB2;

LAB6:
LAB9:    t11 = ((char*)((ng0)));
    t12 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 32, 0LL);
    t2 = ((char*)((ng0)));
    t3 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    t2 = ((char*)((ng0)));
    t3 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    t2 = ((char*)((ng0)));
    t3 = (t0 + 3528);
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
LAB36:    t2 = (t0 + 2008U);
    t3 = *((char **)t2);

LAB37:    t2 = ((char*)((ng8)));
    t28 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t28 == 1)
        goto LAB38;

LAB39:    t2 = ((char*)((ng9)));
    t28 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t28 == 1)
        goto LAB40;

LAB41:
LAB42:
LAB20:    goto LAB16;

LAB18:
LAB21:    t26 = (t0 + 2008U);
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

LAB30:
LAB31:    t2 = ((char*)((ng7)));
    t3 = (t0 + 3528);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB20;

LAB23:
LAB32:    t30 = (t0 + 1688U);
    t31 = *((char **)t30);
    xsi_vlogtype_sign_extend(t29, 64, t31, 32);
    t30 = (t0 + 1848U);
    t33 = *((char **)t30);
    xsi_vlogtype_sign_extend(t32, 64, t33, 32);
    xsi_vlog_signed_multiply(t34, 64, t29, 64, t32, 64);
    t30 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t30, t34, 0, 0, 64, 0LL);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    goto LAB31;

LAB25:
LAB33:    t3 = (t0 + 1688U);
    t4 = *((char **)t3);
    t3 = (t0 + 1848U);
    t5 = *((char **)t3);
    xsi_vlog_unsigned_multiply(t29, 64, t4, 32, t5, 32);
    t3 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t3, t29, 0, 0, 64, 0LL);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    goto LAB31;

LAB27:
LAB34:    t3 = (t0 + 1688U);
    t4 = *((char **)t3);
    t3 = (t0 + 1848U);
    t5 = *((char **)t3);
    memset(t37, 0, 8);
    xsi_vlog_signed_divide(t37, 32, t4, 32, t5, 32);
    xsi_vlogtype_concat(t13, 32, 32, 1U, t37, 32);
    t3 = (t0 + 1688U);
    t11 = *((char **)t3);
    t3 = (t0 + 1848U);
    t12 = *((char **)t3);
    memset(t41, 0, 8);
    xsi_vlog_signed_mod(t41, 32, t11, 32, t12, 32);
    xsi_vlogtype_concat(t38, 32, 32, 1U, t41, 32);
    xsi_vlogtype_concat(t29, 64, 64, 2U, t38, 32, t13, 32);
    t3 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t3, t29, 0, 0, 64, 0LL);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    goto LAB31;

LAB29:
LAB35:    t3 = (t0 + 1688U);
    t4 = *((char **)t3);
    t3 = (t0 + 1848U);
    t5 = *((char **)t3);
    memset(t35, 0, 8);
    xsi_vlog_unsigned_divide(t35, 32, t4, 32, t5, 32);
    xsi_vlogtype_concat(t13, 32, 32, 1U, t35, 32);
    t3 = (t0 + 1688U);
    t11 = *((char **)t3);
    t3 = (t0 + 1848U);
    t12 = *((char **)t3);
    memset(t37, 0, 8);
    xsi_vlog_unsigned_mod(t37, 32, t11, 32, t12, 32);
    xsi_vlogtype_concat(t36, 32, 32, 1U, t37, 32);
    xsi_vlogtype_concat(t29, 64, 64, 2U, t36, 32, t13, 32);
    t3 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t3, t29, 0, 0, 64, 0LL);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    goto LAB31;

LAB38:
LAB43:    t4 = (t0 + 1528U);
    t5 = *((char **)t4);
    memset(t13, 0, 8);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB47;

LAB45:    if (*((unsigned int *)t4) == 0)
        goto LAB44;

LAB46:    t11 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t11) = 1;

LAB47:    t12 = (t13 + 4);
    t14 = *((unsigned int *)t12);
    t15 = (~(t14));
    t16 = *((unsigned int *)t13);
    t17 = (t16 & t15);
    t18 = (t17 != 0);
    if (t18 > 0)
        goto LAB48;

LAB49:
LAB50:    goto LAB42;

LAB40:
LAB52:    t4 = (t0 + 1528U);
    t5 = *((char **)t4);
    memset(t13, 0, 8);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB56;

LAB54:    if (*((unsigned int *)t4) == 0)
        goto LAB53;

LAB55:    t11 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t11) = 1;

LAB56:    t12 = (t13 + 4);
    t14 = *((unsigned int *)t12);
    t15 = (~(t14));
    t16 = *((unsigned int *)t13);
    t17 = (t16 & t15);
    t18 = (t17 != 0);
    if (t18 > 0)
        goto LAB57;

LAB58:
LAB59:    goto LAB42;

LAB44:    *((unsigned int *)t13) = 1;
    goto LAB47;

LAB48:
LAB51:    t19 = (t0 + 1688U);
    t20 = *((char **)t19);
    t19 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t19, t20, 0, 0, 32, 0LL);
    goto LAB50;

LAB53:    *((unsigned int *)t13) = 1;
    goto LAB56;

LAB57:
LAB60:    t19 = (t0 + 1688U);
    t20 = *((char **)t19);
    t19 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t19, t20, 0, 0, 32, 0LL);
    goto LAB59;

LAB61:
LAB64:    t12 = (t0 + 3208);
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
    t42 = (~(t25));
    t43 = (t22 & t42);
    if (t43 != 0)
        goto LAB66;

LAB65:    if (t25 != 0)
        goto LAB67;

LAB68:    t44 = (t13 + 4);
    t45 = *((unsigned int *)t44);
    t46 = (~(t45));
    t47 = *((unsigned int *)t13);
    t48 = (t47 & t46);
    t49 = (t48 != 0);
    if (t49 > 0)
        goto LAB69;

LAB70:
LAB71:    goto LAB63;

LAB66:    *((unsigned int *)t13) = 1;
    goto LAB68;

LAB67:    t33 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t33) = 1;
    goto LAB68;

LAB69:
LAB72:    t50 = (t0 + 3208);
    t51 = (t50 + 56U);
    t52 = *((char **)t51);
    t53 = ((char*)((ng7)));
    memset(t35, 0, 8);
    t54 = (t52 + 4);
    t55 = (t53 + 4);
    t56 = *((unsigned int *)t52);
    t57 = *((unsigned int *)t53);
    t58 = (t56 ^ t57);
    t59 = *((unsigned int *)t54);
    t60 = *((unsigned int *)t55);
    t61 = (t59 ^ t60);
    t62 = (t58 | t61);
    t63 = *((unsigned int *)t54);
    t64 = *((unsigned int *)t55);
    t65 = (t63 | t64);
    t66 = (~(t65));
    t67 = (t62 & t66);
    if (t67 != 0)
        goto LAB76;

LAB73:    if (t65 != 0)
        goto LAB75;

LAB74:    *((unsigned int *)t35) = 1;

LAB76:    t69 = (t35 + 4);
    t70 = *((unsigned int *)t69);
    t71 = (~(t70));
    t72 = *((unsigned int *)t35);
    t73 = (t72 & t71);
    t74 = (t73 != 0);
    if (t74 > 0)
        goto LAB77;

LAB78:
LAB79:    t2 = (t0 + 3208);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t11 = ((char*)((ng7)));
    memset(t13, 0, 8);
    xsi_vlog_unsigned_minus(t13, 32, t5, 32, t11, 32);
    t12 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t12, t13, 0, 0, 32, 0LL);
    goto LAB71;

LAB75:    t68 = (t35 + 4);
    *((unsigned int *)t35) = 1;
    *((unsigned int *)t68) = 1;
    goto LAB76;

LAB77:
LAB80:    t75 = (t0 + 3368);
    t76 = (t75 + 56U);
    t77 = *((char **)t76);
    t78 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t78, t77, 0, 0, 32, 0LL);
    t79 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t79, t77, 32, 0, 32, 0LL);
    t2 = ((char*)((ng0)));
    t4 = (t0 + 3528);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    goto LAB79;

}

static void Cont_112_2(char *t0)
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

LAB0:    t1 = (t0 + 4944U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 5888);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 8);
    xsi_driver_vfirst_trans(t5, 0, 31);
    t10 = (t0 + 5776);
    *((int *)t10) = 1;

LAB1:    return;
}

static void Cont_113_3(char *t0)
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

LAB0:    t1 = (t0 + 5192U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 3048);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 5952);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 8);
    xsi_driver_vfirst_trans(t5, 0, 31);
    t10 = (t0 + 5792);
    *((int *)t10) = 1;

LAB1:    return;
}

static void Cont_114_4(char *t0)
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

LAB0:    t1 = (t0 + 5440U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 3528);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 6016);
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
    t18 = (t0 + 5808);
    *((int *)t18) = 1;

LAB1:    return;
}


extern void work_m_00000000001994174062_1672990010_init()
{
	static char *pe[] = {(void *)Initial_46_0,(void *)Always_53_1,(void *)Cont_112_2,(void *)Cont_113_3,(void *)Cont_114_4};
	xsi_register_didat("work_m_00000000001994174062_1672990010", "isim/mips_tb_beh.exe.sim/work/m_00000000001994174062_1672990010.didat");
	xsi_register_executes(pe);
}
