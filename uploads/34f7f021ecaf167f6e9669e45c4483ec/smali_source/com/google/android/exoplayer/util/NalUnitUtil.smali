.class public final Lcom/google/android/exoplayer/util/NalUnitUtil;
.super Ljava/lang/Object;
.source "NalUnitUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/util/NalUnitUtil$PpsData;,
        Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;
    }
.end annotation


# static fields
.field public static final ASPECT_RATIO_IDC_VALUES:[F

.field public static final EXTENDED_SAR:I = 0xff

.field public static final NAL_START_CODE:[B

.field private static final NAL_UNIT_TYPE_SPS:I = 0x7

.field private static final TAG:Ljava/lang/String; = "NalUnitUtil"

.field private static scratchEscapePositions:[I

.field private static final scratchEscapePositionsLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 81
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_20

    sput-object v0, Lcom/google/android/exoplayer/util/NalUnitUtil;->NAL_START_CODE:[B

    .line 86
    const/16 v0, 0x11

    new-array v0, v0, [F

    fill-array-data v0, :array_26

    sput-object v0, Lcom/google/android/exoplayer/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer/util/NalUnitUtil;->scratchEscapePositionsLock:Ljava/lang/Object;

    .line 114
    const/16 v0, 0xa

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/exoplayer/util/NalUnitUtil;->scratchEscapePositions:[I

    return-void

    .line 81
    nop

    :array_20
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    .line 86
    :array_26
    .array-data 4
        0x3f800000
        0x3f800000
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x400ba2e9
        0x3fe8ba2f
        0x403a2e8c
        0x401b26ca
        0x3fd1745d
        0x3fae8ba3
        0x3ff83e10
        0x3fcede62
        0x3faaaaab
        0x3fc00000
        0x40000000
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 475
    return-void
.end method

.method public static clearPrefixFlags([Z)V
    .registers 3
    .param p0, "prefixFlags"    # [Z

    .prologue
    const/4 v1, 0x0

    .line 447
    aput-boolean v1, p0, v1

    .line 448
    const/4 v0, 0x1

    aput-boolean v1, p0, v0

    .line 449
    const/4 v0, 0x2

    aput-boolean v1, p0, v0

    .line 450
    return-void
.end method

.method public static discardToSps(Ljava/nio/ByteBuffer;)V
    .registers 8
    .param p0, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 173
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 174
    .local v1, "length":I
    const/4 v0, 0x0

    .line 175
    .local v0, "consecutiveZeros":I
    const/4 v2, 0x0

    .line 176
    .local v2, "offset":I
    :goto_6
    add-int/lit8 v5, v2, 0x1

    if-ge v5, v1, :cond_3f

    .line 177
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v4, v5, 0xff

    .line 178
    .local v4, "value":I
    const/4 v5, 0x3

    if-ne v0, v5, :cond_35

    .line 179
    const/4 v5, 0x1

    if-ne v4, v5, :cond_39

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit8 v5, v5, 0x1f

    const/4 v6, 0x7

    if-ne v5, v6, :cond_39

    .line 181
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 182
    .local v3, "offsetData":Ljava/nio/ByteBuffer;
    add-int/lit8 v5, v2, -0x3

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 183
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 184
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 185
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 198
    .end local v3    # "offsetData":Ljava/nio/ByteBuffer;
    .end local v4    # "value":I
    :goto_34
    return-void

    .line 188
    .restart local v4    # "value":I
    :cond_35
    if-nez v4, :cond_39

    .line 189
    add-int/lit8 v0, v0, 0x1

    .line 191
    :cond_39
    if-eqz v4, :cond_3c

    .line 192
    const/4 v0, 0x0

    .line 194
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    .line 195
    goto :goto_6

    .line 197
    .end local v4    # "value":I
    :cond_3f
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_34
.end method

.method public static findNalUnit([BII[Z)I
    .registers 11
    .param p0, "data"    # [B
    .param p1, "startOffset"    # I
    .param p2, "endOffset"    # I
    .param p3, "prefixFlags"    # [Z

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 385
    sub-int v1, p2, p1

    .line 387
    .local v1, "length":I
    if-ltz v1, :cond_e

    move v3, v4

    :goto_8
    invoke-static {v3}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 388
    if-nez v1, :cond_10

    .line 438
    .end local p2    # "endOffset":I
    :cond_d
    :goto_d
    return p2

    .restart local p2    # "endOffset":I
    :cond_e
    move v3, v5

    .line 387
    goto :goto_8

    .line 392
    :cond_10
    if-eqz p3, :cond_42

    .line 393
    aget-boolean v3, p3, v5

    if-eqz v3, :cond_1c

    .line 394
    invoke-static {p3}, Lcom/google/android/exoplayer/util/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 395
    add-int/lit8 p2, p1, -0x3

    goto :goto_d

    .line 396
    :cond_1c
    if-le v1, v4, :cond_2c

    aget-boolean v3, p3, v4

    if-eqz v3, :cond_2c

    aget-byte v3, p0, p1

    if-ne v3, v4, :cond_2c

    .line 397
    invoke-static {p3}, Lcom/google/android/exoplayer/util/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 398
    add-int/lit8 p2, p1, -0x2

    goto :goto_d

    .line 399
    :cond_2c
    if-le v1, v6, :cond_42

    aget-boolean v3, p3, v6

    if-eqz v3, :cond_42

    aget-byte v3, p0, p1

    if-nez v3, :cond_42

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    if-ne v3, v4, :cond_42

    .line 401
    invoke-static {p3}, Lcom/google/android/exoplayer/util/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 402
    add-int/lit8 p2, p1, -0x1

    goto :goto_d

    .line 406
    :cond_42
    add-int/lit8 v2, p2, -0x1

    .line 409
    .local v2, "limit":I
    add-int/lit8 v0, p1, 0x2

    .local v0, "i":I
    :goto_46
    if-ge v0, v2, :cond_6c

    .line 410
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xfe

    if-eqz v3, :cond_51

    .line 409
    :goto_4e
    add-int/lit8 v0, v0, 0x3

    goto :goto_46

    .line 413
    :cond_51
    add-int/lit8 v3, v0, -0x2

    aget-byte v3, p0, v3

    if-nez v3, :cond_69

    add-int/lit8 v3, v0, -0x1

    aget-byte v3, p0, v3

    if-nez v3, :cond_69

    aget-byte v3, p0, v0

    if-ne v3, v4, :cond_69

    .line 414
    if-eqz p3, :cond_66

    .line 415
    invoke-static {p3}, Lcom/google/android/exoplayer/util/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 417
    :cond_66
    add-int/lit8 p2, v0, -0x2

    goto :goto_d

    .line 421
    :cond_69
    add-int/lit8 v0, v0, -0x2

    goto :goto_4e

    .line 425
    :cond_6c
    if-eqz p3, :cond_d

    .line 427
    if-le v1, v6, :cond_a2

    add-int/lit8 v3, p2, -0x3

    aget-byte v3, p0, v3

    if-nez v3, :cond_a0

    add-int/lit8 v3, p2, -0x2

    aget-byte v3, p0, v3

    if-nez v3, :cond_a0

    add-int/lit8 v3, p2, -0x1

    aget-byte v3, p0, v3

    if-ne v3, v4, :cond_a0

    move v3, v4

    :goto_83
    aput-boolean v3, p3, v5

    .line 432
    if-le v1, v4, :cond_c8

    add-int/lit8 v3, p2, -0x2

    aget-byte v3, p0, v3

    if-nez v3, :cond_c6

    add-int/lit8 v3, p2, -0x1

    aget-byte v3, p0, v3

    if-nez v3, :cond_c6

    move v3, v4

    :goto_94
    aput-boolean v3, p3, v4

    .line 435
    add-int/lit8 v3, p2, -0x1

    aget-byte v3, p0, v3

    if-nez v3, :cond_d6

    :goto_9c
    aput-boolean v4, p3, v6

    goto/16 :goto_d

    :cond_a0
    move v3, v5

    .line 427
    goto :goto_83

    :cond_a2
    if-ne v1, v6, :cond_b8

    aget-boolean v3, p3, v6

    if-eqz v3, :cond_b6

    add-int/lit8 v3, p2, -0x2

    aget-byte v3, p0, v3

    if-nez v3, :cond_b6

    add-int/lit8 v3, p2, -0x1

    aget-byte v3, p0, v3

    if-ne v3, v4, :cond_b6

    move v3, v4

    goto :goto_83

    :cond_b6
    move v3, v5

    goto :goto_83

    :cond_b8
    aget-boolean v3, p3, v4

    if-eqz v3, :cond_c4

    add-int/lit8 v3, p2, -0x1

    aget-byte v3, p0, v3

    if-ne v3, v4, :cond_c4

    move v3, v4

    goto :goto_83

    :cond_c4
    move v3, v5

    goto :goto_83

    :cond_c6
    move v3, v5

    .line 432
    goto :goto_94

    :cond_c8
    aget-boolean v3, p3, v6

    if-eqz v3, :cond_d4

    add-int/lit8 v3, p2, -0x1

    aget-byte v3, p0, v3

    if-nez v3, :cond_d4

    move v3, v4

    goto :goto_94

    :cond_d4
    move v3, v5

    goto :goto_94

    :cond_d6
    move v4, v5

    .line 435
    goto :goto_9c
.end method

.method private static findNextUnescapeIndex([BII)I
    .registers 6
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "limit"    # I

    .prologue
    .line 453
    move v0, p1

    .local v0, "i":I
    :goto_1
    add-int/lit8 v1, p2, -0x2

    if-ge v0, v1, :cond_1a

    .line 454
    aget-byte v1, p0, v0

    if-nez v1, :cond_17

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p0, v1

    if-nez v1, :cond_17

    add-int/lit8 v1, v0, 0x2

    aget-byte v1, p0, v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_17

    .line 458
    .end local v0    # "i":I
    :goto_16
    return v0

    .line 453
    .restart local v0    # "i":I
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1a
    move v0, p2

    .line 458
    goto :goto_16
.end method

.method public static getH265NalUnitType([BI)I
    .registers 3
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 231
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x7e

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static getNalUnitType([BI)I
    .registers 3
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 219
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public static parseChildNalUnit(Lcom/google/android/exoplayer/util/ParsableByteArray;)[B
    .registers 4
    .param p0, "atom"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    .line 205
    .local v0, "length":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 206
    .local v1, "offset":I
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 207
    iget-object v2, p0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    invoke-static {v2, v1, v0}, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->buildNalUnit([BII)[B

    move-result-object v2

    return-object v2
.end method

.method public static parsePpsNalUnit(Lcom/google/android/exoplayer/util/ParsableBitArray;)Lcom/google/android/exoplayer/util/NalUnitUtil$PpsData;
    .registers 5
    .param p0, "data"    # Lcom/google/android/exoplayer/util/ParsableBitArray;

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v1

    .line 356
    .local v1, "picParameterSetId":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    .line 357
    .local v2, "seqParameterSetId":I
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 358
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v0

    .line 359
    .local v0, "bottomFieldPicOrderInFramePresentFlag":Z
    new-instance v3, Lcom/google/android/exoplayer/util/NalUnitUtil$PpsData;

    invoke-direct {v3, v1, v2, v0}, Lcom/google/android/exoplayer/util/NalUnitUtil$PpsData;-><init>(IIZ)V

    return-object v3
.end method

.method public static parseSpsNalUnit(Lcom/google/android/exoplayer/util/ParsableBitArray;)Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;
    .registers 41
    .param p0, "data"    # Lcom/google/android/exoplayer/util/ParsableBitArray;

    .prologue
    .line 243
    const/16 v2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v30

    .line 244
    .local v30, "profileIdc":I
    const/16 v2, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 245
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v3

    .line 247
    .local v3, "seqParameterSetId":I
    const/4 v15, 0x1

    .line 248
    .local v15, "chromaFormatIdc":I
    const/4 v7, 0x0

    .line 249
    .local v7, "separateColorPlaneFlag":Z
    const/16 v2, 0x64

    move/from16 v0, v30

    if-eq v0, v2, :cond_51

    const/16 v2, 0x6e

    move/from16 v0, v30

    if-eq v0, v2, :cond_51

    const/16 v2, 0x7a

    move/from16 v0, v30

    if-eq v0, v2, :cond_51

    const/16 v2, 0xf4

    move/from16 v0, v30

    if-eq v0, v2, :cond_51

    const/16 v2, 0x2c

    move/from16 v0, v30

    if-eq v0, v2, :cond_51

    const/16 v2, 0x53

    move/from16 v0, v30

    if-eq v0, v2, :cond_51

    const/16 v2, 0x56

    move/from16 v0, v30

    if-eq v0, v2, :cond_51

    const/16 v2, 0x76

    move/from16 v0, v30

    if-eq v0, v2, :cond_51

    const/16 v2, 0x80

    move/from16 v0, v30

    if-eq v0, v2, :cond_51

    const/16 v2, 0x8a

    move/from16 v0, v30

    if-ne v0, v2, :cond_96

    .line 252
    :cond_51
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v15

    .line 253
    const/4 v2, 0x3

    if-ne v15, v2, :cond_5c

    .line 254
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v7

    .line 256
    :cond_5c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 257
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 258
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v34

    .line 260
    .local v34, "seqScalingMatrixPresentFlag":Z
    if-eqz v34, :cond_96

    .line 261
    const/4 v2, 0x3

    if-eq v15, v2, :cond_90

    const/16 v25, 0x8

    .line 262
    .local v25, "limit":I
    :goto_73
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_75
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_96

    .line 263
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v33

    .line 264
    .local v33, "seqScalingListPresentFlag":Z
    if-eqz v33, :cond_8d

    .line 265
    const/4 v2, 0x6

    move/from16 v0, v24

    if-ge v0, v2, :cond_93

    const/16 v2, 0x10

    :goto_88
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/exoplayer/util/NalUnitUtil;->skipScalingList(Lcom/google/android/exoplayer/util/ParsableBitArray;I)V

    .line 262
    :cond_8d
    add-int/lit8 v24, v24, 0x1

    goto :goto_75

    .line 261
    .end local v24    # "i":I
    .end local v25    # "limit":I
    .end local v33    # "seqScalingListPresentFlag":Z
    :cond_90
    const/16 v25, 0xc

    goto :goto_73

    .line 265
    .restart local v24    # "i":I
    .restart local v25    # "limit":I
    .restart local v33    # "seqScalingListPresentFlag":Z
    :cond_93
    const/16 v2, 0x40

    goto :goto_88

    .line 271
    .end local v24    # "i":I
    .end local v25    # "limit":I
    .end local v33    # "seqScalingListPresentFlag":Z
    .end local v34    # "seqScalingMatrixPresentFlag":Z
    :cond_96
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    add-int/lit8 v9, v2, 0x4

    .line 272
    .local v9, "frameNumLength":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v10

    .line 273
    .local v10, "picOrderCntType":I
    const/4 v11, 0x0

    .line 274
    .local v11, "picOrderCntLsbLength":I
    const/4 v12, 0x0

    .line 275
    .local v12, "deltaPicOrderAlwaysZeroFlag":Z
    if-nez v10, :cond_143

    .line 277
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    add-int/lit8 v11, v2, 0x4

    .line 287
    :cond_aa
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 288
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 290
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    add-int/lit8 v29, v2, 0x1

    .line 291
    .local v29, "picWidthInMbs":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    add-int/lit8 v28, v2, 0x1

    .line 292
    .local v28, "picHeightInMapUnits":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v8

    .line 293
    .local v8, "frameMbsOnlyFlag":Z
    if-eqz v8, :cond_168

    const/4 v2, 0x1

    :goto_c6
    rsub-int/lit8 v2, v2, 0x2

    mul-int v23, v2, v28

    .line 294
    .local v23, "frameHeightInMbs":I
    if-nez v8, :cond_d2

    .line 295
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 298
    :cond_d2
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 299
    mul-int/lit8 v4, v29, 0x10

    .line 300
    .local v4, "frameWidth":I
    mul-int/lit8 v5, v23, 0x10

    .line 301
    .local v5, "frameHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v22

    .line 302
    .local v22, "frameCroppingFlag":Z
    if-eqz v22, :cond_105

    .line 303
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v19

    .line 304
    .local v19, "frameCropLeftOffset":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v20

    .line 305
    .local v20, "frameCropRightOffset":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v21

    .line 306
    .local v21, "frameCropTopOffset":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v18

    .line 308
    .local v18, "frameCropBottomOffset":I
    if-nez v15, :cond_16d

    .line 309
    const/16 v16, 0x1

    .line 310
    .local v16, "cropUnitX":I
    if-eqz v8, :cond_16b

    const/4 v2, 0x1

    :goto_f9
    rsub-int/lit8 v17, v2, 0x2

    .line 317
    .local v17, "cropUnitY":I
    :goto_fb
    add-int v2, v19, v20

    mul-int v2, v2, v16

    sub-int/2addr v4, v2

    .line 318
    add-int v2, v21, v18

    mul-int v2, v2, v17

    sub-int/2addr v5, v2

    .line 321
    .end local v16    # "cropUnitX":I
    .end local v17    # "cropUnitY":I
    .end local v18    # "frameCropBottomOffset":I
    .end local v19    # "frameCropLeftOffset":I
    .end local v20    # "frameCropRightOffset":I
    .end local v21    # "frameCropTopOffset":I
    :cond_105
    const/high16 v6, 0x3f800000

    .line 322
    .local v6, "pixelWidthHeightRatio":F
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v37

    .line 323
    .local v37, "vuiParametersPresentFlag":Z
    if-eqz v37, :cond_13d

    .line 324
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v14

    .line 325
    .local v14, "aspectRatioInfoPresentFlag":Z
    if-eqz v14, :cond_13d

    .line 326
    const/16 v2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v13

    .line 327
    .local v13, "aspectRatioIdc":I
    const/16 v2, 0xff

    if-ne v13, v2, :cond_18a

    .line 328
    const/16 v2, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v32

    .line 329
    .local v32, "sarWidth":I
    const/16 v2, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v31

    .line 330
    .local v31, "sarHeight":I
    if-eqz v32, :cond_13d

    if-eqz v31, :cond_13d

    .line 331
    move/from16 v0, v32

    int-to-float v2, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v38, v0

    div-float v6, v2, v38

    .line 341
    .end local v13    # "aspectRatioIdc":I
    .end local v14    # "aspectRatioInfoPresentFlag":Z
    .end local v31    # "sarHeight":I
    .end local v32    # "sarWidth":I
    :cond_13d
    :goto_13d
    new-instance v2, Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;

    invoke-direct/range {v2 .. v12}, Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;-><init>(IIIFZZIIIZ)V

    return-object v2

    .line 278
    .end local v4    # "frameWidth":I
    .end local v5    # "frameHeight":I
    .end local v6    # "pixelWidthHeightRatio":F
    .end local v8    # "frameMbsOnlyFlag":Z
    .end local v22    # "frameCroppingFlag":Z
    .end local v23    # "frameHeightInMbs":I
    .end local v28    # "picHeightInMapUnits":I
    .end local v29    # "picWidthInMbs":I
    .end local v37    # "vuiParametersPresentFlag":Z
    :cond_143
    const/4 v2, 0x1

    if-ne v10, v2, :cond_aa

    .line 279
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v12

    .line 280
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readSignedExpGolombCodedInt()I

    .line 281
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readSignedExpGolombCodedInt()I

    .line 282
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v26, v0

    .line 283
    .local v26, "numRefFramesInPicOrderCntCycle":J
    const/16 v24, 0x0

    .restart local v24    # "i":I
    :goto_159
    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v38, v0

    cmp-long v2, v38, v26

    if-gez v2, :cond_aa

    .line 284
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 283
    add-int/lit8 v24, v24, 0x1

    goto :goto_159

    .line 293
    .end local v24    # "i":I
    .end local v26    # "numRefFramesInPicOrderCntCycle":J
    .restart local v8    # "frameMbsOnlyFlag":Z
    .restart local v28    # "picHeightInMapUnits":I
    .restart local v29    # "picWidthInMbs":I
    :cond_168
    const/4 v2, 0x0

    goto/16 :goto_c6

    .line 310
    .restart local v4    # "frameWidth":I
    .restart local v5    # "frameHeight":I
    .restart local v16    # "cropUnitX":I
    .restart local v18    # "frameCropBottomOffset":I
    .restart local v19    # "frameCropLeftOffset":I
    .restart local v20    # "frameCropRightOffset":I
    .restart local v21    # "frameCropTopOffset":I
    .restart local v22    # "frameCroppingFlag":Z
    .restart local v23    # "frameHeightInMbs":I
    :cond_16b
    const/4 v2, 0x0

    goto :goto_f9

    .line 312
    .end local v16    # "cropUnitX":I
    :cond_16d
    const/4 v2, 0x3

    if-ne v15, v2, :cond_182

    const/16 v36, 0x1

    .line 313
    .local v36, "subWidthC":I
    :goto_172
    const/4 v2, 0x1

    if-ne v15, v2, :cond_185

    const/16 v35, 0x2

    .line 314
    .local v35, "subHeightC":I
    :goto_177
    move/from16 v16, v36

    .line 315
    .restart local v16    # "cropUnitX":I
    if-eqz v8, :cond_188

    const/4 v2, 0x1

    :goto_17c
    rsub-int/lit8 v2, v2, 0x2

    mul-int v17, v35, v2

    .restart local v17    # "cropUnitY":I
    goto/16 :goto_fb

    .line 312
    .end local v16    # "cropUnitX":I
    .end local v17    # "cropUnitY":I
    .end local v35    # "subHeightC":I
    .end local v36    # "subWidthC":I
    :cond_182
    const/16 v36, 0x2

    goto :goto_172

    .line 313
    .restart local v36    # "subWidthC":I
    :cond_185
    const/16 v35, 0x1

    goto :goto_177

    .line 315
    .restart local v16    # "cropUnitX":I
    .restart local v35    # "subHeightC":I
    :cond_188
    const/4 v2, 0x0

    goto :goto_17c

    .line 333
    .end local v16    # "cropUnitX":I
    .end local v18    # "frameCropBottomOffset":I
    .end local v19    # "frameCropLeftOffset":I
    .end local v20    # "frameCropRightOffset":I
    .end local v21    # "frameCropTopOffset":I
    .end local v35    # "subHeightC":I
    .end local v36    # "subWidthC":I
    .restart local v6    # "pixelWidthHeightRatio":F
    .restart local v13    # "aspectRatioIdc":I
    .restart local v14    # "aspectRatioInfoPresentFlag":Z
    .restart local v37    # "vuiParametersPresentFlag":Z
    :cond_18a
    sget-object v2, Lcom/google/android/exoplayer/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    array-length v2, v2

    if-ge v13, v2, :cond_194

    .line 334
    sget-object v2, Lcom/google/android/exoplayer/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    aget v6, v2, v13

    goto :goto_13d

    .line 336
    :cond_194
    const-string v2, "NalUnitUtil"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Unexpected aspect_ratio_idc value: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13d
.end method

.method private static skipScalingList(Lcom/google/android/exoplayer/util/ParsableBitArray;I)V
    .registers 7
    .param p0, "bitArray"    # Lcom/google/android/exoplayer/util/ParsableBitArray;
    .param p1, "size"    # I

    .prologue
    .line 462
    const/16 v2, 0x8

    .line 463
    .local v2, "lastScale":I
    const/16 v3, 0x8

    .line 464
    .local v3, "nextScale":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, p1, :cond_1a

    .line 465
    if-eqz v3, :cond_13

    .line 466
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readSignedExpGolombCodedInt()I

    move-result v0

    .line 467
    .local v0, "deltaScale":I
    add-int v4, v2, v0

    add-int/lit16 v4, v4, 0x100

    rem-int/lit16 v3, v4, 0x100

    .line 469
    .end local v0    # "deltaScale":I
    :cond_13
    if-nez v3, :cond_18

    .line 464
    :goto_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_18
    move v2, v3

    .line 469
    goto :goto_15

    .line 471
    :cond_1a
    return-void
.end method

.method public static unescapeStream([BI)I
    .registers 16
    .param p0, "data"    # [B
    .param p1, "limit"    # I

    .prologue
    .line 128
    sget-object v12, Lcom/google/android/exoplayer/util/NalUnitUtil;->scratchEscapePositionsLock:Ljava/lang/Object;

    monitor-enter v12

    .line 129
    const/4 v4, 0x0

    .line 130
    .local v4, "position":I
    const/4 v6, 0x0

    .local v6, "scratchEscapeCount":I
    move v7, v6

    .line 131
    .end local v6    # "scratchEscapeCount":I
    .local v7, "scratchEscapeCount":I
    :cond_6
    :goto_6
    if-ge v4, p1, :cond_2a

    .line 132
    :try_start_8
    invoke-static {p0, v4, p1}, Lcom/google/android/exoplayer/util/NalUnitUtil;->findNextUnescapeIndex([BII)I

    move-result v4

    .line 133
    if-ge v4, p1, :cond_6

    .line 134
    sget-object v11, Lcom/google/android/exoplayer/util/NalUnitUtil;->scratchEscapePositions:[I

    array-length v11, v11

    if-gt v11, v7, :cond_20

    .line 136
    sget-object v11, Lcom/google/android/exoplayer/util/NalUnitUtil;->scratchEscapePositions:[I

    sget-object v13, Lcom/google/android/exoplayer/util/NalUnitUtil;->scratchEscapePositions:[I

    array-length v13, v13

    mul-int/lit8 v13, v13, 0x2

    invoke-static {v11, v13}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v11

    sput-object v11, Lcom/google/android/exoplayer/util/NalUnitUtil;->scratchEscapePositions:[I

    .line 139
    :cond_20
    sget-object v11, Lcom/google/android/exoplayer/util/NalUnitUtil;->scratchEscapePositions:[I
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_52

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "scratchEscapeCount":I
    .restart local v6    # "scratchEscapeCount":I
    :try_start_24
    aput v4, v11, v7
    :try_end_26
    .catchall {:try_start_24 .. :try_end_26} :catchall_56

    .line 140
    add-int/lit8 v4, v4, 0x3

    move v7, v6

    .end local v6    # "scratchEscapeCount":I
    .restart local v7    # "scratchEscapeCount":I
    goto :goto_6

    .line 144
    :cond_2a
    sub-int v8, p1, v7

    .line 145
    .local v8, "unescapedLength":I
    const/4 v1, 0x0

    .line 146
    .local v1, "escapedPosition":I
    const/4 v9, 0x0

    .line 147
    .local v9, "unescapedPosition":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2f
    if-ge v2, v7, :cond_4b

    .line 148
    :try_start_31
    sget-object v11, Lcom/google/android/exoplayer/util/NalUnitUtil;->scratchEscapePositions:[I

    aget v3, v11, v2

    .line 149
    .local v3, "nextEscapePosition":I
    sub-int v0, v3, v1

    .line 150
    .local v0, "copyLength":I
    invoke-static {p0, v1, p0, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    add-int/2addr v9, v0

    .line 152
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "unescapedPosition":I
    .local v10, "unescapedPosition":I
    const/4 v11, 0x0

    aput-byte v11, p0, v9

    .line 153
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "unescapedPosition":I
    .restart local v9    # "unescapedPosition":I
    const/4 v11, 0x0

    aput-byte v11, p0, v10

    .line 154
    add-int/lit8 v11, v0, 0x3

    add-int/2addr v1, v11

    .line 147
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 157
    .end local v0    # "copyLength":I
    .end local v3    # "nextEscapePosition":I
    :cond_4b
    sub-int v5, v8, v9

    .line 158
    .local v5, "remainingLength":I
    invoke-static {p0, v1, p0, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    monitor-exit v12
    :try_end_51
    .catchall {:try_start_31 .. :try_end_51} :catchall_52

    return v8

    .line 160
    .end local v1    # "escapedPosition":I
    .end local v2    # "i":I
    .end local v5    # "remainingLength":I
    .end local v8    # "unescapedLength":I
    .end local v9    # "unescapedPosition":I
    :catchall_52
    move-exception v11

    move v6, v7

    .end local v7    # "scratchEscapeCount":I
    .restart local v6    # "scratchEscapeCount":I
    :goto_54
    :try_start_54
    monitor-exit v12
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_56

    throw v11

    :catchall_56
    move-exception v11

    goto :goto_54
.end method
