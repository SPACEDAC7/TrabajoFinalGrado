.class public final Lcom/google/android/exoplayer/upstream/ByteArrayDataSource;
.super Ljava/lang/Object;
.source "ByteArrayDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer/upstream/DataSource;


# instance fields
.field private final data:[B

.field private readPosition:I

.field private remainingBytes:I


# direct methods
.method public constructor <init>([B)V
    .registers 3
    .param p1, "data"    # [B

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {p1}, Lcom/google/android/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    array-length v0, p1

    if-lez v0, :cond_10

    const/4 v0, 0x1

    :goto_a
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 37
    iput-object p1, p0, Lcom/google/android/exoplayer/upstream/ByteArrayDataSource;->data:[B

    .line 38
    return-void

    .line 36
    :cond_10
    const/4 v0, 0x0

    goto :goto_a
.end method


# virtual methods
.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    return-void
.end method

.method public open(Lcom/google/android/exoplayer/upstream/DataSpec;)J
    .registers 6
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    iget-wide v0, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->position:J

    long-to-int v0, v0

    iput v0, p0, Lcom/google/android/exoplayer/upstream/ByteArrayDataSource;->readPosition:I

    .line 43
    iget-wide v0, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->length:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_59

    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/ByteArrayDataSource;->data:[B

    array-length v0, v0

    int-to-long v0, v0

    iget-wide v2, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->position:J

    sub-long/2addr v0, v2

    :goto_14
    long-to-int v0, v0

    iput v0, p0, Lcom/google/android/exoplayer/upstream/ByteArrayDataSource;->remainingBytes:I

    .line 45
    iget v0, p0, Lcom/google/android/exoplayer/upstream/ByteArrayDataSource;->remainingBytes:I

    if-lez v0, :cond_25

    iget v0, p0, Lcom/google/android/exoplayer/upstream/ByteArrayDataSource;->readPosition:I

    iget v1, p0, Lcom/google/android/exoplayer/upstream/ByteArrayDataSource;->remainingBytes:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/ByteArrayDataSource;->data:[B

    array-length v1, v1

    if-le v0, v1, :cond_5c

    .line 46
    :cond_25
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsatisfiable range: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer/upstream/ByteArrayDataSource;->readPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->length:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/ByteArrayDataSource;->data:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_59
    iget-wide v0, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->length:J

    goto :goto_14

    .line 49
    :cond_5c
    iget v0, p0, Lcom/google/android/exoplayer/upstream/ByteArrayDataSource;->remainingBytes:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public read([BII)I
    .registers 6
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    iget v0, p0, Lcom/google/android/exoplayer/upstream/ByteArrayDataSource;->remainingBytes:I

    if-nez v0, :cond_6

    .line 60
    const/4 v0, -0x1

    .line 66
    :goto_5
    return v0

    .line 62
    :cond_6
    iget v0, p0, Lcom/google/android/exoplayer/upstream/ByteArrayDataSource;->remainingBytes:I

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 63
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/ByteArrayDataSource;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer/upstream/ByteArrayDataSource;->readPosition:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    iget v0, p0, Lcom/google/android/exoplayer/upstream/ByteArrayDataSource;->readPosition:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/exoplayer/upstream/ByteArrayDataSource;->readPosition:I

    .line 65
    iget v0, p0, Lcom/google/android/exoplayer/upstream/ByteArrayDataSource;->remainingBytes:I

    sub-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/exoplayer/upstream/ByteArrayDataSource;->remainingBytes:I

    move v0, p3

    .line 66
    goto :goto_5
.end method
