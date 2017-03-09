.class public abstract Lcom/google/android/exoplayer/SampleSourceTrackRenderer;
.super Lcom/google/android/exoplayer/TrackRenderer;
.source "SampleSourceTrackRenderer.java"


# instance fields
.field private durationUs:J

.field private enabledSource:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

.field private enabledSourceTrackIndex:I

.field private handledSourceIndices:[I

.field private handledSourceTrackIndices:[I

.field private final sources:[Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;


# direct methods
.method public varargs constructor <init>([Lcom/google/android/exoplayer/SampleSource;)V
    .registers 5
    .param p1, "sources"    # [Lcom/google/android/exoplayer/SampleSource;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/exoplayer/TrackRenderer;-><init>()V

    .line 43
    array-length v1, p1

    new-array v1, v1, [Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    iput-object v1, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->sources:[Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    .line 44
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    array-length v1, p1

    if-ge v0, v1, :cond_19

    .line 45
    iget-object v1, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->sources:[Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    aget-object v2, p1, v0

    invoke-interface {v2}, Lcom/google/android/exoplayer/SampleSource;->register()Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    move-result-object v2

    aput-object v2, v1, v0

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 47
    :cond_19
    return-void
.end method

.method private checkForDiscontinuity(J)J
    .registers 8
    .param p1, "positionUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 250
    iget-object v2, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->enabledSource:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    iget v3, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->enabledSourceTrackIndex:I

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->readDiscontinuity(I)J

    move-result-wide v0

    .line 251
    .local v0, "discontinuityPositionUs":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_12

    .line 252
    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->onDiscontinuity(J)V

    .line 255
    .end local v0    # "discontinuityPositionUs":J
    :goto_11
    return-wide v0

    .restart local v0    # "discontinuityPositionUs":J
    :cond_12
    move-wide v0, p1

    goto :goto_11
.end method

.method private maybeThrowError(Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;)V
    .registers 4
    .param p1, "source"    # Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 260
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->maybeThrowError()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    .line 264
    return-void

    .line 261
    :catch_4
    move-exception v0

    .line 262
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/google/android/exoplayer/ExoPlaybackException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected final doPrepare(J)Z
    .registers 28
    .param p1, "positionUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 51
    const/4 v4, 0x1

    .line 52
    .local v4, "allSourcesPrepared":Z
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->sources:[Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v13, v0, :cond_26

    .line 53
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->sources:[Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    move-object/from16 v22, v0

    aget-object v22, v22, v13

    move-object/from16 v0, v22

    move-wide/from16 v1, p1

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->prepare(J)Z

    move-result v22

    and-int v4, v4, v22

    .line 52
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 55
    :cond_26
    if-nez v4, :cond_2b

    .line 56
    const/16 v22, 0x0

    .line 102
    :goto_2a
    return v22

    .line 59
    :cond_2b
    const/16 v18, 0x0

    .line 60
    .local v18, "totalSourceTrackCount":I
    const/4 v13, 0x0

    :goto_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->sources:[Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v13, v0, :cond_4e

    .line 61
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->sources:[Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    move-object/from16 v22, v0

    aget-object v22, v22, v13

    invoke-interface/range {v22 .. v22}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->getTrackCount()I

    move-result v22

    add-int v18, v18, v22

    .line 60
    add-int/lit8 v13, v13, 0x1

    goto :goto_2e

    .line 63
    :cond_4e
    const-wide/16 v6, 0x0

    .line 64
    .local v6, "durationUs":J
    const/4 v10, 0x0

    .line 65
    .local v10, "handledTrackCount":I
    move/from16 v0, v18

    new-array v9, v0, [I

    .line 66
    .local v9, "handledSourceIndices":[I
    move/from16 v0, v18

    new-array v11, v0, [I

    .line 67
    .local v11, "handledTrackIndices":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->sources:[Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v15, v0

    .line 68
    .local v15, "sourceCount":I
    const/16 v16, 0x0

    .local v16, "sourceIndex":I
    :goto_64
    move/from16 v0, v16

    if-ge v0, v15, :cond_bf

    .line 69
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->sources:[Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    move-object/from16 v22, v0

    aget-object v14, v22, v16

    .line 70
    .local v14, "source":Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;
    invoke-interface {v14}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->getTrackCount()I

    move-result v17

    .line 71
    .local v17, "sourceTrackCount":I
    const/16 v19, 0x0

    .local v19, "trackIndex":I
    :goto_76
    move/from16 v0, v19

    move/from16 v1, v17

    if-ge v0, v1, :cond_bc

    .line 72
    move/from16 v0, v19

    invoke-interface {v14, v0}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->getFormat(I)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v8

    .line 75
    .local v8, "format":Lcom/google/android/exoplayer/MediaFormat;
    :try_start_82
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->handlesTrack(Lcom/google/android/exoplayer/MediaFormat;)Z
    :try_end_87
    .catch Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException; {:try_start_82 .. :try_end_87} :catch_99

    move-result v12

    .line 79
    .local v12, "handlesTrack":Z
    if-eqz v12, :cond_96

    .line 80
    aput v16, v9, v10

    .line 81
    aput v19, v11, v10

    .line 82
    add-int/lit8 v10, v10, 0x1

    .line 83
    const-wide/16 v22, -0x1

    cmp-long v22, v6, v22

    if-nez v22, :cond_a2

    .line 71
    :cond_96
    :goto_96
    add-int/lit8 v19, v19, 0x1

    goto :goto_76

    .line 76
    .end local v12    # "handlesTrack":Z
    :catch_99
    move-exception v5

    .line 77
    .local v5, "e":Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;
    new-instance v22, Lcom/google/android/exoplayer/ExoPlaybackException;

    move-object/from16 v0, v22

    invoke-direct {v0, v5}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v22

    .line 87
    .end local v5    # "e":Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;
    .restart local v12    # "handlesTrack":Z
    :cond_a2
    iget-wide v0, v8, Lcom/google/android/exoplayer/MediaFormat;->durationUs:J

    move-wide/from16 v20, v0

    .line 88
    .local v20, "trackDurationUs":J
    const-wide/16 v22, -0x1

    cmp-long v22, v20, v22

    if-nez v22, :cond_af

    .line 89
    const-wide/16 v6, -0x1

    goto :goto_96

    .line 90
    :cond_af
    const-wide/16 v22, -0x2

    cmp-long v22, v20, v22

    if-eqz v22, :cond_96

    .line 93
    move-wide/from16 v0, v20

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    goto :goto_96

    .line 68
    .end local v8    # "format":Lcom/google/android/exoplayer/MediaFormat;
    .end local v12    # "handlesTrack":Z
    .end local v20    # "trackDurationUs":J
    :cond_bc
    add-int/lit8 v16, v16, 0x1

    goto :goto_64

    .line 99
    .end local v14    # "source":Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;
    .end local v17    # "sourceTrackCount":I
    .end local v19    # "trackIndex":I
    :cond_bf
    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->durationUs:J

    .line 100
    invoke-static {v9, v10}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->handledSourceIndices:[I

    .line 101
    invoke-static {v11, v10}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->handledSourceTrackIndices:[I

    .line 102
    const/16 v22, 0x1

    goto/16 :goto_2a
.end method

.method protected final doSomeWork(JJ)V
    .registers 12
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->shiftInputPosition(J)J

    move-result-wide p1

    .line 126
    iget-object v0, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->enabledSource:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    iget v1, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->enabledSourceTrackIndex:I

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->continueBuffering(IJ)Z

    move-result v6

    .line 127
    .local v6, "sourceIsReady":Z
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->checkForDiscontinuity(J)J

    move-result-wide p1

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .line 128
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->doSomeWork(JJZ)V

    .line 129
    return-void
.end method

.method protected abstract doSomeWork(JJZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation
.end method

.method protected getBufferedPositionUs()J
    .registers 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->enabledSource:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    invoke-interface {v0}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getDurationUs()J
    .registers 3

    .prologue
    .line 138
    iget-wide v0, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->durationUs:J

    return-wide v0
.end method

.method protected final getFormat(I)Lcom/google/android/exoplayer/MediaFormat;
    .registers 5
    .param p1, "track"    # I

    .prologue
    .line 174
    iget-object v1, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->sources:[Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    iget-object v2, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->handledSourceIndices:[I

    aget v2, v2, p1

    aget-object v0, v1, v2

    .line 175
    .local v0, "source":Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;
    iget-object v1, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->handledSourceTrackIndices:[I

    aget v1, v1, p1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->getFormat(I)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v1

    return-object v1
.end method

.method protected final getTrackCount()I
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->handledSourceTrackIndices:[I

    array-length v0, v0

    return v0
.end method

.method protected abstract handlesTrack(Lcom/google/android/exoplayer/MediaFormat;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation
.end method

.method protected maybeThrowError()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 143
    iget-object v2, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->enabledSource:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    if-eqz v2, :cond_a

    .line 144
    iget-object v2, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->enabledSource:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->maybeThrowError(Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;)V

    .line 151
    :cond_9
    return-void

    .line 146
    :cond_a
    iget-object v2, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->sources:[Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    array-length v1, v2

    .line 147
    .local v1, "sourceCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    if-ge v0, v1, :cond_9

    .line 148
    iget-object v2, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->sources:[Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    aget-object v2, v2, v0

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->maybeThrowError(Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;)V

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_e
.end method

.method protected onDisabled()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->enabledSource:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    iget v1, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->enabledSourceTrackIndex:I

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->disable(I)V

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->enabledSource:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    .line 157
    return-void
.end method

.method protected abstract onDiscontinuity(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation
.end method

.method protected onEnabled(IJZ)V
    .registers 7
    .param p1, "track"    # I
    .param p2, "positionUs"    # J
    .param p4, "joining"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p0, p2, p3}, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->shiftInputPosition(J)J

    move-result-wide p2

    .line 109
    iget-object v0, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->sources:[Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    iget-object v1, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->handledSourceIndices:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->enabledSource:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    .line 110
    iget-object v0, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->handledSourceTrackIndices:[I

    aget v0, v0, p1

    iput v0, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->enabledSourceTrackIndex:I

    .line 111
    iget-object v0, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->enabledSource:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    iget v1, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->enabledSourceTrackIndex:I

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->enable(IJ)V

    .line 112
    invoke-virtual {p0, p2, p3}, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->onDiscontinuity(J)V

    .line 113
    return-void
.end method

.method protected onReleased()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v2, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->sources:[Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    array-length v1, v2

    .line 162
    .local v1, "sourceCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    if-ge v0, v1, :cond_10

    .line 163
    iget-object v2, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->sources:[Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->release()V

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 165
    :cond_10
    return-void
.end method

.method protected final readSource(JLcom/google/android/exoplayer/MediaFormatHolder;Lcom/google/android/exoplayer/SampleHolder;)I
    .registers 12
    .param p1, "positionUs"    # J
    .param p3, "formatHolder"    # Lcom/google/android/exoplayer/MediaFormatHolder;
    .param p4, "sampleHolder"    # Lcom/google/android/exoplayer/SampleHolder;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->enabledSource:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    iget v1, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->enabledSourceTrackIndex:I

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->readData(IJLcom/google/android/exoplayer/MediaFormatHolder;Lcom/google/android/exoplayer/SampleHolder;)I

    move-result v0

    return v0
.end method

.method protected final seekTo(J)V
    .registers 4
    .param p1, "positionUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->shiftInputPosition(J)J

    move-result-wide p1

    .line 118
    iget-object v0, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->enabledSource:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->seekToUs(J)V

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->checkForDiscontinuity(J)J

    .line 120
    return-void
.end method

.method protected shiftInputPosition(J)J
    .registers 4
    .param p1, "positionUs"    # J

    .prologue
    .line 189
    return-wide p1
.end method
