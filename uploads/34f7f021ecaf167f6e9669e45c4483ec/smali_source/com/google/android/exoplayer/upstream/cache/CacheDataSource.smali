.class public final Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;
.super Ljava/lang/Object;
.source "CacheDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer/upstream/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/upstream/cache/CacheDataSource$EventListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CacheDataSource"


# instance fields
.field private final blockOnCache:Z

.field private bytesRemaining:J

.field private final cache:Lcom/google/android/exoplayer/upstream/cache/Cache;

.field private final cacheReadDataSource:Lcom/google/android/exoplayer/upstream/DataSource;

.field private final cacheWriteDataSource:Lcom/google/android/exoplayer/upstream/DataSource;

.field private currentDataSource:Lcom/google/android/exoplayer/upstream/DataSource;

.field private final eventListener:Lcom/google/android/exoplayer/upstream/cache/CacheDataSource$EventListener;

.field private flags:I

.field private ignoreCache:Z

.field private final ignoreCacheOnError:Z

.field private key:Ljava/lang/String;

.field private lockedSpan:Lcom/google/android/exoplayer/upstream/cache/CacheSpan;

.field private readPosition:J

.field private totalCachedBytesRead:J

.field private final upstreamDataSource:Lcom/google/android/exoplayer/upstream/DataSource;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/upstream/cache/Cache;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSink;ZZLcom/google/android/exoplayer/upstream/cache/CacheDataSource$EventListener;)V
    .registers 9
    .param p1, "cache"    # Lcom/google/android/exoplayer/upstream/cache/Cache;
    .param p2, "upstream"    # Lcom/google/android/exoplayer/upstream/DataSource;
    .param p3, "cacheReadDataSource"    # Lcom/google/android/exoplayer/upstream/DataSource;
    .param p4, "cacheWriteDataSink"    # Lcom/google/android/exoplayer/upstream/DataSink;
    .param p5, "blockOnCache"    # Z
    .param p6, "ignoreCacheOnError"    # Z
    .param p7, "eventListener"    # Lcom/google/android/exoplayer/upstream/cache/CacheDataSource$EventListener;

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer/upstream/cache/Cache;

    .line 113
    iput-object p3, p0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->cacheReadDataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    .line 114
    iput-boolean p5, p0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->blockOnCache:Z

    .line 115
    iput-boolean p6, p0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->ignoreCacheOnError:Z

    .line 116
    iput-object p2, p0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->upstreamDataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    .line 117
    if-eqz p4, :cond_19

    .line 118
    new-instance v0, Lcom/google/android/exoplayer/upstream/TeeDataSource;

    invoke-direct {v0, p2, p4}, Lcom/google/android/exoplayer/upstream/TeeDataSource;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSink;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->cacheWriteDataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    .line 122
    :goto_16
    iput-object p7, p0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->eventListener:Lcom/google/android/exoplayer/upstream/cache/CacheDataSource$EventListener;

    .line 123
    return-void

    .line 120
    :cond_19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->cacheWriteDataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    goto :goto_16
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/upstream/cache/Cache;Lcom/google/android/exoplayer/upstream/DataSource;ZZ)V
    .registers 13
    .param p1, "cache"    # Lcom/google/android/exoplayer/upstream/cache/Cache;
    .param p2, "upstream"    # Lcom/google/android/exoplayer/upstream/DataSource;
    .param p3, "blockOnCache"    # Z
    .param p4, "ignoreCacheOnError"    # Z

    .prologue
    .line 79
    const-wide v6, 0x7fffffffffffffffL

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;-><init>(Lcom/google/android/exoplayer/upstream/cache/Cache;Lcom/google/android/exoplayer/upstream/DataSource;ZZJ)V

    .line 80
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/upstream/cache/Cache;Lcom/google/android/exoplayer/upstream/DataSource;ZZJ)V
    .registers 16
    .param p1, "cache"    # Lcom/google/android/exoplayer/upstream/cache/Cache;
    .param p2, "upstream"    # Lcom/google/android/exoplayer/upstream/DataSource;
    .param p3, "blockOnCache"    # Z
    .param p4, "ignoreCacheOnError"    # Z
    .param p5, "maxCacheFileSize"    # J

    .prologue
    .line 89
    new-instance v3, Lcom/google/android/exoplayer/upstream/FileDataSource;

    invoke-direct {v3}, Lcom/google/android/exoplayer/upstream/FileDataSource;-><init>()V

    new-instance v4, Lcom/google/android/exoplayer/upstream/cache/CacheDataSink;

    invoke-direct {v4, p1, p5, p6}, Lcom/google/android/exoplayer/upstream/cache/CacheDataSink;-><init>(Lcom/google/android/exoplayer/upstream/cache/Cache;J)V

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;-><init>(Lcom/google/android/exoplayer/upstream/cache/Cache;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSink;ZZLcom/google/android/exoplayer/upstream/cache/CacheDataSource$EventListener;)V

    .line 91
    return-void
