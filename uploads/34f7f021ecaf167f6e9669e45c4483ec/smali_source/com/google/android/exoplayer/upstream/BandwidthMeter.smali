.class public interface abstract Lcom/google/android/exoplayer/upstream/BandwidthMeter;
.super Ljava/lang/Object;
.source "BandwidthMeter.java"

# interfaces
.implements Lcom/google/android/exoplayer/upstream/TransferListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/upstream/BandwidthMeter$EventListener;
    }
.end annotation


# static fields
.field public static final NO_ESTIMATE:J = -0x1L


# virtual methods
.method public abstract getBitrateEstimate()J
.end method
