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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/ekorletey/Processor/cipher_processor/Present_Cipher_implementation/DataPath.vhd";
extern char *IEEE_P_2592010699;

char *ieee_p_2592010699_sub_16439989833707593767_503743352(char *, char *, char *, char *, char *, char *);


static void work_a_3027548060_3212880686_p_0(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(120, ng0);

LAB3:    t2 = (t0 + 2952U);
    t3 = *((char **)t2);
    t2 = (t0 + 21168U);
    t4 = (t0 + 3112U);
    t5 = *((char **)t4);
    t4 = (t0 + 21168U);
    t6 = ieee_p_2592010699_sub_16439989833707593767_503743352(IEEE_P_2592010699, t1, t3, t2, t5, t4);
    t7 = (t1 + 12U);
    t8 = *((unsigned int *)t7);
    t9 = (1U * t8);
    t10 = (64U != t9);
    if (t10 == 1)
        goto LAB5;

LAB6:    t11 = (t0 + 11112);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 64U);
    xsi_driver_first_trans_fast(t11);

LAB2:    t16 = (t0 + 11000);
    *((int *)t16) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(64U, t9, 0);
    goto LAB6;

}

static void work_a_3027548060_3212880686_p_1(char *t0)
{
    char t4[16];
    char t10[16];
    char t15[16];
    char t20[16];
    char t25[16];
    char t30[16];
    char t35[16];
    char t40[16];
    char t45[16];
    char t50[16];
    char t55[16];
    char t60[16];
    char t65[16];
    char t70[16];
    char t75[16];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t46;
    char *t47;
    char *t48;
    char *t49;
    char *t51;
    char *t52;
    char *t53;
    char *t54;
    char *t56;
    char *t57;
    char *t58;
    char *t59;
    char *t61;
    char *t62;
    char *t63;
    char *t64;
    char *t66;
    char *t67;
    char *t68;
    char *t69;
    char *t71;
    char *t72;
    char *t73;
    char *t74;
    char *t76;
    char *t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned char t93;
    char *t94;
    char *t95;
    char *t96;
    char *t97;
    char *t98;
    char *t99;

LAB0:    xsi_set_current_line(232, ng0);

LAB3:    t1 = (t0 + 6472U);
    t2 = *((char **)t1);
    t1 = (t0 + 6632U);
    t3 = *((char **)t1);
    t5 = ((IEEE_P_2592010699) + 4000);
    t6 = (t0 + 21200U);
    t7 = (t0 + 21200U);
    t1 = xsi_base_array_concat(t1, t4, t5, (char)97, t2, t6, (char)97, t3, t7, (char)101);
    t8 = (t0 + 6792U);
    t9 = *((char **)t8);
    t11 = ((IEEE_P_2592010699) + 4000);
    t12 = (t0 + 21200U);
    t8 = xsi_base_array_concat(t8, t10, t11, (char)97, t1, t4, (char)97, t9, t12, (char)101);
    t13 = (t0 + 6952U);
    t14 = *((char **)t13);
    t16 = ((IEEE_P_2592010699) + 4000);
    t17 = (t0 + 21200U);
    t13 = xsi_base_array_concat(t13, t15, t16, (char)97, t8, t10, (char)97, t14, t17, (char)101);
    t18 = (t0 + 7112U);
    t19 = *((char **)t18);
    t21 = ((IEEE_P_2592010699) + 4000);
    t22 = (t0 + 21200U);
    t18 = xsi_base_array_concat(t18, t20, t21, (char)97, t13, t15, (char)97, t19, t22, (char)101);
    t23 = (t0 + 7272U);
    t24 = *((char **)t23);
    t26 = ((IEEE_P_2592010699) + 4000);
    t27 = (t0 + 21200U);
    t23 = xsi_base_array_concat(t23, t25, t26, (char)97, t18, t20, (char)97, t24, t27, (char)101);
    t28 = (t0 + 7432U);
    t29 = *((char **)t28);
    t31 = ((IEEE_P_2592010699) + 4000);
    t32 = (t0 + 21200U);
    t28 = xsi_base_array_concat(t28, t30, t31, (char)97, t23, t25, (char)97, t29, t32, (char)101);
    t33 = (t0 + 7592U);
    t34 = *((char **)t33);
    t36 = ((IEEE_P_2592010699) + 4000);
    t37 = (t0 + 21200U);
    t33 = xsi_base_array_concat(t33, t35, t36, (char)97, t28, t30, (char)97, t34, t37, (char)101);
    t38 = (t0 + 7752U);
    t39 = *((char **)t38);
    t41 = ((IEEE_P_2592010699) + 4000);
    t42 = (t0 + 21200U);
    t38 = xsi_base_array_concat(t38, t40, t41, (char)97, t33, t35, (char)97, t39, t42, (char)101);
    t43 = (t0 + 7912U);
    t44 = *((char **)t43);
    t46 = ((IEEE_P_2592010699) + 4000);
    t47 = (t0 + 21200U);
    t43 = xsi_base_array_concat(t43, t45, t46, (char)97, t38, t40, (char)97, t44, t47, (char)101);
    t48 = (t0 + 8072U);
    t49 = *((char **)t48);
    t51 = ((IEEE_P_2592010699) + 4000);
    t52 = (t0 + 21200U);
    t48 = xsi_base_array_concat(t48, t50, t51, (char)97, t43, t45, (char)97, t49, t52, (char)101);
    t53 = (t0 + 8232U);
    t54 = *((char **)t53);
    t56 = ((IEEE_P_2592010699) + 4000);
    t57 = (t0 + 21200U);
    t53 = xsi_base_array_concat(t53, t55, t56, (char)97, t48, t50, (char)97, t54, t57, (char)101);
    t58 = (t0 + 8392U);
    t59 = *((char **)t58);
    t61 = ((IEEE_P_2592010699) + 4000);
    t62 = (t0 + 21200U);
    t58 = xsi_base_array_concat(t58, t60, t61, (char)97, t53, t55, (char)97, t59, t62, (char)101);
    t63 = (t0 + 8552U);
    t64 = *((char **)t63);
    t66 = ((IEEE_P_2592010699) + 4000);
    t67 = (t0 + 21200U);
    t63 = xsi_base_array_concat(t63, t65, t66, (char)97, t58, t60, (char)97, t64, t67, (char)101);
    t68 = (t0 + 8712U);
    t69 = *((char **)t68);
    t71 = ((IEEE_P_2592010699) + 4000);
    t72 = (t0 + 21200U);
    t68 = xsi_base_array_concat(t68, t70, t71, (char)97, t63, t65, (char)97, t69, t72, (char)101);
    t73 = (t0 + 8872U);
    t74 = *((char **)t73);
    t76 = ((IEEE_P_2592010699) + 4000);
    t77 = (t0 + 21200U);
    t73 = xsi_base_array_concat(t73, t75, t76, (char)97, t68, t70, (char)97, t74, t77, (char)101);
    t78 = (4U + 4U);
    t79 = (t78 + 4U);
    t80 = (t79 + 4U);
    t81 = (t80 + 4U);
    t82 = (t81 + 4U);
    t83 = (t82 + 4U);
    t84 = (t83 + 4U);
    t85 = (t84 + 4U);
    t86 = (t85 + 4U);
    t87 = (t86 + 4U);
    t88 = (t87 + 4U);
    t89 = (t88 + 4U);
    t90 = (t89 + 4U);
    t91 = (t90 + 4U);
    t92 = (t91 + 4U);
    t93 = (64U != t92);
    if (t93 == 1)
        goto LAB5;

LAB6:    t94 = (t0 + 11176);
    t95 = (t94 + 56U);
    t96 = *((char **)t95);
    t97 = (t96 + 56U);
    t98 = *((char **)t97);
    memcpy(t98, t73, 64U);
    xsi_driver_first_trans_fast(t94);

LAB2:    t99 = (t0 + 11016);
    *((int *)t99) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(64U, t92, 0);
    goto LAB6;

}

static void work_a_3027548060_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(246, ng0);

LAB3:    t1 = (t0 + 3752U);
    t2 = *((char **)t1);
    t1 = (t0 + 11240);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 64U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 11032);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3027548060_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3027548060_3212880686_p_0,(void *)work_a_3027548060_3212880686_p_1,(void *)work_a_3027548060_3212880686_p_2};
	xsi_register_didat("work_a_3027548060_3212880686", "isim/DataPath_isim_beh.exe.sim/work/a_3027548060_3212880686.didat");
	xsi_register_executes(pe);
}
