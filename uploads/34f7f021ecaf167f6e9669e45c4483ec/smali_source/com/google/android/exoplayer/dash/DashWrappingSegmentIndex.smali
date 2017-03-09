.class final Lcom/google/android/exoplayer/dash/DashWrappingSegmentIndex;
.super Ljava/lang/Object;
.source "DashWrappingSegmentIndex.java"

# interfaces
.implements Lcom/google/android/exoplayer/dash/DashSegmentIndex;


# instance fields
.field private final chunkIndex:Lcom/google/android/exoplayer/extractor/ChunkIndex;

.field private final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/extractor/ChunkIndex;Ljava/lang/String;)V
    .registers 3
    .param p1, "chunkIndex"    # Lcom/google/android/exoplayer/extractor/ChunkIndex;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/android/exoplayer/dash/DashWrappingSegmentIndex;->chunkIndex:Lcom/google/android/exoplayer/extractor/ChunkIndex;

    .line 36
    iput-object p2, p0, Lcom/google/android/exoplayer/dash/DashWrappingSegmentIndex;->uri:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public getDurationUs(IJ)J
    .registers 6
    .param p1, "segmentNum"    # I
    .param p2, "periodDurationUs"    # J

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashWrappingSegmentIndex;->chunkIndex:Lcom/google/android/exoplayer/extractor/ChunkIndex;

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/ChunkIndex;->durationsUs:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getFirstSegmentNum()I
    .registers 2

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public getLastSegmentNum(J)I
    .registers 4
    .param p1, "periodDurationUs"    # J

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashWrappingSegmentIndex;->chunkIndex:Lcom/google/android/exoplayer/extractor/ChunkIndex;

    iget v0, v0, Lcom/google/android/exoplayer/extractor/ChunkIndex;->length:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getSegmentNum(JJ)I
    .registers 6
    .param p1, "timeUs"    # J
    .param p3, "periodDurationUs"    # J

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashWrappingSegmentIndex;->chunkIndex:Lcom/google/android/exoplayer/extractor/ChunkIndex;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer/extractor/ChunkIndex;->getChunkIndex(J)I

    move-result v0

    return v0
.end method

.method public getSegmentUrl(I)Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    .registers 10
    .param p1, "segmentNum"    # I

    .prologue
    .line 61
    new-instance v1, Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashWrappingSegmentIndex;->uri:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashWrappingSegmentIndex;->chunkIndex:Lcom/google/android/exoplayer/extractor/ChunkIndex;

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/ChunkIndex;->offsets:[J

    aget-wide v4, v0, p1

    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashWrappingSegmentIndex;->chunkIndex:Lcom/google/android/exoplayer/extractor/ChunkIndex;

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/ChunkIndex;->sizes:[I

    aget v0, v0, p1

    int-to-long v6, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer/dash/mpd/RangedUri;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    return-object v1
.end method

.method public getTimeUs(I)J
    .registers 4
    .param p1, "segmentNum"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashWrappingSegmentIndex;->chunkIndex:Lcom/google/android/exoplayer/extractor/ChunkIndex;

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/ChunkIndex;->timesUs:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public isExplicit()Z
    .registers 2

    .prologue
    .line 71
    const/4 v0, 0x1

    return v0
.end method
