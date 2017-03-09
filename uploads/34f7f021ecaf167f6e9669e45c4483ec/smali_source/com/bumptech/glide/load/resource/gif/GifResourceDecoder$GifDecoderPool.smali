.class Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;
.super Ljava/lang/Object;
.source "GifResourceDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GifDecoderPool"
.end annotation


# instance fields
.field private final pool:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/bumptech/glide/gifdecoder/GifDecoder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->createQueue(I)Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;->pool:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public declared-synchronized obtain(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;)Lcom/bumptech/glide/gifdecoder/GifDecoder;
    .registers 4
    .param p1, "bitmapProvider"    # Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    .prologue
    .line 121
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;->pool:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;

    .line 122
    .local v0, "result":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    if-nez v0, :cond_10

    .line 123
    new-instance v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;

    .end local v0    # "result":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    invoke-direct {v0, p1}, Lcom/bumptech/glide/gifdecoder/GifDecoder;-><init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 125
    .restart local v0    # "result":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    :cond_10
    monitor-exit p0

    return-object v0

    .line 121
    .end local v0    # "result":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    :catchall_12
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized release(Lcom/bumptech/glide/gifdecoder/GifDecoder;)V
    .registers 3
    .param p1, "decoder"    # Lcom/bumptech/glide/gifdecoder/GifDecoder;

    .prologue
    .line 129
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->clear()V

    .line 130
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;->pool:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 131
    monitor-exit p0

    return-void

    .line 129
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
