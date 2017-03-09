.class Ljackpal/androidterm/emulatorview/PaintRenderer;
.super Ljackpal/androidterm/emulatorview/BaseTextRenderer;
.source "PaintRenderer.java"


# static fields
.field private static final EXAMPLE_CHAR:[C


# instance fields
.field private mCharAscent:I

.field private mCharDescent:I

.field private mCharHeight:I

.field private mCharWidth:F

.field private mTextPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 145
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x58

    aput-char v2, v0, v1

    sput-object v0, Ljackpal/androidterm/emulatorview/PaintRenderer;->EXAMPLE_CHAR:[C

    return-void
.end method

.method public constructor <init>(ILjackpal/androidterm/emulatorview/ColorScheme;)V
    .registers 7
    .param p1, "fontSize"    # I
    .param p2, "scheme"    # Ljackpal/androidterm/emulatorview/ColorScheme;

    .prologue
    const/4 v3, 0x1

    .line 27
    invoke-direct {p0, p2}, Ljackpal/androidterm/emulatorview/BaseTextRenderer;-><init>(Ljackpal/androidterm/emulatorview/ColorScheme;)V

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mTextPaint:Landroid/graphics/Paint;

    .line 29
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 30
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 31
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mTextPaint:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 33
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontSpacing()F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mCharHeight:I

    .line 34
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mCharAscent:I

    .line 35
    iget v0, p0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mCharHeight:I

    iget v1, p0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mCharAscent:I

    add-int/2addr v0, v1

    iput v0, p0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mCharDescent:I

    .line 36
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Ljackpal/androidterm/emulatorview/PaintRenderer;->EXAMPLE_CHAR:[C

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v0

    iput v0, p0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mCharWidth:F

    .line 37
    return-void
.end method


# virtual methods
.method public drawTextRun(Landroid/graphics/Canvas;FFII[CIIZIIIIII)V
    .registers 53
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
    .line 43
    invoke-static/range {p10 .. p10}, Ljackpal/androidterm/emulatorview/TextStyle;->decodeForeColor(I)I

    move-result v31

    .line 44
    .local v31, "foreColor":I
    invoke-static/range {p10 .. p10}, Ljackpal/androidterm/emulatorview/TextStyle;->decodeBackColor(I)I

    move-result v26

    .line 45
    .local v26, "backColor":I
    invoke-static/range {p10 .. p10}, Ljackpal/androidterm/emulatorview/TextStyle;->decodeEffect(I)I

    move-result v30

    .line 47
    .local v30, "effect":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mReverseVideo:Z

    and-int/lit8 v2, v30, 0x12

    if-eqz v2, :cond_15f

    const/4 v2, 0x1

    :goto_15
    xor-int v32, v4, v2

    .line 49
    .local v32, "inverse":Z
    if-eqz v32, :cond_1f

    .line 50
    move/from16 v34, v31

    .line 51
    .local v34, "temp":I
    move/from16 v31, v26

    .line 52
    move/from16 v26, v34

    .line 55
    .end local v34    # "temp":I
    :cond_1f
    if-eqz p9, :cond_23

    .line 56
    const/16 v26, 0x103

    .line 59
    :cond_23
    and-int/lit8 v2, v30, 0x8

    if-eqz v2, :cond_162

    const/16 v27, 0x1

    .line 60
    .local v27, "blink":Z
    :goto_29
    if-eqz v27, :cond_33

    const/16 v2, 0x8

    move/from16 v0, v26

    if-ge v0, v2, :cond_33

    .line 61
    add-int/lit8 v26, v26, 0x8

    .line 63
    :cond_33
    move-object/from16 v0, p0

    iget-object v2, v0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v4, v0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mPalette:[I

    aget v4, v4, v26

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    move/from16 v0, p4

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v4, v0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mCharWidth:F

    mul-float/2addr v2, v4

    add-float v3, p2, v2

    .line 66
    .local v3, "left":F
    move-object/from16 v0, p0

    iget v2, v0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mCharAscent:I

    int-to-float v2, v2

    add-float v2, v2, p3

    move-object/from16 v0, p0

    iget v4, v0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mCharDescent:I

    int-to-float v4, v4

    sub-float v4, v2, v4

    move/from16 v0, p5

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v5, v0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mCharWidth:F

    mul-float/2addr v2, v5

    add-float v5, v3, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 70
    move/from16 v0, p4

    move/from16 v1, p11

    if-gt v0, v1, :cond_166

    add-int v2, p4, p5

    move/from16 v0, p11

    if-ge v0, v2, :cond_166

    const/16 v29, 0x1

    .line 71
    .local v29, "cursorVisible":Z
    :goto_7b
    const/4 v14, 0x0

    .line 72
    .local v14, "cursorX":F
    if-eqz v29, :cond_a3

    .line 73
    move/from16 v0, p11

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v4, v0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mCharWidth:F

    mul-float/2addr v2, v4

    add-float v14, p2, v2

    .line 74
    float-to-int v2, v14

    int-to-float v6, v2

    move/from16 v0, p14

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v4, v0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mCharWidth:F

    mul-float v8, v2, v4

    move-object/from16 v0, p0

    iget v2, v0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mCharHeight:I

    int-to-float v9, v2

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v7, p3

    move/from16 v10, p15

    invoke-virtual/range {v4 .. v10}, Ljackpal/androidterm/emulatorview/PaintRenderer;->drawCursorImp(Landroid/graphics/Canvas;FFFFI)V

    .line 77
    :cond_a3
    and-int/lit8 v2, v30, 0x20

    if-eqz v2, :cond_16a

    const/16 v33, 0x1

    .line 78
    .local v33, "invisible":Z
    :goto_a9
    if-nez v33, :cond_15e

    .line 79
    and-int/lit8 v2, v30, 0x1

    if-eqz v2, :cond_16e

    const/16 v28, 0x1

    .line 80
    .local v28, "bold":Z
    :goto_b1
    and-int/lit8 v2, v30, 0x4

    if-eqz v2, :cond_172

    const/16 v36, 0x1

    .line 81
    .local v36, "underline":Z
    :goto_b7
    if-eqz v28, :cond_c1

    .line 82
    move-object/from16 v0, p0

    iget-object v2, v0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mTextPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 84
    :cond_c1
    if-eqz v36, :cond_cb

    .line 85
    move-object/from16 v0, p0

    iget-object v2, v0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mTextPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 88
    :cond_cb
    const/16 v2, 0x8

    move/from16 v0, v31

    if-ge v0, v2, :cond_176

    if-eqz v28, :cond_176

    .line 90
    move-object/from16 v0, p0

    iget-object v2, v0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mPalette:[I

    add-int/lit8 v4, v31, 0x8

    aget v35, v2, v4

    .line 94
    .local v35, "textPaintColor":I
    :goto_db
    move-object/from16 v0, p0

    iget-object v2, v0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mTextPaint:Landroid/graphics/Paint;

    move/from16 v0, v35

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    move-object/from16 v0, p0

    iget v2, v0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mCharDescent:I

    int-to-float v2, v2

    sub-float v9, p3, v2

    .line 98
    .local v9, "textOriginY":F
    if-eqz v29, :cond_17e

    .line 100
    sub-int v7, p12, p7

    .line 101
    .local v7, "countBeforeCursor":I
    add-int v2, v7, p13

    sub-int v18, p8, v2

    .line 102
    .local v18, "countAfterCursor":I
    if-lez v7, :cond_103

    .line 103
    move-object/from16 v0, p0

    iget-object v10, v0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    move-object/from16 v5, p6

    move/from16 v6, p7

    move v8, v3

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 106
    :cond_103
    move-object/from16 v0, p0

    iget-object v2, v0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v4, v0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mPalette:[I

    const/16 v5, 0x102

    aget v4, v4, v5

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v10, p1

    move-object/from16 v11, p6

    move/from16 v12, p12

    move/from16 v13, p13

    move v15, v9

    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 110
    if-lez v18, :cond_14a

    .line 111
    move-object/from16 v0, p0

    iget-object v2, v0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mTextPaint:Landroid/graphics/Paint;

    move/from16 v0, v35

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    add-int v17, p12, p13

    move/from16 v0, p14

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v4, v0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mCharWidth:F

    mul-float/2addr v2, v4

    add-float v19, v14, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v15, p1

    move-object/from16 v16, p6

    move/from16 v20, v9

    invoke-virtual/range {v15 .. v21}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 119
    .end local v7    # "countBeforeCursor":I
    .end local v18    # "countAfterCursor":I
    :cond_14a
    :goto_14a
    if-eqz v28, :cond_154

    .line 120
    move-object/from16 v0, p0

    iget-object v2, v0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mTextPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 122
    :cond_154
    if-eqz v36, :cond_15e

    .line 123
    move-object/from16 v0, p0

    iget-object v2, v0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mTextPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 126
    .end local v9    # "textOriginY":F
    .end local v28    # "bold":Z
    .end local v35    # "textPaintColor":I
    .end local v36    # "underline":Z
    :cond_15e
    return-void

    .line 47
    .end local v3    # "left":F
    .end local v14    # "cursorX":F
    .end local v27    # "blink":Z
    .end local v29    # "cursorVisible":Z
    .end local v32    # "inverse":Z
    .end local v33    # "invisible":Z
    :cond_15f
    const/4 v2, 0x0

    goto/16 :goto_15

    .line 59
    .restart local v32    # "inverse":Z
    :cond_162
    const/16 v27, 0x0

    goto/16 :goto_29

    .line 70
    .restart local v3    # "left":F
    .restart local v27    # "blink":Z
    :cond_166
    const/16 v29, 0x0

    goto/16 :goto_7b

    .line 77
    .restart local v14    # "cursorX":F
    .restart local v29    # "cursorVisible":Z
    :cond_16a
    const/16 v33, 0x0

    goto/16 :goto_a9

    .line 79
    .restart local v33    # "invisible":Z
    :cond_16e
    const/16 v28, 0x0

    goto/16 :goto_b1

    .line 80
    .restart local v28    # "bold":Z
    :cond_172
    const/16 v36, 0x0

    goto/16 :goto_b7

    .line 92
    .restart local v36    # "underline":Z
    :cond_176
    move-object/from16 v0, p0

    iget-object v2, v0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mPalette:[I

    aget v35, v2, v31

    .restart local v35    # "textPaintColor":I
    goto/16 :goto_db

    .line 117
    .restart local v9    # "textOriginY":F
    :cond_17e
    move-object/from16 v0, p0

    iget-object v0, v0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v19, p1

    move-object/from16 v20, p6

    move/from16 v21, p7

    move/from16 v22, p8

    move/from16 v23, v3

    move/from16 v24, v9

    invoke-virtual/range {v19 .. v25}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    goto :goto_14a
.end method

.method public getCharacterHeight()I
    .registers 2

    .prologue
    .line 129
    iget v0, p0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mCharHeight:I

    return v0
.end method

.method public getCharacterWidth()F
    .registers 2

    .prologue
    .line 133
    iget v0, p0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mCharWidth:F

    return v0
.end method

.method public getTopMargin()I
    .registers 2

    .prologue
    .line 137
    iget v0, p0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mCharDescent:I

    return v0
.end method
