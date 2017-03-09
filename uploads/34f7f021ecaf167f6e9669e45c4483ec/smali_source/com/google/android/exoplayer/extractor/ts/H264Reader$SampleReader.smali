.class final Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;
.super Ljava/lang/Object;
.source "H264Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/extractor/ts/H264Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SampleReader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;
    }
.end annotation


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x80

.field private static final NAL_UNIT_TYPE_AUD:I = 0x9

.field private static final NAL_UNIT_TYPE_IDR:I = 0x5

.field private static final NAL_UNIT_TYPE_NON_IDR:I = 0x1

.field private static final NAL_UNIT_TYPE_PARTITION_A:I = 0x2


# instance fields
.field private final allowNonIdrKeyframes:Z

.field private buffer:[B

.field private bufferLength:I

.field private final detectAccessUnits:Z

.field private isFilling:Z

.field private nalUnitStartPosition:J

.field private nalUnitTimeUs:J

.field private nalUnitType:I

.field private final output:Lcom/google/android/exoplayer/extractor/TrackOutput;

.field private final pps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/exoplayer/util/NalUnitUtil$PpsData;",
            ">;"
        }
    .end annotation
.end field

.field private previousSliceHeader:Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

.field private readingSample:Z

.field private sampleIsKeyframe:Z

.field private samplePosition:J

.field private sampleTimeUs:J

.field private final scratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

.field private sliceHeader:Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

