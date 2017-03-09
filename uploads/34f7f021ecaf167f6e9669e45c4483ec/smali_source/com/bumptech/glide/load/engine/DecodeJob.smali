.class Lcom/bumptech/glide/load/engine/DecodeJob;
.super Ljava/lang/Object;
.source "DecodeJob.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;,
        Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;,
        Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_FILE_OPENER:Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;

.field private static final TAG:Ljava/lang/String; = "DecodeJob"


# instance fields
.field private final diskCacheProvider:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

.field private final diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

.field private final fetcher:Lcom/bumptech/glide/load/data/DataFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<TA;>;"
        }
    .end annotation
.end field

.field private final fileOpener:Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;

.field private final height:I

.field private volatile isCancelled:Z

.field private final loadProvider:Lcom/bumptech/glide/provider/DataLoadProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/provider/DataLoadProvider",
            "<TA;TT;>;"
        }
    .end annotation
.end field

.field private final priority:Lcom/bumptech/glide/Priority;

.field private final resultKey:Lcom/bumptech/glide/load/engine/EngineKey;

.field private final transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<TT;TZ;>;"
        }
    .end annotation
.end field

.field private final transformation:Lcom/bumptech/glide/load/Transformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Transformation",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    new-instance v0, Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/engine/DecodeJob;->DEFAULT_FILE_OPENER:Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/EngineKey;IILcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/provider/DataLoadProvider;Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;Lcom/bumptech/glide/load/engine/DiskCacheStrategy;Lcom/bumptech/glide/Priority;)V
    .registers 23
    .param p1, "resultKey"    # Lcom/bumptech/glide/load/engine/EngineKey;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p8, "diskCacheProvider"    # Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;
    .param p9, "diskCacheStrategy"    # Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
    .param p10, "priority"    # Lcom/bumptech/glide/Priority;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/EngineKey;",
            "II",
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<TA;>;",
            "Lcom/bumptech/glide/provider/DataLoadProvider",
            "<TA;TT;>;",
            "Lcom/bumptech/glide/load/Transformation",
            "<TT;>;",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<TT;TZ;>;",
            "Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            "Lcom/bumptech/glide/Priority;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    .local p4, "fetcher":Lcom/bumptech/glide/load/data/DataFetcher;, "Lcom/bumptech/glide/load/data/DataFetcher<TA;>;"
    .local p5, "loadProvider":Lcom/bumptech/glide/provider/DataLoadProvider;, "Lcom/bumptech/glide/provider/DataLoadProvider<TA;TT;>;"
    .local p6, "transformation":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<TT;>;"
    .local p7, "transcoder":Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;, "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<TT;TZ;>;"
    sget-object v11, Lcom/bumptech/glide/load/engine/DecodeJob;->DEFAULT_FILE_OPENER:Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Lcom/bumptech/glide/load/engine/DecodeJob;-><init>(Lcom/bumptech/glide/load/engine/EngineKey;IILcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/provider/DataLoadProvider;Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;Lcom/bumptech/glide/load/engine/DiskCacheStrategy;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;)V

    .line 53
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/EngineKey;IILcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/provider/DataLoadProvider;Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;Lcom/bumptech/glide/load/engine/DiskCacheStrategy;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;)V
    .registers 12
    .param p1, "resultKey"    # Lcom/bumptech/glide/load/engine/EngineKey;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p8, "diskCacheProvider"    # Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;
    .param p9, "diskCacheStrategy"    # Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
    .param p10, "priority"    # Lcom/bumptech/glide/Priority;
    .param p11, "fileOpener"    # Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/EngineKey;",
            "II",
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<TA;>;",
            "Lcom/bumptech/glide/provider/DataLoadProvider",
            "<TA;TT;>;",
            "Lcom/bumptech/glide/load/Transformation",
            "<TT;>;",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<TT;TZ;>;",
            "Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    .local p4, "fetcher":Lcom/bumptech/glide/load/data/DataFetcher;, "Lcom/bumptech/glide/load/data/DataFetcher<TA;>;"
    .local p5, "loadProvider":Lcom/bumptech/glide/provider/DataLoadProvider;, "Lcom/bumptech/glide/provider/DataLoadProvider<TA;TT;>;"
    .local p6, "transformation":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<TT;>;"
    .local p7, "transcoder":Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;, "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<TT;TZ;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->resultKey:Lcom/bumptech/glide/load/engine/EngineKey;

    .line 61
    iput p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->width:I

    .line 62
    iput p3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->height:I

    .line 63
    iput-object p4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 64
    iput-object p5, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->loadProvider:Lcom/bumptech/glide/provider/DataLoadProvider;

    .line 65
    iput-object p6, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->transformation:Lcom/bumptech/glide/load/Transformation;

    .line 66
    iput-object p7, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    .line 67
    iput-object p8, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->diskCacheProvider:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

    .line 68
    iput-object p9, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 69
    iput-object p10, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->priority:Lcom/bumptech/glide/Priority;

    .line 70
    iput-object p11, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->fileOpener:Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/bumptech/glide/load/engine/DecodeJob;)Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;
    .registers 2
    .param p0, "x0"    # Lcom/bumptech/glide/load/engine/DecodeJob;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->fileOpener:Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;

    return-object v0
