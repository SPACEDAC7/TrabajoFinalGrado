.class public Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;
.super Ljava/lang/Object;
.source "GifBitmapWrapperResourceDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;,
        Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/ResourceDecoder",
        "<",
        "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
        "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_PARSER:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;

.field private static final DEFAULT_STREAM_FACTORY:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;

.field static final MARK_LIMIT_BYTES:I = 0x800


# instance fields
.field private final bitmapDecoder:Lcom/bumptech/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final gifDecoder:Lcom/bumptech/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/InputStream;",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private final parser:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;

.field private final streamFactory:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    new-instance v0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->DEFAULT_PARSER:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;

    .line 24
    new-instance v0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->DEFAULT_STREAM_FACTORY:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
    .registers 10
    .param p3, "bitmapPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/InputStream;",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "bitmapDecoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<Lcom/bumptech/glide/load/model/ImageVideoWrapper;Landroid/graphics/Bitmap;>;"
    .local p2, "gifDecoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/InputStream;Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;"
    sget-object v4, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->DEFAULT_PARSER:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;

    sget-object v5, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->DEFAULT_STREAM_FACTORY:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;-><init>(Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;)V

    .line 39
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;)V
    .registers 6
    .param p3, "bitmapPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p4, "parser"    # Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;
    .param p5, "streamFactory"    # Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/InputStream;",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
            "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;",
            "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "bitmapDecoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<Lcom/bumptech/glide/load/model/ImageVideoWrapper;Landroid/graphics/Bitmap;>;"
    .local p2, "gifDecoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/InputStream;Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->bitmapDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 46
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->gifDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 47
    iput-object p3, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 48
    iput-object p4, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->parser:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;

    .line 49
    iput-object p5, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->streamFactory:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;

    .line 50
    return-void
.end method

