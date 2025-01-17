#include "frame.h"
#include "dolphin/types.h"
#include "macros.h"
#include "xlObject.h"

const s32 D_800D31C0[] = {
    0x00000006, 0x00000000, 0x00000005, 0x00020000, 0x00000004, 0x00030000, 0x00000003, 0x00038000,
    0x00000002, 0x0003C000, 0x00000001, 0x0003E000, 0x00000000, 0x0003F000, 0x00000000, 0x0003F800,
};

static char D_800EA838[] = "Frame-Buffer";

_XL_OBJECTTYPE gClassFrame = {
    D_800EA838,
    sizeof(Frame),
    NULL,
    (EventFunc)frameEvent,
};

static s32 gbFrameValid;
static s32 gbFrameBegin;
static s32 snScissorChanged;
static u32 snScissorXOrig;
static u32 snScissorYOrig;
static u32 snScissorWidth;
static u32 snScissorHeight;
static s32 sCopyFrameSyncReceived;
static u8 sSpecialZeldaHackON;
static u32 sDestinationBuffer;
static u32 sSrcBuffer;
static u32 sConstantBufAddr[8] ALIGNAS(32);
static u32 sNumAddr; // .skip
static u32 gHackCreditsColor; // .skip
s32 ganNameColor[] = {
    0x00000000, 0x00000001, 0x00000002, 0x00000003, 0x00000004, 0x00000005, 0x00000006, 0x00000007,
};
static s32 sRemapI[] = {
    0x00020406,
    0x080A0C0F,
};

s32 ganNamePixel[] = {
    0x00000000, 0x00000001, 0x00000002, 0x00000003, 0x00000004, 0x00000005, 0x00000006, 0x00000007,
};

s32 ganNameTexMtx[] = {
    0x0000001E, 0x00000021, 0x00000024, 0x00000027, 0x0000002A, 0x0000002D, 0x00000030, 0x00000033,
};

s32 ganNameTexCoord[] = {
    0x00000000, 0x00000001, 0x00000002, 0x00000003, 0x00000004, 0x00000005, 0x00000006, 0x00000007,
};

char D_800EA8D8[] = "TEXRRR (obsolete)";
char D_800EA8EC[] = "TEXGGG (obsolete)";
char D_800EA900[] = "TEXBBB (obsolete)";
char D_800EA914[] = "GX_CC_KONST";

char* gaszNameColor[] = {
    "CPREV", "APREV", "C0",  "A0",   "C1",    "A1",   "C2",       "A2",       "TEXC",     "TEXA",
    "RASC",  "RASA",  "ONE", "HALF", "KONST", "ZERO", D_800EA8D8, D_800EA8EC, D_800EA900, D_800EA914,
};

char* gaszNameAlpha[] = {
    "APREV", "A0", "A1", "A2", "TEXA", "RASA", "KONST", "ZERO", "KONST",
};

s32 (*gapfDrawTriangle[8])(Frame*, Primitive*) = {
    frameDrawTriangle_C0T0, frameDrawTriangle_C1T0, 0x00000000, frameDrawTriangle_C3T0,
    frameDrawTriangle_C0T3, frameDrawTriangle_C1T3, 0x00000000, frameDrawTriangle_C3T3,
};

s32 (*gapfDrawLine[6])(Frame*, Primitive*) = {
    frameDrawLine_C0T0, frameDrawLine_C1T0, frameDrawLine_C2T0,
    frameDrawLine_C0T2, frameDrawLine_C1T2, frameDrawLine_C2T2,
};

u8 nCopyFrame[4]; // .skip
u8 nLastFrame[4]; // .skip
u8 bSkip[4]; // .skip
u8 nCounter[4]; // .skip
u8 gnCountMapHack[4]; // .skip
s32 gNoSwapBuffer; // .skip
static u16 sTempZBuf[4800][4][4];

s32 sZBufShift[] = {
    0x0003F800, 0x00000000, 0x0003F000, 0x00000000, 0x0003E000, 0x00000001, 0x0003C000, 0x00000002,
    0x00038000, 0x00000003, 0x00030000, 0x00000004, 0x00020000, 0x00000005, 0x00000000, 0x00000006,
};

