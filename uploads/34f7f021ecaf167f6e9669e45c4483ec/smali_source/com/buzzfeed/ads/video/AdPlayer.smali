.class public Lcom/buzzfeed/ads/video/AdPlayer;
.super Ljava/lang/Object;
.source "AdPlayer.java"

# interfaces
.implements Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;
.implements Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;


# instance fields
.field private final mAdCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayWhenReady:Z

.field private mPlaybackState:I

.field private mPresenter:Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;


# direct methods
.method public constructor <init>(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;)V
    .registers 3
    .param p1, "presenter"    # Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/ads/video/AdPlayer;->mAdCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 20
    iput-object p1, p0, Lcom/buzzfeed/ads/video/AdPlayer;->mPresenter:Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;

    .line 21
    iget-object v0, p0, Lcom/buzzfeed/ads/video/AdPlayer;->mPresenter:Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;

    invoke-virtual {v0, p0}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->addListener(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;)V

    .line 22
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;)V
    .registers 3
    .param p1, "videoAdPlayerCallback"    # Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/buzzfeed/ads/video/AdPlayer;->mAdCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/buzzfeed/ads/video/AdPlayer;->mAdCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_d
    return-void
.end method

.method public getAdProgress()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;
    .registers 7

    .prologue
    .line 44
    iget-object v0, p0, Lcom/buzzfeed/ads/video/AdPlayer;->mPresenter:Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;

    if-eqz v0, :cond_3d

    .line 45
    iget-object v0, p0, Lcom/buzzfeed/ads/video/AdPlayer;->mPresenter:Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/buzzfeed/ads/video/AdPlayer;->mPresenter:Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->getVideoPlayer()Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1f

    .line 46
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->VIDEO_TIME_NOT_READY:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    .line 53
    :goto_1e
    return-object v0

    .line 48
    :cond_1f
    iget-object v0, p0, Lcom/buzzfeed/ads/video/AdPlayer;->mPresenter:Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 49
    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    iget-object v1, p0, Lcom/buzzfeed/ads/video/AdPlayer;->mPresenter:Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;

    invoke-virtual {v1}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->getCurrentPosition()J

    move-result-wide v2

    iget-object v1, p0, Lcom/buzzfeed/ads/video/AdPlayer;->mPresenter:Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;

    .line 50
    invoke-virtual {v1}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->getVideoPlayer()Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->getDuration()J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;-><init>(JJ)V

    goto :goto_1e

    .line 53
    :cond_3d
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->VIDEO_TIME_NOT_READY:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    goto :goto_1e
.end method

