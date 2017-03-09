.class Lcom/buzzfeed/android/vcr/player/FixedMediaCodecVideoTrackRenderer;
.super Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;
.source "FixedMediaCodecVideoTrackRenderer.java"


# static fields
.field private static final NO_VALUE:I = -0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;IJLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;I)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "source"    # Lcom/google/android/exoplayer/SampleSource;
    .param p3, "mediaCodecSelector"    # Lcom/google/android/exoplayer/MediaCodecSelector;
    .param p4, "videoScalingMode"    # I
    .param p5, "allowedJoiningTimeMs"    # J
    .param p7, "eventHandler"    # Landroid/os/Handler;
    .param p8, "eventListener"    # Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;
    .param p9, "maxDroppedFrameCountToNotify"    # I

    .prologue
    .line 31
    invoke-direct/range {p0 .. p9}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;IJLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;I)V

    .line 33
    return-void
.end method

.method private clearMaximumDimensions(Landroid/media/MediaFormat;)V
    .registers 4
    .param p1, "format"    # Landroid/media/MediaFormat;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 47
    invoke-static {}, Lcom/buzzfeed/toolkit/util/VersionUtil;->hasKitKat()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 48
    const-string v0, "max-height"

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 49
    const-string v0, "max-width"

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 51
    :cond_11
    return-void
.end method


# virtual methods
.method protected configureCodec(Landroid/media/MediaCodec;ZLandroid/media/MediaFormat;Landroid/media/MediaCrypto;)V
    .registers 5
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "codecIsAdaptive"    # Z
    .param p3, "format"    # Landroid/media/MediaFormat;
    .param p4, "crypto"    # Landroid/media/MediaCrypto;

    .prologue
    .line 41
    invoke-direct {p0, p3}, Lcom/buzzfeed/android/vcr/player/FixedMediaCodecVideoTrackRenderer;->clearMaximumDimensions(Landroid/media/MediaFormat;)V

    .line 42
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->configureCodec(Landroid/media/MediaCodec;ZLandroid/media/MediaFormat;Landroid/media/MediaCrypto;)V

    .line 43
    return-void
.end method