char D_800EAA0C[] = "PRIMITIVE";
char D_800EAA18[] = "ENVIRONMENT";
char* gaszNameColorType[] = {
    "FOG", "FILL", "BLEND", D_800EAA0C, D_800EAA18,
};

static u8 sFrameObj1[32]; // .skip
static u8 sFrameObj2[32]; // .skip
// size = 0x20, address = 0x8012DE00
static struct _GXTexObj sFrameObj_1564;
// size = 0x20, address = 0x8012DE20
static struct _GXTexObj sFrameObj_1565;
// size = 0x20, address = 0x8012DE40
static struct _GXTexObj sFrameObj_1568;
// size = 0x1400, address = 0x8012DE60
static u32 line_1582[80][4][4];
static u16 line_1606[80][4][4];
static u16 line_1630[80][4][4];
static struct _GXTexObj sFrameObj_1647;
static u8 cAlpha = 0x0F;
static struct _GXTexObj sFrameObj_1660;
static struct _GXTexObj frameObj_1663;
static struct _GXTexObj frameObj_1673;

s32 sCommandCodes_1679[] = {
    0xF5500000, 0x07080200, 0xE6000000, 0x00000000, 0xF3000000, 0x073BF01A, 0xE7000000, 0x00000000,
};

s32 sCommandCodes_1702[] = {
    0xE7000000, 0x00000000, 0xEF000CF0, 0x0F0A4004, 0xFB000000,
    0xFFFFFFFF, 0xFC12FE25, 0xFFFFFBFD, 0xFF10013F, 0x804096C0,
};

s32 sCommandCodes2[] = {
    0xE7000000, 0x00000000, 0xE7000000, 0x00000000, 0xEF000CF0,
    0x0F0A0004, 0xFCFFFFFF, 0xFFFCFE7F, 0xFF88013F, 0x80784600,
};

static u16 tempLine[16][4][4];

s32 GBIcode[] = {
    0xED000000,
    0x0B000000,
    0x0A000000,
};

s32 GBIcode2D2[] = {
    0xB9000000, 0xBA000000, 0xE7000000, 0xBA000000, 0xC1000000, 0xE7000000, 0x02000000,
};

s32 GBIcode3D1[] = {
    0xBA000000, 0xFC000000, 0xB9000000, 0xBA000000, 0xB9000000,
};

s32 GBIcode3D2[] = {
    0xE7000000, 0xBA000000, 0xFC000000, 0xB9000000, 0xBA000000, 0xB9000000,
};

s32 anRenderModeDatabaseCycle2[] = {
    0x0C192078, 0x00552078, 0x0C184F50, 0x00504A50, 0x0F0A4000, 0xC8112078, 0x0C187858, 0x00442078, 0x00553078,
    0xC8113078, 0x00443078, 0x00552D58, 0xC8112D58, 0x005049D8, 0xC81049D8, 0x0C193078, 0x00504240, 0x5F505240,
    0x0C184240, 0x0C182048, 0x0C183048, 0x0C182078, 0x0C192D58, 0x0C1849D8, 0x0F0A7008, 0x0C1841C8, 0x0C184DD8,
    0x0C183078, 0x0C1845D8, 0x00504241, 0x0C184341, 0x0C184241, 0xC8104DD8, 0xC8104F50, 0x00504341, 0xC8104A50,
    0x00504340, 0x0C184340, 0xC8104B50, 0x0C184B50, 0x0C184B51, 0x00504B51, 0x0F0A4004, 0x0F0A3231, 0x00504B50,
    0xC81049F8, 0xC8103478, 0x005041C8, 0xC4104240, 0x00552038, 0x0F0A100C, 0x0C184A50, 0xC8104A51, 0xC8112479,
    0xC81045D8, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000,
};

s32 anRenderModeDatabaseCopy[] = {
    0x0F0A7008, 0x00000001, 0x0F0A4001, 0x00442478, 0x00442479, 0x005041C9, 0x00552079, 0x00552078, 0x005045D8,
    0x005045D9, 0x00504DD8, 0x00504DD9, 0x00553078, 0x00553079, 0x0F0A4000, 0x005049D8, 0x005049D9, 0x00442078,
    0x00442079, 0x0F0A7009, 0x00504240, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000,
};

