.class public final Lcom/google/android/exoplayer/upstream/cache/NoOpCacheEvictor;
.super Ljava/lang/Object;
.source "NoOpCacheEvictor.java"

# interfaces
.implements Lcom/google/android/exoplayer/upstream/cache/CacheEvictor;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCacheInitialized()V
    .registers 1

    .prologue
    .line 30
    return-void
.end method

.method public onSpanAdded(Lcom/google/android/exoplayer/upstream/cache/Cache;Lcom/google/android/exoplayer/upstream/cache/CacheSpan;)V
    .registers 3
    .param p1, "cache"    # Lcom/google/android/exoplayer/upstream/cache/Cache;
    .param p2, "span"    # Lcom/google/android/exoplayer/upstream/cache/CacheSpan;

    .prologue
    .line 40
    return-void
.end method

.method public onSpanRemoved(Lcom/google/android/exoplayer/upstream/cache/Cache;Lcom/google/android/exoplayer/upstream/cache/CacheSpan;)V
    .registers 3
    .param p1, "cache"    # Lcom/google/android/exoplayer/upstream/cache/Cache;
    .param p2, "span"    # Lcom/google/android/exoplayer/upstream/cache/CacheSpan;

    .prologue
    .line 45
    return-void
.end method

.method public onSpanTouched(Lcom/google/android/exoplayer/upstream/cache/Cache;Lcom/google/android/exoplayer/upstream/cache/CacheSpan;Lcom/google/android/exoplayer/upstream/cache/CacheSpan;)V
    .registers 4
    .param p1, "cache"    # Lcom/google/android/exoplayer/upstream/cache/Cache;
    .param p2, "oldSpan"    # Lcom/google/android/exoplayer/upstream/cache/CacheSpan;
    .param p3, "newSpan"    # Lcom/google/android/exoplayer/upstream/cache/CacheSpan;

    .prologue
    .line 50
    return-void
.end method

.method public onStartFile(Lcom/google/android/exoplayer/upstream/cache/Cache;Ljava/lang/String;JJ)V
    .registers 7
    .param p1, "cache"    # Lcom/google/android/exoplayer/upstream/cache/Cache;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "position"    # J
    .param p5, "length"    # J

    .prologue
    .line 35
    return-void
.end method
