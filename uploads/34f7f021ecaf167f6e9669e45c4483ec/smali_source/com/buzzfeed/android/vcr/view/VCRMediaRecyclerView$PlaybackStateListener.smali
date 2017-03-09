.class public interface abstract Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$PlaybackStateListener;
.super Ljava/lang/Object;
.source "VCRMediaRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlaybackStateListener"
.end annotation


# virtual methods
.method public abstract onAudioMuteStateChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V
.end method

.method public abstract onPlaybackError(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
.end method

.method public abstract onPlaybackPreparing(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
.end method

.method public abstract onPlaybackStarted(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
.end method

.method public abstract onPlaybackStopped(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
.end method

.method public abstract onVideoSizeChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIIF)V
.end method
