.class public interface abstract Lcom/google/android/exoplayer/dash/DashTrackSelector;
.super Ljava/lang/Object;
.source "DashTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/dash/DashTrackSelector$Output;
    }
.end annotation


# virtual methods
.method public abstract selectTracks(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;ILcom/google/android/exoplayer/dash/DashTrackSelector$Output;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