.method private decode(Lcom/bumptech/glide/load/model/ImageVideoWrapper;II[B)Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    .registers 7
    .param p1, "source"    # Lcom/bumptech/glide/load/model/ImageVideoWrapper;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p1}, Lcom/bumptech/glide/load/model/ImageVideoWrapper;->getStream()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->decodeStream(Lcom/bumptech/glide/load/model/ImageVideoWrapper;II[B)Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    move-result-object v0

    .line 75
    .local v0, "result":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    :goto_a
    return-object v0

    .line 73
    .end local v0    # "result":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    :cond_b
    invoke-direct {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->decodeBitmapWrapper(Lcom/bumptech/glide/load/model/ImageVideoWrapper;II)Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    move-result-object v0

    .restart local v0    # "result":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    goto :goto_a
.end method

.method private decodeBitmapWrapper(Lcom/bumptech/glide/load/model/ImageVideoWrapper;II)Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    .registers 7
    .param p1, "toDecode"    # Lcom/bumptech/glide/load/model/ImageVideoWrapper;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    const/4 v1, 0x0

    .line 121
    .local v1, "result":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->bitmapDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v2, p1, p2, p3}, Lcom/bumptech/glide/load/ResourceDecoder;->decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    .line 122
    .local v0, "bitmapResource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<Landroid/graphics/Bitmap;>;"
    if-eqz v0, :cond_f

    .line 123
    new-instance v1, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    .end local v1    # "result":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;-><init>(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/engine/Resource;)V

    .line 126
    .restart local v1    # "result":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    :cond_f
    return-object v1
.end method

.method private decodeGifWrapper(Ljava/io/InputStream;II)Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    .registers 11
    .param p1, "bis"    # Ljava/io/InputStream;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 100
    const/4 v3, 0x0

    .line 101
    .local v3, "result":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    iget-object v4, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->gifDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v4, p1, p2, p3}, Lcom/bumptech/glide/load/ResourceDecoder;->decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v2

    .line 102
    .local v2, "gifResource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;"
    if-eqz v2, :cond_1c

    .line 103
    invoke-interface {v2}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    .line 108
    .local v1, "drawable":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getFrameCount()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_1d

    .line 109
    new-instance v3, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    .end local v3    # "result":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    invoke-direct {v3, v6, v2}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;-><init>(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/engine/Resource;)V

    .line 115
    .end local v1    # "drawable":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    .restart local v3    # "result":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    :cond_1c
    :goto_1c
    return-object v3

    .line 111
    .restart local v1    # "drawable":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    :cond_1d
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getFirstFrame()Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-direct {v0, v4, v5}, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;-><init>(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 112
    .local v0, "bitmapResource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<Landroid/graphics/Bitmap;>;"
    new-instance v3, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    .end local v3    # "result":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    invoke-direct {v3, v0, v6}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;-><init>(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/engine/Resource;)V

    .restart local v3    # "result":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    goto :goto_1c
.end method

.method private decodeStream(Lcom/bumptech/glide/load/model/ImageVideoWrapper;II[B)Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    .registers 11
    .param p1, "source"    # Lcom/bumptech/glide/load/model/ImageVideoWrapper;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v4, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->streamFactory:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/model/ImageVideoWrapper;->getStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v4, v5, p4}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;->build(Ljava/io/InputStream;[B)Ljava/io/InputStream;

    move-result-object v0

    .line 81
    .local v0, "bis":Ljava/io/InputStream;
    const/16 v4, 0x800

    invoke-virtual {v0, v4}, Ljava/io/InputStream;->mark(I)V

    .line 82
    iget-object v4, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->parser:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;

    invoke-virtual {v4, v0}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;->parse(Ljava/io/InputStream;)Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    move-result-object v3

    .line 83
    .local v3, "type":Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 85
    const/4 v2, 0x0

    .line 86
    .local v2, "result":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    sget-object v4, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    if-ne v3, v4, :cond_21

    .line 87
    invoke-direct {p0, v0, p2, p3}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->decodeGifWrapper(Ljava/io/InputStream;II)Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    move-result-object v2

    .line 90
    :cond_21
    if-nez v2, :cond_30

    .line 93
    new-instance v1, Lcom/bumptech/glide/load/model/ImageVideoWrapper;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/model/ImageVideoWrapper;->getFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/bumptech/glide/load/model/ImageVideoWrapper;-><init>(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;)V

    .line 94
    .local v1, "forBitmapDecoder":Lcom/bumptech/glide/load/model/ImageVideoWrapper;
    invoke-direct {p0, v1, p2, p3}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->decodeBitmapWrapper(Lcom/bumptech/glide/load/model/ImageVideoWrapper;II)Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    move-result-object v2

    .line 96
    .end local v1    # "forBitmapDecoder":Lcom/bumptech/glide/load/model/ImageVideoWrapper;
    :cond_30
    return-object v2
.end method


# virtual methods
.method public decode(Lcom/bumptech/glide/load/model/ImageVideoWrapper;II)Lcom/bumptech/glide/load/engine/Resource;
    .registers 8
    .param p1, "source"    # Lcom/bumptech/glide/load/model/ImageVideoWrapper;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            "II)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<",
            "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-static {}, Lcom/bumptech/glide/util/ByteArrayPool;->get()Lcom/bumptech/glide/util/ByteArrayPool;

    move-result-object v0

    .line 57
    .local v0, "pool":Lcom/bumptech/glide/util/ByteArrayPool;
    invoke-virtual {v0}, Lcom/bumptech/glide/util/ByteArrayPool;->getBytes()[B

    move-result-object v1

    .line 59
    .local v1, "tempBytes":[B
    const/4 v2, 0x0

    .line 61
    .local v2, "wrapper":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    :try_start_9
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->decode(Lcom/bumptech/glide/load/model/ImageVideoWrapper;II[B)Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_18

    move-result-object v2

    .line 63
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/util/ByteArrayPool;->releaseBytes([B)Z

    .line 65
    if-eqz v2, :cond_1d

    new-instance v3, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;

    invoke-direct {v3, v2}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;-><init>(Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;)V

    :goto_17
    return-object v3

    .line 63
    :catchall_18
    move-exception v3

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/util/ByteArrayPool;->releaseBytes([B)Z

    throw v3

    .line 65
    :cond_1d
    const/4 v3, 0x0

    goto :goto_17
.end method

.method public bridge synthetic decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;
    .registers 5
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22
    check-cast p1, Lcom/bumptech/glide/load/model/ImageVideoWrapper;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->decode(Lcom/bumptech/glide/load/model/ImageVideoWrapper;II)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->id:Ljava/lang/String;

    if-nez v0, :cond_23

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->gifDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v1}, Lcom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->bitmapDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v1}, Lcom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->id:Ljava/lang/String;

    .line 134
    :cond_23
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->id:Ljava/lang/String;

    return-object v0
.end method
