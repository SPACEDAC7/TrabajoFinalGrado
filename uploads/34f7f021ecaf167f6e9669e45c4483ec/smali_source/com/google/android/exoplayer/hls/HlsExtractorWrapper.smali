.class public final Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;
.super Ljava/lang/Object;
.source "HlsExtractorWrapper.java"

# interfaces
.implements Lcom/google/android/exoplayer/extractor/ExtractorOutput;


# instance fields
.field private final adaptiveMaxHeight:I

.field private final adaptiveMaxWidth:I

.field private allocator:Lcom/google/android/exoplayer/upstream/Allocator;

.field private final extractor:Lcom/google/android/exoplayer/extractor/Extractor;

.field public final format:Lcom/google/android/exoplayer/chunk/Format;

.field private prepared:Z

.field private sampleQueueFormats:[Lcom/google/android/exoplayer/MediaFormat;

.field private final sampleQueues:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;",
            ">;"
        }
    .end annotation
.end field

.field private final shouldSpliceIn:Z

.field private spliceConfigured:Z

.field public final startTimeUs:J

.field private volatile tracksBuilt:Z

.field public final trigger:I


# direct methods
.method public constructor <init>(ILcom/google/android/exoplayer/chunk/Format;JLcom/google/android/exoplayer/extractor/Extractor;ZII)V
    .registers 10
    .param p1, "trigger"    # I
    .param p2, "format"    # Lcom/google/android/exoplayer/chunk/Format;
    .param p3, "startTimeUs"    # J
    .param p5, "extractor"    # Lcom/google/android/exoplayer/extractor/Extractor;
    .param p6, "shouldSpliceIn"    # Z
    .param p7, "adaptiveMaxWidth"    # I
    .param p8, "adaptiveMaxHeight"    # I

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->trigger:I

    .line 61
    iput-object p2, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->format:Lcom/google/android/exoplayer/chunk/Format;

    .line 62
    iput-wide p3, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->startTimeUs:J

    .line 63
    iput-object p5, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->extractor:Lcom/google/android/exoplayer/extractor/Extractor;

    .line 64
    iput-boolean p6, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->shouldSpliceIn:Z

    .line 65
    iput p7, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->adaptiveMaxWidth:I

    .line 66
    iput p8, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->adaptiveMaxHeight:I

    .line 67
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    .line 68
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .prologue
    .line 110
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 111
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->clear()V

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 113
    :cond_17
    return-void
.end method

.method public final configureSpliceTo(Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;)V
    .registers 8
    .param p1, "nextExtractor"    # Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->isPrepared()Z

    move-result v5

    invoke-static {v5}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 147
    iget-boolean v5, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->spliceConfigured:Z

    if-nez v5, :cond_15

    iget-boolean v5, p1, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->shouldSpliceIn:Z

    if-eqz v5, :cond_15

    invoke-virtual {p1}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->isPrepared()Z

    move-result v5

    if-nez v5, :cond_16

    .line 160
    :cond_15
    :goto_15
    return-void

    .line 152
    :cond_16
    const/4 v3, 0x1

    .line 153
    .local v3, "spliceConfigured":Z
    invoke-virtual {p0}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->getTrackCount()I

    move-result v4

    .line 154
    .local v4, "trackCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1c
    if-ge v1, v4, :cond_36

    .line 155
    iget-object v5, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    .line 156
    .local v0, "currentSampleQueue":Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;
    iget-object v5, p1, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    .line 157
    .local v2, "nextSampleQueue":Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->configureSpliceTo(Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;)Z

    move-result v5

    and-int/2addr v3, v5

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 159
    .end local v0    # "currentSampleQueue":Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;
    .end local v2    # "nextSampleQueue":Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;
    :cond_36
    iput-boolean v3, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->spliceConfigured:Z

    goto :goto_15
.end method

.method public discardUntil(IJ)V
    .registers 6
    .param p1, "track"    # I
    .param p2, "timeUs"    # J

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->isPrepared()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 212
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->discardUntil(J)V

    .line 213
    return-void
.end method

.method public drmInitData(Lcom/google/android/exoplayer/drm/DrmInitData;)V
    .registers 2
    .param p1, "drmInit"    # Lcom/google/android/exoplayer/drm/DrmInitData;

    .prologue
    .line 274
    return-void
.end method

.method public endTracks()V
    .registers 2

    .prologue
    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->tracksBuilt:Z

    .line 264
    return-void
.end method

.method public getAdjustedEndTimeUs()J
    .registers 7

    .prologue
    .line 244
    const-wide/high16 v2, -0x8000000000000000L

    .line 245
    .local v2, "largestAdjustedPtsParsed":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 246
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    .line 247
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->getLargestParsedTimestampUs()J

    move-result-wide v4

    .line 246
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 249
    :cond_1e
    return-wide v2
.end method

