.class public interface abstract Lcom/buzzfeed/android/vcr/player/VCRVideoPlayer;
.super Ljava/lang/Object;
.source "VCRVideoPlayer.java"


# virtual methods
.method public abstract getBufferedPercentage()J
.end method

.method public abstract getCurrentPosition()J
.end method

.method public abstract getDuration()J
.end method

.method public abstract getPlaybackState()I
.end method

.method public abstract prepare()V
.end method

.method public abstract release()V
.end method

.method public abstract seekTo(J)V
.end method

.method public abstract setAudioMuted(Z)V
.end method

.method public abstract setAudioVolume(F)V
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
.end method

.method public abstract setPlayWhenReady(Z)V
.end method

.method public abstract setSurface(Landroid/view/Surface;)V
.end method

.method public abstract stop()V
.end method
