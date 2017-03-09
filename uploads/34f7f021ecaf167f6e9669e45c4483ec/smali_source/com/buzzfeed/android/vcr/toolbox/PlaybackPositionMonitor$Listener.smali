.class public interface abstract Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor$Listener;
.super Ljava/lang/Object;
.source "PlaybackPositionMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onPositionTrackingStarted(JJ)V
    .param p3    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
.end method

.method public abstract onPositionUpdated(JJ)V
    .param p3    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
.end method
