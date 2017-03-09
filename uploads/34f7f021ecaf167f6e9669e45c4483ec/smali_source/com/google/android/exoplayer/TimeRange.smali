.class public interface abstract Lcom/google/android/exoplayer/TimeRange;
.super Ljava/lang/Object;
.source "TimeRange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/TimeRange$DynamicTimeRange;,
        Lcom/google/android/exoplayer/TimeRange$StaticTimeRange;
    }
.end annotation


# virtual methods
.method public abstract getCurrentBoundsMs([J)[J
.end method

.method public abstract getCurrentBoundsUs([J)[J
.end method

.method public abstract isStatic()Z
.end method
