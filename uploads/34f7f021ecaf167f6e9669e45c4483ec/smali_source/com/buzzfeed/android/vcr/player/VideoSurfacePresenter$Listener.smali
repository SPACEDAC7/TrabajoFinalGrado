.class public interface abstract Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;
.super Ljava/lang/Object;
.source "VideoSurfacePresenter.java"

# interfaces
.implements Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onAudioMutedStateChanged(Z)V
.end method

.method public abstract onPlayerPrepared(Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;)V
.end method

.method public abstract onPlayerReleased(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;J)V
.end method

.method public abstract onPlayerStopped(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;J)V
.end method
