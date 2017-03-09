.class public Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;
.super Ljava/lang/Object;
.source "GifResourceDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;,
        Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/ResourceDecoder",
        "<",
        "Ljava/io/InputStream;",
        "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
        ">;"
    }
.end annotation


# static fields
.field private static final DECODER_POOL:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;

.field private static final PARSER_POOL:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;

.field private static final TAG:Ljava/lang/String; = "GifResourceDecoder"


# instance fields
.field private final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final context:Landroid/content/Context;

.field private final decoderPool:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;

.field private final parserPool:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;

.field private final provider:Lcom/bumptech/glide/load/resource/gif/GifBitmapProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    new-instance v0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->PARSER_POOL:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;

    .line 29
    new-instance v0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->DECODER_POOL:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmapPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .prologue
    .line 42
    sget-object v0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->PARSER_POOL:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;

    sget-object v1, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->DECODER_POOL:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;)V

    .line 43
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmapPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p3, "parserPool"    # Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;
    .param p4, "decoderPool"    # Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->context:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 50
    iput-object p4, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->decoderPool:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;

    .line 51
    new-instance v0, Lcom/bumptech/glide/load/resource/gif/GifBitmapProvider;

    invoke-direct {v0, p2}, Lcom/bumptech/glide/load/resource/gif/GifBitmapProvider;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->provider:Lcom/bumptech/glide/load/resource/gif/GifBitmapProvider;

    .line 52
    iput-object p3, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->parserPool:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;

    .line 53
    return-void
.end method

