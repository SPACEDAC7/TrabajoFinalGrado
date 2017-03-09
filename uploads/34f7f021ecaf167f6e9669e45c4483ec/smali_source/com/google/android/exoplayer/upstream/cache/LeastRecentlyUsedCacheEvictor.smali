.class public final Lcom/google/android/exoplayer/upstream/cache/LeastRecentlyUsedCacheEvictor;
.super Ljava/lang/Object;
.source "LeastRecentlyUsedCacheEvictor.java"

# interfaces
.implements Lcom/google/android/exoplayer/upstream/cache/CacheEvictor;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer/upstream/cache/CacheEvictor;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/exoplayer/upstream/cache/CacheSpan;",
        ">;"
    }
.end annotation


# instance fields
.field private currentSize:J

.field private final leastRecentlyUsed:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lcom/google/android/exoplayer/upstream/cache/CacheSpan;",
            ">;"
        }
    .end annotation
.end field

.field private final maxBytes:J


# direct methods
.method public constructor <init>(J)V
    .registers 4
    .param p1, "maxBytes"    # J

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-wide p1, p0, Lcom/google/android/exoplayer/upstream/cache/LeastRecentlyUsedCacheEvictor;->maxBytes:J

    .line 33
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, p0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/cache/LeastRecentlyUsedCacheEvictor;->leastRecentlyUsed:Ljava/util/TreeSet;

    .line 34
    return-void
.end method

.method private evictCache(Lcom/google/android/exoplayer/upstream/cache/Cache;J)V
    .registers 8
    .param p1, "cache"    # Lcom/google/android/exoplayer/upstream/cache/Cache;
    .param p2, "requiredSpace"    # J

    .prologue
    .line 76
    :goto_0
    iget-wide v0, p0, Lcom/google/android/exoplayer/upstream/cache/LeastRecentlyUsedCacheEvictor;->currentSize:J

    add-long/2addr v0, p2

    iget-wide v2, p0, Lcom/google/android/exoplayer/upstream/cache/LeastRecentlyUsedCacheEvictor;->maxBytes:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_15

    .line 77
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/cache/LeastRecentlyUsedCacheEvictor;->leastRecentlyUsed:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/upstream/cache/CacheSpan;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer/upstream/cache/Cache;->removeSpan(Lcom/google/android/exoplayer/upstream/cache/CacheSpan;)V

    goto :goto_0

    .line 79
    :cond_15
    return-void
.end method


# virtual methods
.method public compare(Lcom/google/android/exoplayer/upstream/cache/CacheSpan;Lcom/google/android/exoplayer/upstream/cache/CacheSpan;)I
    .registers 9
    .param p1, "lhs"    # Lcom/google/android/exoplayer/upstream/cache/CacheSpan;
    .param p2, "rhs"    # Lcom/google/android/exoplayer/upstream/cache/CacheSpan;

    .prologue
    .line 67
    iget-wide v2, p1, Lcom/google/android/exoplayer/upstream/cache/CacheSpan;->lastAccessTimestamp:J

    iget-wide v4, p2, Lcom/google/android/exoplayer/upstream/cache/CacheSpan;->lastAccessTimestamp:J

    sub-long v0, v2, v4

    .line 68
    .local v0, "lastAccessTimestampDelta":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_11

    .line 70
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer/upstream/cache/CacheSpan;->compareTo(Lcom/google/android/exoplayer/upstream/cache/CacheSpan;)I

    move-result v2

    .line 72
    :goto_10
    return v2

    :cond_11
    iget-wide v2, p1, Lcom/google/android/exoplayer/upstream/cache/CacheSpan;->lastAccessTimestamp:J

    iget-wide v4, p2, Lcom/google/android/exoplayer/upstream/cache/CacheSpan;->lastAccessTimestamp:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1b

    const/4 v2, -0x1

    goto :goto_10

    :cond_1b
    const/4 v2, 0x1

    goto :goto_10
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 24
    check-cast p1, Lcom/google/android/exoplayer/upstream/cache/CacheSpan;

    check-cast p2, Lcom/google/android/exoplayer/upstream/cache/CacheSpan;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer/upstream/cache/LeastRecentlyUsedCacheEvictor;->compare(Lcom/google/android/exoplayer/upstream/cache/CacheSpan;Lcom/google/android/exoplayer/upstream/cache/CacheSpan;)I

    move-result v0

    return v0
