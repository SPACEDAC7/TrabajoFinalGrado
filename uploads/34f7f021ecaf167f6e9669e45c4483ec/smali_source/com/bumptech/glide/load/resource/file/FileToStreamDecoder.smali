.class public Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;
.super Ljava/lang/Object;
.source "FileToStreamDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/ResourceDecoder",
        "<",
        "Ljava/io/File;",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_FILE_OPENER:Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;


# instance fields
.field private final fileOpener:Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;

.field private streamDecoder:Lcom/bumptech/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/InputStream;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    new-instance v0, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;->DEFAULT_FILE_OPENER:Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/ResourceDecoder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/InputStream;",
            "TT;>;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;, "Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder<TT;>;"
    .local p1, "streamDecoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/InputStream;TT;>;"
    sget-object v0, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;->DEFAULT_FILE_OPENER:Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;-><init>(Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;)V

    .line 25
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;)V
    .registers 3
    .param p2, "fileOpener"    # Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/InputStream;",
            "TT;>;",
            "Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;, "Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder<TT;>;"
    .local p1, "streamDecoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/InputStream;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;->streamDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 30
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;->fileOpener:Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;

    .line 31
    return-void
.end method


# virtual methods
.method public decode(Ljava/io/File;II)Lcom/bumptech/glide/load/engine/Resource;
    .registers 8
    .param p1, "source"    # Ljava/io/File;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "II)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;, "Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder<TT;>;"
    const/4 v0, 0x0

    .line 36
    .local v0, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 38
    .local v1, "result":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TT;>;"
    :try_start_2
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;->fileOpener:Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;

    invoke-virtual {v2, p1}, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;->open(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v0

    .line 39
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;->streamDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v2, v0, p2, p3}, Lcom/bumptech/glide/load/ResourceDecoder;->decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_14

    move-result-object v1

    .line 41
    if-eqz v0, :cond_13

    .line 43
    :try_start_10
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_1b

    .line 49
    :cond_13
    :goto_13
    return-object v1

    .line 41
    :catchall_14
    move-exception v2

    if-eqz v0, :cond_1a

    .line 43
    :try_start_17
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_1d

    .line 46
    :cond_1a
    :goto_1a
    throw v2

    .line 44
    :catch_1b
    move-exception v2

    goto :goto_13

    :catch_1d
    move-exception v3

    goto :goto_1a
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
    .line 17
    .local p0, "this":Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;, "Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder<TT;>;"
    check-cast p1, Ljava/io/File;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;->decode(Ljava/io/File;II)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    .local p0, "this":Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;, "Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder<TT;>;"
    const-string v0, ""

    return-object v0
.end method
