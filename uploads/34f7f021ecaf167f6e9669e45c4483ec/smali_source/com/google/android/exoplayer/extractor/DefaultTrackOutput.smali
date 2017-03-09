.class public Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;
.super Ljava/lang/Object;
.source "DefaultTrackOutput.java"

# interfaces
.implements Lcom/google/android/exoplayer/extractor/TrackOutput;


# instance fields
.field private volatile format:Lcom/google/android/exoplayer/MediaFormat;

.field private volatile largestParsedTimestampUs:J

.field private lastReadTimeUs:J

.field private needKeyframe:Z

.field private final rollingBuffer:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

.field private final sampleInfoHolder:Lcom/google/android/exoplayer/SampleHolder;

.field private spliceOutTimeUs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/upstream/Allocator;)V
    .registers 6
    .param p1, "allocator"    # Lcom/google/android/exoplayer/upstream/Allocator;

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;-><init>(Lcom/google/android/exoplayer/upstream/Allocator;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->rollingBuffer:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

    .line 50
    new-instance v0, Lcom/google/android/exoplayer/SampleHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/SampleHolder;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->sampleInfoHolder:Lcom/google/android/exoplayer/SampleHolder;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->needKeyframe:Z

    .line 52
    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->lastReadTimeUs:J

    .line 53
    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->spliceOutTimeUs:J

    .line 54
    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->largestParsedTimestampUs:J

    .line 55
    return-void
.end method

.method private advanceToEligibleSample()Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 211
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->rollingBuffer:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->sampleInfoHolder:Lcom/google/android/exoplayer/SampleHolder;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->peekSample(Lcom/google/android/exoplayer/SampleHolder;)Z

    move-result v0

    .line 212
    .local v0, "haveNext":Z
    iget-boolean v2, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->needKeyframe:Z

    if-eqz v2, :cond_25

    .line 213
    :goto_d
    if-eqz v0, :cond_25

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->sampleInfoHolder:Lcom/google/android/exoplayer/SampleHolder;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/SampleHolder;->isSyncFrame()Z

    move-result v2

    if-nez v2, :cond_25

    .line 214
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->rollingBuffer:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->skipSample()V

    .line 215
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->rollingBuffer:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->sampleInfoHolder:Lcom/google/android/exoplayer/SampleHolder;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->peekSample(Lcom/google/android/exoplayer/SampleHolder;)Z

    move-result v0

    goto :goto_d

    .line 218
    :cond_25
    if-nez v0, :cond_28

    .line 224
    :cond_27
    :goto_27
    return v1

    .line 221
    :cond_28
    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->spliceOutTimeUs:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3a

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->sampleInfoHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget-wide v2, v2, Lcom/google/android/exoplayer/SampleHolder;->timeUs:J

    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->spliceOutTimeUs:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_27

    .line 224
    :cond_3a
    const/4 v1, 0x1

    goto :goto_27
.end method


# virtual methods
.method public clear()V
    .registers 5

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    .line 63
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->rollingBuffer:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->clear()V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->needKeyframe:Z

    .line 65
    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->lastReadTimeUs:J

    .line 66
    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->spliceOutTimeUs:J

    .line 67
    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->largestParsedTimestampUs:J

    .line 68
    return-void
.end method

.method public configureSpliceTo(Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;)Z
    .registers 10
    .param p1, "nextQueue"    # Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    .prologue
    const/4 v3, 0x1

    .line 178
    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->spliceOutTimeUs:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v4, v4, v6

    if-eqz v4, :cond_a

    .line 201
    :goto_9
    return v3

    .line 183
    :cond_a
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->rollingBuffer:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->sampleInfoHolder:Lcom/google/android/exoplayer/SampleHolder;

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->peekSample(Lcom/google/android/exoplayer/SampleHolder;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 184
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->sampleInfoHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget-wide v0, v4, Lcom/google/android/exoplayer/SampleHolder;->timeUs:J

    .line 188
    .local v0, "firstPossibleSpliceTime":J
    :goto_18
    iget-object v2, p1, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->rollingBuffer:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

    .line 189
    .local v2, "nextRollingBuffer":Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;
    :goto_1a
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->sampleInfoHolder:Lcom/google/android/exoplayer/SampleHolder;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->peekSample(Lcom/google/android/exoplayer/SampleHolder;)Z

    move-result v4

    if-eqz v4, :cond_3d

    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->sampleInfoHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget-wide v4, v4, Lcom/google/android/exoplayer/SampleHolder;->timeUs:J

    cmp-long v4, v4, v0

    if-ltz v4, :cond_32

    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->sampleInfoHolder:Lcom/google/android/exoplayer/SampleHolder;

    .line 190
    invoke-virtual {v4}, Lcom/google/android/exoplayer/SampleHolder;->isSyncFrame()Z

    move-result v4

    if-nez v4, :cond_3d

    .line 193
    :cond_32
    invoke-virtual {v2}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->skipSample()V

    goto :goto_1a

    .line 186
    .end local v0    # "firstPossibleSpliceTime":J
    .end local v2    # "nextRollingBuffer":Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;
    :cond_36
    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->lastReadTimeUs:J

    const-wide/16 v6, 0x1

    add-long v0, v4, v6

    .restart local v0    # "firstPossibleSpliceTime":J
    goto :goto_18

    .line 195
    .restart local v2    # "nextRollingBuffer":Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;
    :cond_3d
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->sampleInfoHolder:Lcom/google/android/exoplayer/SampleHolder;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->peekSample(Lcom/google/android/exoplayer/SampleHolder;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 198
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->sampleInfoHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget-wide v4, v4, Lcom/google/android/exoplayer/SampleHolder;->timeUs:J

    iput-wide v4, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->spliceOutTimeUs:J

    goto :goto_9

    .line 201
    :cond_4c
    const/4 v3, 0x0

    goto :goto_9
.end method

.method public discardUntil(J)V
    .registers 6
    .param p1, "timeUs"    # J

    .prologue
    .line 153
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->rollingBuffer:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->sampleInfoHolder:Lcom/google/android/exoplayer/SampleHolder;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->peekSample(Lcom/google/android/exoplayer/SampleHolder;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->sampleInfoHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget-wide v0, v0, Lcom/google/android/exoplayer/SampleHolder;->timeUs:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_1b

    .line 154
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->rollingBuffer:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->skipSample()V

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->needKeyframe:Z

    goto :goto_0

    .line 158
    :cond_1b
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->lastReadTimeUs:J

    .line 159
    return-void
.end method

.method public discardUpstreamSamples(I)V
    .registers 4
    .param p1, "discardFromIndex"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->rollingBuffer:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->discardUpstreamSamples(I)V

    .line 84
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->rollingBuffer:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->sampleInfoHolder:Lcom/google/android/exoplayer/SampleHolder;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->peekSample(Lcom/google/android/exoplayer/SampleHolder;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->sampleInfoHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget-wide v0, v0, Lcom/google/android/exoplayer/SampleHolder;->timeUs:J

    :goto_13
    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->largestParsedTimestampUs:J

    .line 86
    return-void

    .line 84
    :cond_16
    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_13
.end method

.method public format(Lcom/google/android/exoplayer/MediaFormat;)V
    .registers 2
    .param p1, "format"    # Lcom/google/android/exoplayer/MediaFormat;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->format:Lcom/google/android/exoplayer/MediaFormat;

    .line 250
    return-void
.end method

.method public getFormat()Lcom/google/android/exoplayer/MediaFormat;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->format:Lcom/google/android/exoplayer/MediaFormat;

    return-object v0
.end method

.method public getLargestParsedTimestampUs()J
    .registers 3

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->largestParsedTimestampUs:J

    return-wide v0
.end method

.method public getReadIndex()I
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->rollingBuffer:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->getReadIndex()I

    move-result v0

    return v0
.end method

.method public getSample(Lcom/google/android/exoplayer/SampleHolder;)Z
    .registers 6
    .param p1, "holder"    # Lcom/google/android/exoplayer/SampleHolder;

    .prologue
    const/4 v1, 0x0

    .line 136
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->advanceToEligibleSample()Z

    move-result v0

    .line 137
    .local v0, "foundEligibleSample":Z
    if-nez v0, :cond_8

    .line 144
    :goto_7
    return v1

    .line 141
    :cond_8
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->rollingBuffer:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->readSample(Lcom/google/android/exoplayer/SampleHolder;)Z

    .line 142
    iput-boolean v1, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->needKeyframe:Z

    .line 143
    iget-wide v2, p1, Lcom/google/android/exoplayer/SampleHolder;->timeUs:J

    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->lastReadTimeUs:J

    .line 144
    const/4 v1, 0x1

    goto :goto_7
.end method

.method public getWriteIndex()I
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->rollingBuffer:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->getWriteIndex()I

    move-result v0

    return v0
.end method

.method public hasFormat()Z
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->format:Lcom/google/android/exoplayer/MediaFormat;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->advanceToEligibleSample()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public sampleData(Lcom/google/android/exoplayer/extractor/ExtractorInput;IZ)I
    .registers 5
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .param p2, "length"    # I
    .param p3, "allowEndOfInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->rollingBuffer:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->appendData(Lcom/google/android/exoplayer/extractor/ExtractorInput;IZ)I

    move-result v0

    return v0
.end method

.method public sampleData(Lcom/google/android/exoplayer/upstream/DataSource;IZ)I
    .registers 5
    .param p1, "dataSource"    # Lcom/google/android/exoplayer/upstream/DataSource;
    .param p2, "length"    # I
    .param p3, "allowEndOfInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->rollingBuffer:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->appendData(Lcom/google/android/exoplayer/upstream/DataSource;IZ)I

    move-result v0

    return v0
.end method

.method public sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V
    .registers 4
    .param p1, "buffer"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p2, "length"    # I

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->rollingBuffer:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->appendData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 261
    return-void
.end method

.method public sampleMetadata(JIII[B)V
    .registers 16
    .param p1, "timeUs"    # J
    .param p3, "flags"    # I
    .param p4, "size"    # I
    .param p5, "offset"    # I
    .param p6, "encryptionKey"    # [B

    .prologue
    .line 265
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->largestParsedTimestampUs:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->largestParsedTimestampUs:J

    .line 266
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->rollingBuffer:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->rollingBuffer:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->getWritePosition()J

    move-result-wide v2

    int-to-long v4, p4

    sub-long/2addr v2, v4

    int-to-long v4, p5

    sub-long v4, v2, v4

    move-wide v1, p1

    move v3, p3

    move v6, p4

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->commitSample(JIJI[B)V

    .line 268
    return-void
.end method

.method public skipToKeyframeBefore(J)Z
    .registers 4
    .param p1, "timeUs"    # J

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->rollingBuffer:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->skipToKeyframeBefore(J)Z

    move-result v0

    return v0
.end method
