.class public Ljackpal/androidterm/emulatorview/ColorScheme;
.super Ljava/lang/Object;
.source "ColorScheme.java"


# static fields
.field private static final sDefaultCursorBackColor:I = -0x7f7f80


# instance fields
.field private backColor:I

.field private cursorBackColor:I

.field private cursorForeColor:I

.field private foreColor:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "foreColor"    # I
    .param p2, "backColor"    # I

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput p1, p0, Ljackpal/androidterm/emulatorview/ColorScheme;->foreColor:I

    .line 74
    iput p2, p0, Ljackpal/androidterm/emulatorview/ColorScheme;->backColor:I

    .line 75
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/ColorScheme;->setDefaultCursorColors()V

    .line 76
    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 5
    .param p1, "foreColor"    # I
    .param p2, "backColor"    # I
    .param p3, "cursorForeColor"    # I
    .param p4, "cursorBackColor"    # I

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput p1, p0, Ljackpal/androidterm/emulatorview/ColorScheme;->foreColor:I

    .line 88
    iput p2, p0, Ljackpal/androidterm/emulatorview/ColorScheme;->backColor:I

    .line 89
    iput p3, p0, Ljackpal/androidterm/emulatorview/ColorScheme;->cursorForeColor:I

    .line 90
    iput p4, p0, Ljackpal/androidterm/emulatorview/ColorScheme;->cursorBackColor:I

    .line 91
    return-void
.end method

.method public constructor <init>([I)V
    .registers 5
    .param p1, "scheme"    # [I

    .prologue
    const/4 v2, 0x2

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    array-length v0, p1

    .line 101
    .local v0, "schemeLength":I
    if-eq v0, v2, :cond_10

    const/4 v1, 0x4

    if-eq v0, v1, :cond_10

    .line 102
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 104
    :cond_10
    const/4 v1, 0x0

    aget v1, p1, v1

    iput v1, p0, Ljackpal/androidterm/emulatorview/ColorScheme;->foreColor:I

    .line 105
    const/4 v1, 0x1

    aget v1, p1, v1

    iput v1, p0, Ljackpal/androidterm/emulatorview/ColorScheme;->backColor:I

    .line 106
    if-ne v0, v2, :cond_20

    .line 107
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/ColorScheme;->setDefaultCursorColors()V

    .line 112
    :goto_1f
    return-void

    .line 109
    :cond_20
    aget v1, p1, v2

    iput v1, p0, Ljackpal/androidterm/emulatorview/ColorScheme;->cursorForeColor:I

    .line 110
    const/4 v1, 0x3

    aget v1, p1, v1

    iput v1, p0, Ljackpal/androidterm/emulatorview/ColorScheme;->cursorBackColor:I

    goto :goto_1f
.end method

.method private static channelDistance(III)I
    .registers 5
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "channel"    # I

    .prologue
    .line 59
    invoke-static {p0, p2}, Ljackpal/androidterm/emulatorview/ColorScheme;->getChannel(II)I

    move-result v0

    invoke-static {p1, p2}, Ljackpal/androidterm/emulatorview/ColorScheme;->getChannel(II)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method private static distance(II)I
    .registers 4
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljackpal/androidterm/emulatorview/ColorScheme;->channelDistance(III)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Ljackpal/androidterm/emulatorview/ColorScheme;->channelDistance(III)I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    const/4 v1, 0x2

    invoke-static {p0, p1, v1}, Ljackpal/androidterm/emulatorview/ColorScheme;->channelDistance(III)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static getChannel(II)I
    .registers 3
    .param p0, "color"    # I
    .param p1, "channel"    # I

    .prologue
    .line 63
    rsub-int/lit8 v0, p1, 0x2

    mul-int/lit8 v0, v0, 0x8

    shr-int v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private setDefaultCursorColors()V
    .registers 5

    .prologue
    .line 42
    const v2, -0x7f7f80

    iput v2, p0, Ljackpal/androidterm/emulatorview/ColorScheme;->cursorBackColor:I

    .line 44
    iget v2, p0, Ljackpal/androidterm/emulatorview/ColorScheme;->foreColor:I

    iget v3, p0, Ljackpal/androidterm/emulatorview/ColorScheme;->cursorBackColor:I

    invoke-static {v2, v3}, Ljackpal/androidterm/emulatorview/ColorScheme;->distance(II)I

    move-result v1

    .line 45
    .local v1, "foreDistance":I
    iget v2, p0, Ljackpal/androidterm/emulatorview/ColorScheme;->backColor:I

    iget v3, p0, Ljackpal/androidterm/emulatorview/ColorScheme;->cursorBackColor:I

    invoke-static {v2, v3}, Ljackpal/androidterm/emulatorview/ColorScheme;->distance(II)I

    move-result v0

    .line 46
    .local v0, "backDistance":I
    mul-int/lit8 v2, v1, 0x2

    if-lt v2, v0, :cond_1e

    .line 47
    iget v2, p0, Ljackpal/androidterm/emulatorview/ColorScheme;->foreColor:I

    iput v2, p0, Ljackpal/androidterm/emulatorview/ColorScheme;->cursorForeColor:I

    .line 51
    :goto_1d
    return-void

    .line 49
    :cond_1e
    iget v2, p0, Ljackpal/androidterm/emulatorview/ColorScheme;->backColor:I

    iput v2, p0, Ljackpal/androidterm/emulatorview/ColorScheme;->cursorForeColor:I

    goto :goto_1d
.end method


# virtual methods
.method public getBackColor()I
    .registers 2

    .prologue
    .line 127
    iget v0, p0, Ljackpal/androidterm/emulatorview/ColorScheme;->backColor:I

    return v0
.end method

.method public getCursorBackColor()I
    .registers 2

    .prologue
    .line 143
    iget v0, p0, Ljackpal/androidterm/emulatorview/ColorScheme;->cursorBackColor:I

    return v0
.end method

.method public getCursorForeColor()I
    .registers 2

    .prologue
    .line 135
    iget v0, p0, Ljackpal/androidterm/emulatorview/ColorScheme;->cursorForeColor:I

    return v0
.end method

.method public getForeColor()I
    .registers 2

    .prologue
    .line 119
    iget v0, p0, Ljackpal/androidterm/emulatorview/ColorScheme;->foreColor:I

    return v0
.end method
