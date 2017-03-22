.class Lhecticman/jsterm/emulatorview/PaintRenderer;
.super Lhecticman/jsterm/emulatorview/BaseTextRenderer;
.source "EmulatorView.java"


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
    .line 1449
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x58

    aput-char v2, v0, v1

    sput-object v0, Lhecticman/jsterm/emulatorview/PaintRenderer;->EXAMPLE_CHAR:[C

    .line 1387
    return-void
.end method

.method public constructor <init>(ILhecticman/jsterm/emulatorview/ColorScheme;)V
    .registers 7
    .param p1, "fontSize"    # I
    .param p2, "scheme"    # Lhecticman/jsterm/emulatorview/ColorScheme;

    .prologue
    const/4 v3, 0x1

    .line 1389
    invoke-direct {p0, p2}, Lhecticman/jsterm/emulatorview/BaseTextRenderer;-><init>(Lhecticman/jsterm/emulatorview/ColorScheme;)V

    .line 1390
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lhecticman/jsterm/emulatorview/PaintRenderer;->mTextPaint:Landroid/graphics/Paint;

    .line 1391
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/PaintRenderer;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1392
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/PaintRenderer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1393
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/PaintRenderer;->mTextPaint:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1395
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/PaintRenderer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontSpacing()F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lhecticman/jsterm/emulatorview/PaintRenderer;->mCharHeight:I

    .line 1396
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/PaintRenderer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lhecticman/jsterm/emulatorview/PaintRenderer;->mCharAscent:I

    .line 1397
    iget v0, p0, Lhecticman/jsterm/emulatorview/PaintRenderer;->mCharHeight:I

    iget v1, p0, Lhecticman/jsterm/emulatorview/PaintRenderer;->mCharAscent:I

    add-int/2addr v0, v1

    iput v0, p0, Lhecticman/jsterm/emulatorview/PaintRenderer;->mCharDescent:I

    .line 1398
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/PaintRenderer;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Lhecticman/jsterm/emulatorview/PaintRenderer;->EXAMPLE_CHAR:[C

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v0

    iput v0, p0, Lhecticman/jsterm/emulatorview/PaintRenderer;->mCharWidth:F

    .line 1399
    return-void
.end method


# virtual methods
.method public drawTextRun(Landroid/graphics/Canvas;FFII[CIIZII)V
    .registers 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "lineOffset"    # I
    .param p5, "runWidth"    # I
    .param p6, "text"    # [C
    .param p7, "index"    # I
    .param p8, "count"    # I
    .param p9, "cursor"    # Z
    .param p10, "foreColor"    # I
    .param p11, "backColor"    # I

    .prologue
    .line 1404
    if-eqz p9, :cond_70

    .line 1405
    iget-object v1, p0, Lhecticman/jsterm/emulatorview/PaintRenderer;->mTextPaint:Landroid/graphics/Paint;

    const v3, -0x7f7f80

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1409
    :goto_a
    move/from16 v0, p4

    int-to-float v1, v0

    iget v3, p0, Lhecticman/jsterm/emulatorview/PaintRenderer;->mCharWidth:F

    mul-float/2addr v1, v3

    add-float v2, p2, v1

    .line 1410
    .local v2, "left":F
    iget v1, p0, Lhecticman/jsterm/emulatorview/PaintRenderer;->mCharAscent:I

    int-to-float v1, v1

    add-float/2addr v1, p3

    iget v3, p0, Lhecticman/jsterm/emulatorview/PaintRenderer;->mCharDescent:I

    int-to-float v3, v3

    sub-float v3, v1, v3

    .line 1411
    move/from16 v0, p5

    int-to-float v1, v0

    iget v4, p0, Lhecticman/jsterm/emulatorview/PaintRenderer;->mCharWidth:F

    mul-float/2addr v1, v4

    add-float v4, v2, v1

    .line 1412
    iget-object v6, p0, Lhecticman/jsterm/emulatorview/PaintRenderer;->mTextPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v5, p3

    .line 1410
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1413
    and-int/lit8 v1, p10, 0x8

    if-eqz v1, :cond_7c

    const/4 v10, 0x1

    .line 1414
    .local v10, "bold":Z
    :goto_2f
    and-int/lit8 v1, p11, 0x8

    if-eqz v1, :cond_7e

    const/4 v11, 0x1

    .line 1415
    .local v11, "underline":Z
    :goto_34
    if-eqz v10, :cond_3c

    .line 1416
    iget-object v1, p0, Lhecticman/jsterm/emulatorview/PaintRenderer;->mTextPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 1418
    :cond_3c
    if-eqz v11, :cond_44

    .line 1419
    iget-object v1, p0, Lhecticman/jsterm/emulatorview/PaintRenderer;->mTextPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 1421
    :cond_44
    iget-object v1, p0, Lhecticman/jsterm/emulatorview/PaintRenderer;->mTextPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lhecticman/jsterm/emulatorview/PaintRenderer;->mForePaint:[I

    aget v3, v3, p10

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1422
    iget v1, p0, Lhecticman/jsterm/emulatorview/PaintRenderer;->mCharDescent:I

    int-to-float v1, v1

    sub-float v8, p3, v1

    iget-object v9, p0, Lhecticman/jsterm/emulatorview/PaintRenderer;->mTextPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move-object/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move v7, v2

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 1423
    if-eqz v10, :cond_67

    .line 1424
    iget-object v1, p0, Lhecticman/jsterm/emulatorview/PaintRenderer;->mTextPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 1426
    :cond_67
    if-eqz v11, :cond_6f

    .line 1427
    iget-object v1, p0, Lhecticman/jsterm/emulatorview/PaintRenderer;->mTextPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 1429
    :cond_6f
    return-void

    .line 1407
    .end local v2    # "left":F
    .end local v10    # "bold":Z
    .end local v11    # "underline":Z
    :cond_70
    iget-object v1, p0, Lhecticman/jsterm/emulatorview/PaintRenderer;->mTextPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lhecticman/jsterm/emulatorview/PaintRenderer;->mBackPaint:[I

    and-int/lit8 v4, p11, 0x7

    aget v3, v3, v4

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_a

    .line 1413
    .restart local v2    # "left":F
    :cond_7c
    const/4 v10, 0x0

    goto :goto_2f

    .line 1414
    .restart local v10    # "bold":Z
    :cond_7e
    const/4 v11, 0x0

    goto :goto_34
.end method

.method public getCharacterHeight()I
    .registers 2

    .prologue
    .line 1432
    iget v0, p0, Lhecticman/jsterm/emulatorview/PaintRenderer;->mCharHeight:I

    return v0
.end method

.method public getCharacterWidth()F
    .registers 2

    .prologue
    .line 1436
    iget v0, p0, Lhecticman/jsterm/emulatorview/PaintRenderer;->mCharWidth:F

    return v0
.end method

.method public getTopMargin()I
    .registers 2

    .prologue
    .line 1440
    iget v0, p0, Lhecticman/jsterm/emulatorview/PaintRenderer;->mCharDescent:I

    return v0
.end method
