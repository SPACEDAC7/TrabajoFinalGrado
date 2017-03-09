.class public final Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;
.super Ljava/lang/Object;
.source "DashChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/dash/DashChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "RepresentationHolder"
.end annotation


# instance fields
.field public final extractorWrapper:Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;

.field public mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

.field public final mimeTypeIsRawText:Z

.field private periodDurationUs:J

.field private final periodStartTimeUs:J

.field public representation:Lcom/google/android/exoplayer/dash/mpd/Representation;

.field public segmentIndex:Lcom/google/android/exoplayer/dash/DashSegmentIndex;

.field private segmentNumShift:I


# direct methods
.method public constructor <init>(JJLcom/google/android/exoplayer/dash/mpd/Representation;)V
    .registers 9
    .param p1, "periodStartTimeUs"    # J
    .param p3, "periodDurationUs"    # J
    .param p5, "representation"    # Lcom/google/android/exoplayer/dash/mpd/Representation;

    .prologue
    .line 884
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 885
    iput-wide p1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->periodStartTimeUs:J

    .line 886
    iput-wide p3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->periodDurationUs:J

    .line 887
    iput-object p5, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplayer/dash/mpd/Representation;

    .line 888
    iget-object v1, p5, Lcom/google/android/exoplayer/dash/mpd/Representation;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v0, v1, Lcom/google/android/exoplayer/chunk/Format;->mimeType:Ljava/lang/String;

    .line 889
    .local v0, "mimeType":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/exoplayer/dash/DashChunkSource;->mimeTypeIsRawText(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->mimeTypeIsRawText:Z

    .line 890
    iget-boolean v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->mimeTypeIsRawText:Z

    if-eqz v1, :cond_21

    const/4 v1, 0x0

    .line 891
    :goto_18
    iput-object v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->extractorWrapper:Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;

    .line 892
    invoke-virtual {p5}, Lcom/google/android/exoplayer/dash/mpd/Representation;->getIndex()Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    .line 893
    return-void

    .line 890
    :cond_21
    new-instance v2, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;

    .line 891
    invoke-static {v0}, Lcom/google/android/exoplayer/dash/DashChunkSource;->mimeTypeIsWebm(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    new-instance v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;

    invoke-direct {v1}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;-><init>()V

    :goto_2e
    invoke-direct {v2, v1}, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;-><init>(Lcom/google/android/exoplayer/extractor/Extractor;)V

    move-object v1, v2

    goto :goto_18

    :cond_33
    new-instance v1, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;

    invoke-direct {v1}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;-><init>()V

    goto :goto_2e
.end method


# virtual methods
.method public getFirstAvailableSegmentNum()I
    .registers 3

    .prologue
    .line 958
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    invoke-interface {v0}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getFirstSegmentNum()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentNumShift:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getLastSegmentNum()I
    .registers 5

    .prologue
    .line 948
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    iget-wide v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->periodDurationUs:J

    invoke-interface {v0, v2, v3}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getLastSegmentNum(J)I

    move-result v0

    return v0
.end method

.method public getSegmentEndTimeUs(I)J
    .registers 8
    .param p1, "segmentNum"    # I

    .prologue
    .line 943
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->getSegmentStartTimeUs(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    iget v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentNumShift:I

    sub-int v3, p1, v3

    iget-wide v4, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->periodDurationUs:J

    .line 944
    invoke-interface {v2, v3, v4, v5}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getDurationUs(IJ)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 943
    return-wide v0
.end method

.method public getSegmentNum(J)I
    .registers 10
    .param p1, "positionUs"    # J

    .prologue
    .line 934
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    iget-wide v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->periodStartTimeUs:J

    sub-long v2, p1, v2

    iget-wide v4, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->periodDurationUs:J

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getSegmentNum(JJ)I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentNumShift:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getSegmentStartTimeUs(I)J
    .registers 6
    .param p1, "segmentNum"    # I

    .prologue
    .line 939
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    iget v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentNumShift:I

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getTimeUs(I)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->periodStartTimeUs:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getSegmentUrl(I)Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    .registers 4
    .param p1, "segmentNum"    # I

    .prologue
    .line 962
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    iget v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentNumShift:I

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getSegmentUrl(I)Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object v0

    return-object v0
.end method

.method public isBeyondLastSegment(I)Z
    .registers 5
    .param p1, "segmentNum"    # I

    .prologue
    const/4 v1, 0x0

    .line 952
    invoke-virtual {p0}, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->getLastSegmentNum()I

    move-result v0

    .line 953
    .local v0, "lastSegmentNum":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_9

    :cond_8
    :goto_8
    return v1

    :cond_9
    iget v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentNumShift:I

    add-int/2addr v2, v0

    if-le p1, v2, :cond_8

    const/4 v1, 0x1

    goto :goto_8
.end method

.method public updateRepresentation(JLcom/google/android/exoplayer/dash/mpd/Representation;)V
    .registers 19
    .param p1, "newPeriodDurationUs"    # J
    .param p3, "newRepresentation"    # Lcom/google/android/exoplayer/dash/mpd/Representation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/BehindLiveWindowException;
        }
    .end annotation

    .prologue
    .line 897
    iget-object v10, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplayer/dash/mpd/Representation;

    invoke-virtual {v10}, Lcom/google/android/exoplayer/dash/mpd/Representation;->getIndex()Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    move-result-object v6

    .line 898
    .local v6, "oldIndex":Lcom/google/android/exoplayer/dash/DashSegmentIndex;
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/exoplayer/dash/mpd/Representation;->getIndex()Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    move-result-object v2

    .line 900
    .local v2, "newIndex":Lcom/google/android/exoplayer/dash/DashSegmentIndex;
    move-wide/from16 v0, p1

    iput-wide v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->periodDurationUs:J

    .line 901
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplayer/dash/mpd/Representation;

    .line 902
    if-nez v6, :cond_15

    .line 931
    :cond_14
    :goto_14
    return-void

    .line 907
    :cond_15
    iput-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    .line 908
    invoke-interface {v6}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->isExplicit()Z

    move-result v10

    if-eqz v10, :cond_14

    .line 913
    iget-wide v10, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->periodDurationUs:J

    invoke-interface {v6, v10, v11}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getLastSegmentNum(J)I

    move-result v7

    .line 914
    .local v7, "oldIndexLastSegmentNum":I
    invoke-interface {v6, v7}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getTimeUs(I)J

    move-result-wide v10

    iget-wide v12, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->periodDurationUs:J

    .line 915
    invoke-interface {v6, v7, v12, v13}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getDurationUs(IJ)J

    move-result-wide v12

    add-long v8, v10, v12

    .line 916
    .local v8, "oldIndexEndTimeUs":J
    invoke-interface {v2}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getFirstSegmentNum()I

    move-result v3

    .line 917
    .local v3, "newIndexFirstSegmentNum":I
    invoke-interface {v2, v3}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getTimeUs(I)J

    move-result-wide v4

    .line 918
    .local v4, "newIndexStartTimeUs":J
    cmp-long v10, v8, v4

    if-nez v10, :cond_4a

    .line 920
    iget v10, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentNumShift:I

    iget-wide v12, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->periodDurationUs:J

    invoke-interface {v6, v12, v13}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getLastSegmentNum(J)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    sub-int/2addr v11, v3

    add-int/2addr v10, v11

    iput v10, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentNumShift:I

    goto :goto_14

    .line 922
    :cond_4a
    cmp-long v10, v8, v4

    if-gez v10, :cond_54

    .line 925
    new-instance v10, Lcom/google/android/exoplayer/BehindLiveWindowException;

    invoke-direct {v10}, Lcom/google/android/exoplayer/BehindLiveWindowException;-><init>()V

    throw v10

    .line 928
    :cond_54
    iget v10, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentNumShift:I

    iget-wide v12, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->periodDurationUs:J

    invoke-interface {v6, v4, v5, v12, v13}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getSegmentNum(JJ)I

    move-result v11

    sub-int/2addr v11, v3

    add-int/2addr v10, v11

    iput v10, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentNumShift:I

    goto :goto_14
.end method
