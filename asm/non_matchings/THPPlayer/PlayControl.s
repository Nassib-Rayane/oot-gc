glabel PlayControl
/* 00AD50 800102F0 7C0802A6 */  mflr    r0
/* 00AD54 800102F4 3C808010 */  lis     r4, WorkBuffer@ha
/* 00AD58 800102F8 90010004 */  stw     r0, 4(r1)
/* 00AD5C 800102FC 9421FFE0 */  stwu    r1, -0x20(r1)
/* 00AD60 80010300 93E1001C */  stw     r31, 0x1c(r1)
/* 00AD64 80010304 3BE496E0 */  addi    r31, r4, WorkBuffer@l
/* 00AD68 80010308 93C10018 */  stw     r30, 0x18(r1)
/* 00AD6C 8001030C 93A10014 */  stw     r29, 0x14(r1)
/* 00AD70 80010310 93810010 */  stw     r28, 0x10(r1)
/* 00AD74 80010314 818D8940 */  lwz     r12, OldVIPostCallback@sda21(r13)
/* 00AD78 80010318 280C0000 */  cmplwi  r12, 0
/* 00AD7C 8001031C 4182000C */  beq     lbl_80010328
/* 00AD80 80010320 7D8803A6 */  mtlr    r12
/* 00AD84 80010324 4E800021 */  blrl    
lbl_80010328:
/* 00AD88 80010328 801F0640 */  lwz     r0, 0x640(r31)
/* 00AD8C 8001032C 3BA0FFFF */  li      r29, -1
/* 00AD90 80010330 2C000000 */  cmpwi   r0, 0
/* 00AD94 80010334 41820238 */  beq     lbl_8001056C
/* 00AD98 80010338 3BDF0644 */  addi    r30, r31, 0x644
/* 00AD9C 8001033C 881F0644 */  lbz     r0, 0x644(r31)
/* 00ADA0 80010340 28000002 */  cmplwi  r0, 2
/* 00ADA4 80010344 40820228 */  bne     lbl_8001056C
/* 00ADA8 80010348 801F0648 */  lwz     r0, 0x648(r31)
/* 00ADAC 8001034C 2C000000 */  cmpwi   r0, 0
/* 00ADB0 80010350 40820010 */  bne     lbl_80010360
/* 00ADB4 80010354 801F064C */  lwz     r0, 0x64c(r31)
/* 00ADB8 80010358 2C000000 */  cmpwi   r0, 0
/* 00ADBC 8001035C 41820014 */  beq     lbl_80010370
lbl_80010360:
/* 00ADC0 80010360 38000005 */  li      r0, 5
/* 00ADC4 80010364 981F0645 */  stb     r0, 0x645(r31)
/* 00ADC8 80010368 981E0000 */  stb     r0, 0(r30)
/* 00ADCC 8001036C 48000200 */  b       lbl_8001056C
lbl_80010370:
/* 00ADD0 80010370 801F066C */  lwz     r0, 0x66c(r31)
/* 00ADD4 80010374 38A00001 */  li      r5, 1
/* 00ADD8 80010378 807F0668 */  lwz     r3, 0x668(r31)
/* 00ADDC 8001037C 38800000 */  li      r4, 0
/* 00ADE0 80010380 7C002814 */  addc    r0, r0, r5
/* 00ADE4 80010384 901F066C */  stw     r0, 0x66c(r31)
/* 00ADE8 80010388 7C032114 */  adde    r0, r3, r4
/* 00ADEC 8001038C 3B9F0668 */  addi    r28, r31, 0x668
/* 00ADF0 80010390 901F0668 */  stw     r0, 0x668(r31)
/* 00ADF4 80010394 80DF0668 */  lwz     r6, 0x668(r31)
/* 00ADF8 80010398 80FF066C */  lwz     r7, 0x66c(r31)
/* 00ADFC 8001039C 7CC02278 */  xor     r0, r6, r4
/* 00AE00 800103A0 7CE32278 */  xor     r3, r7, r4
/* 00AE04 800103A4 7C600379 */  or.     r0, r3, r0
/* 00AE08 800103A8 40820088 */  bne     lbl_80010430
/* 00AE0C 800103AC 480001E1 */  bl      ProperTimingForStart
/* 00AE10 800103B0 2C030000 */  cmpwi   r3, 0
/* 00AE14 800103B4 4182006C */  beq     lbl_80010420
/* 00AE18 800103B8 881F0647 */  lbz     r0, 0x647(r31)
/* 00AE1C 800103BC 28000000 */  cmplwi  r0, 0
/* 00AE20 800103C0 41820050 */  beq     lbl_80010410
/* 00AE24 800103C4 3B9F0690 */  addi    r28, r31, 0x690
/* 00AE28 800103C8 807F0694 */  lwz     r3, 0x694(r31)
/* 00AE2C 800103CC 801F0690 */  lwz     r0, 0x690(r31)
/* 00AE30 800103D0 7C030050 */  subf    r0, r3, r0
/* 00AE34 800103D4 2C000001 */  cmpwi   r0, 1
/* 00AE38 800103D8 4181002C */  bgt     lbl_80010404
/* 00AE3C 800103DC 38600000 */  li      r3, 0
/* 00AE40 800103E0 48002FED */  bl      PopDecodedTextureSet
/* 00AE44 800103E4 809F0678 */  lwz     r4, 0x678(r31)
/* 00AE48 800103E8 3BA30000 */  addi    r29, r3, 0
/* 00AE4C 800103EC 3804FFFF */  addi    r0, r4, -1
/* 00AE50 800103F0 901F0678 */  stw     r0, 0x678(r31)
/* 00AE54 800103F4 807C0000 */  lwz     r3, 0(r28)
/* 00AE58 800103F8 38030001 */  addi    r0, r3, 1
/* 00AE5C 800103FC 901C0000 */  stw     r0, 0(r28)
/* 00AE60 80010400 480000AC */  b       lbl_800104AC
lbl_80010404:
/* 00AE64 80010404 38000002 */  li      r0, 2
/* 00AE68 80010408 981F0645 */  stb     r0, 0x645(r31)
/* 00AE6C 8001040C 480000A0 */  b       lbl_800104AC
lbl_80010410:
/* 00AE70 80010410 38600000 */  li      r3, 0
/* 00AE74 80010414 48002FB9 */  bl      PopDecodedTextureSet
/* 00AE78 80010418 7C7D1B78 */  mr      r29, r3
/* 00AE7C 8001041C 48000090 */  b       lbl_800104AC
lbl_80010420:
/* 00AE80 80010420 3800FFFF */  li      r0, -1
/* 00AE84 80010424 901C0004 */  stw     r0, 4(r28)
/* 00AE88 80010428 901C0000 */  stw     r0, 0(r28)
/* 00AE8C 8001042C 48000080 */  b       lbl_800104AC
lbl_80010430:
/* 00AE90 80010430 7CE32A78 */  xor     r3, r7, r5
/* 00AE94 80010434 7CC02278 */  xor     r0, r6, r4
/* 00AE98 80010438 7C600379 */  or.     r0, r3, r0
/* 00AE9C 8001043C 4082000C */  bne     lbl_80010448
/* 00AEA0 80010440 38000002 */  li      r0, 2
/* 00AEA4 80010444 981F0645 */  stb     r0, 0x645(r31)
lbl_80010448:
/* 00AEA8 80010448 480001B1 */  bl      ProperTimingForGettingNextFrame
/* 00AEAC 8001044C 2C030000 */  cmpwi   r3, 0
/* 00AEB0 80010450 4182005C */  beq     lbl_800104AC
/* 00AEB4 80010454 881F0647 */  lbz     r0, 0x647(r31)
/* 00AEB8 80010458 28000000 */  cmplwi  r0, 0
/* 00AEBC 8001045C 41820044 */  beq     lbl_800104A0
/* 00AEC0 80010460 3B9F0690 */  addi    r28, r31, 0x690
/* 00AEC4 80010464 807F0694 */  lwz     r3, 0x694(r31)
/* 00AEC8 80010468 801F0690 */  lwz     r0, 0x690(r31)
/* 00AECC 8001046C 7C030050 */  subf    r0, r3, r0
/* 00AED0 80010470 2C000001 */  cmpwi   r0, 1
/* 00AED4 80010474 41810038 */  bgt     lbl_800104AC
/* 00AED8 80010478 38600000 */  li      r3, 0
/* 00AEDC 8001047C 48002F51 */  bl      PopDecodedTextureSet
/* 00AEE0 80010480 809F0678 */  lwz     r4, 0x678(r31)
/* 00AEE4 80010484 3BA30000 */  addi    r29, r3, 0
/* 00AEE8 80010488 3804FFFF */  addi    r0, r4, -1
/* 00AEEC 8001048C 901F0678 */  stw     r0, 0x678(r31)
/* 00AEF0 80010490 807C0000 */  lwz     r3, 0(r28)
/* 00AEF4 80010494 38030001 */  addi    r0, r3, 1
/* 00AEF8 80010498 901C0000 */  stw     r0, 0(r28)
/* 00AEFC 8001049C 48000010 */  b       lbl_800104AC
lbl_800104A0:
/* 00AF00 800104A0 38600000 */  li      r3, 0
/* 00AF04 800104A4 48002F29 */  bl      PopDecodedTextureSet
/* 00AF08 800104A8 7C7D1B78 */  mr      r29, r3
lbl_800104AC:
/* 00AF0C 800104AC 281D0000 */  cmplwi  r29, 0
/* 00AF10 800104B0 41820028 */  beq     lbl_800104D8
/* 00AF14 800104B4 3C1D0001 */  addis   r0, r29, 1
/* 00AF18 800104B8 2800FFFF */  cmplwi  r0, 0xffff
/* 00AF1C 800104BC 4182001C */  beq     lbl_800104D8
/* 00AF20 800104C0 3B9F0698 */  addi    r28, r31, 0x698
/* 00AF24 800104C4 807F0698 */  lwz     r3, 0x698(r31)
/* 00AF28 800104C8 28030000 */  cmplwi  r3, 0
/* 00AF2C 800104CC 41820008 */  beq     lbl_800104D4
/* 00AF30 800104D0 48000319 */  bl      PushUsedTextureSet
lbl_800104D4:
/* 00AF34 800104D4 93BC0000 */  stw     r29, 0(r28)
lbl_800104D8:
/* 00AF38 800104D8 881F0646 */  lbz     r0, 0x646(r31)
/* 00AF3C 800104DC 540007FF */  clrlwi. r0, r0, 0x1f
/* 00AF40 800104E0 4082008C */  bne     lbl_8001056C
/* 00AF44 800104E4 881F0647 */  lbz     r0, 0x647(r31)
/* 00AF48 800104E8 28000000 */  cmplwi  r0, 0
/* 00AF4C 800104EC 41820038 */  beq     lbl_80010524
/* 00AF50 800104F0 809F0694 */  lwz     r4, 0x694(r31)
/* 00AF54 800104F4 807F0660 */  lwz     r3, 0x660(r31)
/* 00AF58 800104F8 801F05F0 */  lwz     r0, 0x5f0(r31)
/* 00AF5C 800104FC 7C641A14 */  add     r3, r4, r3
/* 00AF60 80010500 7C030040 */  cmplw   r3, r0
/* 00AF64 80010504 40820068 */  bne     lbl_8001056C
/* 00AF68 80010508 801F069C */  lwz     r0, 0x69c(r31)
/* 00AF6C 8001050C 28000000 */  cmplwi  r0, 0
/* 00AF70 80010510 4082005C */  bne     lbl_8001056C
/* 00AF74 80010514 38000003 */  li      r0, 3
/* 00AF78 80010518 981F0645 */  stb     r0, 0x645(r31)
/* 00AF7C 8001051C 981E0000 */  stb     r0, 0(r30)
/* 00AF80 80010520 4800004C */  b       lbl_8001056C
lbl_80010524:
/* 00AF84 80010524 807F0698 */  lwz     r3, 0x698(r31)
/* 00AF88 80010528 28030000 */  cmplwi  r3, 0
/* 00AF8C 8001052C 41820014 */  beq     lbl_80010540
/* 00AF90 80010530 8063000C */  lwz     r3, 0xc(r3)
/* 00AF94 80010534 801F0660 */  lwz     r0, 0x660(r31)
/* 00AF98 80010538 7C830214 */  add     r4, r3, r0
/* 00AF9C 8001053C 4800000C */  b       lbl_80010548
lbl_80010540:
/* 00AFA0 80010540 807F0660 */  lwz     r3, 0x660(r31)
/* 00AFA4 80010544 3883FFFF */  addi    r4, r3, -1
lbl_80010548:
/* 00AFA8 80010548 807F05F0 */  lwz     r3, 0x5f0(r31)
/* 00AFAC 8001054C 3803FFFF */  addi    r0, r3, -1
/* 00AFB0 80010550 7C040040 */  cmplw   r4, r0
/* 00AFB4 80010554 40820018 */  bne     lbl_8001056C
/* 00AFB8 80010558 281D0000 */  cmplwi  r29, 0
/* 00AFBC 8001055C 40820010 */  bne     lbl_8001056C
/* 00AFC0 80010560 38000003 */  li      r0, 3
/* 00AFC4 80010564 981F0645 */  stb     r0, 0x645(r31)
/* 00AFC8 80010568 981E0000 */  stb     r0, 0(r30)
lbl_8001056C:
/* 00AFCC 8001056C 80010024 */  lwz     r0, 0x24(r1)
/* 00AFD0 80010570 83E1001C */  lwz     r31, 0x1c(r1)
/* 00AFD4 80010574 83C10018 */  lwz     r30, 0x18(r1)
/* 00AFD8 80010578 7C0803A6 */  mtlr    r0
/* 00AFDC 8001057C 83A10014 */  lwz     r29, 0x14(r1)
/* 00AFE0 80010580 83810010 */  lwz     r28, 0x10(r1)
/* 00AFE4 80010584 38210020 */  addi    r1, r1, 0x20
/* 00AFE8 80010588 4E800020 */  blr     