.end method

.method public onCacheInitialized()V
    .registers 1

    .prologue
    .line 39
    return-void
.end method

.method public onSpanAdded(Lcom/google/android/exoplayer/upstream/cache/Cache;Lcom/google/android/exoplayer/upstream/cache/CacheSpan;)V
    .registers 7
    .param p1, "cache"    # Lcom/google/android/exoplayer/upstream/cache/Cache;
    .param p2, "span"    # Lcom/google/android/exoplayer/upstream/cache/CacheSpan;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/cache/LeastRecentlyUsedCacheEvictor;->leastRecentlyUsed:Ljava/util/TreeSet;

    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 49
    iget-wide v0, p0, Lcom/google/android/exoplayer/upstream/cache/LeastRecentlyUsedCacheEvictor;->currentSize:J

    iget-wide v2, p2, Lcom/google/android/exoplayer/upstream/cache/CacheSpan;->length:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer/upstream/cache/LeastRecentlyUsedCacheEvictor;->currentSize:J

    .line 50
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer/upstream/cache/LeastRecentlyUsedCacheEvictor;->evictCache(Lcom/google/android/exoplayer/upstream/cache/Cache;J)V

    .line 51
    return-void
.end method

.method public onSpanRemoved(Lcom/google/android/exoplayer/upstream/cache/Cache;Lcom/google/android/exoplayer/upstream/cache/CacheSpan;)V
    .registers 7
    .param p1, "cache"    # Lcom/google/android/exoplayer/upstream/cache/Cache;
    .param p2, "span"    # Lcom/google/android/exoplayer/upstream/cache/CacheSpan;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/cache/LeastRecentlyUsedCacheEvictor;->leastRecentlyUsed:Ljava/util/TreeSet;

    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 56
    iget-wide v0, p0, Lcom/google/android/exoplayer/upstream/cache/LeastRecentlyUsedCacheEvictor;->currentSize:J

    iget-wide v2, p2, Lcom/google/android/exoplayer/upstream/cache/CacheSpan;->length:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer/upstream/cache/LeastRecentlyUsedCacheEvictor;->currentSize:J

    .line 57
    return-void
.end method

.method public onSpanTouched(Lcom/google/android/exoplayer/upstream/cache/Cache;Lcom/google/android/exoplayer/upstream/cache/CacheSpan;Lcom/google/android/exoplayer/upstream/cache/CacheSpan;)V
    .registers 4
    .param p1, "cache"    # Lcom/google/android/exoplayer/upstream/cache/Cache;
    .param p2, "oldSpan"    # Lcom/google/android/exoplayer/upstream/cache/CacheSpan;
    .param p3, "newSpan"    # Lcom/google/android/exoplayer/upstream/cache/CacheSpan;

    .prologue
    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer/upstream/cache/LeastRecentlyUsedCacheEvictor;->onSpanRemoved(Lcom/google/android/exoplayer/upstream/cache/Cache;Lcom/google/android/exoplayer/upstream/cache/CacheSpan;)V

    .line 62
    invoke-virtual {p0, p1, p3}, Lcom/google/android/exoplayer/upstream/cache/LeastRecentlyUsedCacheEvictor;->onSpanAdded(Lcom/google/android/exoplayer/upstream/cache/Cache;Lcom/google/android/exoplayer/upstream/cache/CacheSpan;)V

    .line 63
    return-void
.end method

.method public onStartFile(Lcom/google/android/exoplayer/upstream/cache/Cache;Ljava/lang/String;JJ)V
    .registers 8
    .param p1, "cache"    # Lcom/google/android/exoplayer/upstream/cache/Cache;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "position"    # J
    .param p5, "length"    # J

    .prologue
    .line 43
    invoke-direct {p0, p1, p5, p6}, Lcom/google/android/exoplayer/upstream/cache/LeastRecentlyUsedCacheEvictor;->evictCache(Lcom/google/android/exoplayer/upstream/cache/Cache;J)V

    .line 44
    return-void
.end method
