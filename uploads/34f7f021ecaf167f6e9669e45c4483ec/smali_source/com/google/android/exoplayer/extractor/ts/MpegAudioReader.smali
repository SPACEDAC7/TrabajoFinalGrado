.class final Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;
.super Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
.source "MpegAudioReader.java"


# static fields
.field private static final HEADER_SIZE:I = 0x4

.field private static final STATE_FINDING_HEADER:I = 0x0

.field private static final STATE_READING_FRAME:I = 0x2

.field private static final STATE_READING_HEADER:I = 0x1


# instance fields
.field private frameBytesRead:I

.field private frameDurationUs:J

.field private frameSize:I

.field private hasOutputFormat:Z

.field private final header:Lcom/google/android/exoplayer/util/MpegAudioHeader;

.field private final headerScratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private lastByteWasFF:Z

.field private state:I

.field private timeUs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V
    .registers 5
    .param p1, "output"    # Lcom/google/android/exoplayer/extractor/TrackOutput;

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    .line 54
    iput v2, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->state:I

    .line 56
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->headerScratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 57
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->headerScratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v1, -0x1

    aput-byte v1, v0, v2

    .line 58
    new-instance v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;

    invoke-direct {v0}, Lcom/google/android/exoplayer/util/MpegAudioHeader;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->header:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    .line 59
    return-void
.end method

