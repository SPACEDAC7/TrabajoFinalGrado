.class public Lcom/bumptech/glide/load/resource/transcode/GifBitmapWrapperDrawableTranscoder;
.super Ljava/lang/Object;
.source "GifBitmapWrapperDrawableTranscoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
        "<",
        "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
        "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final bitmapDrawableResourceTranscoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "bitmapDrawableResourceTranscoder":Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;, "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/transcode/GifBitmapWrapperDrawableTranscoder;->bitmapDrawableResourceTranscoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    .line 21
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    const-string v0, "GifBitmapWrapperDrawableTranscoder.com.bumptech.glide.load.resource.transcode"

    return-object v0
.end method

.method public transcode(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<",
            "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "toTranscode":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;>;"
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    .line 27
    .local v1, "gifBitmap":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;->getBitmapResource()Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    .line 30
    .local v0, "bitmapResource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<Landroid/graphics/Bitmap;>;"
    if-eqz v0, :cond_13

    .line 31
    iget-object v3, p0, Lcom/bumptech/glide/load/resource/transcode/GifBitmapWrapperDrawableTranscoder;->bitmapDrawableResourceTranscoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    invoke-interface {v3, v0}, Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;->transcode(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v2

    .line 36
    .local v2, "result":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<+Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;>;"
    :goto_12
    return-object v2

    .line 33
    .end local v2    # "result":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<+Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;>;"
    :cond_13
    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;->getGifResource()Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v2

    .restart local v2    # "result":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<+Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;>;"
    goto :goto_12
.end method
