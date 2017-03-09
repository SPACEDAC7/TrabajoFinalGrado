.class public Lcom/buzzfeed/android/vcr/player/VCRPlayerControl;
.super Ljava/lang/Object;
.source "VCRPlayerControl.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# instance fields
.field private final mPresenter:Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;


# direct methods
.method public constructor <init>(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;)V
    .registers 2
    .param p1, "presenter"    # Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/player/VCRPlayerControl;->mPresenter:Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;

    .line 41
    return-void
.end method


# virtual methods
.method public canPause()Z
    .registers 2

    .prologue
    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method public canSeekBackward()Z
    .registers 2

    .prologue
    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public canSeekForward()Z
    .registers 2

    .prologue
    .line 144
    const/4 v0, 0x1

    return v0
.end method

.method public getAudioSessionId()I
    .registers 2

    .prologue
    .line 156
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getBufferPercentage()I
    .registers 5

    .prologue
    .line 115
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/VCRPlayerControl;->mPresenter:Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;

    invoke-virtual {v1}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->getVideoPlayer()Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 116
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/VCRPlayerControl;->mPresenter:Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;

    invoke-virtual {v1}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->getVideoPlayer()Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    move-result-object v0

    .line 117
    .local v0, "player":Lcom/buzzfeed/android/vcr/player/VCRVideoPlayer;
    invoke-interface {v0}, Lcom/buzzfeed/android/vcr/player/VCRVideoPlayer;->getBufferedPercentage()J

    move-result-wide v2

    long-to-int v1, v2

    .line 120
    .end local v0    # "player":Lcom/buzzfeed/android/vcr/player/VCRVideoPlayer;
    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public getCurrentPosition()I
    .registers 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRPlayerControl;->mPresenter:Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->getCurrentPosition()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getDuration()I
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 67
    iget-object v2, p0, Lcom/buzzfeed/android/vcr/player/VCRPlayerControl;->mPresenter:Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;

    invoke-virtual {v2}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->getVideoPlayer()Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 68
    iget-object v2, p0, Lcom/buzzfeed/android/vcr/player/VCRPlayerControl;->mPresenter:Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;

    invoke-virtual {v2}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->getVideoPlayer()Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    move-result-object v0

    .line 69
    .local v0, "player":Lcom/buzzfeed/android/vcr/player/VCRVideoPlayer;
    invoke-interface {v0}, Lcom/buzzfeed/android/vcr/player/VCRVideoPlayer;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1a

    .line 71
    .end local v0    # "player":Lcom/buzzfeed/android/vcr/player/VCRVideoPlayer;
    :cond_19
    :goto_19
    return v1

    .line 69
    .restart local v0    # "player":Lcom/buzzfeed/android/vcr/player/VCRVideoPlayer;
    :cond_1a
    invoke-interface {v0}, Lcom/buzzfeed/android/vcr/player/VCRVideoPlayer;->getDuration()J

    move-result-wide v2

    long-to-int v1, v2

    goto :goto_19
.end method

.method public isPlaying()Z
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRPlayerControl;->mPresenter:Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRPlayerControl;->mPresenter:Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->pause()V

    .line 58
    return-void
.end method

.method public seekTo(I)V
    .registers 10
    .param p1, "timeMillis"    # I

    .prologue
    .line 91
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/VCRPlayerControl;->mPresenter:Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;

    invoke-virtual {v1}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->getVideoPlayer()Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 92
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/VCRPlayerControl;->mPresenter:Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;

    invoke-virtual {v1}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->getVideoPlayer()Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    move-result-object v0

    .line 93
    .local v0, "player":Lcom/buzzfeed/android/vcr/player/VCRVideoPlayer;
    invoke-interface {v0}, Lcom/buzzfeed/android/vcr/player/VCRVideoPlayer;->getDuration()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_1e

    const-wide/16 v2, 0x0

    .line 95
    .local v2, "seekPosition":J
    :goto_1a
    invoke-interface {v0, v2, v3}, Lcom/buzzfeed/android/vcr/player/VCRVideoPlayer;->seekTo(J)V

    .line 97
    .end local v0    # "player":Lcom/buzzfeed/android/vcr/player/VCRVideoPlayer;
    .end local v2    # "seekPosition":J
    :cond_1d
    return-void

    .line 93
    .restart local v0    # "player":Lcom/buzzfeed/android/vcr/player/VCRVideoPlayer;
    :cond_1e
    const/4 v1, 0x0

    .line 94
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/player/VCRPlayerControl;->getDuration()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-long v2, v1

    goto :goto_1a
.end method

.method public start()V
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRPlayerControl;->mPresenter:Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->play()V

    .line 49
    return-void
.end method