s32 anRenderModeDatabaseFill[] = {
    0x0F0A4000, 0x0C084000, 0x00000001, 0x0F0A4001, 0x00504240, 0xC8112078, 0x00504341, 0x00504244, 0x00504340,
    0x00504241, 0x00504B50, 0x0C184241, 0x0F0A4004, 0x00553049, 0x00552078, 0x0F0A100C, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000,
};

s32 anRenderModeDatabaseCycle1[] = {
    0x0F0A4000, 0x00552048, 0x0F0A7008, 0x00552078, 0x0C084000, 0x00504241, 0x00504240, 0x0F0A4001, 0x005041C8,
    0x00552D58, 0x0C184F50, 0x00504F50, 0x0C192078, 0x00504A50, 0x00000001, 0x005049D8, 0xC8112078, 0x0C187858,
    0x00552230, 0x00442478, 0x00443078, 0x00442479, 0x00443079, 0x005041C9, 0x00553048, 0x00553078, 0x00504DD8,
    0x005045D8, 0x004049F8, 0x004049D8, 0x00442078, 0xC8113078, 0x005049DB, 0x00442D58, 0xC8112D58, 0x004049F8,
    0xC81049D8, 0x0C193078, 0x00504B50, 0x00504340, 0x5F505240, 0x0C182078, 0x0C182048, 0x0F0A7009, 0x0C1841C8,
    0x0C184240, 0x0C1849D8, 0x00504244, 0x0C184340, 0x00504B51, 0x0C184B50, 0x0F0A4004, 0x0F0A4044, 0x0F0A0004,
    0xC8104B50, 0x0FA54044, 0x00504341, 0x00553049, 0x0F0A3231, 0xC8104F50, 0x00552038, 0xC4104240, 0x00504344,
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000,
};

char D_800EB13C[] = "GetTextureInfo: Unknown texture-format: %d\n";

extern void* lbl_8001D3FC;
extern void* lbl_8001D418;
extern void* lbl_8001D418;
extern void* lbl_8001D42C;
extern void* lbl_8001D42C;
extern void* lbl_8001D42C;
extern void* lbl_8001D444;
extern void* lbl_8001D45C;
extern void* lbl_8001D3FC;
extern void* lbl_8001D418;

void* jtbl_800EB168[] = {&lbl_8001D3FC, &lbl_8001D418, &lbl_8001D418, &lbl_8001D42C, &lbl_8001D42C,
                         &lbl_8001D42C, &lbl_8001D444, &lbl_8001D45C, &lbl_8001D3FC, &lbl_8001D418};

extern void* lbl_80020074;
extern void* lbl_80020084;
extern void* lbl_800200C8;
extern void* lbl_800200D8;
extern void* lbl_800200E8;
extern void* lbl_80020134;
extern void* lbl_80020144;
extern void* lbl_80020144;
extern void* lbl_80020144;
extern void* lbl_80020144;

void* jtbl_800EB190[] = {&lbl_80020074, &lbl_80020084, &lbl_800200C8, &lbl_800200D8, &lbl_800200E8,
                         &lbl_80020134, &lbl_80020144, &lbl_80020144, &lbl_80020144, &lbl_80020144};
char D_800EB1B8[] = "frameEnd: INTERNAL ERROR: Called when 'gbFrameBegin' is TRUE!\n";
char D_800EB1F8[] = "Waiting for valid?\n";

extern void* lbl_800297DC;
extern void* lbl_800297E8;
extern void* lbl_800297F4;
extern void* lbl_80029800;
extern void* lbl_8002980C;
extern void* lbl_80029818;
extern void* lbl_80029824;
extern void* lbl_80029830;

void* jtbl_800EB20C[] = {
    &lbl_800297DC, &lbl_800297E8, &lbl_800297F4, &lbl_80029800,
    &lbl_8002980C, &lbl_80029818, &lbl_80029824, &lbl_80029830,
};

