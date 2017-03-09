.class abstract Lcom/buzzfeed/android/vcr/player/VCRExoPlayerEventProxy;
.super Ljava/lang/Object;
.source "VCRExoPlayerEventProxy.java"

# interfaces
.implements Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;
.implements Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;
.implements Lcom/google/android/exoplayer/SingleSampleSource$EventListener;
.implements Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;
.implements Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$EventListener;
.implements Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;
.implements Lcom/google/android/exoplayer/upstream/BandwidthMeter$EventListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIsLoggingEnabled:Z

.field private mLoadStartTimeMs:[J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const-class v0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayerEventProxy;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayerEventProxy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayerEventProxy;->mLoadStartTimeMs:[J

    .line 43
    return-void
.end method

.method private printInternalError(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 148
    sget-object v0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayerEventProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internalError ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    return-void
.end method


# virtual methods
.method public onAudioTrackInitializationError(Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;)V
    .registers 3
    .param p1, "e"    # Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;

    .prologue
    .line 96
    const-string v0, "audioTrackInitializationError"

    invoke-direct {p0, v0, p1}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayerEventProxy;->printInternalError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 97
    return-void
.end method

.method public onAudioTrackUnderrun(IJJ)V
    .registers 8
    .param p1, "bufferSize"    # I
    .param p2, "bufferSizeMs"    # J
    .param p4, "elapsedSinceLastFeedMs"    # J

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audioTrackUnderrun ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayerEventProxy;->printInternalError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 108
    return-void
.end method

.method public onAudioTrackWriteError(Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;)V
    .registers 3
    .param p1, "e"    # Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;

    .prologue
    .line 101
    const-string v0, "audioTrackWriteError"

    invoke-direct {p0, v0, p1}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayerEventProxy;->printInternalError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 102
    return-void
.end method

.method public onBandwidthSample(IJJ)V
    .registers 10
    .param p1, "elapsedMs"    # I
    .param p2, "bytes"    # J
    .param p4, "bitrateEstimate"    # J

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayerEventProxy;->mIsLoggingEnabled:Z

    if-eqz v0, :cond_36

    .line 143
    sget-object v0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayerEventProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bandwidth ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_36
    return-void
.end method

.method public onCryptoError(Landroid/media/MediaCodec$CryptoException;)V
    .registers 3
    .param p1, "e"    # Landroid/media/MediaCodec$CryptoException;

    .prologue
    .line 129
    const-string v0, "cryptoError"

    invoke-direct {p0, v0, p1}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayerEventProxy;->printInternalError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 130
    return-void
.end method

.method public onDecoderInitializationError(Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V
    .registers 3
    .param p1, "e"    # Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;

    .prologue
    .line 124
    const-string v0, "decoderInitializationError"

    invoke-direct {p0, v0, p1}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayerEventProxy;->printInternalError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 125
    return-void
.end method

.method public onDecoderInitialized(Ljava/lang/String;JJ)V
    .registers 9
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "initializationDurationMs"    # J

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayerEventProxy;->mIsLoggingEnabled:Z

    if-eqz v0, :cond_22

    .line 136
    sget-object v0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayerEventProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decoderInitialized ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_22
    return-void
.end method

.method public onDownstreamFormatChanged(ILcom/google/android/exoplayer/chunk/Format;IJ)V
    .registers 9
    .param p1, "sourceId"    # I
    .param p2, "format"    # Lcom/google/android/exoplayer/chunk/Format;
    .param p3, "trigger"    # I
    .param p4, "mediaTimeMs"    # J

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayerEventProxy;->mIsLoggingEnabled:Z

    if-eqz v0, :cond_31

    .line 86
    if-nez p1, :cond_32

    .line 87
    sget-object v0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayerEventProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "videoFormat ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/exoplayer/chunk/Format;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_31
    :goto_31
    return-void

    .line 88
    :cond_32
    const/4 v0, 0x1

    if-ne p1, v0, :cond_31

    .line 89
    sget-object v0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayerEventProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioFormat ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/exoplayer/chunk/Format;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31
.end method

.method public onDrawnToSurface(Landroid/view/Surface;)V
    .registers 2
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 120
    return-void
.end method

.method public onDroppedFrames(IJ)V
    .registers 7
    .param p1, "count"    # I
    .param p2, "elapsed"    # J

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayerEventProxy;->mIsLoggingEnabled:Z

    if-eqz v0, :cond_22

    .line 113
    sget-object v0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayerEventProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "droppedFrames ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_22
    return-void
.end method

.method public onLoadCanceled(IJ)V
    .registers 4
    .param p1, "sourceId"    # I
    .param p2, "bytesLoaded"    # J

    .prologue
    .line 68
    return-void
.end method

.method public onLoadCompleted(IJIILcom/google/android/exoplayer/chunk/Format;JJJJ)V
    .registers 21
    .param p1, "sourceId"    # I
    .param p2, "bytesLoaded"    # J
    .param p4, "type"    # I
    .param p5, "trigger"    # I
    .param p6, "format"    # Lcom/google/android/exoplayer/chunk/Format;
    .param p7, "mediaStartTimeMs"    # J
    .param p9, "mediaEndTimeMs"    # J
    .param p11, "elapsedRealtimeMs"    # J
    .param p13, "loadDurationMs"    # J

    .prologue
    .line 59
    iget-boolean v2, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayerEventProxy;->mIsLoggingEnabled:Z

    if-eqz v2, :cond_3e

    sget-object v2, Lcom/buzzfeed/android/vcr/player/VCRExoPlayerEventProxy;->TAG:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/exoplayer/util/VerboseLogUtil;->isTagEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 60
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayerEventProxy;->mLoadStartTimeMs:[J

    aget-wide v4, v4, p1

    sub-long v0, v2, v4

    .line 61
    .local v0, "downloadTime":J
    sget-object v2, Lcom/buzzfeed/android/vcr/player/VCRExoPlayerEventProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadEnd ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .end local v0    # "downloadTime":J
    :cond_3e
    return-void
.end method

.method public onLoadError(ILjava/io/IOException;)V
    .registers 4
    .param p1, "sourceId"    # I
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayerEventProxy;->mIsLoggingEnabled:Z

    if-eqz v0, :cond_9

    .line 73
    const-string v0, "loadError"

    invoke-direct {p0, v0, p2}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayerEventProxy;->printInternalError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 75
    :cond_9
    return-void
.end method

.method public onLoadStarted(IJIILcom/google/android/exoplayer/chunk/Format;JJ)V
    .registers 16
    .param p1, "sourceId"    # I
    .param p2, "length"    # J
    .param p4, "type"    # I
    .param p5, "trigger"    # I
    .param p6, "format"    # Lcom/google/android/exoplayer/chunk/Format;
    .param p7, "mediaStartTimeMs"    # J
    .param p9, "mediaEndTimeMs"    # J

    .prologue
    .line 48
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayerEventProxy;->mLoadStartTimeMs:[J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    aput-wide v2, v0, p1

    .line 49
    iget-boolean v0, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayerEventProxy;->mIsLoggingEnabled:Z

    if-eqz v0, :cond_50

    sget-object v0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayerEventProxy;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer/util/VerboseLogUtil;->isTagEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 50
    sget-object v0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayerEventProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadStart ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p9, p10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_50
    return-void
.end method

.method public onUpstreamDiscarded(IJJ)V
    .registers 6
    .param p1, "sourceId"    # I
    .param p2, "mediaStartTimeMs"    # J
    .param p4, "mediaEndTimeMs"    # J

    .prologue
    .line 80
    return-void
.end method

.method setLoggingEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayerEventProxy;->mIsLoggingEnabled:Z

    .line 153
    return-void
.end method
