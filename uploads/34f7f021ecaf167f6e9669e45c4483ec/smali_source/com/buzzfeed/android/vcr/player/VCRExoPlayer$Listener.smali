.class public interface abstract Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$Listener;
.super Ljava/lang/Object;
.source "VCRExoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onError(Ljava/lang/Exception;)V
.end method

.method public abstract onStateChanged(ZI)V
.end method

.method public abstract onVideoSizeChanged(IIIF)V
.end method
