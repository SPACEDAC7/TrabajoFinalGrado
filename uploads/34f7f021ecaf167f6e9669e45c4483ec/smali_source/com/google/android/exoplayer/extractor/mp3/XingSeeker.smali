.class final Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;
.super Ljava/lang/Object;
.source "XingSeeker.java"

# interfaces
.implements Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;


# instance fields
.field private final durationUs:J

.field private final firstFramePosition:J

.field private final headerSize:I

.field private final inputLength:J

.field private final sizeBytes:J

.field private final tableOfContents:[J


# direct methods
.method private constructor <init>(JJJ)V
    .registers 20
    .param p1, "firstFramePosition"    # J
    .param p3, "durationUs"    # J
    .param p5, "inputLength"    # J

    .prologue
    .line 85
    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    invoke-direct/range {v1 .. v11}, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;-><init>(JJJ[JJI)V

    .line 86
    return-void
.end method

.method private constructor <init>(JJJ[JJI)V
    .registers 12
    .param p1, "firstFramePosition"    # J
    .param p3, "durationUs"    # J
    .param p5, "inputLength"    # J
    .param p7, "tableOfContents"    # [J
    .param p8, "sizeBytes"    # J
    .param p10, "headerSize"    # I

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-wide p1, p0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->firstFramePosition:J

    .line 91
    iput-wide p3, p0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->durationUs:J

    .line 92
    iput-wide p5, p0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->inputLength:J

    .line 93
    iput-object p7, p0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->tableOfContents:[J

    .line 94
    iput-wide p8, p0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->sizeBytes:J

    .line 95
    iput p10, p0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->headerSize:I

    .line 96
    return-void
.end method

.method public static create(Lcom/google/android/exoplayer/util/MpegAudioHeader;Lcom/google/android/exoplayer/util/ParsableByteArray;JJ)Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;
    .registers 28
    .param p0, "mpegAudioHeader"    # Lcom/google/android/exoplayer/util/MpegAudioHeader;
    .param p1, "frame"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p2, "position"    # J
    .param p4, "inputLength"    # J

    .prologue
    .line 43
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->samplesPerFrame:I

    move/from16 v20, v0

    .line 44
    .local v20, "samplesPerFrame":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->sampleRate:I

    move/from16 v19, v0

    .line 45
    .local v19, "sampleRate":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->frameSize:I

    int-to-long v2, v2

    add-long v14, p2, v2

    .line 47
    .local v14, "firstFramePosition":J
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v16

    .line 49
    .local v16, "flags":I
    and-int/lit8 v2, v16, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_22

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v17

    .local v17, "frameCount":I
    if-nez v17, :cond_24

    .line 51
    .end local v17    # "frameCount":I
    :cond_22
    const/4 v3, 0x0

    .line 70
    :goto_23
    return-object v3

    .line 53
    .restart local v17    # "frameCount":I
    :cond_24
    move/from16 v0, v17

    int-to-long v2, v0

    move/from16 v0, v20

    int-to-long v4, v0

    const-wide/32 v8, 0xf4240

    mul-long/2addr v4, v8

    move/from16 v0, v19

    int-to-long v6, v0

    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v6

    .line 55
    .local v6, "durationUs":J
    and-int/lit8 v2, v16, 0x6

    const/4 v3, 0x6

    if-eq v2, v3, :cond_43

    .line 57
    new-instance v3, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;

    move-wide v4, v14

    move-wide/from16 v8, p4

    invoke-direct/range {v3 .. v9}, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;-><init>(JJJ)V

    goto :goto_23

    .line 60
    :cond_43
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    int-to-long v11, v2

    .line 61
    .local v11, "sizeBytes":J
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 62
    const/16 v2, 0x63

    new-array v10, v2, [J

    .line 63
    .local v10, "tableOfContents":[J
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_54
    const/16 v2, 0x63

    move/from16 v0, v18

    if-ge v0, v2, :cond_64

    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    int-to-long v2, v2

    aput-wide v2, v10, v18

    .line 63
    add-int/lit8 v18, v18, 0x1

    goto :goto_54

    .line 70
    :cond_64
    new-instance v3, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->frameSize:I

    move-wide v4, v14

    move-wide/from16 v8, p4

    invoke-direct/range {v3 .. v13}, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;-><init>(JJJ[JJI)V

    goto :goto_23
.end method

.method private getTimeUsForTocPosition(I)J
    .registers 6
    .param p1, "tocPosition"    # I

    .prologue
    .line 165
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->durationUs:J

    int-to-long v2, p1

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public getDurationUs()J
    .registers 3

    .prologue
    .line 157
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->durationUs:J

    return-wide v0
.end method

.method public getPosition(J)J
    .registers 20
    .param p1, "timeUs"    # J

    .prologue
    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->isSeekable()Z

    move-result v9

    if-nez v9, :cond_b

    .line 106
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->firstFramePosition:J

    .line 133
    :goto_a
    return-wide v12

    .line 108
    :cond_b
    move-wide/from16 v0, p1

    long-to-float v9, v0

    const/high16 v12, 0x42c80000

    mul-float/2addr v9, v12

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->durationUs:J

    long-to-float v12, v12

    div-float v8, v9, v12

    .line 110
    .local v8, "percent":F
    const/4 v9, 0x0

    cmpg-float v9, v8, v9

    if-gtz v9, :cond_49

    .line 111
    const/4 v5, 0x0

    .line 130
    .local v5, "fx":F
    :goto_1e
    const-wide/high16 v12, 0x3f70000000000000L

    float-to-double v14, v5

    mul-double/2addr v12, v14

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->sizeBytes:J

    long-to-double v14, v14

    mul-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->firstFramePosition:J

    add-long v10, v12, v14

    .line 131
    .local v10, "position":J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->inputLength:J

    const-wide/16 v14, -0x1

    cmp-long v9, v12, v14

    if-eqz v9, :cond_77

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->inputLength:J

    const-wide/16 v14, 0x1

    sub-long v6, v12, v14

    .line 133
    .local v6, "maximumPosition":J
    :goto_44
    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    goto :goto_a

    .line 112
    .end local v5    # "fx":F
    .end local v6    # "maximumPosition":J
    .end local v10    # "position":J
    :cond_49
    const/high16 v9, 0x42c80000

    cmpl-float v9, v8, v9

    if-ltz v9, :cond_52

    .line 113
    const/high16 v5, 0x43800000

    .restart local v5    # "fx":F
    goto :goto_1e

    .line 115
    .end local v5    # "fx":F
    :cond_52
    float-to-int v2, v8

    .line 117
    .local v2, "a":I
    if-nez v2, :cond_6a

    .line 118
    const/4 v3, 0x0

    .line 122
    .local v3, "fa":F
    :goto_56
    const/16 v9, 0x63

    if-ge v2, v9, :cond_74

    .line 123
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->tableOfContents:[J

    aget-wide v12, v9, v2

    long-to-float v4, v12

    .line 127
    .local v4, "fb":F
    :goto_61
    sub-float v9, v4, v3

    int-to-float v12, v2

    sub-float v12, v8, v12

    mul-float/2addr v9, v12

    add-float v5, v3, v9

    .restart local v5    # "fx":F
    goto :goto_1e

    .line 120
    .end local v3    # "fa":F
    .end local v4    # "fb":F
    .end local v5    # "fx":F
    :cond_6a
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->tableOfContents:[J

    add-int/lit8 v12, v2, -0x1

    aget-wide v12, v9, v12

    long-to-float v3, v12

    .restart local v3    # "fa":F
    goto :goto_56

    .line 125
    :cond_74
    const/high16 v4, 0x43800000

    .restart local v4    # "fb":F
    goto :goto_61

    .line 131
    .end local v2    # "a":I
    .end local v3    # "fa":F
    .end local v4    # "fb":F
    .restart local v5    # "fx":F
    .restart local v10    # "position":J
    :cond_77
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->firstFramePosition:J

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->headerSize:I

    int-to-long v14, v9

    sub-long/2addr v12, v14

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->sizeBytes:J

    add-long/2addr v12, v14

    const-wide/16 v14, 0x1

    sub-long v6, v12, v14

    goto :goto_44
.end method

.method public getTimeUs(J)J
    .registers 26
    .param p1, "position"    # J

    .prologue
    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->isSeekable()Z

    move-result v15

    if-eqz v15, :cond_10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->firstFramePosition:J

    move-wide/from16 v18, v0

    cmp-long v15, p1, v18

    if-gez v15, :cond_13

    .line 139
    :cond_10
    const-wide/16 v18, 0x0

    .line 152
    :goto_12
    return-wide v18

    .line 141
    :cond_13
    const-wide/high16 v18, 0x4070000000000000L

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->firstFramePosition:J

    move-wide/from16 v20, v0

    sub-long v20, p1, v20

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->sizeBytes:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    div-double v8, v18, v20

    .line 142
    .local v8, "offsetByte":D
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->tableOfContents:[J

    double-to-long v0, v8

    move-wide/from16 v18, v0

    const/16 v20, 0x1

    const/16 v21, 0x0

    .line 143
    move-wide/from16 v0, v18

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v15, v0, v1, v2, v3}, Lcom/google/android/exoplayer/util/Util;->binarySearchFloor([JJZZ)I

    move-result v15

    add-int/lit8 v14, v15, 0x1

    .line 144
    .local v14, "previousTocPosition":I
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->getTimeUsForTocPosition(I)J

    move-result-wide v12

    .line 147
    .local v12, "previousTime":J
    if-nez v14, :cond_69

    const-wide/16 v10, 0x0

    .line 148
    .local v10, "previousByte":J
    :goto_52
    const/16 v15, 0x63

    if-ne v14, v15, :cond_72

    const-wide/16 v4, 0x100

    .line 149
    .local v4, "nextByte":J
    :goto_58
    add-int/lit8 v15, v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->getTimeUsForTocPosition(I)J

    move-result-wide v6

    .line 150
    .local v6, "nextTime":J
    cmp-long v15, v4, v10

    if-nez v15, :cond_79

    const-wide/16 v16, 0x0

    .line 152
    .local v16, "timeOffset":J
    :goto_66
    add-long v18, v12, v16

    goto :goto_12

    .line 147
    .end local v4    # "nextByte":J
    .end local v6    # "nextTime":J
    .end local v10    # "previousByte":J
    .end local v16    # "timeOffset":J
    :cond_69
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->tableOfContents:[J

    add-int/lit8 v18, v14, -0x1

    aget-wide v10, v15, v18

    goto :goto_52

    .line 148
    .restart local v10    # "previousByte":J
    :cond_72
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->tableOfContents:[J

    aget-wide v4, v15, v14

    goto :goto_58

    .line 150
    .restart local v4    # "nextByte":J
    .restart local v6    # "nextTime":J
    :cond_79
    sub-long v18, v6, v12

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v18, v0

    long-to-double v0, v10

    move-wide/from16 v20, v0

    sub-double v20, v8, v20

    mul-double v18, v18, v20

    sub-long v20, v4, v10

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-long v0, v0

    move-wide/from16 v16, v0

    goto :goto_66
.end method

.method public isSeekable()Z
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->tableOfContents:[J

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
