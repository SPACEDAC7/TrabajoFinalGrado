.class public interface abstract Lcom/google/android/exoplayer/dash/mpd/UtcTimingElementResolver$UtcTimingCallback;
.super Ljava/lang/Object;
.source "UtcTimingElementResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/dash/mpd/UtcTimingElementResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UtcTimingCallback"
.end annotation


# virtual methods
.method public abstract onTimestampError(Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;Ljava/io/IOException;)V
.end method

.method public abstract onTimestampResolved(Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;J)V
.end method
