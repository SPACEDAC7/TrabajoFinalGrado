.class Ljackpal/androidterm/emulatorview/Bitmap4x8FontRenderer;
.super Ljackpal/androidterm/emulatorview/BaseTextRenderer;
.source "Bitmap4x8FontRenderer.java"


# static fields
.field private static final BYTE_SCALE:F = 0.003921569f

.field private static final kCharacterHeight:I = 0x8

.field private static final kCharacterWidth:I = 0x4


# instance fields
.field private mColorMatrix:[F

.field private mCurrentBackColor:I

.field private mCurrentForeColor:I

.field private mFont:Landroid/graphics/Bitmap;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Ljackpal/androidterm/emulatorview/ColorScheme;)V
    .registers 7
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "scheme"    # Ljackpal/androidterm/emulatorview/ColorScheme;

    .prologue
    .line 43
    invoke-direct {p0, p2}, Ljackpal/androidterm/emulatorview/BaseTextRenderer;-><init>(Ljackpal/androidterm/emulatorview/ColorScheme;)V

    .line 44
    sget v1, Ljackpal/androidterm/emulatorview/compat/AndroidCompat;->SDK:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_24

    sget v0, Ljackpal/androidterm/emulatorview/R$drawable;->atari_small:I

    .line 46
    .local v0, "fontResource":I
    :goto_a
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Ljackpal/androidterm/emulatorview/Bitmap4x8FontRenderer;->mFont:Landroid/graphics/Bitmap;

    .line 47
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Ljackpal/androidterm/emulatorview/Bitmap4x8FontRenderer;->mPaint:Landroid/graphics/Paint;

    .line 48
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/Bitmap4x8FontRenderer;->mPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 49
    return-void

    .line 44
    .end local v0    # "fontResource":I
    :cond_24
    sget v0, Ljackpal/androidterm/emulatorview/R$drawable;->atari_small_nodpi:I

    goto :goto_a
.end method

