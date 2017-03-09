.class public interface abstract Lcom/google/android/exoplayer/dash/DashTrackSelector$Output;
.super Ljava/lang/Object;
.source "DashTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/dash/DashTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Output"
.end annotation


# virtual methods
.method public abstract adaptiveTrack(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;II[I)V
.end method

.method public abstract fixedTrack(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;III)V
.end method
