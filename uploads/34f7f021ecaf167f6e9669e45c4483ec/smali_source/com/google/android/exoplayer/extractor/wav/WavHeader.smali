.class final Lcom/google/android/exoplayer/extractor/wav/WavHeader;
.super Ljava/lang/Object;
.source "WavHeader.java"


# instance fields
.field private final averageBytesPerSecond:I

.field private final bitsPerSample:I

.field private final blockAlignment:I

.field private dataSize:J

.field private dataStartPosition:J

.field private final encoding:I

.field private final numChannels:I

.field private final sampleRateHz:I


# direct methods
.method public constructor <init>(IIIIII)V
    .registers 7
    .param p1, "numChannels"    # I
    .param p2, "sampleRateHz"    # I
    .param p3, "averageBytesPerSecond"    # I
    .param p4, "blockAlignment"    # I
    .param p5, "bitsPerSample"    # I
    .param p6, "encoding"    # I

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcom/google/android/exoplayer/extractor/wav/WavHeader;->numChannels:I

    .line 49
    iput p2, p0, Lcom/google/android/exoplayer/extractor/wav/WavHeader;->sampleRateHz:I

    .line 50
    iput p3, p0, Lcom/google/android/exoplayer/extractor/wav/WavHeader;->averageBytesPerSecond:I

    .line 51
    iput p4, p0, Lcom/google/android/exoplayer/extractor/wav/WavHeader;->blockAlignment:I

    .line 52
    iput p5, p0, Lcom/google/android/exoplayer/extractor/wav/WavHeader;->bitsPerSample:I

    .line 53
    iput p6, p0, Lcom/google/android/exoplayer/extractor/wav/WavHeader;->encoding:I

    .line 54
    return-void
.end method


# virtual methods
.method public getBitrate()I
    .registers 3

    .prologue
    .line 69
    iget v0, p0, Lcom/google/android/exoplayer/extractor/wav/WavHeader;->sampleRateHz:I

    iget v1, p0, Lcom/google/android/exoplayer/extractor/wav/WavHeader;->bitsPerSample:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/exoplayer/extractor/wav/WavHeader;->numChannels:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public getBytesPerFrame()I
    .registers 2

    .prologue
    .line 64
    iget v0, p0, Lcom/google/android/exoplayer/extractor/wav/WavHeader;->blockAlignment:I

    return v0
.end method

.method public getDurationUs()J
    .registers 7

    .prologue
    .line 58
    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/wav/WavHeader;->dataSize:J

    iget v4, p0, Lcom/google/android/exoplayer/extractor/wav/WavHeader;->blockAlignment:I

    int-to-long v4, v4

    div-long v0, v2, v4

    .line 59
    .local v0, "numFrames":J
    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, v0

    iget v4, p0, Lcom/google/android/exoplayer/extractor/wav/WavHeader;->sampleRateHz:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    return-wide v2
.end method

.method public getEncoding()I
    .registers 2

    .prologue
    .line 107
    iget v0, p0, Lcom/google/android/exoplayer/extractor/wav/WavHeader;->encoding:I

    return v0
.end method

.method public getNumChannels()I
    .registers 2

    .prologue
    .line 79
    iget v0, p0, Lcom/google/android/exoplayer/extractor/wav/WavHeader;->numChannels:I

    return v0
.end method

.method public getPosition(J)J
    .registers 10
    .param p1, "timeUs"    # J

    .prologue
    .line 84
    iget v2, p0, Lcom/google/android/exoplayer/extractor/wav/WavHeader;->averageBytesPerSecond:I

    int-to-long v2, v2

    mul-long/2addr v2, p1

    const-wide/32 v4, 0xf4240

    div-long v0, v2, v4

    .line 86
    .local v0, "unroundedPosition":J
    iget v2, p0, Lcom/google/android/exoplayer/extractor/wav/WavHeader;->blockAlignment:I

    int-to-long v2, v2

    div-long v2, v0, v2

    iget v4, p0, Lcom/google/android/exoplayer/extractor/wav/WavHeader;->blockAlignment:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/wav/WavHeader;->dataStartPosition:J

    add-long/2addr v2, v4

    return-wide v2
.end method

.method public getSampleRateHz()I
    .registers 2

    .prologue
    .line 74
    iget v0, p0, Lcom/google/android/exoplayer/extractor/wav/WavHeader;->sampleRateHz:I

    return v0
.end method

.method public getTimeUs(J)J
    .registers 8
    .param p1, "position"    # J

    .prologue
    .line 91
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p1

    iget v2, p0, Lcom/google/android/exoplayer/extractor/wav/WavHeader;->averageBytesPerSecond:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public hasDataBounds()Z
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 96
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/wav/WavHeader;->dataStartPosition:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/wav/WavHeader;->dataSize:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public setDataBounds(JJ)V
    .registers 6
    .param p1, "dataStartPosition"    # J
    .param p3, "dataSize"    # J

    .prologue
    .line 101
    iput-wide p1, p0, Lcom/google/android/exoplayer/extractor/wav/WavHeader;->dataStartPosition:J

    .line 102
    iput-wide p3, p0, Lcom/google/android/exoplayer/extractor/wav/WavHeader;->dataSize:J

    .line 103
    return-void
.end method
