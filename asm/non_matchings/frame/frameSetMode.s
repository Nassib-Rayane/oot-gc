glabel frameSetMode
/* 01AA74 80020014 38000001 */  li      r0, 1
/* 01AA78 80020018 80C3008C */  lwz     r6, 0x8c(r3)
/* 01AA7C 8002001C 7C072030 */  slw     r7, r0, r4
/* 01AA80 80020020 7CC03838 */  and     r0, r6, r7
/* 01AA84 80020024 28000000 */  cmplwi  r0, 0
/* 01AA88 80020028 41820018 */  beq     lbl_80020040
/* 01AA8C 8002002C 5480103A */  slwi    r0, r4, 2
/* 01AA90 80020030 7CC30214 */  add     r6, r3, r0
/* 01AA94 80020034 80060090 */  lwz     r0, 0x90(r6)
/* 01AA98 80020038 7C092A78 */  xor     r9, r0, r5
/* 01AA9C 8002003C 48000014 */  b       lbl_80020050
lbl_80020040:
/* 01AAA0 80020040 8003008C */  lwz     r0, 0x8c(r3)
/* 01AAA4 80020044 3920FFFF */  li      r9, -1
/* 01AAA8 80020048 7C003B78 */  or      r0, r0, r7
/* 01AAAC 8002004C 9003008C */  stw     r0, 0x8c(r3)
lbl_80020050:
/* 01AAB0 80020050 28040009 */  cmplwi  r4, 9
/* 01AAB4 80020054 39000000 */  li      r8, 0
/* 01AAB8 80020058 418100F8 */  bgt     lbl_80020150
/* 01AABC 8002005C 3CC0800F */  lis     r6, jtbl_800EB190@ha
/* 01AAC0 80020060 38C6B190 */  addi    r6, r6, jtbl_800EB190@l
/* 01AAC4 80020064 5480103A */  slwi    r0, r4, 2
/* 01AAC8 80020068 7C06002E */  lwzx    r0, r6, r0
/* 01AACC 8002006C 7C0903A6 */  mtctr   r0
/* 01AAD0 80020070 4E800420 */  bctr    
glabel lbl_80020074
/* 01AAD4 80020074 28090000 */  cmplwi  r9, 0
/* 01AAD8 80020078 418200D8 */  beq     lbl_80020150
/* 01AADC 8002007C 61080020 */  ori     r8, r8, 0x20
/* 01AAE0 80020080 480000D0 */  b       lbl_80020150
glabel lbl_80020084
/* 01AAE4 80020084 552006F6 */  rlwinm  r0, r9, 0, 0x1b, 0x1b
/* 01AAE8 80020088 28000000 */  cmplwi  r0, 0
/* 01AAEC 8002008C 41820008 */  beq     lbl_80020094
/* 01AAF0 80020090 61080020 */  ori     r8, r8, 0x20
lbl_80020094:
/* 01AAF4 80020094 552007FE */  clrlwi  r0, r9, 0x1f
/* 01AAF8 80020098 28000000 */  cmplwi  r0, 0
/* 01AAFC 8002009C 41820008 */  beq     lbl_800200A4
/* 01AB00 800200A0 61080004 */  ori     r8, r8, 4
lbl_800200A4:
/* 01AB04 800200A4 5520073A */  rlwinm  r0, r9, 0, 0x1c, 0x1d
/* 01AB08 800200A8 28000000 */  cmplwi  r0, 0
/* 01AB0C 800200AC 41820008 */  beq     lbl_800200B4
/* 01AB10 800200B0 61080008 */  ori     r8, r8, 8
lbl_800200B4:
/* 01AB14 800200B4 552005F0 */  rlwinm  r0, r9, 0, 0x17, 0x18
/* 01AB18 800200B8 28000000 */  cmplwi  r0, 0
/* 01AB1C 800200BC 41820094 */  beq     lbl_80020150
/* 01AB20 800200C0 61080002 */  ori     r8, r8, 2
/* 01AB24 800200C4 4800008C */  b       lbl_80020150
glabel lbl_800200C8
/* 01AB28 800200C8 28090000 */  cmplwi  r9, 0
/* 01AB2C 800200CC 41820084 */  beq     lbl_80020150
/* 01AB30 800200D0 61087C01 */  ori     r8, r8, 0x7c01
/* 01AB34 800200D4 4800007C */  b       lbl_80020150
glabel lbl_800200D8
/* 01AB38 800200D8 28090000 */  cmplwi  r9, 0
/* 01AB3C 800200DC 41820074 */  beq     lbl_80020150
/* 01AB40 800200E0 61087D01 */  ori     r8, r8, 0x7d01
/* 01AB44 800200E4 4800006C */  b       lbl_80020150
glabel lbl_800200E8
/* 01AB48 800200E8 552007BE */  clrlwi  r0, r9, 0x1e
/* 01AB4C 800200EC 28000000 */  cmplwi  r0, 0
/* 01AB50 800200F0 61080200 */  ori     r8, r8, 0x200
/* 01AB54 800200F4 41820008 */  beq     lbl_800200FC
/* 01AB58 800200F8 61087C00 */  ori     r8, r8, 0x7c00
lbl_800200FC:
/* 01AB5C 800200FC 55200636 */  rlwinm  r0, r9, 0, 0x18, 0x1b
/* 01AB60 80020100 28000000 */  cmplwi  r0, 0
/* 01AB64 80020104 41820008 */  beq     lbl_8002010C
/* 01AB68 80020108 61080004 */  ori     r8, r8, 4
lbl_8002010C:
/* 01AB6C 8002010C 5520052A */  rlwinm  r0, r9, 0, 0x14, 0x15
/* 01AB70 80020110 28000000 */  cmplwi  r0, 0
/* 01AB74 80020114 4182000C */  beq     lbl_80020120
/* 01AB78 80020118 65080004 */  oris    r8, r8, 4
/* 01AB7C 8002011C 61080004 */  ori     r8, r8, 4
lbl_80020120:
/* 01AB80 80020120 5520001E */  rlwinm  r0, r9, 0, 0, 0xf
/* 01AB84 80020124 28000000 */  cmplwi  r0, 0
/* 01AB88 80020128 41820028 */  beq     lbl_80020150
/* 01AB8C 8002012C 61087C00 */  ori     r8, r8, 0x7c00
/* 01AB90 80020130 48000020 */  b       lbl_80020150
glabel lbl_80020134
/* 01AB94 80020134 28090000 */  cmplwi  r9, 0
/* 01AB98 80020138 41820018 */  beq     lbl_80020150
/* 01AB9C 8002013C 61087F01 */  ori     r8, r8, 0x7f01
/* 01ABA0 80020140 48000010 */  b       lbl_80020150
glabel lbl_80020144
/* 01ABA4 80020144 28090000 */  cmplwi  r9, 0
/* 01ABA8 80020148 41820008 */  beq     lbl_80020150
/* 01ABAC 8002014C 61087D00 */  ori     r8, r8, 0x7d00
lbl_80020150:
/* 01ABB0 80020150 28080000 */  cmplwi  r8, 0
/* 01ABB4 80020154 41820040 */  beq     lbl_80020194
/* 01ABB8 80020158 8003007C */  lwz     r0, 0x7c(r3)
/* 01ABBC 8002015C 3CE08002 */  lis     r7, frameDrawLine_Setup@ha
/* 01ABC0 80020160 3CC08002 */  lis     r6, frameDrawTriangle_Setup@ha
/* 01ABC4 80020164 7C004378 */  or      r0, r0, r8
/* 01ABC8 80020168 9003007C */  stw     r0, 0x7c(r3)
/* 01ABCC 8002016C 38076D30 */  addi    r0, r7, frameDrawLine_Setup@l
/* 01ABD0 80020170 3CE08002 */  lis     r7, frameDrawRectFill_Setup@ha
/* 01ABD4 80020174 9003012C */  stw     r0, 0x12c(r3)
/* 01ABD8 80020178 38067900 */  addi    r0, r6, frameDrawTriangle_Setup@l
/* 01ABDC 8002017C 3CC08002 */  lis     r6, frameDrawRectTexture_Setup@ha
/* 01ABE0 80020180 90030130 */  stw     r0, 0x130(r3)
/* 01ABE4 80020184 38E769EC */  addi    r7, r7, frameDrawRectFill_Setup@l
/* 01ABE8 80020188 38066124 */  addi    r0, r6, frameDrawRectTexture_Setup@l
/* 01ABEC 8002018C 90E30134 */  stw     r7, 0x134(r3)
/* 01ABF0 80020190 90030138 */  stw     r0, 0x138(r3)
lbl_80020194:
/* 01ABF4 80020194 5480103A */  slwi    r0, r4, 2
/* 01ABF8 80020198 7C630214 */  add     r3, r3, r0
/* 01ABFC 8002019C 90A30090 */  stw     r5, 0x90(r3)
/* 01AC00 800201A0 38600001 */  li      r3, 1
/* 01AC04 800201A4 4E800020 */  blr     