.end method

.method private cacheAndDecodeSourceData(Ljava/lang/Object;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    .local p1, "data":Ljava/lang/Object;, "TA;"
    const/4 v6, 0x2

    .line 199
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v2

    .line 200
    .local v2, "startTime":J
    new-instance v1, Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->loadProvider:Lcom/bumptech/glide/provider/DataLoadProvider;

    invoke-interface {v4}, Lcom/bumptech/glide/provider/DataLoadProvider;->getSourceEncoder()Lcom/bumptech/glide/load/Encoder;

    move-result-object v4

    invoke-direct {v1, p0, v4, p1}, Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;-><init>(Lcom/bumptech/glide/load/engine/DecodeJob;Lcom/bumptech/glide/load/Encoder;Ljava/lang/Object;)V

    .line 201
    .local v1, "writer":Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;, "Lcom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>.SourceWriter<TA;>;"
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->diskCacheProvider:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

    invoke-interface {v4}, Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;->getDiskCache()Lcom/bumptech/glide/load/engine/cache/DiskCache;

    move-result-object v4

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->resultKey:Lcom/bumptech/glide/load/engine/EngineKey;

    invoke-virtual {v5}, Lcom/bumptech/glide/load/engine/EngineKey;->getOriginalKey()Lcom/bumptech/glide/load/Key;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->put(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;)V

    .line 202
    const-string v4, "DecodeJob"

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 203
    const-string v4, "Wrote source to cache"

    invoke-direct {p0, v4, v2, v3}, Lcom/bumptech/glide/load/engine/DecodeJob;->logWithTimeAndKey(Ljava/lang/String;J)V

    .line 206
    :cond_2c
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v2

    .line 207
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->resultKey:Lcom/bumptech/glide/load/engine/EngineKey;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/EngineKey;->getOriginalKey()Lcom/bumptech/glide/load/Key;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/bumptech/glide/load/engine/DecodeJob;->loadFromCache(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    .line 208
    .local v0, "result":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TT;>;"
    const-string v4, "DecodeJob"

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_49

    if-eqz v0, :cond_49

    .line 209
    const-string v4, "Decoded source from cache"

    invoke-direct {p0, v4, v2, v3}, Lcom/bumptech/glide/load/engine/DecodeJob;->logWithTimeAndKey(Ljava/lang/String;J)V

    .line 211
    :cond_49
    return-object v0
.end method

.method private decodeFromSourceData(Ljava/lang/Object;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    .local p1, "data":Ljava/lang/Object;, "TA;"
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheSource()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 187
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/DecodeJob;->cacheAndDecodeSourceData(Ljava/lang/Object;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    .line 195
    .local v0, "decoded":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TT;>;"
    :cond_c
    :goto_c
    return-object v0

    .line 189
    .end local v0    # "decoded":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TT;>;"
    :cond_d
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v2

    .line 190
    .local v2, "startTime":J
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->loadProvider:Lcom/bumptech/glide/provider/DataLoadProvider;

    invoke-interface {v1}, Lcom/bumptech/glide/provider/DataLoadProvider;->getSourceDecoder()Lcom/bumptech/glide/load/ResourceDecoder;

    move-result-object v1

    iget v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->width:I

    iget v5, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->height:I

    invoke-interface {v1, p1, v4, v5}, Lcom/bumptech/glide/load/ResourceDecoder;->decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    .line 191
    .restart local v0    # "decoded":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TT;>;"
    const-string v1, "DecodeJob"

    const/4 v4, 0x2

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 192
    const-string v1, "Decoded from source"

    invoke-direct {p0, v1, v2, v3}, Lcom/bumptech/glide/load/engine/DecodeJob;->logWithTimeAndKey(Ljava/lang/String;J)V

    goto :goto_c
.end method

.method private decodeSource()Lcom/bumptech/glide/load/engine/Resource;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    const/4 v1, 0x0

    .line 169
    .local v1, "decoded":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TT;>;"
    :try_start_1
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v2

    .line 170
    .local v2, "startTime":J
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->priority:Lcom/bumptech/glide/Priority;

    invoke-interface {v4, v5}, Lcom/bumptech/glide/load/data/DataFetcher;->loadData(Lcom/bumptech/glide/Priority;)Ljava/lang/Object;

    move-result-object v0

    .line 171
    .local v0, "data":Ljava/lang/Object;, "TA;"
    const-string v4, "DecodeJob"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 172
    const-string v4, "Fetched data"

    invoke-direct {p0, v4, v2, v3}, Lcom/bumptech/glide/load/engine/DecodeJob;->logWithTimeAndKey(Ljava/lang/String;J)V

    .line 174
    :cond_1b
    iget-boolean v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->isCancelled:Z
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_31

    if-eqz v4, :cond_26

    .line 175
    const/4 v4, 0x0

    .line 179
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v5}, Lcom/bumptech/glide/load/data/DataFetcher;->cleanup()V

    .line 181
    :goto_25
    return-object v4

    .line 177
    :cond_26
    :try_start_26
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->decodeFromSourceData(Ljava/lang/Object;)Lcom/bumptech/glide/load/engine/Resource;
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_31

    move-result-object v1

    .line 179
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v4}, Lcom/bumptech/glide/load/data/DataFetcher;->cleanup()V

    move-object v4, v1

    .line 181
    goto :goto_25

    .line 179
    .end local v0    # "data":Ljava/lang/Object;, "TA;"
    .end local v2    # "startTime":J
    :catchall_31
    move-exception v4

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v5}, Lcom/bumptech/glide/load/data/DataFetcher;->cleanup()V

    throw v4
.end method

.method private loadFromCache(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 7
    .param p1, "key"    # Lcom/bumptech/glide/load/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            ")",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->diskCacheProvider:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

    invoke-interface {v2}, Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;->getDiskCache()Lcom/bumptech/glide/load/engine/cache/DiskCache;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->get(Lcom/bumptech/glide/load/Key;)Ljava/io/File;

    move-result-object v0

    .line 216
    .local v0, "cacheFile":Ljava/io/File;
    if-nez v0, :cond_e

    .line 217
    const/4 v1, 0x0

    .line 228
    :cond_d
    :goto_d
    return-object v1

    .line 220
    :cond_e
    const/4 v1, 0x0

    .line 222
    .local v1, "result":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TT;>;"
    :try_start_f
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->loadProvider:Lcom/bumptech/glide/provider/DataLoadProvider;

    invoke-interface {v2}, Lcom/bumptech/glide/provider/DataLoadProvider;->getCacheDecoder()Lcom/bumptech/glide/load/ResourceDecoder;

    move-result-object v2

    iget v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->width:I

    iget v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->height:I

    invoke-interface {v2, v0, v3, v4}, Lcom/bumptech/glide/load/ResourceDecoder;->decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_29

    move-result-object v1

    .line 224
    if-nez v1, :cond_d

    .line 225
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->diskCacheProvider:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

    invoke-interface {v2}, Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;->getDiskCache()Lcom/bumptech/glide/load/engine/cache/DiskCache;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->delete(Lcom/bumptech/glide/load/Key;)V

    goto :goto_d

    .line 224
    :catchall_29
    move-exception v2

    if-nez v1, :cond_35

    .line 225
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->diskCacheProvider:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

    invoke-interface {v3}, Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;->getDiskCache()Lcom/bumptech/glide/load/engine/cache/DiskCache;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->delete(Lcom/bumptech/glide/load/Key;)V

    :cond_35
    throw v2
.end method

.method private logWithTimeAndKey(Ljava/lang/String;J)V
    .registers 8
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "startTime"    # J

    .prologue
    .line 251
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    const-string v0, "DecodeJob"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2, p3}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->resultKey:Lcom/bumptech/glide/load/engine/EngineKey;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-void
.end method

.method private transcode(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TT;>;)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TZ;>;"
        }
    .end annotation

    .prologue
    .line 244
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    .local p1, "transformed":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TT;>;"
    if-nez p1, :cond_4

    .line 245
    const/4 v0, 0x0

    .line 247
    :goto_3
    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;->transcode(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    goto :goto_3
.end method

.method private transform(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TT;>;)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 232
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    .local p1, "decoded":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TT;>;"
    if-nez p1, :cond_4

    .line 233
    const/4 v0, 0x0

    .line 240
    :cond_3
    :goto_3
    return-object v0

    .line 236
    :cond_4
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->transformation:Lcom/bumptech/glide/load/Transformation;

    iget v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->width:I

    iget v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->height:I

    invoke-interface {v1, p1, v2, v3}, Lcom/bumptech/glide/load/Transformation;->transform(Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    .line 237
    .local v0, "transformed":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TT;>;"
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 238
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->recycle()V

    goto :goto_3
.end method

.method private transformEncodeAndTranscode(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TT;>;)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TZ;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    .local p1, "decoded":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TT;>;"
    const/4 v5, 0x2

    .line 138
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v2

    .line 139
    .local v2, "startTime":J
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/DecodeJob;->transform(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v1

    .line 140
    .local v1, "transformed":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TT;>;"
    const-string v4, "DecodeJob"

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 141
    const-string v4, "Transformed resource from source"

    invoke-direct {p0, v4, v2, v3}, Lcom/bumptech/glide/load/engine/DecodeJob;->logWithTimeAndKey(Ljava/lang/String;J)V

    .line 144
    :cond_16
    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/engine/DecodeJob;->writeTransformedToCache(Lcom/bumptech/glide/load/engine/Resource;)V

    .line 146
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v2

    .line 147
    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/engine/DecodeJob;->transcode(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    .line 148
    .local v0, "result":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TZ;>;"
    const-string v4, "DecodeJob"

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 149
    const-string v4, "Transcoded transformed from source"

    invoke-direct {p0, v4, v2, v3}, Lcom/bumptech/glide/load/engine/DecodeJob;->logWithTimeAndKey(Ljava/lang/String;J)V

    .line 151
    :cond_2e
    return-object v0
.end method

.method private writeTransformedToCache(Lcom/bumptech/glide/load/engine/Resource;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    .local p1, "transformed":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TT;>;"
    if-eqz p1, :cond_a

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheResult()Z

    move-result v3

    if-nez v3, :cond_b

    .line 164
    :cond_a
    :goto_a
    return-void

    .line 158
    :cond_b
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v0

    .line 159
    .local v0, "startTime":J
    new-instance v2, Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->loadProvider:Lcom/bumptech/glide/provider/DataLoadProvider;

    invoke-interface {v3}, Lcom/bumptech/glide/provider/DataLoadProvider;->getEncoder()Lcom/bumptech/glide/load/ResourceEncoder;

    move-result-object v3

    invoke-direct {v2, p0, v3, p1}, Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;-><init>(Lcom/bumptech/glide/load/engine/DecodeJob;Lcom/bumptech/glide/load/Encoder;Ljava/lang/Object;)V

    .line 160
    .local v2, "writer":Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;, "Lcom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>.SourceWriter<Lcom/bumptech/glide/load/engine/Resource<TT;>;>;"
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->diskCacheProvider:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

    invoke-interface {v3}, Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;->getDiskCache()Lcom/bumptech/glide/load/engine/cache/DiskCache;

    move-result-object v3

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->resultKey:Lcom/bumptech/glide/load/engine/EngineKey;

    invoke-interface {v3, v4, v2}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->put(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;)V

    .line 161
    const-string v3, "DecodeJob"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 162
    const-string v3, "Wrote transformed from source to cache"

    invoke-direct {p0, v3, v0, v1}, Lcom/bumptech/glide/load/engine/DecodeJob;->logWithTimeAndKey(Ljava/lang/String;J)V

    goto :goto_a
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 133
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->isCancelled:Z

    .line 134
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v0}, Lcom/bumptech/glide/load/data/DataFetcher;->cancel()V

    .line 135
    return-void
.end method

.method public decodeFromSource()Lcom/bumptech/glide/load/engine/Resource;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TZ;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->decodeSource()Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    .line 129
    .local v0, "decoded":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TT;>;"
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->transformEncodeAndTranscode(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v1

    return-object v1
.end method

.method public decodeResultFromCache()Lcom/bumptech/glide/load/engine/Resource;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TZ;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    const/4 v5, 0x2

    .line 80
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheResult()Z

    move-result v4

    if-nez v4, :cond_b

    .line 81
    const/4 v0, 0x0

    .line 94
    :cond_a
    :goto_a
    return-object v0

    .line 84
    :cond_b
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v2

    .line 85
    .local v2, "startTime":J
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->resultKey:Lcom/bumptech/glide/load/engine/EngineKey;

    invoke-direct {p0, v4}, Lcom/bumptech/glide/load/engine/DecodeJob;->loadFromCache(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v1

    .line 86
    .local v1, "transformed":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TT;>;"
    const-string v4, "DecodeJob"

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 87
    const-string v4, "Decoded transformed from cache"

    invoke-direct {p0, v4, v2, v3}, Lcom/bumptech/glide/load/engine/DecodeJob;->logWithTimeAndKey(Ljava/lang/String;J)V

    .line 89
    :cond_22
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v2

    .line 90
    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/engine/DecodeJob;->transcode(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    .line 91
    .local v0, "result":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TZ;>;"
    const-string v4, "DecodeJob"

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 92
    const-string v4, "Transcoded transformed from cache"

    invoke-direct {p0, v4, v2, v3}, Lcom/bumptech/glide/load/engine/DecodeJob;->logWithTimeAndKey(Ljava/lang/String;J)V

    goto :goto_a
.end method

.method public decodeSourceFromCache()Lcom/bumptech/glide/load/engine/Resource;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TZ;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheSource()Z

    move-result v1

    if-nez v1, :cond_a

    .line 105
    const/4 v1, 0x0

    .line 113
    :goto_9
    return-object v1

    .line 108
    :cond_a
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v2

    .line 109
    .local v2, "startTime":J
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->resultKey:Lcom/bumptech/glide/load/engine/EngineKey;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/EngineKey;->getOriginalKey()Lcom/bumptech/glide/load/Key;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/engine/DecodeJob;->loadFromCache(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    .line 110
    .local v0, "decoded":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TT;>;"
    const-string v1, "DecodeJob"

    const/4 v4, 0x2

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 111
    const-string v1, "Decoded source from cache"

    invoke-direct {p0, v1, v2, v3}, Lcom/bumptech/glide/load/engine/DecodeJob;->logWithTimeAndKey(Ljava/lang/String;J)V

    .line 113
    :cond_26
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->transformEncodeAndTranscode(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v1

    goto :goto_9
.end method
