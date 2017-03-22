.class Lhecticman/jsterm/emulatorview/Bitmap4x8FontRenderer;
.super Lhecticman/jsterm/emulatorview/BaseTextRenderer;
.source "EmulatorView.java"


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
.method public constructor <init>(Landroid/content/res/Resources;Lhecticman/jsterm/emulatorview/ColorScheme;)V
    .registers 7
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "scheme"    # Lhecticman/jsterm/emulatorview/ColorScheme;

    .prologue
    .line 1315
    invoke-direct {p0, p2}, Lhecticman/jsterm/emulatorview/BaseTextRenderer;-><init>(Lhecticman/jsterm/emulatorview/ColorScheme;)V

    .line 1316
    sget v1, Lhecticman/jsterm/emulatorview/compat/AndroidCompat;->SDK:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_24

    sget v0, Lhecticman/jsterm/emulatorview/R$drawable;->atari_small:I

    .line 1318
    .local v0, "fontResource":I
    :goto_a
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lhecticman/jsterm/emulatorview/Bitmap4x8FontRenderer;->mFont:Landroid/graphics/Bitmap;

    .line 1319
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lhecticman/jsterm/emulatorview/Bitmap4x8FontRenderer;->mPaint:Landroid/graphics/Paint;

    .line 1320
    iget-object v1, p0, Lhecticman/jsterm/emulatorview/Bitmap4x8FontRenderer;->mPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1321
    return-void

    .line 1317
    .end local v0    # "fontResource":I
    :cond_24
    sget v0, Lhecticman/jsterm/emulatorview/R$drawable;->atari_small_nodpi:I

    goto :goto_a
.end method

