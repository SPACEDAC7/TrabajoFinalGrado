.class final Lcom/bumptech/glide/load/resource/bitmap/Downsampler$3;
.super Lcom/bumptech/glide/load/resource/bitmap/Downsampler;
.source "Downsampler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/Downsampler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Ljava/lang/Object;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IILcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap;
    .registers 12
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Lcom/bumptech/glide/load/DecodeFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 72
    move-object v1, p1

    check-cast v1, Ljava/io/InputStream;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->decode(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IILcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    const-string v0, "NONE.com.bumptech.glide.load.data.bitmap"

    return-object v0
.end method

.method protected getSampleSize(IIII)I
    .registers 6
    .param p1, "inWidth"    # I
    .param p2, "inHeight"    # I
    .param p3, "outWidth"    # I
    .param p4, "outHeight"    # I

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method
