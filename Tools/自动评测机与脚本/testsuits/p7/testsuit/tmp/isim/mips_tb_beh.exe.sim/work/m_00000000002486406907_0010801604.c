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
static int ng0[] = {0, 0};
static int ng1[] = {4096, 0};
static unsigned int ng2[] = {0U, 0U};
static int ng3[] = {1, 0};
static int ng4[] = {1024, 0};
static unsigned int ng5[] = {35U, 0U};
static unsigned int ng6[] = {1U, 0U};
static int ng7[] = {31, 0};
static int ng8[] = {16, 0};
static const char *ng9 = "%d@%h: *%h <= %h";
static int ng10[] = {15, 0};
static unsigned int ng11[] = {34U, 0U};
static int ng12[] = {7, 0};
static int ng13[] = {8, 0};
static unsigned int ng14[] = {2U, 0U};
static int ng15[] = {23, 0};
static unsigned int ng16[] = {3U, 0U};
static int ng17[] = {24, 0};



static void Initial_38_0(char *t0)
{
    char t5[8];
    char t14[8];
    char t15[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    unsigned int t26;
    int t27;
    char *t28;
    unsigned int t29;
    int t30;
    int t31;
    unsigned int t32;
    unsigned int t33;
    int t34;
    int t35;

LAB0:
LAB2:    t1 = ((char*)((ng0)));
    t2 = (t0 + 2888);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);

LAB3:    t1 = (t0 + 2888);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = ((char*)((ng1)));
    memset(t5, 0, 8);
    xsi_vlog_signed_less(t5, 32, t3, 32, t4, 32);
    t6 = (t5 + 4);
    t7 = *((unsigned int *)t6);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB4;

LAB5:
LAB1:    return;
LAB4:
LAB6:    t12 = ((char*)((ng2)));
    t13 = (t0 + 2728);
    t16 = (t0 + 2728);
    t17 = (t16 + 72U);
    t18 = *((char **)t17);
    t19 = (t0 + 2728);
    t20 = (t19 + 64U);
    t21 = *((char **)t20);
    t22 = (t0 + 2888);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    xsi_vlog_generic_convert_array_indices(t14, t15, t18, t21, 2, 1, t24, 32, 1);
    t25 = (t14 + 4);
    t26 = *((unsigned int *)t25);
    t27 = (!(t26));
    t28 = (t15 + 4);
    t29 = *((unsigned int *)t28);
    t30 = (!(t29));
    t31 = (t27 && t30);
    if (t31 == 1)
        goto LAB7;

LAB8:    t1 = (t0 + 2888);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = ((char*)((ng3)));
    memset(t5, 0, 8);
    xsi_vlog_signed_add(t5, 32, t3, 32, t4, 32);
    t6 = (t0 + 2888);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 32);
    goto LAB3;

LAB7:    t32 = *((unsigned int *)t14);
    t33 = *((unsigned int *)t15);
    t34 = (t32 - t33);
    t35 = (t34 + 1);
    xsi_vlogvar_wait_assign_value(t13, t12, 0, *((unsigned int *)t15), t35, 0LL);
    goto LAB8;

}

static void Cont_44_1(char *t0)
{
    char t3[8];
    char t4[8];
    char t19[8];
    char t26[8];
    char *t1;
    char *t2;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    char *t18;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t27;
    char *t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;

LAB0:    t1 = (t0 + 4056U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 1528U);
    t5 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t5 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB4;

LAB5:    if (*((unsigned int *)t2) != 0)
        goto LAB6;

LAB7:    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t12);
    t15 = (t13 || t14);
    if (t15 > 0)
        goto LAB8;

LAB9:    t36 = *((unsigned int *)t4);
    t37 = (~(t36));
    t38 = *((unsigned int *)t12);
    t39 = (t37 || t38);
    if (t39 > 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t12) > 0)
        goto LAB12;

LAB13:    if (*((unsigned int *)t4) > 0)
        goto LAB14;

LAB15:    memcpy(t3, t40, 8);

LAB16:    t41 = (t0 + 4720);
    t42 = (t41 + 56U);
    t43 = *((char **)t42);
    t44 = (t43 + 56U);
    t45 = *((char **)t44);
    memcpy(t45, t3, 8);
    xsi_driver_vfirst_trans(t41, 0, 31);
    t46 = (t0 + 4624);
    *((int *)t46) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t4) = 1;
    goto LAB7;

LAB6:    t11 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB7;

LAB8:    t16 = (t0 + 2728);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t20 = (t0 + 2728);
    t21 = (t20 + 72U);
    t22 = *((char **)t21);
    t23 = (t0 + 2728);
    t24 = (t23 + 64U);
    t25 = *((char **)t24);
    t27 = (t0 + 1848U);
    t28 = *((char **)t27);
    memset(t26, 0, 8);
    t27 = (t26 + 4);
    t29 = (t28 + 4);
    t30 = *((unsigned int *)t28);
    t31 = (t30 >> 2);
    *((unsigned int *)t26) = t31;
    t32 = *((unsigned int *)t29);
    t33 = (t32 >> 2);
    *((unsigned int *)t27) = t33;
    t34 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t34 & 4095U);
    t35 = *((unsigned int *)t27);
    *((unsigned int *)t27) = (t35 & 4095U);
    xsi_vlog_generic_get_array_select_value(t19, 32, t18, t22, t25, 2, 1, t26, 12, 2);
    goto LAB9;

LAB10:    t40 = ((char*)((ng2)));
    goto LAB11;

LAB12:    xsi_vlog_unsigned_bit_combine(t3, 32, t19, 32, t40, 32);
    goto LAB16;

LAB14:    memcpy(t3, t19, 8);
    goto LAB16;

}

static void Always_46_2(char *t0)
{
    char t13[8];
    char t15[8];
    char t16[8];
    char t73[8];
    char t82[8];
    char t83[8];
    char t90[8];
    char t100[8];
    char t101[8];
    char t102[8];
    char t131[16];
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
    char *t14;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    unsigned int t27;
    int t28;
    char *t29;
    unsigned int t30;
    int t31;
    int t32;
    unsigned int t33;
    unsigned int t34;
    int t35;
    int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
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
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    char *t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    char *t81;
    char *t84;
    char *t85;
    char *t86;
    char *t87;
    char *t88;
    char *t89;
    char *t91;
    char *t92;
    char *t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    char *t103;
    char *t104;
    char *t105;
    char *t106;
    char *t107;
    char *t108;
    unsigned int t109;
    char *t110;
    unsigned int t111;
    char *t112;
    unsigned int t113;
    char *t114;
    unsigned int t115;
    int t116;
    int t117;
    char *t118;
    unsigned int t119;
    int t120;
    int t121;
    unsigned int t122;
    int t123;
    unsigned int t124;
    unsigned int t125;
    int t126;
    unsigned int t127;
    unsigned int t128;
    int t129;
    int t130;

LAB0:    t1 = (t0 + 4304U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 4640);
    *((int *)t2) = 1;
    t3 = (t0 + 4336);
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
LAB16:    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB17;

LAB18:
LAB19:
LAB8:    goto LAB2;

LAB6:
LAB9:    t11 = ((char*)((ng0)));
    t12 = (t0 + 2888);
    xsi_vlogvar_assign_value(t12, t11, 0, 0, 32);

LAB10:    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t13, 0, 8);
    xsi_vlog_signed_less(t13, 32, t4, 32, t5, 32);
    t11 = (t13 + 4);
    t6 = *((unsigned int *)t11);
    t7 = (~(t6));
    t8 = *((unsigned int *)t13);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB11;

LAB12:    goto LAB8;