.end method

.method private closeCurrentSource()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 226
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    if-nez v0, :cond_6

    .line 238
    :cond_5
    :goto_5
    return-void

    .line 230
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer/upstream/DataSource;->close()V

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer/upstream/DataSource;
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_1c

    .line 233
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->lockedSpan:Lcom/google/android/exoplayer/upstream/cache/CacheSpan;

    if-eqz v0, :cond_5

    .line 234
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer/upstream/cache/Cache;

    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->lockedSpan:Lcom/google/android/exoplayer/upstream/cache/CacheSpan;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/upstream/cache/Cache;->releaseHoleSpan(Lcom/google/android/exoplayer/upstream/cache/CacheSpan;)V

    .line 235
    iput-object v3, p0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->lockedSpan:Lcom/google/android/exoplayer/upstream/cache/CacheSpan;

    goto :goto_5

    .line 233
    :catchall_1c
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->lockedSpan:Lcom/google/android/exoplayer/upstream/cache/CacheSpan;

    if-eqz v1, :cond_2a

    .line 234
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer/upstream/cache/Cache;

    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->lockedSpan:Lcom/google/android/exoplayer/upstream/cache/CacheSpan;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer/upstream/cache/Cache;->releaseHoleSpan(Lcom/google/android/exoplayer/upstream/cache/CacheSpan;)V

    .line 235
    iput-object v3, p0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->lockedSpan:Lcom/google/android/exoplayer/upstream/cache/CacheSpan;

    :cond_2a
    throw v0
.end method

.method private handleBeforeThrow(Ljava/io/IOException;)V
    .registers 4
    .param p1, "exception"    # Ljava/io/IOException;

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->ignoreCacheOnError:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->cacheReadDataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    if-eq v0, v1, :cond_e

    instance-of v0, p1, Lcom/google/android/exoplayer/upstream/cache/CacheDataSink$CacheDataSinkException;

    if-eqz v0, :cond_11

    .line 244
    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->ignoreCache:Z

    .line 246
    :cond_11
    return-void
.end method

.method private notifyBytesRead()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x0

    .line 249
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->eventListener:Lcom/google/android/exoplayer/upstream/cache/CacheDataSource$EventListener;

    if-eqz v0, :cond_1b

    iget-wide v0, p0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->totalCachedBytesRead:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_1b

    .line 250
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->eventListener:Lcom/google/android/exoplayer/upstream/cache/CacheDataSource$EventListener;

    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer/upstream/cache/Cache;

    invoke-interface {v1}, Lcom/google/android/exoplayer/upstream/cache/Cache;->getCacheSpace()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->totalCachedBytesRead:J

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource$EventListener;->onCachedBytesRead(JJ)V

    .line 251
    iput-wide v6, p0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->totalCachedBytesRead:J

    .line 253
    :cond_1b
    return-void
.end method

