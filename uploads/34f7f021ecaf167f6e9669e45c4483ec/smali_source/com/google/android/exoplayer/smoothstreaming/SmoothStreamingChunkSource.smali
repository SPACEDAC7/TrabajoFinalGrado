.class public Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;
.super Ljava/lang/Object;
.source "SmoothStreamingChunkSource.java"

# interfaces
.implements Lcom/google/android/exoplayer/chunk/ChunkSource;
.implements Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingTrackSelector$Output;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;
    }
.end annotation


# static fields
.field private static final INITIALIZATION_VECTOR_SIZE:I = 0x8

.field private static final MINIMUM_MANIFEST_REFRESH_PERIOD_MS:I = 0x1388


# instance fields
.field private final adaptiveFormatEvaluator:Lcom/google/android/exoplayer/chunk/FormatEvaluator;

.field private currentManifest:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;

.field private currentManifestChunkOffset:I

.field private final dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

.field private final drmInitData:Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;

.field private enabledTrack:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

.field private final evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

.field private final extractorWrappers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private fatalError:Ljava/io/IOException;

.field private final live:Z

.field private final liveEdgeLatencyUs:J

.field private final manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer/util/ManifestFetcher",
            "<",
            "Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaFormats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/exoplayer/MediaFormat;",
            ">;"
        }
    .end annotation
.end field

.field private needManifestRefresh:Z

.field private prepareCalled:Z

