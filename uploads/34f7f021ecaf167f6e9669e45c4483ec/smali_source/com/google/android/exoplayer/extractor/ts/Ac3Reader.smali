.class final Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;
.super Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
.source "Ac3Reader.java"


# static fields
.field private static final HEADER_SIZE:I = 0x8

.field private static final STATE_FINDING_SYNC:I = 0x0

.field private static final STATE_READING_HEADER:I = 0x1

.field private static final STATE_READING_SAMPLE:I = 0x2


# instance fields
.field private bytesRead:I

.field private final headerScratchBits:Lcom/google/android/exoplayer/util/ParsableBitArray;

.field private final headerScratchBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private final isEac3:Z

.field private lastByteWas0B:Z

.field private mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

.field private sampleDurationUs:J

.field private sampleSize:I

.field private state:I

.field private timeUs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/extractor/TrackOutput;Z)V
    .registers 5
    .param p1, "output"    # Lcom/google/android/exoplayer/extractor/TrackOutput;
    .param p2, "isEac3"    # Z

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    .line 63
    iput-boolean p2, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->isEac3:Z

    .line 64
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/16 v1, 0x8

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->headerScratchBits:Lcom/google/android/exoplayer/util/ParsableBitArray;

    .line 65
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->headerScratchBits:Lcom/google/android/exoplayer/util/ParsableBitArray;

    iget-object v1, v1, Lcom/google/android/exoplayer/util/ParsableBitArray;->data:[B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->headerScratchBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->state:I

    .line 67
    return-void
.end method

.method private continueRead(Lcom/google/android/exoplayer/util/ParsableByteArray;[BI)Z
    .registers 7
    .param p1, "source"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p2, "target"    # [B
    .param p3, "targetLength"    # I

    .prologue
    .line 130
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->bytesRead:I

    sub-int v2, p3, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 131
    .local v0, "bytesToRead":I
    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->bytesRead:I

    invoke-virtual {p1, p2, v1, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    .line 132
    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->bytesRead:I

    .line 133
    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->bytesRead:I

    if-ne v1, p3, :cond_1c

    const/4 v1, 0x1

    :goto_1b
    return v1

    :cond_1c
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method private parseHeader()V
    .registers 7

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    .line 164
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    if-nez v1, :cond_1a

    .line 165
    iget-boolean v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->isEac3:Z

    if-eqz v1, :cond_44

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->headerScratchBits:Lcom/google/android/exoplayer/util/ParsableBitArray;

    .line 166
    invoke-static {v1, v2, v4, v5, v2}, Lcom/google/android/exoplayer/util/Ac3Util;->parseEac3SyncframeFormat(Lcom/google/android/exoplayer/util/ParsableBitArray;Ljava/lang/String;JLjava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v1

    .line 167
    :goto_11
    iput-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    .line 168
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer/extractor/TrackOutput;->format(Lcom/google/android/exoplayer/MediaFormat;)V

    .line 170
    :cond_1a
    iget-boolean v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->isEac3:Z

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->headerScratchBits:Lcom/google/android/exoplayer/util/ParsableBitArray;

    iget-object v1, v1, Lcom/google/android/exoplayer/util/ParsableBitArray;->data:[B

    invoke-static {v1}, Lcom/google/android/exoplayer/util/Ac3Util;->parseEAc3SyncframeSize([B)I

    move-result v1

    .line 171
    :goto_26
    iput v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->sampleSize:I

    .line 172
    iget-boolean v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->isEac3:Z

    if-eqz v1, :cond_54

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->headerScratchBits:Lcom/google/android/exoplayer/util/ParsableBitArray;

    iget-object v1, v1, Lcom/google/android/exoplayer/util/ParsableBitArray;->data:[B

    .line 173
    invoke-static {v1}, Lcom/google/android/exoplayer/util/Ac3Util;->parseEAc3SyncframeAudioSampleCount([B)I

    move-result v0

    .line 177
    .local v0, "audioSamplesPerSyncframe":I
    :goto_34
    const-wide/32 v2, 0xf4240

    int-to-long v4, v0

    mul-long/2addr v2, v4

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    iget v1, v1, Lcom/google/android/exoplayer/MediaFormat;->sampleRate:I

    int-to-long v4, v1

    div-long/2addr v2, v4

    long-to-int v1, v2

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->sampleDurationUs:J

    .line 179
    return-void

    .line 166
    .end local v0    # "audioSamplesPerSyncframe":I
    :cond_44
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->headerScratchBits:Lcom/google/android/exoplayer/util/ParsableBitArray;

    .line 167
    invoke-static {v1, v2, v4, v5, v2}, Lcom/google/android/exoplayer/util/Ac3Util;->parseAc3SyncframeFormat(Lcom/google/android/exoplayer/util/ParsableBitArray;Ljava/lang/String;JLjava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v1

    goto :goto_11

    .line 170
    :cond_4b
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->headerScratchBits:Lcom/google/android/exoplayer/util/ParsableBitArray;

    iget-object v1, v1, Lcom/google/android/exoplayer/util/ParsableBitArray;->data:[B

    .line 171
    invoke-static {v1}, Lcom/google/android/exoplayer/util/Ac3Util;->parseAc3SyncframeSize([B)I

    move-result v1

    goto :goto_26

    .line 174
    :cond_54
    invoke-static {}, Lcom/google/android/exoplayer/util/Ac3Util;->getAc3SyncframeAudioSampleCount()I

    move-result v0

    goto :goto_34
.end method

.method private skipToNextSync(Lcom/google/android/exoplayer/util/ParsableByteArray;)Z
    .registers 7
    .param p1, "pesBuffer"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    const/16 v4, 0xb

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 144
    :goto_4
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-lez v1, :cond_2d

    .line 145
    iget-boolean v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->lastByteWas0B:Z

    if-nez v1, :cond_1a

    .line 146
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    if-ne v1, v4, :cond_18

    move v1, v2

    :goto_15
    iput-boolean v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->lastByteWas0B:Z

    goto :goto_4

    :cond_18
    move v1, v3

    goto :goto_15

    .line 149
    :cond_1a
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 150
    .local v0, "secondByte":I
    const/16 v1, 0x77

    if-ne v0, v1, :cond_25

    .line 151
    iput-boolean v3, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->lastByteWas0B:Z

    .line 157
    .end local v0    # "secondByte":I
    :goto_24
    return v2

    .line 154
    .restart local v0    # "secondByte":I
    :cond_25
    if-ne v0, v4, :cond_2b

    move v1, v2

    :goto_28
    iput-boolean v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->lastByteWas0B:Z

    goto :goto_4

    :cond_2b
    move v1, v3

    goto :goto_28

    .end local v0    # "secondByte":I
    :cond_2d
    move v2, v3

    .line 157
    goto :goto_24
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer/util/ParsableByteArray;)V
    .registers 14
    .param p1, "data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 83
    :cond_5
    :goto_5
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-lez v1, :cond_79

    .line 84
    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->state:I

    packed-switch v1, :pswitch_data_7a

    goto :goto_5

    .line 86
    :pswitch_11
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->skipToNextSync(Lcom/google/android/exoplayer/util/ParsableByteArray;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 87
    iput v4, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->state:I

    .line 88
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->headerScratchBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/16 v2, 0xb

    aput-byte v2, v1, v6

    .line 89
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->headerScratchBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/16 v2, 0x77

    aput-byte v2, v1, v4

    .line 90
    iput v10, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->bytesRead:I

    goto :goto_5

    .line 94
    :pswitch_2c
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->headerScratchBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    invoke-direct {p0, p1, v1, v11}, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->continueRead(Lcom/google/android/exoplayer/util/ParsableByteArray;[BI)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 95
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->parseHeader()V

    .line 96
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->headerScratchBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 97
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->headerScratchBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-interface {v1, v2, v11}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 98
    iput v10, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->state:I

    goto :goto_5

    .line 102
    :pswitch_48
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->sampleSize:I

    iget v3, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->bytesRead:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 103
    .local v0, "bytesToRead":I
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 104
    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->bytesRead:I

    .line 105
    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->bytesRead:I

    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->sampleSize:I

    if-ne v1, v2, :cond_5

    .line 106
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->timeUs:J

    iget v5, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->sampleSize:I

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    .line 107
    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->timeUs:J

    iget-wide v8, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->sampleDurationUs:J

    add-long/2addr v2, v8

    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->timeUs:J

    .line 108
    iput v6, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->state:I

    goto :goto_5

    .line 113
    .end local v0    # "bytesToRead":I
    :cond_79
    return-void

    .line 84
    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_11
        :pswitch_2c
        :pswitch_48
    .end packed-switch
.end method

.method public packetFinished()V
    .registers 1

    .prologue
    .line 118
    return-void
.end method

.method public packetStarted(JZ)V
    .registers 5
    .param p1, "pesTimeUs"    # J
    .param p3, "dataAlignmentIndicator"    # Z

    .prologue
    .line 78
    iput-wide p1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->timeUs:J

    .line 79
    return-void
.end method

.method public seek()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->state:I

    .line 72
    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->bytesRead:I

    .line 73
    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->lastByteWas0B:Z

    .line 74
    return-void
.end method
