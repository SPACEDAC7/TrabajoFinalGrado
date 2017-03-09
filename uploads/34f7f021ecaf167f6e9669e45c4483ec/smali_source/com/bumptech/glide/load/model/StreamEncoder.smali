.class public Lcom/bumptech/glide/load/model/StreamEncoder;
.super Ljava/lang/Object;
.source "StreamEncoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/Encoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/Encoder",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StreamEncoder"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .registers 9
    .param p1, "data"    # Ljava/io/InputStream;
    .param p2, "os"    # Ljava/io/OutputStream;

    .prologue
    const/4 v3, 0x0

    .line 20
    invoke-static {}, Lcom/bumptech/glide/util/ByteArrayPool;->get()Lcom/bumptech/glide/util/ByteArrayPool;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bumptech/glide/util/ByteArrayPool;->getBytes()[B

    move-result-object v0

    .line 23
    .local v0, "buffer":[B
    :goto_9
    :try_start_9
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "read":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_2e

    .line 24
    const/4 v4, 0x0

    invoke-virtual {p2, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_14} :catch_15
    .catchall {:try_start_9 .. :try_end_14} :catchall_37

    goto :goto_9

    .line 27
    .end local v2    # "read":I
    :catch_15
    move-exception v1

    .line 28
    .local v1, "e":Ljava/io/IOException;
    :try_start_16
    const-string v4, "StreamEncoder"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 29
    const-string v4, "StreamEncoder"

    const-string v5, "Failed to encode data onto the OutputStream"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_26
    .catchall {:try_start_16 .. :try_end_26} :catchall_37

    .line 33
    :cond_26
    invoke-static {}, Lcom/bumptech/glide/util/ByteArrayPool;->get()Lcom/bumptech/glide/util/ByteArrayPool;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/bumptech/glide/util/ByteArrayPool;->releaseBytes([B)Z

    .end local v1    # "e":Ljava/io/IOException;
    :goto_2d
    return v3

    .line 26
    .restart local v2    # "read":I
    :cond_2e
    const/4 v3, 0x1

    .line 33
    invoke-static {}, Lcom/bumptech/glide/util/ByteArrayPool;->get()Lcom/bumptech/glide/util/ByteArrayPool;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/bumptech/glide/util/ByteArrayPool;->releaseBytes([B)Z

    goto :goto_2d

    .end local v2    # "read":I
    :catchall_37
    move-exception v3

    invoke-static {}, Lcom/bumptech/glide/util/ByteArrayPool;->get()Lcom/bumptech/glide/util/ByteArrayPool;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/bumptech/glide/util/ByteArrayPool;->releaseBytes([B)Z

    throw v3
.end method

.method public bridge synthetic encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/io/OutputStream;

    .prologue
    .line 15
    check-cast p1, Ljava/io/InputStream;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/model/StreamEncoder;->encode(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    move-result v0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    const-string v0, ""

    return-object v0
.end method