.method public getLargestParsedTimestampUs()J
    .registers 7

    .prologue
    .line 121
    const-wide/high16 v2, -0x8000000000000000L

    .line 122
    .local v2, "largestParsedTimestampUs":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 123
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    .line 124
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->getLargestParsedTimestampUs()J

    move-result-wide v4

    .line 123
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 126
    :cond_1e
    return-wide v2
.end method

.method public getMediaFormat(I)Lcom/google/android/exoplayer/MediaFormat;
    .registers 3
    .param p1, "track"    # I

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->isPrepared()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 185
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->sampleQueueFormats:[Lcom/google/android/exoplayer/MediaFormat;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getSample(ILcom/google/android/exoplayer/SampleHolder;)Z
    .registers 4
    .param p1, "track"    # I
    .param p2, "holder"    # Lcom/google/android/exoplayer/SampleHolder;

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->isPrepared()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 199
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->getSample(Lcom/google/android/exoplayer/SampleHolder;)Z

    move-result v0

    return v0
.end method

.method public getTrackCount()I
    .registers 2

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->isPrepared()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 172
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public hasSamples(I)Z
    .registers 3
    .param p1, "track"    # I

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->isPrepared()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 226
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public init(Lcom/google/android/exoplayer/upstream/Allocator;)V
    .registers 3
    .param p1, "allocator"    # Lcom/google/android/exoplayer/upstream/Allocator;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->allocator:Lcom/google/android/exoplayer/upstream/Allocator;

    .line 77
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->extractor:Lcom/google/android/exoplayer/extractor/Extractor;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer/extractor/Extractor;->init(Lcom/google/android/exoplayer/extractor/ExtractorOutput;)V

    .line 78
    return-void
.end method

.method public isPrepared()Z
    .registers 6

    .prologue
    const/4 v4, -0x1

    .line 86
    iget-boolean v2, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->prepared:Z

    if-nez v2, :cond_63

    iget-boolean v2, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->tracksBuilt:Z

    if-eqz v2, :cond_63

    .line 87
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 88
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->hasFormat()Z

    move-result v2

    if-nez v2, :cond_22

    .line 89
    const/4 v2, 0x0

    .line 103
    .end local v1    # "i":I
    :goto_21
    return v2

    .line 87
    .restart local v1    # "i":I
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 92
    :cond_25
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->prepared:Z

    .line 93
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/exoplayer/MediaFormat;

    iput-object v2, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->sampleQueueFormats:[Lcom/google/android/exoplayer/MediaFormat;

    .line 94
    const/4 v1, 0x0

    :goto_33
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->sampleQueueFormats:[Lcom/google/android/exoplayer/MediaFormat;

    array-length v2, v2

    if-ge v1, v2, :cond_63

    .line 95
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->getFormat()Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    .line 96
    .local v0, "format":Lcom/google/android/exoplayer/MediaFormat;
    iget-object v2, v0, Lcom/google/android/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/exoplayer/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5c

    iget v2, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->adaptiveMaxWidth:I

    if-ne v2, v4, :cond_54

    iget v2, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->adaptiveMaxHeight:I

    if-eq v2, v4, :cond_5c

    .line 98
    :cond_54
    iget v2, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->adaptiveMaxWidth:I

    iget v3, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->adaptiveMaxHeight:I

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer/MediaFormat;->copyWithMaxVideoDimensions(II)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    .line 100
    :cond_5c
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->sampleQueueFormats:[Lcom/google/android/exoplayer/MediaFormat;

    aput-object v0, v2, v1

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 103
    .end local v0    # "format":Lcom/google/android/exoplayer/MediaFormat;
    .end local v1    # "i":I
    :cond_63
    iget-boolean v2, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->prepared:Z

    goto :goto_21
.end method

.method public read(Lcom/google/android/exoplayer/extractor/ExtractorInput;)I
    .registers 6
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 238
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->extractor:Lcom/google/android/exoplayer/extractor/Extractor;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Lcom/google/android/exoplayer/extractor/Extractor;->read(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/PositionHolder;)I

    move-result v0

    .line 239
    .local v0, "result":I
    if-eq v0, v1, :cond_e

    :goto_a
    invoke-static {v1}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 240
    return v0

    .line 239
    :cond_e
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public seekMap(Lcom/google/android/exoplayer/extractor/SeekMap;)V
    .registers 2
    .param p1, "seekMap"    # Lcom/google/android/exoplayer/extractor/SeekMap;

    .prologue
    .line 269
    return-void
.end method

.method public track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;
    .registers 4
    .param p1, "id"    # I

    .prologue
    .line 256
    new-instance v0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->allocator:Lcom/google/android/exoplayer/upstream/Allocator;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;-><init>(Lcom/google/android/exoplayer/upstream/Allocator;)V

    .line 257
    .local v0, "sampleQueue":Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 258
    return-object v0
.end method
