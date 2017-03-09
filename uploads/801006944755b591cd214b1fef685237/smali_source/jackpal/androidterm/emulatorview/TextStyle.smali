.class final Ljackpal/androidterm/emulatorview/TextStyle;
.super Ljava/lang/Object;
.source "TextStyle.java"


# static fields
.field static final ciBackground:I = 0x101

.field static final ciColorLength:I = 0x104

.field static final ciCursorBackground:I = 0x103

.field static final ciCursorForeground:I = 0x102

.field static final ciForeground:I = 0x100

.field static final fxBlink:I = 0x8

.field static final fxBold:I = 0x1

.field static final fxInverse:I = 0x10

.field static final fxInvisible:I = 0x20

.field static final fxItalic:I = 0x2

.field static final fxNormal:I = 0x0

.field static final fxUnderline:I = 0x4

.field static final kNormalTextStyle:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 22
    const/16 v0, 0x100

    const/16 v1, 0x101

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljackpal/androidterm/emulatorview/TextStyle;->encode(III)I

    move-result v0

    sput v0, Ljackpal/androidterm/emulatorview/TextStyle;->kNormalTextStyle:I

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method static decodeBackColor(I)I
    .registers 2
    .param p0, "encodedColor"    # I

    .prologue
    .line 33
    and-int/lit16 v0, p0, 0x1ff

    return v0
.end method

.method static decodeEffect(I)I
    .registers 2
    .param p0, "encodedColor"    # I

    .prologue
    .line 37
    shr-int/lit8 v0, p0, 0x12

    and-int/lit8 v0, v0, 0x3f

    return v0
.end method

.method static decodeForeColor(I)I
    .registers 2
    .param p0, "encodedColor"    # I

    .prologue
    .line 29
    shr-int/lit8 v0, p0, 0x9

    and-int/lit16 v0, v0, 0x1ff

    return v0
.end method

.method static encode(III)I
    .registers 5
    .param p0, "foreColor"    # I
    .param p1, "backColor"    # I
    .param p2, "effect"    # I

    .prologue
    .line 25
    and-int/lit8 v0, p2, 0x3f

    shl-int/lit8 v0, v0, 0x12

    and-int/lit16 v1, p0, 0x1ff

    shl-int/lit8 v1, v1, 0x9

    or-int/2addr v0, v1

    and-int/lit16 v1, p1, 0x1ff

    or-int/2addr v0, v1

    return v0
.end method
