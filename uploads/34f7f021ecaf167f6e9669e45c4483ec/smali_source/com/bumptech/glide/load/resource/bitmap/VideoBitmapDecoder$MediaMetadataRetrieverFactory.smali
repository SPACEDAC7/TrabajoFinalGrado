.class Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;
.super Ljava/lang/Object;
.source "VideoBitmapDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaMetadataRetrieverFactory"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/media/MediaMetadataRetriever;
    .registers 2

    .prologue
    .line 66
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    return-object v0
.end method
