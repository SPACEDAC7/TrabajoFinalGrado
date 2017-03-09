.class final Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;
.super Ljava/lang/Object;
.source "BitmapPreFillRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$1;,
        Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;,
        Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$UniqueKey;
    }
.end annotation


# static fields
.field static final BACKOFF_RATIO:I = 0x4

.field private static final DEFAULT_CLOCK:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;

.field static final INITIAL_BACKOFF_MS:J = 0x28L

.field static final MAX_BACKOFF_MS:J

.field static final MAX_DURATION_MS:J = 0x20L

.field private static final TAG:Ljava/lang/String; = "PreFillRunner"


# instance fields
.field private final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final clock:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;

.field private currentDelay:J

.field private final handler:Landroid/os/Handler;

.field private isCancelled:Z

.field private final memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

.field private final seenTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/bumptech/glide/load/engine/prefill/PreFillType;",
            ">;"
        }
    .end annotation
.end field

.field private final toPrefill:Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 33
    new-instance v0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->DEFAULT_CLOCK:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;

    .line 54
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->MAX_BACKOFF_MS:J

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;)V
    .registers 10
    .param p1, "bitmapPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p2, "memoryCache"    # Lcom/bumptech/glide/load/engine/cache/MemoryCache;
    .param p3, "allocationOrder"    # Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;

    .prologue
    .line 67
    sget-object v4, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->DEFAULT_CLOCK:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;

    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;Landroid/os/Handler;)V

    .line 68
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;Landroid/os/Handler;)V
    .registers 8
    .param p1, "bitmapPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p2, "memoryCache"    # Lcom/bumptech/glide/load/engine/cache/MemoryCache;
    .param p3, "allocationOrder"    # Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;
    .param p4, "clock"    # Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;
    .param p5, "handler"    # Landroid/os/Handler;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->seenTypes:Ljava/util/Set;

    .line 63
    const-wide/16 v0, 0x28

    iput-wide v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->currentDelay:J

    .line 73
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 74
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    .line 75
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->toPrefill:Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;

    .line 76
    iput-object p4, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->clock:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;

    .line 77
    iput-object p5, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->handler:Landroid/os/Handler;

    .line 78
    return-void
.end method

.method private addToBitmapPool(Lcom/bumptech/glide/load/engine/prefill/PreFillType;Landroid/graphics/Bitmap;)V
    .registers 8
    .param p1, "toAllocate"    # Lcom/bumptech/glide/load/engine/prefill/PreFillType;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 123
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->seenTypes:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 124
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 126
    .local v0, "fromPool":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_21

    .line 127
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Landroid/graphics/Bitmap;)Z

    .line 131
    .end local v0    # "fromPool":Landroid/graphics/Bitmap;
    :cond_21
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-interface {v1, p2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Landroid/graphics/Bitmap;)Z

    .line 132
    return-void
.end method

.method private allocate()Z
    .registers 8

    .prologue
    .line 89
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->clock:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;->now()J

    move-result-wide v2

    .line 90
    .local v2, "start":J
    :cond_6
    :goto_6
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->toPrefill:Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9b

    invoke-direct {p0, v2, v3}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->isGcDetected(J)Z

    move-result v4

    if-nez v4, :cond_9b

    .line 91
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->toPrefill:Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->remove()Lcom/bumptech/glide/load/engine/prefill/PreFillType;

    move-result-object v1

    .line 92
    .local v1, "toAllocate":Lcom/bumptech/glide/load/engine/prefill/PreFillType;
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getHeight()I

    move-result v5

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 97
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->getFreeMemoryCacheBytes()I

    move-result v4

    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    move-result v5

    if-lt v4, v5, :cond_97

    .line 98
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    new-instance v5, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$UniqueKey;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$UniqueKey;-><init>(Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$1;)V

    iget-object v6, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-static {v0, v6}, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->obtain(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->put(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;

    .line 103
    :goto_45
    const-string v4, "PreFillRunner"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 104
    const-string v4, "PreFillRunner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "allocated ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 100
    :cond_97
    invoke-direct {p0, v1, v0}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->addToBitmapPool(Lcom/bumptech/glide/load/engine/prefill/PreFillType;Landroid/graphics/Bitmap;)V

    goto :goto_45

    .line 109
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "toAllocate":Lcom/bumptech/glide/load/engine/prefill/PreFillType;
    :cond_9b
    iget-boolean v4, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->isCancelled:Z

    if-nez v4, :cond_a9

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->toPrefill:Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a9

    const/4 v4, 0x1

    :goto_a8
    return v4

    :cond_a9
    const/4 v4, 0x0

    goto :goto_a8
.end method

.method private getFreeMemoryCacheBytes()I
    .registers 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->getMaxSize()I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-interface {v1}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->getCurrentSize()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getNextDelay()J
    .registers 7

    .prologue
    .line 142
    iget-wide v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->currentDelay:J

    .line 143
    .local v0, "result":J
    iget-wide v2, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->currentDelay:J

    const-wide/16 v4, 0x4

    mul-long/2addr v2, v4

    sget-wide v4, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->MAX_BACKOFF_MS:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->currentDelay:J

    .line 144
    return-wide v0
.end method

.method private isGcDetected(J)Z
    .registers 8
    .param p1, "startTimeMs"    # J

    .prologue
    .line 113
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->clock:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;->now()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 v2, 0x20

    cmp-long v0, v0, v2

    if-ltz v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->isCancelled:Z

    .line 82
    return-void
.end method

.method public run()V
    .registers 5

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->allocate()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 137
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->handler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->getNextDelay()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 139
    :cond_f
    return-void
.end method
