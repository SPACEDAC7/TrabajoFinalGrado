.class public Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;
.super Lcom/google/android/exoplayer/chunk/BaseMediaChunk;
.source "ContainerMediaChunk.java"

# interfaces
.implements Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;


# instance fields
.field private final adaptiveMaxHeight:I

.field private final adaptiveMaxWidth:I

.field private volatile bytesLoaded:I

.field private drmInitData:Lcom/google/android/exoplayer/drm/DrmInitData;

.field private final extractorWrapper:Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;

.field private volatile loadCanceled:Z

.field private mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

.field private final sampleOffsetUs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;ILcom/google/android/exoplayer/chunk/Format;JJIJLcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;Lcom/google/android/exoplayer/MediaFormat;IILcom/google/android/exoplayer/drm/DrmInitData;ZI)V
    .registers 38
    .param p1, "dataSource"    # Lcom/google/android/exoplayer/upstream/DataSource;
    .param p2, "dataSpec"    # Lcom/google/android/exoplayer/upstream/DataSpec;
    .param p3, "trigger"    # I
    .param p4, "format"    # Lcom/google/android/exoplayer/chunk/Format;
    .param p5, "startTimeUs"    # J
    .param p7, "endTimeUs"    # J
    .param p9, "chunkIndex"    # I
    .param p10, "sampleOffsetUs"    # J
    .param p12, "extractorWrapper"    # Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;
    .param p13, "mediaFormat"    # Lcom/google/android/exoplayer/MediaFormat;
    .param p14, "adaptiveMaxWidth"    # I
    .param p15, "adaptiveMaxHeight"    # I
    .param p16, "drmInitData"    # Lcom/google/android/exoplayer/drm/DrmInitData;
    .param p17, "isMediaFormatFinal"    # Z
    .param p18, "parentId"    # I

    .prologue
    .line 75
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p4

    move-wide/from16 v12, p5

    move-wide/from16 v14, p7

    move/from16 v16, p9

    move/from16 v17, p17

    move/from16 v18, p18

    invoke-direct/range {v7 .. v18}, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;ILcom/google/android/exoplayer/chunk/Format;JJIZI)V

    .line 77
    move-object/from16 v0, p12

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->extractorWrapper:Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;

    .line 78
    move-wide/from16 v0, p10

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->sampleOffsetUs:J

    .line 79
    move/from16 v0, p14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->adaptiveMaxWidth:I

    .line 80
    move/from16 v0, p15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->adaptiveMaxHeight:I

    .line 81
    move-object/from16 v0, p13

    move-wide/from16 v1, p10

    move/from16 v3, p14

    move/from16 v4, p15

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->getAdjustedMediaFormat(Lcom/google/android/exoplayer/MediaFormat;JII)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    .line 83
    move-object/from16 v0, p16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->drmInitData:Lcom/google/android/exoplayer/drm/DrmInitData;

    .line 84
    return-void
.end method

.method private static getAdjustedMediaFormat(Lcom/google/android/exoplayer/MediaFormat;JII)Lcom/google/android/exoplayer/MediaFormat;
    .registers 10
    .param p0, "format"    # Lcom/google/android/exoplayer/MediaFormat;
    .param p1, "sampleOffsetUs"    # J
    .param p3, "adaptiveMaxWidth"    # I
    .param p4, "adaptiveMaxHeight"    # I

    .prologue
    const/4 v4, -0x1

    .line 178
    if-nez p0, :cond_5

    .line 179
    const/4 p0, 0x0

    .line 187
    .end local p0    # "format":Lcom/google/android/exoplayer/MediaFormat;
    :cond_4
    :goto_4
    return-object p0

    .line 181
    .restart local p0    # "format":Lcom/google/android/exoplayer/MediaFormat;
    :cond_5
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1d

    iget-wide v0, p0, Lcom/google/android/exoplayer/MediaFormat;->subsampleOffsetUs:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1d

    .line 182
    iget-wide v0, p0, Lcom/google/android/exoplayer/MediaFormat;->subsampleOffsetUs:J

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer/MediaFormat;->copyWithSubsampleOffsetUs(J)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object p0

    .line 184
    :cond_1d
    if-ne p3, v4, :cond_21

    if-eq p4, v4, :cond_4

    .line 185
    :cond_21
    invoke-virtual {p0, p3, p4}, Lcom/google/android/exoplayer/MediaFormat;->copyWithMaxVideoDimensions(II)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object p0

    goto :goto_4
.end method


# virtual methods
.method public final bytesLoaded()J
    .registers 3

    .prologue
    .line 88
    iget v0, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->bytesLoaded:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final cancelLoad()V
    .registers 2

    .prologue
    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->loadCanceled:Z

    .line 141
    return-void
.end method

.method public final drmInitData(Lcom/google/android/exoplayer/drm/DrmInitData;)V
    .registers 2
    .param p1, "drmInitData"    # Lcom/google/android/exoplayer/drm/DrmInitData;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->drmInitData:Lcom/google/android/exoplayer/drm/DrmInitData;

    .line 111
    return-void
.end method

