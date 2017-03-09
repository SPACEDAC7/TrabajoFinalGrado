.class public Lcom/google/android/exoplayer/chunk/InitializationChunk;
.super Lcom/google/android/exoplayer/chunk/Chunk;
.source "InitializationChunk.java"

# interfaces
.implements Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;


# instance fields
.field private volatile bytesLoaded:I

.field private drmInitData:Lcom/google/android/exoplayer/drm/DrmInitData;

.field private final extractorWrapper:Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;

.field private volatile loadCanceled:Z

.field private mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

.field private seekMap:Lcom/google/android/exoplayer/extractor/SeekMap;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;ILcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;)V
    .registers 13
    .param p1, "dataSource"    # Lcom/google/android/exoplayer/upstream/DataSource;
    .param p2, "dataSpec"    # Lcom/google/android/exoplayer/upstream/DataSpec;
    .param p3, "trigger"    # I
    .param p4, "format"    # Lcom/google/android/exoplayer/chunk/Format;
    .param p5, "extractorWrapper"    # Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;

    .prologue
    .line 50
    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer/chunk/InitializationChunk;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;ILcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;ILcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;I)V
    .registers 14
    .param p1, "dataSource"    # Lcom/google/android/exoplayer/upstream/DataSource;
    .param p2, "dataSpec"    # Lcom/google/android/exoplayer/upstream/DataSpec;
    .param p3, "trigger"    # I
    .param p4, "format"    # Lcom/google/android/exoplayer/chunk/Format;
    .param p5, "extractorWrapper"    # Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;
    .param p6, "parentId"    # I

    .prologue
    .line 65
    const/4 v3, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer/chunk/Chunk;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;IILcom/google/android/exoplayer/chunk/Format;I)V

    .line 66
    iput-object p5, p0, Lcom/google/android/exoplayer/chunk/InitializationChunk;->extractorWrapper:Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;

    .line 67
    return-void
.end method


# virtual methods
.method public bytesLoaded()J
    .registers 3

    .prologue
    .line 71
    iget v0, p0, Lcom/google/android/exoplayer/chunk/InitializationChunk;->bytesLoaded:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public cancelLoad()V
    .registers 2

    .prologue
    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/chunk/InitializationChunk;->loadCanceled:Z

    .line 166
    return-void
.end method

.method public drmInitData(Lcom/google/android/exoplayer/drm/DrmInitData;)V
    .registers 2
    .param p1, "drmInitData"    # Lcom/google/android/exoplayer/drm/DrmInitData;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/google/android/exoplayer/chunk/InitializationChunk;->drmInitData:Lcom/google/android/exoplayer/drm/DrmInitData;

    .line 138
    return-void
.end method

.method public format(Lcom/google/android/exoplayer/MediaFormat;)V
    .registers 2
    .param p1, "mediaFormat"    # Lcom/google/android/exoplayer/MediaFormat;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/google/android/exoplayer/chunk/InitializationChunk;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    .line 143
    return-void
.end method

.method public getDrmInitData()Lcom/google/android/exoplayer/drm/DrmInitData;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/InitializationChunk;->drmInitData:Lcom/google/android/exoplayer/drm/DrmInitData;

    return-object v0
.end method

.method public getFormat()Lcom/google/android/exoplayer/MediaFormat;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/InitializationChunk;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    return-object v0
.end method

.method public getSeekMap()Lcom/google/android/exoplayer/extractor/SeekMap;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/InitializationChunk;->seekMap:Lcom/google/android/exoplayer/extractor/SeekMap;

    return-object v0
.end method

.method public hasDrmInitData()Z
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/InitializationChunk;->drmInitData:Lcom/google/android/exoplayer/drm/DrmInitData;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasFormat()Z
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/InitializationChunk;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasSeekMap()Z
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/InitializationChunk;->seekMap:Lcom/google/android/exoplayer/extractor/SeekMap;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isLoadCanceled()Z
    .registers 2

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/google/android/exoplayer/chunk/InitializationChunk;->loadCanceled:Z

    return v0
.end method

