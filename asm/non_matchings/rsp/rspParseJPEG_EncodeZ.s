glabel rspParseJPEG_EncodeZ
/* 0757C8 8007AD68 7C0802A6 */  mflr    r0
/* 0757CC 8007AD6C 38C00000 */  li      r6, 0
/* 0757D0 8007AD70 90010004 */  stw     r0, 4(r1)
/* 0757D4 8007AD74 9421FFC0 */  stwu    r1, -0x40(r1)
/* 0757D8 8007AD78 93E1003C */  stw     r31, 0x3c(r1)
/* 0757DC 8007AD7C 93C10038 */  stw     r30, 0x38(r1)
/* 0757E0 8007AD80 93A10034 */  stw     r29, 0x34(r1)
/* 0757E4 8007AD84 93810030 */  stw     r28, 0x30(r1)
/* 0757E8 8007AD88 7C7C1B78 */  mr      r28, r3
/* 0757EC 8007AD8C 806338E8 */  lwz     r3, 0x38e8(r3)
/* 0757F0 8007AD90 80A40030 */  lwz     r5, 0x30(r4)
/* 0757F4 8007AD94 3881001C */  addi    r4, r1, 0x1c
/* 0757F8 8007AD98 8063002C */  lwz     r3, 0x2c(r3)
/* 0757FC 8007AD9C 4BFF2305 */  bl      ramGetBuffer
/* 075800 8007ADA0 2C030000 */  cmpwi   r3, 0
/* 075804 8007ADA4 4082000C */  bne     lbl_8007ADB0
/* 075808 8007ADA8 38600000 */  li      r3, 0
/* 07580C 8007ADAC 48000098 */  b       lbl_8007AE44
lbl_8007ADB0:
/* 075810 8007ADB0 807C38E8 */  lwz     r3, 0x38e8(r28)
/* 075814 8007ADB4 38810020 */  addi    r4, r1, 0x20
/* 075818 8007ADB8 80A1001C */  lwz     r5, 0x1c(r1)
/* 07581C 8007ADBC 38C00000 */  li      r6, 0
/* 075820 8007ADC0 8063002C */  lwz     r3, 0x2c(r3)
/* 075824 8007ADC4 80A50000 */  lwz     r5, 0(r5)
/* 075828 8007ADC8 4BFF22D9 */  bl      ramGetBuffer
/* 07582C 8007ADCC 2C030000 */  cmpwi   r3, 0
/* 075830 8007ADD0 4082000C */  bne     lbl_8007ADDC
/* 075834 8007ADD4 38600000 */  li      r3, 0
/* 075838 8007ADD8 4800006C */  b       lbl_8007AE44
lbl_8007ADDC:
/* 07583C 8007ADDC 80C1001C */  lwz     r6, 0x1c(r1)
/* 075840 8007ADE0 7F83E378 */  mr      r3, r28
/* 075844 8007ADE4 83A60004 */  lwz     r29, 4(r6)
/* 075848 8007ADE8 8086000C */  lwz     r4, 0xc(r6)
/* 07584C 8007ADEC 80A60010 */  lwz     r5, 0x10(r6)
/* 075850 8007ADF0 80C60014 */  lwz     r6, 0x14(r6)
/* 075854 8007ADF4 480023D5 */  bl      rspCreateJPEGArraysZ
/* 075858 8007ADF8 83C10020 */  lwz     r30, 0x20(r1)
/* 07585C 8007ADFC 3BE00000 */  li      r31, 0
/* 075860 8007AE00 48000038 */  b       lbl_8007AE38
lbl_8007AE04:
/* 075864 8007AE04 387C0000 */  addi    r3, r28, 0
/* 075868 8007AE08 389E0000 */  addi    r4, r30, 0
/* 07586C 8007AE0C 48000059 */  bl      rspRecon420Z
/* 075870 8007AE10 7F83E378 */  mr      r3, r28
/* 075874 8007AE14 480020E5 */  bl      rspDCTZ
/* 075878 8007AE18 387C0000 */  addi    r3, r28, 0
/* 07587C 8007AE1C 389E0000 */  addi    r4, r30, 0
/* 075880 8007AE20 48001585 */  bl      rspZigzagDataZ
/* 075884 8007AE24 387C0000 */  addi    r3, r28, 0
/* 075888 8007AE28 389E0000 */  addi    r4, r30, 0
/* 07588C 8007AE2C 48001AA1 */  bl      rspQuantizeZ
/* 075890 8007AE30 3BDE0300 */  addi    r30, r30, 0x300
/* 075894 8007AE34 3BFF0001 */  addi    r31, r31, 1
lbl_8007AE38:
/* 075898 8007AE38 7C1FE800 */  cmpw    r31, r29
/* 07589C 8007AE3C 4180FFC8 */  blt     lbl_8007AE04
/* 0758A0 8007AE40 38600001 */  li      r3, 1
lbl_8007AE44:
/* 0758A4 8007AE44 80010044 */  lwz     r0, 0x44(r1)
/* 0758A8 8007AE48 83E1003C */  lwz     r31, 0x3c(r1)
/* 0758AC 8007AE4C 83C10038 */  lwz     r30, 0x38(r1)
/* 0758B0 8007AE50 7C0803A6 */  mtlr    r0
/* 0758B4 8007AE54 83A10034 */  lwz     r29, 0x34(r1)
/* 0758B8 8007AE58 83810030 */  lwz     r28, 0x30(r1)
/* 0758BC 8007AE5C 38210040 */  addi    r1, r1, 0x40
/* 0758C0 8007AE60 4E800020 */  blr     