.method private openNextSource()V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->ignoreCache:Z

    if-eqz v4, :cond_33

    .line 187
    const/16 v19, 0x0

    .line 202
    .local v19, "span":Lcom/google/android/exoplayer/upstream/cache/CacheSpan;
    :goto_8
    if-nez v19, :cond_76

    .line 205
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->upstreamDataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    .line 206
    new-instance v2, Lcom/google/android/exoplayer/upstream/DataSpec;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->uri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->readPosition:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->bytesRemaining:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->key:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->flags:I

    invoke-direct/range {v2 .. v9}, Lcom/google/android/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 222
    .local v2, "dataSpec":Lcom/google/android/exoplayer/upstream/DataSpec;
    :goto_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    invoke-interface {v4, v2}, Lcom/google/android/exoplayer/upstream/DataSource;->open(Lcom/google/android/exoplayer/upstream/DataSpec;)J

    .line 223
    return-void

    .line 188
    .end local v2    # "dataSpec":Lcom/google/android/exoplayer/upstream/DataSpec;
    .end local v19    # "span":Lcom/google/android/exoplayer/upstream/cache/CacheSpan;
    :cond_33
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->bytesRemaining:J

    const-wide/16 v10, -0x1

    cmp-long v4, v4, v10

    if-nez v4, :cond_47

    .line 191
    const-string v4, "CacheDataSource"

    const-string v5, "Cache bypassed due to unbounded length."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/16 v19, 0x0

    .restart local v19    # "span":Lcom/google/android/exoplayer/upstream/cache/CacheSpan;
    goto :goto_8

    .line 193
    .end local v19    # "span":Lcom/google/android/exoplayer/upstream/cache/CacheSpan;
    :cond_47
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->blockOnCache:Z

    if-eqz v4, :cond_65

    .line 195
    :try_start_4d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer/upstream/cache/Cache;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->key:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->readPosition:J

    invoke-interface {v4, v5, v10, v11}, Lcom/google/android/exoplayer/upstream/cache/Cache;->startReadWrite(Ljava/lang/String;J)Lcom/google/android/exoplayer/upstream/cache/CacheSpan;
    :try_end_5c
    .catch Ljava/lang/InterruptedException; {:try_start_4d .. :try_end_5c} :catch_5e

    move-result-object v19

    .restart local v19    # "span":Lcom/google/android/exoplayer/upstream/cache/CacheSpan;
    goto :goto_8

    .line 196
    .end local v19    # "span":Lcom/google/android/exoplayer/upstream/cache/CacheSpan;
    :catch_5e
    move-exception v18

    .line 197
    .local v18, "e":Ljava/lang/InterruptedException;
    new-instance v4, Ljava/io/InterruptedIOException;

    invoke-direct {v4}, Ljava/io/InterruptedIOException;-><init>()V

    throw v4

    .line 200
    .end local v18    # "e":Ljava/lang/InterruptedException;
    :cond_65
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer/upstream/cache/Cache;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->key:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->readPosition:J

    invoke-interface {v4, v5, v10, v11}, Lcom/google/android/exoplayer/upstream/cache/Cache;->startReadWriteNonBlocking(Ljava/lang/String;J)Lcom/google/android/exoplayer/upstream/cache/CacheSpan;

    move-result-object v19

    .restart local v19    # "span":Lcom/google/android/exoplayer/upstream/cache/CacheSpan;
    goto :goto_8

    .line 207
    :cond_76
    move-object/from16 v0, v19

    iget-boolean v4, v0, Lcom/google/android/exoplayer/upstream/cache/CacheSpan;->isCached:Z

    if-eqz v4, :cond_b6

    .line 209
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/google/android/exoplayer/upstream/cache/CacheSpan;->file:Ljava/io/File;

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 210
    .local v3, "fileUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->readPosition:J

    move-object/from16 v0, v19

    iget-wide v10, v0, Lcom/google/android/exoplayer/upstream/cache/CacheSpan;->position:J

    sub-long v6, v4, v10

    .line 211
    .local v6, "filePosition":J
    move-object/from16 v0, v19

    iget-wide v4, v0, Lcom/google/android/exoplayer/upstream/cache/CacheSpan;->length:J

    sub-long/2addr v4, v6

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->bytesRemaining:J

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 212
    .local v8, "length":J
    new-instance v2, Lcom/google/android/exoplayer/upstream/DataSpec;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->readPosition:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->key:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->flags:I

    invoke-direct/range {v2 .. v11}, Lcom/google/android/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    .line 213
    .restart local v2    # "dataSpec":Lcom/google/android/exoplayer/upstream/DataSpec;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->cacheReadDataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    goto/16 :goto_2b

    .line 216
    .end local v2    # "dataSpec":Lcom/google/android/exoplayer/upstream/DataSpec;
    .end local v3    # "fileUri":Landroid/net/Uri;
    .end local v6    # "filePosition":J
    .end local v8    # "length":J
    :cond_b6
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->lockedSpan:Lcom/google/android/exoplayer/upstream/cache/CacheSpan;

    .line 217
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/exoplayer/upstream/cache/CacheSpan;->isOpenEnded()Z

    move-result v4

    if-eqz v4, :cond_f1

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->bytesRemaining:J

    .line 218
    .restart local v8    # "length":J
    :goto_c6
    new-instance v2, Lcom/google/android/exoplayer/upstream/DataSpec;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->uri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->readPosition:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->key:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->flags:I

    move/from16 v17, v0

    move-object v10, v2

    move-wide v14, v8

    invoke-direct/range {v10 .. v17}, Lcom/google/android/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 219
    .restart local v2    # "dataSpec":Lcom/google/android/exoplayer/upstream/DataSpec;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->cacheWriteDataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    if-eqz v4, :cond_fe

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->cacheWriteDataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    :goto_eb
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    goto/16 :goto_2b

    .line 217
    .end local v2    # "dataSpec":Lcom/google/android/exoplayer/upstream/DataSpec;
    .end local v8    # "length":J
    :cond_f1
    move-object/from16 v0, v19

    iget-wide v4, v0, Lcom/google/android/exoplayer/upstream/cache/CacheSpan;->length:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->bytesRemaining:J

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    goto :goto_c6

    .line 219
    .restart local v2    # "dataSpec":Lcom/google/android/exoplayer/upstream/DataSpec;
    .restart local v8    # "length":J
    :cond_fe
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->upstreamDataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    goto :goto_eb
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->notifyBytesRead()V

    .line 171
    :try_start_3
    invoke-direct {p0}, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->closeCurrentSource()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_7

    .line 176
    return-void

    .line 172
    :catch_7
    move-exception v0

    .line 173
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->handleBeforeThrow(Ljava/io/IOException;)V

    .line 174
    throw v0
