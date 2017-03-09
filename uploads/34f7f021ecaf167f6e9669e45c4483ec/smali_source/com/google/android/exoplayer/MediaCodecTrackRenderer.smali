.class public abstract Lcom/google/android/exoplayer/MediaCodecTrackRenderer;
.super Lcom/google/android/exoplayer/SampleSourceTrackRenderer;
.source "MediaCodecTrackRenderer.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;,
        Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;
    }
.end annotation


# static fields
.field private static final ADAPTATION_WORKAROUND_BUFFER:[B

.field private static final ADAPTATION_WORKAROUND_SLICE_WIDTH_HEIGHT:I = 0x20

.field private static final MAX_CODEC_HOTSWAP_TIME_MS:J = 0x3e8L

.field private static final RECONFIGURATION_STATE_NONE:I = 0x0

.field private static final RECONFIGURATION_STATE_QUEUE_PENDING:I = 0x2

.field private static final RECONFIGURATION_STATE_WRITE_PENDING:I = 0x1

.field private static final REINITIALIZATION_STATE_NONE:I = 0x0

.field private static final REINITIALIZATION_STATE_SIGNAL_END_OF_STREAM:I = 0x1

.field private static final REINITIALIZATION_STATE_WAIT_END_OF_STREAM:I = 0x2

.field protected static final SOURCE_STATE_NOT_READY:I = 0x0

.field protected static final SOURCE_STATE_READY:I = 0x1

.field protected static final SOURCE_STATE_READY_READ_MAY_FAIL:I = 0x2


# instance fields
.field private codec:Landroid/media/MediaCodec;

.field public final codecCounters:Lcom/google/android/exoplayer/CodecCounters;

.field private codecHotswapTimeMs:J

.field private codecIsAdaptive:Z

.field private codecNeedsAdaptationWorkaround:Z

.field private codecNeedsAdaptationWorkaroundBuffer:Z

.field private codecNeedsDiscardToSpsWorkaround:Z

.field private codecNeedsEosFlushWorkaround:Z

.field private codecNeedsEosPropagationWorkaround:Z

.field private codecNeedsFlushWorkaround:Z

.field private codecNeedsMonoChannelCountWorkaround:Z

.field private codecReceivedBuffers:Z

.field private codecReceivedEos:Z

.field private codecReconfigurationState:I

.field private codecReconfigured:Z

.field private codecReinitializationState:I

.field private final decodeOnlyPresentationTimestamps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceNeedsAutoFrcWorkaround:Z

.field private drmInitData:Lcom/google/android/exoplayer/drm/DrmInitData;

.field private final drmSessionManager:Lcom/google/android/exoplayer/drm/DrmSessionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer/drm/DrmSessionManager",
            "<",
            "Lcom/google/android/exoplayer/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field protected final eventHandler:Landroid/os/Handler;

.field private final eventListener:Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;

.field private format:Lcom/google/android/exoplayer/MediaFormat;

.field private final formatHolder:Lcom/google/android/exoplayer/MediaFormatHolder;

.field private inputBuffers:[Ljava/nio/ByteBuffer;

.field private inputIndex:I

.field private inputStreamEnded:Z

.field private final mediaCodecSelector:Lcom/google/android/exoplayer/MediaCodecSelector;

.field private openedDrmSession:Z

.field private final outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private outputBuffers:[Ljava/nio/ByteBuffer;

.field private outputIndex:I

.field private outputStreamEnded:Z

.field private final playClearSamplesWithoutKeys:Z

.field private final sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

.field private shouldSkipAdaptationWorkaroundOutputBuffer:Z

.field private sourceState:I

.field private waitingForFirstSyncFrame:Z

.field private waitingForKeys:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 201
    const-string v0, "0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Util;->getBytesFromHexString(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->ADAPTATION_WORKAROUND_BUFFER:[B

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;)V
    .registers 14
    .param p1, "source"    # Lcom/google/android/exoplayer/SampleSource;
    .param p2, "mediaCodecSelector"    # Lcom/google/android/exoplayer/MediaCodecSelector;
    .param p4, "playClearSamplesWithoutKeys"    # Z
    .param p5, "eventHandler"    # Landroid/os/Handler;
    .param p6, "eventListener"    # Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/SampleSource;",
            "Lcom/google/android/exoplayer/MediaCodecSelector;",
            "Lcom/google/android/exoplayer/drm/DrmSessionManager",
            "<",
            "Lcom/google/android/exoplayer/drm/FrameworkMediaCrypto;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 265
    .local p3, "drmSessionManager":Lcom/google/android/exoplayer/drm/DrmSessionManager;, "Lcom/google/android/exoplayer/drm/DrmSessionManager<Lcom/google/android/exoplayer/drm/FrameworkMediaCrypto;>;"
    const/4 v0, 0x1

    new-array v1, v0, [Lcom/google/android/exoplayer/SampleSource;

    const/4 v0, 0x0

    aput-object p1, v1, v0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;-><init>([Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;)V

    .line 267
    return-void
.end method

.method public constructor <init>([Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;)V
    .registers 10
    .param p1, "sources"    # [Lcom/google/android/exoplayer/SampleSource;
    .param p2, "mediaCodecSelector"    # Lcom/google/android/exoplayer/MediaCodecSelector;
    .param p4, "playClearSamplesWithoutKeys"    # Z
    .param p5, "eventHandler"    # Landroid/os/Handler;
    .param p6, "eventListener"    # Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/exoplayer/SampleSource;",
            "Lcom/google/android/exoplayer/MediaCodecSelector;",
            "Lcom/google/android/exoplayer/drm/DrmSessionManager",
            "<",
            "Lcom/google/android/exoplayer/drm/FrameworkMediaCrypto;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "drmSessionManager":Lcom/google/android/exoplayer/drm/DrmSessionManager;, "Lcom/google/android/exoplayer/drm/DrmSessionManager<Lcom/google/android/exoplayer/drm/FrameworkMediaCrypto;>;"
    const/4 v1, 0x0

    .line 286
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;-><init>([Lcom/google/android/exoplayer/SampleSource;)V

    .line 287
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_4c

    const/4 v0, 0x1

    :goto_b
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 288
    invoke-static {p2}, Lcom/google/android/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/MediaCodecSelector;

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->mediaCodecSelector:Lcom/google/android/exoplayer/MediaCodecSelector;

    .line 289
    iput-object p3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->drmSessionManager:Lcom/google/android/exoplayer/drm/DrmSessionManager;

    .line 290
    iput-boolean p4, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->playClearSamplesWithoutKeys:Z

    .line 291
    iput-object p5, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->eventHandler:Landroid/os/Handler;

    .line 292
    iput-object p6, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->eventListener:Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;

    .line 293
    invoke-static {}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->deviceNeedsAutoFrcWorkaround()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->deviceNeedsAutoFrcWorkaround:Z

    .line 294
    new-instance v0, Lcom/google/android/exoplayer/CodecCounters;

    invoke-direct {v0}, Lcom/google/android/exoplayer/CodecCounters;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecCounters:Lcom/google/android/exoplayer/CodecCounters;

    .line 295
    new-instance v0, Lcom/google/android/exoplayer/SampleHolder;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/SampleHolder;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    .line 296
    new-instance v0, Lcom/google/android/exoplayer/MediaFormatHolder;

    invoke-direct {v0}, Lcom/google/android/exoplayer/MediaFormatHolder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->formatHolder:Lcom/google/android/exoplayer/MediaFormatHolder;

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    .line 298
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 299
    iput v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReconfigurationState:I

    .line 300
    iput v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReinitializationState:I

    .line 301
    return-void

    :cond_4c
    move v0, v1

    .line 287
    goto :goto_b
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer/MediaCodecTrackRenderer;)Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer/MediaCodecTrackRenderer;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->eventListener:Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;

    return-object v0
.end method

.method private static codecNeedsAdaptationWorkaround(Ljava/lang/String;)Z
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1092
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_41

    const-string v0, "OMX.Nvidia.h264.decode"

    .line 1093
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "OMX.Nvidia.h264.decode.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    :cond_16
    sget-object v0, Lcom/google/android/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    const-string v1, "flounder"

    .line 1094
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    sget-object v0, Lcom/google/android/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    const-string v1, "flounder_lte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    sget-object v0, Lcom/google/android/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    const-string v1, "grouper"

    .line 1095
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    sget-object v0, Lcom/google/android/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "tilapia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    :cond_3f
    const/4 v0, 0x1

    .line 1092
    :goto_40
    return v0

    .line 1095
    :cond_41
    const/4 v0, 0x0

    goto :goto_40
.end method

.method private static codecNeedsDiscardToSpsWorkaround(Ljava/lang/String;Lcom/google/android/exoplayer/MediaFormat;)Z
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "format"    # Lcom/google/android/exoplayer/MediaFormat;

    .prologue
    .line 1109
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_18

    iget-object v0, p1, Lcom/google/android/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "OMX.MTK.VIDEO.DECODER.AVC"

    .line 1110
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    .line 1109
    :goto_17
    return v0

    .line 1110
    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private static codecNeedsEosFlushWorkaround(Ljava/lang/String;)Z
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1142
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_10

    const-string v0, "OMX.google.vorbis.decoder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private static codecNeedsEosPropagationWorkaround(Ljava/lang/String;)Z
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1126
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x11

    if-gt v0, v1, :cond_18

    const-string v0, "OMX.rk.video_decoder.avc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "OMX.allwinner.video.decoder.avc"

    .line 1127
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    .line 1126
    :goto_17
    return v0

    .line 1127
    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private static codecNeedsFlushWorkaround(Ljava/lang/String;)Z
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x12

    .line 1072
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    if-lt v0, v1, :cond_3a

    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    if-ne v0, v1, :cond_1a

    const-string v0, "OMX.SEC.avc.dec"

    .line 1074
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string v0, "OMX.SEC.avc.dec.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    :cond_1a
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_3c

    sget-object v0, Lcom/google/android/exoplayer/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "SM-G800"

    .line 1075
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const-string v0, "OMX.Exynos.avc.dec"

    .line 1076
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string v0, "OMX.Exynos.avc.dec.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    :cond_3a
    const/4 v0, 0x1

    .line 1072
    :goto_3b
    return v0

    .line 1076
    :cond_3c
    const/4 v0, 0x0

    goto :goto_3b
.end method

.method private static codecNeedsMonoChannelCountWorkaround(Ljava/lang/String;Lcom/google/android/exoplayer/MediaFormat;)Z
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "format"    # Lcom/google/android/exoplayer/MediaFormat;

    .prologue
    const/4 v0, 0x1

    .line 1159
    sget v1, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v2, 0x12

    if-gt v1, v2, :cond_14

    iget v1, p1, Lcom/google/android/exoplayer/MediaFormat;->channelCount:I

    if-ne v1, v0, :cond_14

    const-string v1, "OMX.MTK.AUDIO.DECODER.MP3"

    .line 1160
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1159
    :goto_13
    return v0

    .line 1160
    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private static deviceNeedsAutoFrcWorkaround()Z
    .registers 2

    .prologue
    .line 1178
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x16

    if-gt v0, v1, :cond_1c

    const-string v0, "foster"

    sget-object v1, Lcom/google/android/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "NVIDIA"

    sget-object v1, Lcom/google/android/exoplayer/util/Util;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private drainOutputBuffer(JJ)Z
    .registers 16
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 917
    iget-boolean v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputStreamEnded:Z

    if-eqz v1, :cond_6

    .line 918
    const/4 v1, 0x0

    .line 964
    :goto_5
    return v1

    .line 921
    :cond_6
    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputIndex:I

    if-gez v1, :cond_18

    .line 922
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->getDequeueOutputBufferTimeoutUs()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputIndex:I

    .line 925
    :cond_18
    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputIndex:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_22

    .line 926
    invoke-direct {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->processOutputFormat()V

    .line 927
    const/4 v1, 0x1

    goto :goto_5

    .line 928
    :cond_22
    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputIndex:I

    const/4 v2, -0x3

    if-ne v1, v2, :cond_39

    .line 929
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 930
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecCounters:Lcom/google/android/exoplayer/CodecCounters;

    iget v2, v1, Lcom/google/android/exoplayer/CodecCounters;->outputBuffersChangedCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/google/android/exoplayer/CodecCounters;->outputBuffersChangedCount:I

    .line 931
    const/4 v1, 0x1

    goto :goto_5

    .line 932
    :cond_39
    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputIndex:I

    if-gez v1, :cond_51

    .line 933
    iget-boolean v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecNeedsEosPropagationWorkaround:Z

    if-eqz v1, :cond_4f

    iget-boolean v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputStreamEnded:Z

    if-nez v1, :cond_4a

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReinitializationState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4f

    .line 935
    :cond_4a
    invoke-direct {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->processEndOfStream()V

    .line 936
    const/4 v1, 0x1

    goto :goto_5

    .line 938
    :cond_4f
    const/4 v1, 0x0

    goto :goto_5

    .line 941
    :cond_51
    iget-boolean v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    if-eqz v1, :cond_65

    .line 942
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    .line 943
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    iget v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputIndex:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 944
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputIndex:I

    .line 945
    const/4 v1, 0x1

    goto :goto_5

    .line 948
    :cond_65
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_72

    .line 949
    invoke-direct {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->processEndOfStream()V

    .line 950
    const/4 v1, 0x0

    goto :goto_5

    .line 953
    :cond_72
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->getDecodeOnlyIndex(J)I

    move-result v0

    .line 954
    .local v0, "decodeOnlyIndex":I
    iget-object v6, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputBuffers:[Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputIndex:I

    aget-object v7, v1, v2

    iget-object v8, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v9, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a8

    const/4 v10, 0x1

    :goto_8a
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->processOutputBuffer(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;IZ)Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 956
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {p0, v2, v3}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->onProcessedOutputBuffer(J)V

    .line 957
    const/4 v1, -0x1

    if-eq v0, v1, :cond_a2

    .line 958
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 960
    :cond_a2
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputIndex:I

    .line 961
    const/4 v1, 0x1

    goto/16 :goto_5

    .line 954
    :cond_a8
    const/4 v10, 0x0

    goto :goto_8a

    .line 964
    :cond_aa
    const/4 v1, 0x0

    goto/16 :goto_5
.end method

.method private feedInputBuffer(JZ)Z
    .registers 31
    .param p1, "positionUs"    # J
    .param p3, "firstFeed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 583
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputStreamEnded:Z

    if-nez v4, :cond_d

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReinitializationState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_f

    .line 587
    :cond_d
    const/4 v4, 0x0

    .line 733
    :goto_e
    return v4

    .line 590
    :cond_f
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputIndex:I

    if-gez v4, :cond_42

    .line 591
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    const-wide/16 v12, 0x0

    invoke-virtual {v4, v12, v13}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputIndex:I

    .line 592
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputIndex:I

    if-gez v4, :cond_2b

    .line 593
    const/4 v4, 0x0

    goto :goto_e

    .line 595
    :cond_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputBuffers:[Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputIndex:I

    aget-object v5, v5, v8

    iput-object v5, v4, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    .line 596
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/SampleHolder;->clearData()V

    .line 599
    :cond_42
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReinitializationState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_71

    .line 602
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecNeedsEosPropagationWorkaround:Z

    if-eqz v4, :cond_56

    .line 609
    :goto_4f
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReinitializationState:I

    .line 610
    const/4 v4, 0x0

    goto :goto_e

    .line 605
    :cond_56
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReceivedEos:Z

    .line 606
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputIndex:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 607
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputIndex:I

    goto :goto_4f

    .line 613
    :cond_71
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    if-eqz v4, :cond_a6

    .line 614
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    .line 615
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget-object v4, v4, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    sget-object v5, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->ADAPTATION_WORKAROUND_BUFFER:[B

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 616
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputIndex:I

    const/4 v6, 0x0

    sget-object v8, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->ADAPTATION_WORKAROUND_BUFFER:[B

    array-length v7, v8

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 617
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputIndex:I

    .line 618
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReceivedBuffers:Z

    .line 619
    const/4 v4, 0x1

    goto/16 :goto_e

    .line 623
    :cond_a6
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->waitingForKeys:Z

    if-eqz v4, :cond_b6

    .line 625
    const/16 v26, -0x3

    .line 642
    .local v26, "result":I
    :cond_ae
    :goto_ae
    const/4 v4, -0x2

    move/from16 v0, v26

    if-ne v0, v4, :cond_112

    .line 643
    const/4 v4, 0x0

    goto/16 :goto_e

    .line 629
    .end local v26    # "result":I
    :cond_b6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReconfigurationState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_ee

    .line 630
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_bf
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->format:Lcom/google/android/exoplayer/MediaFormat;

    iget-object v4, v4, Lcom/google/android/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v25

    if-ge v0, v4, :cond_e9

    .line 631
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->format:Lcom/google/android/exoplayer/MediaFormat;

    iget-object v4, v4, Lcom/google/android/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    move/from16 v0, v25

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [B

    .line 632
    .local v23, "data":[B
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget-object v4, v4, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 630
    add-int/lit8 v25, v25, 0x1

    goto :goto_bf

    .line 634
    .end local v23    # "data":[B
    :cond_e9
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReconfigurationState:I

    .line 636
    .end local v25    # "i":I
    :cond_ee
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->formatHolder:Lcom/google/android/exoplayer/MediaFormatHolder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->readSource(JLcom/google/android/exoplayer/MediaFormatHolder;Lcom/google/android/exoplayer/SampleHolder;)I

    move-result v26

    .line 637
    .restart local v26    # "result":I
    if-eqz p3, :cond_ae

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sourceState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_ae

    const/4 v4, -0x2

    move/from16 v0, v26

    if-ne v0, v4, :cond_ae

    .line 638
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sourceState:I

    goto :goto_ae

    .line 645
    :cond_112
    const/4 v4, -0x4

    move/from16 v0, v26

    if-ne v0, v4, :cond_136

    .line 646
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReconfigurationState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_12a

    .line 649
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/SampleHolder;->clearData()V

    .line 650
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReconfigurationState:I

    .line 652
    :cond_12a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->formatHolder:Lcom/google/android/exoplayer/MediaFormatHolder;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->onInputFormatChanged(Lcom/google/android/exoplayer/MediaFormatHolder;)V

    .line 653
    const/4 v4, 0x1

    goto/16 :goto_e

    .line 655
    :cond_136
    const/4 v4, -0x1

    move/from16 v0, v26

    if-ne v0, v4, :cond_193

    .line 656
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReconfigurationState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_14e

    .line 660
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/SampleHolder;->clearData()V

    .line 661
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReconfigurationState:I

    .line 663
    :cond_14e
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputStreamEnded:Z

    .line 664
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReceivedBuffers:Z

    if-nez v4, :cond_15f

    .line 665
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->processEndOfStream()V

    .line 666
    const/4 v4, 0x0

    goto/16 :goto_e

    .line 669
    :cond_15f
    :try_start_15f
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecNeedsEosPropagationWorkaround:Z

    if-eqz v4, :cond_168

    .line 680
    :goto_165
    const/4 v4, 0x0

    goto/16 :goto_e

    .line 672
    :cond_168
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReceivedEos:Z

    .line 673
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputIndex:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 674
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputIndex:I
    :try_end_182
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_15f .. :try_end_182} :catch_183

    goto :goto_165

    .line 676
    :catch_183
    move-exception v24

    .line 677
    .local v24, "e":Landroid/media/MediaCodec$CryptoException;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->notifyCryptoError(Landroid/media/MediaCodec$CryptoException;)V

    .line 678
    new-instance v4, Lcom/google/android/exoplayer/ExoPlaybackException;

    move-object/from16 v0, v24

    invoke-direct {v4, v0}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 682
    .end local v24    # "e":Landroid/media/MediaCodec$CryptoException;
    :cond_193
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->waitingForFirstSyncFrame:Z

    if-eqz v4, :cond_1be

    .line 685
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/SampleHolder;->isSyncFrame()Z

    move-result v4

    if-nez v4, :cond_1b9

    .line 686
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/SampleHolder;->clearData()V

    .line 687
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReconfigurationState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1b6

    .line 690
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReconfigurationState:I

    .line 692
    :cond_1b6
    const/4 v4, 0x1

    goto/16 :goto_e

    .line 694
    :cond_1b9
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->waitingForFirstSyncFrame:Z

    .line 696
    :cond_1be
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/SampleHolder;->isEncrypted()Z

    move-result v10

    .line 697
    .local v10, "sampleEncrypted":Z
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->shouldWaitForKeys(Z)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->waitingForKeys:Z

    .line 698
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->waitingForKeys:Z

    if-eqz v4, :cond_1d9

    .line 699
    const/4 v4, 0x0

    goto/16 :goto_e

    .line 701
    :cond_1d9
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecNeedsDiscardToSpsWorkaround:Z

    if-eqz v4, :cond_1fe

    if-nez v10, :cond_1fe

    .line 702
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget-object v4, v4, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-static {v4}, Lcom/google/android/exoplayer/util/NalUnitUtil;->discardToSps(Ljava/nio/ByteBuffer;)V

    .line 703
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget-object v4, v4, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    if-nez v4, :cond_1f9

    .line 704
    const/4 v4, 0x1

    goto/16 :goto_e

    .line 706
    :cond_1f9
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecNeedsDiscardToSpsWorkaround:Z

    .line 709
    :cond_1fe
    :try_start_1fe
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget-object v4, v4, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    .line 710
    .local v9, "bufferSize":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget v4, v4, Lcom/google/android/exoplayer/SampleHolder;->size:I

    sub-int v11, v9, v4

    .line 711
    .local v11, "adaptiveReconfigurationBytes":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget-wide v6, v4, Lcom/google/android/exoplayer/SampleHolder;->timeUs:J

    .line 712
    .local v6, "presentationTimeUs":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/SampleHolder;->isDecodeOnly()Z

    move-result v4

    if-eqz v4, :cond_22b

    .line 713
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 716
    :cond_22b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget-object v8, v4, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->onQueuedInputBuffer(JLjava/nio/ByteBuffer;IZ)V

    .line 718
    if-eqz v10, :cond_26c

    .line 719
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    invoke-static {v4, v11}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->getFrameworkCryptoInfo(Lcom/google/android/exoplayer/SampleHolder;I)Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v15

    .line 721
    .local v15, "cryptoInfo":Landroid/media/MediaCodec$CryptoInfo;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputIndex:I

    const/4 v14, 0x0

    const/16 v18, 0x0

    move-wide/from16 v16, v6

    invoke-virtual/range {v12 .. v18}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    .line 725
    .end local v15    # "cryptoInfo":Landroid/media/MediaCodec$CryptoInfo;
    :goto_250
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputIndex:I

    .line 726
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReceivedBuffers:Z

    .line 727
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReconfigurationState:I

    .line 728
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecCounters:Lcom/google/android/exoplayer/CodecCounters;

    iget v5, v4, Lcom/google/android/exoplayer/CodecCounters;->inputBufferCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/google/android/exoplayer/CodecCounters;->inputBufferCount:I

    .line 733
    const/4 v4, 0x1

    goto/16 :goto_e

    .line 723
    :cond_26c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputIndex:I

    move/from16 v17, v0

    const/16 v18, 0x0

    const/16 v22, 0x0

    move/from16 v19, v9

    move-wide/from16 v20, v6

    invoke-virtual/range {v16 .. v22}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_283
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1fe .. :try_end_283} :catch_284

    goto :goto_250

    .line 729
    .end local v6    # "presentationTimeUs":J
    .end local v9    # "bufferSize":I
    .end local v11    # "adaptiveReconfigurationBytes":I
    :catch_284
    move-exception v24

    .line 730
    .restart local v24    # "e":Landroid/media/MediaCodec$CryptoException;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->notifyCryptoError(Landroid/media/MediaCodec$CryptoException;)V

    .line 731
    new-instance v4, Lcom/google/android/exoplayer/ExoPlaybackException;

    move-object/from16 v0, v24

    invoke-direct {v4, v0}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private getDecodeOnlyIndex(J)I
    .registers 8
    .param p1, "presentationTimeUs"    # J

    .prologue
    .line 1053
    iget-object v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 1054
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_1d

    .line 1055
    iget-object v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_1a

    .line 1059
    .end local v0    # "i":I
    :goto_19
    return v0

    .line 1054
    .restart local v0    # "i":I
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1059
    :cond_1d
    const/4 v0, -0x1

    goto :goto_19
.end method

.method private static getFrameworkCryptoInfo(Lcom/google/android/exoplayer/SampleHolder;I)Landroid/media/MediaCodec$CryptoInfo;
    .registers 6
    .param p0, "sampleHolder"    # Lcom/google/android/exoplayer/SampleHolder;
    .param p1, "adaptiveReconfigurationBytes"    # I

    .prologue
    .line 738
    iget-object v1, p0, Lcom/google/android/exoplayer/SampleHolder;->cryptoInfo:Lcom/google/android/exoplayer/CryptoInfo;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/CryptoInfo;->getFrameworkCryptoInfoV16()Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v0

    .line 739
    .local v0, "cryptoInfo":Landroid/media/MediaCodec$CryptoInfo;
    if-nez p1, :cond_9

    .line 749
    :goto_8
    return-object v0

    .line 745
    :cond_9
    iget-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    if-nez v1, :cond_12

    .line 746
    const/4 v1, 0x1

    new-array v1, v1, [I

    iput-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 748
    :cond_12
    iget-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    add-int/2addr v3, p1

    aput v3, v1, v2

    goto :goto_8
.end method

.method private getFrameworkMediaFormat(Lcom/google/android/exoplayer/MediaFormat;)Landroid/media/MediaFormat;
    .registers 5
    .param p1, "format"    # Lcom/google/android/exoplayer/MediaFormat;

    .prologue
    .line 753
    invoke-virtual {p1}, Lcom/google/android/exoplayer/MediaFormat;->getFrameworkMediaFormatV16()Landroid/media/MediaFormat;

    move-result-object v0

    .line 754
    .local v0, "mediaFormat":Landroid/media/MediaFormat;
    iget-boolean v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->deviceNeedsAutoFrcWorkaround:Z

    if-eqz v1, :cond_e

    .line 755
    const-string v1, "auto-frc"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 757
    :cond_e
    return-object v0
.end method

.method private isWithinHotswapPeriod()Z
    .registers 7

    .prologue
    .line 898
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecHotswapTimeMs:J

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private notifyAndThrowDecoderInitError(Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V
    .registers 3
    .param p1, "e"    # Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 426
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->notifyDecoderInitializationError(Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V

    .line 427
    new-instance v0, Lcom/google/android/exoplayer/ExoPlaybackException;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private notifyCryptoError(Landroid/media/MediaCodec$CryptoException;)V
    .registers 4
    .param p1, "e"    # Landroid/media/MediaCodec$CryptoException;

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->eventListener:Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;

    if-eqz v0, :cond_12

    .line 1030
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$2;-><init>(Lcom/google/android/exoplayer/MediaCodecTrackRenderer;Landroid/media/MediaCodec$CryptoException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1037
    :cond_12
    return-void
.end method

.method private notifyDecoderInitializationError(Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V
    .registers 4
    .param p1, "e"    # Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->eventListener:Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;

    if-eqz v0, :cond_12

    .line 1019
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$1;-><init>(Lcom/google/android/exoplayer/MediaCodecTrackRenderer;Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1026
    :cond_12
    return-void
.end method

.method private notifyDecoderInitialized(Ljava/lang/String;JJ)V
    .registers 14
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "initializedTimestamp"    # J
    .param p4, "initializationDuration"    # J

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->eventListener:Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;

    if-eqz v0, :cond_16

    .line 1042
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$3;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$3;-><init>(Lcom/google/android/exoplayer/MediaCodecTrackRenderer;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1050
    :cond_16
    return-void
.end method

.method private processEndOfStream()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 1007
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReinitializationState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 1009
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->releaseCodec()V

    .line 1010
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->maybeInitCodec()V

    .line 1015
    :goto_b
    return-void

    .line 1012
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputStreamEnded:Z

    .line 1013
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->onOutputStreamEnded()V

    goto :goto_b
.end method

.method private processOutputFormat()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x20

    const/4 v2, 0x1

    .line 973
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 974
    .local v0, "format":Landroid/media/MediaFormat;
    iget-boolean v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecNeedsAdaptationWorkaround:Z

    if-eqz v1, :cond_21

    const-string/jumbo v1, "width"

    .line 975
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_21

    const-string v1, "height"

    .line 977
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_21

    .line 980
    iput-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    .line 988
    :goto_20
    return-void

    .line 983
    :cond_21
    iget-boolean v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecNeedsMonoChannelCountWorkaround:Z

    if-eqz v1, :cond_2a

    .line 984
    const-string v1, "channel-count"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 986
    :cond_2a
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    .line 987
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecCounters:Lcom/google/android/exoplayer/CodecCounters;

    iget v2, v1, Lcom/google/android/exoplayer/CodecCounters;->outputFormatChangedCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/google/android/exoplayer/CodecCounters;->outputFormatChangedCount:I

    goto :goto_20
.end method

.method private readFormat(J)V
    .registers 6
    .param p1, "positionUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 538
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->formatHolder:Lcom/google/android/exoplayer/MediaFormatHolder;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->readSource(JLcom/google/android/exoplayer/MediaFormatHolder;Lcom/google/android/exoplayer/SampleHolder;)I

    move-result v0

    .line 539
    .local v0, "result":I
    const/4 v1, -0x4

    if-ne v0, v1, :cond_f

    .line 540
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->formatHolder:Lcom/google/android/exoplayer/MediaFormatHolder;

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->onInputFormatChanged(Lcom/google/android/exoplayer/MediaFormatHolder;)V

    .line 542
    :cond_f
    return-void
.end method

.method private shouldWaitForKeys(Z)Z
    .registers 5
    .param p1, "sampleEncrypted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 761
    iget-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->openedDrmSession:Z

    if-nez v2, :cond_6

    .line 772
    :cond_5
    :goto_5
    return v1

    .line 764
    :cond_6
    iget-object v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->drmSessionManager:Lcom/google/android/exoplayer/drm/DrmSessionManager;

    invoke-interface {v2}, Lcom/google/android/exoplayer/drm/DrmSessionManager;->getState()I

    move-result v0

    .line 765
    .local v0, "drmManagerState":I
    if-nez v0, :cond_1a

    .line 766
    new-instance v1, Lcom/google/android/exoplayer/ExoPlaybackException;

    iget-object v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->drmSessionManager:Lcom/google/android/exoplayer/drm/DrmSessionManager;

    invoke-interface {v2}, Lcom/google/android/exoplayer/drm/DrmSessionManager;->getError()Ljava/lang/Exception;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 768
    :cond_1a
    const/4 v2, 0x4

    if-eq v0, v2, :cond_5

    if-nez p1, :cond_23

    iget-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->playClearSamplesWithoutKeys:Z

    if-nez v2, :cond_5

    .line 770
    :cond_23
    const/4 v1, 0x1

    goto :goto_5
.end method


# virtual methods
.method protected canReconfigureCodec(Landroid/media/MediaCodec;ZLcom/google/android/exoplayer/MediaFormat;Lcom/google/android/exoplayer/MediaFormat;)Z
    .registers 6
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "codecIsAdaptive"    # Z
    .param p3, "oldFormat"    # Lcom/google/android/exoplayer/MediaFormat;
    .param p4, "newFormat"    # Lcom/google/android/exoplayer/MediaFormat;

    .prologue
    .line 873
    const/4 v0, 0x0

    return v0
.end method

.method protected final codecInitialized()Z
    .registers 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected abstract configureCodec(Landroid/media/MediaCodec;ZLandroid/media/MediaFormat;Landroid/media/MediaCrypto;)V
.end method

.method protected doSomeWork(JJZ)V
    .registers 9
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J
    .param p5, "sourceIsReady"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 519
    if-eqz p5, :cond_3c

    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sourceState:I

    if-nez v0, :cond_39

    move v0, v1

    :goto_9
    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sourceState:I

    .line 522
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->format:Lcom/google/android/exoplayer/MediaFormat;

    if-nez v0, :cond_12

    .line 523
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->readFormat(J)V

    .line 525
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->maybeInitCodec()V

    .line 526
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_33

    .line 527
    const-string v0, "drainAndFeed"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 528
    :cond_1e
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->drainOutputBuffer(JJ)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 529
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->feedInputBuffer(JZ)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 530
    :cond_2a
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->feedInputBuffer(JZ)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 532
    :cond_30
    invoke-static {}, Lcom/google/android/exoplayer/util/TraceUtil;->endSection()V

    .line 534
    :cond_33
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecCounters:Lcom/google/android/exoplayer/CodecCounters;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/CodecCounters;->ensureUpdated()V

    .line 535
    return-void

    .line 519
    :cond_39
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sourceState:I

    goto :goto_9

    :cond_3c
    move v0, v2

    goto :goto_9
.end method

.method protected flushCodec()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 545
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecHotswapTimeMs:J

    .line 546
    iput v3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputIndex:I

    .line 547
    iput v3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputIndex:I

    .line 548
    iput-boolean v4, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->waitingForFirstSyncFrame:Z

    .line 549
    iput-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->waitingForKeys:Z

    .line 550
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 551
    iput-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    .line 552
    iput-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    .line 553
    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecNeedsFlushWorkaround:Z

    if-nez v0, :cond_24

    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecNeedsEosFlushWorkaround:Z

    if-eqz v0, :cond_35

    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReceivedEos:Z

    if-eqz v0, :cond_35

    .line 555
    :cond_24
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->releaseCodec()V

    .line 556
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->maybeInitCodec()V

    .line 567
    :goto_2a
    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReconfigured:Z

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->format:Lcom/google/android/exoplayer/MediaFormat;

    if-eqz v0, :cond_34

    .line 570
    iput v4, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReconfigurationState:I

    .line 572
    :cond_34
    return-void

    .line 557
    :cond_35
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReinitializationState:I

    if-eqz v0, :cond_40

    .line 560
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->releaseCodec()V

    .line 561
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->maybeInitCodec()V

    goto :goto_2a

    .line 564
    :cond_40
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 565
    iput-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReceivedBuffers:Z

    goto :goto_2a
.end method

.method protected getDecoderInfo(Lcom/google/android/exoplayer/MediaCodecSelector;Ljava/lang/String;Z)Lcom/google/android/exoplayer/DecoderInfo;
    .registers 5
    .param p1, "mediaCodecSelector"    # Lcom/google/android/exoplayer/MediaCodecSelector;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "requiresSecureDecoder"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    .line 331
    invoke-interface {p1, p2, p3}, Lcom/google/android/exoplayer/MediaCodecSelector;->getDecoderInfo(Ljava/lang/String;Z)Lcom/google/android/exoplayer/DecoderInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getDequeueOutputBufferTimeoutUs()J
    .registers 3

    .prologue
    .line 907
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected final getSourceState()I
    .registers 2

    .prologue
    .line 894
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sourceState:I

    return v0
.end method

.method protected abstract handlesTrack(Lcom/google/android/exoplayer/MediaCodecSelector;Lcom/google/android/exoplayer/MediaFormat;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation
.end method

.method protected final handlesTrack(Lcom/google/android/exoplayer/MediaFormat;)Z
    .registers 3
    .param p1, "mediaFormat"    # Lcom/google/android/exoplayer/MediaFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    .line 305
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->mediaCodecSelector:Lcom/google/android/exoplayer/MediaCodecSelector;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->handlesTrack(Lcom/google/android/exoplayer/MediaCodecSelector;Lcom/google/android/exoplayer/MediaFormat;)Z

    move-result v0

    return v0
.end method

.method protected final haveFormat()Z
    .registers 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->format:Lcom/google/android/exoplayer/MediaFormat;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected isEnded()Z
    .registers 2

    .prologue
    .line 878
    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputStreamEnded:Z

    return v0
.end method

.method protected isReady()Z
    .registers 2

    .prologue
    .line 883
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->format:Lcom/google/android/exoplayer/MediaFormat;

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->waitingForKeys:Z

    if-nez v0, :cond_18

    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sourceState:I

    if-nez v0, :cond_16

    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputIndex:I

    if-gez v0, :cond_16

    .line 884
    invoke-direct {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->isWithinHotswapPeriod()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    .line 883
    :goto_17
    return v0

    .line 884
    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method protected final maybeInitCodec()V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->shouldInitCodec()Z

    move-result v0

    if-nez v0, :cond_7

    .line 422
    :cond_6
    :goto_6
    return-void

    .line 351
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->format:Lcom/google/android/exoplayer/MediaFormat;

    iget-object v12, v0, Lcom/google/android/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    .line 352
    .local v12, "mimeType":Ljava/lang/String;
    const/4 v11, 0x0

    .line 353
    .local v11, "mediaCrypto":Landroid/media/MediaCrypto;
    const/4 v13, 0x0

    .line 354
    .local v13, "requiresSecureDecoder":Z
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->drmInitData:Lcom/google/android/exoplayer/drm/DrmInitData;

    if-eqz v0, :cond_57

    .line 355
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->drmSessionManager:Lcom/google/android/exoplayer/drm/DrmSessionManager;

    if-nez v0, :cond_1d

    .line 356
    new-instance v0, Lcom/google/android/exoplayer/ExoPlaybackException;

    const-string v4, "Media requires a DrmSessionManager"

    invoke-direct {v0, v4}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_1d
    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->openedDrmSession:Z

    if-nez v0, :cond_2b

    .line 359
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->drmSessionManager:Lcom/google/android/exoplayer/drm/DrmSessionManager;

    iget-object v4, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->drmInitData:Lcom/google/android/exoplayer/drm/DrmInitData;

    invoke-interface {v0, v4}, Lcom/google/android/exoplayer/drm/DrmSessionManager;->open(Lcom/google/android/exoplayer/drm/DrmInitData;)V

    .line 360
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->openedDrmSession:Z

    .line 362
    :cond_2b
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->drmSessionManager:Lcom/google/android/exoplayer/drm/DrmSessionManager;

    invoke-interface {v0}, Lcom/google/android/exoplayer/drm/DrmSessionManager;->getState()I

    move-result v9

    .line 363
    .local v9, "drmSessionState":I
    if-nez v9, :cond_3f

    .line 364
    new-instance v0, Lcom/google/android/exoplayer/ExoPlaybackException;

    iget-object v4, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->drmSessionManager:Lcom/google/android/exoplayer/drm/DrmSessionManager;

    invoke-interface {v4}, Lcom/google/android/exoplayer/drm/DrmSessionManager;->getError()Ljava/lang/Exception;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 365
    :cond_3f
    const/4 v0, 0x3

    if-eq v9, v0, :cond_45

    const/4 v0, 0x4

    if-ne v9, v0, :cond_6

    .line 367
    :cond_45
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->drmSessionManager:Lcom/google/android/exoplayer/drm/DrmSessionManager;

    invoke-interface {v0}, Lcom/google/android/exoplayer/drm/DrmSessionManager;->getMediaCrypto()Lcom/google/android/exoplayer/drm/ExoMediaCrypto;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/drm/FrameworkMediaCrypto;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/drm/FrameworkMediaCrypto;->getWrappedMediaCrypto()Landroid/media/MediaCrypto;

    move-result-object v11

    .line 368
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->drmSessionManager:Lcom/google/android/exoplayer/drm/DrmSessionManager;

    invoke-interface {v0, v12}, Lcom/google/android/exoplayer/drm/DrmSessionManager;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result v13

    .line 375
    .end local v9    # "drmSessionState":I
    :cond_57
    const/4 v8, 0x0

    .line 377
    .local v8, "decoderInfo":Lcom/google/android/exoplayer/DecoderInfo;
    :try_start_58
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->mediaCodecSelector:Lcom/google/android/exoplayer/MediaCodecSelector;

    invoke-virtual {p0, v0, v12, v13}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->getDecoderInfo(Lcom/google/android/exoplayer/MediaCodecSelector;Ljava/lang/String;Z)Lcom/google/android/exoplayer/DecoderInfo;
    :try_end_5d
    .catch Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException; {:try_start_58 .. :try_end_5d} :catch_121

    move-result-object v8

    .line 383
    :goto_5e
    if-nez v8, :cond_6e

    .line 384
    new-instance v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;

    iget-object v4, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->format:Lcom/google/android/exoplayer/MediaFormat;

    const/4 v5, 0x0

    const v14, -0xc34f

    invoke-direct {v0, v4, v5, v13, v14}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;-><init>(Lcom/google/android/exoplayer/MediaFormat;Ljava/lang/Throwable;ZI)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->notifyAndThrowDecoderInitError(Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V

    .line 388
    :cond_6e
    iget-object v1, v8, Lcom/google/android/exoplayer/DecoderInfo;->name:Ljava/lang/String;

    .line 389
    .local v1, "codecName":Ljava/lang/String;
    iget-boolean v0, v8, Lcom/google/android/exoplayer/DecoderInfo;->adaptive:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecIsAdaptive:Z

    .line 390
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->format:Lcom/google/android/exoplayer/MediaFormat;

    invoke-static {v1, v0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecNeedsDiscardToSpsWorkaround(Ljava/lang/String;Lcom/google/android/exoplayer/MediaFormat;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecNeedsDiscardToSpsWorkaround:Z

    .line 391
    invoke-static {v1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecNeedsFlushWorkaround(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecNeedsFlushWorkaround:Z

    .line 392
    invoke-static {v1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecNeedsAdaptationWorkaround(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecNeedsAdaptationWorkaround:Z

    .line 393
    invoke-static {v1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecNeedsEosPropagationWorkaround(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecNeedsEosPropagationWorkaround:Z

    .line 394
    invoke-static {v1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecNeedsEosFlushWorkaround(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecNeedsEosFlushWorkaround:Z

    .line 395
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->format:Lcom/google/android/exoplayer/MediaFormat;

    invoke-static {v1, v0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecNeedsMonoChannelCountWorkaround(Ljava/lang/String;Lcom/google/android/exoplayer/MediaFormat;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecNeedsMonoChannelCountWorkaround:Z

    .line 397
    :try_start_9c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 398
    .local v6, "codecInitializingTimestamp":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createByCodecName("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 399
    invoke-static {v1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    .line 400
    invoke-static {}, Lcom/google/android/exoplayer/util/TraceUtil;->endSection()V

    .line 401
    const-string v0, "configureCodec"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    iget-boolean v4, v8, Lcom/google/android/exoplayer/DecoderInfo;->adaptive:Z

    iget-object v5, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->format:Lcom/google/android/exoplayer/MediaFormat;

    invoke-direct {p0, v5}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->getFrameworkMediaFormat(Lcom/google/android/exoplayer/MediaFormat;)Landroid/media/MediaFormat;

    move-result-object v5

    invoke-virtual {p0, v0, v4, v5, v11}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->configureCodec(Landroid/media/MediaCodec;ZLandroid/media/MediaFormat;Landroid/media/MediaCrypto;)V

    .line 403
    invoke-static {}, Lcom/google/android/exoplayer/util/TraceUtil;->endSection()V

    .line 404
    const-string v0, "codec.start()"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 406
    invoke-static {}, Lcom/google/android/exoplayer/util/TraceUtil;->endSection()V

    .line 407
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 408
    .local v2, "codecInitializedTimestamp":J
    sub-long v4, v2, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->notifyDecoderInitialized(Ljava/lang/String;JJ)V

    .line 410
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputBuffers:[Ljava/nio/ByteBuffer;

    .line 411
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputBuffers:[Ljava/nio/ByteBuffer;
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_101} :catch_131

    .line 416
    .end local v2    # "codecInitializedTimestamp":J
    .end local v6    # "codecInitializingTimestamp":J
    :goto_101
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->getState()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_13d

    .line 417
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    :goto_10c
    iput-wide v4, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecHotswapTimeMs:J

    .line 418
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputIndex:I

    .line 419
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputIndex:I

    .line 420
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->waitingForFirstSyncFrame:Z

    .line 421
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecCounters:Lcom/google/android/exoplayer/CodecCounters;

    iget v4, v0, Lcom/google/android/exoplayer/CodecCounters;->codecInitCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/google/android/exoplayer/CodecCounters;->codecInitCount:I

    goto/16 :goto_6

    .line 378
    .end local v1    # "codecName":Ljava/lang/String;
    :catch_121
    move-exception v10

    .line 379
    .local v10, "e":Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;
    new-instance v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;

    iget-object v4, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->format:Lcom/google/android/exoplayer/MediaFormat;

    const v5, -0xc34e

    invoke-direct {v0, v4, v10, v13, v5}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;-><init>(Lcom/google/android/exoplayer/MediaFormat;Ljava/lang/Throwable;ZI)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->notifyAndThrowDecoderInitError(Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V

    goto/16 :goto_5e

    .line 412
    .end local v10    # "e":Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;
    .restart local v1    # "codecName":Ljava/lang/String;
    :catch_131
    move-exception v10

    .line 413
    .local v10, "e":Ljava/lang/Exception;
    new-instance v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;

    iget-object v4, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->format:Lcom/google/android/exoplayer/MediaFormat;

    invoke-direct {v0, v4, v10, v13, v1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;-><init>(Lcom/google/android/exoplayer/MediaFormat;Ljava/lang/Throwable;ZLjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->notifyAndThrowDecoderInitError(Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V

    goto :goto_101

    .line 417
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_13d
    const-wide/16 v4, -0x1

    goto :goto_10c
.end method

.method protected onDisabled()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 444
    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->format:Lcom/google/android/exoplayer/MediaFormat;

    .line 445
    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->drmInitData:Lcom/google/android/exoplayer/drm/DrmInitData;

    .line 447
    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->releaseCodec()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_1d

    .line 450
    :try_start_8
    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->openedDrmSession:Z

    if-eqz v0, :cond_14

    .line 451
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->drmSessionManager:Lcom/google/android/exoplayer/drm/DrmSessionManager;

    invoke-interface {v0}, Lcom/google/android/exoplayer/drm/DrmSessionManager;->close()V

    .line 452
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->openedDrmSession:Z
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_18

    .line 455
    :cond_14
    invoke-super {p0}, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->onDisabled()V

    .line 458
    return-void

    .line 455
    :catchall_18
    move-exception v0

    invoke-super {p0}, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->onDisabled()V

    throw v0

    .line 449
    :catchall_1d
    move-exception v0

    .line 450
    :try_start_1e
    iget-boolean v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->openedDrmSession:Z

    if-eqz v1, :cond_2a

    .line 451
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->drmSessionManager:Lcom/google/android/exoplayer/drm/DrmSessionManager;

    invoke-interface {v1}, Lcom/google/android/exoplayer/drm/DrmSessionManager;->close()V

    .line 452
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->openedDrmSession:Z
    :try_end_2a
    .catchall {:try_start_1e .. :try_end_2a} :catchall_2e

    .line 455
    :cond_2a
    invoke-super {p0}, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->onDisabled()V

    throw v0

    :catchall_2e
    move-exception v0

    invoke-super {p0}, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->onDisabled()V

    throw v0
.end method

.method protected onDiscontinuity(J)V
    .registers 4
    .param p1, "positionUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 498
    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sourceState:I

    .line 499
    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputStreamEnded:Z

    .line 500
    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputStreamEnded:Z

    .line 501
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_e

    .line 502
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->flushCodec()V

    .line 504
    :cond_e
    return-void
.end method

.method protected onInputFormatChanged(Lcom/google/android/exoplayer/MediaFormatHolder;)V
    .registers 7
    .param p1, "formatHolder"    # Lcom/google/android/exoplayer/MediaFormatHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 782
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->format:Lcom/google/android/exoplayer/MediaFormat;

    .line 783
    .local v0, "oldFormat":Lcom/google/android/exoplayer/MediaFormat;
    iget-object v2, p1, Lcom/google/android/exoplayer/MediaFormatHolder;->format:Lcom/google/android/exoplayer/MediaFormat;

    iput-object v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->format:Lcom/google/android/exoplayer/MediaFormat;

    .line 784
    iget-object v2, p1, Lcom/google/android/exoplayer/MediaFormatHolder;->drmInitData:Lcom/google/android/exoplayer/drm/DrmInitData;

    iput-object v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->drmInitData:Lcom/google/android/exoplayer/drm/DrmInitData;

    .line 785
    iget-object v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->format:Lcom/google/android/exoplayer/MediaFormat;

    invoke-static {v2, v0}, Lcom/google/android/exoplayer/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 803
    :goto_13
    return-void

    .line 788
    :cond_14
    iget-object v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    if-eqz v2, :cond_41

    iget-object v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    iget-boolean v3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecIsAdaptive:Z

    iget-object v4, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->format:Lcom/google/android/exoplayer/MediaFormat;

    invoke-virtual {p0, v2, v3, v0, v4}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->canReconfigureCodec(Landroid/media/MediaCodec;ZLcom/google/android/exoplayer/MediaFormat;Lcom/google/android/exoplayer/MediaFormat;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 789
    iput-boolean v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReconfigured:Z

    .line 790
    iput v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReconfigurationState:I

    .line 791
    iget-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecNeedsAdaptationWorkaround:Z

    if-eqz v2, :cond_3f

    iget-object v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->format:Lcom/google/android/exoplayer/MediaFormat;

    iget v2, v2, Lcom/google/android/exoplayer/MediaFormat;->width:I

    iget v3, v0, Lcom/google/android/exoplayer/MediaFormat;->width:I

    if-ne v2, v3, :cond_3f

    iget-object v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->format:Lcom/google/android/exoplayer/MediaFormat;

    iget v2, v2, Lcom/google/android/exoplayer/MediaFormat;->height:I

    iget v3, v0, Lcom/google/android/exoplayer/MediaFormat;->height:I

    if-ne v2, v3, :cond_3f

    :goto_3c
    iput-boolean v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    goto :goto_13

    :cond_3f
    const/4 v1, 0x0

    goto :goto_3c

    .line 794
    :cond_41
    iget-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReceivedBuffers:Z

    if-eqz v2, :cond_48

    .line 796
    iput v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReinitializationState:I

    goto :goto_13

    .line 799
    :cond_48
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->releaseCodec()V

    .line 800
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->maybeInitCodec()V

    goto :goto_13
.end method

.method protected onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .registers 3
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "outputFormat"    # Landroid/media/MediaFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 817
    return-void
.end method

.method protected onOutputStreamEnded()V
    .registers 1

    .prologue
    .line 828
    return-void
.end method

.method protected onProcessedOutputBuffer(J)V
    .registers 3
    .param p1, "presentationTimeUs"    # J

    .prologue
    .line 854
    return-void
.end method

.method protected onQueuedInputBuffer(JLjava/nio/ByteBuffer;IZ)V
    .registers 6
    .param p1, "presentationTimeUs"    # J
    .param p3, "buffer"    # Ljava/nio/ByteBuffer;
    .param p4, "bufferSize"    # I
    .param p5, "sampleEncrypted"    # Z

    .prologue
    .line 843
    return-void
.end method

.method protected onStarted()V
    .registers 1

    .prologue
    .line 509
    return-void
.end method

.method protected onStopped()V
    .registers 1

    .prologue
    .line 514
    return-void
.end method

.method protected abstract processOutputBuffer(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;IZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation
.end method

.method protected releaseCodec()V
    .registers 6

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 461
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_4a

    .line 462
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecHotswapTimeMs:J

    .line 463
    iput v4, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputIndex:I

    .line 464
    iput v4, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputIndex:I

    .line 465
    iput-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->waitingForKeys:Z

    .line 466
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 467
    iput-object v3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputBuffers:[Ljava/nio/ByteBuffer;

    .line 468
    iput-object v3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 469
    iput-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReconfigured:Z

    .line 470
    iput-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReceivedBuffers:Z

    .line 471
    iput-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecIsAdaptive:Z

    .line 472
    iput-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecNeedsDiscardToSpsWorkaround:Z

    .line 473
    iput-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecNeedsFlushWorkaround:Z

    .line 474
    iput-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecNeedsAdaptationWorkaround:Z

    .line 475
    iput-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecNeedsEosPropagationWorkaround:Z

    .line 476
    iput-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecNeedsEosFlushWorkaround:Z

    .line 477
    iput-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecNeedsMonoChannelCountWorkaround:Z

    .line 478
    iput-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    .line 479
    iput-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    .line 480
    iput-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReceivedEos:Z

    .line 481
    iput v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReconfigurationState:I

    .line 482
    iput v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReinitializationState:I

    .line 483
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecCounters:Lcom/google/android/exoplayer/CodecCounters;

    iget v1, v0, Lcom/google/android/exoplayer/CodecCounters;->codecReleaseCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer/CodecCounters;->codecReleaseCount:I

    .line 485
    :try_start_3e
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_43
    .catchall {:try_start_3e .. :try_end_43} :catchall_4f

    .line 488
    :try_start_43
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_48
    .catchall {:try_start_43 .. :try_end_48} :catchall_4b

    .line 490
    iput-object v3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    .line 494
    :cond_4a
    return-void

    .line 490
    :catchall_4b
    move-exception v0

    iput-object v3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    throw v0

    .line 487
    :catchall_4f
    move-exception v0

    .line 488
    :try_start_50
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V
    :try_end_55
    .catchall {:try_start_50 .. :try_end_55} :catchall_58

    .line 490
    iput-object v3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    throw v0

    :catchall_58
    move-exception v0

    iput-object v3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    throw v0
.end method

.method protected shouldInitCodec()Z
    .registers 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->format:Lcom/google/android/exoplayer/MediaFormat;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