.method public loadAd(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 135
    return-void
.end method

.method public onAudioMutedStateChanged(Z)V
    .registers 2
    .param p1, "muted"    # Z

    .prologue
    .line 123
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 107
    iget-object v1, p0, Lcom/buzzfeed/ads/video/AdPlayer;->mAdCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    .line 108
    .local v0, "callback":Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onError()V

    goto :goto_6

    .line 110
    .end local v0    # "callback":Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;
    :cond_16
    return-void
.end method

.method public onPlayerPrepared(Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;)V
    .registers 2
    .param p1, "exoPlayer"    # Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    .prologue
    .line 119
    return-void
.end method

.method public onPlayerReleased(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;J)V
    .registers 4
    .param p1, "presenter"    # Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;
    .param p2, "playbackPosition"    # J

    .prologue
    .line 58
    return-void
.end method

.method public onPlayerStopped(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;J)V
    .registers 7
    .param p1, "presenter"    # Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;
    .param p2, "playbackPosition"    # J

    .prologue
    .line 62
    iget-object v1, p0, Lcom/buzzfeed/ads/video/AdPlayer;->mAdCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    .line 63
    .local v0, "callback":Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onPause()V

    goto :goto_6

    .line 65
    .end local v0    # "callback":Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;
    :cond_16
    return-void
.end method

.method public onStateChanged(ZI)V
    .registers 7
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackState"    # I

    .prologue
    .line 69
    packed-switch p2, :pswitch_data_86

    .line 98
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown playback state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_1b
    iput-boolean p1, p0, Lcom/buzzfeed/ads/video/AdPlayer;->mPlayWhenReady:Z

    .line 102
    iput p2, p0, Lcom/buzzfeed/ads/video/AdPlayer;->mPlaybackState:I

    .line 103
    return-void

    .line 71
    :pswitch_20
    if-eqz p1, :cond_57

    .line 72
    iget-boolean v1, p0, Lcom/buzzfeed/ads/video/AdPlayer;->mPlayWhenReady:Z

    if-nez v1, :cond_41

    iget v1, p0, Lcom/buzzfeed/ads/video/AdPlayer;->mPlaybackState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_41

    .line 73
    iget-object v1, p0, Lcom/buzzfeed/ads/video/AdPlayer;->mAdCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    .line 74
    .local v0, "callback":Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onResume()V

    goto :goto_31

    .line 77
    .end local v0    # "callback":Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;
    :cond_41
    iget-object v1, p0, Lcom/buzzfeed/ads/video/AdPlayer;->mAdCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_47
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    .line 78
    .restart local v0    # "callback":Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onPlay()V

    goto :goto_47

    .line 83
    .end local v0    # "callback":Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;
    :cond_57
    iget-object v1, p0, Lcom/buzzfeed/ads/video/AdPlayer;->mAdCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    .line 84
    .restart local v0    # "callback":Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onPause()V

    goto :goto_5d

    .line 90
    .end local v0    # "callback":Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;
    :pswitch_6d
    if-eqz p1, :cond_1b

    .line 91
    iget-object v1, p0, Lcom/buzzfeed/ads/video/AdPlayer;->mAdCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_75
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    .line 92
    .restart local v0    # "callback":Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onEnded()V

    goto :goto_75

    .line 69
    nop

    :pswitch_data_86
    .packed-switch 0x4
        :pswitch_20
        :pswitch_6d
    .end packed-switch
.end method

.method public onVideoSizeChanged(IIIF)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "unappliedRotationDegrees"    # I
    .param p4, "pixelWidthHeightRatio"    # F

    .prologue
    .line 127
    return-void
.end method

.method public pauseAd()V
    .registers 1

    .prologue
    .line 143
    return-void
.end method

.method public playAd()V
    .registers 1

    .prologue
    .line 131
    return-void
.end method

.method public removeCallback(Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;)V
    .registers 3
    .param p1, "videoAdPlayerCallback"    # Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/buzzfeed/ads/video/AdPlayer;->mAdCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 39
    iget-object v0, p0, Lcom/buzzfeed/ads/video/AdPlayer;->mPresenter:Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/buzzfeed/ads/video/AdPlayer;->mPresenter:Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;

    invoke-virtual {v0, p0}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->removeListener(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;)V

    .line 40
    :cond_e
    return-void
.end method

.method public removeCallbacks()V
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/buzzfeed/ads/video/AdPlayer;->mAdCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 114
    return-void
.end method

.method public resumeAd()V
    .registers 1

    .prologue
    .line 147
    return-void
.end method

.method public stopAd()V
    .registers 1

    .prologue
    .line 139
    return-void
.end method

.method public updatePresenter(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;)V
    .registers 3
    .param p1, "presenter"    # Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/buzzfeed/ads/video/AdPlayer;->mPresenter:Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/buzzfeed/ads/video/AdPlayer;->mPresenter:Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;

    invoke-virtual {v0, p0}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->removeListener(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;)V

    .line 26
    :cond_9
    invoke-virtual {p1, p0}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->addListener(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;)V

    .line 27
    iput-object p1, p0, Lcom/buzzfeed/ads/video/AdPlayer;->mPresenter:Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;

    .line 28
    return-void
.end method
