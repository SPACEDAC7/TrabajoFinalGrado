.class public final Lcom/facebook/internal/FileLruCache;
.super Ljava/lang/Object;
.source "FileLruCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/FileLruCache$StreamCloseCallback;,
        Lcom/facebook/internal/FileLruCache$ModifiedFile;,
        Lcom/facebook/internal/FileLruCache$Limits;,
        Lcom/facebook/internal/FileLruCache$CopyingInputStream;,
        Lcom/facebook/internal/FileLruCache$CloseCallbackOutputStream;,
        Lcom/facebook/internal/FileLruCache$StreamHeader;,
        Lcom/facebook/internal/FileLruCache$BufferFile;
    }
.end annotation


# static fields
.field private static final HEADER_CACHEKEY_KEY:Ljava/lang/String; = "key"

.field private static final HEADER_CACHE_CONTENT_TAG_KEY:Ljava/lang/String; = "tag"

.field static final TAG:Ljava/lang/String;

.field private static final bufferIndex:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final directory:Ljava/io/File;

.field private isTrimInProgress:Z

.field private isTrimPending:Z

.field private lastClearCacheTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private final limits:Lcom/facebook/internal/FileLruCache$Limits;

.field private final lock:Ljava/lang/Object;

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 68
    const-class v0, Lcom/facebook/internal/FileLruCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/facebook/internal/FileLruCache;->bufferIndex:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/facebook/internal/FileLruCache$Limits;)V
    .registers 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "limits"    # Lcom/facebook/internal/FileLruCache$Limits;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/facebook/internal/FileLruCache;->lastClearCacheTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 84
    iput-object p1, p0, Lcom/facebook/internal/FileLruCache;->tag:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lcom/facebook/internal/FileLruCache;->limits:Lcom/facebook/internal/FileLruCache$Limits;

    .line 86
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/internal/FileLruCache;->lock:Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 92
    :cond_32
    iget-object v0, p0, Lcom/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    invoke-static {v0}, Lcom/facebook/internal/FileLruCache$BufferFile;->deleteAll(Ljava/io/File;)V

    .line 94
    :cond_37
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/internal/FileLruCache;)Ljava/util/concurrent/atomic/AtomicLong;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/internal/FileLruCache;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/internal/FileLruCache;->lastClearCacheTime:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/internal/FileLruCache;Ljava/lang/String;Ljava/io/File;)V
    .registers 3
    .param p0, "x0"    # Lcom/facebook/internal/FileLruCache;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/io/File;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/facebook/internal/FileLruCache;->renameToTargetAndTrim(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$200(Lcom/facebook/internal/FileLruCache;)V
    .registers 1
    .param p0, "x0"    # Lcom/facebook/internal/FileLruCache;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/facebook/internal/FileLruCache;->trim()V

    return-void
.end method

