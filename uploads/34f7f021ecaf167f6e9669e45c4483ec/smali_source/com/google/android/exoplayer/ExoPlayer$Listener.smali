.class public interface abstract Lcom/google/android/exoplayer/ExoPlayer$Listener;
.super Ljava/lang/Object;
.source "ExoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/ExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onPlayWhenReadyCommitted()V
.end method

.method public abstract onPlayerError(Lcom/google/android/exoplayer/ExoPlaybackException;)V
.end method

.method public abstract onPlayerStateChanged(ZI)V
.end method
