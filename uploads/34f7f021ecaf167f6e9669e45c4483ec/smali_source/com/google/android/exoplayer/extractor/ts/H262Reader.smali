.class final Lcom/google/android/exoplayer/extractor/ts/H262Reader;
.super Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
.source "H262Reader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;
    }
.end annotation


# static fields
.field private static final FRAME_RATE_VALUES:[D

.field private static final START_EXTENSION:I = 0xb5

.field private static final START_GROUP:I = 0xb8

.field private static final START_PICTURE:I = 0x0

.field private static final START_SEQUENCE_HEADER:I = 0xb3


# instance fields
.field private final csdBuffer:Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;

.field private foundFirstFrameInGroup:Z

.field private frameDurationUs:J

.field private framePosition:J

.field private frameTimeUs:J

.field private hasOutputFormat:Z

.field private isKeyframe:Z

.field private pesPtsUsAvailable:Z

.field private pesTimeUs:J

.field private final prefixFlags:[Z

.field private totalBytesWritten:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const/16 v0, 0x8

    new-array v0, v0, [D

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->FRAME_RATE_VALUES:[D

    return-void

    :array_a
    .array-data 8
        0x4037f9dcb5112287L
        0x4038000000000000L
        0x4039000000000000L
        0x403df853e2556b28L
        0x403e000000000000L
        0x4049000000000000L
        0x404df853e2556b28L
        0x404e000000000000L
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V
    .registers 4
    .param p1, "output"    # Lcom/google/android/exoplayer/extractor/TrackOutput;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    .line 63
    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->prefixFlags:[Z

    .line 64
    new-instance v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->csdBuffer:Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;

    .line 65
    return-void
.end method

.method private static parseCsdBuffer(Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;)Landroid/util/Pair;
    .registers 28
    .param p0, "csdBuffer"    # Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/exoplayer/MediaFormat;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;->data:[B

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;->length:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v14

    .line 169
    .local v14, "csdData":[B
    const/4 v2, 0x4

    aget-byte v2, v14, v2

    and-int/lit16 v15, v2, 0xff

    .line 170
    .local v15, "firstByte":I
    const/4 v2, 0x5

    aget-byte v2, v14, v2

    and-int/lit16 v0, v2, 0xff

    move/from16 v24, v0

    .line 171
    .local v24, "secondByte":I
    const/4 v2, 0x6

    aget-byte v2, v14, v2

    and-int/lit16 v0, v2, 0xff

    move/from16 v26, v0

    .line 172
    .local v26, "thirdByte":I
    shl-int/lit8 v2, v15, 0x4

    shr-int/lit8 v3, v24, 0x4

    or-int v8, v2, v3

    .line 173
    .local v8, "width":I
    and-int/lit8 v2, v24, 0xf

    shl-int/lit8 v2, v2, 0x8

    or-int v9, v2, v26

    .line 175
    .local v9, "height":I
    const/high16 v12, 0x3f800000

    .line 176
    .local v12, "pixelWidthHeightRatio":F
    const/4 v2, 0x7

    aget-byte v2, v14, v2

    and-int/lit16 v2, v2, 0xf0

    shr-int/lit8 v13, v2, 0x4

    .line 177
    .local v13, "aspectRatioCode":I
    packed-switch v13, :pswitch_data_b4

    .line 192
    :goto_37
    const/4 v2, 0x0

    const-string/jumbo v3, "video/mpeg2"

    const/4 v4, -0x1

    const/4 v5, -0x1

    const-wide/16 v6, -0x1

    .line 194
    invoke-static {v14}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const/4 v11, -0x1

    .line 192
    invoke-static/range {v2 .. v12}, Lcom/google/android/exoplayer/MediaFormat;->createVideoFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;IF)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v16

    .line 196
    .local v16, "format":Lcom/google/android/exoplayer/MediaFormat;
    const-wide/16 v18, 0x0

    .line 197
    .local v18, "frameDurationUs":J
    const/4 v2, 0x7

    aget-byte v2, v14, v2

    and-int/lit8 v2, v2, 0xf

    add-int/lit8 v17, v2, -0x1

    .line 198
    .local v17, "frameRateCodeMinusOne":I
    if-ltz v17, :cond_8e

    sget-object v2, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->FRAME_RATE_VALUES:[D

    array-length v2, v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_8e

    .line 199
    sget-object v2, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->FRAME_RATE_VALUES:[D

    aget-wide v20, v2, v17

    .line 200
    .local v20, "frameRate":D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;->sequenceExtensionPosition:I

    move/from16 v25, v0

    .line 201
    .local v25, "sequenceExtensionPosition":I
    add-int/lit8 v2, v25, 0x9

    aget-byte v2, v14, v2

    and-int/lit8 v2, v2, 0x60

    shr-int/lit8 v23, v2, 0x5

    .line 202
    .local v23, "frameRateExtensionN":I
    add-int/lit8 v2, v25, 0x9

    aget-byte v2, v14, v2

    and-int/lit8 v22, v2, 0x1f

    .line 203
    .local v22, "frameRateExtensionD":I
    move/from16 v0, v23

    move/from16 v1, v22

    if-eq v0, v1, :cond_84

    .line 204
    move/from16 v0, v23

    int-to-double v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L

    add-double/2addr v2, v4

    add-int/lit8 v4, v22, 0x1

    int-to-double v4, v4

    div-double/2addr v2, v4

    mul-double v20, v20, v2

    .line 206
    :cond_84
    const-wide v2, 0x412e848000000000L

    div-double v2, v2, v20

    double-to-long v0, v2

    move-wide/from16 v18, v0

    .line 209
    .end local v20    # "frameRate":D
    .end local v22    # "frameRateExtensionD":I
    .end local v23    # "frameRateExtensionN":I
    .end local v25    # "sequenceExtensionPosition":I
    :cond_8e
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2

    .line 179
    .end local v16    # "format":Lcom/google/android/exoplayer/MediaFormat;
    .end local v17    # "frameRateCodeMinusOne":I
    .end local v18    # "frameDurationUs":J
    :pswitch_99
    mul-int/lit8 v2, v9, 0x4

    int-to-float v2, v2

    mul-int/lit8 v3, v8, 0x3

    int-to-float v3, v3

    div-float v12, v2, v3

    .line 180
    goto :goto_37

    .line 182
    :pswitch_a2
    mul-int/lit8 v2, v9, 0x10

    int-to-float v2, v2

    mul-int/lit8 v3, v8, 0x9

    int-to-float v3, v3

    div-float v12, v2, v3

    .line 183
    goto :goto_37

    .line 185
    :pswitch_ab
    mul-int/lit8 v2, v9, 0x79

    int-to-float v2, v2

    mul-int/lit8 v3, v8, 0x64

    int-to-float v3, v3

    div-float v12, v2, v3

    .line 186
    goto :goto_37

    .line 177
    :pswitch_data_b4
    .packed-switch 0x2
        :pswitch_99
        :pswitch_a2
        :pswitch_ab
    .end packed-switch
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer/util/ParsableByteArray;)V
    .registers 22
    .param p1, "data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    .line 86
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    if-lez v3, :cond_4a

    .line 87
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v13

    .line 88
    .local v13, "offset":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->limit()I

    move-result v12

    .line 89
    .local v12, "limit":I
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    .line 92
    .local v10, "dataArray":[B
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->totalBytesWritten:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v18, v0

    add-long v4, v4, v18

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->totalBytesWritten:J

    .line 93
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v4}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 95
    move v15, v13

    .line 97
    .local v15, "searchOffset":I
    :goto_31
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->prefixFlags:[Z

    invoke-static {v10, v15, v12, v3}, Lcom/google/android/exoplayer/util/NalUnitUtil;->findNalUnit([BII[Z)I

    move-result v16

    .line 99
    .local v16, "startCodeOffset":I
    move/from16 v0, v16

    if-ne v0, v12, :cond_4b

    .line 101
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->hasOutputFormat:Z

    if-nez v3, :cond_4a

    .line 102
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->csdBuffer:Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;

    invoke-virtual {v3, v10, v13, v12}, Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;->onData([BII)V

    .line 152
    .end local v10    # "dataArray":[B
    .end local v12    # "limit":I
    .end local v13    # "offset":I
    .end local v15    # "searchOffset":I
    .end local v16    # "startCodeOffset":I
    :cond_4a
    return-void

    .line 108
    .restart local v10    # "dataArray":[B
    .restart local v12    # "limit":I
    .restart local v13    # "offset":I
    .restart local v15    # "searchOffset":I
    .restart local v16    # "startCodeOffset":I
    :cond_4b
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    add-int/lit8 v4, v16, 0x3

    aget-byte v3, v3, v4

    and-int/lit16 v0, v3, 0xff

    move/from16 v17, v0

    .line 110
    .local v17, "startCodeValue":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->hasOutputFormat:Z

    if-nez v3, :cond_9d

    .line 113
    sub-int v11, v16, v13

    .line 114
    .local v11, "lengthToStartCode":I
    if-lez v11, :cond_6a

    .line 115
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->csdBuffer:Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;

    move/from16 v0, v16

    invoke-virtual {v3, v10, v13, v0}, Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;->onData([BII)V

    .line 119
    :cond_6a
    if-gez v11, :cond_f0

    neg-int v2, v11

    .line 120
    .local v2, "bytesAlreadyPassed":I
    :goto_6d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->csdBuffer:Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;

    move/from16 v0, v17

    invoke-virtual {v3, v0, v2}, Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;->onStartCode(II)Z

    move-result v3

    if-eqz v3, :cond_9d

    .line 122
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->csdBuffer:Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;

    invoke-static {v3}, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->parseCsdBuffer(Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;)Landroid/util/Pair;

    move-result-object v14

    .line 123
    .local v14, "result":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/android/exoplayer/MediaFormat;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget-object v3, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/exoplayer/MediaFormat;

    invoke-interface {v4, v3}, Lcom/google/android/exoplayer/extractor/TrackOutput;->format(Lcom/google/android/exoplayer/MediaFormat;)V

    .line 124
    iget-object v3, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->frameDurationUs:J

    .line 125
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->hasOutputFormat:Z

    .line 129
    .end local v2    # "bytesAlreadyPassed":I
    .end local v11    # "lengthToStartCode":I
    .end local v14    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/android/exoplayer/MediaFormat;Ljava/lang/Long;>;"
    :cond_9d
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->hasOutputFormat:Z

    if-eqz v3, :cond_ea

    const/16 v3, 0xb8

    move/from16 v0, v17

    if-eq v0, v3, :cond_ab

    if-nez v17, :cond_ea

    .line 130
    :cond_ab
    sub-int v8, v12, v16

    .line 131
    .local v8, "bytesWrittenPastStartCode":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->foundFirstFrameInGroup:Z

    if-eqz v3, :cond_da

    .line 132
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->isKeyframe:Z

    if-eqz v3, :cond_f3

    const/4 v6, 0x1

    .line 133
    .local v6, "flags":I
    :goto_ba
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->totalBytesWritten:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->framePosition:J

    move-wide/from16 v18, v0

    sub-long v4, v4, v18

    long-to-int v3, v4

    sub-int v7, v3, v8

    .line 134
    .local v7, "size":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->frameTimeUs:J

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    .line 135
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->isKeyframe:Z

    .line 137
    .end local v6    # "flags":I
    .end local v7    # "size":I
    :cond_da
    const/16 v3, 0xb8

    move/from16 v0, v17

    if-ne v0, v3, :cond_f5

    .line 138
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->foundFirstFrameInGroup:Z

    .line 139
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->isKeyframe:Z

    .line 148
    .end local v8    # "bytesWrittenPastStartCode":I
    :cond_ea
    :goto_ea
    move/from16 v13, v16

    .line 149
    add-int/lit8 v15, v13, 0x3

    .line 150
    goto/16 :goto_31

    .line 119
    .restart local v11    # "lengthToStartCode":I
    :cond_f0
    const/4 v2, 0x0

    goto/16 :goto_6d

    .line 132
    .end local v11    # "lengthToStartCode":I
    .restart local v8    # "bytesWrittenPastStartCode":I
    :cond_f3
    const/4 v6, 0x0

    goto :goto_ba

    .line 141
    :cond_f5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->pesPtsUsAvailable:Z

    if-eqz v3, :cond_11b

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->pesTimeUs:J

    :goto_ff
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->frameTimeUs:J

    .line 142
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->totalBytesWritten:J

    int-to-long v0, v8

    move-wide/from16 v18, v0

    sub-long v4, v4, v18

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->framePosition:J

    .line 143
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->pesPtsUsAvailable:Z

    .line 144
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->foundFirstFrameInGroup:Z

    goto :goto_ea

    .line 141
    :cond_11b
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->frameTimeUs:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->frameDurationUs:J

    move-wide/from16 v18, v0

    add-long v4, v4, v18

    goto :goto_ff
.end method

.method public packetFinished()V
    .registers 1

    .prologue
    .line 157
    return-void
.end method

.method public packetStarted(JZ)V
    .registers 7
    .param p1, "pesTimeUs"    # J
    .param p3, "dataAlignmentIndicator"    # Z

    .prologue
    .line 78
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_7
    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->pesPtsUsAvailable:Z

    .line 79
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->pesPtsUsAvailable:Z

    if-eqz v0, :cond_f

    .line 80
    iput-wide p1, p0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->pesTimeUs:J

    .line 82
    :cond_f
    return-void

    .line 78
    :cond_10
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public seek()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 69
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->prefixFlags:[Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 70
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->csdBuffer:Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;->reset()V

    .line 71
    iput-boolean v1, p0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->pesPtsUsAvailable:Z

    .line 72
    iput-boolean v1, p0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->foundFirstFrameInGroup:Z

    .line 73
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->totalBytesWritten:J

    .line 74
    return-void
.end method