.field private final sps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/extractor/TrackOutput;ZZ)V
    .registers 6
    .param p1, "output"    # Lcom/google/android/exoplayer/extractor/TrackOutput;
    .param p2, "allowNonIdrKeyframes"    # Z
    .param p3, "detectAccessUnits"    # Z

    .prologue
    const/4 v1, 0x0

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    .line 247
    iput-boolean p2, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->allowNonIdrKeyframes:Z

    .line 248
    iput-boolean p3, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    .line 249
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->sps:Landroid/util/SparseArray;

    .line 250
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->pps:Landroid/util/SparseArray;

    .line 251
    new-instance v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;-><init>(Lcom/google/android/exoplayer/extractor/ts/H264Reader$1;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->previousSliceHeader:Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 252
    new-instance v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;-><init>(Lcom/google/android/exoplayer/extractor/ts/H264Reader$1;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 253
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->scratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    .line 254
    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->buffer:[B

    .line 255
    invoke-virtual {p0}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->reset()V

    .line 256
    return-void
.end method

.method private outputSample(I)V
    .registers 10
    .param p1, "offset"    # I

    .prologue
    .line 433
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    if-eqz v0, :cond_15

    const/4 v4, 0x1

    .line 434
    .local v4, "flags":I
    :goto_5
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->nalUnitStartPosition:J

    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->samplePosition:J

    sub-long/2addr v0, v2

    long-to-int v5, v0

    .line 435
    .local v5, "size":I
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->sampleTimeUs:J

    const/4 v7, 0x0

    move v6, p1

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    .line 436
    return-void

    .line 433
    .end local v4    # "flags":I
    .end local v5    # "size":I
    :cond_15
    const/4 v4, 0x0

    goto :goto_5
.end method


# virtual methods
.method public appendToNalUnit([BII)V
    .registers 27
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "limit"    # I

    .prologue
    .line 302
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    if-nez v4, :cond_7

    .line 413
    :cond_6
    :goto_6
    return-void

    .line 305
    :cond_7
    sub-int v20, p3, p2

    .line 306
    .local v20, "readLength":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->buffer:[B

    array-length v4, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    move/from16 v21, v0

    add-int v21, v21, v20

    move/from16 v0, v21

    if-ge v4, v0, :cond_32

    .line 307
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->buffer:[B

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    move/from16 v21, v0

    add-int v21, v21, v20

    mul-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    invoke-static {v4, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->buffer:[B

    .line 309
    :cond_32
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->buffer:[B

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, v21

    move/from16 v3, v20

    invoke-static {v0, v1, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 310
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    add-int v4, v4, v20

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    .line 312
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->scratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->buffer:[B

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    move/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;->reset([BI)V

    .line 313
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->scratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitsLeft()I

    move-result v4

    const/16 v21, 0x8

    move/from16 v0, v21

    if-lt v4, v0, :cond_6

    .line 316
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->scratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 317
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->scratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/16 v21, 0x2

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 318
    .local v6, "nalRefIdc":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->scratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/16 v21, 0x5

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 322
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->scratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/util/ParsableBitArray;->canReadExpGolombCodedNum()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 325
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->scratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 326
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->scratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/util/ParsableBitArray;->canReadExpGolombCodedNum()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 329
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->scratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v7

    .line 330
    .local v7, "sliceType":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    if-nez v4, :cond_cf

    .line 332
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    .line 333
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    invoke-virtual {v4, v7}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->setSliceType(I)V

    goto/16 :goto_6

    .line 336
    :cond_cf
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->scratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/util/ParsableBitArray;->canReadExpGolombCodedNum()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 339
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->scratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v9

    .line 340
    .local v9, "picParameterSetId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->pps:Landroid/util/SparseArray;

    invoke-virtual {v4, v9}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    if-gez v4, :cond_f2

    .line 342
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    goto/16 :goto_6

    .line 345
    :cond_f2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->pps:Landroid/util/SparseArray;

    invoke-virtual {v4, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/android/exoplayer/util/NalUnitUtil$PpsData;

    .line 346
    .local v19, "ppsData":Lcom/google/android/exoplayer/util/NalUnitUtil$PpsData;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->sps:Landroid/util/SparseArray;

    move-object/from16 v0, v19

    iget v0, v0, Lcom/google/android/exoplayer/util/NalUnitUtil$PpsData;->seqParameterSetId:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;

    .line 347
    .local v5, "spsData":Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;
    iget-boolean v4, v5, Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;->separateColorPlaneFlag:Z

    if-eqz v4, :cond_12b

    .line 348
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->scratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitsLeft()I

    move-result v4

    const/16 v21, 0x2

    move/from16 v0, v21

    if-lt v4, v0, :cond_6

    .line 351
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->scratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/16 v21, 0x2

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 353
    :cond_12b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->scratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitsLeft()I

    move-result v4

    iget v0, v5, Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;->frameNumLength:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-lt v4, v0, :cond_6

    .line 356
    const/4 v10, 0x0

    .line 357
    .local v10, "fieldPicFlag":Z
    const/4 v11, 0x0

    .line 358
    .local v11, "bottomFieldFlagPresent":Z
    const/4 v12, 0x0

    .line 359
    .local v12, "bottomFieldFlag":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->scratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    iget v0, v5, Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;->frameNumLength:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 360
    .local v8, "frameNum":I
    iget-boolean v4, v5, Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;->frameMbsOnlyFlag:Z

    if-nez v4, :cond_17f

    .line 361
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->scratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitsLeft()I

    move-result v4

    const/16 v21, 0x1

    move/from16 v0, v21

    if-lt v4, v0, :cond_6

    .line 364
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->scratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v10

    .line 365
    if-eqz v10, :cond_17f

    .line 366
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->scratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitsLeft()I

    move-result v4

    const/16 v21, 0x1

    move/from16 v0, v21

    if-lt v4, v0, :cond_6

    .line 369
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->scratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v12

    .line 370
    const/4 v11, 0x1

    .line 373
    :cond_17f
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    const/16 v21, 0x5

    move/from16 v0, v21

    if-ne v4, v0, :cond_1f0

    const/4 v13, 0x1

    .line 374
    .local v13, "idrPicFlag":Z
    :goto_18a
    const/4 v14, 0x0

    .line 375
    .local v14, "idrPicId":I
    if-eqz v13, :cond_19f

    .line 376
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->scratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/util/ParsableBitArray;->canReadExpGolombCodedNum()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 379
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->scratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v14

    .line 381
    :cond_19f
    const/4 v15, 0x0

    .line 382
    .local v15, "picOrderCntLsb":I
    const/16 v16, 0x0

    .line 383
    .local v16, "deltaPicOrderCntBottom":I
    const/16 v17, 0x0

    .line 384
    .local v17, "deltaPicOrderCnt0":I
    const/16 v18, 0x0

    .line 385
    .local v18, "deltaPicOrderCnt1":I
    iget v4, v5, Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;->picOrderCountType:I

    if-nez v4, :cond_1f2

    .line 386
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->scratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitsLeft()I

    move-result v4

    iget v0, v5, Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;->picOrderCntLsbLength:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-lt v4, v0, :cond_6

    .line 389
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->scratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    iget v0, v5, Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;->picOrderCntLsbLength:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v15

    .line 390
    move-object/from16 v0, v19

    iget-boolean v4, v0, Lcom/google/android/exoplayer/util/NalUnitUtil$PpsData;->bottomFieldPicOrderInFramePresentFlag:Z

    if-eqz v4, :cond_1e2

    if-nez v10, :cond_1e2

    .line 391
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->scratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/util/ParsableBitArray;->canReadExpGolombCodedNum()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 394
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->scratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readSignedExpGolombCodedInt()I

    move-result v16

    .line 409
    :cond_1e2
    :goto_1e2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    invoke-virtual/range {v4 .. v18}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->setAll(Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;IIIIZZZZIIIII)V

    .line 412
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    goto/16 :goto_6

    .line 373
    .end local v13    # "idrPicFlag":Z
    .end local v14    # "idrPicId":I
    .end local v15    # "picOrderCntLsb":I
    .end local v16    # "deltaPicOrderCntBottom":I
    .end local v17    # "deltaPicOrderCnt0":I
    .end local v18    # "deltaPicOrderCnt1":I
    :cond_1f0
    const/4 v13, 0x0

    goto :goto_18a

    .line 396
    .restart local v13    # "idrPicFlag":Z
    .restart local v14    # "idrPicId":I
    .restart local v15    # "picOrderCntLsb":I
    .restart local v16    # "deltaPicOrderCntBottom":I
    .restart local v17    # "deltaPicOrderCnt0":I
    .restart local v18    # "deltaPicOrderCnt1":I
    :cond_1f2
    iget v4, v5, Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;->picOrderCountType:I

    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v4, v0, :cond_1e2

    iget-boolean v4, v5, Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;->deltaPicOrderAlwaysZeroFlag:Z

    if-nez v4, :cond_1e2

    .line 398
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->scratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/util/ParsableBitArray;->canReadExpGolombCodedNum()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 401
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->scratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readSignedExpGolombCodedInt()I

    move-result v17

    .line 402
    move-object/from16 v0, v19

    iget-boolean v4, v0, Lcom/google/android/exoplayer/util/NalUnitUtil$PpsData;->bottomFieldPicOrderInFramePresentFlag:Z

    if-eqz v4, :cond_1e2

    if-nez v10, :cond_1e2

    .line 403
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->scratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/util/ParsableBitArray;->canReadExpGolombCodedNum()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 406
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->scratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readSignedExpGolombCodedInt()I

    move-result v18

    goto :goto_1e2
.end method

.method public endNalUnit(JI)V
    .registers 11
    .param p1, "position"    # J
    .param p3, "offset"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 416
    iget v3, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    const/16 v4, 0x9

    if-eq v3, v4, :cond_16

    iget-boolean v3, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    if-eqz v3, :cond_30

    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->previousSliceHeader:Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 417
    # invokes: Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->isFirstVclNalUnitOfPicture(Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;)Z
    invoke-static {v3, v4}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->access$100(Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 419
    :cond_16
    iget-boolean v3, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->readingSample:Z

    if-eqz v3, :cond_24

    .line 420
    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->nalUnitStartPosition:J

    sub-long v4, p1, v4

    long-to-int v0, v4

    .line 421
    .local v0, "nalUnitLength":I
    add-int v3, p3, v0

    invoke-direct {p0, v3}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->outputSample(I)V

    .line 423
    .end local v0    # "nalUnitLength":I
    :cond_24
    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->nalUnitStartPosition:J

    iput-wide v4, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->samplePosition:J

    .line 424
    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->nalUnitTimeUs:J

    iput-wide v4, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->sampleTimeUs:J

    .line 425
    iput-boolean v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    .line 426
    iput-boolean v2, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->readingSample:Z

    .line 428
    :cond_30
    iget-boolean v3, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    iget v4, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_47

    iget-boolean v4, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->allowNonIdrKeyframes:Z

    if-eqz v4, :cond_48

    iget v4, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    if-ne v4, v2, :cond_48

    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 429
    invoke-virtual {v4}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->isISlice()Z

    move-result v4

    if-eqz v4, :cond_48

    :cond_47
    move v1, v2

    :cond_48
    or-int/2addr v1, v3

    iput-boolean v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    .line 430
    return-void
.end method

.method public needsSpsPps()Z
    .registers 2

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    return v0
.end method

.method public putPps(Lcom/google/android/exoplayer/util/NalUnitUtil$PpsData;)V
    .registers 4
    .param p1, "ppsData"    # Lcom/google/android/exoplayer/util/NalUnitUtil$PpsData;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->pps:Landroid/util/SparseArray;

    iget v1, p1, Lcom/google/android/exoplayer/util/NalUnitUtil$PpsData;->picParameterSetId:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 268
    return-void
.end method

.method public putSps(Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;)V
    .registers 4
    .param p1, "spsData"    # Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->sps:Landroid/util/SparseArray;

    iget v1, p1, Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;->seqParameterSetId:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 264
    return-void
.end method

.method public reset()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 271
    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    .line 272
    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->readingSample:Z

    .line 273
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->clear()V

    .line 274
    return-void
.end method

.method public startNalUnit(JIJ)V
    .registers 10
    .param p1, "position"    # J
    .param p3, "type"    # I
    .param p4, "pesTimeUs"    # J

    .prologue
    const/4 v3, 0x1

    .line 277
    iput p3, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    .line 278
    iput-wide p4, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->nalUnitTimeUs:J

    .line 279
    iput-wide p1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->nalUnitStartPosition:J

    .line 280
    iget-boolean v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->allowNonIdrKeyframes:Z

    if-eqz v1, :cond_f

    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    if-eq v1, v3, :cond_21

    :cond_f
    iget-boolean v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    if-eqz v1, :cond_33

    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_21

    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    if-eq v1, v3, :cond_21

    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_33

    .line 285
    :cond_21
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->previousSliceHeader:Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 286
    .local v0, "newSliceHeader":Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    iput-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->previousSliceHeader:Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 287
    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 288
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->clear()V

    .line 289
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    .line 290
    iput-boolean v3, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    .line 292
    .end local v0    # "newSliceHeader":Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;
    :cond_33
    return-void
.end method
