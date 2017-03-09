.class abstract Ljackpal/androidterm/emulatorview/BaseTextRenderer;
.super Ljava/lang/Object;
.source "BaseTextRenderer.java"

# interfaces
.implements Ljackpal/androidterm/emulatorview/TextRenderer;


# static fields
.field static final defaultColorScheme:Ljackpal/androidterm/emulatorview/ColorScheme;

.field private static final mScaleType:Landroid/graphics/Matrix$ScaleToFit;

.field protected static final sXterm256Paint:[I


# instance fields
.field private final mAltCursor:Landroid/graphics/Path;

.field private final mCopyRedToAlphaPaint:Landroid/graphics/Paint;

.field private final mCtrlCursor:Landroid/graphics/Path;

.field private mCursorBitmap:Landroid/graphics/Bitmap;

.field private mCursorBitmapCursorMode:I

.field private final mCursorPaint:Landroid/graphics/Paint;

.field private final mCursorScreenPaint:Landroid/graphics/Paint;

.field private final mCursorStrokePaint:Landroid/graphics/Paint;

.field private final mFnCursor:Landroid/graphics/Path;

.field private mLastCharHeight:F

.field private mLastCharWidth:F

.field protected mPalette:[I

.field protected mReverseVideo:Z

.field private mScaleMatrix:Landroid/graphics/Matrix;

.field private final mShiftCursor:Landroid/graphics/Path;

.field private mTempDst:Landroid/graphics/RectF;

.field private mTempSrc:Landroid/graphics/RectF;

.field private mWorkBitmap:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 33
    const/16 v0, 0x100

    new-array v0, v0, [I

    fill-array-data v0, :array_1a

    sput-object v0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->sXterm256Paint:[I

    .line 299
    new-instance v0, Ljackpal/androidterm/emulatorview/ColorScheme;

    const v1, -0x333334

    const/high16 v2, -0x1000000

    invoke-direct {v0, v1, v2}, Ljackpal/androidterm/emulatorview/ColorScheme;-><init>(II)V

    sput-object v0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->defaultColorScheme:Ljackpal/androidterm/emulatorview/ColorScheme;

    .line 315
    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    sput-object v0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mScaleType:Landroid/graphics/Matrix$ScaleToFit;

    return-void

    .line 33
    :array_1a
    .array-data 4
        -0x1000000
        -0x330000
        -0xff3300
        -0x323300
        -0xffff12
        -0x32ff33
        -0xff3233
        -0x1a1a1b
        -0x808081
        -0x10000
        -0xff0100
        -0x100
        -0xa3a301
        -0xff01
        -0xff0001
        -0x1
        -0x1000000
        -0xffffa1
        -0xffff79
        -0xffff51
        -0xffff29
        -0xffff01
        -0xffa100
        -0xffa0a1
        -0xffa079
        -0xffa051
        -0xffa029
        -0xffa001
        -0xff7900
        -0xff78a1
        -0xff7879
        -0xff7851
        -0xff7829
        -0xff7801
        -0xff5100
        -0xff50a1
        -0xff5079
        -0xff5051
        -0xff5029
        -0xff5001
        -0xff2900
        -0xff28a1
        -0xff2879
        -0xff2851
        -0xff2829
        -0xff2801
        -0xff0100
        -0xff00a1
        -0xff0079
        -0xff0051
        -0xff0029
        -0xff0001
        -0xa10000
        -0xa0ffa1
        -0xa0ff79
        -0xa0ff51
        -0xa0ff29
        -0xa0ff01
        -0xa0a100
        -0xa0a0a1
        -0xa0a079
        -0xa0a051
        -0xa0a029
        -0xa0a001
        -0xa07900
        -0xa078a1
        -0xa07879
        -0xa07851
        -0xa07829
        -0xa07801
        -0xa05100
        -0xa050a1
        -0xa05079
        -0xa05051
        -0xa05029
        -0xa05001
        -0xa02900
        -0xa028a1
        -0xa02879
        -0xa02851
        -0xa02829
        -0xa02801
        -0xa00100
        -0xa000a1
        -0xa00079
        -0xa00051
        -0xa00029
        -0xa00001
        -0x790000
        -0x78ffa1
        -0x78ff79
        -0x78ff51
        -0x78ff29
        -0x78ff01
        -0x78a100
        -0x78a0a1
        -0x78a079
        -0x78a051
        -0x78a029
        -0x78a001
        -0x787900
        -0x7878a1
        -0x787879
        -0x787851
        -0x787829
        -0x787801
        -0x785100
        -0x7850a1
        -0x785079
        -0x785051
        -0x785029
        -0x785001
        -0x782900
        -0x7828a1
        -0x782879
        -0x782851
        -0x782829
        -0x782801
        -0x780100
        -0x7800a1
        -0x780079
        -0x780051
        -0x780029
        -0x780001
        -0x510000
        -0x50ffa1
        -0x50ff79
        -0x50ff51
        -0x50ff29
        -0x50ff01
        -0x50a100
        -0x50a0a1
        -0x50a079
        -0x50a051
        -0x50a029
        -0x50a001
        -0x507900
        -0x5078a1
        -0x507879
        -0x507851
        -0x507829
        -0x507801
        -0x505100
        -0x5050a1
        -0x505079
        -0x505051
        -0x505029
        -0x505001
        -0x502900
        -0x5028a1
        -0x502879
        -0x502851
        -0x502829
        -0x502801
        -0x500100
        -0x5000a1
        -0x500079
        -0x500051
        -0x500029
        -0x500001
        -0x290000
        -0x28ffa1
        -0x28ff79
        -0x28ff51
        -0x28ff29
        -0x28ff01
        -0x28a100
        -0x28a0a1
        -0x28a079
        -0x28a051
        -0x28a029
        -0x28a001
        -0x287900
        -0x2878a1
        -0x287879
        -0x287851
        -0x287829
        -0x287801
        -0x285100
        -0x2850a1
        -0x285079
        -0x285051
        -0x285029
        -0x285001
        -0x282900
        -0x2828a1
        -0x282879
        -0x282851
        -0x282829
        -0x282801
        -0x280100
        -0x2800a1
        -0x280079
        -0x280051
        -0x280029
        -0x280001
        -0x10000
        -0xffa1
        -0xff79
        -0xff51
        -0xff29
        -0xff01
        -0xa100
        -0xa0a1
        -0xa079
        -0xa051
        -0xa029
        -0xa001
        -0x7900
        -0x78a1
        -0x7879
        -0x7851
        -0x7829
        -0x7801
        -0x5100
        -0x50a1
        -0x5079
        -0x5051
        -0x5029
        -0x5001
        -0x2900
        -0x28a1
        -0x2879
        -0x2851
        -0x2829
        -0x2801
        -0x100
        -0xa1
        -0x79
        -0x51
        -0x29
        -0x1
        -0xf7f7f8
        -0xededee
        -0xe3e3e4
        -0xd9d9da
        -0xcfcfd0
        -0xc5c5c6
        -0xbbbbbc
        -0xb1b1b2
        -0xa7a7a8
        -0x9d9d9e
        -0x939394
        -0x89898a
        -0x7f7f80
        -0x757576
        -0x6b6b6c
        -0x616162
        -0x575758
        -0x4d4d4e
        -0x434344
        -0x39393a
        -0x2f2f30
        -0x252526
        -0x1b1b1c
        -0x111112
    .end array-data
.end method

.method public constructor <init>(Ljackpal/androidterm/emulatorview/ColorScheme;)V
    .registers 10
    .param p1, "scheme"    # Ljackpal/androidterm/emulatorview/ColorScheme;

    .prologue
    const/high16 v7, 0x3f400000

    const/high16 v6, 0x3e800000

    const/high16 v5, 0x3f000000

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    const/4 v1, -0x1

    iput v1, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mCursorBitmapCursorMode:I

    .line 322
    if-nez p1, :cond_13

    .line 323
    sget-object p1, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->defaultColorScheme:Ljackpal/androidterm/emulatorview/ColorScheme;

    .line 325
    :cond_13
    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->setDefaultColors(Ljackpal/androidterm/emulatorview/ColorScheme;)V

    .line 327
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mCursorScreenPaint:Landroid/graphics/Paint;

    .line 328
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mCursorScreenPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljackpal/androidterm/emulatorview/ColorScheme;->getCursorBackColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 332
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mCursorPaint:Landroid/graphics/Paint;

    .line 333
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mCursorPaint:Landroid/graphics/Paint;

    const v2, -0x6f6f70

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 334
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mCursorPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 336
    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mCursorPaint:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mCursorStrokePaint:Landroid/graphics/Paint;

    .line 337
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mCursorStrokePaint:Landroid/graphics/Paint;

    const v2, 0x3dcccccd

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 338
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mCursorStrokePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 340
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mCopyRedToAlphaPaint:Landroid/graphics/Paint;

    .line 341
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 342
    .local v0, "cm":Landroid/graphics/ColorMatrix;
    const/16 v1, 0x14

    new-array v1, v1, [F

    fill-array-data v1, :array_e8

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 347
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mCopyRedToAlphaPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 349
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mShiftCursor:Landroid/graphics/Path;

    .line 350
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mShiftCursor:Landroid/graphics/Path;

    const v2, 0x3ea8f5c3

    invoke-virtual {v1, v5, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 351
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mShiftCursor:Landroid/graphics/Path;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 353
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mAltCursor:Landroid/graphics/Path;

    .line 354
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mAltCursor:Landroid/graphics/Path;

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 355
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mAltCursor:Landroid/graphics/Path;

    const v2, 0x3f28f5c3

    invoke-virtual {v1, v5, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 356
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mAltCursor:Landroid/graphics/Path;

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 358
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mCtrlCursor:Landroid/graphics/Path;

    .line 359
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mCtrlCursor:Landroid/graphics/Path;

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 360
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mCtrlCursor:Landroid/graphics/Path;

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 361
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mCtrlCursor:Landroid/graphics/Path;

    invoke-virtual {v1, v4, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 363
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mFnCursor:Landroid/graphics/Path;

    .line 364
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mFnCursor:Landroid/graphics/Path;

    invoke-virtual {v1, v3, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 365
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mFnCursor:Landroid/graphics/Path;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 366
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mFnCursor:Landroid/graphics/Path;

    invoke-virtual {v1, v3, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 369
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mTempSrc:Landroid/graphics/RectF;

    .line 370
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mTempSrc:Landroid/graphics/RectF;

    invoke-virtual {v1, v4, v4, v3, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 371
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mTempDst:Landroid/graphics/RectF;

    .line 372
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mScaleMatrix:Landroid/graphics/Matrix;

    .line 373
    return-void

    .line 342
    nop

    :array_e8
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static cloneDefaultColors()[I
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 388
    sget-object v2, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->sXterm256Paint:[I

    array-length v1, v2

    .line 389
    .local v1, "length":I
    const/16 v2, 0x104

    new-array v0, v2, [I

    .line 390
    .local v0, "clone":[I
    sget-object v2, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->sXterm256Paint:[I

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 391
    return-object v0
.end method

.method private drawCursorHelper(Landroid/graphics/Canvas;Landroid/graphics/Path;II)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "path"    # Landroid/graphics/Path;
    .param p3, "mode"    # I
    .param p4, "shift"    # I

    .prologue
    .line 438
    shr-int v0, p3, p4

    and-int/lit8 v0, v0, 0x3

    packed-switch v0, :pswitch_data_14

    .line 446
    :goto_7
    return-void

    .line 440
    :pswitch_8
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mCursorStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_7

    .line 443
    :pswitch_e
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mCursorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_7

    .line 438
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_8
        :pswitch_e
    .end packed-switch
.end method

.method private setDefaultColors(Ljackpal/androidterm/emulatorview/ColorScheme;)V
    .registers 5
    .param p1, "scheme"    # Ljackpal/androidterm/emulatorview/ColorScheme;

    .prologue
    .line 380
    invoke-static {}, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->cloneDefaultColors()[I

    move-result-object v0

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mPalette:[I

    .line 381
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mPalette:[I

    const/16 v1, 0x100

    invoke-virtual {p1}, Ljackpal/androidterm/emulatorview/ColorScheme;->getForeColor()I

    move-result v2

    aput v2, v0, v1

    .line 382
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mPalette:[I

    const/16 v1, 0x101

    invoke-virtual {p1}, Ljackpal/androidterm/emulatorview/ColorScheme;->getBackColor()I

    move-result v2

    aput v2, v0, v1

    .line 383
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mPalette:[I

    const/16 v1, 0x102

    invoke-virtual {p1}, Ljackpal/androidterm/emulatorview/ColorScheme;->getCursorForeColor()I

    move-result v2

    aput v2, v0, v1

    .line 384
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mPalette:[I

    const/16 v1, 0x103

    invoke-virtual {p1}, Ljackpal/androidterm/emulatorview/ColorScheme;->getCursorBackColor()I

    move-result v2

    aput v2, v0, v1

    .line 385
    return-void
.end method


# virtual methods
.method protected drawCursorImp(Landroid/graphics/Canvas;FFFFI)V
    .registers 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "charWidth"    # F
    .param p5, "charHeight"    # F
    .param p6, "cursorMode"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 396
    if-nez p6, :cond_12

    .line 397
    sub-float v2, p3, p5

    add-float v3, p2, p4

    iget-object v5, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mCursorScreenPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 435
    :goto_11
    return-void

    .line 405
    :cond_12
    iget v0, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mLastCharWidth:F

    cmpl-float v0, p4, v0

    if-nez v0, :cond_1e

    iget v0, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mLastCharHeight:F

    cmpl-float v0, p5, v0

    if-eqz v0, :cond_48

    .line 406
    :cond_1e
    iput p4, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mLastCharWidth:F

    .line 407
    iput p5, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mLastCharHeight:F

    .line 408
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mTempDst:Landroid/graphics/RectF;

    invoke-virtual {v0, v4, v4, p4, p5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 409
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mScaleMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mTempSrc:Landroid/graphics/RectF;

    iget-object v2, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mTempDst:Landroid/graphics/RectF;

    sget-object v3, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mScaleType:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 410
    float-to-int v0, p4

    float-to-int v1, p5

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mCursorBitmap:Landroid/graphics/Bitmap;

    .line 412
    float-to-int v0, p4

    float-to-int v1, p5

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mWorkBitmap:Landroid/graphics/Bitmap;

    .line 414
    iput v5, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mCursorBitmapCursorMode:I

    .line 419
    :cond_48
    iget v0, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mCursorBitmapCursorMode:I

    if-eq p6, v0, :cond_89

    .line 420
    iput p6, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mCursorBitmapCursorMode:I

    .line 421
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mWorkBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v5}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 422
    new-instance v7, Landroid/graphics/Canvas;

    iget-object v0, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mWorkBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v7, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 423
    .local v7, "workCanvas":Landroid/graphics/Canvas;
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 424
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mShiftCursor:Landroid/graphics/Path;

    invoke-direct {p0, v7, v0, p6, v8}, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->drawCursorHelper(Landroid/graphics/Canvas;Landroid/graphics/Path;II)V

    .line 425
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mAltCursor:Landroid/graphics/Path;

    const/4 v1, 0x2

    invoke-direct {p0, v7, v0, p6, v1}, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->drawCursorHelper(Landroid/graphics/Canvas;Landroid/graphics/Path;II)V

    .line 426
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mCtrlCursor:Landroid/graphics/Path;

    const/4 v1, 0x4

    invoke-direct {p0, v7, v0, p6, v1}, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->drawCursorHelper(Landroid/graphics/Canvas;Landroid/graphics/Path;II)V

    .line 427
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mFnCursor:Landroid/graphics/Path;

    const/4 v1, 0x6

    invoke-direct {p0, v7, v0, p6, v1}, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->drawCursorHelper(Landroid/graphics/Canvas;Landroid/graphics/Path;II)V

    .line 429
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mCursorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v8}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 430
    new-instance v6, Landroid/graphics/Canvas;

    iget-object v0, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mCursorBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v6, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 431
    .local v6, "bitmapCanvas":Landroid/graphics/Canvas;
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mWorkBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mCopyRedToAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v0, v4, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 434
    .end local v6    # "bitmapCanvas":Landroid/graphics/Canvas;
    .end local v7    # "workCanvas":Landroid/graphics/Canvas;
    :cond_89
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mCursorBitmap:Landroid/graphics/Bitmap;

    sub-float v1, p3, p5

    iget-object v2, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mCursorScreenPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_11
.end method

.method public setReverseVideo(Z)V
    .registers 2
    .param p1, "reverseVideo"    # Z

    .prologue
    .line 376
    iput-boolean p1, p0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->mReverseVideo:Z

    .line 377
    return-void
.end method