.method private setColorMatrix(II)V
    .registers 12
    .param p1, "foreColor"    # I
    .param p2, "backColor"    # I

    .prologue
    .line 1365
    iget v5, p0, Lhecticman/jsterm/emulatorview/Bitmap4x8FontRenderer;->mCurrentForeColor:I

    if-ne p1, v5, :cond_c

    .line 1366
    iget v5, p0, Lhecticman/jsterm/emulatorview/Bitmap4x8FontRenderer;->mCurrentBackColor:I

    if-ne p2, v5, :cond_c

    .line 1367
    iget-object v5, p0, Lhecticman/jsterm/emulatorview/Bitmap4x8FontRenderer;->mColorMatrix:[F

    if-nez v5, :cond_32

    .line 1368
    :cond_c
    iput p1, p0, Lhecticman/jsterm/emulatorview/Bitmap4x8FontRenderer;->mCurrentForeColor:I

    .line 1369
    iput p2, p0, Lhecticman/jsterm/emulatorview/Bitmap4x8FontRenderer;->mCurrentBackColor:I

    .line 1370
    iget-object v5, p0, Lhecticman/jsterm/emulatorview/Bitmap4x8FontRenderer;->mColorMatrix:[F

    if-nez v5, :cond_22

    .line 1371
    const/16 v5, 0x14

    new-array v5, v5, [F

    iput-object v5, p0, Lhecticman/jsterm/emulatorview/Bitmap4x8FontRenderer;->mColorMatrix:[F

    .line 1372
    iget-object v5, p0, Lhecticman/jsterm/emulatorview/Bitmap4x8FontRenderer;->mColorMatrix:[F

    const/16 v6, 0x12

    const/high16 v7, 0x3f800000

    aput v7, v5, v6

    .line 1374
    :cond_22
    const/4 v1, 0x0

    .local v1, "component":I
    :goto_23
    const/4 v5, 0x3

    if-lt v1, v5, :cond_33

    .line 1382
    iget-object v5, p0, Lhecticman/jsterm/emulatorview/Bitmap4x8FontRenderer;->mPaint:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v7, p0, Lhecticman/jsterm/emulatorview/Bitmap4x8FontRenderer;->mColorMatrix:[F

    invoke-direct {v6, v7}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1384
    .end local v1    # "component":I
    :cond_32
    return-void

    .line 1375
    .restart local v1    # "component":I
    :cond_33
    rsub-int/lit8 v5, v1, 0x2

    shl-int/lit8 v4, v5, 0x3

    .line 1376
    .local v4, "rightShift":I
    shr-int v5, p1, v4

    and-int/lit16 v3, v5, 0xff

    .line 1377
    .local v3, "fore":I
    shr-int v5, p2, v4

    and-int/lit16 v0, v5, 0xff

    .line 1378
    .local v0, "back":I
    sub-int v2, v0, v3

    .line 1379
    .local v2, "delta":I
    iget-object v5, p0, Lhecticman/jsterm/emulatorview/Bitmap4x8FontRenderer;->mColorMatrix:[F

    mul-int/lit8 v6, v1, 0x6

    int-to-float v7, v2

    const v8, 0x3b808081

    mul-float/2addr v7, v8

    aput v7, v5, v6

    .line 1380
    iget-object v5, p0, Lhecticman/jsterm/emulatorview/Bitmap4x8FontRenderer;->mColorMatrix:[F

    mul-int/lit8 v6, v1, 0x5

    add-int/lit8 v6, v6, 0x4

    int-to-float v7, v3

    aput v7, v5, v6

    .line 1374
    add-int/lit8 v1, v1, 0x1

    goto :goto_23
.end method


# virtual methods
.method public drawTextRun(Landroid/graphics/Canvas;FFII[CIIZII)V
    .registers 26
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
    .line 1338
    iget-object v11, p0, Lhecticman/jsterm/emulatorview/Bitmap4x8FontRenderer;->mForePaint:[I

    aget v12, v11, p10

    .line 1339
    if-eqz p9, :cond_2c

    const v11, -0x7f7f80

    .line 1338
    :goto_9
    invoke-direct {p0, v12, v11}, Lhecticman/jsterm/emulatorview/Bitmap4x8FontRenderer;->setColorMatrix(II)V

    .line 1340
    move/from16 v0, p2

    float-to-int v11, v0

    mul-int/lit8 v12, p4, 0x4

    add-int v5, v11, v12

    .line 1341
    .local v5, "destX":I
    move/from16 v0, p3

    float-to-int v6, v0

    .line 1342
    .local v6, "destY":I
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 1343
    .local v8, "srcRect":Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 1344
    .local v4, "destRect":Landroid/graphics/Rect;
    add-int/lit8 v11, v6, -0x8

    iput v11, v4, Landroid/graphics/Rect;->top:I

    .line 1345
    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 1346
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_27
    move/from16 v0, p8

    if-lt v7, v0, :cond_33

    .line 1362
    return-void

    .line 1339
    .end local v4    # "destRect":Landroid/graphics/Rect;
    .end local v5    # "destX":I
    .end local v6    # "destY":I
    .end local v7    # "i":I
    .end local v8    # "srcRect":Landroid/graphics/Rect;
    :cond_2c
    iget-object v11, p0, Lhecticman/jsterm/emulatorview/Bitmap4x8FontRenderer;->mBackPaint:[I

    and-int/lit8 v13, p11, 0x7

    aget v11, v11, v13

    goto :goto_9

    .line 1348
    .restart local v4    # "destRect":Landroid/graphics/Rect;
    .restart local v5    # "destX":I
    .restart local v6    # "destY":I
    .restart local v7    # "i":I
    .restart local v8    # "srcRect":Landroid/graphics/Rect;
    :cond_33
    add-int v11, v7, p7

    aget-char v11, p6, v11

    and-int/lit16 v11, v11, 0xff

    int-to-char v1, v11

    .line 1349
    .local v1, "c":C
    if-nez p9, :cond_40

    const/16 v11, 0x20

    if-eq v1, v11, :cond_62

    :cond_40
    const/16 v11, 0x80

    if-ge v1, v11, :cond_62

    .line 1350
    and-int/lit8 v2, v1, 0x1f

    .line 1351
    .local v2, "cellX":I
    shr-int/lit8 v11, v1, 0x5

    and-int/lit8 v3, v11, 0x3

    .line 1352
    .local v3, "cellY":I
    mul-int/lit8 v9, v2, 0x4

    .line 1353
    .local v9, "srcX":I
    mul-int/lit8 v10, v3, 0x8

    .line 1355
    .local v10, "srcY":I
    add-int/lit8 v11, v9, 0x4

    add-int/lit8 v12, v10, 0x8

    .line 1354
    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 1356
    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1357
    add-int/lit8 v11, v5, 0x4

    iput v11, v4, Landroid/graphics/Rect;->right:I

    .line 1358
    iget-object v11, p0, Lhecticman/jsterm/emulatorview/Bitmap4x8FontRenderer;->mFont:Landroid/graphics/Bitmap;

    iget-object v12, p0, Lhecticman/jsterm/emulatorview/Bitmap4x8FontRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v11, v8, v4, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1360
    .end local v2    # "cellX":I
    .end local v3    # "cellY":I
    .end local v9    # "srcX":I
    .end local v10    # "srcY":I
    :cond_62
    add-int/lit8 v5, v5, 0x4

    .line 1346
    add-int/lit8 v7, v7, 0x1

    goto :goto_27
.end method

.method public getCharacterHeight()I
    .registers 2

    .prologue
    .line 1328
    const/16 v0, 0x8

    return v0
.end method

.method public getCharacterWidth()F
    .registers 2

    .prologue
    .line 1324
    const/high16 v0, 0x40800000

    return v0
.end method

.method public getTopMargin()I
    .registers 2

    .prologue
    .line 1332
    const/4 v0, 0x0

    return v0
.end method
