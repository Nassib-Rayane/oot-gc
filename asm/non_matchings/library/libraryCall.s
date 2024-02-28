glabel libraryCall
/* 089C94 8008F234 7C0802A6 */  mflr    r0
/* 089C98 8008F238 90010004 */  stw     r0, 4(r1)
/* 089C9C 8008F23C 9421FFD8 */  stwu    r1, -0x28(r1)
/* 089CA0 8008F240 93E10024 */  stw     r31, 0x24(r1)
/* 089CA4 8008F244 3BE50000 */  addi    r31, r5, 0
/* 089CA8 8008F248 93C10020 */  stw     r30, 0x20(r1)
/* 089CAC 8008F24C 3BC40000 */  addi    r30, r4, 0
/* 089CB0 8008F250 93A1001C */  stw     r29, 0x1c(r1)
/* 089CB4 8008F254 7C7D1B78 */  mr      r29, r3
/* 089CB8 8008F258 80030000 */  lwz     r0, 0(r3)
/* 089CBC 8008F25C 540007FF */  clrlwi. r0, r0, 0x1f
/* 089CC0 8008F260 40820058 */  bne     lbl_8008F2B8
/* 089CC4 8008F264 2C1FFFFF */  cmpwi   r31, -1
/* 089CC8 8008F268 4082000C */  bne     lbl_8008F274
/* 089CCC 8008F26C 38800001 */  li      r4, 1
/* 089CD0 8008F270 48000008 */  b       lbl_8008F278
lbl_8008F274:
/* 089CD4 8008F274 38800000 */  li      r4, 0
lbl_8008F278:
/* 089CD8 8008F278 7FA3EB78 */  mr      r3, r29
/* 089CDC 8008F27C 48001535 */  bl      libraryFindException
/* 089CE0 8008F280 2C030000 */  cmpwi   r3, 0
/* 089CE4 8008F284 41820034 */  beq     lbl_8008F2B8
/* 089CE8 8008F288 801D0000 */  lwz     r0, 0(r29)
/* 089CEC 8008F28C 387D0000 */  addi    r3, r29, 0
/* 089CF0 8008F290 60000001 */  ori     r0, r0, 1
/* 089CF4 8008F294 901D0000 */  stw     r0, 0(r29)
/* 089CF8 8008F298 48000DE5 */  bl      libraryFindVariables
/* 089CFC 8008F29C 2C030000 */  cmpwi   r3, 0
/* 089D00 8008F2A0 41820018 */  beq     lbl_8008F2B8
/* 089D04 8008F2A4 801D0000 */  lwz     r0, 0(r29)
/* 089D08 8008F2A8 387D0000 */  addi    r3, r29, 0
/* 089D0C 8008F2AC 60000002 */  ori     r0, r0, 2
/* 089D10 8008F2B0 901D0000 */  stw     r0, 0(r29)
/* 089D14 8008F2B4 480008B9 */  bl      libraryFindFunctions
lbl_8008F2B8:
/* 089D18 8008F2B8 2C1FFFFF */  cmpwi   r31, -1
/* 089D1C 8008F2BC 40820028 */  bne     lbl_8008F2E4
/* 089D20 8008F2C0 801D0000 */  lwz     r0, 0(r29)
/* 089D24 8008F2C4 60000001 */  ori     r0, r0, 1
/* 089D28 8008F2C8 901D0000 */  stw     r0, 0(r29)
/* 089D2C 8008F2CC 801D0000 */  lwz     r0, 0(r29)
/* 089D30 8008F2D0 540007BD */  rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 089D34 8008F2D4 41820038 */  beq     lbl_8008F30C
/* 089D38 8008F2D8 7FC3F378 */  mr      r3, r30
/* 089D3C 8008F2DC 480077DD */  bl      __osException
/* 089D40 8008F2E0 4800002C */  b       lbl_8008F30C
lbl_8008F2E4:
/* 089D44 8008F2E4 1C1F004C */  mulli   r0, r31, 0x4c
/* 089D48 8008F2E8 3C60800F */  lis     r3, gaFunction@ha
/* 089D4C 8008F2EC 3863EF2C */  addi    r3, r3, gaFunction@l
/* 089D50 8008F2F0 7C630214 */  add     r3, r3, r0
/* 089D54 8008F2F4 81830004 */  lwz     r12, 4(r3)
/* 089D58 8008F2F8 280C0000 */  cmplwi  r12, 0
/* 089D5C 8008F2FC 41820010 */  beq     lbl_8008F30C
/* 089D60 8008F300 7D8803A6 */  mtlr    r12
/* 089D64 8008F304 387E0000 */  addi    r3, r30, 0
/* 089D68 8008F308 4E800021 */  blrl    
lbl_8008F30C:
/* 089D6C 8008F30C 8001002C */  lwz     r0, 0x2c(r1)
/* 089D70 8008F310 38600001 */  li      r3, 1
/* 089D74 8008F314 83E10024 */  lwz     r31, 0x24(r1)
/* 089D78 8008F318 83C10020 */  lwz     r30, 0x20(r1)
/* 089D7C 8008F31C 7C0803A6 */  mtlr    r0
/* 089D80 8008F320 83A1001C */  lwz     r29, 0x1c(r1)
/* 089D84 8008F324 38210028 */  addi    r1, r1, 0x28
/* 089D88 8008F328 4E800020 */  blr     
