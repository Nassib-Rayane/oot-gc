glabel rspAPCM8Dec2
/* 07F3E4 80084984 7C0802A6 */  mflr    r0
/* 07F3E8 80084988 38C00000 */  li      r6, 0
/* 07F3EC 8008498C 90010004 */  stw     r0, 4(r1)
/* 07F3F0 80084990 5480023E */  clrlwi  r0, r4, 8
/* 07F3F4 80084994 9421FF60 */  stwu    r1, -0xa0(r1)
/* 07F3F8 80084998 BEA10074 */  stmw    r21, 0x74(r1)
/* 07F3FC 8008499C 3B600000 */  li      r27, 0
/* 07F400 800849A0 3B830000 */  addi    r28, r3, 0
/* 07F404 800849A4 548356BA */  rlwinm  r3, r4, 0xa, 0x1a, 0x1d
/* 07F408 800849A8 7C7C1A14 */  add     r3, r28, r3
/* 07F40C 800849AC 3B250000 */  addi    r25, r5, 0
/* 07F410 800849B0 3881004C */  addi    r4, r1, 0x4c
/* 07F414 800849B4 B3610060 */  sth     r27, 0x60(r1)
/* 07F418 800849B8 B3610050 */  sth     r27, 0x50(r1)
/* 07F41C 800849BC B3610062 */  sth     r27, 0x62(r1)
/* 07F420 800849C0 B3610052 */  sth     r27, 0x52(r1)
/* 07F424 800849C4 B3610064 */  sth     r27, 0x64(r1)
/* 07F428 800849C8 B3610054 */  sth     r27, 0x54(r1)
/* 07F42C 800849CC B3610066 */  sth     r27, 0x66(r1)
/* 07F430 800849D0 B3610056 */  sth     r27, 0x56(r1)
/* 07F434 800849D4 B3610068 */  sth     r27, 0x68(r1)
/* 07F438 800849D8 B3610058 */  sth     r27, 0x58(r1)
/* 07F43C 800849DC B361006A */  sth     r27, 0x6a(r1)
/* 07F440 800849E0 B361005A */  sth     r27, 0x5a(r1)
/* 07F444 800849E4 B361006C */  sth     r27, 0x6c(r1)
/* 07F448 800849E8 B361005C */  sth     r27, 0x5c(r1)
/* 07F44C 800849EC B361006E */  sth     r27, 0x6e(r1)
/* 07F450 800849F0 B361005E */  sth     r27, 0x5e(r1)
/* 07F454 800849F4 80A33254 */  lwz     r5, 0x3254(r3)
/* 07F458 800849F8 807C38E8 */  lwz     r3, 0x38e8(r28)
/* 07F45C 800849FC A3FC334A */  lhz     r31, 0x334a(r28)
/* 07F460 80084A00 7CA50214 */  add     r5, r5, r0
/* 07F464 80084A04 A3DC334E */  lhz     r30, 0x334e(r28)
/* 07F468 80084A08 A35C3344 */  lhz     r26, 0x3344(r28)
/* 07F46C 80084A0C 8063002C */  lwz     r3, 0x2c(r3)
/* 07F470 80084A10 4BFE8691 */  bl      ramGetBuffer
/* 07F474 80084A14 2C030000 */  cmpwi   r3, 0
/* 07F478 80084A18 4082000C */  bne     lbl_80084A24
/* 07F47C 80084A1C 38600000 */  li      r3, 0
/* 07F480 80084A20 480007E4 */  b       lbl_80085204
lbl_80084A24:
/* 07F484 80084A24 83A1004C */  lwz     r29, 0x4c(r1)
/* 07F488 80084A28 399E0001 */  addi    r12, r30, 1
/* 07F48C 80084A2C 807C3294 */  lwz     r3, 0x3294(r28)
/* 07F490 80084A30 57D5083C */  slwi    r21, r30, 1
/* 07F494 80084A34 397E0002 */  addi    r11, r30, 2
/* 07F498 80084A38 7F63AB2E */  sthx    r27, r3, r21
/* 07F49C 80084A3C 395E0003 */  addi    r10, r30, 3
/* 07F4A0 80084A40 393E0004 */  addi    r9, r30, 4
/* 07F4A4 80084A44 809C3294 */  lwz     r4, 0x3294(r28)
/* 07F4A8 80084A48 558C083C */  slwi    r12, r12, 1
/* 07F4AC 80084A4C 38FE0006 */  addi    r7, r30, 6
/* 07F4B0 80084A50 7F64632E */  sthx    r27, r4, r12
/* 07F4B4 80084A54 387E0008 */  addi    r3, r30, 8
/* 07F4B8 80084A58 391E0005 */  addi    r8, r30, 5
/* 07F4BC 80084A5C 809C3294 */  lwz     r4, 0x3294(r28)
/* 07F4C0 80084A60 556B083C */  slwi    r11, r11, 1
/* 07F4C4 80084A64 38BE0007 */  addi    r5, r30, 7
/* 07F4C8 80084A68 7F645B2E */  sthx    r27, r4, r11
/* 07F4CC 80084A6C 39830001 */  addi    r12, r3, 1
/* 07F4D0 80084A70 39630002 */  addi    r11, r3, 2
/* 07F4D4 80084A74 809C3294 */  lwz     r4, 0x3294(r28)
/* 07F4D8 80084A78 554A083C */  slwi    r10, r10, 1
/* 07F4DC 80084A7C 5720843E */  srwi    r0, r25, 0x10
/* 07F4E0 80084A80 7F64532E */  sthx    r27, r4, r10
/* 07F4E4 80084A84 39430003 */  addi    r10, r3, 3
/* 07F4E8 80084A88 5529083C */  slwi    r9, r9, 1
/* 07F4EC 80084A8C 809C3294 */  lwz     r4, 0x3294(r28)
/* 07F4F0 80084A90 54E6083C */  slwi    r6, r7, 1
/* 07F4F4 80084A94 5508083C */  slwi    r8, r8, 1
/* 07F4F8 80084A98 7F644B2E */  sthx    r27, r4, r9
/* 07F4FC 80084A9C 39230004 */  addi    r9, r3, 4
/* 07F500 80084AA0 7C000734 */  extsh   r0, r0
/* 07F504 80084AA4 80FC3294 */  lwz     r7, 0x3294(r28)
/* 07F508 80084AA8 54A5083C */  slwi    r5, r5, 1
/* 07F50C 80084AAC 5475083C */  slwi    r21, r3, 1
/* 07F510 80084AB0 7F67432E */  sthx    r27, r7, r8
/* 07F514 80084AB4 39030005 */  addi    r8, r3, 5
/* 07F518 80084AB8 540407FF */  clrlwi. r4, r0, 0x1f
/* 07F51C 80084ABC 80FC3294 */  lwz     r7, 0x3294(r28)
/* 07F520 80084AC0 558C083C */  slwi    r12, r12, 1
/* 07F524 80084AC4 556B083C */  slwi    r11, r11, 1
/* 07F528 80084AC8 7F67332E */  sthx    r27, r7, r6
/* 07F52C 80084ACC 38E30006 */  addi    r7, r3, 6
/* 07F530 80084AD0 554A083C */  slwi    r10, r10, 1
/* 07F534 80084AD4 80DC3294 */  lwz     r6, 0x3294(r28)
/* 07F538 80084AD8 5529083C */  slwi    r9, r9, 1
/* 07F53C 80084ADC 5508083C */  slwi    r8, r8, 1
/* 07F540 80084AE0 7F662B2E */  sthx    r27, r6, r5
/* 07F544 80084AE4 38A30007 */  addi    r5, r3, 7
/* 07F548 80084AE8 54E6083C */  slwi    r6, r7, 1
/* 07F54C 80084AEC 807C3294 */  lwz     r3, 0x3294(r28)
/* 07F550 80084AF0 54A5083C */  slwi    r5, r5, 1
/* 07F554 80084AF4 7F63AB2E */  sthx    r27, r3, r21
/* 07F558 80084AF8 809C3294 */  lwz     r4, 0x3294(r28)
/* 07F55C 80084AFC 7F64632E */  sthx    r27, r4, r12
/* 07F560 80084B00 809C3294 */  lwz     r4, 0x3294(r28)
/* 07F564 80084B04 7F645B2E */  sthx    r27, r4, r11
/* 07F568 80084B08 809C3294 */  lwz     r4, 0x3294(r28)
/* 07F56C 80084B0C 7F64532E */  sthx    r27, r4, r10
/* 07F570 80084B10 809C3294 */  lwz     r4, 0x3294(r28)
/* 07F574 80084B14 7F644B2E */  sthx    r27, r4, r9
/* 07F578 80084B18 80FC3294 */  lwz     r7, 0x3294(r28)
/* 07F57C 80084B1C 7F67432E */  sthx    r27, r7, r8
/* 07F580 80084B20 80FC3294 */  lwz     r7, 0x3294(r28)
/* 07F584 80084B24 7F67332E */  sthx    r27, r7, r6
/* 07F588 80084B28 80DC3294 */  lwz     r6, 0x3294(r28)
/* 07F58C 80084B2C 7F662B2E */  sthx    r27, r6, r5
/* 07F590 80084B30 4082017C */  bne     lbl_80084CAC
/* 07F594 80084B34 540007BD */  rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 07F598 80084B38 38FD0000 */  addi    r7, r29, 0
/* 07F59C 80084B3C 41820030 */  beq     lbl_80084B6C
/* 07F5A0 80084B40 807C38E8 */  lwz     r3, 0x38e8(r28)
/* 07F5A4 80084B44 3881004C */  addi    r4, r1, 0x4c
/* 07F5A8 80084B48 80BC3354 */  lwz     r5, 0x3354(r28)
/* 07F5AC 80084B4C 38C00000 */  li      r6, 0
/* 07F5B0 80084B50 8063002C */  lwz     r3, 0x2c(r3)
/* 07F5B4 80084B54 4BFE854D */  bl      ramGetBuffer
/* 07F5B8 80084B58 2C030000 */  cmpwi   r3, 0
/* 07F5BC 80084B5C 4082000C */  bne     lbl_80084B68
/* 07F5C0 80084B60 38600000 */  li      r3, 0
/* 07F5C4 80084B64 480006A0 */  b       lbl_80085204
lbl_80084B68:
/* 07F5C8 80084B68 80E1004C */  lwz     r7, 0x4c(r1)
lbl_80084B6C:
/* 07F5CC 80084B6C A9270000 */  lha     r9, 0(r7)
/* 07F5D0 80084B70 3B3E0001 */  addi    r25, r30, 1
/* 07F5D4 80084B74 80BC3294 */  lwz     r5, 0x3294(r28)
/* 07F5D8 80084B78 57C4083C */  slwi    r4, r30, 1
/* 07F5DC 80084B7C 3ADE0002 */  addi    r22, r30, 2
/* 07F5E0 80084B80 7D25232E */  sthx    r9, r5, r4
/* 07F5E4 80084B84 399E0003 */  addi    r12, r30, 3
/* 07F5E8 80084B88 393E0004 */  addi    r9, r30, 4
/* 07F5EC 80084B8C A9670002 */  lha     r11, 2(r7)
/* 07F5F0 80084B90 5723083C */  slwi    r3, r25, 1
/* 07F5F4 80084B94 809C3294 */  lwz     r4, 0x3294(r28)
/* 07F5F8 80084B98 5537083C */  slwi    r23, r9, 1
/* 07F5FC 80084B9C 393E0005 */  addi    r9, r30, 5
/* 07F600 80084BA0 7D641B2E */  sthx    r11, r4, r3
/* 07F604 80084BA4 5535083C */  slwi    r21, r9, 1
/* 07F608 80084BA8 56C0083C */  slwi    r0, r22, 1
/* 07F60C 80084BAC A8870004 */  lha     r4, 4(r7)
/* 07F610 80084BB0 38BE0008 */  addi    r5, r30, 8
/* 07F614 80084BB4 807C3294 */  lwz     r3, 0x3294(r28)
/* 07F618 80084BB8 5598083C */  slwi    r24, r12, 1
/* 07F61C 80084BBC 397E0006 */  addi    r11, r30, 6
/* 07F620 80084BC0 7C83032E */  sthx    r4, r3, r0
/* 07F624 80084BC4 393E0007 */  addi    r9, r30, 7
/* 07F628 80084BC8 556A083C */  slwi    r10, r11, 1
/* 07F62C 80084BCC A8070006 */  lha     r0, 6(r7)
/* 07F630 80084BD0 5528083C */  slwi    r8, r9, 1
/* 07F634 80084BD4 807C3294 */  lwz     r3, 0x3294(r28)
/* 07F638 80084BD8 3AC50002 */  addi    r22, r5, 2
/* 07F63C 80084BDC 39850003 */  addi    r12, r5, 3
/* 07F640 80084BE0 7C03C32E */  sthx    r0, r3, r24
/* 07F644 80084BE4 3B250001 */  addi    r25, r5, 1
/* 07F648 80084BE8 56C0083C */  slwi    r0, r22, 1
/* 07F64C 80084BEC A9670008 */  lha     r11, 8(r7)
/* 07F650 80084BF0 5598083C */  slwi    r24, r12, 1
/* 07F654 80084BF4 813C3294 */  lwz     r9, 0x3294(r28)
/* 07F658 80084BF8 54A4083C */  slwi    r4, r5, 1
/* 07F65C 80084BFC 38C70010 */  addi    r6, r7, 0x10
/* 07F660 80084C00 7D69BB2E */  sthx    r11, r9, r23
/* 07F664 80084C04 39250004 */  addi    r9, r5, 4
/* 07F668 80084C08 5537083C */  slwi    r23, r9, 1
/* 07F66C 80084C0C AAC7000A */  lha     r22, 0xa(r7)
/* 07F670 80084C10 39250005 */  addi    r9, r5, 5
/* 07F674 80084C14 819C3294 */  lwz     r12, 0x3294(r28)
/* 07F678 80084C18 39650006 */  addi    r11, r5, 6
/* 07F67C 80084C1C 5723083C */  slwi    r3, r25, 1
/* 07F680 80084C20 7ECCAB2E */  sthx    r22, r12, r21
/* 07F684 80084C24 5535083C */  slwi    r21, r9, 1
/* 07F688 80084C28 39250007 */  addi    r9, r5, 7
/* 07F68C 80084C2C A987000C */  lha     r12, 0xc(r7)
/* 07F690 80084C30 80BC3294 */  lwz     r5, 0x3294(r28)
/* 07F694 80084C34 7D85532E */  sthx    r12, r5, r10
/* 07F698 80084C38 556A083C */  slwi    r10, r11, 1
/* 07F69C 80084C3C A8E7000E */  lha     r7, 0xe(r7)
/* 07F6A0 80084C40 80BC3294 */  lwz     r5, 0x3294(r28)
/* 07F6A4 80084C44 7CE5432E */  sthx    r7, r5, r8
/* 07F6A8 80084C48 5528083C */  slwi    r8, r9, 1
/* 07F6AC 80084C4C A9260000 */  lha     r9, 0(r6)
/* 07F6B0 80084C50 80BC3294 */  lwz     r5, 0x3294(r28)
/* 07F6B4 80084C54 7D25232E */  sthx    r9, r5, r4
/* 07F6B8 80084C58 A9660002 */  lha     r11, 2(r6)
/* 07F6BC 80084C5C 809C3294 */  lwz     r4, 0x3294(r28)
/* 07F6C0 80084C60 7D641B2E */  sthx    r11, r4, r3
/* 07F6C4 80084C64 A8860004 */  lha     r4, 4(r6)
/* 07F6C8 80084C68 807C3294 */  lwz     r3, 0x3294(r28)
/* 07F6CC 80084C6C 7C83032E */  sthx    r4, r3, r0
/* 07F6D0 80084C70 A8060006 */  lha     r0, 6(r6)
/* 07F6D4 80084C74 807C3294 */  lwz     r3, 0x3294(r28)
/* 07F6D8 80084C78 7C03C32E */  sthx    r0, r3, r24
/* 07F6DC 80084C7C A9660008 */  lha     r11, 8(r6)
/* 07F6E0 80084C80 813C3294 */  lwz     r9, 0x3294(r28)
/* 07F6E4 80084C84 7D69BB2E */  sthx    r11, r9, r23
/* 07F6E8 80084C88 AAC6000A */  lha     r22, 0xa(r6)
/* 07F6EC 80084C8C 819C3294 */  lwz     r12, 0x3294(r28)
/* 07F6F0 80084C90 7ECCAB2E */  sthx    r22, r12, r21
/* 07F6F4 80084C94 A986000C */  lha     r12, 0xc(r6)
/* 07F6F8 80084C98 80BC3294 */  lwz     r5, 0x3294(r28)
/* 07F6FC 80084C9C 7D85532E */  sthx    r12, r5, r10
/* 07F700 80084CA0 A8E6000E */  lha     r7, 0xe(r6)
/* 07F704 80084CA4 80BC3294 */  lwz     r5, 0x3294(r28)
/* 07F708 80084CA8 7CE5432E */  sthx    r7, r5, r8
lbl_80084CAC:
/* 07F70C 80084CAC 2C1A0000 */  cmpwi   r26, 0
/* 07F710 80084CB0 40820148 */  bne     lbl_80084DF8
/* 07F714 80084CB4 80BC3294 */  lwz     r5, 0x3294(r28)
/* 07F718 80084CB8 57C0083C */  slwi    r0, r30, 1
/* 07F71C 80084CBC 3ADE0001 */  addi    r22, r30, 1
/* 07F720 80084CC0 7C0502AE */  lhax    r0, r5, r0
/* 07F724 80084CC4 38FE0003 */  addi    r7, r30, 3
/* 07F728 80084CC8 54F5083C */  slwi    r21, r7, 1
/* 07F72C 80084CCC B01D0000 */  sth     r0, 0(r29)
/* 07F730 80084CD0 387E0004 */  addi    r3, r30, 4
/* 07F734 80084CD4 397E0005 */  addi    r11, r30, 5
/* 07F738 80084CD8 80BC3294 */  lwz     r5, 0x3294(r28)
/* 07F73C 80084CDC 56D7083C */  slwi    r23, r22, 1
/* 07F740 80084CE0 393E0002 */  addi    r9, r30, 2
/* 07F744 80084CE4 7C05BAAE */  lhax    r0, r5, r23
/* 07F748 80084CE8 5536083C */  slwi    r22, r9, 1
/* 07F74C 80084CEC 393E0006 */  addi    r9, r30, 6
/* 07F750 80084CF0 B01D0002 */  sth     r0, 2(r29)
/* 07F754 80084CF4 38FE0007 */  addi    r7, r30, 7
/* 07F758 80084CF8 546C083C */  slwi    r12, r3, 1
/* 07F75C 80084CFC 80BC3294 */  lwz     r5, 0x3294(r28)
/* 07F760 80084D00 3B1E0008 */  addi    r24, r30, 8
/* 07F764 80084D04 556A083C */  slwi    r10, r11, 1
/* 07F768 80084D08 7C05B2AE */  lhax    r0, r5, r22
/* 07F76C 80084D0C 5528083C */  slwi    r8, r9, 1
/* 07F770 80084D10 54E6083C */  slwi    r6, r7, 1
/* 07F774 80084D14 B01D0004 */  sth     r0, 4(r29)
/* 07F778 80084D18 3AD80001 */  addi    r22, r24, 1
/* 07F77C 80084D1C 5700083C */  slwi    r0, r24, 1
/* 07F780 80084D20 80BC3294 */  lwz     r5, 0x3294(r28)
/* 07F784 80084D24 56D7083C */  slwi    r23, r22, 1
/* 07F788 80084D28 39380002 */  addi    r9, r24, 2
/* 07F78C 80084D2C 7CA5AAAE */  lhax    r5, r5, r21
/* 07F790 80084D30 5536083C */  slwi    r22, r9, 1
/* 07F794 80084D34 38F80003 */  addi    r7, r24, 3
/* 07F798 80084D38 B0BD0006 */  sth     r5, 6(r29)
/* 07F79C 80084D3C 54F5083C */  slwi    r21, r7, 1
/* 07F7A0 80084D40 38780004 */  addi    r3, r24, 4
/* 07F7A4 80084D44 80BC3294 */  lwz     r5, 0x3294(r28)
/* 07F7A8 80084D48 39780005 */  addi    r11, r24, 5
/* 07F7AC 80084D4C 39380006 */  addi    r9, r24, 6
/* 07F7B0 80084D50 7CA562AE */  lhax    r5, r5, r12
/* 07F7B4 80084D54 546C083C */  slwi    r12, r3, 1
/* 07F7B8 80084D58 38F80007 */  addi    r7, r24, 7
/* 07F7BC 80084D5C B0BD0008 */  sth     r5, 8(r29)
/* 07F7C0 80084D60 38600001 */  li      r3, 1
/* 07F7C4 80084D64 80BC3294 */  lwz     r5, 0x3294(r28)
/* 07F7C8 80084D68 7CA552AE */  lhax    r5, r5, r10
/* 07F7CC 80084D6C 556A083C */  slwi    r10, r11, 1
/* 07F7D0 80084D70 B0BD000A */  sth     r5, 0xa(r29)
/* 07F7D4 80084D74 80BC3294 */  lwz     r5, 0x3294(r28)
/* 07F7D8 80084D78 7CA542AE */  lhax    r5, r5, r8
/* 07F7DC 80084D7C 5528083C */  slwi    r8, r9, 1
/* 07F7E0 80084D80 B0BD000C */  sth     r5, 0xc(r29)
/* 07F7E4 80084D84 80BC3294 */  lwz     r5, 0x3294(r28)
/* 07F7E8 80084D88 7CA532AE */  lhax    r5, r5, r6
/* 07F7EC 80084D8C 54E6083C */  slwi    r6, r7, 1
/* 07F7F0 80084D90 B0BD000E */  sth     r5, 0xe(r29)
/* 07F7F4 80084D94 80BC3294 */  lwz     r5, 0x3294(r28)
/* 07F7F8 80084D98 7C0502AE */  lhax    r0, r5, r0
/* 07F7FC 80084D9C B01D0010 */  sth     r0, 0x10(r29)
/* 07F800 80084DA0 80BC3294 */  lwz     r5, 0x3294(r28)
/* 07F804 80084DA4 7C05BAAE */  lhax    r0, r5, r23
/* 07F808 80084DA8 B01D0012 */  sth     r0, 0x12(r29)
/* 07F80C 80084DAC 80BC3294 */  lwz     r5, 0x3294(r28)
/* 07F810 80084DB0 7C05B2AE */  lhax    r0, r5, r22
/* 07F814 80084DB4 B01D0014 */  sth     r0, 0x14(r29)
/* 07F818 80084DB8 80BC3294 */  lwz     r5, 0x3294(r28)
/* 07F81C 80084DBC 7CA5AAAE */  lhax    r5, r5, r21
/* 07F820 80084DC0 B0BD0016 */  sth     r5, 0x16(r29)
/* 07F824 80084DC4 80BC3294 */  lwz     r5, 0x3294(r28)
/* 07F828 80084DC8 7CA562AE */  lhax    r5, r5, r12
/* 07F82C 80084DCC B0BD0018 */  sth     r5, 0x18(r29)
/* 07F830 80084DD0 80BC3294 */  lwz     r5, 0x3294(r28)
/* 07F834 80084DD4 7CA552AE */  lhax    r5, r5, r10
/* 07F838 80084DD8 B0BD001A */  sth     r5, 0x1a(r29)
/* 07F83C 80084DDC 80BC3294 */  lwz     r5, 0x3294(r28)
/* 07F840 80084DE0 7CA542AE */  lhax    r5, r5, r8
/* 07F844 80084DE4 B0BD001C */  sth     r5, 0x1c(r29)
/* 07F848 80084DE8 80BC3294 */  lwz     r5, 0x3294(r28)
/* 07F84C 80084DEC 7CA532AE */  lhax    r5, r5, r6
/* 07F850 80084DF0 B0BD001E */  sth     r5, 0x1e(r29)
/* 07F854 80084DF4 48000410 */  b       lbl_80085204
lbl_80084DF8:
/* 07F858 80084DF8 381A000F */  addi    r0, r26, 0xf
/* 07F85C 80084DFC 5400E13E */  srwi    r0, r0, 4
/* 07F860 80084E00 39800000 */  li      r12, 0
/* 07F864 80084E04 7C0903A6 */  mtctr   r0
/* 07F868 80084E08 388C0000 */  addi    r4, r12, 0
/* 07F86C 80084E0C 408102A8 */  ble     lbl_800850B4
lbl_80084E10:
/* 07F870 80084E10 7CBF2214 */  add     r5, r31, r4
/* 07F874 80084E14 807C3294 */  lwz     r3, 0x3294(r28)
/* 07F878 80084E18 54A0083C */  slwi    r0, r5, 1
/* 07F87C 80084E1C 7C0300AE */  lbzx    r0, r3, r0
/* 07F880 80084E20 3AA50001 */  addi    r21, r5, 1
/* 07F884 80084E24 39750004 */  addi    r11, r21, 4
/* 07F888 80084E28 5400442E */  rlwinm  r0, r0, 8, 0x10, 0x17
/* 07F88C 80084E2C B0010060 */  sth     r0, 0x60(r1)
/* 07F890 80084E30 39050004 */  addi    r8, r5, 4
/* 07F894 80084E34 5500083C */  slwi    r0, r8, 1
/* 07F898 80084E38 80FC3294 */  lwz     r7, 0x3294(r28)
/* 07F89C 80084E3C 3B050002 */  addi    r24, r5, 2
/* 07F8A0 80084E40 38650003 */  addi    r3, r5, 3
/* 07F8A4 80084E44 7CE700AE */  lbzx    r7, r7, r0
/* 07F8A8 80084E48 39230004 */  addi    r9, r3, 4
/* 07F8AC 80084E4C 39080004 */  addi    r8, r8, 4
/* 07F8B0 80084E50 54E7442E */  rlwinm  r7, r7, 8, 0x10, 0x17
/* 07F8B4 80084E54 B0E10050 */  sth     r7, 0x50(r1)
/* 07F8B8 80084E58 38C50005 */  addi    r6, r5, 5
/* 07F8BC 80084E5C 38E60004 */  addi    r7, r6, 4
/* 07F8C0 80084E60 82DC3294 */  lwz     r22, 0x3294(r28)
/* 07F8C4 80084E64 56B5083C */  slwi    r21, r21, 1
/* 07F8C8 80084E68 39580004 */  addi    r10, r24, 4
/* 07F8CC 80084E6C 7EF6A8AE */  lbzx    r23, r22, r21
/* 07F8D0 80084E70 5576083C */  slwi    r22, r11, 1
/* 07F8D4 80084E74 5715083C */  slwi    r21, r24, 1
/* 07F8D8 80084E78 56EB442E */  rlwinm  r11, r23, 8, 0x10, 0x17
/* 07F8DC 80084E7C B1610062 */  sth     r11, 0x62(r1)
/* 07F8E0 80084E80 554B083C */  slwi    r11, r10, 1
/* 07F8E4 80084E84 546A083C */  slwi    r10, r3, 1
/* 07F8E8 80084E88 807C3294 */  lwz     r3, 0x3294(r28)
/* 07F8EC 80084E8C 5529083C */  slwi    r9, r9, 1
/* 07F8F0 80084E90 5508083C */  slwi    r8, r8, 1
/* 07F8F4 80084E94 7EC3B0AE */  lbzx    r22, r3, r22
/* 07F8F8 80084E98 54E3083C */  slwi    r3, r7, 1
/* 07F8FC 80084E9C 54C6083C */  slwi    r6, r6, 1
/* 07F900 80084EA0 56C7442E */  rlwinm  r7, r22, 8, 0x10, 0x17
/* 07F904 80084EA4 B0E10052 */  sth     r7, 0x52(r1)
/* 07F908 80084EA8 80FC3294 */  lwz     r7, 0x3294(r28)
/* 07F90C 80084EAC 7CE7A8AE */  lbzx    r7, r7, r21
/* 07F910 80084EB0 54E7442E */  rlwinm  r7, r7, 8, 0x10, 0x17
/* 07F914 80084EB4 B0E10064 */  sth     r7, 0x64(r1)
/* 07F918 80084EB8 80FC3294 */  lwz     r7, 0x3294(r28)
/* 07F91C 80084EBC 7CE758AE */  lbzx    r7, r7, r11
/* 07F920 80084EC0 54E7442E */  rlwinm  r7, r7, 8, 0x10, 0x17
/* 07F924 80084EC4 B0E10054 */  sth     r7, 0x54(r1)
/* 07F928 80084EC8 80FC3294 */  lwz     r7, 0x3294(r28)
/* 07F92C 80084ECC 7CE750AE */  lbzx    r7, r7, r10
/* 07F930 80084ED0 54E7442E */  rlwinm  r7, r7, 8, 0x10, 0x17
/* 07F934 80084ED4 B0E10066 */  sth     r7, 0x66(r1)
/* 07F938 80084ED8 80FC3294 */  lwz     r7, 0x3294(r28)
/* 07F93C 80084EDC 7CE748AE */  lbzx    r7, r7, r9
/* 07F940 80084EE0 54E7442E */  rlwinm  r7, r7, 8, 0x10, 0x17
/* 07F944 80084EE4 B0E10056 */  sth     r7, 0x56(r1)
/* 07F948 80084EE8 80FC3294 */  lwz     r7, 0x3294(r28)
/* 07F94C 80084EEC 7C0700AE */  lbzx    r0, r7, r0
/* 07F950 80084EF0 5400442E */  rlwinm  r0, r0, 8, 0x10, 0x17
/* 07F954 80084EF4 B0010068 */  sth     r0, 0x68(r1)
/* 07F958 80084EF8 80FC3294 */  lwz     r7, 0x3294(r28)
/* 07F95C 80084EFC 7C0740AE */  lbzx    r0, r7, r8
/* 07F960 80084F00 5400442E */  rlwinm  r0, r0, 8, 0x10, 0x17
/* 07F964 80084F04 B0010058 */  sth     r0, 0x58(r1)
/* 07F968 80084F08 80FC3294 */  lwz     r7, 0x3294(r28)
/* 07F96C 80084F0C 7C0730AE */  lbzx    r0, r7, r6
/* 07F970 80084F10 5400442E */  rlwinm  r0, r0, 8, 0x10, 0x17
/* 07F974 80084F14 B001006A */  sth     r0, 0x6a(r1)
/* 07F978 80084F18 80DC3294 */  lwz     r6, 0x3294(r28)
/* 07F97C 80084F1C 7C0618AE */  lbzx    r0, r6, r3
/* 07F980 80084F20 5400442E */  rlwinm  r0, r0, 8, 0x10, 0x17
/* 07F984 80084F24 B001005A */  sth     r0, 0x5a(r1)
/* 07F988 80084F28 38C50006 */  addi    r6, r5, 6
/* 07F98C 80084F2C 807C3294 */  lwz     r3, 0x3294(r28)
/* 07F990 80084F30 54C0083C */  slwi    r0, r6, 1
/* 07F994 80084F34 7C0300AE */  lbzx    r0, r3, r0
/* 07F998 80084F38 39050007 */  addi    r8, r5, 7
/* 07F99C 80084F3C 39480004 */  addi    r10, r8, 4
/* 07F9A0 80084F40 5400442E */  rlwinm  r0, r0, 8, 0x10, 0x17
/* 07F9A4 80084F44 B001006C */  sth     r0, 0x6c(r1)
/* 07F9A8 80084F48 38060004 */  addi    r0, r6, 4
/* 07F9AC 80084F4C 7C7E6214 */  add     r3, r30, r12
/* 07F9B0 80084F50 80DC3294 */  lwz     r6, 0x3294(r28)
/* 07F9B4 80084F54 5400083C */  slwi    r0, r0, 1
/* 07F9B8 80084F58 5465083C */  slwi    r5, r3, 1
/* 07F9BC 80084F5C 7CE600AE */  lbzx    r7, r6, r0
/* 07F9C0 80084F60 38030001 */  addi    r0, r3, 1
/* 07F9C4 80084F64 5406083C */  slwi    r6, r0, 1
/* 07F9C8 80084F68 54E0442E */  rlwinm  r0, r7, 8, 0x10, 0x17
/* 07F9CC 80084F6C B001005C */  sth     r0, 0x5c(r1)
/* 07F9D0 80084F70 38030002 */  addi    r0, r3, 2
/* 07F9D4 80084F74 5407083C */  slwi    r7, r0, 1
/* 07F9D8 80084F78 813C3294 */  lwz     r9, 0x3294(r28)
/* 07F9DC 80084F7C 5508083C */  slwi    r8, r8, 1
/* 07F9E0 80084F80 38030003 */  addi    r0, r3, 3
/* 07F9E4 80084F84 7D2940AE */  lbzx    r9, r9, r8
/* 07F9E8 80084F88 5408083C */  slwi    r8, r0, 1
/* 07F9EC 80084F8C 38030004 */  addi    r0, r3, 4
/* 07F9F0 80084F90 5529442E */  rlwinm  r9, r9, 8, 0x10, 0x17
/* 07F9F4 80084F94 B121006E */  sth     r9, 0x6e(r1)
/* 07F9F8 80084F98 5409083C */  slwi    r9, r0, 1
/* 07F9FC 80084F9C 554B083C */  slwi    r11, r10, 1
/* 07FA00 80084FA0 82BC3294 */  lwz     r21, 0x3294(r28)
/* 07FA04 80084FA4 38030005 */  addi    r0, r3, 5
/* 07FA08 80084FA8 540A083C */  slwi    r10, r0, 1
/* 07FA0C 80084FAC 7EB558AE */  lbzx    r21, r21, r11
/* 07FA10 80084FB0 38030006 */  addi    r0, r3, 6
/* 07FA14 80084FB4 540B083C */  slwi    r11, r0, 1
/* 07FA18 80084FB8 56A0442E */  rlwinm  r0, r21, 8, 0x10, 0x17
/* 07FA1C 80084FBC B001005E */  sth     r0, 0x5e(r1)
/* 07FA20 80084FC0 3AC50010 */  addi    r22, r5, 0x10
/* 07FA24 80084FC4 3B060010 */  addi    r24, r6, 0x10
/* 07FA28 80084FC8 A8010060 */  lha     r0, 0x60(r1)
/* 07FA2C 80084FCC 3B670010 */  addi    r27, r7, 0x10
/* 07FA30 80084FD0 82BC3294 */  lwz     r21, 0x3294(r28)
/* 07FA34 80084FD4 3B480010 */  addi    r26, r8, 0x10
/* 07FA38 80084FD8 3B290010 */  addi    r25, r9, 0x10
/* 07FA3C 80084FDC 7C152B2E */  sthx    r0, r21, r5
/* 07FA40 80084FE0 38AA0010 */  addi    r5, r10, 0x10
/* 07FA44 80084FE4 380B0010 */  addi    r0, r11, 0x10
/* 07FA48 80084FE8 AAA10050 */  lha     r21, 0x50(r1)
/* 07FA4C 80084FEC 82FC3294 */  lwz     r23, 0x3294(r28)
/* 07FA50 80084FF0 7EB7B32E */  sthx    r21, r23, r22
/* 07FA54 80084FF4 AAC10062 */  lha     r22, 0x62(r1)
/* 07FA58 80084FF8 82FC3294 */  lwz     r23, 0x3294(r28)
/* 07FA5C 80084FFC 7ED7332E */  sthx    r22, r23, r6
/* 07FA60 80085000 AAE10052 */  lha     r23, 0x52(r1)
/* 07FA64 80085004 80DC3294 */  lwz     r6, 0x3294(r28)
/* 07FA68 80085008 7EE6C32E */  sthx    r23, r6, r24
/* 07FA6C 8008500C AB010064 */  lha     r24, 0x64(r1)
/* 07FA70 80085010 80DC3294 */  lwz     r6, 0x3294(r28)
/* 07FA74 80085014 7F063B2E */  sthx    r24, r6, r7
/* 07FA78 80085018 A8E10054 */  lha     r7, 0x54(r1)
/* 07FA7C 8008501C 80DC3294 */  lwz     r6, 0x3294(r28)
/* 07FA80 80085020 7CE6DB2E */  sthx    r7, r6, r27
/* 07FA84 80085024 A8E10066 */  lha     r7, 0x66(r1)
/* 07FA88 80085028 80DC3294 */  lwz     r6, 0x3294(r28)
/* 07FA8C 8008502C 7CE6432E */  sthx    r7, r6, r8
/* 07FA90 80085030 A8E10056 */  lha     r7, 0x56(r1)
/* 07FA94 80085034 80DC3294 */  lwz     r6, 0x3294(r28)
/* 07FA98 80085038 7CE6D32E */  sthx    r7, r6, r26
/* 07FA9C 8008503C A8E10068 */  lha     r7, 0x68(r1)
/* 07FAA0 80085040 80DC3294 */  lwz     r6, 0x3294(r28)
/* 07FAA4 80085044 7CE64B2E */  sthx    r7, r6, r9
/* 07FAA8 80085048 A8E10058 */  lha     r7, 0x58(r1)
/* 07FAAC 8008504C 80DC3294 */  lwz     r6, 0x3294(r28)
/* 07FAB0 80085050 7CE6CB2E */  sthx    r7, r6, r25
/* 07FAB4 80085054 A8E1006A */  lha     r7, 0x6a(r1)
/* 07FAB8 80085058 80DC3294 */  lwz     r6, 0x3294(r28)
/* 07FABC 8008505C 7CE6532E */  sthx    r7, r6, r10
/* 07FAC0 80085060 A8E1005A */  lha     r7, 0x5a(r1)
/* 07FAC4 80085064 80DC3294 */  lwz     r6, 0x3294(r28)
/* 07FAC8 80085068 7CE62B2E */  sthx    r7, r6, r5
/* 07FACC 8008506C A8C1006C */  lha     r6, 0x6c(r1)
/* 07FAD0 80085070 80BC3294 */  lwz     r5, 0x3294(r28)
/* 07FAD4 80085074 7CC55B2E */  sthx    r6, r5, r11
/* 07FAD8 80085078 A8C1005C */  lha     r6, 0x5c(r1)
/* 07FADC 8008507C 80BC3294 */  lwz     r5, 0x3294(r28)
/* 07FAE0 80085080 7CC5032E */  sthx    r6, r5, r0
/* 07FAE4 80085084 38030007 */  addi    r0, r3, 7
/* 07FAE8 80085088 A8A1006E */  lha     r5, 0x6e(r1)
/* 07FAEC 8008508C 5406083C */  slwi    r6, r0, 1
/* 07FAF0 80085090 807C3294 */  lwz     r3, 0x3294(r28)
/* 07FAF4 80085094 38060010 */  addi    r0, r6, 0x10
/* 07FAF8 80085098 7CA3332E */  sthx    r5, r3, r6
/* 07FAFC 8008509C 38840008 */  addi    r4, r4, 8
/* 07FB00 800850A0 398C0010 */  addi    r12, r12, 0x10
/* 07FB04 800850A4 A8A1005E */  lha     r5, 0x5e(r1)
/* 07FB08 800850A8 807C3294 */  lwz     r3, 0x3294(r28)
/* 07FB0C 800850AC 7CA3032E */  sthx    r5, r3, r0
/* 07FB10 800850B0 4200FD60 */  bdnz    lbl_80084E10
lbl_800850B4:
/* 07FB14 800850B4 7C7E6214 */  add     r3, r30, r12
/* 07FB18 800850B8 80BC3294 */  lwz     r5, 0x3294(r28)
/* 07FB1C 800850BC 5460083C */  slwi    r0, r3, 1
/* 07FB20 800850C0 7C0502AE */  lhax    r0, r5, r0
/* 07FB24 800850C4 38E30001 */  addi    r7, r3, 1
/* 07FB28 800850C8 54FF083C */  slwi    r31, r7, 1
/* 07FB2C 800850CC B01D0000 */  sth     r0, 0(r29)
/* 07FB30 800850D0 3B630002 */  addi    r27, r3, 2
/* 07FB34 800850D4 3B430003 */  addi    r26, r3, 3
/* 07FB38 800850D8 80BC3294 */  lwz     r5, 0x3294(r28)
/* 07FB3C 800850DC 39630005 */  addi    r11, r3, 5
/* 07FB40 800850E0 39230006 */  addi    r9, r3, 6
/* 07FB44 800850E4 7C05FAAE */  lhax    r0, r5, r31
/* 07FB48 800850E8 38E30007 */  addi    r7, r3, 7
/* 07FB4C 800850EC 577B083C */  slwi    r27, r27, 1
/* 07FB50 800850F0 B01D0002 */  sth     r0, 2(r29)
/* 07FB54 800850F4 380C0008 */  addi    r0, r12, 8
/* 07FB58 800850F8 3B230004 */  addi    r25, r3, 4
/* 07FB5C 800850FC 80BC3294 */  lwz     r5, 0x3294(r28)
/* 07FB60 80085100 7C7E0214 */  add     r3, r30, r0
/* 07FB64 80085104 389E0008 */  addi    r4, r30, 8
/* 07FB68 80085108 7C05DAAE */  lhax    r0, r5, r27
/* 07FB6C 8008510C 7FC46214 */  add     r30, r4, r12
/* 07FB70 80085110 572C083C */  slwi    r12, r25, 1
/* 07FB74 80085114 B01D0004 */  sth     r0, 4(r29)
/* 07FB78 80085118 556A083C */  slwi    r10, r11, 1
/* 07FB7C 8008511C 5528083C */  slwi    r8, r9, 1
/* 07FB80 80085120 80BC3294 */  lwz     r5, 0x3294(r28)
/* 07FB84 80085124 575A083C */  slwi    r26, r26, 1
/* 07FB88 80085128 54E6083C */  slwi    r6, r7, 1
/* 07FB8C 8008512C 7C05D2AE */  lhax    r0, r5, r26
/* 07FB90 80085130 38FE0001 */  addi    r7, r30, 1
/* 07FB94 80085134 54FF083C */  slwi    r31, r7, 1
/* 07FB98 80085138 B01D0006 */  sth     r0, 6(r29)
/* 07FB9C 8008513C 5460083C */  slwi    r0, r3, 1
/* 07FBA0 80085140 3B7E0002 */  addi    r27, r30, 2
/* 07FBA4 80085144 80BC3294 */  lwz     r5, 0x3294(r28)
/* 07FBA8 80085148 3B5E0003 */  addi    r26, r30, 3
/* 07FBAC 8008514C 577B083C */  slwi    r27, r27, 1
/* 07FBB0 80085150 7CA562AE */  lhax    r5, r5, r12
/* 07FBB4 80085154 3B3E0004 */  addi    r25, r30, 4
/* 07FBB8 80085158 575A083C */  slwi    r26, r26, 1
/* 07FBBC 8008515C B0BD0008 */  sth     r5, 8(r29)
/* 07FBC0 80085160 572C083C */  slwi    r12, r25, 1
/* 07FBC4 80085164 397E0005 */  addi    r11, r30, 5
/* 07FBC8 80085168 80BC3294 */  lwz     r5, 0x3294(r28)
/* 07FBCC 8008516C 393E0006 */  addi    r9, r30, 6
/* 07FBD0 80085170 38FE0007 */  addi    r7, r30, 7
/* 07FBD4 80085174 7CA552AE */  lhax    r5, r5, r10
/* 07FBD8 80085178 556A083C */  slwi    r10, r11, 1
/* 07FBDC 8008517C 38600001 */  li      r3, 1
/* 07FBE0 80085180 B0BD000A */  sth     r5, 0xa(r29)
/* 07FBE4 80085184 80BC3294 */  lwz     r5, 0x3294(r28)
/* 07FBE8 80085188 7CA542AE */  lhax    r5, r5, r8
/* 07FBEC 8008518C 5528083C */  slwi    r8, r9, 1
/* 07FBF0 80085190 B0BD000C */  sth     r5, 0xc(r29)
/* 07FBF4 80085194 80BC3294 */  lwz     r5, 0x3294(r28)
/* 07FBF8 80085198 7CA532AE */  lhax    r5, r5, r6
/* 07FBFC 8008519C 54E6083C */  slwi    r6, r7, 1
/* 07FC00 800851A0 B0BD000E */  sth     r5, 0xe(r29)
/* 07FC04 800851A4 80BC3294 */  lwz     r5, 0x3294(r28)
/* 07FC08 800851A8 7C0502AE */  lhax    r0, r5, r0
/* 07FC0C 800851AC B01D0010 */  sth     r0, 0x10(r29)
/* 07FC10 800851B0 80BC3294 */  lwz     r5, 0x3294(r28)
/* 07FC14 800851B4 7C05FAAE */  lhax    r0, r5, r31
/* 07FC18 800851B8 B01D0012 */  sth     r0, 0x12(r29)
/* 07FC1C 800851BC 80BC3294 */  lwz     r5, 0x3294(r28)
/* 07FC20 800851C0 7C05DAAE */  lhax    r0, r5, r27
/* 07FC24 800851C4 B01D0014 */  sth     r0, 0x14(r29)
/* 07FC28 800851C8 80BC3294 */  lwz     r5, 0x3294(r28)
/* 07FC2C 800851CC 7C05D2AE */  lhax    r0, r5, r26
/* 07FC30 800851D0 B01D0016 */  sth     r0, 0x16(r29)
/* 07FC34 800851D4 80BC3294 */  lwz     r5, 0x3294(r28)
/* 07FC38 800851D8 7CA562AE */  lhax    r5, r5, r12
/* 07FC3C 800851DC B0BD0018 */  sth     r5, 0x18(r29)
/* 07FC40 800851E0 80BC3294 */  lwz     r5, 0x3294(r28)
/* 07FC44 800851E4 7CA552AE */  lhax    r5, r5, r10
/* 07FC48 800851E8 B0BD001A */  sth     r5, 0x1a(r29)
/* 07FC4C 800851EC 80BC3294 */  lwz     r5, 0x3294(r28)
/* 07FC50 800851F0 7CA542AE */  lhax    r5, r5, r8
/* 07FC54 800851F4 B0BD001C */  sth     r5, 0x1c(r29)
/* 07FC58 800851F8 80BC3294 */  lwz     r5, 0x3294(r28)
/* 07FC5C 800851FC 7CA532AE */  lhax    r5, r5, r6
/* 07FC60 80085200 B0BD001E */  sth     r5, 0x1e(r29)
lbl_80085204:
/* 07FC64 80085204 BAA10074 */  lmw     r21, 0x74(r1)
/* 07FC68 80085208 800100A4 */  lwz     r0, 0xa4(r1)
/* 07FC6C 8008520C 382100A0 */  addi    r1, r1, 0xa0
/* 07FC70 80085210 7C0803A6 */  mtlr    r0
/* 07FC74 80085214 4E800020 */  blr     
