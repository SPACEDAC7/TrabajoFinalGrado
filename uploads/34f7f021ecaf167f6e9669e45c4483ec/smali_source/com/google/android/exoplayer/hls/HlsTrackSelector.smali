.class public interface abstract Lcom/google/android/exoplayer/hls/HlsTrackSelector;
.super Ljava/lang/Object;
.source "HlsTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/hls/HlsTrackSelector$Output;
    }
.end annotation


# virtual methods
.method public abstract selectTracks(Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;Lcom/google/android/exoplayer/hls/HlsTrackSelector$Output;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