extern void* lbl_8002986C;
extern void* lbl_80029878;
extern void* lbl_80029884;
extern void* lbl_80029890;
extern void* lbl_8002989C;
extern void* lbl_800298A8;
extern void* lbl_80029920;
extern void* lbl_800298B4;
extern void* lbl_800298C0;
extern void* lbl_800298CC;
extern void* lbl_800298D8;
extern void* lbl_800298E4;
extern void* lbl_800298F0;
extern void* lbl_800298FC;
extern void* lbl_80029908;
extern void* lbl_80029914;
extern void* lbl_80029938;
extern void* lbl_80029938;
extern void* lbl_80029938;
extern void* lbl_80029938;
extern void* lbl_80029938;
extern void* lbl_80029938;
extern void* lbl_80029938;
extern void* lbl_80029938;
extern void* lbl_80029938;
extern void* lbl_80029938;
extern void* lbl_80029938;
extern void* lbl_80029938;
extern void* lbl_80029938;
extern void* lbl_80029938;
extern void* lbl_80029938;
extern void* lbl_8002992C;

void* jtbl_800EB22C[] = {
    &lbl_8002986C, &lbl_80029878, &lbl_80029884, &lbl_80029890, &lbl_8002989C, &lbl_800298A8, &lbl_80029920,
    &lbl_800298B4, &lbl_800298C0, &lbl_800298CC, &lbl_800298D8, &lbl_800298E4, &lbl_800298F0, &lbl_800298FC,
    &lbl_80029908, &lbl_80029914, &lbl_80029938, &lbl_80029938, &lbl_80029938, &lbl_80029938, &lbl_80029938,
    &lbl_80029938, &lbl_80029938, &lbl_80029938, &lbl_80029938, &lbl_80029938, &lbl_80029938, &lbl_80029938,
    &lbl_80029938, &lbl_80029938, &lbl_80029938, &lbl_8002992C,
};

char D_800EB2AC[] = "LoadTexture: Unknown FILTER mode (%d)\n";
char D_800EB2D4[] = "MakeTexture: 'aTexture' is exhausted!\0\0";

static char D_80134E58[] = "frame.c";

const f32 D_80135E00 = 0.0;
const f32 D_80135E04 = 0.25;
const f32 D_80135E08 = 2.0;
const f64 D_80135E10 = 4503601774854144.0;
const f32 D_80135E18 = 0.0625;
const f32 D_80135E1C = 0.0078125;
const f32 D_80135E20 = 4096.0;
const f32 D_80135E24 = 4194304.0;
const f64 D_80135E28 = 4503599627370496.0;
const f32 D_80135E30 = 0.5;
const f32 D_80135E34 = 3.0;
const f32 D_80135E38 = 1.0;
const f64 D_80135E40 = 0.5;
const f64 D_80135E48 = 3.0;
const f32 D_80135E50 = 0.2267303466796875;
const f32 D_80135E54 = 0.3183135986328125;
const f32 D_80135E58 = 0.006240000016987324;
const f32 D_80135E5C = 0.0062420000322163105;
const f32 D_80135E60 = 640.0;
const f32 D_80135E64 = 480.0;
const f32 D_80135E68 = 320.0;
const f32 D_80135E6C = 240.0;
const f64 D_80135E70 = 262143.0;
const f64 D_80135E78 = 43.52;
const f32 D_80135E80 = 80.0;
const f32 D_80135E84 = 31.0;
const f32 D_80135E88 = 0.015625;
const f32 D_80135E8C = 143.0;
const f32 D_80135E90 = 0.859375;
const f32 D_80135E94 = 0.949999988079071;
const f32 D_80135E98 = 0.8999999761581421;
const f32 D_80135E9C = 0.8500000238418579;
const f32 D_80135EA0 = 0.800000011920929;
const f32 D_80135EA4 = -1.0;
const f32 D_80135EA8 = 319.0;
const f32 D_80135EAC = 239.0;
const f32 D_80135EB0 = -1001.0;
const f32 D_80135EB4 = -53.0;
const f32 D_80135EB8 = -3080.0;
const f32 D_80135EBC = 6067.0;
const f32 D_80135EC0 = -31.0;
const f32 D_80135EC4 = 1669.0;
const f32 D_80135EC8 = 1000.0;
const f32 D_80135ECC = 32000.0;
const f32 D_80135ED0 = 30.0;
const f32 D_80135ED4 = 1.3333333730697632;
const f32 D_80135ED8 = 0.10000000149011612;
const f32 D_80135EDC = 0.001500000013038516;
const f32 D_80135EE0 = 65536.0;
const f32 D_80135EE4 = 1001.0;
const f32 D_80135EE8 = 500.0;
const f32 D_80135EEC = 970.0;
const f32 D_80135EF0 = 59.0;
const f32 D_80135EF4 = 990.0;
const f32 D_80135EF8 = 0.20999999344348907;
const f32 D_80135EFC = 0.3499999940395355;
const f32 D_80135F00 = 12800.0;
const f32 D_80135F04 = 0.6000000238418579;
const f32 D_80135F08 = 0.699999988079071;
const f32 D_80135F0C = 44.0;
const f32 D_80135F10 = 0.12999999523162842;
const f32 D_80135F14 = 45.0;
const f32 D_80135F18 = 15.0;
const f32 D_80135F1C = 0.3799999952316284;
const f32 D_80135F20 = 900.0;
const f32 D_80135F24 = 350.0;
const f32 D_80135F28 = 10.0;
const f32 D_80135F2C = 200.0;
const f32 D_80135F30 = 128000.0;
const f32 D_80135F34 = -25344.0;
const f32 D_80135F38 = 25600.0;
const f32 D_80135F3C = 2200.0;
const f32 D_80135F40 = 0.574999988079071;
const f32 D_80135F44 = 0.75;
const f32 D_80135F48 = -21077.0;
const f32 D_80135F4C = 21333.0;
const f32 D_80135F50 = -90.0;
const f32 D_80135F54 = 258.0;
const f32 D_80135F58 = 0.44999998807907104;
const f32 D_80135F5C = -667.0;
const f32 D_80135F60 = 688.0;
const f32 D_80135F64 = 0.00390625;
const f32 D_80135F68 = 860.0;
const f32 D_80135F6C = 0.15000000596046448;
const f32 D_80135F70 = 140.0;
const f32 D_80135F74 = 0.2800000011920929;
const f32 D_80135F78 = 0.7200000286102295;
const f32 D_80135F7C = 0.25999999046325684;
const f32 D_80135F80 = 8.4399995803833;
const f64 D_80135F88 = 8.44;