.method public final format(Lcom/google/android/exoplayer/MediaFormat;)V
    .registers 6
    .param p1, "mediaFormat"    # Lcom/google/android/exoplayer/MediaFormat;

    .prologue
    .line 115
    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->sampleOffsetUs:J

    iget v2, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->adaptiveMaxWidth:I

    iget v3, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->adaptiveMaxHeight:I

    invoke-static {p1, v0, v1, v2, v3}, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->getAdjustedMediaFormat(Lcom/google/android/exoplayer/MediaFormat;JII)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    .line 117
    return-void
.end method

.method public final getDrmInitData()Lcom/google/android/exoplayer/drm/DrmInitData;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->drmInitData:Lcom/google/android/exoplayer/drm/DrmInitData;

    return-object v0
.end method

.method public final getMediaFormat()Lcom/google/android/exoplayer/MediaFormat;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    return-object v0
.end method

.method public final isLoadCanceled()Z
    .registers 2

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->loadCanceled:Z

    return v0
.end method

.method public final load()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 151
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget v2, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->bytesLoaded:I

    invoke-static {v1, v2}, Lcom/google/android/exoplayer/util/Util;->getRemainderDataSpec(Lcom/google/android/exoplayer/upstream/DataSpec;I)Lcom/google/android/exoplayer/upstream/DataSpec;

    move-result-object v6

    .line 154
    .local v6, "loadDataSpec":Lcom/google/android/exoplayer/upstream/DataSpec;
    :try_start_8
    new-instance v0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    iget-wide v2, v6, Lcom/google/android/exoplayer/upstream/DataSpec;->absoluteStreamPosition:J

    iget-object v4, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    .line 155
    invoke-interface {v4, v6}, Lcom/google/android/exoplayer/upstream/DataSource;->open(Lcom/google/android/exoplayer/upstream/DataSpec;)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;JJ)V

    .line 156
    .local v0, "input":Lcom/google/android/exoplayer/extractor/ExtractorInput;
    iget v1, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->bytesLoaded:I

    if-nez v1, :cond_20

    .line 158
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->extractorWrapper:Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;

    invoke-virtual {v1, p0}, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;->init(Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;)V
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_4e

    .line 162
    :cond_20
    const/4 v7, 0x0

    .line 163
    .local v7, "result":I
    :goto_21
    if-nez v7, :cond_2e

    :try_start_23
    iget-boolean v1, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->loadCanceled:Z

    if-nez v1, :cond_2e

    .line 164
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->extractorWrapper:Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;->read(Lcom/google/android/exoplayer/extractor/ExtractorInput;)I
    :try_end_2c
    .catchall {:try_start_23 .. :try_end_2c} :catchall_40

    move-result v7

    goto :goto_21

    .line 167
    :cond_2e
    :try_start_2e
    invoke-interface {v0}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-wide v4, v1, Lcom/google/android/exoplayer/upstream/DataSpec;->absoluteStreamPosition:J

    sub-long/2addr v2, v4

    long-to-int v1, v2

    iput v1, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->bytesLoaded:I
    :try_end_3a
    .catchall {:try_start_2e .. :try_end_3a} :catchall_4e

    .line 170
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    invoke-interface {v1}, Lcom/google/android/exoplayer/upstream/DataSource;->close()V

    .line 172
    return-void

    .line 167
    :catchall_40
    move-exception v1

    :try_start_41
    invoke-interface {v0}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-wide v4, v4, Lcom/google/android/exoplayer/upstream/DataSpec;->absoluteStreamPosition:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->bytesLoaded:I

    throw v1
    :try_end_4e
    .catchall {:try_start_41 .. :try_end_4e} :catchall_4e

    .line 170
    .end local v0    # "input":Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .end local v7    # "result":I
    :catchall_4e
    move-exception v1

    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    invoke-interface {v2}, Lcom/google/android/exoplayer/upstream/DataSource;->close()V

    throw v1
.end method

.method public final sampleData(Lcom/google/android/exoplayer/extractor/ExtractorInput;IZ)I
    .registers 5
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
    .line 122
    invoke-virtual {p0}, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->getOutput()Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->sampleData(Lcom/google/android/exoplayer/extractor/ExtractorInput;IZ)I

    move-result v0

    return v0
.end method

.method public final sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V
    .registers 4
    .param p1, "data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p2, "length"    # I

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->getOutput()Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 128
    return-void
.end method

.method public final sampleMetadata(JIII[B)V
    .registers 16
    .param p1, "timeUs"    # J
    .param p3, "flags"    # I
    .param p4, "size"    # I
    .param p5, "offset"    # I
    .param p6, "encryptionKey"    # [B

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->getOutput()Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->sampleOffsetUs:J

    add-long/2addr v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->sampleMetadata(JIII[B)V

    .line 134
    return-void
.end method

.method public final seekMap(Lcom/google/android/exoplayer/extractor/SeekMap;)V
    .registers 2
    .param p1, "seekMap"    # Lcom/google/android/exoplayer/extractor/SeekMap;

    .prologue
    .line 106
    return-void
.end method