LAB11:
LAB13:    t12 = ((char*)((ng2)));
    t14 = (t0 + 2728);
    t17 = (t0 + 2728);
    t18 = (t17 + 72U);
    t19 = *((char **)t18);
    t20 = (t0 + 2728);
    t21 = (t20 + 64U);
    t22 = *((char **)t21);
    t23 = (t0 + 2888);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    xsi_vlog_generic_convert_array_indices(t15, t16, t19, t22, 2, 1, t25, 32, 1);
    t26 = (t15 + 4);
    t27 = *((unsigned int *)t26);
    t28 = (!(t27));
    t29 = (t16 + 4);
    t30 = *((unsigned int *)t29);
    t31 = (!(t30));
    t32 = (t28 && t31);
    if (t32 == 1)
        goto LAB14;

LAB15:    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t13, 0, 8);
    xsi_vlog_signed_add(t13, 32, t4, 32, t5, 32);
    t11 = (t0 + 2888);
    xsi_vlogvar_assign_value(t11, t13, 0, 0, 32);
    goto LAB10;

LAB14:    t33 = *((unsigned int *)t15);
    t34 = *((unsigned int *)t16);
    t35 = (t33 - t34);
    t36 = (t35 + 1);
    xsi_vlogvar_wait_assign_value(t14, t12, 0, *((unsigned int *)t16), t36, 0LL);
    goto LAB15;

LAB17:
LAB20:    t4 = (t0 + 1688U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng5)));
    memset(t13, 0, 8);
    t11 = (t5 + 4);
    t12 = (t4 + 4);
    t27 = *((unsigned int *)t5);
    t30 = *((unsigned int *)t4);
    t33 = (t27 ^ t30);
    t34 = *((unsigned int *)t11);
    t37 = *((unsigned int *)t12);
    t38 = (t34 ^ t37);
    t39 = (t33 | t38);
    t40 = *((unsigned int *)t11);
    t41 = *((unsigned int *)t12);
    t42 = (t40 | t41);
    t43 = (~(t42));
    t44 = (t39 & t43);
    if (t44 != 0)
        goto LAB24;

LAB21:    if (t42 != 0)
        goto LAB23;

LAB22:    *((unsigned int *)t13) = 1;

LAB24:    t17 = (t13 + 4);
    t45 = *((unsigned int *)t17);
    t46 = (~(t45));
    t47 = *((unsigned int *)t13);
    t48 = (t47 & t46);
    t49 = (t48 != 0);
    if (t49 > 0)
        goto LAB25;

LAB26:    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng11)));
    memset(t13, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t6 = *((unsigned int *)t3);
    t7 = *((unsigned int *)t2);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
    t27 = (t9 ^ t10);
    t30 = (t8 | t27);
    t33 = *((unsigned int *)t4);
    t34 = *((unsigned int *)t5);
    t37 = (t33 | t34);
    t38 = (~(t37));
    t39 = (t30 & t38);
    if (t39 != 0)
        goto LAB45;

LAB42:    if (t37 != 0)
        goto LAB44;

LAB43:    *((unsigned int *)t13) = 1;

LAB45:    t12 = (t13 + 4);
    t40 = *((unsigned int *)t12);
    t41 = (~(t40));
    t42 = *((unsigned int *)t13);
    t43 = (t42 & t41);
    t44 = (t43 != 0);
    if (t44 > 0)
        goto LAB46;

LAB47:
LAB90:    t2 = (t0 + 2008U);
    t3 = *((char **)t2);
    t2 = (t0 + 2728);
    t4 = (t0 + 2728);
    t5 = (t4 + 72U);
    t11 = *((char **)t5);
    t12 = (t0 + 2728);
    t14 = (t12 + 64U);
    t17 = *((char **)t14);
    t18 = (t0 + 1848U);
    t19 = *((char **)t18);
    memset(t16, 0, 8);
    t18 = (t16 + 4);
    t20 = (t19 + 4);
    t6 = *((unsigned int *)t19);
    t7 = (t6 >> 2);
    *((unsigned int *)t16) = t7;
    t8 = *((unsigned int *)t20);
    t9 = (t8 >> 2);
    *((unsigned int *)t18) = t9;
    t10 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t10 & 4095U);
    t27 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t27 & 4095U);
    xsi_vlog_generic_convert_array_indices(t13, t15, t11, t17, 2, 1, t16, 12, 2);
    t21 = (t13 + 4);
    t30 = *((unsigned int *)t21);
    t28 = (!(t30));
    t22 = (t15 + 4);
    t33 = *((unsigned int *)t22);
    t31 = (!(t33));
    t32 = (t28 && t31);
    if (t32 == 1)
        goto LAB91;

LAB92:    t2 = xsi_vlog_time(t131, 1000.0000000000000, 1000.0000000000000);
    t3 = (t0 + 2168U);
    t4 = *((char **)t3);
    t3 = (t0 + 1848U);
    t5 = *((char **)t3);
    t3 = (t0 + 2008U);
    t11 = *((char **)t3);
    xsi_vlogfile_write(1, 0, 0, ng9, 5, t0, (char)118, t131, 64, (char)118, t4, 32, (char)118, t5, 32, (char)118, t11, 32);

LAB48:
LAB27:    goto LAB19;

LAB23:    t14 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB24;

LAB25:
LAB28:    t18 = (t0 + 1848U);
    t19 = *((char **)t18);
    memset(t15, 0, 8);
    t18 = (t15 + 4);
    t20 = (t19 + 4);
    t50 = *((unsigned int *)t19);
    t51 = (t50 >> 1);
    t52 = (t51 & 1);
    *((unsigned int *)t15) = t52;
    t53 = *((unsigned int *)t20);
    t54 = (t53 >> 1);
    t55 = (t54 & 1);
    *((unsigned int *)t18) = t55;
    t21 = ((char*)((ng6)));
    memset(t16, 0, 8);
    t22 = (t15 + 4);
    t23 = (t21 + 4);
    t56 = *((unsigned int *)t15);
    t57 = *((unsigned int *)t21);
    t58 = (t56 ^ t57);
    t59 = *((unsigned int *)t22);
    t60 = *((unsigned int *)t23);
    t61 = (t59 ^ t60);
    t62 = (t58 | t61);
    t63 = *((unsigned int *)t22);
    t64 = *((unsigned int *)t23);
    t65 = (t63 | t64);
    t66 = (~(t65));
    t67 = (t62 & t66);
    if (t67 != 0)
        goto LAB32;

LAB29:    if (t65 != 0)
        goto LAB31;

LAB30:    *((unsigned int *)t16) = 1;

LAB32:    t25 = (t16 + 4);
    t68 = *((unsigned int *)t25);
    t69 = (~(t68));
    t70 = *((unsigned int *)t16);
    t71 = (t70 & t69);
    t72 = (t71 != 0);
    if (t72 > 0)
        goto LAB33;

LAB34:
LAB39:    t2 = (t0 + 2008U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t13 + 4);
    t4 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 0);
    *((unsigned int *)t13) = t7;
    t8 = *((unsigned int *)t4);
    t9 = (t8 >> 0);
    *((unsigned int *)t2) = t9;
    t10 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t10 & 65535U);
    t27 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t27 & 65535U);
    t5 = (t0 + 2728);
    t11 = (t0 + 2728);
    t12 = (t11 + 72U);
    t14 = *((char **)t12);
    t17 = (t0 + 2728);
    t18 = (t17 + 64U);
    t19 = *((char **)t18);
    t20 = (t0 + 1848U);
    t21 = *((char **)t20);
    memset(t73, 0, 8);
    t20 = (t73 + 4);
    t22 = (t21 + 4);
    t30 = *((unsigned int *)t21);
    t33 = (t30 >> 2);
    *((unsigned int *)t73) = t33;
    t34 = *((unsigned int *)t22);
    t37 = (t34 >> 2);
    *((unsigned int *)t20) = t37;
    t38 = *((unsigned int *)t73);
    *((unsigned int *)t73) = (t38 & 4095U);
    t39 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t39 & 4095U);
    xsi_vlog_generic_convert_array_indices(t15, t16, t14, t19, 2, 1, t73, 12, 2);
    t23 = (t0 + 2728);
    t24 = (t23 + 72U);
    t25 = *((char **)t24);
    t26 = ((char*)((ng10)));
    t29 = ((char*)((ng0)));
    xsi_vlog_convert_partindices(t82, t83, t90, ((int*)(t25)), 2, t26, 32, 1, t29, 32, 1);
    t74 = (t15 + 4);
    t40 = *((unsigned int *)t74);
    t28 = (!(t40));
    t81 = (t16 + 4);
    t41 = *((unsigned int *)t81);
    t31 = (!(t41));
    t32 = (t28 && t31);
    t84 = (t82 + 4);
    t42 = *((unsigned int *)t84);
    t35 = (!(t42));
    t36 = (t32 && t35);
    t85 = (t83 + 4);
    t43 = *((unsigned int *)t85);
    t116 = (!(t43));
    t117 = (t36 && t116);
    t86 = (t90 + 4);
    t44 = *((unsigned int *)t86);
    t120 = (!(t44));
    t121 = (t117 && t120);
    if (t121 == 1)
        goto LAB40;