.method static synthetic access$300()Ljava/util/concurrent/atomic/AtomicLong;
    .registers 1

    .prologue
    .line 67
    sget-object v0, Lcom/facebook/internal/FileLruCache;->bufferIndex:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method private postTrim()V
    .registers 4

    .prologue
    .line 299
    iget-object v1, p0, Lcom/facebook/internal/FileLruCache;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 300
    :try_start_3
    iget-boolean v0, p0, Lcom/facebook/internal/FileLruCache;->isTrimPending:Z

    if-nez v0, :cond_16

    .line 301
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/internal/FileLruCache;->isTrimPending:Z

    .line 302
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v2, Lcom/facebook/internal/FileLruCache$3;

    invoke-direct {v2, p0}, Lcom/facebook/internal/FileLruCache$3;-><init>(Lcom/facebook/internal/FileLruCache;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 309
    :cond_16
    monitor-exit v1

    .line 310
    return-void

    .line 309
    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method private renameToTargetAndTrim(Ljava/lang/String;Ljava/io/File;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "buffer"    # Ljava/io/File;

    .prologue
    .line 271
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    invoke-static {p1}, Lcom/facebook/internal/Utility;->md5hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 279
    .local v0, "target":Ljava/io/File;
    invoke-virtual {p2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 280
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 283
    :cond_14
    invoke-direct {p0}, Lcom/facebook/internal/FileLruCache;->postTrim()V

    .line 284
    return-void
.end method

.method private trim()V
    .registers 19

    .prologue
    .line 313
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/facebook/internal/FileLruCache;->lock:Ljava/lang/Object;

    monitor-enter v14

    .line 314
    const/4 v11, 0x0

    :try_start_6
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/facebook/internal/FileLruCache;->isTrimPending:Z

    .line 315
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/facebook/internal/FileLruCache;->isTrimInProgress:Z

    .line 316
    monitor-exit v14
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_7f

    .line 318
    :try_start_10
    sget-object v11, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    sget-object v14, Lcom/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "trim started"

    invoke-static {v11, v14, v15}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    new-instance v7, Ljava/util/PriorityQueue;

    invoke-direct {v7}, Ljava/util/PriorityQueue;-><init>()V

    .line 320
    .local v7, "heap":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/facebook/internal/FileLruCache$ModifiedFile;>;"
    const-wide/16 v12, 0x0

    .line 321
    .local v12, "size":J
    const-wide/16 v4, 0x0

    .line 322
    .local v4, "count":J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    invoke-static {}, Lcom/facebook/internal/FileLruCache$BufferFile;->excludeBufferFiles()Ljava/io/FilenameFilter;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v6

    .line 323
    .local v6, "filesToTrim":[Ljava/io/File;
    if-eqz v6, :cond_82

    .line 324
    move-object v2, v6

    .local v2, "arr$":[Ljava/io/File;
    array-length v9, v2

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_34
    if-ge v8, v9, :cond_82

    aget-object v3, v2, v8

    .line 325
    .local v3, "file":Ljava/io/File;
    new-instance v10, Lcom/facebook/internal/FileLruCache$ModifiedFile;

    invoke-direct {v10, v3}, Lcom/facebook/internal/FileLruCache$ModifiedFile;-><init>(Ljava/io/File;)V

    .line 326
    .local v10, "modified":Lcom/facebook/internal/FileLruCache$ModifiedFile;
    invoke-virtual {v7, v10}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 327
    sget-object v11, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    sget-object v14, Lcom/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  trim considering time="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v10}, Lcom/facebook/internal/FileLruCache$ModifiedFile;->getModified()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " name="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v10}, Lcom/facebook/internal/FileLruCache$ModifiedFile;->getFile()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v11, v14, v15}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-virtual {v3}, Ljava/io/File;->length()J
    :try_end_77
    .catchall {:try_start_10 .. :try_end_77} :catchall_d0

    move-result-wide v14

    add-long/2addr v12, v14

    .line 334
    const-wide/16 v14, 0x1

    add-long/2addr v4, v14

    .line 324
    add-int/lit8 v8, v8, 0x1

    goto :goto_34

    .line 316
    .end local v2    # "arr$":[Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "count":J
    .end local v6    # "filesToTrim":[Ljava/io/File;
    .end local v7    # "heap":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/facebook/internal/FileLruCache$ModifiedFile;>;"
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    .end local v10    # "modified":Lcom/facebook/internal/FileLruCache$ModifiedFile;
    .end local v12    # "size":J
    :catchall_7f
    move-exception v11

    :try_start_80
    monitor-exit v14
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    throw v11

    .line 338
    .restart local v4    # "count":J
    .restart local v6    # "filesToTrim":[Ljava/io/File;
    .restart local v7    # "heap":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/facebook/internal/FileLruCache$ModifiedFile;>;"
    .restart local v12    # "size":J
    :cond_82
    :goto_82
    :try_start_82
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/facebook/internal/FileLruCache;->limits:Lcom/facebook/internal/FileLruCache$Limits;

    invoke-virtual {v11}, Lcom/facebook/internal/FileLruCache$Limits;->getByteCount()I

    move-result v11

    int-to-long v14, v11

    cmp-long v11, v12, v14

    if-gtz v11, :cond_9c

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/facebook/internal/FileLruCache;->limits:Lcom/facebook/internal/FileLruCache$Limits;

    invoke-virtual {v11}, Lcom/facebook/internal/FileLruCache$Limits;->getFileCount()I

    move-result v11

    int-to-long v14, v11

    cmp-long v11, v4, v14

    if-lez v11, :cond_e4

    .line 339
    :cond_9c
    invoke-virtual {v7}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/internal/FileLruCache$ModifiedFile;

    invoke-virtual {v11}, Lcom/facebook/internal/FileLruCache$ModifiedFile;->getFile()Ljava/io/File;

    move-result-object v3

    .line 340
    .restart local v3    # "file":Ljava/io/File;
    sget-object v11, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    sget-object v14, Lcom/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  trim removing "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v11, v14, v15}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v14

    sub-long/2addr v12, v14

    .line 342
    const-wide/16 v14, 0x1

    sub-long/2addr v4, v14

    .line 343
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_cf
    .catchall {:try_start_82 .. :try_end_cf} :catchall_d0

    goto :goto_82

    .line 346
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "count":J
    .end local v6    # "filesToTrim":[Ljava/io/File;
    .end local v7    # "heap":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/facebook/internal/FileLruCache$ModifiedFile;>;"
    .end local v12    # "size":J
    :catchall_d0
    move-exception v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/facebook/internal/FileLruCache;->lock:Ljava/lang/Object;

    monitor-enter v14

    .line 347
    const/4 v15, 0x0

    :try_start_d7
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/facebook/internal/FileLruCache;->isTrimInProgress:Z

    .line 348
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/facebook/internal/FileLruCache;->lock:Ljava/lang/Object;

    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V

    .line 349
    monitor-exit v14
    :try_end_e3
    .catchall {:try_start_d7 .. :try_end_e3} :catchall_fa

    throw v11

    .line 346
    .restart local v4    # "count":J
    .restart local v6    # "filesToTrim":[Ljava/io/File;
    .restart local v7    # "heap":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/facebook/internal/FileLruCache$ModifiedFile;>;"
    .restart local v12    # "size":J
    :cond_e4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/facebook/internal/FileLruCache;->lock:Ljava/lang/Object;

    monitor-enter v14

    .line 347
    const/4 v11, 0x0

    :try_start_ea
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/facebook/internal/FileLruCache;->isTrimInProgress:Z

    .line 348
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/facebook/internal/FileLruCache;->lock:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V

    .line 349
    monitor-exit v14

    .line 351
    return-void

    .line 349
    :catchall_f7
    move-exception v11

    monitor-exit v14
    :try_end_f9
    .catchall {:try_start_ea .. :try_end_f9} :catchall_f7

    throw v11

    .end local v4    # "count":J
    .end local v6    # "filesToTrim":[Ljava/io/File;
    .end local v7    # "heap":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/facebook/internal/FileLruCache$ModifiedFile;>;"
    .end local v12    # "size":J
    :catchall_fa
    move-exception v11

    :try_start_fb
    monitor-exit v14
    :try_end_fc
    .catchall {:try_start_fb .. :try_end_fc} :catchall_fa

    throw v11
.end method


# virtual methods
.method public clearCache()V
    .registers 5

    .prologue
    .line 248
    iget-object v1, p0, Lcom/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    invoke-static {}, Lcom/facebook/internal/FileLruCache$BufferFile;->excludeBufferFiles()Ljava/io/FilenameFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 249
    .local v0, "filesToDelete":[Ljava/io/File;
    iget-object v1, p0, Lcom/facebook/internal/FileLruCache;->lastClearCacheTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 250
    if-eqz v0, :cond_21

    .line 251
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/facebook/internal/FileLruCache$2;

    invoke-direct {v2, p0, v0}, Lcom/facebook/internal/FileLruCache$2;-><init>(Lcom/facebook/internal/FileLruCache;[Ljava/io/File;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 260
    :cond_21
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/internal/FileLruCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 20
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "contentTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    invoke-static/range {p1 .. p1}, Lcom/facebook/internal/Utility;->md5hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v6, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 130
    .local v6, "file":Ljava/io/File;
    const/4 v10, 0x0

    .line 132
    .local v10, "input":Ljava/io/FileInputStream;
    :try_start_e
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_13} :catch_2a

    .line 137
    .end local v10    # "input":Ljava/io/FileInputStream;
    .local v11, "input":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/BufferedInputStream;

    const/16 v13, 0x2000

    invoke-direct {v4, v11, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 139
    .local v4, "buffered":Ljava/io/BufferedInputStream;
    const/4 v12, 0x0

    .line 142
    .local v12, "success":Z
    :try_start_1b
    invoke-static {v4}, Lcom/facebook/internal/FileLruCache$StreamHeader;->readHeader(Ljava/io/InputStream;)Lorg/json/JSONObject;
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_a5

    move-result-object v8

    .line 143
    .local v8, "header":Lorg/json/JSONObject;
    if-nez v8, :cond_2d

    .line 144
    const/4 v13, 0x0

    .line 170
    if-nez v12, :cond_27

    .line 171
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    :cond_27
    move-object v10, v11

    .end local v11    # "input":Ljava/io/FileInputStream;
    .restart local v10    # "input":Ljava/io/FileInputStream;
    move-object v4, v13

    .end local v4    # "buffered":Ljava/io/BufferedInputStream;
    .end local v8    # "header":Lorg/json/JSONObject;
    .end local v12    # "success":Z
    :goto_29
    return-object v4

    .line 133
    :catch_2a
    move-exception v5

    .line 134
    .local v5, "e":Ljava/io/IOException;
    const/4 v4, 0x0

    goto :goto_29

    .line 147
    .end local v5    # "e":Ljava/io/IOException;
    .end local v10    # "input":Ljava/io/FileInputStream;
    .restart local v4    # "buffered":Ljava/io/BufferedInputStream;
    .restart local v8    # "header":Lorg/json/JSONObject;
    .restart local v11    # "input":Ljava/io/FileInputStream;
    .restart local v12    # "success":Z
    :cond_2d
    :try_start_2d
    const-string v13, "key"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 148
    .local v7, "foundKey":Ljava/lang/String;
    if-eqz v7, :cond_3d

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3a
    .catchall {:try_start_2d .. :try_end_3a} :catchall_a5

    move-result v13

    if-nez v13, :cond_46

    .line 149
    :cond_3d
    const/4 v13, 0x0

    .line 170
    if-nez v12, :cond_43

    .line 171
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    :cond_43
    move-object v10, v11

    .end local v11    # "input":Ljava/io/FileInputStream;
    .restart local v10    # "input":Ljava/io/FileInputStream;
    move-object v4, v13

    goto :goto_29

    .line 152
    .end local v10    # "input":Ljava/io/FileInputStream;
    .restart local v11    # "input":Ljava/io/FileInputStream;
    :cond_46
    :try_start_46
    const-string/jumbo v13, "tag"

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 154
    .local v9, "headerContentTag":Ljava/lang/String;
    if-nez p2, :cond_52

    if-nez v9, :cond_5c

    :cond_52
    if-eqz p2, :cond_65

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_59
    .catchall {:try_start_46 .. :try_end_59} :catchall_a5

    move-result v13

    if-nez v13, :cond_65

    .line 156
    :cond_5c
    const/4 v13, 0x0

    .line 170
    if-nez v12, :cond_62

    .line 171
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    :cond_62
    move-object v10, v11

    .end local v11    # "input":Ljava/io/FileInputStream;
    .restart local v10    # "input":Ljava/io/FileInputStream;
    move-object v4, v13

    goto :goto_29

    .line 159
    .end local v10    # "input":Ljava/io/FileInputStream;
    .restart local v11    # "input":Ljava/io/FileInputStream;
    :cond_65
    :try_start_65
    new-instance v13, Ljava/util/Date;

    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 160
    .local v2, "accessTime":J
    sget-object v13, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    sget-object v14, Lcom/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Setting lastModified to "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {v6, v2, v3}, Ljava/io/File;->setLastModified(J)Z
    :try_end_9d
    .catchall {:try_start_65 .. :try_end_9d} :catchall_a5

    .line 167
    const/4 v12, 0x1

    .line 170
    if-nez v12, :cond_a3

    .line 171
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    :cond_a3
    move-object v10, v11

    .end local v11    # "input":Ljava/io/FileInputStream;
    .restart local v10    # "input":Ljava/io/FileInputStream;
    goto :goto_29

    .line 170
    .end local v2    # "accessTime":J
    .end local v7    # "foundKey":Ljava/lang/String;
    .end local v8    # "header":Lorg/json/JSONObject;
    .end local v9    # "headerContentTag":Ljava/lang/String;
    .end local v10    # "input":Ljava/io/FileInputStream;
    .restart local v11    # "input":Ljava/io/FileInputStream;
    :catchall_a5
    move-exception v13

    if-nez v12, :cond_ab

    .line 171
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    :cond_ab
    throw v13
.end method

.method public getLocation()Ljava/lang/String;
    .registers 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public interceptAndPut(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 290
    invoke-virtual {p0, p1}, Lcom/facebook/internal/FileLruCache;->openPutStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    .line 291
    .local v0, "output":Ljava/io/OutputStream;
    new-instance v1, Lcom/facebook/internal/FileLruCache$CopyingInputStream;

    invoke-direct {v1, p2, v0}, Lcom/facebook/internal/FileLruCache$CopyingInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-object v1
.end method

.method public openPutStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/internal/FileLruCache;->openPutStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public openPutStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
    .registers 20
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "contentTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    invoke-static {v3}, Lcom/facebook/internal/FileLruCache$BufferFile;->newFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v6

    .line 182
    .local v6, "buffer":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 183
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-nez v3, :cond_2e

    .line 184
    new-instance v3, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Could not create file at "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 187
    :cond_2e
    const/4 v11, 0x0

    .line 189
    .local v11, "file":Ljava/io/FileOutputStream;
    :try_start_2f
    new-instance v11, Ljava/io/FileOutputStream;

    .end local v11    # "file":Ljava/io/FileOutputStream;
    invoke-direct {v11, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_34
    .catch Ljava/io/FileNotFoundException; {:try_start_2f .. :try_end_34} :catch_72

    .line 199
    .restart local v11    # "file":Ljava/io/FileOutputStream;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 200
    .local v4, "bufferFileCreateTime":J
    new-instance v2, Lcom/facebook/internal/FileLruCache$1;

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/facebook/internal/FileLruCache$1;-><init>(Lcom/facebook/internal/FileLruCache;JLjava/io/File;Ljava/lang/String;)V

    .line 213
    .local v2, "renameToTargetCallback":Lcom/facebook/internal/FileLruCache$StreamCloseCallback;
    new-instance v9, Lcom/facebook/internal/FileLruCache$CloseCallbackOutputStream;

    invoke-direct {v9, v11, v2}, Lcom/facebook/internal/FileLruCache$CloseCallbackOutputStream;-><init>(Ljava/io/OutputStream;Lcom/facebook/internal/FileLruCache$StreamCloseCallback;)V

    .line 215
    .local v9, "cleanup":Lcom/facebook/internal/FileLruCache$CloseCallbackOutputStream;
    new-instance v8, Ljava/io/BufferedOutputStream;

    const/16 v3, 0x2000

    invoke-direct {v8, v9, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 217
    .local v8, "buffered":Ljava/io/BufferedOutputStream;
    const/4 v13, 0x0

    .line 221
    .local v13, "success":Z
    :try_start_4e
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 222
    .local v12, "header":Lorg/json/JSONObject;
    const-string v3, "key"

    move-object/from16 v0, p1

    invoke-virtual {v12, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 223
    invoke-static/range {p2 .. p2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_68

    .line 224
    const-string/jumbo v3, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v12, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 227
    :cond_68
    invoke-static {v8, v12}, Lcom/facebook/internal/FileLruCache$StreamHeader;->writeHeader(Ljava/io/OutputStream;Lorg/json/JSONObject;)V
    :try_end_6b
    .catch Lorg/json/JSONException; {:try_start_4e .. :try_end_6b} :catch_98
    .catchall {:try_start_4e .. :try_end_6b} :catchall_be

    .line 229
    const/4 v13, 0x1

    .line 240
    if-nez v13, :cond_71

    .line 241
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V

    :cond_71
    return-object v8

    .line 190
    .end local v2    # "renameToTargetCallback":Lcom/facebook/internal/FileLruCache$StreamCloseCallback;
    .end local v4    # "bufferFileCreateTime":J
    .end local v8    # "buffered":Ljava/io/BufferedOutputStream;
    .end local v9    # "cleanup":Lcom/facebook/internal/FileLruCache$CloseCallbackOutputStream;
    .end local v11    # "file":Ljava/io/FileOutputStream;
    .end local v12    # "header":Lorg/json/JSONObject;
    .end local v13    # "success":Z
    :catch_72
    move-exception v10

    .line 191
    .local v10, "e":Ljava/io/FileNotFoundException;
    sget-object v3, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    const/4 v7, 0x5

    sget-object v14, Lcom/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error creating buffer output stream: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v3, v7, v14, v15}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    .line 196
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v10}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 231
    .end local v10    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "renameToTargetCallback":Lcom/facebook/internal/FileLruCache$StreamCloseCallback;
    .restart local v4    # "bufferFileCreateTime":J
    .restart local v8    # "buffered":Ljava/io/BufferedOutputStream;
    .restart local v9    # "cleanup":Lcom/facebook/internal/FileLruCache$CloseCallbackOutputStream;
    .restart local v11    # "file":Ljava/io/FileOutputStream;
    .restart local v13    # "success":Z
    :catch_98
    move-exception v10

    .line 233
    .local v10, "e":Lorg/json/JSONException;
    :try_start_99
    sget-object v3, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    const/4 v7, 0x5

    sget-object v14, Lcom/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error creating JSON header for cache file: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v3, v7, v14, v15}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    .line 238
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v10}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_be
    .catchall {:try_start_99 .. :try_end_be} :catchall_be

    .line 240
    .end local v10    # "e":Lorg/json/JSONException;
    :catchall_be
    move-exception v3

    if-nez v13, :cond_c4

    .line 241
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V

    :cond_c4
    throw v3
.end method

.method sizeInBytesForTest()J
    .registers 11

    .prologue
    .line 103
    iget-object v8, p0, Lcom/facebook/internal/FileLruCache;->lock:Ljava/lang/Object;

    monitor-enter v8

    .line 104
    :goto_3
    :try_start_3
    iget-boolean v5, p0, Lcom/facebook/internal/FileLruCache;->isTrimPending:Z

    if-nez v5, :cond_b

    iget-boolean v5, p0, Lcom/facebook/internal/FileLruCache;->isTrimInProgress:Z
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_2d

    if-eqz v5, :cond_13

    .line 106
    :cond_b
    :try_start_b
    iget-object v5, p0, Lcom/facebook/internal/FileLruCache;->lock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_10} :catch_11
    .catchall {:try_start_b .. :try_end_10} :catchall_2d

    goto :goto_3

    .line 107
    :catch_11
    move-exception v5

    goto :goto_3

    .line 111
    :cond_13
    :try_start_13
    monitor-exit v8
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_2d

    .line 113
    iget-object v5, p0, Lcom/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 114
    .local v2, "files":[Ljava/io/File;
    const-wide/16 v6, 0x0

    .line 115
    .local v6, "total":J
    if-eqz v2, :cond_30

    .line 116
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_21
    if-ge v3, v4, :cond_30

    aget-object v1, v0, v3

    .line 117
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 116
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 111
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "total":J
    :catchall_2d
    move-exception v5

    :try_start_2e
    monitor-exit v8
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v5

    .line 120
    .restart local v2    # "files":[Ljava/io/File;
    .restart local v6    # "total":J
    :cond_30
    return-wide v6
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{FileLruCache: tag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/internal/FileLruCache;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " file:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
