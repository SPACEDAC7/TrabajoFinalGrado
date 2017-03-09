.class Lcom/bumptech/glide/load/engine/CacheLoader;
.super Ljava/lang/Object;
.source "CacheLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CacheLoader"


# instance fields
.field private final diskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/cache/DiskCache;)V
    .registers 2
    .param p1, "diskCache"    # Lcom/bumptech/glide/load/engine/cache/DiskCache;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/CacheLoader;->diskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;

    .line 18
    return-void
.end method


# virtual methods
.method public load(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/ResourceDecoder;II)Lcom/bumptech/glide/load/engine/Resource;
    .registers 11
    .param p1, "key"    # Lcom/bumptech/glide/load/Key;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/Key;",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/File;",
            "TZ;>;II)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TZ;>;"
        }
    .end annotation

    .prologue
    .local p2, "decoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/File;TZ;>;"
    const/4 v5, 0x3

    .line 21
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/CacheLoader;->diskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;

    invoke-interface {v3, p1}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->get(Lcom/bumptech/glide/load/Key;)Ljava/io/File;

    move-result-object v1

    .line 22
    .local v1, "fromCache":Ljava/io/File;
    if-nez v1, :cond_b

    .line 23
    const/4 v2, 0x0

    .line 40
    :cond_a
    :goto_a
    return-object v2

    .line 26
    :cond_b
    const/4 v2, 0x0

    .line 28
    .local v2, "result":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TZ;>;"
    :try_start_c
    invoke-interface {p2, v1, p3, p4}, Lcom/bumptech/glide/load/ResourceDecoder;->decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_27

    move-result-object v2

    .line 34
    :cond_10
    :goto_10
    if-nez v2, :cond_a

    .line 35
    const-string v3, "CacheLoader"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 36
    const-string v3, "CacheLoader"

    const-string v4, "Failed to decode image from cache or not present in cache"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_21
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/CacheLoader;->diskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;

    invoke-interface {v3, p1}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->delete(Lcom/bumptech/glide/load/Key;)V

    goto :goto_a

    .line 29
    :catch_27
    move-exception v0

    .line 30
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "CacheLoader"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 31
    const-string v3, "CacheLoader"

    const-string v4, "Exception decoding image from cache"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method