LAB41:    t2 = xsi_vlog_time(t131, 1000.0000000000000, 1000.0000000000000);
    t3 = (t0 + 2168U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 1848U);
    t11 = *((char **)t5);
    memset(t15, 0, 8);
    t5 = (t15 + 4);
    t12 = (t11 + 4);
    t6 = *((unsigned int *)t11);
    t7 = (t6 >> 2);
    *((unsigned int *)t15) = t7;
    t8 = *((unsigned int *)t12);
    t9 = (t8 >> 2);
    *((unsigned int *)t5) = t9;
    t10 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t10 & 1073741823U);
    t27 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t27 & 1073741823U);
    xsi_vlogtype_concat(t13, 32, 32, 2U, t15, 30, t3, 2);
    t14 = (t0 + 2008U);
    t17 = *((char **)t14);
    memset(t73, 0, 8);
    t14 = (t73 + 4);
    t18 = (t17 + 4);
    t30 = *((unsigned int *)t17);
    t33 = (t30 >> 0);
    *((unsigned int *)t73) = t33;
    t34 = *((unsigned int *)t18);
    t37 = (t34 >> 0);
    *((unsigned int *)t14) = t37;
    t38 = *((unsigned int *)t73);
    *((unsigned int *)t73) = (t38 & 65535U);
    t39 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t39 & 65535U);
    t19 = (t0 + 2728);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t0 + 2728);
    t23 = (t22 + 72U);
    t24 = *((char **)t23);
    t25 = (t0 + 2728);
    t26 = (t25 + 64U);
    t29 = *((char **)t26);
    t74 = (t0 + 1848U);
    t81 = *((char **)t74);
    memset(t83, 0, 8);
    t74 = (t83 + 4);
    t84 = (t81 + 4);
    t40 = *((unsigned int *)t81);
    t41 = (t40 >> 2);
    *((unsigned int *)t83) = t41;
    t42 = *((unsigned int *)t84);
    t43 = (t42 >> 2);
    *((unsigned int *)t74) = t43;
    t44 = *((unsigned int *)t83);
    *((unsigned int *)t83) = (t44 & 4095U);
    t45 = *((unsigned int *)t74);
    *((unsigned int *)t74) = (t45 & 4095U);
    xsi_vlog_generic_get_array_select_value(t82, 32, t21, t24, t29, 2, 1, t83, 12, 2);
    memset(t90, 0, 8);
    t85 = (t90 + 4);
    t86 = (t82 + 4);
    t46 = *((unsigned int *)t82);
    t47 = (t46 >> 16);
    *((unsigned int *)t90) = t47;
    t48 = *((unsigned int *)t86);
    t49 = (t48 >> 16);
    *((unsigned int *)t85) = t49;
    t50 = *((unsigned int *)t90);
    *((unsigned int *)t90) = (t50 & 65535U);
    t51 = *((unsigned int *)t85);
    *((unsigned int *)t85) = (t51 & 65535U);
    xsi_vlogtype_concat(t16, 32, 32, 2U, t90, 16, t73, 16);
    xsi_vlogfile_write(1, 0, 0, ng9, 5, t0, (char)118, t131, 64, (char)118, t4, 32, (char)118, t13, 32, (char)118, t16, 32);

LAB35:    goto LAB27;

LAB31:    t24 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t24) = 1;
    goto LAB32;

LAB33:
LAB36:    t26 = (t0 + 2008U);
    t29 = *((char **)t26);
    memset(t73, 0, 8);
    t26 = (t73 + 4);
    t74 = (t29 + 4);
    t75 = *((unsigned int *)t29);
    t76 = (t75 >> 0);
    *((unsigned int *)t73) = t76;
    t77 = *((unsigned int *)t74);
    t78 = (t77 >> 0);
    *((unsigned int *)t26) = t78;
    t79 = *((unsigned int *)t73);
    *((unsigned int *)t73) = (t79 & 65535U);
    t80 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t80 & 65535U);
    t81 = (t0 + 2728);
    t84 = (t0 + 2728);
    t85 = (t84 + 72U);
    t86 = *((char **)t85);
    t87 = (t0 + 2728);
    t88 = (t87 + 64U);
    t89 = *((char **)t88);
    t91 = (t0 + 1848U);
    t92 = *((char **)t91);
    memset(t90, 0, 8);
    t91 = (t90 + 4);
    t93 = (t92 + 4);
    t94 = *((unsigned int *)t92);
    t95 = (t94 >> 2);
    *((unsigned int *)t90) = t95;
    t96 = *((unsigned int *)t93);
    t97 = (t96 >> 2);
    *((unsigned int *)t91) = t97;
    t98 = *((unsigned int *)t90);
    *((unsigned int *)t90) = (t98 & 4095U);
    t99 = *((unsigned int *)t91);
    *((unsigned int *)t91) = (t99 & 4095U);
    xsi_vlog_generic_convert_array_indices(t82, t83, t86, t89, 2, 1, t90, 12, 2);
    t103 = (t0 + 2728);
    t104 = (t103 + 72U);
    t105 = *((char **)t104);
    t106 = ((char*)((ng7)));
    t107 = ((char*)((ng8)));
    xsi_vlog_convert_partindices(t100, t101, t102, ((int*)(t105)), 2, t106, 32, 1, t107, 32, 1);
    t108 = (t82 + 4);
    t109 = *((unsigned int *)t108);
    t28 = (!(t109));
    t110 = (t83 + 4);
    t111 = *((unsigned int *)t110);
    t31 = (!(t111));
    t32 = (t28 && t31);
    t112 = (t100 + 4);
    t113 = *((unsigned int *)t112);
    t35 = (!(t113));
    t36 = (t32 && t35);
    t114 = (t101 + 4);
    t115 = *((unsigned int *)t114);
    t116 = (!(t115));
    t117 = (t36 && t116);
    t118 = (t102 + 4);
    t119 = *((unsigned int *)t118);
    t120 = (!(t119));
    t121 = (t117 && t120);
    if (t121 == 1)
        goto LAB37;