.method private findHeader(Lcom/google/android/exoplayer/util/ParsableByteArray;)V
    .registers 12
    .param p1, "source"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 108
    iget-object v1, p1, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    .line 109
    .local v1, "data":[B
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v5

    .line 110
    .local v5, "startOffset":I
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->limit()I

    move-result v2

    .line 111
    .local v2, "endOffset":I
    move v4, v5

    .local v4, "i":I
    :goto_d
    if-ge v4, v2, :cond_45

    .line 112
    aget-byte v8, v1, v4

    and-int/lit16 v8, v8, 0xff

    const/16 v9, 0xff

    if-ne v8, v9, :cond_3e

    move v0, v6

    .line 113
    .local v0, "byteIsFF":Z
    :goto_18
    iget-boolean v8, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    if-eqz v8, :cond_40

    aget-byte v8, v1, v4

    and-int/lit16 v8, v8, 0xe0

    const/16 v9, 0xe0

    if-ne v8, v9, :cond_40

    move v3, v6

    .line 114
    .local v3, "found":Z
    :goto_25
    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    .line 115
    if-eqz v3, :cond_42

    .line 116
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {p1, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 118
    iput-boolean v7, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    .line 119
    iget-object v7, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->headerScratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v7, v7, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    aget-byte v8, v1, v4

    aput-byte v8, v7, v6

    .line 120
    const/4 v7, 0x2

    iput v7, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->frameBytesRead:I

    .line 121
    iput v6, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->state:I

    .line 126
    .end local v0    # "byteIsFF":Z
    .end local v3    # "found":Z
    :goto_3d
    return-void

    :cond_3e
    move v0, v7

    .line 112
    goto :goto_18

    .restart local v0    # "byteIsFF":Z
    :cond_40
    move v3, v7

    .line 113
    goto :goto_25

    .line 111
    .restart local v3    # "found":Z
    :cond_42
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 125
    .end local v0    # "byteIsFF":Z
    .end local v3    # "found":Z
    :cond_45
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    goto :goto_3d
.end method

.method private readFrameRemainder(Lcom/google/android/exoplayer/util/ParsableByteArray;)V
    .registers 10
    .param p1, "source"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    const/4 v6, 0x0

    .line 190
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->frameSize:I

    iget v3, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->frameBytesRead:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 191
    .local v0, "bytesToRead":I
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 192
    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->frameBytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->frameBytesRead:I

    .line 193
    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->frameBytesRead:I

    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->frameSize:I

    if-ge v1, v2, :cond_1f

    .line 202
    :goto_1e
    return-void

    .line 198
    :cond_1f
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->timeUs:J

    const/4 v4, 0x1

    iget v5, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->frameSize:I

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    .line 199
    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->timeUs:J

    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->frameDurationUs:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->timeUs:J

    .line 200
    iput v6, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->frameBytesRead:I

    .line 201
    iput v6, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->state:I

    goto :goto_1e
.end method

.method private readHeaderRemainder(Lcom/google/android/exoplayer/util/ParsableByteArray;)V
    .registers 15
    .param p1, "source"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    .line 145
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->frameBytesRead:I

    rsub-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 146
    .local v10, "bytesToRead":I
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->headerScratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->frameBytesRead:I

    invoke-virtual {p1, v0, v1, v10}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    .line 147
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->frameBytesRead:I

    add-int/2addr v0, v10

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->frameBytesRead:I

    .line 148
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->frameBytesRead:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_20

    .line 175
    :goto_1f
    return-void

    .line 153
    :cond_20
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->headerScratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 154
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->headerScratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->header:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer/util/MpegAudioHeader;->populateHeader(ILcom/google/android/exoplayer/util/MpegAudioHeader;)Z

    move-result v12

    .line 155
    .local v12, "parsedHeader":Z
    if-nez v12, :cond_3b

    .line 157
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->frameBytesRead:I

    .line 158
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->state:I

    goto :goto_1f

    .line 162
    :cond_3b
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->header:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v0, v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->frameSize:I

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->frameSize:I

    .line 163
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->hasOutputFormat:Z

    if-nez v0, :cond_76

    .line 164
    const-wide/32 v0, 0xf4240

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->header:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v2, v2, Lcom/google/android/exoplayer/util/MpegAudioHeader;->samplesPerFrame:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->header:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v2, v2, Lcom/google/android/exoplayer/util/MpegAudioHeader;->sampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->frameDurationUs:J

    .line 165
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->header:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget-object v1, v1, Lcom/google/android/exoplayer/util/MpegAudioHeader;->mimeType:Ljava/lang/String;

    const/4 v2, -0x1

    const/16 v3, 0x1000

    const-wide/16 v4, -0x1

    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->header:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v6, v6, Lcom/google/android/exoplayer/util/MpegAudioHeader;->channels:I

    iget-object v7, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->header:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v7, v7, Lcom/google/android/exoplayer/util/MpegAudioHeader;->sampleRate:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v0 .. v9}, Lcom/google/android/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v11

    .line 168
    .local v11, "mediaFormat":Lcom/google/android/exoplayer/MediaFormat;
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    invoke-interface {v0, v11}, Lcom/google/android/exoplayer/extractor/TrackOutput;->format(Lcom/google/android/exoplayer/MediaFormat;)V

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->hasOutputFormat:Z

    .line 172
    .end local v11    # "mediaFormat":Lcom/google/android/exoplayer/MediaFormat;
    :cond_76
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->headerScratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 173
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->headerScratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 174
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->state:I

    goto :goto_1f
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer/util/ParsableByteArray;)V
    .registers 3
    .param p1, "data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    .line 75
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_18

    .line 76
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->state:I

    packed-switch v0, :pswitch_data_1a

    goto :goto_0

    .line 78
    :pswitch_c
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->findHeader(Lcom/google/android/exoplayer/util/ParsableByteArray;)V

    goto :goto_0

    .line 81
    :pswitch_10
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->readHeaderRemainder(Lcom/google/android/exoplayer/util/ParsableByteArray;)V

    goto :goto_0

    .line 84
    :pswitch_14
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->readFrameRemainder(Lcom/google/android/exoplayer/util/ParsableByteArray;)V

    goto :goto_0

    .line 88
    :cond_18
    return-void

    .line 76
    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_c
        :pswitch_10
        :pswitch_14
    .end packed-switch
.end method

.method public packetFinished()V
    .registers 1

    .prologue
    .line 93
    return-void
.end method

.method public packetStarted(JZ)V
    .registers 5
    .param p1, "pesTimeUs"    # J
    .param p3, "dataAlignmentIndicator"    # Z

    .prologue
    .line 70
    iput-wide p1, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->timeUs:J

    .line 71
    return-void
.end method

.method public seek()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->state:I

    .line 64
    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->frameBytesRead:I

    .line 65
    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    .line 66
    return-void
.end method