.end method

.method public open(Lcom/google/android/exoplayer/upstream/DataSpec;)J
    .registers 6
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    :try_start_0
    iget-object v1, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    iput-object v1, p0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->uri:Landroid/net/Uri;

    .line 129
    iget v1, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->flags:I

    iput v1, p0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->flags:I

    .line 130
    iget-object v1, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->key:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->key:Ljava/lang/String;

    .line 131
    iget-wide v2, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->position:J

    iput-wide v2, p0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->readPosition:J

    .line 132
    iget-wide v2, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->length:J

    iput-wide v2, p0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->bytesRemaining:J

    .line 133
    invoke-direct {p0}, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->openNextSource()V

    .line 134
    iget-wide v2, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->length:J
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_19} :catch_1a

    return-wide v2

    .line 135
    :catch_1a
    move-exception v0

    .line 136
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->handleBeforeThrow(Ljava/io/IOException;)V

    .line 137
    throw v0
.end method

.method public read([BII)I
    .registers 12
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    .line 144
    :try_start_2
    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    invoke-interface {v2, p1, p2, p3}, Lcom/google/android/exoplayer/upstream/DataSource;->read([BII)I

    move-result v0

    .line 145
    .local v0, "bytesRead":I
    if-ltz v0, :cond_29

    .line 146
    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    iget-object v3, p0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->cacheReadDataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    if-ne v2, v3, :cond_16

    .line 147
    iget-wide v2, p0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->totalCachedBytesRead:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->totalCachedBytesRead:J

    .line 149
    :cond_16
    iget-wide v2, p0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->readPosition:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->readPosition:J

    .line 150
    iget-wide v2, p0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->bytesRemaining:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_28

    .line 151
    iget-wide v2, p0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->bytesRemaining:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->bytesRemaining:J

    .line 160
    .end local v0    # "bytesRead":I
    :cond_28
    :goto_28
    return v0

    .line 154
    .restart local v0    # "bytesRead":I
    :cond_29
    invoke-direct {p0}, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->closeCurrentSource()V

    .line 155
    iget-wide v2, p0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->bytesRemaining:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_28

    iget-wide v2, p0, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->bytesRemaining:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_28

    .line 156
    invoke-direct {p0}, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->openNextSource()V

    .line 157
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->read([BII)I
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_40} :catch_42

    move-result v0

    goto :goto_28

    .line 161
    .end local v0    # "bytesRead":I
    :catch_42
    move-exception v1

    .line 162
    .local v1, "e":Ljava/io/IOException;
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer/upstream/cache/CacheDataSource;->handleBeforeThrow(Ljava/io/IOException;)V

    .line 163
    throw v1
.end method
