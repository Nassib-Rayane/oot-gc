glabel mcardWrite
/* 0113B0 80016950 7C0802A6 */  mflr    r0
/* 0113B4 80016954 90010004 */  stw     r0, 4(r1)
/* 0113B8 80016958 9421FFC8 */  stwu    r1, -0x38(r1)
/* 0113BC 8001695C BF21001C */  stmw    r25, 0x1c(r1)
/* 0113C0 80016960 7C7C1B78 */  mr      r28, r3
/* 0113C4 80016964 3B400001 */  li      r26, 1
/* 0113C8 80016968 3BC50000 */  addi    r30, r5, 0
/* 0113CC 8001696C 3B600000 */  li      r27, 0
/* 0113D0 80016970 3BA40000 */  addi    r29, r4, 0
/* 0113D4 80016974 3BE60000 */  addi    r31, r6, 0
/* 0113D8 80016978 389F0000 */  addi    r4, r31, 0
/* 0113DC 8001697C 80E3003C */  lwz     r7, 0x3c(r3)
/* 0113E0 80016980 3C608010 */  lis     r3, bNoWriteInCurrentFrame@ha
/* 0113E4 80016984 800D8980 */  lwz     r0, currentIdx@sda21(r13)
/* 0113E8 80016988 8B270000 */  lbz     r25, 0(r7)
/* 0113EC 8001698C 5405103A */  slwi    r5, r0, 2
/* 0113F0 80016990 38037988 */  addi    r0, r3, bNoWriteInCurrentFrame@l
/* 0113F4 80016994 934D8998 */  stw     r26, bWrite2Card@sda21(r13)
/* 0113F8 80016998 7C602A14 */  add     r3, r0, r5
/* 0113FC 8001699C 93630000 */  stw     r27, 0(r3)
/* 011400 800169A0 38BE0000 */  addi    r5, r30, 0
/* 011404 800169A4 801C003C */  lwz     r0, 0x3c(r28)
/* 011408 800169A8 7C60EA14 */  add     r3, r0, r29
/* 01140C 800169AC 4BFEEB19 */  bl      memcpy
/* 011410 800169B0 806D8920 */  lwz     r3, gpSystem@sda21(r13)
/* 011414 800169B4 80030020 */  lwz     r0, 0x20(r3)
/* 011418 800169B8 2C000004 */  cmpwi   r0, 4
/* 01141C 800169BC 40820284 */  bne     lbl_80016C40
/* 011420 800169C0 2C1D0000 */  cmpwi   r29, 0
/* 011424 800169C4 408200D0 */  bne     lbl_80016A94
/* 011428 800169C8 800D80D8 */  lwz     r0, toggle@sda21(r13)
/* 01142C 800169CC 2C000000 */  cmpwi   r0, 0
/* 011430 800169D0 41820080 */  beq     lbl_80016A50
/* 011434 800169D4 801C0480 */  lwz     r0, 0x480(r28)
/* 011438 800169D8 2C000001 */  cmpwi   r0, 1
/* 01143C 800169DC 40820074 */  bne     lbl_80016A50
/* 011440 800169E0 4808A2F9 */  bl      OSGetSoundMode
/* 011444 800169E4 28030000 */  cmplwi  r3, 0
/* 011448 800169E8 40820028 */  bne     lbl_80016A10
/* 01144C 800169EC 807C003C */  lwz     r3, 0x3c(r28)
/* 011450 800169F0 88030000 */  lbz     r0, 0(r3)
/* 011454 800169F4 5400063A */  rlwinm  r0, r0, 0, 0x18, 0x1d
/* 011458 800169F8 98030000 */  stb     r0, 0(r3)
/* 01145C 800169FC 807C003C */  lwz     r3, 0x3c(r28)
/* 011460 80016A00 88030000 */  lbz     r0, 0(r3)
/* 011464 80016A04 60000001 */  ori     r0, r0, 1
/* 011468 80016A08 98030000 */  stb     r0, 0(r3)
/* 01146C 80016A0C 4800002C */  b       lbl_80016A38
lbl_80016A10:
/* 011470 80016A10 4808A2C9 */  bl      OSGetSoundMode
/* 011474 80016A14 28030001 */  cmplwi  r3, 1
/* 011478 80016A18 40820020 */  bne     lbl_80016A38
/* 01147C 80016A1C 809C003C */  lwz     r4, 0x3c(r28)
/* 011480 80016A20 88640000 */  lbz     r3, 0(r4)
/* 011484 80016A24 5460073E */  clrlwi  r0, r3, 0x1c
/* 011488 80016A28 2C000001 */  cmpwi   r0, 1
/* 01148C 80016A2C 4082000C */  bne     lbl_80016A38
/* 011490 80016A30 5460063A */  rlwinm  r0, r3, 0, 0x18, 0x1d
/* 011494 80016A34 98040000 */  stb     r0, 0(r4)
lbl_80016A38:
/* 011498 80016A38 807C003C */  lwz     r3, 0x3c(r28)
/* 01149C 80016A3C 38000000 */  li      r0, 0
/* 0114A0 80016A40 88630000 */  lbz     r3, 0(r3)
/* 0114A4 80016A44 987F0000 */  stb     r3, 0(r31)
/* 0114A8 80016A48 900D80D8 */  stw     r0, toggle@sda21(r13)
/* 0114AC 80016A4C 48000048 */  b       lbl_80016A94
lbl_80016A50:
/* 0114B0 80016A50 807C003C */  lwz     r3, 0x3c(r28)
/* 0114B4 80016A54 7F200774 */  extsb   r0, r25
/* 0114B8 80016A58 88630000 */  lbz     r3, 0(r3)
/* 0114BC 80016A5C 7C630774 */  extsb   r3, r3
/* 0114C0 80016A60 7C030000 */  cmpw    r3, r0
/* 0114C4 80016A64 41820030 */  beq     lbl_80016A94
/* 0114C8 80016A68 540007BE */  clrlwi  r0, r0, 0x1e
/* 0114CC 80016A6C 2C000001 */  cmpwi   r0, 1
/* 0114D0 80016A70 40820010 */  bne     lbl_80016A80
/* 0114D4 80016A74 38600001 */  li      r3, 1
/* 0114D8 80016A78 4808A2E1 */  bl      OSSetSoundMode
/* 0114DC 80016A7C 48000018 */  b       lbl_80016A94
lbl_80016A80:
/* 0114E0 80016A80 546007BE */  clrlwi  r0, r3, 0x1e
/* 0114E4 80016A84 2C000001 */  cmpwi   r0, 1
/* 0114E8 80016A88 4082000C */  bne     lbl_80016A94
/* 0114EC 80016A8C 38600000 */  li      r3, 0
/* 0114F0 80016A90 4808A2C9 */  bl      OSSetSoundMode
lbl_80016A94:
/* 0114F4 80016A94 801C0470 */  lwz     r0, 0x470(r28)
/* 0114F8 80016A98 2C000001 */  cmpwi   r0, 1
/* 0114FC 80016A9C 40820134 */  bne     lbl_80016BD0
/* 011500 80016AA0 381E1FFB */  addi    r0, r30, 0x1ffb
/* 011504 80016AA4 3C600020 */  lis     r3, 0x20
/* 011508 80016AA8 38630401 */  addi    r3, r3, 0x401
/* 01150C 80016AAC 7CA3E816 */  mulhwu  r5, r3, r29
/* 011510 80016AB0 7C1D0214 */  add     r0, r29, r0
/* 011514 80016AB4 7C630016 */  mulhwu  r3, r3, r0
/* 011518 80016AB8 7C85E850 */  subf    r4, r5, r29
/* 01151C 80016ABC 7C030050 */  subf    r0, r3, r0
/* 011520 80016AC0 5484F87E */  srwi    r4, r4, 1
/* 011524 80016AC4 7C842A14 */  add     r4, r4, r5
/* 011528 80016AC8 5400F87E */  srwi    r0, r0, 1
/* 01152C 80016ACC 7C001A14 */  add     r0, r0, r3
/* 011530 80016AD0 5483A33E */  srwi    r3, r4, 0xc
/* 011534 80016AD4 5400A33E */  srwi    r0, r0, 0xc
/* 011538 80016AD8 7C030040 */  cmplw   r3, r0
/* 01153C 80016ADC 5486B2BA */  rlwinm  r6, r4, 0x16, 0xa, 0x1d
/* 011540 80016AE0 7C630050 */  subf    r3, r3, r0
/* 011544 80016AE4 38A00001 */  li      r5, 1
/* 011548 80016AE8 40800090 */  bge     lbl_80016B78
/* 01154C 80016AEC 5460E8FF */  rlwinm. r0, r3, 0x1d, 3, 0x1f
/* 011550 80016AF0 7C0903A6 */  mtctr   r0
/* 011554 80016AF4 41820070 */  beq     lbl_80016B64
lbl_80016AF8:
/* 011558 80016AF8 809C0040 */  lwz     r4, 0x40(r28)
/* 01155C 80016AFC 7CA4312E */  stwx    r5, r4, r6
/* 011560 80016B00 38C60004 */  addi    r6, r6, 4
/* 011564 80016B04 809C0040 */  lwz     r4, 0x40(r28)
/* 011568 80016B08 7CA4312E */  stwx    r5, r4, r6
/* 01156C 80016B0C 38C60004 */  addi    r6, r6, 4
/* 011570 80016B10 809C0040 */  lwz     r4, 0x40(r28)
/* 011574 80016B14 7CA4312E */  stwx    r5, r4, r6
/* 011578 80016B18 38C60004 */  addi    r6, r6, 4
/* 01157C 80016B1C 809C0040 */  lwz     r4, 0x40(r28)
/* 011580 80016B20 7CA4312E */  stwx    r5, r4, r6
/* 011584 80016B24 38C60004 */  addi    r6, r6, 4
/* 011588 80016B28 809C0040 */  lwz     r4, 0x40(r28)
/* 01158C 80016B2C 7CA4312E */  stwx    r5, r4, r6
/* 011590 80016B30 38C60004 */  addi    r6, r6, 4
/* 011594 80016B34 809C0040 */  lwz     r4, 0x40(r28)
/* 011598 80016B38 7CA4312E */  stwx    r5, r4, r6
/* 01159C 80016B3C 38C60004 */  addi    r6, r6, 4
/* 0115A0 80016B40 809C0040 */  lwz     r4, 0x40(r28)
/* 0115A4 80016B44 7CA4312E */  stwx    r5, r4, r6
/* 0115A8 80016B48 38C60004 */  addi    r6, r6, 4
/* 0115AC 80016B4C 809C0040 */  lwz     r4, 0x40(r28)
/* 0115B0 80016B50 7CA4312E */  stwx    r5, r4, r6
/* 0115B4 80016B54 38C60004 */  addi    r6, r6, 4
/* 0115B8 80016B58 4200FFA0 */  bdnz    lbl_80016AF8
/* 0115BC 80016B5C 70630007 */  andi.   r3, r3, 7
/* 0115C0 80016B60 41820018 */  beq     lbl_80016B78
lbl_80016B64:
/* 0115C4 80016B64 7C6903A6 */  mtctr   r3
lbl_80016B68:
/* 0115C8 80016B68 809C0040 */  lwz     r4, 0x40(r28)
/* 0115CC 80016B6C 7CA4312E */  stwx    r5, r4, r6
/* 0115D0 80016B70 38C60004 */  addi    r6, r6, 4
/* 0115D4 80016B74 4200FFF4 */  bdnz    lbl_80016B68
lbl_80016B78:
/* 0115D8 80016B78 2C1E1450 */  cmpwi   r30, 0x1450
/* 0115DC 80016B7C 40820034 */  bne     lbl_80016BB0
/* 0115E0 80016B80 800D8990 */  lwz     r0, toggle2@sda21(r13)
/* 0115E4 80016B84 2C000001 */  cmpwi   r0, 1
/* 0115E8 80016B88 40820028 */  bne     lbl_80016BB0
/* 0115EC 80016B8C 38000000 */  li      r0, 0
/* 0115F0 80016B90 900D8990 */  stw     r0, toggle2@sda21(r13)
/* 0115F4 80016B94 38600000 */  li      r3, 0
/* 0115F8 80016B98 4BFF2225 */  bl      simulatorRumbleStop
/* 0115FC 80016B9C 4BFFC8A5 */  bl      mcardUpdate
/* 011600 80016BA0 2C030000 */  cmpwi   r3, 0
/* 011604 80016BA4 408200F4 */  bne     lbl_80016C98
/* 011608 80016BA8 38600000 */  li      r3, 0
/* 01160C 80016BAC 480000F0 */  b       lbl_80016C9C
lbl_80016BB0:
/* 011610 80016BB0 2C1E1450 */  cmpwi   r30, 0x1450
/* 011614 80016BB4 408200E4 */  bne     lbl_80016C98
/* 011618 80016BB8 800D8990 */  lwz     r0, toggle2@sda21(r13)
/* 01161C 80016BBC 2C000000 */  cmpwi   r0, 0
/* 011620 80016BC0 408200D8 */  bne     lbl_80016C98
/* 011624 80016BC4 38000001 */  li      r0, 1
/* 011628 80016BC8 900D8990 */  stw     r0, toggle2@sda21(r13)
/* 01162C 80016BCC 480000CC */  b       lbl_80016C98
lbl_80016BD0:
/* 011630 80016BD0 2C1E1450 */  cmpwi   r30, 0x1450
/* 011634 80016BD4 4082004C */  bne     lbl_80016C20
/* 011638 80016BD8 800D8990 */  lwz     r0, toggle2@sda21(r13)
/* 01163C 80016BDC 2C000001 */  cmpwi   r0, 1
/* 011640 80016BE0 40820040 */  bne     lbl_80016C20
/* 011644 80016BE4 38800000 */  li      r4, 0
/* 011648 80016BE8 908D8990 */  stw     r4, toggle2@sda21(r13)
/* 01164C 80016BEC 38000001 */  li      r0, 1
/* 011650 80016BF0 387C0000 */  addi    r3, r28, 0
/* 011654 80016BF4 901C0470 */  stw     r0, 0x470(r28)
/* 011658 80016BF8 909C07AC */  stw     r4, 0x7ac(r28)
/* 01165C 80016BFC 4BFFDA01 */  bl      mcardOpenDuringGame
/* 011660 80016C00 801C0470 */  lwz     r0, 0x470(r28)
/* 011664 80016C04 2C000001 */  cmpwi   r0, 1
/* 011668 80016C08 40820090 */  bne     lbl_80016C98
/* 01166C 80016C0C 4BFFC835 */  bl      mcardUpdate
/* 011670 80016C10 2C030000 */  cmpwi   r3, 0
/* 011674 80016C14 40820084 */  bne     lbl_80016C98
/* 011678 80016C18 38600000 */  li      r3, 0
/* 01167C 80016C1C 48000080 */  b       lbl_80016C9C
lbl_80016C20:
/* 011680 80016C20 2C1E1450 */  cmpwi   r30, 0x1450
/* 011684 80016C24 40820074 */  bne     lbl_80016C98
/* 011688 80016C28 800D8990 */  lwz     r0, toggle2@sda21(r13)
/* 01168C 80016C2C 2C000000 */  cmpwi   r0, 0
/* 011690 80016C30 40820068 */  bne     lbl_80016C98
/* 011694 80016C34 38000001 */  li      r0, 1
/* 011698 80016C38 900D8990 */  stw     r0, toggle2@sda21(r13)
/* 01169C 80016C3C 4800005C */  b       lbl_80016C98
lbl_80016C40:
/* 0116A0 80016C40 801C0470 */  lwz     r0, 0x470(r28)
/* 0116A4 80016C44 2C000001 */  cmpwi   r0, 1
/* 0116A8 80016C48 40820020 */  bne     lbl_80016C68
/* 0116AC 80016C4C 38600000 */  li      r3, 0
/* 0116B0 80016C50 4BFF216D */  bl      simulatorRumbleStop
/* 0116B4 80016C54 4BFFC7ED */  bl      mcardUpdate
/* 0116B8 80016C58 2C030000 */  cmpwi   r3, 0
/* 0116BC 80016C5C 4082003C */  bne     lbl_80016C98
/* 0116C0 80016C60 38600000 */  li      r3, 0
/* 0116C4 80016C64 48000038 */  b       lbl_80016C9C
lbl_80016C68:
/* 0116C8 80016C68 935C0470 */  stw     r26, 0x470(r28)
/* 0116CC 80016C6C 7F83E378 */  mr      r3, r28
/* 0116D0 80016C70 937C07AC */  stw     r27, 0x7ac(r28)
/* 0116D4 80016C74 4BFFD989 */  bl      mcardOpenDuringGame
/* 0116D8 80016C78 801C0470 */  lwz     r0, 0x470(r28)
/* 0116DC 80016C7C 2C000001 */  cmpwi   r0, 1
/* 0116E0 80016C80 40820018 */  bne     lbl_80016C98
/* 0116E4 80016C84 4BFFC7BD */  bl      mcardUpdate
/* 0116E8 80016C88 2C030000 */  cmpwi   r3, 0
/* 0116EC 80016C8C 4082000C */  bne     lbl_80016C98
/* 0116F0 80016C90 38600000 */  li      r3, 0
/* 0116F4 80016C94 48000008 */  b       lbl_80016C9C
lbl_80016C98:
/* 0116F8 80016C98 38600001 */  li      r3, 1
lbl_80016C9C:
/* 0116FC 80016C9C BB21001C */  lmw     r25, 0x1c(r1)
/* 011700 80016CA0 8001003C */  lwz     r0, 0x3c(r1)
/* 011704 80016CA4 38210038 */  addi    r1, r1, 0x38
/* 011708 80016CA8 7C0803A6 */  mtlr    r0
/* 01170C 80016CAC 4E800020 */  blr     
