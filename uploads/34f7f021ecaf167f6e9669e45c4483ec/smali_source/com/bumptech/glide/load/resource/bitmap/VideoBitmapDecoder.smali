.class public Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;
.super Ljava/lang/Object;
.source "VideoBitmapDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/resource/bitmap/BitmapDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/resource/bitmap/BitmapDecoder",
        "<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_FACTORY:Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;

.field private static final NO_FRAME:I = -0x1


# instance fields
.field private factory:Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;

.field private frame:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;->DEFAULT_FACTORY:Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 25
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;->DEFAULT_FACTORY:Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;-><init>(Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "frame"    # I

    .prologue
    .line 29
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;->DEFAULT_FACTORY:Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;

    invoke-static {p1}, Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;->checkValidFrame(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;-><init>(Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;I)V

    .line 30
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;)V
    .registers 3
    .param p1, "factory"    # Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;

    .prologue
    .line 33
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;-><init>(Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;I)V

    .line 34
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;I)V
    .registers 3
    .param p1, "factory"    # Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;
    .param p2, "frame"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;->factory:Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;

    .line 38
    iput p2, p0, Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;->frame:I

    .line 39
    return-void
.end method

.method private static checkValidFrame(I)I
    .registers 3
    .param p0, "frame"    # I

    .prologue
    .line 71
    if-gez p0, :cond_a

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Requested frame must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_a
    return p0
.end method


# virtual methods
.method public decode(Landroid/os/ParcelFileDescriptor;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IILcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap;
    .registers 10
    .param p1, "resource"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "bitmapPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p3, "outWidth"    # I
    .param p4, "outHeight"    # I
    .param p5, "decodeFormat"    # Lcom/bumptech/glide/load/DecodeFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;->factory:Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;->build()Landroid/media/MediaMetadataRetriever;

    move-result-object v0

    .line 46
    .local v0, "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 48
    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;->frame:I

    if-ltz v2, :cond_1f

    .line 49
    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;->frame:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 53
    .local v1, "result":Landroid/graphics/Bitmap;
    :goto_18
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 54
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 55
    return-object v1

    .line 51
    .end local v1    # "result":Landroid/graphics/Bitmap;
    :cond_1f
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object v1

    .restart local v1    # "result":Landroid/graphics/Bitmap;
    goto :goto_18
.end method

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
    .line 18
    move-object v1, p1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;->decode(Landroid/os/ParcelFileDescriptor;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IILcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    const-string v0, "VideoBitmapDecoder.com.bumptech.glide.load.resource.bitmap"

    return-object v0
.end method
