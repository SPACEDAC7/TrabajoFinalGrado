.class public Lcom/google/android/exoplayer/util/PlayerControl;
.super Ljava/lang/Object;
.source "PlayerControl.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# instance fields
.field private final exoPlayer:Lcom/google/android/exoplayer/ExoPlayer;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/ExoPlayer;)V
    .registers 2
    .param p1, "exoPlayer"    # Lcom/google/android/exoplayer/ExoPlayer;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/android/exoplayer/util/PlayerControl;->exoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    .line 33
    return-void
.end method


# virtual methods
.method public canPause()Z
    .registers 2

    .prologue
    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public canSeekBackward()Z
    .registers 2

    .prologue
    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method public canSeekForward()Z
    .registers 2

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public getAudioSessionId()I
    .registers 2

    .prologue
    .line 62
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getBufferPercentage()I
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/exoplayer/util/PlayerControl;->exoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->getBufferedPercentage()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()I
    .registers 5

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/exoplayer/util/PlayerControl;->exoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, Lcom/google/android/exoplayer/util/PlayerControl;->exoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    .line 73
    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_d
.end method

.method public getDuration()I
    .registers 5

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/exoplayer/util/PlayerControl;->exoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, Lcom/google/android/exoplayer/util/PlayerControl;->exoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    .line 79
    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->getDuration()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_d
.end method

.method public isPlaying()Z
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/exoplayer/util/PlayerControl;->exoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->getPlayWhenReady()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .registers 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/exoplayer/util/PlayerControl;->exoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/ExoPlayer;->setPlayWhenReady(Z)V

    .line 95
    return-void
.end method

.method public seekTo(I)V
    .registers 8
    .param p1, "timeMillis"    # I

    .prologue
    .line 99
    iget-object v2, p0, Lcom/google/android/exoplayer/util/PlayerControl;->exoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v2}, Lcom/google/android/exoplayer/ExoPlayer;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_14

    const-wide/16 v0, 0x0

    .line 101
    .local v0, "seekPosition":J
    :goto_e
    iget-object v2, p0, Lcom/google/android/exoplayer/util/PlayerControl;->exoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v2, v0, v1}, Lcom/google/android/exoplayer/ExoPlayer;->seekTo(J)V

    .line 102
    return-void

    .line 99
    .end local v0    # "seekPosition":J
    :cond_14
    const/4 v2, 0x0

    .line 100
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/PlayerControl;->getDuration()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-long v0, v2

    goto :goto_e
.end method

.method public start()V
    .registers 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/exoplayer/util/PlayerControl;->exoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/ExoPlayer;->setPlayWhenReady(Z)V

    .line 90
    return-void
.end method
