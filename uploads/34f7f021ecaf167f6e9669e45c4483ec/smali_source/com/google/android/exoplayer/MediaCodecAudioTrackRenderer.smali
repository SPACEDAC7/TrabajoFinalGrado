.class public Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;
.super Lcom/google/android/exoplayer/MediaCodecTrackRenderer;
.source "MediaCodecAudioTrackRenderer.java"

# interfaces
.implements Lcom/google/android/exoplayer/MediaClock;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;
    }
.end annotation


# static fields
.field public static final MSG_SET_PLAYBACK_PARAMS:I = 0x2

.field public static final MSG_SET_VOLUME:I = 0x1


# instance fields
.field private allowPositionDiscontinuity:Z

.field private audioSessionId:I

.field private final audioTrack:Lcom/google/android/exoplayer/audio/AudioTrack;

.field private audioTrackHasData:Z

.field private currentPositionUs:J

.field private final eventListener:Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;

.field private lastFeedElapsedRealtimeMs:J

.field private passthroughEnabled:Z

.field private passthroughMediaFormat:Landroid/media/MediaFormat;

.field private pcmEncoding:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;)V
    .registers 5
    .param p1, "source"    # Lcom/google/android/exoplayer/SampleSource;
    .param p2, "mediaCodecSelector"    # Lcom/google/android/exoplayer/MediaCodecSelector;

    .prologue
    .line 105
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;Lcom/google/android/exoplayer/drm/DrmSessionManager;Z)V

    .line 106
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;Landroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;)V
    .registers 12
    .param p1, "source"    # Lcom/google/android/exoplayer/SampleSource;
    .param p2, "mediaCodecSelector"    # Lcom/google/android/exoplayer/MediaCodecSelector;
    .param p3, "eventHandler"    # Landroid/os/Handler;
    .param p4, "eventListener"    # Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;

    .prologue
    .line 133
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;Lcom/google/android/exoplayer/drm/DrmSessionManager;Z)V
    .registers 12
    .param p1, "source"    # Lcom/google/android/exoplayer/SampleSource;
    .param p2, "mediaCodecSelector"    # Lcom/google/android/exoplayer/MediaCodecSelector;
    .param p3, "drmSessionManager"    # Lcom/google/android/exoplayer/drm/DrmSessionManager;
    .param p4, "playClearSamplesWithoutKeys"    # Z

    .prologue
    const/4 v5, 0x0

    .line 121
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;)V
    .registers 16
    .param p1, "source"    # Lcom/google/android/exoplayer/SampleSource;
    .param p2, "mediaCodecSelector"    # Lcom/google/android/exoplayer/MediaCodecSelector;
    .param p3, "drmSessionManager"    # Lcom/google/android/exoplayer/drm/DrmSessionManager;
    .param p4, "playClearSamplesWithoutKeys"    # Z
    .param p5, "eventHandler"    # Landroid/os/Handler;
    .param p6, "eventListener"    # Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;

    .prologue
    .line 153
    const/4 v7, 0x0

    const/4 v8, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;Lcom/google/android/exoplayer/audio/AudioCapabilities;I)V

    .line 155
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;Lcom/google/android/exoplayer/audio/AudioCapabilities;I)V
    .registers 18
    .param p1, "source"    # Lcom/google/android/exoplayer/SampleSource;
    .param p2, "mediaCodecSelector"    # Lcom/google/android/exoplayer/MediaCodecSelector;
    .param p3, "drmSessionManager"    # Lcom/google/android/exoplayer/drm/DrmSessionManager;
    .param p4, "playClearSamplesWithoutKeys"    # Z
    .param p5, "eventHandler"    # Landroid/os/Handler;
    .param p6, "eventListener"    # Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;
    .param p7, "audioCapabilities"    # Lcom/google/android/exoplayer/audio/AudioCapabilities;
    .param p8, "streamType"    # I

    .prologue
    .line 178
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

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;-><init>([Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;Lcom/google/android/exoplayer/audio/AudioCapabilities;I)V

    .line 180
    return-void
.end method

.method public constructor <init>([Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;Lcom/google/android/exoplayer/audio/AudioCapabilities;I)V
    .registers 10
    .param p1, "sources"    # [Lcom/google/android/exoplayer/SampleSource;
    .param p2, "mediaCodecSelector"    # Lcom/google/android/exoplayer/MediaCodecSelector;
    .param p3, "drmSessionManager"    # Lcom/google/android/exoplayer/drm/DrmSessionManager;
    .param p4, "playClearSamplesWithoutKeys"    # Z
    .param p5, "eventHandler"    # Landroid/os/Handler;
    .param p6, "eventListener"    # Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;
    .param p7, "audioCapabilities"    # Lcom/google/android/exoplayer/audio/AudioCapabilities;
    .param p8, "streamType"    # I

    .prologue
    .line 203
    invoke-direct/range {p0 .. p6}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;-><init>([Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;)V

    .line 205
    iput-object p6, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->eventListener:Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;

    .line 206
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioSessionId:I

    .line 207
    new-instance v0, Lcom/google/android/exoplayer/audio/AudioTrack;

    invoke-direct {v0, p7, p8}, Lcom/google/android/exoplayer/audio/AudioTrack;-><init>(Lcom/google/android/exoplayer/audio/AudioCapabilities;I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lcom/google/android/exoplayer/audio/AudioTrack;

    .line 208
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;)Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->eventListener:Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;

    return-object v0
.end method

.method private notifyAudioTrackInitializationError(Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;)V
    .registers 4
    .param p1, "e"    # Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;

    .prologue
    .line 451
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->eventListener:Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;

    if-eqz v0, :cond_12

    .line 452
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$1;-><init>(Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 459
    :cond_12
    return-void
.end method

.method private notifyAudioTrackUnderrun(IJJ)V
    .registers 14
    .param p1, "bufferSize"    # I
    .param p2, "bufferSizeMs"    # J
    .param p4, "elapsedSinceLastFeedMs"    # J

    .prologue
    .line 474
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->eventListener:Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;

    if-eqz v0, :cond_16

    .line 475
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$3;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$3;-><init>(Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;IJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 482
    :cond_16
    return-void
.end method

.method private notifyAudioTrackWriteError(Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;)V
    .registers 4
    .param p1, "e"    # Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;

    .prologue
    .line 462
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->eventListener:Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;

    if-eqz v0, :cond_12

    .line 463
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$2;-><init>(Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 470
    :cond_12
    return-void
.end method


# virtual methods
.method protected allowPassthrough(Ljava/lang/String;)Z
    .registers 3
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lcom/google/android/exoplayer/audio/AudioTrack;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/audio/AudioTrack;->isPassthroughSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected configureCodec(Landroid/media/MediaCodec;ZLandroid/media/MediaFormat;Landroid/media/MediaCrypto;)V
    .registers 10
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "codecIsAdaptive"    # Z
    .param p3, "format"    # Landroid/media/MediaFormat;
    .param p4, "crypto"    # Landroid/media/MediaCrypto;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 248
    const-string v1, "mime"

    invoke-virtual {p3, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "mimeType":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->passthroughEnabled:Z

    if-eqz v1, :cond_1e

    .line 251
    const-string v1, "mime"

    const-string v2, "audio/raw"

    invoke-virtual {p3, v1, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p1, p3, v3, p4, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 253
    const-string v1, "mime"

    invoke-virtual {p3, v1, v0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iput-object p3, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    .line 259
    :goto_1d
    return-void

    .line 256
    :cond_1e
    invoke-virtual {p1, p3, v3, p4, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 257
    iput-object v3, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    goto :goto_1d
.end method

.method protected getDecoderInfo(Lcom/google/android/exoplayer/MediaCodecSelector;Ljava/lang/String;Z)Lcom/google/android/exoplayer/DecoderInfo;
    .registers 6
    .param p1, "mediaCodecSelector"    # Lcom/google/android/exoplayer/MediaCodecSelector;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "requiresSecureDecoder"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->allowPassthrough(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 223
    invoke-interface {p1}, Lcom/google/android/exoplayer/MediaCodecSelector;->getPassthroughDecoderInfo()Lcom/google/android/exoplayer/DecoderInfo;

    move-result-object v0

    .line 224
    .local v0, "passthroughDecoderInfo":Lcom/google/android/exoplayer/DecoderInfo;
    if-eqz v0, :cond_10

    .line 225
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->passthroughEnabled:Z

    .line 230
    .end local v0    # "passthroughDecoderInfo":Lcom/google/android/exoplayer/DecoderInfo;
    :goto_f
    return-object v0

    .line 229
    :cond_10
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->passthroughEnabled:Z

    .line 230
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->getDecoderInfo(Lcom/google/android/exoplayer/MediaCodecSelector;Ljava/lang/String;Z)Lcom/google/android/exoplayer/DecoderInfo;

    move-result-object v0

    goto :goto_f
.end method

.method protected getMediaClock()Lcom/google/android/exoplayer/MediaClock;
    .registers 1

    .prologue
    .line 263
    return-object p0
.end method

.method public getPositionUs()J
    .registers 5

    .prologue
    .line 327
    iget-object v2, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lcom/google/android/exoplayer/audio/AudioTrack;

    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->isEnded()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer/audio/AudioTrack;->getCurrentPositionUs(Z)J

    move-result-wide v0

    .line 328
    .local v0, "newCurrentPositionUs":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_19

    .line 329
    iget-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->allowPositionDiscontinuity:Z

    if-eqz v2, :cond_1c

    .line 330
    .end local v0    # "newCurrentPositionUs":J
    :goto_14
    iput-wide v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->currentPositionUs:J

    .line 331
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->allowPositionDiscontinuity:Z

    .line 333
    :cond_19
    iget-wide v2, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->currentPositionUs:J

    return-wide v2

    .line 329
    .restart local v0    # "newCurrentPositionUs":J
    :cond_1c
    iget-wide v2, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->currentPositionUs:J

    .line 330
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_14
.end method

.method protected handleAudioTrackDiscontinuity()V
    .registers 1

    .prologue
    .line 433
    return-void
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .registers 5
    .param p1, "messageType"    # I
    .param p2, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 437
    packed-switch p1, :pswitch_data_1c

    .line 445
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->handleMessage(ILjava/lang/Object;)V

    .line 448
    .end local p2    # "message":Ljava/lang/Object;
    :goto_6
    return-void

    .line 439
    .restart local p2    # "message":Ljava/lang/Object;
    :pswitch_7
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lcom/google/android/exoplayer/audio/AudioTrack;

    check-cast p2, Ljava/lang/Float;

    .end local p2    # "message":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/audio/AudioTrack;->setVolume(F)V

    goto :goto_6

    .line 442
    .restart local p2    # "message":Ljava/lang/Object;
    :pswitch_13
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lcom/google/android/exoplayer/audio/AudioTrack;

    check-cast p2, Landroid/media/PlaybackParams;

    .end local p2    # "message":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer/audio/AudioTrack;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    goto :goto_6

    .line 437
    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_7
        :pswitch_13
    .end packed-switch
.end method

.method protected handlesTrack(Lcom/google/android/exoplayer/MediaCodecSelector;Lcom/google/android/exoplayer/MediaFormat;)Z
    .registers 6
    .param p1, "mediaCodecSelector"    # Lcom/google/android/exoplayer/MediaCodecSelector;
    .param p2, "mediaFormat"    # Lcom/google/android/exoplayer/MediaFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 213
    iget-object v0, p2, Lcom/google/android/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    .line 214
    .local v0, "mimeType":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/exoplayer/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    const-string v2, "audio/x-unknown"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 215
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->allowPassthrough(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {p1}, Lcom/google/android/exoplayer/MediaCodecSelector;->getPassthroughDecoderInfo()Lcom/google/android/exoplayer/DecoderInfo;

    move-result-object v2

    if-nez v2, :cond_23

    .line 216
    :cond_1d
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer/MediaCodecSelector;->getDecoderInfo(Ljava/lang/String;Z)Lcom/google/android/exoplayer/DecoderInfo;

    move-result-object v2

    if-eqz v2, :cond_24

    :cond_23
    const/4 v1, 0x1

    .line 214
    :cond_24
    return v1
.end method

.method protected isEnded()Z
    .registers 2

    .prologue
    .line 317
    invoke-super {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lcom/google/android/exoplayer/audio/AudioTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/audio/AudioTrack;->hasPendingData()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected isReady()Z
    .registers 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lcom/google/android/exoplayer/audio/AudioTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/audio/AudioTrack;->hasPendingData()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-super {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->isReady()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected onAudioSessionId(I)V
    .registers 2
    .param p1, "audioSessionId"    # I

    .prologue
    .line 301
    return-void
.end method

.method protected onDisabled()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 338
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioSessionId:I

    .line 340
    :try_start_3
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lcom/google/android/exoplayer/audio/AudioTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/audio/AudioTrack;->release()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_c

    .line 342
    invoke-super {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->onDisabled()V

    .line 344
    return-void

    .line 342
    :catchall_c
    move-exception v0

    invoke-super {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->onDisabled()V

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
    .line 348
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->onDiscontinuity(J)V

    .line 349
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lcom/google/android/exoplayer/audio/AudioTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/audio/AudioTrack;->reset()V

    .line 350
    iput-wide p1, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->currentPositionUs:J

    .line 351
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->allowPositionDiscontinuity:Z

    .line 352
    return-void
.end method

.method protected onInputFormatChanged(Lcom/google/android/exoplayer/MediaFormatHolder;)V
    .registers 4
    .param p1, "holder"    # Lcom/google/android/exoplayer/MediaFormatHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 268
    invoke-super {p0, p1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->onInputFormatChanged(Lcom/google/android/exoplayer/MediaFormatHolder;)V

    .line 271
    const-string v0, "audio/raw"

    iget-object v1, p1, Lcom/google/android/exoplayer/MediaFormatHolder;->format:Lcom/google/android/exoplayer/MediaFormat;

    iget-object v1, v1, Lcom/google/android/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p1, Lcom/google/android/exoplayer/MediaFormatHolder;->format:Lcom/google/android/exoplayer/MediaFormat;

    iget v0, v0, Lcom/google/android/exoplayer/MediaFormat;->pcmEncoding:I

    :goto_13
    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->pcmEncoding:I

    .line 273
    return-void

    .line 271
    :cond_16
    const/4 v0, 0x2

    goto :goto_13
.end method

.method protected onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .registers 10
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "outputFormat"    # Landroid/media/MediaFormat;

    .prologue
    .line 277
    iget-object v5, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    if-eqz v5, :cond_27

    const/4 v3, 0x1

    .line 278
    .local v3, "passthrough":Z
    :goto_5
    if-eqz v3, :cond_29

    iget-object v5, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    const-string v6, "mime"

    .line 279
    invoke-virtual {v5, v6}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, "mimeType":Ljava/lang/String;
    :goto_f
    if-eqz v3, :cond_2c

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    .line 282
    .local v1, "format":Landroid/media/MediaFormat;
    :goto_13
    const-string v5, "channel-count"

    invoke-virtual {v1, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 283
    .local v0, "channelCount":I
    const-string v5, "sample-rate"

    invoke-virtual {v1, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    .line 284
    .local v4, "sampleRate":I
    iget-object v5, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lcom/google/android/exoplayer/audio/AudioTrack;

    iget v6, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->pcmEncoding:I

    invoke-virtual {v5, v2, v0, v4, v6}, Lcom/google/android/exoplayer/audio/AudioTrack;->configure(Ljava/lang/String;III)V

    .line 285
    return-void

    .line 277
    .end local v0    # "channelCount":I
    .end local v1    # "format":Landroid/media/MediaFormat;
    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v3    # "passthrough":Z
    .end local v4    # "sampleRate":I
    :cond_27
    const/4 v3, 0x0

    goto :goto_5

    .line 279
    .restart local v3    # "passthrough":Z
    :cond_29
    const-string v2, "audio/raw"

    goto :goto_f

    .restart local v2    # "mimeType":Ljava/lang/String;
    :cond_2c
    move-object v1, p2

    .line 281
    goto :goto_13
.end method

.method protected onOutputStreamEnded()V
    .registers 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lcom/google/android/exoplayer/audio/AudioTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/audio/AudioTrack;->handleEndOfStream()V

    .line 429
    return-void
.end method

.method protected onStarted()V
    .registers 2

    .prologue
    .line 305
    invoke-super {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->onStarted()V

    .line 306
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lcom/google/android/exoplayer/audio/AudioTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/audio/AudioTrack;->play()V

    .line 307
    return-void
.end method

.method protected onStopped()V
    .registers 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lcom/google/android/exoplayer/audio/AudioTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/audio/AudioTrack;->pause()V

    .line 312
    invoke-super {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->onStopped()V

    .line 313
    return-void
.end method

.method protected processOutputBuffer(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;IZ)Z
    .registers 29
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J
    .param p5, "codec"    # Landroid/media/MediaCodec;
    .param p6, "buffer"    # Ljava/nio/ByteBuffer;
    .param p7, "bufferInfo"    # Landroid/media/MediaCodec$BufferInfo;
    .param p8, "bufferIndex"    # I
    .param p9, "shouldSkip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 358
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->passthroughEnabled:Z

    if-eqz v2, :cond_18

    move-object/from16 v0, p7

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_18

    .line 360
    const/4 v2, 0x0

    move-object/from16 v0, p5

    move/from16 v1, p8

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 361
    const/4 v2, 0x1

    .line 423
    :goto_17
    return v2

    .line 364
    :cond_18
    if-eqz p9, :cond_35

    .line 365
    const/4 v2, 0x0

    move-object/from16 v0, p5

    move/from16 v1, p8

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->codecCounters:Lcom/google/android/exoplayer/CodecCounters;

    iget v3, v2, Lcom/google/android/exoplayer/CodecCounters;->skippedOutputBufferCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/google/android/exoplayer/CodecCounters;->skippedOutputBufferCount:I

    .line 367
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lcom/google/android/exoplayer/audio/AudioTrack;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/audio/AudioTrack;->handleDiscontinuity()V

    .line 368
    const/4 v2, 0x1

    goto :goto_17

    .line 371
    :cond_35
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lcom/google/android/exoplayer/audio/AudioTrack;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/audio/AudioTrack;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_c8

    .line 374
    :try_start_3f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioSessionId:I

    if-eqz v2, :cond_a6

    .line 375
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lcom/google/android/exoplayer/audio/AudioTrack;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioSessionId:I

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer/audio/AudioTrack;->initialize(I)I

    .line 380
    :goto_50
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioTrackHasData:Z
    :try_end_55
    .catch Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException; {:try_start_3f .. :try_end_55} :catch_bc

    .line 385
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_63

    .line 386
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lcom/google/android/exoplayer/audio/AudioTrack;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/audio/AudioTrack;->play()V

    .line 402
    :cond_63
    :goto_63
    :try_start_63
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lcom/google/android/exoplayer/audio/AudioTrack;

    move-object/from16 v0, p7

    iget v10, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    move-object/from16 v0, p7

    iget v11, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    move-object/from16 v0, p7

    iget-wide v12, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-object/from16 v9, p6

    invoke-virtual/range {v8 .. v13}, Lcom/google/android/exoplayer/audio/AudioTrack;->handleBuffer(Ljava/nio/ByteBuffer;IIJ)I

    move-result v18

    .line 404
    .local v18, "handleBufferResult":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->lastFeedElapsedRealtimeMs:J
    :try_end_81
    .catch Lcom/google/android/exoplayer/audio/AudioTrack$WriteException; {:try_start_63 .. :try_end_81} :catch_115

    .line 411
    and-int/lit8 v2, v18, 0x1

    if-eqz v2, :cond_8d

    .line 412
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->handleAudioTrackDiscontinuity()V

    .line 413
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->allowPositionDiscontinuity:Z

    .line 417
    :cond_8d
    and-int/lit8 v2, v18, 0x2

    if-eqz v2, :cond_121

    .line 418
    const/4 v2, 0x0

    move-object/from16 v0, p5

    move/from16 v1, p8

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 419
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->codecCounters:Lcom/google/android/exoplayer/CodecCounters;

    iget v3, v2, Lcom/google/android/exoplayer/CodecCounters;->renderedOutputBufferCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/google/android/exoplayer/CodecCounters;->renderedOutputBufferCount:I

    .line 420
    const/4 v2, 0x1

    goto/16 :goto_17

    .line 377
    .end local v18    # "handleBufferResult":I
    :cond_a6
    :try_start_a6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lcom/google/android/exoplayer/audio/AudioTrack;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/audio/AudioTrack;->initialize()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioSessionId:I

    .line 378
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioSessionId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->onAudioSessionId(I)V
    :try_end_bb
    .catch Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException; {:try_start_a6 .. :try_end_bb} :catch_bc

    goto :goto_50

    .line 381
    :catch_bc
    move-exception v15

    .line 382
    .local v15, "e":Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->notifyAudioTrackInitializationError(Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;)V

    .line 383
    new-instance v2, Lcom/google/android/exoplayer/ExoPlaybackException;

    invoke-direct {v2, v15}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 390
    .end local v15    # "e":Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;
    :cond_c8
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioTrackHasData:Z

    .line 391
    .local v14, "audioTrackHadData":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lcom/google/android/exoplayer/audio/AudioTrack;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/audio/AudioTrack;->hasPendingData()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioTrackHasData:Z

    .line 392
    if-eqz v14, :cond_63

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioTrackHasData:Z

    if-nez v2, :cond_63

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_63

    .line 393
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->lastFeedElapsedRealtimeMs:J

    sub-long v6, v2, v8

    .line 394
    .local v6, "elapsedSinceLastFeedMs":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lcom/google/android/exoplayer/audio/AudioTrack;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/audio/AudioTrack;->getBufferSizeUs()J

    move-result-wide v16

    .line 395
    .local v16, "bufferSizeUs":J
    const-wide/16 v2, -0x1

    cmp-long v2, v16, v2

    if-nez v2, :cond_110

    const-wide/16 v4, -0x1

    .line 396
    .local v4, "bufferSizeMs":J
    :goto_101
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lcom/google/android/exoplayer/audio/AudioTrack;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/audio/AudioTrack;->getBufferSize()I

    move-result v3

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->notifyAudioTrackUnderrun(IJJ)V

    goto/16 :goto_63

    .line 395
    .end local v4    # "bufferSizeMs":J
    :cond_110
    const-wide/16 v2, 0x3e8

    div-long v4, v16, v2

    goto :goto_101

    .line 405
    .end local v6    # "elapsedSinceLastFeedMs":J
    .end local v14    # "audioTrackHadData":Z
    .end local v16    # "bufferSizeUs":J
    :catch_115
    move-exception v15

    .line 406
    .local v15, "e":Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->notifyAudioTrackWriteError(Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;)V

    .line 407
    new-instance v2, Lcom/google/android/exoplayer/ExoPlaybackException;

    invoke-direct {v2, v15}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 423
    .end local v15    # "e":Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;
    .restart local v18    # "handleBufferResult":I
    :cond_121
    const/4 v2, 0x0

    goto/16 :goto_17
.end method
