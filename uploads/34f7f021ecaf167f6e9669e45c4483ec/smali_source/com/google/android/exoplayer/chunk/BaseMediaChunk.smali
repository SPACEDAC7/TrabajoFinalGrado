.class public abstract Lcom/google/android/exoplayer/chunk/BaseMediaChunk;
.super Lcom/google/android/exoplayer/chunk/MediaChunk;
.source "BaseMediaChunk.java"


# instance fields
.field private firstSampleIndex:I

.field public final isMediaFormatFinal:Z

.field private output:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;ILcom/google/android/exoplayer/chunk/Format;JJIZI)V
    .registers 27
    .param p1, "dataSource"    # Lcom/google/android/exoplayer/upstream/DataSource;
    .param p2, "dataSpec"    # Lcom/google/android/exoplayer/upstream/DataSpec;
    .param p3, "trigger"    # I
    .param p4, "format"    # Lcom/google/android/exoplayer/chunk/Format;
    .param p5, "startTimeUs"    # J
    .param p7, "endTimeUs"    # J
    .param p9, "chunkIndex"    # I
    .param p10, "isMediaFormatFinal"    # Z
    .param p11, "parentId"    # I

    .prologue
    .line 57
    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move/from16 v12, p9

    move/from16 v13, p11

    invoke-direct/range {v3 .. v13}, Lcom/google/android/exoplayer/chunk/MediaChunk;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;ILcom/google/android/exoplayer/chunk/Format;JJII)V

    .line 58
    move/from16 v0, p10

    iput-boolean v0, p0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->isMediaFormatFinal:Z

    .line 59
    return-void
.end method


# virtual methods
.method public abstract getDrmInitData()Lcom/google/android/exoplayer/drm/DrmInitData;
.end method

.method public final getFirstSampleIndex()I
    .registers 2

    .prologue
    .line 77
    iget v0, p0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->firstSampleIndex:I

    return v0
.end method

.method public abstract getMediaFormat()Lcom/google/android/exoplayer/MediaFormat;
.end method

.method protected final getOutput()Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->output:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    return-object v0
.end method

.method public init(Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;)V
    .registers 3
    .param p1, "output"    # Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->output:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    .line 69
    invoke-virtual {p1}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->getWriteIndex()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->firstSampleIndex:I

    .line 70
    return-void
.end method