LAB38:    t2 = xsi_vlog_time(t131, 1000.0000000000000, 1000.0000000000000);
    t3 = (t0 + 2168U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 1848U);
    t11 = *((char **)t5);
    memset(t15, 0, 8);
    t5 = (t15 + 4);
    t12 = (t11 + 4);
    t6 = *((unsigned int *)t11);
    t7 = (t6 >> 2);
    *((unsigned int *)t15) = t7;
    t8 = *((unsigned int *)t12);
    t9 = (t8 >> 2);
    *((unsigned int *)t5) = t9;
    t10 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t10 & 1073741823U);
    t27 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t27 & 1073741823U);
    xsi_vlogtype_concat(t13, 32, 32, 2U, t15, 30, t3, 2);
    t14 = (t0 + 2728);
    t17 = (t14 + 56U);
    t18 = *((char **)t17);
    t19 = (t0 + 2728);
    t20 = (t19 + 72U);
    t21 = *((char **)t20);
    t22 = (t0 + 2728);
    t23 = (t22 + 64U);
    t24 = *((char **)t23);
    t25 = (t0 + 1848U);
    t26 = *((char **)t25);
    memset(t82, 0, 8);
    t25 = (t82 + 4);
    t29 = (t26 + 4);
    t30 = *((unsigned int *)t26);
    t33 = (t30 >> 2);
    *((unsigned int *)t82) = t33;
    t34 = *((unsigned int *)t29);
    t37 = (t34 >> 2);
    *((unsigned int *)t25) = t37;
    t38 = *((unsigned int *)t82);
    *((unsigned int *)t82) = (t38 & 4095U);
    t39 = *((unsigned int *)t25);
    *((unsigned int *)t25) = (t39 & 4095U);
    xsi_vlog_generic_get_array_select_value(t73, 32, t18, t21, t24, 2, 1, t82, 12, 2);
    memset(t83, 0, 8);
    t74 = (t83 + 4);
    t81 = (t73 + 4);
    t40 = *((unsigned int *)t73);
    t41 = (t40 >> 0);
    *((unsigned int *)t83) = t41;
    t42 = *((unsigned int *)t81);
    t43 = (t42 >> 0);
    *((unsigned int *)t74) = t43;
    t44 = *((unsigned int *)t83);
    *((unsigned int *)t83) = (t44 & 65535U);
    t45 = *((unsigned int *)t74);
    *((unsigned int *)t74) = (t45 & 65535U);
    t84 = (t0 + 2008U);
    t85 = *((char **)t84);
    memset(t90, 0, 8);
    t84 = (t90 + 4);
    t86 = (t85 + 4);
    t46 = *((unsigned int *)t85);
    t47 = (t46 >> 0);
    *((unsigned int *)t90) = t47;
    t48 = *((unsigned int *)t86);
    t49 = (t48 >> 0);
    *((unsigned int *)t84) = t49;
    t50 = *((unsigned int *)t90);
    *((unsigned int *)t90) = (t50 & 65535U);
    t51 = *((unsigned int *)t84);
    *((unsigned int *)t84) = (t51 & 65535U);
    xsi_vlogtype_concat(t16, 32, 32, 2U, t90, 16, t83, 16);
    xsi_vlogfile_write(1, 0, 0, ng9, 5, t0, (char)118, t131, 64, (char)118, t4, 32, (char)118, t13, 32, (char)118, t16, 32);
    goto LAB35;

LAB37:    t122 = *((unsigned int *)t102);
    t123 = (t122 + 0);
    t124 = *((unsigned int *)t83);
    t125 = *((unsigned int *)t101);
    t126 = (t124 + t125);
    t127 = *((unsigned int *)t100);
    t128 = *((unsigned int *)t101);
    t129 = (t127 - t128);
    t130 = (t129 + 1);
    xsi_vlogvar_wait_assign_value(t81, t73, t123, t126, t130, 0LL);
    goto LAB38;

LAB40:    t45 = *((unsigned int *)t90);
    t123 = (t45 + 0);
    t46 = *((unsigned int *)t16);
    t47 = *((unsigned int *)t83);
    t126 = (t46 + t47);
    t48 = *((unsigned int *)t82);
    t49 = *((unsigned int *)t83);
    t129 = (t48 - t49);
    t130 = (t129 + 1);
    xsi_vlogvar_wait_assign_value(t5, t13, t123, t126, t130, 0LL);
    goto LAB41;

LAB44:    t11 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB45;

LAB46:
LAB49:    t14 = (t0 + 1848U);
    t17 = *((char **)t14);
    memset(t15, 0, 8);
    t14 = (t15 + 4);
    t18 = (t17 + 4);
    t45 = *((unsigned int *)t17);
    t46 = (t45 >> 0);
    *((unsigned int *)t15) = t46;
    t47 = *((unsigned int *)t18);
    t48 = (t47 >> 0);
    *((unsigned int *)t14) = t48;
    t49 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t49 & 3U);
    t50 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t50 & 3U);
    t19 = ((char*)((ng2)));
    memset(t16, 0, 8);
    t20 = (t15 + 4);
    t21 = (t19 + 4);
    t51 = *((unsigned int *)t15);
    t52 = *((unsigned int *)t19);
    t53 = (t51 ^ t52);
    t54 = *((unsigned int *)t20);
    t55 = *((unsigned int *)t21);
    t56 = (t54 ^ t55);
    t57 = (t53 | t56);
    t58 = *((unsigned int *)t20);
    t59 = *((unsigned int *)t21);
    t60 = (t58 | t59);
    t61 = (~(t60));
    t62 = (t57 & t61);
    if (t62 != 0)
        goto LAB53;

LAB50:    if (t60 != 0)
        goto LAB52;

LAB51:    *((unsigned int *)t16) = 1;

LAB53:    t23 = (t16 + 4);
    t63 = *((unsigned int *)t23);
    t64 = (~(t63));
    t65 = *((unsigned int *)t16);
    t66 = (t65 & t64);
    t67 = (t66 != 0);
    if (t67 > 0)
        goto LAB54;

LAB55:    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t13 + 4);
    t4 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 0);
    *((unsigned int *)t13) = t7;
    t8 = *((unsigned int *)t4);
    t9 = (t8 >> 0);
    *((unsigned int *)t2) = t9;
    t10 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t10 & 3U);
    t27 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t27 & 3U);
    t5 = ((char*)((ng6)));
    memset(t15, 0, 8);
    t11 = (t13 + 4);
    t12 = (t5 + 4);
    t30 = *((unsigned int *)t13);
    t33 = *((unsigned int *)t5);
    t34 = (t30 ^ t33);
    t37 = *((unsigned int *)t11);
    t38 = *((unsigned int *)t12);
    t39 = (t37 ^ t38);
    t40 = (t34 | t39);
    t41 = *((unsigned int *)t11);
    t42 = *((unsigned int *)t12);
    t43 = (t41 | t42);
    t44 = (~(t43));
    t45 = (t40 & t44);
    if (t45 != 0)
        goto LAB63;

LAB60:    if (t43 != 0)
        goto LAB62;

LAB61:    *((unsigned int *)t15) = 1;

LAB63:    t17 = (t15 + 4);
    t46 = *((unsigned int *)t17);
    t47 = (~(t46));
    t48 = *((unsigned int *)t15);
    t49 = (t48 & t47);
    t50 = (t49 != 0);
    if (t50 > 0)
        goto LAB64;

LAB65:    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t13 + 4);
    t4 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 0);
    *((unsigned int *)t13) = t7;
    t8 = *((unsigned int *)t4);
    t9 = (t8 >> 0);
    *((unsigned int *)t2) = t9;
    t10 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t10 & 3U);
    t27 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t27 & 3U);
    t5 = ((char*)((ng14)));
    memset(t15, 0, 8);
    t11 = (t13 + 4);
    t12 = (t5 + 4);
    t30 = *((unsigned int *)t13);
    t33 = *((unsigned int *)t5);
    t34 = (t30 ^ t33);
    t37 = *((unsigned int *)t11);
    t38 = *((unsigned int *)t12);
    t39 = (t37 ^ t38);
    t40 = (t34 | t39);
    t41 = *((unsigned int *)t11);
    t42 = *((unsigned int *)t12);
    t43 = (t41 | t42);
    t44 = (~(t43));
    t45 = (t40 & t44);
    if (t45 != 0)
        goto LAB73;

LAB70:    if (t43 != 0)
        goto LAB72;

LAB71:    *((unsigned int *)t15) = 1;

LAB73:    t17 = (t15 + 4);
    t46 = *((unsigned int *)t17);
    t47 = (~(t46));
    t48 = *((unsigned int *)t15);
    t49 = (t48 & t47);
    t50 = (t49 != 0);
    if (t50 > 0)
        goto LAB74;

