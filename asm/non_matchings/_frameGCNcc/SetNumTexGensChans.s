glabel SetNumTexGensChans
/* 092C40 800981E0 7C0802A6 */  mflr    r0
/* 092C44 800981E4 2C040000 */  cmpwi   r4, 0
/* 092C48 800981E8 90010004 */  stw     r0, 4(r1)
/* 092C4C 800981EC 7C8903A6 */  mtctr   r4
/* 092C50 800981F0 39200000 */  li      r9, 0
/* 092C54 800981F4 9421FFE8 */  stwu    r1, -0x18(r1)
/* 092C58 800981F8 39000000 */  li      r8, 0
/* 092C5C 800981FC 40810184 */  ble     lbl_80098380
lbl_80098200:
/* 092C60 80098200 2C080000 */  cmpwi   r8, 0
/* 092C64 80098204 40820010 */  bne     lbl_80098214
/* 092C68 80098208 80A300A8 */  lwz     r5, 0xa8(r3)
/* 092C6C 8009820C 80E300B0 */  lwz     r7, 0xb0(r3)
/* 092C70 80098210 4800000C */  b       lbl_8009821C
lbl_80098214:
/* 092C74 80098214 80A300AC */  lwz     r5, 0xac(r3)
/* 092C78 80098218 80E300B4 */  lwz     r7, 0xb4(r3)
lbl_8009821C:
/* 092C7C 8009821C 98A10014 */  stb     r5, 0x14(r1)
/* 092C80 80098220 54A4C63E */  rlwinm  r4, r5, 0x18, 0x18, 0x1f
/* 092C84 80098224 54E0C63E */  rlwinm  r0, r7, 0x18, 0x18, 0x1f
/* 092C88 80098228 98E10010 */  stb     r7, 0x10(r1)
/* 092C8C 8009822C 54A6863E */  rlwinm  r6, r5, 0x10, 0x18, 0x1f
/* 092C90 80098230 54A5463E */  srwi    r5, r5, 0x18
/* 092C94 80098234 98810015 */  stb     r4, 0x15(r1)
/* 092C98 80098238 54E4863E */  rlwinm  r4, r7, 0x10, 0x18, 0x1f
/* 092C9C 8009823C 98010011 */  stb     r0, 0x11(r1)
/* 092CA0 80098240 54E0463E */  srwi    r0, r7, 0x18
/* 092CA4 80098244 38E10014 */  addi    r7, r1, 0x14
/* 092CA8 80098248 98C10016 */  stb     r6, 0x16(r1)
/* 092CAC 8009824C 38C10010 */  addi    r6, r1, 0x10
/* 092CB0 80098250 98810012 */  stb     r4, 0x12(r1)
/* 092CB4 80098254 98A10017 */  stb     r5, 0x17(r1)
/* 092CB8 80098258 98010013 */  stb     r0, 0x13(r1)
/* 092CBC 8009825C 88010014 */  lbz     r0, 0x14(r1)
/* 092CC0 80098260 28000001 */  cmplwi  r0, 1
/* 092CC4 80098264 41820010 */  beq     lbl_80098274
/* 092CC8 80098268 88810010 */  lbz     r4, 0x10(r1)
/* 092CCC 8009826C 28040001 */  cmplwi  r4, 1
/* 092CD0 80098270 40820014 */  bne     lbl_80098284
lbl_80098274:
/* 092CD4 80098274 2C090000 */  cmpwi   r9, 0
/* 092CD8 80098278 41810028 */  bgt     lbl_800982A0
/* 092CDC 8009827C 39200001 */  li      r9, 1
/* 092CE0 80098280 48000020 */  b       lbl_800982A0
lbl_80098284:
/* 092CE4 80098284 28000002 */  cmplwi  r0, 2
/* 092CE8 80098288 4182000C */  beq     lbl_80098294
/* 092CEC 8009828C 28040002 */  cmplwi  r4, 2
/* 092CF0 80098290 40820010 */  bne     lbl_800982A0
lbl_80098294:
/* 092CF4 80098294 2C090001 */  cmpwi   r9, 1
/* 092CF8 80098298 41810008 */  bgt     lbl_800982A0
/* 092CFC 8009829C 39200002 */  li      r9, 2
lbl_800982A0:
/* 092D00 800982A0 8C070001 */  lbzu    r0, 1(r7)
/* 092D04 800982A4 38C60001 */  addi    r6, r6, 1
/* 092D08 800982A8 28000001 */  cmplwi  r0, 1
/* 092D0C 800982AC 41820010 */  beq     lbl_800982BC
/* 092D10 800982B0 88860000 */  lbz     r4, 0(r6)
/* 092D14 800982B4 28040001 */  cmplwi  r4, 1
/* 092D18 800982B8 40820014 */  bne     lbl_800982CC
lbl_800982BC:
/* 092D1C 800982BC 2C090000 */  cmpwi   r9, 0
/* 092D20 800982C0 41810028 */  bgt     lbl_800982E8
/* 092D24 800982C4 39200001 */  li      r9, 1
/* 092D28 800982C8 48000020 */  b       lbl_800982E8
lbl_800982CC:
/* 092D2C 800982CC 28000002 */  cmplwi  r0, 2
/* 092D30 800982D0 4182000C */  beq     lbl_800982DC
/* 092D34 800982D4 28040002 */  cmplwi  r4, 2
/* 092D38 800982D8 40820010 */  bne     lbl_800982E8
lbl_800982DC:
/* 092D3C 800982DC 2C090001 */  cmpwi   r9, 1
/* 092D40 800982E0 41810008 */  bgt     lbl_800982E8
/* 092D44 800982E4 39200002 */  li      r9, 2
lbl_800982E8:
/* 092D48 800982E8 8C070001 */  lbzu    r0, 1(r7)
/* 092D4C 800982EC 38C60001 */  addi    r6, r6, 1
/* 092D50 800982F0 28000001 */  cmplwi  r0, 1
/* 092D54 800982F4 41820010 */  beq     lbl_80098304
/* 092D58 800982F8 88860000 */  lbz     r4, 0(r6)
/* 092D5C 800982FC 28040001 */  cmplwi  r4, 1
/* 092D60 80098300 40820014 */  bne     lbl_80098314
lbl_80098304:
/* 092D64 80098304 2C090000 */  cmpwi   r9, 0
/* 092D68 80098308 41810028 */  bgt     lbl_80098330
/* 092D6C 8009830C 39200001 */  li      r9, 1
/* 092D70 80098310 48000020 */  b       lbl_80098330
lbl_80098314:
/* 092D74 80098314 28000002 */  cmplwi  r0, 2
/* 092D78 80098318 4182000C */  beq     lbl_80098324
/* 092D7C 8009831C 28040002 */  cmplwi  r4, 2
/* 092D80 80098320 40820010 */  bne     lbl_80098330
lbl_80098324:
/* 092D84 80098324 2C090001 */  cmpwi   r9, 1
/* 092D88 80098328 41810008 */  bgt     lbl_80098330
/* 092D8C 8009832C 39200002 */  li      r9, 2
lbl_80098330:
/* 092D90 80098330 88070001 */  lbz     r0, 1(r7)
/* 092D94 80098334 38C60001 */  addi    r6, r6, 1
/* 092D98 80098338 28000001 */  cmplwi  r0, 1
/* 092D9C 8009833C 41820010 */  beq     lbl_8009834C
/* 092DA0 80098340 88860000 */  lbz     r4, 0(r6)
/* 092DA4 80098344 28040001 */  cmplwi  r4, 1
/* 092DA8 80098348 40820014 */  bne     lbl_8009835C
lbl_8009834C:
/* 092DAC 8009834C 2C090000 */  cmpwi   r9, 0
/* 092DB0 80098350 41810028 */  bgt     lbl_80098378
/* 092DB4 80098354 39200001 */  li      r9, 1
/* 092DB8 80098358 48000020 */  b       lbl_80098378
lbl_8009835C:
/* 092DBC 8009835C 28000002 */  cmplwi  r0, 2
/* 092DC0 80098360 4182000C */  beq     lbl_8009836C
/* 092DC4 80098364 28040002 */  cmplwi  r4, 2
/* 092DC8 80098368 40820010 */  bne     lbl_80098378
lbl_8009836C:
/* 092DCC 8009836C 2C090001 */  cmpwi   r9, 1
/* 092DD0 80098370 41810008 */  bgt     lbl_80098378
/* 092DD4 80098374 39200002 */  li      r9, 2
lbl_80098378:
/* 092DD8 80098378 39080001 */  addi    r8, r8, 1
/* 092DDC 8009837C 4200FE84 */  bdnz    lbl_80098200
lbl_80098380:
/* 092DE0 80098380 5523063E */  clrlwi  r3, r9, 0x18
/* 092DE4 80098384 48012731 */  bl      GXSetNumTexGens
/* 092DE8 80098388 38600001 */  li      r3, 1
/* 092DEC 8009838C 48014251 */  bl      GXSetNumChans
/* 092DF0 80098390 8001001C */  lwz     r0, 0x1c(r1)
/* 092DF4 80098394 38210018 */  addi    r1, r1, 0x18
/* 092DF8 80098398 7C0803A6 */  mtlr    r0
/* 092DFC 8009839C 4E800020 */  blr     
