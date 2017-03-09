.class public final Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;
.super Lcom/google/android/exoplayer/chunk/BaseMediaChunk;
.source "SingleSampleMediaChunk.java"


# instance fields
.field private volatile bytesLoaded:I

.field private volatile loadCanceled:Z

.field private final sampleDrmInitData:Lcom/google/android/exoplayer/drm/DrmInitData;

.field private final sampleFormat:Lcom/google/android/exoplayer/MediaFormat;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;ILcom/google/android/exoplayer/chunk/Format;JJILcom/google/android/exoplayer/MediaFormat;Lcom/google/android/exoplayer/drm/DrmInitData;I)V
    .registers 28
    .param p1, "dataSource"    # Lcom/google/android/exoplayer/upstream/DataSource;
    .param p2, "dataSpec"    # Lcom/google/android/exoplayer/upstream/DataSpec;
    .param p3, "trigger"    # I
    .param p4, "format"    # Lcom/google/android/exoplayer/chunk/Format;
    .param p5, "startTimeUs"    # J
    .param p7, "endTimeUs"    # J
    .param p9, "chunkIndex"    # I
    .param p10, "sampleFormat"    # Lcom/google/android/exoplayer/MediaFormat;
    .param p11, "sampleDrmInitData"    # Lcom/google/android/exoplayer/drm/DrmInitData;
    .param p12, "parentId"    # I

    .prologue
    .line 53
    const/4 v13, 0x1

    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move/from16 v12, p9

    move/from16 v14, p12

    invoke-direct/range {v3 .. v14}, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;ILcom/google/android/exoplayer/chunk/Format;JJIZI)V

    .line 55
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->sampleFormat:Lcom/google/android/exoplayer/MediaFormat;

    .line 56
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->sampleDrmInitData:Lcom/google/android/exoplayer/drm/DrmInitData;

    .line 57
    return-void
.end method


# virtual methods
.method public bytesLoaded()J
    .registers 3

    .prologue
    .line 61
    iget v0, p0, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->bytesLoaded:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public cancelLoad()V
    .registers 2

    .prologue
    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->loadCanceled:Z

    .line 79
    return-void
.end method

.method public getDrmInitData()Lcom/google/android/exoplayer/drm/DrmInitData;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->sampleDrmInitData:Lcom/google/android/exoplayer/drm/DrmInitData;

    return-object v0
.end method

.method public getMediaFormat()Lcom/google/android/exoplayer/MediaFormat;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->sampleFormat:Lcom/google/android/exoplayer/MediaFormat;

    return-object v0
.end method

.method public isLoadCanceled()Z
    .registers 2

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->loadCanceled:Z

    return v0
.end method

.method public load()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget v2, p0, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->bytesLoaded:I

    invoke-static {v1, v2}, Lcom/google/android/exoplayer/util/Util;->getRemainderDataSpec(Lcom/google/android/exoplayer/upstream/DataSpec;I)Lcom/google/android/exoplayer/upstream/DataSpec;

    move-result-object v0

    .line 92
    .local v0, "loadDataSpec":Lcom/google/android/exoplayer/upstream/DataSpec;
    :try_start_8
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer/upstream/DataSource;->open(Lcom/google/android/exoplayer/upstream/DataSpec;)J

    .line 94
    const/4 v8, 0x0

    .line 95
    .local v8, "result":I
    :goto_e
    const/4 v1, -0x1

    if-eq v8, v1, :cond_25

    .line 96
    iget v1, p0, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->bytesLoaded:I

    add-int/2addr v1, v8

    iput v1, p0, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->bytesLoaded:I

    .line 97
    invoke-virtual {p0}, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->getOutput()Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    const v3, 0x7fffffff

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->sampleData(Lcom/google/android/exoplayer/upstream/DataSource;IZ)I

    move-result v8

    goto :goto_e

    .line 99
    :cond_25
    iget v5, p0, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->bytesLoaded:I

    .line 100
    .local v5, "sampleSize":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->getOutput()Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->startTimeUs:J

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->sampleMetadata(JIII[B)V
    :try_end_33
    .catchall {:try_start_8 .. :try_end_33} :catchall_39

    .line 102
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    invoke-interface {v1}, Lcom/google/android/exoplayer/upstream/DataSource;->close()V

    .line 104
    return-void

    .line 102
    .end local v5    # "sampleSize":I
    .end local v8    # "result":I
    :catchall_39
    move-exception v1

    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    invoke-interface {v2}, Lcom/google/android/exoplayer/upstream/DataSource;->close()V

    throw v1
.end method
