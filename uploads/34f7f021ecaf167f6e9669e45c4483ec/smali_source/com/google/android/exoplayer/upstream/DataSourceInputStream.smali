.class public final Lcom/google/android/exoplayer/upstream/DataSourceInputStream;
.super Ljava/io/InputStream;
.source "DataSourceInputStream.java"


# instance fields
.field private closed:Z

.field private final dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

.field private final dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

.field private opened:Z

.field private final singleByteArray:[B


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;)V
    .registers 4
    .param p1, "dataSource"    # Lcom/google/android/exoplayer/upstream/DataSource;
    .param p2, "dataSpec"    # Lcom/google/android/exoplayer/upstream/DataSpec;

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 32
    iput-boolean v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceInputStream;->opened:Z

    .line 33
    iput-boolean v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceInputStream;->closed:Z

    .line 40
    iput-object p1, p0, Lcom/google/android/exoplayer/upstream/DataSourceInputStream;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    .line 41
    iput-object p2, p0, Lcom/google/android/exoplayer/upstream/DataSourceInputStream;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceInputStream;->singleByteArray:[B

    .line 43
    return-void
.end method

.method private checkOpened()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceInputStream;->opened:Z

    if-nez v0, :cond_e

    .line 96
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceInputStream;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DataSourceInputStream;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/upstream/DataSource;->open(Lcom/google/android/exoplayer/upstream/DataSpec;)J

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceInputStream;->opened:Z

    .line 99
    :cond_e
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceInputStream;->closed:Z

    if-nez v0, :cond_c

    .line 89
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceInputStream;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer/upstream/DataSource;->close()V

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceInputStream;->closed:Z

    .line 92
    :cond_c
    return-void
.end method

.method public open()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/android/exoplayer/upstream/DataSourceInputStream;->checkOpened()V

    .line 56
    return-void
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 60
    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/DataSourceInputStream;->singleByteArray:[B

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/upstream/DataSourceInputStream;->read([B)I

    move-result v0

    .line 61
    .local v0, "length":I
    if-ne v0, v1, :cond_a

    .line 64
    :goto_9
    return v1

    :cond_a
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DataSourceInputStream;->singleByteArray:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    goto :goto_9
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
    .line 69
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/exoplayer/upstream/DataSourceInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 5
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceInputStream;->closed:Z

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 75
    invoke-direct {p0}, Lcom/google/android/exoplayer/upstream/DataSourceInputStream;->checkOpened()V

    .line 76
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceInputStream;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer/upstream/DataSource;->read([BII)I

    move-result v0

    return v0

    .line 74
    :cond_12
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public skip(J)J
    .registers 6
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceInputStream;->closed:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 82
    invoke-direct {p0}, Lcom/google/android/exoplayer/upstream/DataSourceInputStream;->checkOpened()V

    .line 83
    invoke-super {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0

    .line 81
    :cond_10
    const/4 v0, 0x0

    goto :goto_5
.end method