LAB75:    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t13 + 4);
    t4 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 0);
    *((unsigned int *)t13) = t7;
    t8 = *((unsigned int *)t4);
    t9 = (t8 >> 0);
    *((unsigned int *)t2) = t9;
    t10 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t10 & 3U);
    t27 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t27 & 3U);
    t5 = ((char*)((ng16)));
    memset(t15, 0, 8);
    t11 = (t13 + 4);
    t12 = (t5 + 4);
    t30 = *((unsigned int *)t13);
    t33 = *((unsigned int *)t5);
    t34 = (t30 ^ t33);
    t37 = *((unsigned int *)t11);
    t38 = *((unsigned int *)t12);
    t39 = (t37 ^ t38);
    t40 = (t34 | t39);
    t41 = *((unsigned int *)t11);
    t42 = *((unsigned int *)t12);
    t43 = (t41 | t42);
    t44 = (~(t43));
    t45 = (t40 & t44);
    if (t45 != 0)
        goto LAB83;

LAB80:    if (t43 != 0)
        goto LAB82;

LAB81:    *((unsigned int *)t15) = 1;

LAB83:    t17 = (t15 + 4);
    t46 = *((unsigned int *)t17);
    t47 = (~(t46));
    t48 = *((unsigned int *)t15);
    t49 = (t48 & t47);
    t50 = (t49 != 0);
    if (t50 > 0)
        goto LAB84;

LAB85:
LAB86:
LAB76:
LAB66:
LAB56:    goto LAB48;

LAB52:    t22 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t22) = 1;
    goto LAB53;

LAB54:
LAB57:    t24 = (t0 + 2008U);
    t25 = *((char **)t24);
    memset(t73, 0, 8);
    t24 = (t73 + 4);
    t26 = (t25 + 4);
    t68 = *((unsigned int *)t25);
    t69 = (t68 >> 0);
    *((unsigned int *)t73) = t69;
    t70 = *((unsigned int *)t26);
    t71 = (t70 >> 0);
    *((unsigned int *)t24) = t71;
    t72 = *((unsigned int *)t73);
    *((unsigned int *)t73) = (t72 & 255U);
    t75 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t75 & 255U);
    t29 = (t0 + 2728);
    t74 = (t0 + 2728);
    t81 = (t74 + 72U);
    t84 = *((char **)t81);
    t85 = (t0 + 2728);
    t86 = (t85 + 64U);
    t87 = *((char **)t86);
    t88 = (t0 + 1848U);
    t89 = *((char **)t88);
    memset(t90, 0, 8);
    t88 = (t90 + 4);
    t91 = (t89 + 4);
    t76 = *((unsigned int *)t89);
    t77 = (t76 >> 2);
    *((unsigned int *)t90) = t77;
    t78 = *((unsigned int *)t91);
    t79 = (t78 >> 2);
    *((unsigned int *)t88) = t79;
    t80 = *((unsigned int *)t90);
    *((unsigned int *)t90) = (t80 & 4095U);
    t94 = *((unsigned int *)t88);
    *((unsigned int *)t88) = (t94 & 4095U);
    xsi_vlog_generic_convert_array_indices(t82, t83, t84, t87, 2, 1, t90, 12, 2);
    t92 = (t0 + 2728);
    t93 = (t92 + 72U);
    t103 = *((char **)t93);
    t104 = ((char*)((ng12)));
    t105 = ((char*)((ng0)));
    xsi_vlog_convert_partindices(t100, t101, t102, ((int*)(t103)), 2, t104, 32, 1, t105, 32, 1);
    t106 = (t82 + 4);
    t95 = *((unsigned int *)t106);
    t28 = (!(t95));
    t107 = (t83 + 4);
    t96 = *((unsigned int *)t107);
    t31 = (!(t96));
    t32 = (t28 && t31);
    t108 = (t100 + 4);
    t97 = *((unsigned int *)t108);
    t35 = (!(t97));
    t36 = (t32 && t35);
    t110 = (t101 + 4);
    t98 = *((unsigned int *)t110);
    t116 = (!(t98));
    t117 = (t36 && t116);
    t112 = (t102 + 4);
    t99 = *((unsigned int *)t112);
    t120 = (!(t99));
    t121 = (t117 && t120);
    if (t121 == 1)
        goto LAB58;

LAB59:    t2 = xsi_vlog_time(t131, 1000.0000000000000, 1000.0000000000000);
    t3 = (t0 + 2168U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 1848U);
    t11 = *((char **)t5);
    memset(t15, 0, 8);
    t5 = (t15 + 4);
    t12 = (t11 + 4);
    t6 = *((unsigned int *)t11);
    t7 = (t6 >> 2);
    *((unsigned int *)t15) = t7;
    t8 = *((unsigned int *)t12);
    t9 = (t8 >> 2);
    *((unsigned int *)t5) = t9;
    t10 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t10 & 1073741823U);
    t27 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t27 & 1073741823U);
    xsi_vlogtype_concat(t13, 32, 32, 2U, t15, 30, t3, 2);
    t14 = (t0 + 2008U);
    t17 = *((char **)t14);
    memset(t73, 0, 8);
    t14 = (t73 + 4);
    t18 = (t17 + 4);
    t30 = *((unsigned int *)t17);
    t33 = (t30 >> 0);
    *((unsigned int *)t73) = t33;
    t34 = *((unsigned int *)t18);
    t37 = (t34 >> 0);
    *((unsigned int *)t14) = t37;
    t38 = *((unsigned int *)t73);
    *((unsigned int *)t73) = (t38 & 255U);
    t39 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t39 & 255U);
    t19 = (t0 + 2728);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t0 + 2728);
    t23 = (t22 + 72U);
    t24 = *((char **)t23);
    t25 = (t0 + 2728);
    t26 = (t25 + 64U);
    t29 = *((char **)t26);
    t74 = (t0 + 1848U);
    t81 = *((char **)t74);
    memset(t83, 0, 8);
    t74 = (t83 + 4);
    t84 = (t81 + 4);
    t40 = *((unsigned int *)t81);
    t41 = (t40 >> 2);
    *((unsigned int *)t83) = t41;
    t42 = *((unsigned int *)t84);
    t43 = (t42 >> 2);
    *((unsigned int *)t74) = t43;
    t44 = *((unsigned int *)t83);
    *((unsigned int *)t83) = (t44 & 4095U);
    t45 = *((unsigned int *)t74);
    *((unsigned int *)t74) = (t45 & 4095U);
    xsi_vlog_generic_get_array_select_value(t82, 32, t21, t24, t29, 2, 1, t83, 12, 2);
    memset(t90, 0, 8);
    t85 = (t90 + 4);
    t86 = (t82 + 4);
    t46 = *((unsigned int *)t82);
    t47 = (t46 >> 8);
    *((unsigned int *)t90) = t47;
    t48 = *((unsigned int *)t86);
    t49 = (t48 >> 8);
    *((unsigned int *)t85) = t49;
    t50 = *((unsigned int *)t90);
    *((unsigned int *)t90) = (t50 & 16777215U);
    t51 = *((unsigned int *)t85);
    *((unsigned int *)t85) = (t51 & 16777215U);
    xsi_vlogtype_concat(t16, 32, 32, 2U, t90, 24, t73, 8);
    xsi_vlogfile_write(1, 0, 0, ng9, 5, t0, (char)118, t131, 64, (char)118, t4, 32, (char)118, t13, 32, (char)118, t16, 32);
    goto LAB56;

LAB58:    t109 = *((unsigned int *)t102);
    t123 = (t109 + 0);
    t111 = *((unsigned int *)t83);
    t113 = *((unsigned int *)t101);
    t126 = (t111 + t113);
    t115 = *((unsigned int *)t100);
    t119 = *((unsigned int *)t101);
    t129 = (t115 - t119);
    t130 = (t129 + 1);
    xsi_vlogvar_wait_assign_value(t29, t73, t123, t126, t130, 0LL);
    goto LAB59;

