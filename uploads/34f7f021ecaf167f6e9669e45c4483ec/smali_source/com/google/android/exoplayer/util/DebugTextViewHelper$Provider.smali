.class public interface abstract Lcom/google/android/exoplayer/util/DebugTextViewHelper$Provider;
.super Ljava/lang/Object;
.source "DebugTextViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/util/DebugTextViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Provider"
.end annotation


# virtual methods
.method public abstract getBandwidthMeter()Lcom/google/android/exoplayer/upstream/BandwidthMeter;
.end method

.method public abstract getCodecCounters()Lcom/google/android/exoplayer/CodecCounters;
.end method

.method public abstract getCurrentPosition()J
.end method

.method public abstract getFormat()Lcom/google/android/exoplayer/chunk/Format;
.end method
