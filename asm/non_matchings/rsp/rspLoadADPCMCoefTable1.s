glabel rspLoadADPCMCoefTable1
/* 085C5C 8008B1FC 9421FFC8 */  stwu    r1, -0x38(r1)
/* 085C60 8008B200 38000004 */  li      r0, 4
/* 085C64 8008B204 7C0903A6 */  mtctr   r0
/* 085C68 8008B208 38830000 */  addi    r4, r3, 0
/* 085C6C 8008B20C BF21001C */  stmw    r25, 0x1c(r1)
/* 085C70 8008B210 A0A338D6 */  lhz     r5, 0x38d6(r3)
/* 085C74 8008B214 7CA50E70 */  srawi   r5, r5, 1
/* 085C78 8008B218 7CA50194 */  addze   r5, r5
/* 085C7C 8008B21C 54A6083C */  slwi    r6, r5, 1
lbl_8008B220:
/* 085C80 8008B220 81033294 */  lwz     r8, 0x3294(r3)
/* 085C84 8008B224 38E50008 */  addi    r7, r5, 8
/* 085C88 8008B228 38050001 */  addi    r0, r5, 1
/* 085C8C 8008B22C 7D0832AE */  lhax    r8, r8, r6
/* 085C90 8008B230 3B450009 */  addi    r26, r5, 9
/* 085C94 8008B234 3B650002 */  addi    r27, r5, 2
/* 085C98 8008B238 B1043298 */  sth     r8, 0x3298(r4)
/* 085C9C 8008B23C 3B85000A */  addi    r28, r5, 0xa
/* 085CA0 8008B240 3BA50003 */  addi    r29, r5, 3
/* 085CA4 8008B244 81033294 */  lwz     r8, 0x3294(r3)
/* 085CA8 8008B248 54E7083C */  slwi    r7, r7, 1
/* 085CAC 8008B24C 3BC5000B */  addi    r30, r5, 0xb
/* 085CB0 8008B250 7CE83AAE */  lhax    r7, r8, r7
/* 085CB4 8008B254 3BE50004 */  addi    r31, r5, 4
/* 085CB8 8008B258 3985000C */  addi    r12, r5, 0xc
/* 085CBC 8008B25C B0E432A8 */  sth     r7, 0x32a8(r4)
/* 085CC0 8008B260 39650005 */  addi    r11, r5, 5
/* 085CC4 8008B264 3945000D */  addi    r10, r5, 0xd
/* 085CC8 8008B268 80E33294 */  lwz     r7, 0x3294(r3)
/* 085CCC 8008B26C 5400083C */  slwi    r0, r0, 1
/* 085CD0 8008B270 39250006 */  addi    r9, r5, 6
/* 085CD4 8008B274 7C0702AE */  lhax    r0, r7, r0
/* 085CD8 8008B278 3905000E */  addi    r8, r5, 0xe
/* 085CDC 8008B27C 38E50007 */  addi    r7, r5, 7
/* 085CE0 8008B280 B004329A */  sth     r0, 0x329a(r4)
/* 085CE4 8008B284 3805000F */  addi    r0, r5, 0xf
/* 085CE8 8008B288 575A083C */  slwi    r26, r26, 1
/* 085CEC 8008B28C 83233294 */  lwz     r25, 0x3294(r3)
/* 085CF0 8008B290 577B083C */  slwi    r27, r27, 1
/* 085CF4 8008B294 579C083C */  slwi    r28, r28, 1
/* 085CF8 8008B298 7F59D2AE */  lhax    r26, r25, r26
/* 085CFC 8008B29C 57BD083C */  slwi    r29, r29, 1
/* 085D00 8008B2A0 57DE083C */  slwi    r30, r30, 1
/* 085D04 8008B2A4 B34432AA */  sth     r26, 0x32aa(r4)
/* 085D08 8008B2A8 57FF083C */  slwi    r31, r31, 1
/* 085D0C 8008B2AC 558C083C */  slwi    r12, r12, 1
/* 085D10 8008B2B0 83433294 */  lwz     r26, 0x3294(r3)
/* 085D14 8008B2B4 556B083C */  slwi    r11, r11, 1
/* 085D18 8008B2B8 554A083C */  slwi    r10, r10, 1
/* 085D1C 8008B2BC 7F7ADAAE */  lhax    r27, r26, r27
/* 085D20 8008B2C0 5529083C */  slwi    r9, r9, 1
/* 085D24 8008B2C4 5508083C */  slwi    r8, r8, 1
/* 085D28 8008B2C8 B364329C */  sth     r27, 0x329c(r4)
/* 085D2C 8008B2CC 54E7083C */  slwi    r7, r7, 1
/* 085D30 8008B2D0 5400083C */  slwi    r0, r0, 1
/* 085D34 8008B2D4 83633294 */  lwz     r27, 0x3294(r3)
/* 085D38 8008B2D8 38A50010 */  addi    r5, r5, 0x10
/* 085D3C 8008B2DC 38C60020 */  addi    r6, r6, 0x20
/* 085D40 8008B2E0 7F9BE2AE */  lhax    r28, r27, r28
/* 085D44 8008B2E4 B38432AC */  sth     r28, 0x32ac(r4)
/* 085D48 8008B2E8 83833294 */  lwz     r28, 0x3294(r3)
/* 085D4C 8008B2EC 7FBCEAAE */  lhax    r29, r28, r29
/* 085D50 8008B2F0 B3A4329E */  sth     r29, 0x329e(r4)
/* 085D54 8008B2F4 83A33294 */  lwz     r29, 0x3294(r3)
/* 085D58 8008B2F8 7FDDF2AE */  lhax    r30, r29, r30
/* 085D5C 8008B2FC B3C432AE */  sth     r30, 0x32ae(r4)
/* 085D60 8008B300 83C33294 */  lwz     r30, 0x3294(r3)
/* 085D64 8008B304 7FFEFAAE */  lhax    r31, r30, r31
/* 085D68 8008B308 B3E432A0 */  sth     r31, 0x32a0(r4)
/* 085D6C 8008B30C 83E33294 */  lwz     r31, 0x3294(r3)
/* 085D70 8008B310 7D9F62AE */  lhax    r12, r31, r12
/* 085D74 8008B314 B18432B0 */  sth     r12, 0x32b0(r4)
/* 085D78 8008B318 81833294 */  lwz     r12, 0x3294(r3)
/* 085D7C 8008B31C 7D6C5AAE */  lhax    r11, r12, r11
/* 085D80 8008B320 B16432A2 */  sth     r11, 0x32a2(r4)
/* 085D84 8008B324 81633294 */  lwz     r11, 0x3294(r3)
/* 085D88 8008B328 7D4B52AE */  lhax    r10, r11, r10
/* 085D8C 8008B32C B14432B2 */  sth     r10, 0x32b2(r4)
/* 085D90 8008B330 81433294 */  lwz     r10, 0x3294(r3)
/* 085D94 8008B334 7D2A4AAE */  lhax    r9, r10, r9
/* 085D98 8008B338 B12432A4 */  sth     r9, 0x32a4(r4)
/* 085D9C 8008B33C 81233294 */  lwz     r9, 0x3294(r3)
/* 085DA0 8008B340 7D0942AE */  lhax    r8, r9, r8
/* 085DA4 8008B344 B10432B4 */  sth     r8, 0x32b4(r4)
/* 085DA8 8008B348 81033294 */  lwz     r8, 0x3294(r3)
/* 085DAC 8008B34C 7CE83AAE */  lhax    r7, r8, r7
/* 085DB0 8008B350 B0E432A6 */  sth     r7, 0x32a6(r4)
/* 085DB4 8008B354 80E33294 */  lwz     r7, 0x3294(r3)
/* 085DB8 8008B358 7C0702AE */  lhax    r0, r7, r0
/* 085DBC 8008B35C B00432B6 */  sth     r0, 0x32b6(r4)
/* 085DC0 8008B360 38840020 */  addi    r4, r4, 0x20
/* 085DC4 8008B364 4200FEBC */  bdnz    lbl_8008B220
/* 085DC8 8008B368 BB21001C */  lmw     r25, 0x1c(r1)
/* 085DCC 8008B36C 38600001 */  li      r3, 1
/* 085DD0 8008B370 38210038 */  addi    r1, r1, 0x38
/* 085DD4 8008B374 4E800020 */  blr     