LAB62:    t14 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB63;

LAB64:
LAB67:    t18 = (t0 + 2008U);
    t19 = *((char **)t18);
    memset(t16, 0, 8);
    t18 = (t16 + 4);
    t20 = (t19 + 4);
    t51 = *((unsigned int *)t19);
    t52 = (t51 >> 0);
    *((unsigned int *)t16) = t52;
    t53 = *((unsigned int *)t20);
    t54 = (t53 >> 0);
    *((unsigned int *)t18) = t54;
    t55 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t55 & 255U);
    t56 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t56 & 255U);
    t21 = (t0 + 2728);
    t22 = (t0 + 2728);
    t23 = (t22 + 72U);
    t24 = *((char **)t23);
    t25 = (t0 + 2728);
    t26 = (t25 + 64U);
    t29 = *((char **)t26);
    t74 = (t0 + 1848U);
    t81 = *((char **)t74);
    memset(t83, 0, 8);
    t74 = (t83 + 4);
    t84 = (t81 + 4);
    t57 = *((unsigned int *)t81);
    t58 = (t57 >> 2);
    *((unsigned int *)t83) = t58;
    t59 = *((unsigned int *)t84);
    t60 = (t59 >> 2);
    *((unsigned int *)t74) = t60;
    t61 = *((unsigned int *)t83);
    *((unsigned int *)t83) = (t61 & 4095U);
    t62 = *((unsigned int *)t74);
    *((unsigned int *)t74) = (t62 & 4095U);
    xsi_vlog_generic_convert_array_indices(t73, t82, t24, t29, 2, 1, t83, 12, 2);
    t85 = (t0 + 2728);
    t86 = (t85 + 72U);
    t87 = *((char **)t86);
    t88 = ((char*)((ng10)));
    t89 = ((char*)((ng13)));
    xsi_vlog_convert_partindices(t90, t100, t101, ((int*)(t87)), 2, t88, 32, 1, t89, 32, 1);
    t91 = (t73 + 4);
    t63 = *((unsigned int *)t91);
    t28 = (!(t63));
    t92 = (t82 + 4);
    t64 = *((unsigned int *)t92);
    t31 = (!(t64));
    t32 = (t28 && t31);
    t93 = (t90 + 4);
    t65 = *((unsigned int *)t93);
    t35 = (!(t65));
    t36 = (t32 && t35);
    t103 = (t100 + 4);
    t66 = *((unsigned int *)t103);
    t116 = (!(t66));
    t117 = (t36 && t116);
    t104 = (t101 + 4);
    t67 = *((unsigned int *)t104);
    t120 = (!(t67));
    t121 = (t117 && t120);
    if (t121 == 1)
        goto LAB68;

LAB69:    t2 = xsi_vlog_time(t131, 1000.0000000000000, 1000.0000000000000);
    t3 = (t0 + 2168U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 1848U);
    t11 = *((char **)t5);
    memset(t15, 0, 8);
    t5 = (t15 + 4);
    t12 = (t11 + 4);
    t6 = *((unsigned int *)t11);
    t7 = (t6 >> 2);
    *((unsigned int *)t15) = t7;
    t8 = *((unsigned int *)t12);
    t9 = (t8 >> 2);
    *((unsigned int *)t5) = t9;
    t10 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t10 & 1073741823U);
    t27 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t27 & 1073741823U);
    xsi_vlogtype_concat(t13, 32, 32, 2U, t15, 30, t3, 2);
    t14 = (t0 + 2728);
    t17 = (t14 + 56U);
    t18 = *((char **)t17);
    t19 = (t0 + 2728);
    t20 = (t19 + 72U);
    t21 = *((char **)t20);
    t22 = (t0 + 2728);
    t23 = (t22 + 64U);
    t24 = *((char **)t23);
    t25 = (t0 + 1848U);
    t26 = *((char **)t25);
    memset(t82, 0, 8);
    t25 = (t82 + 4);
    t29 = (t26 + 4);
    t30 = *((unsigned int *)t26);
    t33 = (t30 >> 2);
    *((unsigned int *)t82) = t33;
    t34 = *((unsigned int *)t29);
    t37 = (t34 >> 2);
    *((unsigned int *)t25) = t37;
    t38 = *((unsigned int *)t82);
    *((unsigned int *)t82) = (t38 & 4095U);
    t39 = *((unsigned int *)t25);
    *((unsigned int *)t25) = (t39 & 4095U);
    xsi_vlog_generic_get_array_select_value(t73, 32, t18, t21, t24, 2, 1, t82, 12, 2);
    memset(t83, 0, 8);
    t74 = (t83 + 4);
    t81 = (t73 + 4);
    t40 = *((unsigned int *)t73);
    t41 = (t40 >> 0);
    *((unsigned int *)t83) = t41;
    t42 = *((unsigned int *)t81);
    t43 = (t42 >> 0);
    *((unsigned int *)t74) = t43;
    t44 = *((unsigned int *)t83);
    *((unsigned int *)t83) = (t44 & 255U);
    t45 = *((unsigned int *)t74);
    *((unsigned int *)t74) = (t45 & 255U);
    t84 = (t0 + 2008U);
    t85 = *((char **)t84);
    memset(t90, 0, 8);
    t84 = (t90 + 4);
    t86 = (t85 + 4);
    t46 = *((unsigned int *)t85);
    t47 = (t46 >> 0);
    *((unsigned int *)t90) = t47;
    t48 = *((unsigned int *)t86);
    t49 = (t48 >> 0);
    *((unsigned int *)t84) = t49;
    t50 = *((unsigned int *)t90);
    *((unsigned int *)t90) = (t50 & 255U);
    t51 = *((unsigned int *)t84);
    *((unsigned int *)t84) = (t51 & 255U);
    t87 = (t0 + 2728);
    t88 = (t87 + 56U);
    t89 = *((char **)t88);
    t91 = (t0 + 2728);
    t92 = (t91 + 72U);
    t93 = *((char **)t92);
    t103 = (t0 + 2728);
    t104 = (t103 + 64U);
    t105 = *((char **)t104);
    t106 = (t0 + 1848U);
    t107 = *((char **)t106);
    memset(t101, 0, 8);
    t106 = (t101 + 4);
    t108 = (t107 + 4);
    t52 = *((unsigned int *)t107);
    t53 = (t52 >> 2);
    *((unsigned int *)t101) = t53;
    t54 = *((unsigned int *)t108);
    t55 = (t54 >> 2);
    *((unsigned int *)t106) = t55;
    t56 = *((unsigned int *)t101);
    *((unsigned int *)t101) = (t56 & 4095U);
    t57 = *((unsigned int *)t106);
    *((unsigned int *)t106) = (t57 & 4095U);
    xsi_vlog_generic_get_array_select_value(t100, 32, t89, t93, t105, 2, 1, t101, 12, 2);
    memset(t102, 0, 8);
    t110 = (t102 + 4);
    t112 = (t100 + 4);
    t58 = *((unsigned int *)t100);
    t59 = (t58 >> 16);
    *((unsigned int *)t102) = t59;
    t60 = *((unsigned int *)t112);
    t61 = (t60 >> 16);
    *((unsigned int *)t110) = t61;
    t62 = *((unsigned int *)t102);
    *((unsigned int *)t102) = (t62 & 65535U);
    t63 = *((unsigned int *)t110);
    *((unsigned int *)t110) = (t63 & 65535U);
    xsi_vlogtype_concat(t16, 32, 32, 3U, t102, 16, t90, 8, t83, 8);
    xsi_vlogfile_write(1, 0, 0, ng9, 5, t0, (char)118, t131, 64, (char)118, t4, 32, (char)118, t13, 32, (char)118, t16, 32);
    goto LAB66;

