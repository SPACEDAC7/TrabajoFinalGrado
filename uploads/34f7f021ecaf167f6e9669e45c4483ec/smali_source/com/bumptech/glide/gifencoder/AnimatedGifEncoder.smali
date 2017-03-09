.class public Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;
.super Ljava/lang/Object;
.source "AnimatedGifEncoder.java"


# static fields
.field private static final MIN_TRANSPARENT_PERCENTAGE:D = 4.0

.field private static final TAG:Ljava/lang/String; = "AnimatedGifEncoder"


# instance fields
.field private closeStream:Z

.field private colorDepth:I

.field private colorTab:[B

.field private delay:I

.field private dispose:I

.field private firstFrame:Z

.field private hasTransparentPixels:Z

.field private height:I

.field private image:Landroid/graphics/Bitmap;

.field private indexedPixels:[B

.field private out:Ljava/io/OutputStream;

.field private palSize:I

.field private pixels:[B

.field private repeat:I

.field private sample:I

.field private sizeSet:Z

.field private started:Z

.field private transIndex:I

.field private transparent:Ljava/lang/Integer;

.field private usedEntry:[Z

.field private width:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->transparent:Ljava/lang/Integer;

    .line 52
    iput v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->repeat:I

    .line 54
    iput v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->delay:I

    .line 56
    iput-boolean v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->started:Z

    .line 70
    const/16 v0, 0x100

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->usedEntry:[Z

    .line 72
    const/4 v0, 0x7

    iput v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->palSize:I

    .line 74
    iput v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->dispose:I

    .line 76
    iput-boolean v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->closeStream:Z

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->firstFrame:Z

    .line 80
    iput-boolean v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->sizeSet:Z

    .line 82
    const/16 v0, 0xa

    iput v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->sample:I

    return-void
.end method

.method private analyzePixels()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    .line 311
    iget-object v8, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->pixels:[B

    array-length v4, v8

    .line 312
    .local v4, "len":I
    div-int/lit8 v5, v4, 0x3

    .line 313
    .local v5, "nPix":I
    new-array v8, v5, [B

    iput-object v8, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->indexedPixels:[B

    .line 314
    new-instance v6, Lcom/bumptech/glide/gifencoder/NeuQuant;

    iget-object v8, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->pixels:[B

    iget v9, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->sample:I

    invoke-direct {v6, v8, v4, v9}, Lcom/bumptech/glide/gifencoder/NeuQuant;-><init>([BII)V

    .line 316
    .local v6, "nq":Lcom/bumptech/glide/gifencoder/NeuQuant;
    invoke-virtual {v6}, Lcom/bumptech/glide/gifencoder/NeuQuant;->process()[B

    move-result-object v8

    iput-object v8, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    .line 318
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1a
    iget-object v8, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    array-length v8, v8

    if-ge v0, v8, :cond_3c

    .line 319
    iget-object v8, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    aget-byte v7, v8, v0

    .line 320
    .local v7, "temp":B
    iget-object v8, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    iget-object v9, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    add-int/lit8 v10, v0, 0x2

    aget-byte v9, v9, v10

    aput-byte v9, v8, v0

    .line 321
    iget-object v8, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    add-int/lit8 v9, v0, 0x2

    aput-byte v7, v8, v9

    .line 322
    iget-object v8, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->usedEntry:[Z

    div-int/lit8 v9, v0, 0x3

    aput-boolean v11, v8, v9

    .line 318
    add-int/lit8 v0, v0, 0x3

    goto :goto_1a

    .line 325
    .end local v7    # "temp":B
    :cond_3c
    const/4 v2, 0x0

    .line 326
    .local v2, "k":I
    const/4 v0, 0x0

    move v3, v2

    .end local v2    # "k":I
    .local v3, "k":I
    :goto_3f
    if-ge v0, v5, :cond_6b

    .line 327
    iget-object v8, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->pixels:[B

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "k":I
    .restart local v2    # "k":I
    aget-byte v8, v8, v3

    and-int/lit16 v8, v8, 0xff

    iget-object v9, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->pixels:[B

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "k":I
    .restart local v3    # "k":I
    aget-byte v9, v9, v2

    and-int/lit16 v9, v9, 0xff

    iget-object v10, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->pixels:[B

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "k":I
    .restart local v2    # "k":I
    aget-byte v10, v10, v3

    and-int/lit16 v10, v10, 0xff

    invoke-virtual {v6, v8, v9, v10}, Lcom/bumptech/glide/gifencoder/NeuQuant;->map(III)I

    move-result v1

    .line 328
    .local v1, "index":I
    iget-object v8, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->usedEntry:[Z

    const/4 v9, 0x1

    aput-boolean v9, v8, v1

    .line 329
    iget-object v8, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->indexedPixels:[B

    int-to-byte v9, v1

    aput-byte v9, v8, v0

    .line 326
    add-int/lit8 v0, v0, 0x1

    move v3, v2

    .end local v2    # "k":I
    .restart local v3    # "k":I
    goto :goto_3f

    .line 331
    .end local v1    # "index":I
    :cond_6b
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->pixels:[B

    .line 332
    const/16 v8, 0x8

    iput v8, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorDepth:I

    .line 333
    const/4 v8, 0x7

    iput v8, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->palSize:I

    .line 335
    iget-object v8, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->transparent:Ljava/lang/Integer;

    if-eqz v8, :cond_86

    .line 336
    iget-object v8, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->transparent:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->findClosest(I)I

    move-result v8

    iput v8, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->transIndex:I

    .line 340
    :cond_85
    :goto_85
    return-void

    .line 337
    :cond_86
    iget-boolean v8, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->hasTransparentPixels:Z

    if-eqz v8, :cond_85

    .line 338
    invoke-direct {p0, v11}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->findClosest(I)I

    move-result v8

    iput v8, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->transIndex:I

    goto :goto_85
.end method

.method private findClosest(I)I
    .registers 17
    .param p1, "color"    # I

    .prologue
    .line 347
    iget-object v13, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    if-nez v13, :cond_6

    .line 348
    const/4 v11, -0x1

    .line 367
    :cond_5
    return v11

    .line 349
    :cond_6
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->red(I)I

    move-result v12

    .line 350
    .local v12, "r":I
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->green(I)I

    move-result v6

    .line 351
    .local v6, "g":I
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 352
    .local v0, "b":I
    const/4 v11, 0x0

    .line 353
    .local v11, "minpos":I
    const/high16 v4, 0x1000000

    .line 354
    .local v4, "dmin":I
    iget-object v13, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    array-length v10, v13

    .line 355
    .local v10, "len":I
    const/4 v7, 0x0

    .local v7, "i":I
    move v8, v7

    .end local v7    # "i":I
    .local v8, "i":I
    :goto_1a
    if-ge v8, v10, :cond_5

    .line 356
    iget-object v13, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "i":I
    .restart local v7    # "i":I
    aget-byte v13, v13, v8

    and-int/lit16 v13, v13, 0xff

    sub-int v5, v12, v13

    .line 357
    .local v5, "dr":I
    iget-object v13, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "i":I
    .restart local v8    # "i":I
    aget-byte v13, v13, v7

    and-int/lit16 v13, v13, 0xff

    sub-int v3, v6, v13

    .line 358
    .local v3, "dg":I
    iget-object v13, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    aget-byte v13, v13, v8

    and-int/lit16 v13, v13, 0xff

    sub-int v2, v0, v13

    .line 359
    .local v2, "db":I
    mul-int v13, v5, v5

    mul-int v14, v3, v3

    add-int/2addr v13, v14

    mul-int v14, v2, v2

    add-int v1, v13, v14

    .line 360
    .local v1, "d":I
    div-int/lit8 v9, v8, 0x3

    .line 361
    .local v9, "index":I
    iget-object v13, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->usedEntry:[Z

    aget-boolean v13, v13, v9

    if-eqz v13, :cond_4d

    if-ge v1, v4, :cond_4d

    .line 362
    move v4, v1

    .line 363
    move v11, v9

    .line 365
    :cond_4d
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "i":I
    .restart local v7    # "i":I
    move v8, v7

    .line 366
    .end local v7    # "i":I
    .restart local v8    # "i":I
    goto :goto_1a
.end method

.method private getImagePixels()V
    .registers 25

    .prologue
    .line 374
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 375
    .local v5, "w":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 377
    .local v9, "h":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->width:I

    if-ne v5, v2, :cond_1c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->height:I

    if-eq v9, v2, :cond_3f

    .line 379
    :cond_1c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->width:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->height:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v4, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 380
    .local v17, "temp":Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/Canvas;

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 381
    .local v11, "canvas":Landroid/graphics/Canvas;
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v11, v0, v2, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 382
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->image:Landroid/graphics/Bitmap;

    .line 384
    .end local v11    # "canvas":Landroid/graphics/Canvas;
    .end local v17    # "temp":Landroid/graphics/Bitmap;
    :cond_3f
    mul-int v2, v5, v9

    new-array v3, v2, [I

    .line 385
    .local v3, "pixelsInt":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->image:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 388
    array-length v2, v3

    mul-int/lit8 v2, v2, 0x3

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->pixels:[B

    .line 390
    const/4 v15, 0x0

    .line 391
    .local v15, "pixelsIndex":I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->hasTransparentPixels:Z

    .line 392
    const/16 v18, 0x0

    .line 393
    .local v18, "totalTransparentPixels":I
    move-object v10, v3

    .local v10, "arr$":[I
    array-length v13, v10

    .local v13, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    move/from16 v16, v15

    .end local v15    # "pixelsIndex":I
    .local v16, "pixelsIndex":I
    :goto_64
    if-ge v12, v13, :cond_96

    aget v14, v10, v12

    .line 394
    .local v14, "pixel":I
    if-nez v14, :cond_6c

    .line 395
    add-int/lit8 v18, v18, 0x1

    .line 397
    :cond_6c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->pixels:[B

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "pixelsIndex":I
    .restart local v15    # "pixelsIndex":I
    and-int/lit16 v4, v14, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v16

    .line 398
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->pixels:[B

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "pixelsIndex":I
    .restart local v16    # "pixelsIndex":I
    shr-int/lit8 v4, v14, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v15

    .line 399
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->pixels:[B

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "pixelsIndex":I
    .restart local v15    # "pixelsIndex":I
    shr-int/lit8 v4, v14, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v16

    .line 393
    add-int/lit8 v12, v12, 0x1

    move/from16 v16, v15

    .end local v15    # "pixelsIndex":I
    .restart local v16    # "pixelsIndex":I
    goto :goto_64

    .line 402
    .end local v14    # "pixel":I
    :cond_96
    mul-int/lit8 v2, v18, 0x64

    int-to-double v6, v2

    array-length v2, v3

    int-to-double v0, v2

    move-wide/from16 v22, v0

    div-double v20, v6, v22

    .line 405
    .local v20, "transparentPercentage":D
    const-wide/high16 v6, 0x4010000000000000L

    cmpl-double v2, v20, v6

    if-lez v2, :cond_d4

    const/4 v2, 0x1

    :goto_a6
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->hasTransparentPixels:Z

    .line 406
    const-string v2, "AnimatedGifEncoder"

    const/4 v4, 0x3

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_d3

    .line 407
    const-string v2, "AnimatedGifEncoder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "got pixels for frame with "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "% transparent pixels"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_d3
    return-void

    .line 405
    :cond_d4
    const/4 v2, 0x0

    goto :goto_a6
.end method

.method private writeGraphicCtrlExt()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 415
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v3, 0x21

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 416
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v3, 0xf9

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 417
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 419
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->transparent:Ljava/lang/Integer;

    if-nez v2, :cond_45

    iget-boolean v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->hasTransparentPixels:Z

    if-nez v2, :cond_45

    .line 420
    const/4 v1, 0x0

    .line 421
    .local v1, "transp":I
    const/4 v0, 0x0

    .line 426
    .local v0, "disp":I
    :goto_1e
    iget v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->dispose:I

    if-ltz v2, :cond_26

    .line 427
    iget v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->dispose:I

    and-int/lit8 v0, v2, 0x7

    .line 429
    :cond_26
    shl-int/lit8 v0, v0, 0x2

    .line 432
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    or-int/lit8 v3, v0, 0x0

    or-int/lit8 v3, v3, 0x0

    or-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 437
    iget v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->delay:I

    invoke-direct {p0, v2}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeShort(I)V

    .line 438
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    iget v3, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->transIndex:I

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 439
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 440
    return-void

    .line 423
    .end local v0    # "disp":I
    .end local v1    # "transp":I
    :cond_45
    const/4 v1, 0x1

    .line 424
    .restart local v1    # "transp":I
    const/4 v0, 0x2

    .restart local v0    # "disp":I
    goto :goto_1e
.end method

.method private writeImageDesc()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 446
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 447
    invoke-direct {p0, v2}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeShort(I)V

    .line 448
    invoke-direct {p0, v2}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeShort(I)V

    .line 449
    iget v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->width:I

    invoke-direct {p0, v0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeShort(I)V

    .line 450
    iget v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->height:I

    invoke-direct {p0, v0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeShort(I)V

    .line 452
    iget-boolean v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->firstFrame:Z

    if-eqz v0, :cond_22

    .line 454
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 463
    :goto_21
    return-void

    .line 457
    :cond_22
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    iget v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->palSize:I

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_21
.end method

.method private writeLSD()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 470
    iget v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->width:I

    invoke-direct {p0, v0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeShort(I)V

    .line 471
    iget v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->height:I

    invoke-direct {p0, v0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeShort(I)V

    .line 473
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    iget v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->palSize:I

    or-int/lit16 v1, v1, 0xf0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 478
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 479
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 480
    return-void
.end method

.method private writeNetscapeExt()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 486
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 487
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 488
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 489
    const-string v0, "NETSCAPE2.0"

    invoke-direct {p0, v0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeString(Ljava/lang/String;)V

    .line 490
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 491
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 492
    iget v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->repeat:I

    invoke-direct {p0, v0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeShort(I)V

    .line 493
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 494
    return-void
.end method

.method private writePalette()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 500
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    iget-object v4, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    array-length v4, v4

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 501
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    array-length v2, v2

    rsub-int v1, v2, 0x300

    .line 502
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    if-ge v0, v1, :cond_1b

    .line 503
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, v5}, Ljava/io/OutputStream;->write(I)V

    .line 502
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 505
    :cond_1b
    return-void
.end method

.method private writePixels()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 511
    new-instance v0, Lcom/bumptech/glide/gifencoder/LZWEncoder;

    iget v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->width:I

    iget v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->height:I

    iget-object v3, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->indexedPixels:[B

    iget v4, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorDepth:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bumptech/glide/gifencoder/LZWEncoder;-><init>(II[BI)V

    .line 512
    .local v0, "encoder":Lcom/bumptech/glide/gifencoder/LZWEncoder;
    iget-object v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->encode(Ljava/io/OutputStream;)V

    .line 513
    return-void
.end method

.method private writeShort(I)V
    .registers 4
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 519
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 520
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 521
    return-void
.end method

.method private writeString(Ljava/lang/String;)V
    .registers 5
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 527
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_14

    .line 528
    iget-object v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 527
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 530
    :cond_14
    return-void
.end method


# virtual methods
.method public addFrame(Landroid/graphics/Bitmap;)Z
    .registers 6
    .param p1, "im"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 151
    if-eqz p1, :cond_7

    iget-boolean v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->started:Z

    if-nez v2, :cond_8

    .line 182
    :cond_7
    :goto_7
    return v1

    .line 154
    :cond_8
    const/4 v1, 0x1

    .line 156
    .local v1, "ok":Z
    :try_start_9
    iget-boolean v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->sizeSet:Z

    if-nez v2, :cond_18

    .line 158
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->setSize(II)V

    .line 160
    :cond_18
    iput-object p1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->image:Landroid/graphics/Bitmap;

    .line 161
    invoke-direct {p0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->getImagePixels()V

    .line 162
    invoke-direct {p0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->analyzePixels()V

    .line 163
    iget-boolean v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->firstFrame:Z

    if-eqz v2, :cond_31

    .line 164
    invoke-direct {p0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeLSD()V

    .line 165
    invoke-direct {p0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writePalette()V

    .line 166
    iget v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->repeat:I

    if-ltz v2, :cond_31

    .line 168
    invoke-direct {p0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeNetscapeExt()V

    .line 171
    :cond_31
    invoke-direct {p0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeGraphicCtrlExt()V

    .line 172
    invoke-direct {p0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeImageDesc()V

    .line 173
    iget-boolean v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->firstFrame:Z

    if-nez v2, :cond_3e

    .line 174
    invoke-direct {p0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writePalette()V

    .line 176
    :cond_3e
    invoke-direct {p0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writePixels()V

    .line 177
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->firstFrame:Z
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_44} :catch_45

    goto :goto_7

    .line 178
    :catch_45
    move-exception v0

    .line 179
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public finish()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 190
    iget-boolean v3, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->started:Z

    if-nez v3, :cond_8

    move v1, v2

    .line 214
    :goto_7
    return v1

    .line 192
    :cond_8
    const/4 v1, 0x1

    .line 193
    .local v1, "ok":Z
    iput-boolean v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->started:Z

    .line 195
    :try_start_b
    iget-object v3, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    .line 196
    iget-object v3, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 197
    iget-boolean v3, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->closeStream:Z

    if-eqz v3, :cond_20

    .line 198
    iget-object v3, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_20} :catch_32

    .line 205
    :cond_20
    :goto_20
    iput v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->transIndex:I

    .line 206
    iput-object v5, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    .line 207
    iput-object v5, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->image:Landroid/graphics/Bitmap;

    .line 208
    iput-object v5, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->pixels:[B

    .line 209
    iput-object v5, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->indexedPixels:[B

    .line 210
    iput-object v5, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    .line 211
    iput-boolean v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->closeStream:Z

    .line 212
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->firstFrame:Z

    goto :goto_7

    .line 200
    :catch_32
    move-exception v0

    .line 201
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_20
.end method

.method public setDelay(I)V
    .registers 4
    .param p1, "ms"    # I

    .prologue
    .line 94
    int-to-float v0, p1

    const/high16 v1, 0x41200000

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->delay:I

    .line 95
    return-void
.end method

.method public setDispose(I)V
    .registers 2
    .param p1, "code"    # I

    .prologue
    .line 106
    if-ltz p1, :cond_4

    .line 107
    iput p1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->dispose:I

    .line 109
    :cond_4
    return-void
.end method

.method public setFrameRate(F)V
    .registers 3
    .param p1, "fps"    # F

    .prologue
    .line 225
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_e

    .line 226
    const/high16 v0, 0x42c80000

    div-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->delay:I

    .line 228
    :cond_e
    return-void
.end method

.method public setQuality(I)V
    .registers 3
    .param p1, "quality"    # I

    .prologue
    .line 240
    const/4 v0, 0x1

    if-ge p1, v0, :cond_4

    .line 241
    const/4 p1, 0x1

    .line 242
    :cond_4
    iput p1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->sample:I

    .line 243
    return-void
.end method

.method public setRepeat(I)V
    .registers 2
    .param p1, "iter"    # I

    .prologue
    .line 120
    if-ltz p1, :cond_4

    .line 121
    iput p1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->repeat:I

    .line 123
    :cond_4
    return-void
.end method

.method public setSize(II)V
    .registers 5
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v1, 0x1

    .line 255
    iget-boolean v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->started:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->firstFrame:Z

    if-nez v0, :cond_a

    .line 264
    :goto_9
    return-void

    .line 257
    :cond_a
    iput p1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->width:I

    .line 258
    iput p2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->height:I

    .line 259
    iget v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->width:I

    if-ge v0, v1, :cond_16

    .line 260
    const/16 v0, 0x140

    iput v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->width:I

    .line 261
    :cond_16
    iget v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->height:I

    if-ge v0, v1, :cond_1e

    .line 262
    const/16 v0, 0xf0

    iput v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->height:I

    .line 263
    :cond_1e
    iput-boolean v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->sizeSet:Z

    goto :goto_9
.end method

.method public setTransparent(I)V
    .registers 3
    .param p1, "color"    # I

    .prologue
    .line 136
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->transparent:Ljava/lang/Integer;

    .line 137
    return-void
.end method

.method public start(Ljava/io/OutputStream;)Z
    .registers 5
    .param p1, "os"    # Ljava/io/OutputStream;

    .prologue
    const/4 v2, 0x0

    .line 275
    if-nez p1, :cond_5

    move v1, v2

    .line 285
    :goto_4
    return v1

    .line 277
    :cond_5
    const/4 v1, 0x1

    .line 278
    .local v1, "ok":Z
    iput-boolean v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->closeStream:Z

    .line 279
    iput-object p1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    .line 281
    :try_start_a
    const-string v2, "GIF89a"

    invoke-direct {p0, v2}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeString(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_12

    .line 285
    :goto_f
    iput-boolean v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->started:Z

    goto :goto_4

    .line 282
    :catch_12
    move-exception v0

    .line 283
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public start(Ljava/lang/String;)Z
    .registers 6
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 296
    const/4 v1, 0x1

    .line 298
    .local v1, "ok":Z
    :try_start_1
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    .line 299
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {p0, v2}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->start(Ljava/io/OutputStream;)Z

    move-result v1

    .line 300
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->closeStream:Z
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_16} :catch_19

    .line 304
    :goto_16
    iput-boolean v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->started:Z

    return v1

    .line 301
    :catch_19
    move-exception v0

    .line 302
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_16
.end method
