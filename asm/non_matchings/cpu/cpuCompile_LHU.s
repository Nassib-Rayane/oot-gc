glabel cpuCompile_LHU
/* 063808 80068DA8 7C0802A6 */  mflr    r0
/* 06380C 80068DAC 90010004 */  stw     r0, 4(r1)
/* 063810 80068DB0 3800000A */  li      r0, 0xa
/* 063814 80068DB4 5400103A */  slwi    r0, r0, 2
/* 063818 80068DB8 9421FFE0 */  stwu    r1, -0x20(r1)
/* 06381C 80068DBC 93E1001C */  stw     r31, 0x1c(r1)
/* 063820 80068DC0 3BE40000 */  addi    r31, r4, 0
/* 063824 80068DC4 64043000 */  oris    r4, r0, 0x3000
/* 063828 80068DC8 93C10018 */  stw     r30, 0x18(r1)
/* 06382C 80068DCC 3BC30000 */  addi    r30, r3, 0
/* 063830 80068DD0 38610010 */  addi    r3, r1, 0x10
/* 063834 80068DD4 4BF9E3E1 */  bl      xlHeapTake
/* 063838 80068DD8 2C030000 */  cmpwi   r3, 0
/* 06383C 80068DDC 4082000C */  bne     lbl_80068DE8
/* 063840 80068DE0 38600000 */  li      r3, 0
/* 063844 80068DE4 48000104 */  b       lbl_80068EE8
lbl_80068DE8:
/* 063848 80068DE8 80010010 */  lwz     r0, 0x10(r1)
/* 06384C 80068DEC 3CC080E6 */  lis     r6, 0x80e6
/* 063850 80068DF0 3D007CA5 */  lis     r8, 0x7ca5
/* 063854 80068DF4 901F0000 */  stw     r0, 0(r31)
/* 063858 80068DF8 3CA054C6 */  lis     r5, 0x54c6
/* 06385C 80068DFC 38600000 */  li      r3, 0
/* 063860 80068E00 80810010 */  lwz     r4, 0x10(r1)
/* 063864 80068E04 381E0B64 */  addi    r0, r30, 0xb64
/* 063868 80068E08 38A5103A */  addi    r5, r5, 0x103a
/* 06386C 80068E0C 5463103A */  slwi    r3, r3, 2
/* 063870 80068E10 7CA4192E */  stwx    r5, r4, r3
/* 063874 80068E14 7C9E0050 */  subf    r4, r30, r0
/* 063878 80068E18 38000001 */  li      r0, 1
/* 06387C 80068E1C 80610010 */  lwz     r3, 0x10(r1)
/* 063880 80068E20 3C8438E3 */  addis   r4, r4, 0x38e3
/* 063884 80068E24 5400103A */  slwi    r0, r0, 2
/* 063888 80068E28 7C83012E */  stwx    r4, r3, r0
/* 06388C 80068E2C 3C807CC6 */  lis     r4, 0x7cc6
/* 063890 80068E30 38000002 */  li      r0, 2
/* 063894 80068E34 80610010 */  lwz     r3, 0x10(r1)
/* 063898 80068E38 3884382E */  addi    r4, r4, 0x382e
/* 06389C 80068E3C 5400103A */  slwi    r0, r0, 2
/* 0638A0 80068E40 7C83012E */  stwx    r4, r3, r0
/* 0638A4 80068E44 38000003 */  li      r0, 3
/* 0638A8 80068E48 38600004 */  li      r3, 4
/* 0638AC 80068E4C 80810010 */  lwz     r4, 0x10(r1)
/* 0638B0 80068E50 38A60008 */  addi    r5, r6, 8
/* 0638B4 80068E54 5400103A */  slwi    r0, r0, 2
/* 0638B8 80068E58 7CA4012E */  stwx    r5, r4, r0
/* 0638BC 80068E5C 38000005 */  li      r0, 5
/* 0638C0 80068E60 3CE080E7 */  lis     r7, 0x80e7
/* 0638C4 80068E64 80810010 */  lwz     r4, 0x10(r1)
/* 0638C8 80068E68 38A83A14 */  addi    r5, r8, 0x3a14
/* 0638CC 80068E6C 5463103A */  slwi    r3, r3, 2
/* 0638D0 80068E70 7CA4192E */  stwx    r5, r4, r3
/* 0638D4 80068E74 38A00006 */  li      r5, 6
/* 0638D8 80068E78 38800007 */  li      r4, 7
/* 0638DC 80068E7C 80610010 */  lwz     r3, 0x10(r1)
/* 0638E0 80068E80 38C60004 */  addi    r6, r6, 4
/* 0638E4 80068E84 5400103A */  slwi    r0, r0, 2
/* 0638E8 80068E88 7CC3012E */  stwx    r6, r3, r0
/* 0638EC 80068E8C 3C604E80 */  lis     r3, 0x4e80
/* 0638F0 80068E90 38000008 */  li      r0, 8
/* 0638F4 80068E94 80C10010 */  lwz     r6, 0x10(r1)
/* 0638F8 80068E98 38E70004 */  addi    r7, r7, 4
/* 0638FC 80068E9C 54A5103A */  slwi    r5, r5, 2
/* 063900 80068EA0 7CE6292E */  stwx    r7, r6, r5
/* 063904 80068EA4 38A00009 */  li      r5, 9
/* 063908 80068EA8 54BF103A */  slwi    r31, r5, 2
/* 06390C 80068EAC 80A10010 */  lwz     r5, 0x10(r1)
/* 063910 80068EB0 38C83A2E */  addi    r6, r8, 0x3a2e
/* 063914 80068EB4 5484103A */  slwi    r4, r4, 2
/* 063918 80068EB8 7CC5212E */  stwx    r6, r5, r4
/* 06391C 80068EBC 38A30020 */  addi    r5, r3, 0x20
/* 063920 80068EC0 5400103A */  slwi    r0, r0, 2
/* 063924 80068EC4 80610010 */  lwz     r3, 0x10(r1)
/* 063928 80068EC8 7FE4FB78 */  mr      r4, r31
/* 06392C 80068ECC 7CA3012E */  stwx    r5, r3, r0
/* 063930 80068ED0 80610010 */  lwz     r3, 0x10(r1)
/* 063934 80068ED4 480348D9 */  bl      DCStoreRange
/* 063938 80068ED8 80610010 */  lwz     r3, 0x10(r1)
/* 06393C 80068EDC 7FE4FB78 */  mr      r4, r31
/* 063940 80068EE0 48034955 */  bl      ICInvalidateRange
/* 063944 80068EE4 38600001 */  li      r3, 1
lbl_80068EE8:
/* 063948 80068EE8 80010024 */  lwz     r0, 0x24(r1)
/* 06394C 80068EEC 83E1001C */  lwz     r31, 0x1c(r1)
/* 063950 80068EF0 83C10018 */  lwz     r30, 0x18(r1)
/* 063954 80068EF4 7C0803A6 */  mtlr    r0
/* 063958 80068EF8 38210020 */  addi    r1, r1, 0x20
/* 06395C 80068EFC 4E800020 */  blr     