//#pragma GLOBAL_ASM("asm/non_matchings/frame/frameDrawSetupFog_Zelda1.s")
s32 frameDrawSetupFog_Zelda1(Frame* pFrame) {
    enum _GXFogType nFogType;
    f32 temp_f3;
    f32 dplane;
    f32 dplane_2;
    f32 dplane_3;
    f32 dplane_4;
    f32 temp_f6;
    f32 temp_f6_2;
    f32 temp_f7;
    f32 temp_f7_2;
    f32 rFarScale;
    f32 rFarScale_2;
    f32 rFarScale_3;
    f32 rFarScale_4;
    f32 rNear;
    f32 var_f1;
    f32 rFar;
    f32 var_f2_2;
    f32 rFogNear;
    f32 rFogFar;
    f32 rOffset;
    f32 rOffset_2;
    f32 rMaximum;
    f32 rMaximum_2;
    s32 temp_r0_2;
    s32 iHint;
    u32 temp_r0;
    u32 temp_r4_2;

    /*
      uStack_4 = (int)(short)((uint)*(undefined4 *)(param_1 + 0x90) >> 0x10) ^ 0x80000000;
      uStack_c = (int)(short)*(undefined4 *)(param_1 + 0x90) ^ 0x80000000;
      dVar10 = (double)(float)((double)CONCAT44(0x43300000,uStack_4) - @2851);
      dVar11 = (double)(float)((double)CONCAT44(0x43300000,uStack_c) - @2851);
      fVar2 = @3237;
      fVar1 = @6254;

    */
    
    temp_f6 = (s16) pFrame->aMode[0] ^ 0x80000000;
    temp_f7 = (s16) (pFrame->aMode[0] >> 0x10) ^ 0x80000000;
    iHint = pFrame->iHintProjection;
    if (iHint != -1U) {
        rFar = pFrame->matrixHint[iHint].rClipFar;
        rNear = pFrame->matrixHint[iHint].rClipNear * -1 ;
    } else {
        rFar = 32000.0;
        rNear = 1.0;
    }
    if (temp_f6 == 0) {
        GXSetFog(GX_FOG_NONE, 0.0f, 0.0f, 0.0f, 1000, pFrame->aColor[0]);
    } else {
        if (temp_f7 == temp_f6) {
            nFogType = GX_FOG_LIN;
            rFogNear = 500;
            rFogFar = 1000;
            var_f1 = rFogNear * (1 - (temp_f7 / temp_f6));
            var_f2_2 = (D_80135F30 / temp_f6) + var_f1;
        } else if ((D_80135F34 == temp_f7) && (D_80135F38 == temp_f6) && (D_80135F3C == rFar)) {
            temp_f6_2 = rFar - rNear;
            rFogNear = rNear;
            rFogFar = rFar;
            var_f1 = (D_80135F40 * temp_f6_2) + rNear;
            nFogType = GX_FOG_EXP;
            var_f2_2 = (D_80135F44 * temp_f6_2) + rNear;
        } else if ((D_80135F48 == temp_f7) && (D_80135F4C == temp_f6) && (D_80135F00 == rFar)) {
            dplane = rFar - rNear;
            rFogNear = rNear;
            nFogType = GX_FOG_EXP;
            rFogFar = rFar;
            var_f1 = (D_80135ED8 * dplane) + rNear;
            var_f2_2 = dplane + rNear;
        } else {
            temp_r0_2 = gpSystem->eTypeROM;
            if ((temp_r0_2 == 5) && (D_80135F50 == temp_f7) && (D_80135F54 == temp_f6) && (D_80135F00 == rFar)) {
                dplane_2 = rFar - rNear;
                rFogNear = rNear;
                nFogType = GX_FOG_EXP;
                rFogFar = rFar;
                var_f1 = (D_80135F58 * dplane_2) + rNear;
                var_f2_2 = dplane_2 + rNear;
            } else if ((temp_r0_2 == 5) && (D_80135F5C == temp_f7) && (D_80135F60 == temp_f6) && (D_80135F00 == rFar)) {
                dplane_3 = rFar - rNear;
                rFogNear = rNear;
                nFogType = GX_FOG_EXP;
                rFogFar = rFar;
                var_f1 = (D_80135F58 * dplane_3) + rNear;
                var_f2_2 = dplane_3 + rNear;
            } else {
                dplane_4 = rFar - rNear;
                temp_f3 = -((temp_f7 * (D_80135F30 / temp_f6) * D_80135F64) - 500);
                if (temp_f3 <= D_80135F68) {
                    rOffset = 0.0f;
                    rMaximum = D_80135F6C;
                } else {
                    temp_f7_2 = (temp_f3 - D_80135F68) / D_80135F70;
                    rMaximum = (temp_f7_2 * (temp_f7_2 * (D_80135F78 * temp_f7_2 * temp_f7_2))) + D_80135F74;
                    rOffset = temp_f7_2 * (temp_f7_2 * (D_80135F7C * temp_f7_2 * temp_f7_2));
                }
                rFarScale = 1 - (rFar / D_80135F00);
                rFarScale_2 = rFarScale * rFarScale;
                rFarScale_3 = rFarScale_2 * rFarScale_2;
                rFarScale_4 = rFarScale_3 * rFarScale_3;
                rMaximum_2 = rMaximum * ((rFarScale_4 * D_80135F80) + 1);
                if (rMaximum_2 > 1) {
                    rMaximum_2 = 1;
                }
                rOffset_2 = rOffset * ((f32) ((f64) (rNear * rNear * (D_80135ED8 * rFarScale_4)) * D_80135F88) + 1);
                if (rOffset_2 > 1) {
                    rOffset_2 = 1;
                }
                if (rOffset_2 > rMaximum_2) {
                    rOffset_2 = rMaximum_2;
                }
                rFogNear = rNear;
                nFogType = GX_FOG_EXP;
                rFogFar = rFar;
                var_f1 = (rOffset_2 * dplane_4) + rNear;
                var_f2_2 = (rMaximum_2 * dplane_4) + rNear;
            }
        }
        temp_r4_2 = pFrame->aMode[4];
        if (((u32) ((temp_r4_2 >> 0x1AU) & 3) == 1) || ((u32) (temp_r4_2 >> 0x1EU) == 3) || ((u32) ((temp_r4_2 >> 0x16U) & 3) == 3)) {
            GXSetFog(nFogType, var_f1, var_f2_2, rFogNear, rFogFar, pFrame->aColor[0]);
        } else {
            GXSetFog(GX_FOG_NONE, 0.0f, 0.0f, 0.0f, 1000, pFrame->aColor[0]);
        }
    }
    return 1;
}