.method private drawTextRunHelper(Landroid/graphics/Canvas;FFI[CIIII)V
    .registers 25
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "lineOffset"    # I
    .param p5, "text"    # [C
    .param p6, "index"    # I
    .param p7, "count"    # I
    .param p8, "foreColor"    # I
    .param p9, "backColor"    # I

    .prologue
    .line 111
    iget-object v12, p0, Ljackpal/androidterm/emulatorview/Bitmap4x8FontRenderer;->mPalette:[I

    aget v12, v12, p8

    iget-object v13, p0, Ljackpal/androidterm/emulatorview/Bitmap4x8FontRenderer;->mPalette:[I

    aget v13, v13, p9

    invoke-direct {p0, v12, v13}, Ljackpal/androidterm/emulatorview/Bitmap4x8FontRenderer;->setColorMatrix(II)V

    .line 112
    move/from16 v0, p2

    float-to-int v12, v0

    mul-int/lit8 v13, p4, 0x4

    add-int v5, v12, v13

    .line 113
    .local v5, "destX":I
    move/from16 v0, p3

    float-to-int v6, v0

    .line 114
    .local v6, "destY":I
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 115
    .local v9, "srcRect":Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 116
    .local v4, "destRect":Landroid/graphics/Rect;
    add-int/lit8 v12, v6, -0x8

    iput v12, v4, Landroid/graphics/Rect;->top:I

    .line 117
    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 118
    iget-object v12, p0, Ljackpal/androidterm/emulatorview/Bitmap4x8FontRenderer;->mPalette:[I

    aget v12, v12, p9

    iget-object v13, p0, Ljackpal/androidterm/emulatorview/Bitmap4x8FontRenderer;->mPalette:[I

    const/16 v14, 0x101

    aget v13, v13, v14

    if-eq v12, v13, :cond_6a

    const/4 v7, 0x1

    .line 119
    .local v7, "drawSpaces":Z
    :goto_32
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_33
    move/from16 v0, p7

    if-ge v8, v0, :cond_6c

    .line 121
    add-int v12, v8, p6

    aget-char v1, p5, v12

    .line 122
    .local v1, "c":C
    const/16 v12, 0x80

    if-ge v1, v12, :cond_65

    const/16 v12, 0x20

    if-ne v1, v12, :cond_45

    if-eqz v7, :cond_65

    .line 123
    :cond_45
    and-int/lit8 v2, v1, 0x1f

    .line 124
    .local v2, "cellX":I
    shr-int/lit8 v12, v1, 0x5

    and-int/lit8 v3, v12, 0x3

    .line 125
    .local v3, "cellY":I
    mul-int/lit8 v10, v2, 0x4

    .line 126
    .local v10, "srcX":I
    mul-int/lit8 v11, v3, 0x8

    .line 127
    .local v11, "srcY":I
    add-int/lit8 v12, v10, 0x4

    add-int/lit8 v13, v11, 0x8

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 129
    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 130
    add-int/lit8 v12, v5, 0x4

    iput v12, v4, Landroid/graphics/Rect;->right:I

    .line 131
    iget-object v12, p0, Ljackpal/androidterm/emulatorview/Bitmap4x8FontRenderer;->mFont:Landroid/graphics/Bitmap;

    iget-object v13, p0, Ljackpal/androidterm/emulatorview/Bitmap4x8FontRenderer;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v9, v4, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 133
    .end local v2    # "cellX":I
    .end local v3    # "cellY":I
    .end local v10    # "srcX":I
    .end local v11    # "srcY":I
    :cond_65
    add-int/lit8 v5, v5, 0x4

    .line 119
    add-int/lit8 v8, v8, 0x1

    goto :goto_33

    .line 118
    .end local v1    # "c":C
    .end local v7    # "drawSpaces":Z
    .end local v8    # "i":I
    :cond_6a
    const/4 v7, 0x0

    goto :goto_32

    .line 135
    .restart local v7    # "drawSpaces":Z
    .restart local v8    # "i":I
    :cond_6c
    return-void
.end method

.method private setColorMatrix(II)V
    .registers 12
    .param p1, "foreColor"    # I
    .param p2, "backColor"    # I

    .prologue
    .line 138
    iget v5, p0, Ljackpal/androidterm/emulatorview/Bitmap4x8FontRenderer;->mCurrentForeColor:I

    if-ne p1, v5, :cond_c

    iget v5, p0, Ljackpal/androidterm/emulatorview/Bitmap4x8FontRenderer;->mCurrentBackColor:I

    if-ne p2, v5, :cond_c

    iget-object v5, p0, Ljackpal/androidterm/emulatorview/Bitmap4x8FontRenderer;->mColorMatrix:[F

    if-nez v5, :cond_57

    .line 141
    :cond_c
    iput p1, p0, Ljackpal/androidterm/emulatorview/Bitmap4x8FontRenderer;->mCurrentForeColor:I

    .line 142
    iput p2, p0, Ljackpal/androidterm/emulatorview/Bitmap4x8FontRenderer;->mCurrentBackColor:I

    .line 143
    iget-object v5, p0, Ljackpal/androidterm/emulatorview/Bitmap4x8FontRenderer;->mColorMatrix:[F

    if-nez v5, :cond_22

    .line 144
    const/16 v5, 0x14

    new-array v5, v5, [F

    iput-object v5, p0, Ljackpal/androidterm/emulatorview/Bitmap4x8FontRenderer;->mColorMatrix:[F

    .line 145
    iget-object v5, p0, Ljackpal/androidterm/emulatorview/Bitmap4x8FontRenderer;->mColorMatrix:[F

    const/16 v6, 0x12

    const/high16 v7, 0x3f800000

    aput v7, v5, v6

    .line 147
    :cond_22
    const/4 v1, 0x0

    .local v1, "component":I
    :goto_23
    const/4 v5, 0x3

    if-ge v1, v5, :cond_4b

    .line 148
    rsub-int/lit8 v5, v1, 0x2

    shl-int/lit8 v4, v5, 0x3

    .line 149
    .local v4, "rightShift":I
    shr-int v5, p1, v4

    and-int/lit16 v3, v5, 0xff

    .line 150
    .local v3, "fore":I
    shr-int v5, p2, v4

    and-int/lit16 v0, v5, 0xff

    .line 151
    .local v0, "back":I
    sub-int v2, v0, v3

    .line 152
    .local v2, "delta":I
    iget-object v5, p0, Ljackpal/androidterm/emulatorview/Bitmap4x8FontRenderer;->mColorMatrix:[F

    mul-int/lit8 v6, v1, 0x6

    int-to-float v7, v2

    const v8, 0x3b808081

    mul-float/2addr v7, v8

    aput v7, v5, v6

    .line 153
    iget-object v5, p0, Ljackpal/androidterm/emulatorview/Bitmap4x8FontRenderer;->mColorMatrix:[F

    mul-int/lit8 v6, v1, 0x5

    add-int/lit8 v6, v6, 0x4

    int-to-float v7, v3

    aput v7, v5, v6

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 155
    .end local v0    # "back":I
    .end local v2    # "delta":I
    .end local v3    # "fore":I
    .end local v4    # "rightShift":I
    :cond_4b
    iget-object v5, p0, Ljackpal/androidterm/emulatorview/Bitmap4x8FontRenderer;->mPaint:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v7, p0, Ljackpal/androidterm/emulatorview/Bitmap4x8FontRenderer;->mColorMatrix:[F

    invoke-direct {v6, v7}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 157
    .end local v1    # "component":I
    :cond_57
    return-void
.end method


# virtual methods
.method public drawTextRun(Landroid/graphics/Canvas;FFII[CIIZIIIIII)V
    .registers 44
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "lineOffset"    # I
    .param p5, "runWidth"    # I
    .param p6, "text"    # [C
    .param p7, "index"    # I
    .param p8, "count"    # I
    .param p9, "selectionStyle"    # Z
    .param p10, "textStyle"    # I
    .param p11, "cursorOffset"    # I
    .param p12, "cursorIndex"    # I
    .param p13, "cursorIncr"    # I
    .param p14, "cursorWidth"    # I
    .param p15, "cursorMode"    # I

    .prologue
    .line 67
    invoke-static/range {p10 .. p10}, Ljackpal/androidterm/emulatorview/TextStyle;->decodeForeColor(I)I

    move-result v10

    .line 68
    .local v10, "foreColor":I
    invoke-static/range {p10 .. p10}, Ljackpal/androidterm/emulatorview/TextStyle;->decodeBackColor(I)I

    move-result v11

    .line 69
    .local v11, "backColor":I
    invoke-static/range {p10 .. p10}, Ljackpal/androidterm/emulatorview/TextStyle;->decodeEffect(I)I

    move-result v24

    .line 71
    .local v24, "effect":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Ljackpal/androidterm/emulatorview/Bitmap4x8FontRenderer;->mReverseVideo:Z

    and-int/lit8 v2, v24, 0x12

    if-eqz v2, :cond_7e

    const/4 v2, 0x1

    :goto_15
    xor-int v25, v3, v2

    .line 73
    .local v25, "inverse":Z
    if-eqz v25, :cond_1e

    .line 74
    move/from16 v27, v10

    .line 75
    .local v27, "temp":I
    move v10, v11

    .line 76
    move/from16 v11, v27

    .line 79
    .end local v27    # "temp":I
    :cond_1e
    and-int/lit8 v2, v24, 0x1

    if-eqz v2, :cond_80

    const/16 v23, 0x1

    .line 80
    .local v23, "bold":Z
    :goto_24
    if-eqz v23, :cond_2c

    const/16 v2, 0x8

    if-ge v10, v2, :cond_2c

    .line 82
    add-int/lit8 v10, v10, 0x8

    .line 84
    :cond_2c
    and-int/lit8 v2, v24, 0x8

    if-eqz v2, :cond_83

    const/16 v22, 0x1

    .line 85
    .local v22, "blink":Z
    :goto_32
    if-eqz v22, :cond_3a

    const/16 v2, 0x8

    if-ge v11, v2, :cond_3a

    .line 87
    add-int/lit8 v11, v11, 0x8

    .line 90
    :cond_3a
    if-eqz p9, :cond_3e

    .line 91
    const/16 v11, 0x103

    .line 94
    :cond_3e
    and-int/lit8 v2, v24, 0x20

    if-eqz v2, :cond_86

    const/16 v26, 0x1

    .line 96
    .local v26, "invisible":Z
    :goto_44
    if-eqz v26, :cond_47

    .line 97
    move v10, v11

    :cond_47
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 100
    invoke-direct/range {v2 .. v11}, Ljackpal/androidterm/emulatorview/Bitmap4x8FontRenderer;->drawTextRunHelper(Landroid/graphics/Canvas;FFI[CIIII)V

    .line 103
    move/from16 v0, p4

    move/from16 v1, p11

    if-gt v0, v1, :cond_7d

    add-int v2, p4, p8

    move/from16 v0, p11

    if-ge v0, v2, :cond_7d

    .line 104
    sub-int v18, p11, p4

    const/16 v19, 0x1

    const/16 v20, 0x102

    const/16 v21, 0x103

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move/from16 v14, p2

    move/from16 v15, p3

    move/from16 v16, p11

    move-object/from16 v17, p6

    invoke-direct/range {v12 .. v21}, Ljackpal/androidterm/emulatorview/Bitmap4x8FontRenderer;->drawTextRunHelper(Landroid/graphics/Canvas;FFI[CIIII)V

    .line 107
    :cond_7d
    return-void

    .line 71
    .end local v22    # "blink":Z
    .end local v23    # "bold":Z
    .end local v25    # "inverse":Z
    .end local v26    # "invisible":Z
    :cond_7e
    const/4 v2, 0x0

    goto :goto_15

    .line 79
    .restart local v25    # "inverse":Z
    :cond_80
    const/16 v23, 0x0

    goto :goto_24

    .line 84
    .restart local v23    # "bold":Z
    :cond_83
    const/16 v22, 0x0

    goto :goto_32

    .line 94
    .restart local v22    # "blink":Z
    :cond_86
    const/16 v26, 0x0

    goto :goto_44
.end method

.method public getCharacterHeight()I
    .registers 2

    .prologue
    .line 56
    const/16 v0, 0x8

    return v0
.end method

.method public getCharacterWidth()F
    .registers 2

    .prologue
    .line 52
    const/high16 v0, 0x40800000

    return v0
.end method

.method public getTopMargin()I
    .registers 2

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method
