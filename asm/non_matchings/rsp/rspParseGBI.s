glabel rspParseGBI
/* 06D4BC 80072A5C 7C0802A6 */  mflr    r0
/* 06D4C0 80072A60 90010004 */  stw     r0, 4(r1)
/* 06D4C4 80072A64 38000000 */  li      r0, 0
/* 06D4C8 80072A68 9421FFD0 */  stwu    r1, -0x30(r1)
/* 06D4CC 80072A6C BF410018 */  stmw    r26, 0x18(r1)
/* 06D4D0 80072A70 7C7B1B78 */  mr      r27, r3
/* 06D4D4 80072A74 3B840000 */  addi    r28, r4, 0
/* 06D4D8 80072A78 3BA50000 */  addi    r29, r5, 0
/* 06D4DC 80072A7C 80C338E8 */  lwz     r6, 0x38e8(r3)
/* 06D4E0 80072A80 3C60800F */  lis     r3, jtbl_800EE3AC@ha
/* 06D4E4 80072A84 3BE3E3AC */  addi    r31, r3, jtbl_800EE3AC@l
/* 06D4E8 80072A88 83C60024 */  lwz     r30, 0x24(r6)
/* 06D4EC 80072A8C 90010014 */  stw     r0, 0x14(r1)
/* 06D4F0 80072A90 480000FC */  b       lbl_80072B8C
lbl_80072A94:
/* 06D4F4 80072A94 807B38E0 */  lwz     r3, 0x38e0(r27)
/* 06D4F8 80072A98 801B3920 */  lwz     r0, 0x3920(r27)
/* 06D4FC 80072A9C 5463103A */  slwi    r3, r3, 2
/* 06D500 80072AA0 7C9B1A14 */  add     r4, r27, r3
/* 06D504 80072AA4 2800000A */  cmplwi  r0, 0xa
/* 06D508 80072AA8 83443968 */  lwz     r26, 0x3968(r4)
/* 06D50C 80072AAC 4181003C */  bgt     lbl_80072AE8
/* 06D510 80072AB0 5400103A */  slwi    r0, r0, 2
/* 06D514 80072AB4 7C1F002E */  lwzx    r0, r31, r0
/* 06D518 80072AB8 7C0903A6 */  mtctr   r0
/* 06D51C 80072ABC 4E800420 */  bctr    
glabel lbl_80072AC0
/* 06D520 80072AC0 387B0000 */  addi    r3, r27, 0
/* 06D524 80072AC4 38843968 */  addi    r4, r4, 0x3968
/* 06D528 80072AC8 38A10014 */  addi    r5, r1, 0x14
/* 06D52C 80072ACC 48003641 */  bl      rspParseGBI_F3DEX1
/* 06D530 80072AD0 48000020 */  b       lbl_80072AF0
glabel lbl_80072AD4
/* 06D534 80072AD4 387B0000 */  addi    r3, r27, 0
/* 06D538 80072AD8 38843968 */  addi    r4, r4, 0x3968
/* 06D53C 80072ADC 38A10014 */  addi    r5, r1, 0x14
/* 06D540 80072AE0 48001975 */  bl      rspParseGBI_F3DEX2
/* 06D544 80072AE4 4800000C */  b       lbl_80072AF0
glabel lbl_80072AE8
/* 06D548 80072AE8 38600000 */  li      r3, 0
/* 06D54C 80072AEC 48000110 */  b       lbl_80072BFC
lbl_80072AF0:
/* 06D550 80072AF0 2C030000 */  cmpwi   r3, 0
/* 06D554 80072AF4 4082006C */  bne     lbl_80072B60
/* 06D558 80072AF8 801B38E0 */  lwz     r0, 0x38e0(r27)
/* 06D55C 80072AFC 5403103A */  slwi    r3, r0, 2
/* 06D560 80072B00 38033968 */  addi    r0, r3, 0x3968
/* 06D564 80072B04 7F5B012E */  stwx    r26, r27, r0
/* 06D568 80072B08 801B38E0 */  lwz     r0, 0x38e0(r27)
/* 06D56C 80072B0C 80DB38E8 */  lwz     r6, 0x38e8(r27)
/* 06D570 80072B10 5403103A */  slwi    r3, r0, 2
/* 06D574 80072B14 80BB3920 */  lwz     r5, 0x3920(r27)
/* 06D578 80072B18 38833968 */  addi    r4, r3, 0x3968
/* 06D57C 80072B1C 80660038 */  lwz     r3, 0x38(r6)
/* 06D580 80072B20 7C9B2214 */  add     r4, r27, r4
/* 06D584 80072B24 4BFFD81D */  bl      rdpParseGBI
/* 06D588 80072B28 2C030000 */  cmpwi   r3, 0
/* 06D58C 80072B2C 40820034 */  bne     lbl_80072B60
/* 06D590 80072B30 807B38E0 */  lwz     r3, 0x38e0(r27)
/* 06D594 80072B34 2C030000 */  cmpwi   r3, 0
/* 06D598 80072B38 4082000C */  bne     lbl_80072B44
/* 06D59C 80072B3C 38000000 */  li      r0, 0
/* 06D5A0 80072B40 48000010 */  b       lbl_80072B50
lbl_80072B44:
/* 06D5A4 80072B44 3803FFFF */  addi    r0, r3, -1
/* 06D5A8 80072B48 901B38E0 */  stw     r0, 0x38e0(r27)
/* 06D5AC 80072B4C 38000001 */  li      r0, 1
lbl_80072B50:
/* 06D5B0 80072B50 2C000000 */  cmpwi   r0, 0
/* 06D5B4 80072B54 4082000C */  bne     lbl_80072B60
/* 06D5B8 80072B58 38000001 */  li      r0, 1
/* 06D5BC 80072B5C 90010014 */  stw     r0, 0x14(r1)
lbl_80072B60:
/* 06D5C0 80072B60 2C1DFFFF */  cmpwi   r29, -1
/* 06D5C4 80072B64 40820018 */  bne     lbl_80072B7C
/* 06D5C8 80072B68 807E0B5C */  lwz     r3, 0xb5c(r30)
/* 06D5CC 80072B6C 801E0B60 */  lwz     r0, 0xb60(r30)
/* 06D5D0 80072B70 7C030040 */  cmplw   r3, r0
/* 06D5D4 80072B74 40820024 */  bne     lbl_80072B98
/* 06D5D8 80072B78 48000014 */  b       lbl_80072B8C
lbl_80072B7C:
/* 06D5DC 80072B7C 2C1D0000 */  cmpwi   r29, 0
/* 06D5E0 80072B80 4182000C */  beq     lbl_80072B8C
/* 06D5E4 80072B84 37BDFFFF */  addic.  r29, r29, -1
/* 06D5E8 80072B88 41820010 */  beq     lbl_80072B98
lbl_80072B8C:
/* 06D5EC 80072B8C 80010014 */  lwz     r0, 0x14(r1)
/* 06D5F0 80072B90 2C000000 */  cmpwi   r0, 0
/* 06D5F4 80072B94 4182FF00 */  beq     lbl_80072A94
lbl_80072B98:
/* 06D5F8 80072B98 801B3920 */  lwz     r0, 0x3920(r27)
/* 06D5FC 80072B9C 2C000003 */  cmpwi   r0, 3
/* 06D600 80072BA0 40820028 */  bne     lbl_80072BC8
/* 06D604 80072BA4 801B015C */  lwz     r0, 0x15c(r27)
/* 06D608 80072BA8 2C000001 */  cmpwi   r0, 1
/* 06D60C 80072BAC 40820010 */  bne     lbl_80072BBC
/* 06D610 80072BB0 38000002 */  li      r0, 2
/* 06D614 80072BB4 901B015C */  stw     r0, 0x15c(r27)
/* 06D618 80072BB8 48000018 */  b       lbl_80072BD0
lbl_80072BBC:
/* 06D61C 80072BBC 38000001 */  li      r0, 1
/* 06D620 80072BC0 901B015C */  stw     r0, 0x15c(r27)
/* 06D624 80072BC4 4800000C */  b       lbl_80072BD0
lbl_80072BC8:
/* 06D628 80072BC8 38000002 */  li      r0, 2
/* 06D62C 80072BCC 901B015C */  stw     r0, 0x15c(r27)
lbl_80072BD0:
/* 06D630 80072BD0 80010014 */  lwz     r0, 0x14(r1)
/* 06D634 80072BD4 2C000000 */  cmpwi   r0, 0
/* 06D638 80072BD8 41820010 */  beq     lbl_80072BE8
/* 06D63C 80072BDC 801B0000 */  lwz     r0, 0(r27)
/* 06D640 80072BE0 60000008 */  ori     r0, r0, 8
/* 06D644 80072BE4 901B0000 */  stw     r0, 0(r27)
lbl_80072BE8:
/* 06D648 80072BE8 281C0000 */  cmplwi  r28, 0
/* 06D64C 80072BEC 4182000C */  beq     lbl_80072BF8
/* 06D650 80072BF0 80010014 */  lwz     r0, 0x14(r1)
/* 06D654 80072BF4 901C0000 */  stw     r0, 0(r28)
lbl_80072BF8:
/* 06D658 80072BF8 38600001 */  li      r3, 1
lbl_80072BFC:
/* 06D65C 80072BFC BB410018 */  lmw     r26, 0x18(r1)
/* 06D660 80072C00 80010034 */  lwz     r0, 0x34(r1)
/* 06D664 80072C04 38210030 */  addi    r1, r1, 0x30
/* 06D668 80072C08 7C0803A6 */  mtlr    r0
/* 06D66C 80072C0C 4E800020 */  blr     
