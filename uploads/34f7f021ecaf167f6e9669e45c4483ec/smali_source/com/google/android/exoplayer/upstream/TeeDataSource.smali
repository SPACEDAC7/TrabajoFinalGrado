.class public final Lcom/google/android/exoplayer/upstream/TeeDataSource;
.super Ljava/lang/Object;
.source "TeeDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer/upstream/DataSource;


# instance fields
.field private final dataSink:Lcom/google/android/exoplayer/upstream/DataSink;

.field private final upstream:Lcom/google/android/exoplayer/upstream/DataSource;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSink;)V
    .registers 4
    .param p1, "upstream"    # Lcom/google/android/exoplayer/upstream/DataSource;
    .param p2, "dataSink"    # Lcom/google/android/exoplayer/upstream/DataSink;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {p1}, Lcom/google/android/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/upstream/DataSource;

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/TeeDataSource;->upstream:Lcom/google/android/exoplayer/upstream/DataSource;

    .line 36
    invoke-static {p2}, Lcom/google/android/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/upstream/DataSink;

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/TeeDataSource;->dataSink:Lcom/google/android/exoplayer/upstream/DataSink;

    .line 37
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/TeeDataSource;->upstream:Lcom/google/android/exoplayer/upstream/DataSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer/upstream/DataSource;->close()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_b

    .line 66
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/TeeDataSource;->dataSink:Lcom/google/android/exoplayer/upstream/DataSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer/upstream/DataSink;->close()V

    .line 68
    return-void

    .line 66
    :catchall_b
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/TeeDataSource;->dataSink:Lcom/google/android/exoplayer/upstream/DataSink;

    invoke-interface {v1}, Lcom/google/android/exoplayer/upstream/DataSink;->close()V

    throw v0
.end method

.method public open(Lcom/google/android/exoplayer/upstream/DataSpec;)J
    .registers 12
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    .line 41
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/TeeDataSource;->upstream:Lcom/google/android/exoplayer/upstream/DataSource;

    invoke-interface {v1, p1}, Lcom/google/android/exoplayer/upstream/DataSource;->open(Lcom/google/android/exoplayer/upstream/DataSpec;)J

    move-result-wide v6

    .line 42
    .local v6, "dataLength":J
    iget-wide v2, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->length:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_22

    cmp-long v1, v6, v4

    if-eqz v1, :cond_22

    .line 44
    new-instance v0, Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-object v1, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    iget-wide v2, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->absoluteStreamPosition:J

    iget-wide v4, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->position:J

    iget-object v8, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->key:Ljava/lang/String;

    iget v9, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->flags:I

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    .end local p1    # "dataSpec":Lcom/google/android/exoplayer/upstream/DataSpec;
    .local v0, "dataSpec":Lcom/google/android/exoplayer/upstream/DataSpec;
    move-object p1, v0

    .line 47
    .end local v0    # "dataSpec":Lcom/google/android/exoplayer/upstream/DataSpec;
    .restart local p1    # "dataSpec":Lcom/google/android/exoplayer/upstream/DataSpec;
    :cond_22
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/TeeDataSource;->dataSink:Lcom/google/android/exoplayer/upstream/DataSink;

    invoke-interface {v1, p1}, Lcom/google/android/exoplayer/upstream/DataSink;->open(Lcom/google/android/exoplayer/upstream/DataSpec;)Lcom/google/android/exoplayer/upstream/DataSink;

    .line 48
    return-wide v6
.end method

.method public read([BII)I
    .registers 6
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/TeeDataSource;->upstream:Lcom/google/android/exoplayer/upstream/DataSource;

    invoke-interface {v1, p1, p2, p3}, Lcom/google/android/exoplayer/upstream/DataSource;->read([BII)I

    move-result v0

    .line 54
    .local v0, "num":I
    if-lez v0, :cond_d

    .line 56
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/TeeDataSource;->dataSink:Lcom/google/android/exoplayer/upstream/DataSink;

    invoke-interface {v1, p1, p2, v0}, Lcom/google/android/exoplayer/upstream/DataSink;->write([BII)V

    .line 58
    :cond_d
    return v0
.end method