.method public load()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 176
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/InitializationChunk;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget v2, p0, Lcom/google/android/exoplayer/chunk/InitializationChunk;->bytesLoaded:I

    invoke-static {v1, v2}, Lcom/google/android/exoplayer/util/Util;->getRemainderDataSpec(Lcom/google/android/exoplayer/upstream/DataSpec;I)Lcom/google/android/exoplayer/upstream/DataSpec;

    move-result-object v6

    .line 179
    .local v6, "loadDataSpec":Lcom/google/android/exoplayer/upstream/DataSpec;
    :try_start_8
    new-instance v0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/InitializationChunk;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    iget-wide v2, v6, Lcom/google/android/exoplayer/upstream/DataSpec;->absoluteStreamPosition:J

    iget-object v4, p0, Lcom/google/android/exoplayer/chunk/InitializationChunk;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    .line 180
    invoke-interface {v4, v6}, Lcom/google/android/exoplayer/upstream/DataSource;->open(Lcom/google/android/exoplayer/upstream/DataSpec;)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;JJ)V

    .line 181
    .local v0, "input":Lcom/google/android/exoplayer/extractor/ExtractorInput;
    iget v1, p0, Lcom/google/android/exoplayer/chunk/InitializationChunk;->bytesLoaded:I

    if-nez v1, :cond_20

    .line 183
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/InitializationChunk;->extractorWrapper:Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;

    invoke-virtual {v1, p0}, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;->init(Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;)V
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_4e

    .line 187
    :cond_20
    const/4 v7, 0x0

    .line 188
    .local v7, "result":I
    :goto_21
    if-nez v7, :cond_2e

    :try_start_23
    iget-boolean v1, p0, Lcom/google/android/exoplayer/chunk/InitializationChunk;->loadCanceled:Z

    if-nez v1, :cond_2e

    .line 189
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/InitializationChunk;->extractorWrapper:Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;->read(Lcom/google/android/exoplayer/extractor/ExtractorInput;)I
    :try_end_2c
    .catchall {:try_start_23 .. :try_end_2c} :catchall_40

    move-result v7

    goto :goto_21

    .line 192
    :cond_2e
    :try_start_2e
    invoke-interface {v0}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/InitializationChunk;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-wide v4, v1, Lcom/google/android/exoplayer/upstream/DataSpec;->absoluteStreamPosition:J

    sub-long/2addr v2, v4

    long-to-int v1, v2

    iput v1, p0, Lcom/google/android/exoplayer/chunk/InitializationChunk;->bytesLoaded:I
    :try_end_3a
    .catchall {:try_start_2e .. :try_end_3a} :catchall_4e

    .line 195
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/InitializationChunk;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    invoke-interface {v1}, Lcom/google/android/exoplayer/upstream/DataSource;->close()V

    .line 197
    return-void

    .line 192
    :catchall_40
    move-exception v1

    :try_start_41
    invoke-interface {v0}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/exoplayer/chunk/InitializationChunk;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-wide v4, v4, Lcom/google/android/exoplayer/upstream/DataSpec;->absoluteStreamPosition:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p0, Lcom/google/android/exoplayer/chunk/InitializationChunk;->bytesLoaded:I

    throw v1
    :try_end_4e
    .catchall {:try_start_41 .. :try_end_4e} :catchall_4e

    .line 195
    .end local v0    # "input":Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .end local v7    # "result":I
    :catchall_4e
    move-exception v1

    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/InitializationChunk;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    invoke-interface {v2}, Lcom/google/android/exoplayer/upstream/DataSource;->close()V

    throw v1
.end method

.method public sampleData(Lcom/google/android/exoplayer/extractor/ExtractorInput;IZ)I
    .registers 6
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .param p2, "length"    # I
    .param p3, "allowEndOfInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 148
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected sample data in initialization chunk"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V
    .registers 5
    .param p1, "data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p2, "length"    # I

    .prologue
    .line 153
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected sample data in initialization chunk"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sampleMetadata(JIII[B)V
    .registers 9
    .param p1, "timeUs"    # J
    .param p3, "flags"    # I
    .param p4, "size"    # I
    .param p5, "offset"    # I
    .param p6, "encryptionKey"    # [B

    .prologue
    .line 158
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected sample data in initialization chunk"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public seekMap(Lcom/google/android/exoplayer/extractor/SeekMap;)V
    .registers 2
    .param p1, "seekMap"    # Lcom/google/android/exoplayer/extractor/SeekMap;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/google/android/exoplayer/chunk/InitializationChunk;->seekMap:Lcom/google/android/exoplayer/extractor/SeekMap;

    .line 133
    return-void
.end method
