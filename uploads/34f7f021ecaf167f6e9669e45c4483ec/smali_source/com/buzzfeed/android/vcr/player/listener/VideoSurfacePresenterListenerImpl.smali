.class public abstract Lcom/buzzfeed/android/vcr/player/listener/VideoSurfacePresenterListenerImpl;
.super Ljava/lang/Object;
.source "VideoSurfacePresenterListenerImpl.java"

# interfaces
.implements Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioMutedStateChanged(Z)V
    .registers 2
    .param p1, "muted"    # Z

    .prologue
    .line 19
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .registers 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 39
    return-void
.end method

.method public onPlayerPrepared(Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;)V
    .registers 2
    .param p1, "exoPlayer"    # Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    .prologue
    .line 14
    return-void
.end method

.method public onPlayerReleased(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;J)V
    .registers 4
    .param p1, "presenter"    # Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;
    .param p2, "playbackPosition"    # J

    .prologue
    .line 24
    return-void
.end method

.method public onPlayerStopped(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;J)V
    .registers 4
    .param p1, "presenter"    # Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;
    .param p2, "playbackPosition"    # J

    .prologue
    .line 29
    return-void
.end method

.method public onStateChanged(ZI)V
    .registers 3
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackState"    # I

    .prologue
    .line 34
    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "unappliedRotationDegrees"    # I
    .param p4, "pixelWidthHeightRatio"    # F

    .prologue
    .line 45
    return-void
.end method
