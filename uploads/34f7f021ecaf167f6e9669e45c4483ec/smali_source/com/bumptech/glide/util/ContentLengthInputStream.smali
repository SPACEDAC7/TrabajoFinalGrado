.class public final Lcom/bumptech/glide/util/ContentLengthInputStream;
.super Ljava/io/FilterInputStream;
.source "ContentLengthInputStream.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContentLengthStream"

.field private static final UNKNOWN:I = -0x1


# instance fields
.field private final contentLength:J

.field private readSoFar:I


# direct methods
.method constructor <init>(Ljava/io/InputStream;J)V
    .registers 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "contentLength"    # J

    .prologue
    .line 44
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 45
    iput-wide p2, p0, Lcom/bumptech/glide/util/ContentLengthInputStream;->contentLength:J

    .line 46
    return-void
.end method

.method private checkReadSoFarOrThrow(I)I
    .registers 6
    .param p1, "read"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    if-ltz p1, :cond_8

    .line 70
    iget v0, p0, Lcom/bumptech/glide/util/ContentLengthInputStream;->readSoFar:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/bumptech/glide/util/ContentLengthInputStream;->readSoFar:I

    .line 76
    :cond_7
    return p1

    .line 71
    :cond_8
    iget-wide v0, p0, Lcom/bumptech/glide/util/ContentLengthInputStream;->contentLength:J

    iget v2, p0, Lcom/bumptech/glide/util/ContentLengthInputStream;->readSoFar:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_7

    .line 72
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read all expected data, expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/bumptech/glide/util/ContentLengthInputStream;->contentLength:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but read: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/util/ContentLengthInputStream;->readSoFar:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static obtain(Ljava/io/InputStream;J)Ljava/io/InputStream;
    .registers 4
    .param p0, "other"    # Ljava/io/InputStream;
    .param p1, "contentLength"    # J

    .prologue
    .line 26
    new-instance v0, Lcom/bumptech/glide/util/ContentLengthInputStream;

    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/util/ContentLengthInputStream;-><init>(Ljava/io/InputStream;J)V

    return-object v0
.end method

.method public static obtain(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4
    .param p0, "other"    # Ljava/io/InputStream;
    .param p1, "contentLengthHeader"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-static {p1}, Lcom/bumptech/glide/util/ContentLengthInputStream;->parseContentLength(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p0, v0, v1}, Lcom/bumptech/glide/util/ContentLengthInputStream;->obtain(Ljava/io/InputStream;J)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private static parseContentLength(Ljava/lang/String;)I
    .registers 6
    .param p0, "contentLengthHeader"    # Ljava/lang/String;

    .prologue
    .line 30
    const/4 v1, -0x1

    .line 31
    .local v1, "result":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 33
    :try_start_7
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_a} :catch_c

    move-result v1

    .line 40
    :cond_b
    :goto_b
    return v1

    .line 34
    :catch_c
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "ContentLengthStream"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 36
    const-string v2, "ContentLengthStream"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to parse content length header: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method


# virtual methods
.method public declared-synchronized available()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/bumptech/glide/util/ContentLengthInputStream;->contentLength:J

    iget v2, p0, Lcom/bumptech/glide/util/ContentLengthInputStream;->readSoFar:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/bumptech/glide/util/ContentLengthInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_15

    move-result-wide v0

    long-to-int v0, v0

    monitor-exit p0

    return v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/util/ContentLengthInputStream;->checkReadSoFarOrThrow(I)I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    move-result v0

    monitor-exit p0

    return v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read([B)I
    .registers 4
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/bumptech/glide/util/ContentLengthInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized read([BII)I
    .registers 5
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/util/ContentLengthInputStream;->checkReadSoFarOrThrow(I)I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    move-result v0

    monitor-exit p0

    return v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