.field private final trackEncryptionBoxes:[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

.field private final trackSelector:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingTrackSelector;

.field private final tracks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingTrackSelector;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;)V
    .registers 13
    .param p1, "manifest"    # Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;
    .param p2, "trackSelector"    # Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingTrackSelector;
    .param p3, "dataSource"    # Lcom/google/android/exoplayer/upstream/DataSource;
    .param p4, "adaptiveFormatEvaluator"    # Lcom/google/android/exoplayer/chunk/FormatEvaluator;

    .prologue
    .line 123
    const/4 v1, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;-><init>(Lcom/google/android/exoplayer/util/ManifestFetcher;Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingTrackSelector;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;J)V

    .line 124
    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer/util/ManifestFetcher;Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingTrackSelector;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;J)V
    .registers 16
    .param p2, "initialManifest"    # Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;
    .param p3, "trackSelector"    # Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingTrackSelector;
    .param p4, "dataSource"    # Lcom/google/android/exoplayer/upstream/DataSource;
    .param p5, "adaptiveFormatEvaluator"    # Lcom/google/android/exoplayer/chunk/FormatEvaluator;
    .param p6, "liveEdgeLatencyMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ManifestFetcher",
            "<",
            "Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;",
            ">;",
            "Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;",
            "Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingTrackSelector;",
            "Lcom/google/android/exoplayer/upstream/DataSource;",
            "Lcom/google/android/exoplayer/chunk/FormatEvaluator;",
            "J)V"
        }
    .end annotation

    .prologue
    .local p1, "manifestFetcher":Lcom/google/android/exoplayer/util/ManifestFetcher;, "Lcom/google/android/exoplayer/util/ManifestFetcher<Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;>;"
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    .line 130
    iput-object p2, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifest:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;

    .line 131
    iput-object p3, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->trackSelector:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingTrackSelector;

    .line 132
    iput-object p4, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    .line 133
    iput-object p5, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->adaptiveFormatEvaluator:Lcom/google/android/exoplayer/chunk/FormatEvaluator;

    .line 134
    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p6

    iput-wide v2, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->liveEdgeLatencyUs:J

    .line 135
    new-instance v2, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    invoke-direct {v2}, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;-><init>()V

    iput-object v2, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    .line 136
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->tracks:Ljava/util/ArrayList;

    .line 137
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->extractorWrappers:Landroid/util/SparseArray;

    .line 138
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->mediaFormats:Landroid/util/SparseArray;

    .line 139
    iget-boolean v2, p2, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;->isLive:Z

    iput-boolean v2, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->live:Z

    .line 141
    iget-object v1, p2, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;->protectionElement:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$ProtectionElement;

    .line 142
    .local v1, "protectionElement":Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$ProtectionElement;
    if-eqz v1, :cond_67

    .line 143
    iget-object v2, v1, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$ProtectionElement;->data:[B

    invoke-static {v2}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->getProtectionElementKeyId([B)[B

    move-result-object v0

    .line 144
    .local v0, "keyId":[B
    new-array v2, v6, [Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    iput-object v2, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->trackEncryptionBoxes:[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    .line 145
    iget-object v2, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->trackEncryptionBoxes:[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    const/4 v3, 0x0

    new-instance v4, Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    const/16 v5, 0x8

    invoke-direct {v4, v6, v5, v0}, Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;-><init>(ZI[B)V

    aput-object v4, v2, v3

    .line 146
    new-instance v2, Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;

    invoke-direct {v2}, Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;-><init>()V

    iput-object v2, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->drmInitData:Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;

    .line 147
    iget-object v2, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->drmInitData:Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;

    iget-object v3, v1, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$ProtectionElement;->uuid:Ljava/util/UUID;

    new-instance v4, Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;

    const-string/jumbo v5, "video/mp4"

    iget-object v6, v1, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$ProtectionElement;->data:[B

    invoke-direct {v4, v5, v6}, Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;->put(Ljava/util/UUID;Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;)V

    .line 153
    .end local v0    # "keyId":[B
    :goto_66
    return-void

    .line 150
    :cond_67
    iput-object v4, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->trackEncryptionBoxes:[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    .line 151
    iput-object v4, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->drmInitData:Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;

    goto :goto_66
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/util/ManifestFetcher;Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingTrackSelector;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;J)V
    .registers 16
    .param p2, "trackSelector"    # Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingTrackSelector;
    .param p3, "dataSource"    # Lcom/google/android/exoplayer/upstream/DataSource;
    .param p4, "adaptiveFormatEvaluator"    # Lcom/google/android/exoplayer/chunk/FormatEvaluator;
    .param p5, "liveEdgeLatencyMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ManifestFetcher",
            "<",
            "Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;",
            ">;",
            "Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingTrackSelector;",
            "Lcom/google/android/exoplayer/upstream/DataSource;",
            "Lcom/google/android/exoplayer/chunk/FormatEvaluator;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "manifestFetcher":Lcom/google/android/exoplayer/util/ManifestFetcher;, "Lcom/google/android/exoplayer/util/ManifestFetcher<Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;>;"
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ManifestFetcher;->getManifest()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;-><init>(Lcom/google/android/exoplayer/util/ManifestFetcher;Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingTrackSelector;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;J)V

    .line 110
    return-void
.end method

.method private static getLiveSeekPosition(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;J)J
    .registers 14
    .param p0, "manifest"    # Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;
    .param p1, "liveEdgeLatencyUs"    # J

    .prologue
    .line 451
    const-wide/high16 v4, -0x8000000000000000L

    .line 452
    .local v4, "liveEdgeTimestampUs":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget-object v6, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;->streamElements:[Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;

    array-length v6, v6

    if-ge v2, v6, :cond_29

    .line 453
    iget-object v6, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;->streamElements:[Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;

    aget-object v3, v6, v2

    .line 454
    .local v3, "streamElement":Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;
    iget v6, v3, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkCount:I

    if-lez v6, :cond_26

    .line 455
    iget v6, v3, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkCount:I

    add-int/lit8 v6, v6, -0x1

    .line 456
    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->getStartTimeUs(I)J

    move-result-wide v6

    iget v8, v3, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkCount:I

    add-int/lit8 v8, v8, -0x1

    .line 457
    invoke-virtual {v3, v8}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->getChunkDurationUs(I)J

    move-result-wide v8

    add-long v0, v6, v8

    .line 458
    .local v0, "elementLiveEdgeTimestampUs":J
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 452
    .end local v0    # "elementLiveEdgeTimestampUs":J
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 461
    .end local v3    # "streamElement":Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;
    :cond_29
    sub-long v6, v4, p1

    return-wide v6
.end method

.method private static getManifestTrackIndex(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;Lcom/google/android/exoplayer/chunk/Format;)I
    .registers 7
    .param p0, "element"    # Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;
    .param p1, "format"    # Lcom/google/android/exoplayer/chunk/Format;

    .prologue
    .line 465
    iget-object v1, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->tracks:[Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;

    .line 466
    .local v1, "tracks":[Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    array-length v2, v1

    if-ge v0, v2, :cond_14

    .line 467
    aget-object v2, v1, v0

    iget-object v2, v2, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;->format:Lcom/google/android/exoplayer/chunk/Format;

    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer/chunk/Format;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 468
    return v0

    .line 466
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 472
    :cond_14
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid format: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static getManifestTrackKey(II)I
    .registers 3
    .param p0, "elementIndex"    # I
    .param p1, "trackIndex"    # I

    .prologue
    const/high16 v0, 0x10000

    .line 489
    if-gt p0, v0, :cond_e

    if-gt p1, v0, :cond_e

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 490
    shl-int/lit8 v0, p0, 0x10

    or-int/2addr v0, p1

    return v0

    .line 489
    :cond_e
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static getProtectionElementKeyId([B)[B
    .registers 9
    .param p0, "initData"    # [B

    .prologue
    const/4 v7, 0x0

    .line 494
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 495
    .local v2, "initDataStringBuilder":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    array-length v5, p0

    if-ge v0, v5, :cond_13

    .line 496
    aget-byte v5, p0, v0

    int-to-char v5, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 495
    add-int/lit8 v0, v0, 0x2

    goto :goto_7

    .line 498
    :cond_13
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 499
    .local v1, "initDataString":Ljava/lang/String;
    const-string v5, "<KID>"

    .line 500
    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x5

    const-string v6, "</KID>"

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 499
    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 501
    .local v4, "keyIdString":Ljava/lang/String;
    invoke-static {v4, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 502
    .local v3, "keyId":[B
    const/4 v5, 0x3

    invoke-static {v3, v7, v5}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->swap([BII)V

    .line 503
    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-static {v3, v5, v6}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->swap([BII)V

    .line 504
    const/4 v5, 0x4

    const/4 v6, 0x5

    invoke-static {v3, v5, v6}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->swap([BII)V

    .line 505
    const/4 v5, 0x6

    const/4 v6, 0x7

    invoke-static {v3, v5, v6}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->swap([BII)V

    .line 506
    return-object v3
.end method

.method private initManifestTrack(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;II)Lcom/google/android/exoplayer/MediaFormat;
    .registers 35
    .param p1, "manifest"    # Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;
    .param p2, "elementIndex"    # I
    .param p3, "trackIndex"    # I

    .prologue
    .line 386
    invoke-static/range {p2 .. p3}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->getManifestTrackKey(II)I

    move-result v28

    .line 387
    .local v28, "manifestTrackKey":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->mediaFormats:Landroid/util/SparseArray;

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/google/android/exoplayer/MediaFormat;

    .line 388
    .local v20, "mediaFormat":Lcom/google/android/exoplayer/MediaFormat;
    if-eqz v20, :cond_15

    move-object/from16 v29, v20

    .line 438
    .end local v20    # "mediaFormat":Lcom/google/android/exoplayer/MediaFormat;
    .local v29, "mediaFormat":Lcom/google/android/exoplayer/MediaFormat;
    :goto_14
    return-object v29

    .line 394
    .end local v29    # "mediaFormat":Lcom/google/android/exoplayer/MediaFormat;
    .restart local v20    # "mediaFormat":Lcom/google/android/exoplayer/MediaFormat;
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->live:Z

    if-eqz v2, :cond_5b

    const-wide/16 v6, -0x1

    .line 395
    .local v6, "durationUs":J
    :goto_1d
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;->streamElements:[Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;

    aget-object v26, v2, p2

    .line 396
    .local v26, "element":Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->tracks:[Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;

    aget-object v2, v2, p3

    iget-object v0, v2, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;->format:Lcom/google/android/exoplayer/chunk/Format;

    move-object/from16 v27, v0

    .line 397
    .local v27, "format":Lcom/google/android/exoplayer/chunk/Format;
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->tracks:[Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;

    aget-object v2, v2, p3

    iget-object v0, v2, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;->csd:[[B

    move-object/from16 v25, v0

    .line 399
    .local v25, "csdArray":[[B
    move-object/from16 v0, v26

    iget v2, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->type:I

    packed-switch v2, :pswitch_data_118

    .line 424
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    iget v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 394
    .end local v6    # "durationUs":J
    .end local v25    # "csdArray":[[B
    .end local v26    # "element":Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;
    .end local v27    # "format":Lcom/google/android/exoplayer/chunk/Format;
    :cond_5b
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;->durationUs:J

    goto :goto_1d

    .line 401
    .restart local v6    # "durationUs":J
    .restart local v25    # "csdArray":[[B
    .restart local v26    # "element":Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;
    .restart local v27    # "format":Lcom/google/android/exoplayer/chunk/Format;
    :pswitch_60
    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/google/android/exoplayer/chunk/Format;->id:Ljava/lang/String;

    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/google/android/exoplayer/chunk/Format;->mimeType:Ljava/lang/String;

    move-object/from16 v0, v27

    iget v4, v0, Lcom/google/android/exoplayer/chunk/Format;->bitrate:I

    const/4 v5, -0x1

    move-object/from16 v0, v27

    iget v8, v0, Lcom/google/android/exoplayer/chunk/Format;->width:I

    move-object/from16 v0, v27

    iget v9, v0, Lcom/google/android/exoplayer/chunk/Format;->height:I

    .line 402
    invoke-static/range {v25 .. v25}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 401
    invoke-static/range {v2 .. v10}, Lcom/google/android/exoplayer/MediaFormat;->createVideoFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v20

    .line 403
    sget v13, Lcom/google/android/exoplayer/extractor/mp4/Track;->TYPE_vide:I

    .line 427
    .local v13, "mp4TrackType":I
    :goto_7f
    new-instance v11, Lcom/google/android/exoplayer/extractor/mp4/Track;

    move-object/from16 v0, v26

    iget-wide v14, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->timescale:J

    const-wide/16 v16, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->trackEncryptionBoxes:[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    move-object/from16 v21, v0

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Track;->TYPE_vide:I

    if-ne v13, v2, :cond_114

    const/16 v22, 0x4

    :goto_93
    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v12, p3

    move-wide/from16 v18, v6

    invoke-direct/range {v11 .. v24}, Lcom/google/android/exoplayer/extractor/mp4/Track;-><init>(IIJJJLcom/google/android/exoplayer/MediaFormat;[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;I[J[J)V

    .line 431
    .local v11, "mp4Track":Lcom/google/android/exoplayer/extractor/mp4/Track;
    new-instance v30, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;

    const/4 v2, 0x3

    move-object/from16 v0, v30

    invoke-direct {v0, v2, v11}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;-><init>(ILcom/google/android/exoplayer/extractor/mp4/Track;)V

    .line 436
    .local v30, "mp4Extractor":Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->mediaFormats:Landroid/util/SparseArray;

    move/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 437
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->extractorWrappers:Landroid/util/SparseArray;

    new-instance v3, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;

    move-object/from16 v0, v30

    invoke-direct {v3, v0}, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;-><init>(Lcom/google/android/exoplayer/extractor/Extractor;)V

    move/from16 v0, v28

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v29, v20

    .line 438
    .end local v20    # "mediaFormat":Lcom/google/android/exoplayer/MediaFormat;
    .restart local v29    # "mediaFormat":Lcom/google/android/exoplayer/MediaFormat;
    goto/16 :goto_14

    .line 407
    .end local v11    # "mp4Track":Lcom/google/android/exoplayer/extractor/mp4/Track;
    .end local v13    # "mp4TrackType":I
    .end local v29    # "mediaFormat":Lcom/google/android/exoplayer/MediaFormat;
    .end local v30    # "mp4Extractor":Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;
    .restart local v20    # "mediaFormat":Lcom/google/android/exoplayer/MediaFormat;
    :pswitch_c5
    if-eqz v25, :cond_eb

    .line 408
    invoke-static/range {v25 .. v25}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 413
    .local v10, "csd":Ljava/util/List;, "Ljava/util/List<[B>;"
    :goto_cb
    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/google/android/exoplayer/chunk/Format;->id:Ljava/lang/String;

    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/google/android/exoplayer/chunk/Format;->mimeType:Ljava/lang/String;

    move-object/from16 v0, v27

    iget v4, v0, Lcom/google/android/exoplayer/chunk/Format;->bitrate:I

    const/4 v5, -0x1

    move-object/from16 v0, v27

    iget v8, v0, Lcom/google/android/exoplayer/chunk/Format;->audioChannels:I

    move-object/from16 v0, v27

    iget v9, v0, Lcom/google/android/exoplayer/chunk/Format;->audioSamplingRate:I

    move-object/from16 v0, v27

    iget-object v11, v0, Lcom/google/android/exoplayer/chunk/Format;->language:Ljava/lang/String;

    invoke-static/range {v2 .. v11}, Lcom/google/android/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v20

    .line 416
    sget v13, Lcom/google/android/exoplayer/extractor/mp4/Track;->TYPE_soun:I

    .line 417
    .restart local v13    # "mp4TrackType":I
    goto :goto_7f

    .line 410
    .end local v10    # "csd":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v13    # "mp4TrackType":I
    :cond_eb
    move-object/from16 v0, v27

    iget v2, v0, Lcom/google/android/exoplayer/chunk/Format;->audioSamplingRate:I

    move-object/from16 v0, v27

    iget v3, v0, Lcom/google/android/exoplayer/chunk/Format;->audioChannels:I

    invoke-static {v2, v3}, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->buildAacAudioSpecificConfig(II)[B

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .restart local v10    # "csd":Ljava/util/List;, "Ljava/util/List<[B>;"
    goto :goto_cb

    .line 419
    .end local v10    # "csd":Ljava/util/List;, "Ljava/util/List<[B>;"
    :pswitch_fc
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/google/android/exoplayer/chunk/Format;->id:Ljava/lang/String;

    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/google/android/exoplayer/chunk/Format;->mimeType:Ljava/lang/String;

    move-object/from16 v0, v27

    iget v5, v0, Lcom/google/android/exoplayer/chunk/Format;->bitrate:I

    move-object/from16 v0, v27

    iget-object v8, v0, Lcom/google/android/exoplayer/chunk/Format;->language:Ljava/lang/String;

    invoke-static/range {v3 .. v8}, Lcom/google/android/exoplayer/MediaFormat;->createTextFormat(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v20

    .line 421
    sget v13, Lcom/google/android/exoplayer/extractor/mp4/Track;->TYPE_text:I

    .line 422
    .restart local v13    # "mp4TrackType":I
    goto/16 :goto_7f

    .line 427
    :cond_114
    const/16 v22, -0x1

    goto/16 :goto_93

    .line 399
    :pswitch_data_118
    .packed-switch 0x0
        :pswitch_c5
        :pswitch_60
        :pswitch_fc
    .end packed-switch
.end method

.method private static newMediaChunk(Lcom/google/android/exoplayer/chunk/Format;Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;Lcom/google/android/exoplayer/drm/DrmInitData;Lcom/google/android/exoplayer/upstream/DataSource;IJJILcom/google/android/exoplayer/MediaFormat;II)Lcom/google/android/exoplayer/chunk/MediaChunk;
    .registers 40
    .param p0, "formatInfo"    # Lcom/google/android/exoplayer/chunk/Format;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "cacheKey"    # Ljava/lang/String;
    .param p3, "extractorWrapper"    # Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;
    .param p4, "drmInitData"    # Lcom/google/android/exoplayer/drm/DrmInitData;
    .param p5, "dataSource"    # Lcom/google/android/exoplayer/upstream/DataSource;
    .param p6, "chunkIndex"    # I
    .param p7, "chunkStartTimeUs"    # J
    .param p9, "chunkEndTimeUs"    # J
    .param p11, "trigger"    # I
    .param p12, "mediaFormat"    # Lcom/google/android/exoplayer/MediaFormat;
    .param p13, "adaptiveMaxWidth"    # I
    .param p14, "adaptiveMaxHeight"    # I

    .prologue
    .line 479
    const-wide/16 v2, 0x0

    .line 480
    .local v2, "offset":J
    new-instance v0, Lcom/google/android/exoplayer/upstream/DataSpec;

    const-wide/16 v4, -0x1

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 483
    .local v0, "dataSpec":Lcom/google/android/exoplayer/upstream/DataSpec;
    new-instance v5, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;

    const/16 v22, 0x1

    const/16 v23, -0x1

    move-object/from16 v6, p5

    move-object v7, v0

    move/from16 v8, p11

    move-object/from16 v9, p0

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    move/from16 v14, p6

    move-wide/from16 v15, p7

    move-object/from16 v17, p3

    move-object/from16 v18, p12

    move/from16 v19, p13

    move/from16 v20, p14

    move-object/from16 v21, p4

    invoke-direct/range {v5 .. v23}, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;ILcom/google/android/exoplayer/chunk/Format;JJIJLcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;Lcom/google/android/exoplayer/MediaFormat;IILcom/google/android/exoplayer/drm/DrmInitData;ZI)V

    return-object v5
.end method

.method private static swap([BII)V
    .registers 5
    .param p0, "data"    # [B
    .param p1, "firstPosition"    # I
    .param p2, "secondPosition"    # I

    .prologue
    .line 510
    aget-byte v0, p0, p1

    .line 511
    .local v0, "temp":B
    aget-byte v1, p0, p2

    aput-byte v1, p0, p1

    .line 512
    aput-byte v0, p0, p2

    .line 513
    return-void
.end method


# virtual methods
.method public adaptiveTrack(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;I[I)V
    .registers 16
    .param p1, "manifest"    # Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;
    .param p2, "element"    # I
    .param p3, "trackIndices"    # [I

    .prologue
    .line 351
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->adaptiveFormatEvaluator:Lcom/google/android/exoplayer/chunk/FormatEvaluator;

    if-nez v0, :cond_5

    .line 373
    :goto_4
    return-void

    .line 355
    :cond_5
    const/4 v8, 0x0

    .line 356
    .local v8, "maxHeightMediaFormat":Lcom/google/android/exoplayer/MediaFormat;
    iget-object v0, p1, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;->streamElements:[Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;

    aget-object v10, v0, p2

    .line 357
    .local v10, "streamElement":Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;
    const/4 v4, -0x1

    .line 358
    .local v4, "maxWidth":I
    const/4 v5, -0x1

    .line 359
    .local v5, "maxHeight":I
    array-length v0, p3

    new-array v3, v0, [Lcom/google/android/exoplayer/chunk/Format;

    .line 360
    .local v3, "formats":[Lcom/google/android/exoplayer/chunk/Format;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_10
    array-length v0, v3

    if-ge v6, v0, :cond_37

    .line 361
    aget v7, p3, v6

    .line 362
    .local v7, "manifestTrackIndex":I
    iget-object v0, v10, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->tracks:[Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;->format:Lcom/google/android/exoplayer/chunk/Format;

    aput-object v0, v3, v6

    .line 363
    invoke-direct {p0, p1, p2, v7}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->initManifestTrack(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;II)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v9

    .line 364
    .local v9, "mediaFormat":Lcom/google/android/exoplayer/MediaFormat;
    if-eqz v8, :cond_27

    iget v0, v9, Lcom/google/android/exoplayer/MediaFormat;->height:I

    if-le v0, v5, :cond_28

    .line 365
    :cond_27
    move-object v8, v9

    .line 367
    :cond_28
    iget v0, v9, Lcom/google/android/exoplayer/MediaFormat;->width:I

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 368
    iget v0, v9, Lcom/google/android/exoplayer/MediaFormat;->height:I

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 360
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    .line 370
    .end local v7    # "manifestTrackIndex":I
    .end local v9    # "mediaFormat":Lcom/google/android/exoplayer/MediaFormat;
    :cond_37
    new-instance v0, Lcom/google/android/exoplayer/chunk/Format$DecreasingBandwidthComparator;

    invoke-direct {v0}, Lcom/google/android/exoplayer/chunk/Format$DecreasingBandwidthComparator;-><init>()V

    invoke-static {v3, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 371
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lcom/google/android/exoplayer/MediaFormat;->copyAsAdaptive(Ljava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v1

    .line 372
    .local v1, "adaptiveMediaFormat":Lcom/google/android/exoplayer/MediaFormat;
    iget-object v11, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->tracks:Ljava/util/ArrayList;

    new-instance v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;-><init>(Lcom/google/android/exoplayer/MediaFormat;I[Lcom/google/android/exoplayer/chunk/Format;II)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method public continueBuffering(J)V
    .registers 17
    .param p1, "playbackPositionUs"    # J

    .prologue
    .line 202
    iget-object v8, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifest:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;

    iget-boolean v8, v8, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;->isLive:Z

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v8, :cond_f

    .line 234
    :cond_e
    :goto_e
    return-void

    .line 206
    :cond_f
    iget-object v8, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-virtual {v8}, Lcom/google/android/exoplayer/util/ManifestFetcher;->getManifest()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;

    .line 207
    .local v5, "newManifest":Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;
    iget-object v8, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifest:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;

    if-eq v8, v5, :cond_45

    if-eqz v5, :cond_45

    .line 208
    iget-object v8, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifest:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;

    iget-object v8, v8, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;->streamElements:[Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;

    iget-object v9, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->enabledTrack:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

    # getter for: Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->elementIndex:I
    invoke-static {v9}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->access$000(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;)I

    move-result v9

    aget-object v0, v8, v9

    .line 209
    .local v0, "currentElement":Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;
    iget v1, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkCount:I

    .line 210
    .local v1, "currentElementChunkCount":I
    iget-object v8, v5, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;->streamElements:[Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;

    iget-object v9, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->enabledTrack:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

    # getter for: Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->elementIndex:I
    invoke-static {v9}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->access$000(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;)I

    move-result v9

    aget-object v4, v8, v9

    .line 211
    .local v4, "newElement":Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;
    if-eqz v1, :cond_3b

    iget v8, v4, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkCount:I

    if-nez v8, :cond_60

    .line 213
    :cond_3b
    iget v8, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifestChunkOffset:I

    add-int/2addr v8, v1

    iput v8, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifestChunkOffset:I

    .line 226
    :goto_40
    iput-object v5, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifest:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;

    .line 227
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->needManifestRefresh:Z

    .line 230
    .end local v0    # "currentElement":Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;
    .end local v1    # "currentElementChunkCount":I
    .end local v4    # "newElement":Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;
    :cond_45
    iget-boolean v8, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->needManifestRefresh:Z

    if-eqz v8, :cond_e

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-object v10, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    .line 231
    invoke-virtual {v10}, Lcom/google/android/exoplayer/util/ManifestFetcher;->getManifestLoadStartTimestamp()J

    move-result-wide v10

    const-wide/16 v12, 0x1388

    add-long/2addr v10, v12

    cmp-long v8, v8, v10

    if-lez v8, :cond_e

    .line 232
    iget-object v8, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-virtual {v8}, Lcom/google/android/exoplayer/util/ManifestFetcher;->requestRefresh()V

    goto :goto_e

    .line 215
    .restart local v0    # "currentElement":Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;
    .restart local v1    # "currentElementChunkCount":I
    .restart local v4    # "newElement":Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;
    :cond_60
    add-int/lit8 v8, v1, -0x1

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->getStartTimeUs(I)J

    move-result-wide v8

    add-int/lit8 v10, v1, -0x1

    .line 216
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->getChunkDurationUs(I)J

    move-result-wide v10

    add-long v2, v8, v10

    .line 217
    .local v2, "currentElementEndTimeUs":J
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->getStartTimeUs(I)J

    move-result-wide v6

    .line 218
    .local v6, "newElementStartTimeUs":J
    cmp-long v8, v2, v6

    if-gtz v8, :cond_7d

    .line 220
    iget v8, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifestChunkOffset:I

    add-int/2addr v8, v1

    iput v8, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifestChunkOffset:I

    goto :goto_40

    .line 223
    :cond_7d
    iget v8, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifestChunkOffset:I

    invoke-virtual {v0, v6, v7}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->getChunkIndex(J)I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifestChunkOffset:I

    goto :goto_40
.end method

.method public disable(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/exoplayer/chunk/MediaChunk;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<+Lcom/google/android/exoplayer/chunk/MediaChunk;>;"
    const/4 v1, 0x0

    .line 337
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->enabledTrack:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->isAdaptive()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 338
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->adaptiveFormatEvaluator:Lcom/google/android/exoplayer/chunk/FormatEvaluator;

    invoke-interface {v0}, Lcom/google/android/exoplayer/chunk/FormatEvaluator;->disable()V

    .line 340
    :cond_e
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    if-eqz v0, :cond_17

    .line 341
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->disable()V

    .line 343
    :cond_17
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    iput-object v1, v0, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->format:Lcom/google/android/exoplayer/chunk/Format;

    .line 344
    iput-object v1, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->fatalError:Ljava/io/IOException;

    .line 345
    return-void
.end method

.method public enable(I)V
    .registers 3
    .param p1, "track"    # I

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

    iput-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->enabledTrack:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

    .line 192
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->enabledTrack:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->isAdaptive()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 193
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->adaptiveFormatEvaluator:Lcom/google/android/exoplayer/chunk/FormatEvaluator;

    invoke-interface {v0}, Lcom/google/android/exoplayer/chunk/FormatEvaluator;->enable()V

    .line 195
    :cond_17
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    if-eqz v0, :cond_20

    .line 196
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->enable()V

    .line 198
    :cond_20
    return-void
.end method

.method public fixedTrack(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;II)V
    .registers 8
    .param p1, "manifest"    # Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;
    .param p2, "element"    # I
    .param p3, "trackIndex"    # I

    .prologue
    .line 377
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->initManifestTrack(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;II)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v1

    .line 378
    .local v1, "mediaFormat":Lcom/google/android/exoplayer/MediaFormat;
    iget-object v2, p1, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;->streamElements:[Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;

    aget-object v2, v2, p2

    iget-object v2, v2, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->tracks:[Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;

    aget-object v2, v2, p3

    iget-object v0, v2, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;->format:Lcom/google/android/exoplayer/chunk/Format;

    .line 379
    .local v0, "format":Lcom/google/android/exoplayer/chunk/Format;
    iget-object v2, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->tracks:Ljava/util/ArrayList;

    new-instance v3, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

    invoke-direct {v3, v1, p2, v0}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;-><init>(Lcom/google/android/exoplayer/MediaFormat;ILcom/google/android/exoplayer/chunk/Format;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    return-void
.end method

.method public final getChunkOperation(Ljava/util/List;JLcom/google/android/exoplayer/chunk/ChunkOperationHolder;)V
    .registers 33
    .param p2, "playbackPositionUs"    # J
    .param p4, "out"    # Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/exoplayer/chunk/MediaChunk;",
            ">;J",
            "Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 239
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<+Lcom/google/android/exoplayer/chunk/MediaChunk;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v4, :cond_c

    .line 240
    const/4 v4, 0x0

    move-object/from16 v0, p4

    iput-object v4, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    .line 323
    :cond_b
    :goto_b
    return-void

    .line 244
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    iput v7, v4, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->queueSize:I

    .line 245
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->enabledTrack:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->isAdaptive()Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 246
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->adaptiveFormatEvaluator:Lcom/google/android/exoplayer/chunk/FormatEvaluator;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->enabledTrack:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

    # getter for: Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->adaptiveFormats:[Lcom/google/android/exoplayer/chunk/Format;
    invoke-static {v7}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->access$100(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;)[Lcom/google/android/exoplayer/chunk/Format;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    invoke-interface/range {v4 .. v9}, Lcom/google/android/exoplayer/chunk/FormatEvaluator;->evaluate(Ljava/util/List;J[Lcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;)V

    .line 253
    :goto_37
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    iget-object v5, v4, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->format:Lcom/google/android/exoplayer/chunk/Format;

    .line 254
    .local v5, "selectedFormat":Lcom/google/android/exoplayer/chunk/Format;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    iget v4, v4, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->queueSize:I

    move-object/from16 v0, p4

    iput v4, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->queueSize:I

    .line 256
    if-nez v5, :cond_65

    .line 257
    const/4 v4, 0x0

    move-object/from16 v0, p4

    iput-object v4, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    goto :goto_b

    .line 249
    .end local v5    # "selectedFormat":Lcom/google/android/exoplayer/chunk/Format;
    :cond_4f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->enabledTrack:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

    # getter for: Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->fixedFormat:Lcom/google/android/exoplayer/chunk/Format;
    invoke-static {v7}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->access$200(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;)Lcom/google/android/exoplayer/chunk/Format;

    move-result-object v7

    iput-object v7, v4, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->format:Lcom/google/android/exoplayer/chunk/Format;

    .line 250
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    const/4 v7, 0x2

    iput v7, v4, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->trigger:I

    goto :goto_37

    .line 259
    .restart local v5    # "selectedFormat":Lcom/google/android/exoplayer/chunk/Format;
    :cond_65
    move-object/from16 v0, p4

    iget v4, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->queueSize:I

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    if-ne v4, v7, :cond_81

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    if-eqz v4, :cond_81

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    iget-object v4, v4, Lcom/google/android/exoplayer/chunk/Chunk;->format:Lcom/google/android/exoplayer/chunk/Format;

    .line 260
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer/chunk/Format;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 267
    :cond_81
    const/4 v4, 0x0

    move-object/from16 v0, p4

    iput-object v4, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    .line 269
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifest:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;

    iget-object v4, v4, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;->streamElements:[Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->enabledTrack:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

    # getter for: Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->elementIndex:I
    invoke-static {v7}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->access$000(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;)I

    move-result v7

    aget-object v26, v4, v7

    .line 270
    .local v26, "streamElement":Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;
    move-object/from16 v0, v26

    iget v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkCount:I

    if-nez v4, :cond_b2

    .line 271
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifest:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;

    iget-boolean v4, v4, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;->isLive:Z

    if-eqz v4, :cond_ab

    .line 272
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->needManifestRefresh:Z

    goto/16 :goto_b

    .line 274
    :cond_ab
    const/4 v4, 0x1

    move-object/from16 v0, p4

    iput-boolean v4, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->endOfStream:Z

    goto/16 :goto_b

    .line 280
    :cond_b2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_e5

    .line 281
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->live:Z

    if-eqz v4, :cond_ca

    .line 282
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifest:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->liveEdgeLatencyUs:J

    invoke-static {v4, v8, v9}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->getLiveSeekPosition(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;J)J

    move-result-wide p2

    .line 284
    :cond_ca
    move-object/from16 v0, v26

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->getChunkIndex(J)I

    move-result v20

    .line 290
    .local v20, "chunkIndex":I
    :goto_d2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->live:Z

    if-eqz v4, :cond_100

    if-gez v20, :cond_100

    .line 292
    new-instance v4, Lcom/google/android/exoplayer/BehindLiveWindowException;

    invoke-direct {v4}, Lcom/google/android/exoplayer/BehindLiveWindowException;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->fatalError:Ljava/io/IOException;

    goto/16 :goto_b

    .line 286
    .end local v20    # "chunkIndex":I
    :cond_e5
    move-object/from16 v0, p4

    iget v4, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->queueSize:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/google/android/exoplayer/chunk/MediaChunk;

    .line 287
    .local v25, "previous":Lcom/google/android/exoplayer/chunk/MediaChunk;
    move-object/from16 v0, v25

    iget v4, v0, Lcom/google/android/exoplayer/chunk/MediaChunk;->chunkIndex:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifestChunkOffset:I

    sub-int v20, v4, v7

    .restart local v20    # "chunkIndex":I
    goto :goto_d2

    .line 294
    .end local v25    # "previous":Lcom/google/android/exoplayer/chunk/MediaChunk;
    :cond_100
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifest:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;

    iget-boolean v4, v4, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;->isLive:Z

    if-eqz v4, :cond_1af

    .line 295
    move-object/from16 v0, v26

    iget v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkCount:I

    move/from16 v0, v20

    if-lt v0, v4, :cond_117

    .line 297
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->needManifestRefresh:Z

    goto/16 :goto_b

    .line 299
    :cond_117
    move-object/from16 v0, v26

    iget v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkCount:I

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, v20

    if-ne v0, v4, :cond_126

    .line 302
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->needManifestRefresh:Z

    .line 309
    :cond_126
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifest:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;

    iget-boolean v4, v4, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;->isLive:Z

    if-nez v4, :cond_1be

    move-object/from16 v0, v26

    iget v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkCount:I

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, v20

    if-ne v0, v4, :cond_1be

    const/16 v21, 0x1

    .line 310
    .local v21, "isLastChunk":Z
    :goto_13a
    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->getStartTimeUs(I)J

    move-result-wide v12

    .line 311
    .local v12, "chunkStartTimeUs":J
    if-eqz v21, :cond_1c2

    const-wide/16 v14, -0x1

    .line 313
    .local v14, "chunkEndTimeUs":J
    :goto_146
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifestChunkOffset:I

    add-int v11, v20, v4

    .line 315
    .local v11, "currentAbsoluteChunkIndex":I
    move-object/from16 v0, v26

    invoke-static {v0, v5}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->getManifestTrackIndex(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;Lcom/google/android/exoplayer/chunk/Format;)I

    move-result v22

    .line 316
    .local v22, "manifestTrackIndex":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->enabledTrack:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

    # getter for: Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->elementIndex:I
    invoke-static {v4}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->access$000(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;)I

    move-result v4

    move/from16 v0, v22

    invoke-static {v4, v0}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->getManifestTrackKey(II)I

    move-result v23

    .line 317
    .local v23, "manifestTrackKey":I
    move-object/from16 v0, v26

    move/from16 v1, v22

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->buildRequestUri(II)Landroid/net/Uri;

    move-result-object v6

    .line 318
    .local v6, "uri":Landroid/net/Uri;
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->extractorWrappers:Landroid/util/SparseArray;

    .line 319
    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->drmInitData:Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    iget v0, v4, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->trigger:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->mediaFormats:Landroid/util/SparseArray;

    .line 320
    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/android/exoplayer/MediaFormat;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->enabledTrack:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

    .line 321
    # getter for: Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->adaptiveMaxWidth:I
    invoke-static {v4}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->access$300(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->enabledTrack:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

    # getter for: Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->adaptiveMaxHeight:I
    invoke-static {v4}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->access$400(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;)I

    move-result v19

    .line 318
    invoke-static/range {v5 .. v19}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->newMediaChunk(Lcom/google/android/exoplayer/chunk/Format;Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;Lcom/google/android/exoplayer/drm/DrmInitData;Lcom/google/android/exoplayer/upstream/DataSource;IJJILcom/google/android/exoplayer/MediaFormat;II)Lcom/google/android/exoplayer/chunk/MediaChunk;

    move-result-object v24

    .line 322
    .local v24, "mediaChunk":Lcom/google/android/exoplayer/chunk/Chunk;
    move-object/from16 v0, v24

    move-object/from16 v1, p4

    iput-object v0, v1, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    goto/16 :goto_b

    .line 304
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v11    # "currentAbsoluteChunkIndex":I
    .end local v12    # "chunkStartTimeUs":J
    .end local v14    # "chunkEndTimeUs":J
    .end local v21    # "isLastChunk":Z
    .end local v22    # "manifestTrackIndex":I
    .end local v23    # "manifestTrackKey":I
    .end local v24    # "mediaChunk":Lcom/google/android/exoplayer/chunk/Chunk;
    :cond_1af
    move-object/from16 v0, v26

    iget v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkCount:I

    move/from16 v0, v20

    if-lt v0, v4, :cond_126

    .line 305
    const/4 v4, 0x1

    move-object/from16 v0, p4

    iput-boolean v4, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->endOfStream:Z

    goto/16 :goto_b

    .line 309
    :cond_1be
    const/16 v21, 0x0

    goto/16 :goto_13a

    .line 312
    .restart local v12    # "chunkStartTimeUs":J
    .restart local v21    # "isLastChunk":Z
    :cond_1c2
    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->getChunkDurationUs(I)J

    move-result-wide v8

    add-long v14, v12, v8

    goto/16 :goto_146
.end method

.method public final getFormat(I)Lcom/google/android/exoplayer/MediaFormat;
    .registers 3
    .param p1, "track"    # I

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

    iget-object v0, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->trackFormat:Lcom/google/android/exoplayer/MediaFormat;

    return-object v0
.end method

.method public getTrackCount()I
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public maybeThrowError()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v0, :cond_7

    .line 160
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->fatalError:Ljava/io/IOException;

    throw v0

    .line 162
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->maybeThrowError()V

    .line 164
    return-void
.end method

.method public onChunkLoadCompleted(Lcom/google/android/exoplayer/chunk/Chunk;)V
    .registers 2
    .param p1, "chunk"    # Lcom/google/android/exoplayer/chunk/Chunk;

    .prologue
    .line 328
    return-void
.end method

.method public onChunkLoadError(Lcom/google/android/exoplayer/chunk/Chunk;Ljava/lang/Exception;)V
    .registers 3
    .param p1, "chunk"    # Lcom/google/android/exoplayer/chunk/Chunk;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 333
    return-void
.end method

.method public prepare()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 168
    iget-boolean v2, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->prepareCalled:Z

    if-nez v2, :cond_e

    .line 169
    iput-boolean v1, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->prepareCalled:Z

    .line 171
    :try_start_7
    iget-object v2, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->trackSelector:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingTrackSelector;

    iget-object v3, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifest:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;

    invoke-interface {v2, v3, p0}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingTrackSelector;->selectTracks(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingTrackSelector$Output;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_e} :catch_13

    .line 176
    :cond_e
    :goto_e
    iget-object v2, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->fatalError:Ljava/io/IOException;

    if-nez v2, :cond_17

    :goto_12
    return v1

    .line 172
    :catch_13
    move-exception v0

    .line 173
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->fatalError:Ljava/io/IOException;

    goto :goto_e

    .line 176
    .end local v0    # "e":Ljava/io/IOException;
    :cond_17
    const/4 v1, 0x0

    goto :goto_12
.end method