LAB68:    t68 = *((unsigned int *)t101);
    t123 = (t68 + 0);
    t69 = *((unsigned int *)t82);
    t70 = *((unsigned int *)t100);
    t126 = (t69 + t70);
    t71 = *((unsigned int *)t90);
    t72 = *((unsigned int *)t100);
    t129 = (t71 - t72);
    t130 = (t129 + 1);
    xsi_vlogvar_wait_assign_value(t21, t16, t123, t126, t130, 0LL);
    goto LAB69;

LAB72:    t14 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB73;

LAB74:
LAB77:    t18 = (t0 + 2008U);
    t19 = *((char **)t18);
    memset(t16, 0, 8);
    t18 = (t16 + 4);
    t20 = (t19 + 4);
    t51 = *((unsigned int *)t19);
    t52 = (t51 >> 0);
    *((unsigned int *)t16) = t52;
    t53 = *((unsigned int *)t20);
    t54 = (t53 >> 0);
    *((unsigned int *)t18) = t54;
    t55 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t55 & 255U);
    t56 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t56 & 255U);
    t21 = (t0 + 2728);
    t22 = (t0 + 2728);
    t23 = (t22 + 72U);
    t24 = *((char **)t23);
    t25 = (t0 + 2728);
    t26 = (t25 + 64U);
    t29 = *((char **)t26);
    t74 = (t0 + 1848U);
    t81 = *((char **)t74);
    memset(t83, 0, 8);
    t74 = (t83 + 4);
    t84 = (t81 + 4);
    t57 = *((unsigned int *)t81);
    t58 = (t57 >> 2);
    *((unsigned int *)t83) = t58;
    t59 = *((unsigned int *)t84);
    t60 = (t59 >> 2);
    *((unsigned int *)t74) = t60;
    t61 = *((unsigned int *)t83);
    *((unsigned int *)t83) = (t61 & 4095U);
    t62 = *((unsigned int *)t74);
    *((unsigned int *)t74) = (t62 & 4095U);
    xsi_vlog_generic_convert_array_indices(t73, t82, t24, t29, 2, 1, t83, 12, 2);
    t85 = (t0 + 2728);
    t86 = (t85 + 72U);
    t87 = *((char **)t86);
    t88 = ((char*)((ng15)));
    t89 = ((char*)((ng8)));
    xsi_vlog_convert_partindices(t90, t100, t101, ((int*)(t87)), 2, t88, 32, 1, t89, 32, 1);
    t91 = (t73 + 4);
    t63 = *((unsigned int *)t91);
    t28 = (!(t63));
    t92 = (t82 + 4);
    t64 = *((unsigned int *)t92);
    t31 = (!(t64));
    t32 = (t28 && t31);
    t93 = (t90 + 4);
    t65 = *((unsigned int *)t93);
    t35 = (!(t65));
    t36 = (t32 && t35);
    t103 = (t100 + 4);
    t66 = *((unsigned int *)t103);
    t116 = (!(t66));
    t117 = (t36 && t116);
    t104 = (t101 + 4);
    t67 = *((unsigned int *)t104);
    t120 = (!(t67));
    t121 = (t117 && t120);
    if (t121 == 1)
        goto LAB78;

LAB79:    t2 = xsi_vlog_time(t131, 1000.0000000000000, 1000.0000000000000);
    t3 = (t0 + 2168U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 1848U);
    t11 = *((char **)t5);
    memset(t15, 0, 8);
    t5 = (t15 + 4);
    t12 = (t11 + 4);
    t6 = *((unsigned int *)t11);
    t7 = (t6 >> 2);
    *((unsigned int *)t15) = t7;
    t8 = *((unsigned int *)t12);
    t9 = (t8 >> 2);
    *((unsigned int *)t5) = t9;
    t10 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t10 & 1073741823U);
    t27 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t27 & 1073741823U);
    xsi_vlogtype_concat(t13, 32, 32, 2U, t15, 30, t3, 2);
    t14 = (t0 + 2728);
    t17 = (t14 + 56U);
    t18 = *((char **)t17);
    t19 = (t0 + 2728);
    t20 = (t19 + 72U);
    t21 = *((char **)t20);
    t22 = (t0 + 2728);
    t23 = (t22 + 64U);
    t24 = *((char **)t23);
    t25 = (t0 + 1848U);
    t26 = *((char **)t25);
    memset(t82, 0, 8);
    t25 = (t82 + 4);
    t29 = (t26 + 4);
    t30 = *((unsigned int *)t26);
    t33 = (t30 >> 2);
    *((unsigned int *)t82) = t33;
    t34 = *((unsigned int *)t29);
    t37 = (t34 >> 2);
    *((unsigned int *)t25) = t37;
    t38 = *((unsigned int *)t82);
    *((unsigned int *)t82) = (t38 & 4095U);
    t39 = *((unsigned int *)t25);
    *((unsigned int *)t25) = (t39 & 4095U);
    xsi_vlog_generic_get_array_select_value(t73, 32, t18, t21, t24, 2, 1, t82, 12, 2);
    memset(t83, 0, 8);
    t74 = (t83 + 4);
    t81 = (t73 + 4);
    t40 = *((unsigned int *)t73);
    t41 = (t40 >> 0);
    *((unsigned int *)t83) = t41;
    t42 = *((unsigned int *)t81);
    t43 = (t42 >> 0);
    *((unsigned int *)t74) = t43;
    t44 = *((unsigned int *)t83);
    *((unsigned int *)t83) = (t44 & 65535U);
    t45 = *((unsigned int *)t74);
    *((unsigned int *)t74) = (t45 & 65535U);
    t84 = (t0 + 2008U);
    t85 = *((char **)t84);
    memset(t90, 0, 8);
    t84 = (t90 + 4);
    t86 = (t85 + 4);
    t46 = *((unsigned int *)t85);
    t47 = (t46 >> 0);
    *((unsigned int *)t90) = t47;
    t48 = *((unsigned int *)t86);
    t49 = (t48 >> 0);
    *((unsigned int *)t84) = t49;
    t50 = *((unsigned int *)t90);
    *((unsigned int *)t90) = (t50 & 255U);
    t51 = *((unsigned int *)t84);
    *((unsigned int *)t84) = (t51 & 255U);
    t87 = (t0 + 2728);
    t88 = (t87 + 56U);
    t89 = *((char **)t88);
    t91 = (t0 + 2728);
    t92 = (t91 + 72U);
    t93 = *((char **)t92);
    t103 = (t0 + 2728);
    t104 = (t103 + 64U);
    t105 = *((char **)t104);
    t106 = (t0 + 1848U);
    t107 = *((char **)t106);
    memset(t101, 0, 8);
    t106 = (t101 + 4);
    t108 = (t107 + 4);
    t52 = *((unsigned int *)t107);
    t53 = (t52 >> 2);
    *((unsigned int *)t101) = t53;
    t54 = *((unsigned int *)t108);
    t55 = (t54 >> 2);
    *((unsigned int *)t106) = t55;
    t56 = *((unsigned int *)t101);
    *((unsigned int *)t101) = (t56 & 4095U);
    t57 = *((unsigned int *)t106);
    *((unsigned int *)t106) = (t57 & 4095U);
    xsi_vlog_generic_get_array_select_value(t100, 32, t89, t93, t105, 2, 1, t101, 12, 2);
    memset(t102, 0, 8);
    t110 = (t102 + 4);
    t112 = (t100 + 4);
    t58 = *((unsigned int *)t100);
    t59 = (t58 >> 24);
    *((unsigned int *)t102) = t59;
    t60 = *((unsigned int *)t112);
    t61 = (t60 >> 24);
    *((unsigned int *)t110) = t61;
    t62 = *((unsigned int *)t102);
    *((unsigned int *)t102) = (t62 & 255U);
    t63 = *((unsigned int *)t110);
    *((unsigned int *)t110) = (t63 & 255U);
    xsi_vlogtype_concat(t16, 32, 32, 3U, t102, 8, t90, 8, t83, 16);
    xsi_vlogfile_write(1, 0, 0, ng9, 5, t0, (char)118, t131, 64, (char)118, t4, 32, (char)118, t13, 32, (char)118, t16, 32);
    goto LAB76;