#pragma GLOBAL_ASM("asm/non_matchings/frame/frameDrawSetupFog_Default.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameDrawSyncCallback.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameDrawDone.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameMakeTLUT.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameMakePixels.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameLoadTexture.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameDrawSetup2D.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameDrawSetupSP.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameGetCombineColor.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameGetCombineAlpha.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameDrawSetupDP.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameDrawTriangle_C0T0.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameDrawTriangle_C1T0.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameDrawTriangle_C3T0.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameDrawTriangle_C0T3.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameDrawTriangle_C1T3.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameCheckTriangleDivide.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameDrawTriangle_C3T3.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameDrawTriangle_Setup.s")
/*s32 frameDrawTriangle_Setup(Frame* pFrame, Primitive* pPrimitive) {
    s32 bFlag;
    s32 nColors;
    s32 var_r5;

    if (frameDrawSetupSP(pFrame, &nColors, &bFlag, 3) == 0) {
        return 0;
    }
    if (frameDrawSetupDP(pFrame, &nColors, &bFlag, 0) == 0) {
        return 0;
    }
    if (bFlag != 0) {
        var_r5 = 4;
    } else {
        var_r5 = 0;
    }
    pFrame->aDraw[1] = (s32(*)(Frame*, Primitive*))gapfDrawTriangle[nColors + var_r5];
    if (pFrame->aDraw[1](pFrame, pPrimitive) == 0) {
        return 0;
    }
    return 1;
}*/

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameDrawLine_C0T0.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameDrawLine_C1T0.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameDrawLine_C2T0.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameDrawLine_C0T2.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameDrawLine_C1T2.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameDrawLine_C2T2.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameDrawLine_Setup.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameDrawRectFill.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameDrawRectFill_Setup.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameDrawRectTexture.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameDrawRectTexture_Setup.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameShow.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameSetScissor.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameSetDepth.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameSetColor.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameBeginOK.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameBegin.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameEnd.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/_frameDrawRectangle.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/ZeldaDrawFrameNoBlend.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/ZeldaDrawFrameBlur.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/ZeldaDrawFrame.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/CopyAndConvertCFB.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/ZeldaGreyScaleConvert.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/ZeldaDrawFrameShrink.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/ZeldaDrawFrameCamera.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameHackTIMG_Zelda.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameHackCIMG_Zelda2.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameHackCIMG_Zelda.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameHackCIMG_Zelda2_Shrink.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameHackCIMG_Zelda2_Camera.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/PanelDrawBG8.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/PanelDrawBG16.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/PanelDrawFR3D.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameHackTIMG_Panel.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameHackCIMG_Panel.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameGetDepth.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameEvent.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameScaleMatrix.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameConvertYUVtoRGB.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/packTakeBlocks.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/packFreeBlocks.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameMakeTexture.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameSetupCache.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameUpdateCache.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameLoadTile.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameDrawReset.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameSetFill.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameSetSize.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameSetMode.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameGetMode.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameSetMatrix.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameGetMatrix.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameLoadVertex.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameCullDL.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameLoadTLUT.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameLoadTMEM.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameSetLightCount.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameSetLight.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameSetLookAt.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameSetViewport.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameResetUCode.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameSetBuffer.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameFixMatrixHint.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameSetMatrixHint.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameInvalidateCache.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/frameGetTextureInfo.s")

#pragma GLOBAL_ASM("asm/non_matchings/frame/PSMTX44MultVecNoW.s")