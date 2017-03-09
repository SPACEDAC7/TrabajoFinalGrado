.class Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueue;
.super Ljava/lang/Object;
.source "BFCacheData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/database/BFCacheData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PutCacheQueue"
.end annotation


# instance fields
.field private stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/buzzfeed/android/database/BFCacheData$PutCache;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueue;->stack:Ljava/util/Stack;

    return-void
.end method

.method synthetic constructor <init>(Lcom/buzzfeed/android/database/BFCacheData$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/buzzfeed/android/database/BFCacheData$1;

    .prologue
    .line 371
    invoke-direct {p0}, Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueue;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueue;)Ljava/util/Stack;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueue;

    .prologue
    .line 371
    iget-object v0, p0, Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueue;->stack:Ljava/util/Stack;

    return-object v0
.end method


# virtual methods
.method public clean(Lcom/buzzfeed/android/database/BFCacheData$PutCache;)V
    .registers 6
    .param p1, "item"    # Lcom/buzzfeed/android/database/BFCacheData$PutCache;

    .prologue
    .line 388
    iget-object v2, p0, Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueue;->stack:Ljava/util/Stack;

    monitor-enter v2

    .line 389
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    :try_start_4
    iget-object v1, p0, Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueue;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-ge v0, v1, :cond_2a

    .line 390
    iget-object v1, p0, Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueue;->stack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/android/database/BFCacheData$PutCache;

    iget-object v1, v1, Lcom/buzzfeed/android/database/BFCacheData$PutCache;->cacheId:Ljava/lang/String;

    iget-object v3, p1, Lcom/buzzfeed/android/database/BFCacheData$PutCache;->cacheId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 391
    iget-object v1, p0, Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueue;->stack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 396
    :catchall_24
    move-exception v1

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_24

    throw v1

    .line 393
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 396
    :cond_2a
    :try_start_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_24

    .line 397
    return-void
.end method

.method public queue(Lcom/buzzfeed/android/database/BFCacheData$PutCache;)V
    .registers 7
    .param p1, "item"    # Lcom/buzzfeed/android/database/BFCacheData$PutCache;

    .prologue
    .line 376
    iget-object v2, p0, Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueue;->stack:Ljava/util/Stack;

    monitor-enter v2

    .line 377
    :try_start_3
    iget-object v1, p0, Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueue;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/database/BFCacheData$PutCache;

    .line 378
    .local v0, "stackItem":Lcom/buzzfeed/android/database/BFCacheData$PutCache;
    iget-object v3, p1, Lcom/buzzfeed/android/database/BFCacheData$PutCache;->cacheId:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/android/database/BFCacheData$PutCache;->cacheId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 379
    monitor-exit v2

    .line 385
    .end local v0    # "stackItem":Lcom/buzzfeed/android/database/BFCacheData$PutCache;
    :goto_20
    return-void

    .line 382
    :cond_21
    iget-object v1, p0, Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueue;->stack:Ljava/util/Stack;

    invoke-virtual {v1, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    iget-object v1, p0, Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueue;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 384
    monitor-exit v2

    goto :goto_20

    :catchall_2d
    move-exception v1

    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method
