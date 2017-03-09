.class final Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil;
.super Ljava/lang/Object;
.source "VorbisUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$Mode;,
        Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;,
        Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$CommentHeader;,
        Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$CodeBook;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VorbisUtil"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static iLog(I)I
    .registers 2
    .param p0, "x"    # I

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 40
    .local v0, "val":I
    :goto_1
    if-lez p0, :cond_8

    .line 41
    add-int/lit8 v0, v0, 0x1

    .line 42
    ushr-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 44
    :cond_8
    return v0
.end method

.method private static mapType1QuantValues(JJ)J
    .registers 10
    .param p0, "entries"    # J
    .param p2, "dimension"    # J

    .prologue
    .line 401
    long-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L

    long-to-double v4, p2

    div-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method private static readBook(Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;)Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$CodeBook;
    .registers 21
    .param p0, "bitArray"    # Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 338
    const/16 v2, 0x18

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v2

    const v16, 0x564342

    move/from16 v0, v16

    if-eq v2, v0, :cond_2e

    .line 339
    new-instance v2, Lcom/google/android/exoplayer/ParserException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "expected code book to start with [0x56, 0x43, 0x42] at "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 340
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->getPosition()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 342
    :cond_2e
    const/16 v2, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v3

    .line 343
    .local v3, "dimensions":I
    const/16 v2, 0x18

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v4

    .line 344
    .local v4, "entries":I
    new-array v5, v4, [J

    .line 346
    .local v5, "lengthMap":[J
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v7

    .line 347
    .local v7, "isOrdered":Z
    if-nez v7, :cond_7b

    .line 348
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v9

    .line 349
    .local v9, "isSparse":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4b
    array-length v2, v5

    if-ge v8, v2, :cond_a7

    .line 350
    if-eqz v9, :cond_6c

    .line 351
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_67

    .line 352
    const/4 v2, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v0, v2

    move-wide/from16 v16, v0

    aput-wide v16, v5, v8

    .line 349
    :goto_64
    add-int/lit8 v8, v8, 0x1

    goto :goto_4b

    .line 354
    :cond_67
    const-wide/16 v16, 0x0

    aput-wide v16, v5, v8

    goto :goto_64

    .line 357
    :cond_6c
    const/4 v2, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v0, v2

    move-wide/from16 v16, v0

    aput-wide v16, v5, v8

    goto :goto_64

    .line 361
    .end local v8    # "i":I
    .end local v9    # "isSparse":Z
    :cond_7b
    const/4 v2, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v2

    add-int/lit8 v11, v2, 0x1

    .line 362
    .local v11, "length":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_85
    array-length v2, v5

    if-ge v8, v2, :cond_a7

    .line 363
    sub-int v2, v4, v8

    invoke-static {v2}, Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil;->iLog(I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v14

    .line 364
    .local v14, "num":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_95
    if-ge v10, v14, :cond_a4

    array-length v2, v5

    if-ge v8, v2, :cond_a4

    .line 365
    int-to-long v0, v11

    move-wide/from16 v16, v0

    aput-wide v16, v5, v8

    .line 364
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_95

    .line 367
    :cond_a4
    add-int/lit8 v11, v11, 0x1

    .line 368
    goto :goto_85

    .line 371
    .end local v10    # "j":I
    .end local v11    # "length":I
    .end local v14    # "num":I
    :cond_a7
    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v6

    .line 372
    .local v6, "lookupType":I
    const/4 v2, 0x2

    if-le v6, v2, :cond_ce

    .line 373
    new-instance v2, Lcom/google/android/exoplayer/ParserException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "lookup type greater than 2 not decodable: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 374
    :cond_ce
    const/4 v2, 0x1

    if-eq v6, v2, :cond_d4

    const/4 v2, 0x2

    if-ne v6, v2, :cond_10d

    .line 375
    :cond_d4
    const/16 v2, 0x20

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 376
    const/16 v2, 0x20

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 377
    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v2

    add-int/lit8 v15, v2, 0x1

    .line 378
    .local v15, "valueBits":I
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 380
    const/4 v2, 0x1

    if-ne v6, v2, :cond_116

    .line 381
    if-eqz v3, :cond_113

    .line 382
    int-to-long v0, v4

    move-wide/from16 v16, v0

    int-to-long v0, v3

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil;->mapType1QuantValues(JJ)J

    move-result-wide v12

    .line 392
    .local v12, "lookupValuesCount":J
    :goto_100
    int-to-long v0, v15

    move-wide/from16 v16, v0

    mul-long v16, v16, v12

    move-wide/from16 v0, v16

    long-to-int v2, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 394
    .end local v12    # "lookupValuesCount":J
    .end local v15    # "valueBits":I
    :cond_10d
    new-instance v2, Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$CodeBook;

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$CodeBook;-><init>(II[JIZ)V

    return-object v2

    .line 385
    .restart local v15    # "valueBits":I
    :cond_113
    const-wide/16 v12, 0x0

    .restart local v12    # "lookupValuesCount":J
    goto :goto_100

    .line 389
    .end local v12    # "lookupValuesCount":J
    :cond_116
    mul-int v2, v4, v3

    int-to-long v12, v2

    .restart local v12    # "lookupValuesCount":J
    goto :goto_100
.end method

.method private static readFloors(Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;)V
    .registers 19
    .param p0, "bitArray"    # Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 284
    const/4 v15, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v15

    add-int/lit8 v4, v15, 0x1

    .line 285
    .local v4, "floorCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_a
    if-ge v7, v4, :cond_e6

    .line 286
    const/16 v15, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v6

    .line 287
    .local v6, "floorType":I
    packed-switch v6, :pswitch_data_e8

    .line 332
    new-instance v15, Lcom/google/android/exoplayer/ParserException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "floor type greater than 1 not decodable: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 289
    :pswitch_32
    const/16 v15, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 290
    const/16 v15, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 291
    const/16 v15, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 292
    const/4 v15, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 293
    const/16 v15, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 294
    const/4 v15, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v15

    add-int/lit8 v5, v15, 0x1

    .line 295
    .local v5, "floorNumberOfBooks":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_5e
    if-ge v9, v5, :cond_e2

    .line 296
    const/16 v15, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 295
    add-int/lit8 v9, v9, 0x1

    goto :goto_5e

    .line 300
    .end local v5    # "floorNumberOfBooks":I
    .end local v9    # "j":I
    :pswitch_6a
    const/4 v15, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v13

    .line 301
    .local v13, "partitions":I
    const/4 v11, -0x1

    .line 302
    .local v11, "maximumClass":I
    new-array v12, v13, [I

    .line 303
    .local v12, "partitionClassList":[I
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_75
    if-ge v9, v13, :cond_89

    .line 304
    const/4 v15, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v15

    aput v15, v12, v9

    .line 305
    aget v15, v12, v9

    if-le v15, v11, :cond_86

    .line 306
    aget v11, v12, v9

    .line 303
    :cond_86
    add-int/lit8 v9, v9, 0x1

    goto :goto_75

    .line 309
    :cond_89
    add-int/lit8 v15, v11, 0x1

    new-array v1, v15, [I

    .line 310
    .local v1, "classDimensions":[I
    const/4 v9, 0x0

    :goto_8e
    array-length v15, v1

    if-ge v9, v15, :cond_be

    .line 311
    const/4 v15, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    aput v15, v1, v9

    .line 312
    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v2

    .line 313
    .local v2, "classSubclasses":I
    if-lez v2, :cond_ac

    .line 314
    const/16 v15, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 316
    :cond_ac
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_ad
    const/4 v15, 0x1

    shl-int/2addr v15, v2

    if-ge v10, v15, :cond_bb

    .line 317
    const/16 v15, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 316
    add-int/lit8 v10, v10, 0x1

    goto :goto_ad

    .line 310
    :cond_bb
    add-int/lit8 v9, v9, 0x1

    goto :goto_8e

    .line 320
    .end local v2    # "classSubclasses":I
    .end local v10    # "k":I
    :cond_be
    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 321
    const/4 v15, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v14

    .line 322
    .local v14, "rangeBits":I
    const/4 v3, 0x0

    .line 323
    .local v3, "count":I
    const/4 v9, 0x0

    const/4 v10, 0x0

    .restart local v10    # "k":I
    :goto_ce
    if-ge v9, v13, :cond_e2

    .line 324
    aget v8, v12, v9

    .line 325
    .local v8, "idx":I
    aget v15, v1, v8

    add-int/2addr v3, v15

    .line 326
    :goto_d5
    if-ge v10, v3, :cond_df

    .line 327
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 326
    add-int/lit8 v10, v10, 0x1

    goto :goto_d5

    .line 323
    :cond_df
    add-int/lit8 v9, v9, 0x1

    goto :goto_ce

    .line 285
    .end local v1    # "classDimensions":[I
    .end local v3    # "count":I
    .end local v8    # "idx":I
    .end local v10    # "k":I
    .end local v11    # "maximumClass":I
    .end local v12    # "partitionClassList":[I
    .end local v13    # "partitions":I
    .end local v14    # "rangeBits":I
    :cond_e2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_a

    .line 335
    .end local v6    # "floorType":I
    .end local v9    # "j":I
    :cond_e6
    return-void

    .line 287
    nop

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_32
        :pswitch_6a
    .end packed-switch
.end method

.method private static readMappings(ILcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;)V
    .registers 13
    .param p0, "channels"    # I
    .param p1, "bitArray"    # Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    const/16 v9, 0x8

    .line 210
    const/4 v6, 0x6

    invoke-virtual {p1, v6}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v6

    add-int/lit8 v4, v6, 0x1

    .line 211
    .local v4, "mappingsCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v4, :cond_8e

    .line 212
    const/16 v6, 0x10

    invoke-virtual {p1, v6}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v3

    .line 213
    .local v3, "mappingType":I
    packed-switch v3, :pswitch_data_90

    .line 246
    const-string v6, "VorbisUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mapping type other than 0 not supported: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 216
    :pswitch_31
    invoke-virtual {p1}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_61

    .line 217
    invoke-virtual {p1, v10}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v6

    add-int/lit8 v5, v6, 0x1

    .line 222
    .local v5, "submaps":I
    :goto_3d
    invoke-virtual {p1}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_63

    .line 223
    invoke-virtual {p1, v9}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v6

    add-int/lit8 v0, v6, 0x1

    .line 224
    .local v0, "couplingSteps":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_4a
    if-ge v2, v0, :cond_63

    .line 225
    add-int/lit8 v6, p0, -0x1

    invoke-static {v6}, Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil;->iLog(I)I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 226
    add-int/lit8 v6, p0, -0x1

    invoke-static {v6}, Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil;->iLog(I)I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 224
    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    .line 219
    .end local v0    # "couplingSteps":I
    .end local v2    # "j":I
    .end local v5    # "submaps":I
    :cond_61
    const/4 v5, 0x1

    .restart local v5    # "submaps":I
    goto :goto_3d

    .line 231
    :cond_63
    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v6

    if-eqz v6, :cond_73

    .line 232
    new-instance v6, Lcom/google/android/exoplayer/ParserException;

    const-string/jumbo v7, "to reserved bits must be zero after mapping coupling steps"

    invoke-direct {v6, v7}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 234
    :cond_73
    const/4 v6, 0x1

    if-le v5, v6, :cond_7f

    .line 235
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_77
    if-ge v2, p0, :cond_7f

    .line 236
    invoke-virtual {p1, v10}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 235
    add-int/lit8 v2, v2, 0x1

    goto :goto_77

    .line 239
    .end local v2    # "j":I
    :cond_7f
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_80
    if-ge v2, v5, :cond_2e

    .line 240
    invoke-virtual {p1, v9}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 241
    invoke-virtual {p1, v9}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 242
    invoke-virtual {p1, v9}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 239
    add-int/lit8 v2, v2, 0x1

    goto :goto_80

    .line 249
    .end local v2    # "j":I
    .end local v3    # "mappingType":I
    .end local v5    # "submaps":I
    :cond_8e
    return-void

    .line 213
    nop

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_31
    .end packed-switch
.end method

.method private static readModes(Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;)[Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$Mode;
    .registers 10
    .param p0, "bitArray"    # Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;

    .prologue
    const/16 v8, 0x10

    .line 196
    const/4 v7, 0x6

    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v7

    add-int/lit8 v3, v7, 0x1

    .line 197
    .local v3, "modeCount":I
    new-array v4, v3, [Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$Mode;

    .line 198
    .local v4, "modes":[Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$Mode;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v3, :cond_2a

    .line 199
    invoke-virtual {p0}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v0

    .line 200
    .local v0, "blockFlag":Z
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v6

    .line 201
    .local v6, "windowType":I
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v5

    .line 202
    .local v5, "transformType":I
    const/16 v7, 0x8

    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v2

    .line 203
    .local v2, "mapping":I
    new-instance v7, Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$Mode;

    invoke-direct {v7, v0, v6, v5, v2}, Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$Mode;-><init>(ZIII)V

    aput-object v7, v4, v1

    .line 198
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 205
    .end local v0    # "blockFlag":Z
    .end local v2    # "mapping":I
    .end local v5    # "transformType":I
    .end local v6    # "windowType":I
    :cond_2a
    return-object v4
.end method

.method private static readResidues(Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;)V
    .registers 15
    .param p0, "bitArray"    # Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x6

    const/16 v12, 0x18

    const/16 v11, 0x8

    .line 252
    invoke-virtual {p0, v13}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v9

    add-int/lit8 v7, v9, 0x1

    .line 253
    .local v7, "residueCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    if-ge v3, v7, :cond_68

    .line 254
    const/16 v9, 0x10

    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v8

    .line 255
    .local v8, "residueType":I
    const/4 v9, 0x2

    if-le v8, v9, :cond_1f

    .line 256
    new-instance v9, Lcom/google/android/exoplayer/ParserException;

    const-string v10, "residueType greater than 2 is not decodable"

    invoke-direct {v9, v10}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 258
    :cond_1f
    invoke-virtual {p0, v12}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 259
    invoke-virtual {p0, v12}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 260
    invoke-virtual {p0, v12}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 261
    invoke-virtual {p0, v13}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v9

    add-int/lit8 v1, v9, 0x1

    .line 262
    .local v1, "classifications":I
    invoke-virtual {p0, v11}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 263
    new-array v0, v1, [I

    .line 264
    .local v0, "cascade":[I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_34
    if-ge v4, v1, :cond_4f

    .line 265
    const/4 v2, 0x0

    .line 266
    .local v2, "highBits":I
    const/4 v9, 0x3

    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v6

    .line 267
    .local v6, "lowBits":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v9

    if-eqz v9, :cond_47

    .line 268
    const/4 v9, 0x5

    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v2

    .line 270
    :cond_47
    mul-int/lit8 v9, v2, 0x8

    add-int/2addr v9, v6

    aput v9, v0, v4

    .line 264
    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    .line 272
    .end local v2    # "highBits":I
    .end local v6    # "lowBits":I
    :cond_4f
    const/4 v4, 0x0

    :goto_50
    if-ge v4, v1, :cond_65

    .line 273
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_53
    if-ge v5, v11, :cond_62

    .line 274
    aget v9, v0, v4

    const/4 v10, 0x1

    shl-int/2addr v10, v5

    and-int/2addr v9, v10

    if-eqz v9, :cond_5f

    .line 275
    invoke-virtual {p0, v11}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 273
    :cond_5f
    add-int/lit8 v5, v5, 0x1

    goto :goto_53

    .line 272
    :cond_62
    add-int/lit8 v4, v4, 0x1

    goto :goto_50

    .line 253
    .end local v5    # "k":I
    :cond_65
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 281
    .end local v0    # "cascade":[I
    .end local v1    # "classifications":I
    .end local v4    # "j":I
    .end local v8    # "residueType":I
    :cond_68
    return-void
.end method

.method public static readVorbisCommentHeader(Lcom/google/android/exoplayer/util/ParsableByteArray;)Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$CommentHeader;
    .registers 11
    .param p0, "headerData"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 92
    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static {v7, p0, v8}, Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil;->verifyVorbisHeaderCapturePattern(ILcom/google/android/exoplayer/util/ParsableByteArray;Z)Z

    .line 93
    const/4 v5, 0x7

    .line 95
    .local v5, "length":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v8

    long-to-int v4, v8

    .line 96
    .local v4, "len":I
    add-int/lit8 v5, v5, 0x4

    .line 97
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v6

    .line 98
    .local v6, "vendor":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v5, v7, 0xb

    .line 100
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v0

    .line 101
    .local v0, "commentListLen":J
    long-to-int v7, v0

    new-array v2, v7, [Ljava/lang/String;

    .line 102
    .local v2, "comments":[Ljava/lang/String;
    add-int/lit8 v5, v5, 0x4

    .line 103
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_21
    int-to-long v8, v3

    cmp-long v7, v8, v0

    if-gez v7, :cond_3d

    .line 104
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v8

    long-to-int v4, v8

    .line 105
    add-int/lit8 v5, v5, 0x4

    .line 106
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v3

    .line 107
    aget-object v7, v2, v3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v5, v7

    .line 103
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 109
    :cond_3d
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_4d

    .line 110
    new-instance v7, Lcom/google/android/exoplayer/ParserException;

    const-string v8, "framing bit expected to be set"

    invoke-direct {v7, v8}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 112
    :cond_4d
    add-int/lit8 v5, v5, 0x1

    .line 113
    new-instance v7, Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$CommentHeader;

    invoke-direct {v7, v6, v2, v5}, Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$CommentHeader;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    return-object v7
.end method

.method public static readVorbisIdentificationHeader(Lcom/google/android/exoplayer/util/ParsableByteArray;)Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;
    .registers 21
    .param p0, "headerData"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 59
    const/4 v2, 0x1

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v2, v0, v1}, Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil;->verifyVorbisHeaderCapturePattern(ILcom/google/android/exoplayer/util/ParsableByteArray;Z)Z

    .line 61
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v3

    .line 62
    .local v3, "version":J
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 63
    .local v5, "channels":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v6

    .line 64
    .local v6, "sampleRate":J
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v8

    .line 65
    .local v8, "bitrateMax":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v9

    .line 66
    .local v9, "bitrateNominal":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v10

    .line 68
    .local v10, "bitrateMin":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v15

    .line 69
    .local v15, "blockSize":I
    const-wide/high16 v16, 0x4000000000000000L

    and-int/lit8 v2, v15, 0xf

    int-to-double v0, v2

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v11, v0

    .line 70
    .local v11, "blockSize0":I
    const-wide/high16 v16, 0x4000000000000000L

    and-int/lit16 v2, v15, 0xf0

    shr-int/lit8 v2, v2, 0x4

    int-to-double v0, v2

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v12, v0

    .line 72
    .local v12, "blockSize1":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_61

    const/4 v13, 0x1

    .line 74
    .local v13, "framingFlag":Z
    :goto_4d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->limit()I

    move-result v16

    move/from16 v0, v16

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v14

    .line 76
    .local v14, "data":[B
    new-instance v2, Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;

    invoke-direct/range {v2 .. v14}, Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;-><init>(JIJIIIIIZ[B)V

    return-object v2

    .line 72
    .end local v13    # "framingFlag":Z
    .end local v14    # "data":[B
    :cond_61
    const/4 v13, 0x0

    goto :goto_4d
.end method

.method public static readVorbisModes(Lcom/google/android/exoplayer/util/ParsableByteArray;I)[Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$Mode;
    .registers 9
    .param p0, "headerData"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "channels"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 167
    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-static {v5, p0, v6}, Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil;->verifyVorbisHeaderCapturePattern(ILcom/google/android/exoplayer/util/ParsableByteArray;Z)Z

    .line 169
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    add-int/lit8 v3, v5, 0x1

    .line 171
    .local v3, "numberOfBooks":I
    new-instance v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;

    iget-object v5, p0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    invoke-direct {v0, v5}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;-><init>([B)V

    .line 172
    .local v0, "bitArray":Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v5

    mul-int/lit8 v5, v5, 0x8

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 174
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1c
    if-ge v1, v3, :cond_24

    .line 175
    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil;->readBook(Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;)Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$CodeBook;

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 178
    :cond_24
    const/4 v5, 0x6

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v5

    add-int/lit8 v4, v5, 0x1

    .line 179
    .local v4, "timeCount":I
    const/4 v1, 0x0

    :goto_2c
    if-ge v1, v4, :cond_41

    .line 180
    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v5

    if-eqz v5, :cond_3e

    .line 181
    new-instance v5, Lcom/google/android/exoplayer/ParserException;

    const-string v6, "placeholder of time domain transforms not zeroed out"

    invoke-direct {v5, v6}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 179
    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 184
    :cond_41
    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil;->readFloors(Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;)V

    .line 185
    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil;->readResidues(Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;)V

    .line 186
    invoke-static {p1, v0}, Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil;->readMappings(ILcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;)V

    .line 188
    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil;->readModes(Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;)[Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$Mode;

    move-result-object v2

    .line 189
    .local v2, "modes":[Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$Mode;
    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v5

    if-nez v5, :cond_5c

    .line 190
    new-instance v5, Lcom/google/android/exoplayer/ParserException;

    const-string v6, "framing bit after modes not set as expected"

    invoke-direct {v5, v6}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 192
    :cond_5c
    return-object v2
.end method

.method public static verifyVorbisHeaderCapturePattern(ILcom/google/android/exoplayer/util/ParsableByteArray;Z)Z
    .registers 6
    .param p0, "headerType"    # I
    .param p1, "header"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p2, "quite"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 129
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    if-eq v1, p0, :cond_27

    .line 130
    if-eqz p2, :cond_a

    .line 149
    :cond_9
    :goto_9
    return v0

    .line 133
    :cond_a
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected header type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_27
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    const/16 v2, 0x76

    if-ne v1, v2, :cond_57

    .line 138
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    const/16 v2, 0x6f

    if-ne v1, v2, :cond_57

    .line 139
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_57

    .line 140
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    const/16 v2, 0x62

    if-ne v1, v2, :cond_57

    .line 141
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    const/16 v2, 0x69

    if-ne v1, v2, :cond_57

    .line 142
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    const/16 v2, 0x73

    if-eq v1, v2, :cond_61

    .line 143
    :cond_57
    if-nez p2, :cond_9

    .line 146
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string v1, "expected characters \'vorbis\'"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_61
    const/4 v0, 0x1

    goto :goto_9
.end method