.method private decode([BIILcom/bumptech/glide/gifdecoder/GifHeaderParser;Lcom/bumptech/glide/gifdecoder/GifDecoder;)Lcom/bumptech/glide/load/resource/gif/GifDrawableResource;
    .registers 16
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "parser"    # Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    .param p5, "decoder"    # Lcom/bumptech/glide/gifdecoder/GifDecoder;

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-virtual {p4}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->parseHeader()Lcom/bumptech/glide/gifdecoder/GifHeader;

    move-result-object v7

    .line 70
    .local v7, "header":Lcom/bumptech/glide/gifdecoder/GifHeader;
    invoke-virtual {v7}, Lcom/bumptech/glide/gifdecoder/GifHeader;->getNumFrames()I

    move-result v2

    if-lez v2, :cond_11

    invoke-virtual {v7}, Lcom/bumptech/glide/gifdecoder/GifHeader;->getStatus()I

    move-result v2

    if-eqz v2, :cond_12

    .line 85
    :cond_11
    :goto_11
    return-object v1

    .line 75
    :cond_12
    invoke-direct {p0, p5, v7, p1}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->decodeFirstFrame(Lcom/bumptech/glide/gifdecoder/GifDecoder;Lcom/bumptech/glide/gifdecoder/GifHeader;[B)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 76
    .local v9, "firstFrame":Landroid/graphics/Bitmap;
    if-eqz v9, :cond_11

    .line 80
    invoke-static {}, Lcom/bumptech/glide/load/resource/UnitTransformation;->get()Lcom/bumptech/glide/load/resource/UnitTransformation;

    move-result-object v4

    .line 82
    .local v4, "unitTransformation":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<Landroid/graphics/Bitmap;>;"
    new-instance v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->provider:Lcom/bumptech/glide/load/resource/gif/GifBitmapProvider;

    iget-object v3, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move v5, p2

    move v6, p3

    move-object v8, p1

    invoke-direct/range {v0 .. v9}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;-><init>(Landroid/content/Context;Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/Transformation;IILcom/bumptech/glide/gifdecoder/GifHeader;[BLandroid/graphics/Bitmap;)V

    .line 85
    .local v0, "gifDrawable":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    new-instance v1, Lcom/bumptech/glide/load/resource/gif/GifDrawableResource;

    invoke-direct {v1, v0}, Lcom/bumptech/glide/load/resource/gif/GifDrawableResource;-><init>(Lcom/bumptech/glide/load/resource/gif/GifDrawable;)V

    goto :goto_11
.end method

.method private decodeFirstFrame(Lcom/bumptech/glide/gifdecoder/GifDecoder;Lcom/bumptech/glide/gifdecoder/GifHeader;[B)Landroid/graphics/Bitmap;
    .registers 5
    .param p1, "decoder"    # Lcom/bumptech/glide/gifdecoder/GifDecoder;
    .param p2, "header"    # Lcom/bumptech/glide/gifdecoder/GifHeader;
    .param p3, "data"    # [B

    .prologue
    .line 89
    invoke-virtual {p1, p2, p3}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->setData(Lcom/bumptech/glide/gifdecoder/GifHeader;[B)V

    .line 90
    invoke-virtual {p1}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->advance()V

    .line 91
    invoke-virtual {p1}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getNextFrame()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static inputStreamToBytes(Ljava/io/InputStream;)[B
    .registers 8
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    const/16 v5, 0x4000

    .line 100
    const/16 v1, 0x4000

    .line 101
    .local v1, "bufferSize":I
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 104
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x4000

    :try_start_b
    new-array v2, v5, [B

    .line 105
    .local v2, "data":[B
    :goto_d
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "nRead":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_26

    .line 106
    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_18} :catch_19

    goto :goto_d

    .line 109
    .end local v2    # "data":[B
    .end local v4    # "nRead":I
    :catch_19
    move-exception v3

    .line 110
    .local v3, "e":Ljava/io/IOException;
    const-string v5, "GifResourceDecoder"

    const-string v6, "Error reading data from stream"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    .end local v3    # "e":Ljava/io/IOException;
    :goto_21
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5

    .line 108
    .restart local v2    # "data":[B
    .restart local v4    # "nRead":I
    :cond_26
    :try_start_26
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_19

    goto :goto_21
.end method


# virtual methods
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
    .line 26
    check-cast p1, Ljava/io/InputStream;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->decode(Ljava/io/InputStream;II)Lcom/bumptech/glide/load/resource/gif/GifDrawableResource;

    move-result-object v0

    return-object v0
.end method

.method public decode(Ljava/io/InputStream;II)Lcom/bumptech/glide/load/resource/gif/GifDrawableResource;
    .registers 10
    .param p1, "source"    # Ljava/io/InputStream;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 57
    invoke-static {p1}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->inputStreamToBytes(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 58
    .local v1, "data":[B
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->parserPool:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;->obtain([B)Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    move-result-object v4

    .line 59
    .local v4, "parser":Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->decoderPool:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->provider:Lcom/bumptech/glide/load/resource/gif/GifBitmapProvider;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;->obtain(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;)Lcom/bumptech/glide/gifdecoder/GifDecoder;

    move-result-object v5

    .local v5, "decoder":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    move-object v0, p0

    move v2, p2

    move v3, p3

    .line 61
    :try_start_15
    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->decode([BIILcom/bumptech/glide/gifdecoder/GifHeaderParser;Lcom/bumptech/glide/gifdecoder/GifDecoder;)Lcom/bumptech/glide/load/resource/gif/GifDrawableResource;
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_24

    move-result-object v0

    .line 63
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->parserPool:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;

    invoke-virtual {v2, v4}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;->release(Lcom/bumptech/glide/gifdecoder/GifHeaderParser;)V

    .line 64
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->decoderPool:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;

    invoke-virtual {v2, v5}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;->release(Lcom/bumptech/glide/gifdecoder/GifDecoder;)V

    return-object v0

    .line 63
    :catchall_24
    move-exception v0

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->parserPool:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;

    invoke-virtual {v2, v4}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;->release(Lcom/bumptech/glide/gifdecoder/GifHeaderParser;)V

    .line 64
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->decoderPool:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;

    invoke-virtual {v2, v5}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;->release(Lcom/bumptech/glide/gifdecoder/GifDecoder;)V

    throw v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 96
    const-string v0, ""

    return-object v0
.end method
