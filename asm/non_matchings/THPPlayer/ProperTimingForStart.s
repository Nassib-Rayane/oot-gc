glabel ProperTimingForStart
/* 00AFEC 8001058C 7C0802A6 */  mflr    r0
/* 00AFF0 80010590 3C608010 */  lis     r3, ActivePlayer@ha
/* 00AFF4 80010594 90010004 */  stw     r0, 4(r1)
/* 00AFF8 80010598 38639C80 */  addi    r3, r3, ActivePlayer@l
/* 00AFFC 8001059C 9421FFF8 */  stwu    r1, -8(r1)
/* 00B000 800105A0 80630088 */  lwz     r3, 0x88(r3)
/* 00B004 800105A4 546007FF */  clrlwi. r0, r3, 0x1f
/* 00B008 800105A8 41820018 */  beq     lbl_800105C0
/* 00B00C 800105AC 4809731D */  bl      VIGetNextField
/* 00B010 800105B0 28030000 */  cmplwi  r3, 0
/* 00B014 800105B4 40820030 */  bne     lbl_800105E4
/* 00B018 800105B8 38600001 */  li      r3, 1
/* 00B01C 800105BC 4800002C */  b       lbl_800105E8
lbl_800105C0:
/* 00B020 800105C0 546007BD */  rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 00B024 800105C4 41820018 */  beq     lbl_800105DC
/* 00B028 800105C8 48097301 */  bl      VIGetNextField
/* 00B02C 800105CC 28030001 */  cmplwi  r3, 1
/* 00B030 800105D0 40820014 */  bne     lbl_800105E4
/* 00B034 800105D4 38600001 */  li      r3, 1
/* 00B038 800105D8 48000010 */  b       lbl_800105E8
lbl_800105DC:
/* 00B03C 800105DC 38600001 */  li      r3, 1
/* 00B040 800105E0 48000008 */  b       lbl_800105E8
lbl_800105E4:
/* 00B044 800105E4 38600000 */  li      r3, 0
lbl_800105E8:
/* 00B048 800105E8 8001000C */  lwz     r0, 0xc(r1)
/* 00B04C 800105EC 38210008 */  addi    r1, r1, 8
/* 00B050 800105F0 7C0803A6 */  mtlr    r0
/* 00B054 800105F4 4E800020 */  blr     