LAB78:    t68 = *((unsigned int *)t101);
    t123 = (t68 + 0);
    t69 = *((unsigned int *)t82);
    t70 = *((unsigned int *)t100);
    t126 = (t69 + t70);
    t71 = *((unsigned int *)t90);
    t72 = *((unsigned int *)t100);
    t129 = (t71 - t72);
    t130 = (t129 + 1);
    xsi_vlogvar_wait_assign_value(t21, t16, t123, t126, t130, 0LL);
    goto LAB79;

LAB82:    t14 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB83;

LAB84:
LAB87:    t18 = (t0 + 2008U);
    t19 = *((char **)t18);
    memset(t16, 0, 8);
    t18 = (t16 + 4);
    t20 = (t19 + 4);
    t51 = *((unsigned int *)t19);
    t52 = (t51 >> 0);
    *((unsigned int *)t16) = t52;
    t53 = *((unsigned int *)t20);
    t54 = (t53 >> 0);
    *((unsigned int *)t18) = t54;
    t55 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t55 & 255U);
    t56 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t56 & 255U);
    t21 = (t0 + 2728);
    t22 = (t0 + 2728);
    t23 = (t22 + 72U);
    t24 = *((char **)t23);
    t25 = (t0 + 2728);
    t26 = (t25 + 64U);
    t29 = *((char **)t26);
    t74 = (t0 + 1848U);
    t81 = *((char **)t74);
    memset(t83, 0, 8);
    t74 = (t83 + 4);
    t84 = (t81 + 4);
    t57 = *((unsigned int *)t81);
    t58 = (t57 >> 2);
    *((unsigned int *)t83) = t58;
    t59 = *((unsigned int *)t84);
    t60 = (t59 >> 2);
    *((unsigned int *)t74) = t60;
    t61 = *((unsigned int *)t83);
    *((unsigned int *)t83) = (t61 & 4095U);
    t62 = *((unsigned int *)t74);
    *((unsigned int *)t74) = (t62 & 4095U);
    xsi_vlog_generic_convert_array_indices(t73, t82, t24, t29, 2, 1, t83, 12, 2);
    t85 = (t0 + 2728);
    t86 = (t85 + 72U);
    t87 = *((char **)t86);
    t88 = ((char*)((ng7)));
    t89 = ((char*)((ng17)));
    xsi_vlog_convert_partindices(t90, t100, t101, ((int*)(t87)), 2, t88, 32, 1, t89, 32, 1);
    t91 = (t73 + 4);
    t63 = *((unsigned int *)t91);
    t28 = (!(t63));
    t92 = (t82 + 4);
    t64 = *((unsigned int *)t92);
    t31 = (!(t64));
    t32 = (t28 && t31);
    t93 = (t90 + 4);
    t65 = *((unsigned int *)t93);
    t35 = (!(t65));
    t36 = (t32 && t35);
    t103 = (t100 + 4);
    t66 = *((unsigned int *)t103);
    t116 = (!(t66));
    t117 = (t36 && t116);
    t104 = (t101 + 4);
    t67 = *((unsigned int *)t104);
    t120 = (!(t67));
    t121 = (t117 && t120);
    if (t121 == 1)
        goto LAB88;

LAB89:    t2 = xsi_vlog_time(t131, 1000.0000000000000, 1000.0000000000000);
    t3 = (t0 + 2168U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 1848U);
    t11 = *((char **)t5);
    memset(t15, 0, 8);
    t5 = (t15 + 4);
    t12 = (t11 + 4);
    t6 = *((unsigned int *)t11);
    t7 = (t6 >> 2);
    *((unsigned int *)t15) = t7;
    t8 = *((unsigned int *)t12);
    t9 = (t8 >> 2);
    *((unsigned int *)t5) = t9;
    t10 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t10 & 1073741823U);
    t27 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t27 & 1073741823U);
    xsi_vlogtype_concat(t13, 32, 32, 2U, t15, 30, t3, 2);
    t14 = (t0 + 2728);
    t17 = (t14 + 56U);
    t18 = *((char **)t17);
    t19 = (t0 + 2728);
    t20 = (t19 + 72U);
    t21 = *((char **)t20);
    t22 = (t0 + 2728);
    t23 = (t22 + 64U);
    t24 = *((char **)t23);
    t25 = (t0 + 1848U);
    t26 = *((char **)t25);
    memset(t82, 0, 8);
    t25 = (t82 + 4);
    t29 = (t26 + 4);
    t30 = *((unsigned int *)t26);
    t33 = (t30 >> 2);
    *((unsigned int *)t82) = t33;
    t34 = *((unsigned int *)t29);
    t37 = (t34 >> 2);
    *((unsigned int *)t25) = t37;
    t38 = *((unsigned int *)t82);
    *((unsigned int *)t82) = (t38 & 4095U);
    t39 = *((unsigned int *)t25);
    *((unsigned int *)t25) = (t39 & 4095U);
    xsi_vlog_generic_get_array_select_value(t73, 32, t18, t21, t24, 2, 1, t82, 12, 2);
    memset(t83, 0, 8);
    t74 = (t83 + 4);
    t81 = (t73 + 4);
    t40 = *((unsigned int *)t73);
    t41 = (t40 >> 0);
    *((unsigned int *)t83) = t41;
    t42 = *((unsigned int *)t81);
    t43 = (t42 >> 0);
    *((unsigned int *)t74) = t43;
    t44 = *((unsigned int *)t83);
    *((unsigned int *)t83) = (t44 & 16777215U);
    t45 = *((unsigned int *)t74);
    *((unsigned int *)t74) = (t45 & 16777215U);
    t84 = (t0 + 2008U);
    t85 = *((char **)t84);
    memset(t90, 0, 8);
    t84 = (t90 + 4);
    t86 = (t85 + 4);
    t46 = *((unsigned int *)t85);
    t47 = (t46 >> 0);
    *((unsigned int *)t90) = t47;
    t48 = *((unsigned int *)t86);
    t49 = (t48 >> 0);
    *((unsigned int *)t84) = t49;
    t50 = *((unsigned int *)t90);
    *((unsigned int *)t90) = (t50 & 255U);
    t51 = *((unsigned int *)t84);
    *((unsigned int *)t84) = (t51 & 255U);
    xsi_vlogtype_concat(t16, 32, 32, 2U, t90, 8, t83, 24);
    xsi_vlogfile_write(1, 0, 0, ng9, 5, t0, (char)118, t131, 64, (char)118, t4, 32, (char)118, t13, 32, (char)118, t16, 32);
    goto LAB86;

LAB88:    t68 = *((unsigned int *)t101);
    t123 = (t68 + 0);
    t69 = *((unsigned int *)t82);
    t70 = *((unsigned int *)t100);
    t126 = (t69 + t70);
    t71 = *((unsigned int *)t90);
    t72 = *((unsigned int *)t100);
    t129 = (t71 - t72);
    t130 = (t129 + 1);
    xsi_vlogvar_wait_assign_value(t21, t16, t123, t126, t130, 0LL);
    goto LAB89;

LAB91:    t34 = *((unsigned int *)t13);
    t37 = *((unsigned int *)t15);
    t35 = (t34 - t37);
    t36 = (t35 + 1);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, *((unsigned int *)t15), t36, 0LL);
    goto LAB92;

}


extern void work_m_00000000002486406907_0010801604_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Cont_44_1,(void *)Always_46_2};
	xsi_register_didat("work_m_00000000002486406907_0010801604", "isim/mips_tb_beh.exe.sim/work/m_00000000002486406907_0010801604.didat");
	xsi_register_executes(pe);
}
