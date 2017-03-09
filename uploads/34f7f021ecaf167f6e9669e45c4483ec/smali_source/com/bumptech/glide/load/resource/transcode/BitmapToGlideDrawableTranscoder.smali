.class public Lcom/bumptech/glide/load/resource/transcode/BitmapToGlideDrawableTranscoder;
.super Ljava/lang/Object;
.source "BitmapToGlideDrawableTranscoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
        "<",
        "Landroid/graphics/Bitmap;",
        "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final glideBitmapDrawableTranscoder:Lcom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    new-instance v0, Lcom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/resource/transcode/BitmapToGlideDrawableTranscoder;-><init>(Lcom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;)V
    .registers 2
    .param p1, "glideBitmapDrawableTranscoder"    # Lcom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/transcode/BitmapToGlideDrawableTranscoder;->glideBitmapDrawableTranscoder:Lcom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;

    .line 26
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/transcode/BitmapToGlideDrawableTranscoder;->glideBitmapDrawableTranscoder:Lcom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transcode(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "toTranscode":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<Landroid/graphics/Bitmap;>;"
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/transcode/BitmapToGlideDrawableTranscoder;->glideBitmapDrawableTranscoder:Lcom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;->transcode(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    return-object v0
.end method
