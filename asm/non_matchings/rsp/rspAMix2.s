glabel rspAMix2
/* 0802A8 80085848 54A0A536 */  rlwinm  r0, r5, 0x14, 0x14, 0x1b
/* 0802AC 8008584C 80C33294 */  lwz     r6, 0x3294(r3)
/* 0802B0 80085850 7C070E70 */  srawi   r7, r0, 1
/* 0802B4 80085854 5480843E */  srwi    r0, r4, 0x10
/* 0802B8 80085858 7CE903A6 */  mtctr   r7
/* 0802BC 8008585C 7C000E70 */  srawi   r0, r0, 1
/* 0802C0 80085860 5400083C */  slwi    r0, r0, 1
/* 0802C4 80085864 7D060214 */  add     r8, r6, r0
/* 0802C8 80085868 5483043C */  rlwinm  r3, r4, 0, 0x10, 0x1e
/* 0802CC 8008586C 54A0043E */  clrlwi  r0, r5, 0x10
/* 0802D0 80085870 28070000 */  cmplwi  r7, 0
/* 0802D4 80085874 38880000 */  addi    r4, r8, 0
/* 0802D8 80085878 7C661A14 */  add     r3, r6, r3
/* 0802DC 8008587C 7C050734 */  extsh   r5, r0
/* 0802E0 80085880 40810048 */  ble     lbl_800858C8
lbl_80085884:
/* 0802E4 80085884 A8040000 */  lha     r0, 0(r4)
/* 0802E8 80085888 A8C30000 */  lha     r6, 0(r3)
/* 0802EC 8008588C 7C0029D6 */  mullw   r0, r0, r5
/* 0802F0 80085890 7C007E70 */  srawi   r0, r0, 0xf
/* 0802F4 80085894 7CC60214 */  add     r6, r6, r0
/* 0802F8 80085898 2C067FFF */  cmpwi   r6, 0x7fff
/* 0802FC 8008589C 4081000C */  ble     lbl_800858A8
/* 080300 800858A0 38C07FFF */  li      r6, 0x7fff
/* 080304 800858A4 48000010 */  b       lbl_800858B4
lbl_800858A8:
/* 080308 800858A8 2C068001 */  cmpwi   r6, -32767
/* 08030C 800858AC 40800008 */  bge     lbl_800858B4
/* 080310 800858B0 38C08001 */  li      r6, -32767
lbl_800858B4:
/* 080314 800858B4 7CC00734 */  extsh   r0, r6
/* 080318 800858B8 B0030000 */  sth     r0, 0(r3)
/* 08031C 800858BC 38630002 */  addi    r3, r3, 2
/* 080320 800858C0 38840002 */  addi    r4, r4, 2
/* 080324 800858C4 4200FFC0 */  bdnz    lbl_80085884
lbl_800858C8:
/* 080328 800858C8 38600001 */  li      r3, 1
/* 08032C 800858CC 4E800020 */  blr     
