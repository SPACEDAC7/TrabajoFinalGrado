.class public final Lcom/google/android/exoplayer/hls/HlsSampleSource;
.super Ljava/lang/Object;
.source "HlsSampleSource.java"

# interfaces
.implements Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;
.implements Lcom/google/android/exoplayer/SampleSource;
.implements Lcom/google/android/exoplayer/upstream/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_MIN_LOADABLE_RETRY_COUNT:I = 0x3

.field private static final NO_RESET_PENDING:J = -0x8000000000000000L

.field private static final PRIMARY_TYPE_AUDIO:I = 0x2

.field private static final PRIMARY_TYPE_NONE:I = 0x0

.field private static final PRIMARY_TYPE_TEXT:I = 0x1

.field private static final PRIMARY_TYPE_VIDEO:I = 0x3


# instance fields
.field private final bufferSizeContribution:I

.field private final chunkOperationHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

.field private final chunkSource:Lcom/google/android/exoplayer/hls/HlsChunkSource;

.field private chunkSourceTrackIndices:[I

.field private currentLoadStartTimeMs:J

.field private currentLoadable:Lcom/google/android/exoplayer/chunk/Chunk;

.field private currentLoadableException:Ljava/io/IOException;

.field private currentLoadableExceptionCount:I

.field private currentLoadableExceptionTimestamp:J

.field private currentTsLoadable:Lcom/google/android/exoplayer/hls/TsChunk;

.field private downstreamFormat:Lcom/google/android/exoplayer/chunk/Format;

.field private downstreamMediaFormats:[Lcom/google/android/exoplayer/MediaFormat;

.field private downstreamPositionUs:J

.field private enabledTrackCount:I

.field private final eventHandler:Landroid/os/Handler;

.field private final eventListener:Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;

.field private final eventSourceId:I

.field private extractorTrackEnabledStates:[Z

.field private extractorTrackIndices:[I

.field private final extractors:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private lastSeekPositionUs:J

.field private final loadControl:Lcom/google/android/exoplayer/LoadControl;

.field private loadControlRegistered:Z

.field private loader:Lcom/google/android/exoplayer/upstream/Loader;

.field private loadingFinished:Z

.field private final minLoadableRetryCount:I

.field private pendingDiscontinuities:[Z

.field private pendingResetPositionUs:J

.field private prepared:Z

.field private previousTsLoadable:Lcom/google/android/exoplayer/hls/TsChunk;

.field private remainingReleaseCount:I

.field private trackCount:I

.field private trackEnabledStates:[Z

.field private trackFormats:[Lcom/google/android/exoplayer/MediaFormat;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/hls/HlsChunkSource;Lcom/google/android/exoplayer/LoadControl;I)V
    .registers 11
    .param p1, "chunkSource"    # Lcom/google/android/exoplayer/hls/HlsChunkSource;
    .param p2, "loadControl"    # Lcom/google/android/exoplayer/LoadControl;
    .param p3, "bufferSizeContribution"    # I

    .prologue
    const/4 v4, 0x0

    .line 112
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer/hls/HlsSampleSource;-><init>(Lcom/google/android/exoplayer/hls/HlsChunkSource;Lcom/google/android/exoplayer/LoadControl;ILandroid/os/Handler;Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;I)V

    .line 113
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/hls/HlsChunkSource;Lcom/google/android/exoplayer/LoadControl;ILandroid/os/Handler;Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;I)V
    .registers 15
    .param p1, "chunkSource"    # Lcom/google/android/exoplayer/hls/HlsChunkSource;
    .param p2, "loadControl"    # Lcom/google/android/exoplayer/LoadControl;
    .param p3, "bufferSizeContribution"    # I
    .param p4, "eventHandler"    # Landroid/os/Handler;
    .param p5, "eventListener"    # Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;
    .param p6, "eventSourceId"    # I

    .prologue
    .line 118
    const/4 v7, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer/hls/HlsSampleSource;-><init>(Lcom/google/android/exoplayer/hls/HlsChunkSource;Lcom/google/android/exoplayer/LoadControl;ILandroid/os/Handler;Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;II)V

    .line 120
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/hls/HlsChunkSource;Lcom/google/android/exoplayer/LoadControl;ILandroid/os/Handler;Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;II)V
    .registers 10
    .param p1, "chunkSource"    # Lcom/google/android/exoplayer/hls/HlsChunkSource;
    .param p2, "loadControl"    # Lcom/google/android/exoplayer/LoadControl;
    .param p3, "bufferSizeContribution"    # I
    .param p4, "eventHandler"    # Landroid/os/Handler;
    .param p5, "eventListener"    # Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;
    .param p6, "eventSourceId"    # I
    .param p7, "minLoadableRetryCount"    # I

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->chunkSource:Lcom/google/android/exoplayer/hls/HlsChunkSource;

    .line 126
    iput-object p2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loadControl:Lcom/google/android/exoplayer/LoadControl;

    .line 127
    iput p3, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->bufferSizeContribution:I

    .line 128
    iput p7, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->minLoadableRetryCount:I

    .line 129
    iput-object p4, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->eventHandler:Landroid/os/Handler;

    .line 130
    iput-object p5, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->eventListener:Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;

    .line 131
    iput p6, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->eventSourceId:I

    .line 132
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->pendingResetPositionUs:J

    .line 133
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    .line 134
    new-instance v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    invoke-direct {v0}, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->chunkOperationHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer/hls/HlsSampleSource;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer/hls/HlsSampleSource;

    .prologue
    .line 43
    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->eventSourceId:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer/hls/HlsSampleSource;)Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer/hls/HlsSampleSource;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->eventListener:Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;

    return-object v0
.end method

.method private buildTracks(Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;)V
    .registers 22
    .param p1, "extractor"    # Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    .prologue
    .line 503
    const/4 v14, 0x0

    .line 504
    .local v14, "primaryExtractorTrackType":I
    const/4 v13, -0x1

    .line 505
    .local v13, "primaryExtractorTrackIndex":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->getTrackCount()I

    move-result v6

    .line 506
    .local v6, "extractorTrackCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_7
    if-ge v9, v6, :cond_46

    .line 507
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->getMediaFormat(I)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v11, v0, Lcom/google/android/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    .line 509
    .local v11, "mimeType":Ljava/lang/String;
    invoke-static {v11}, Lcom/google/android/exoplayer/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_25

    .line 510
    const/16 v17, 0x3

    .line 518
    .local v17, "trackType":I
    :goto_1b
    move/from16 v0, v17

    if-le v0, v14, :cond_3a

    .line 519
    move/from16 v14, v17

    .line 520
    move v13, v9

    .line 506
    :cond_22
    :goto_22
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 511
    .end local v17    # "trackType":I
    :cond_25
    invoke-static {v11}, Lcom/google/android/exoplayer/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2e

    .line 512
    const/16 v17, 0x2

    .restart local v17    # "trackType":I
    goto :goto_1b

    .line 513
    .end local v17    # "trackType":I
    :cond_2e
    invoke-static {v11}, Lcom/google/android/exoplayer/util/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_37

    .line 514
    const/16 v17, 0x1

    .restart local v17    # "trackType":I
    goto :goto_1b

    .line 516
    .end local v17    # "trackType":I
    :cond_37
    const/16 v17, 0x0

    .restart local v17    # "trackType":I
    goto :goto_1b

    .line 521
    :cond_3a
    move/from16 v0, v17

    if-ne v0, v14, :cond_22

    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v13, v0, :cond_22

    .line 524
    const/4 v13, -0x1

    goto :goto_22

    .line 529
    .end local v11    # "mimeType":Ljava/lang/String;
    .end local v17    # "trackType":I
    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->chunkSource:Lcom/google/android/exoplayer/hls/HlsChunkSource;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->getTrackCount()I

    move-result v2

    .line 530
    .local v2, "chunkSourceTrackCount":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v13, v0, :cond_14e

    const/4 v3, 0x1

    .line 531
    .local v3, "expandPrimaryExtractorTrack":Z
    :goto_57
    move-object/from16 v0, p0

    iput v6, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->trackCount:I

    .line 532
    if-eqz v3, :cond_6d

    .line 533
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->trackCount:I

    move/from16 v18, v0

    add-int/lit8 v19, v2, -0x1

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/hls/HlsSampleSource;->trackCount:I

    .line 537
    :cond_6d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->trackCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v0, v0, [Lcom/google/android/exoplayer/MediaFormat;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer/hls/HlsSampleSource;->trackFormats:[Lcom/google/android/exoplayer/MediaFormat;

    .line 538
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->trackCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v0, v0, [Z

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer/hls/HlsSampleSource;->trackEnabledStates:[Z

    .line 539
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->trackCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v0, v0, [Z

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer/hls/HlsSampleSource;->pendingDiscontinuities:[Z

    .line 540
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->trackCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v0, v0, [Lcom/google/android/exoplayer/MediaFormat;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer/hls/HlsSampleSource;->downstreamMediaFormats:[Lcom/google/android/exoplayer/MediaFormat;

    .line 541
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->trackCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer/hls/HlsSampleSource;->chunkSourceTrackIndices:[I

    .line 542
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->trackCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractorTrackIndices:[I

    .line 543
    new-array v0, v6, [Z

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractorTrackEnabledStates:[Z

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->chunkSource:Lcom/google/android/exoplayer/hls/HlsChunkSource;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->getDurationUs()J

    move-result-wide v4

    .line 547
    .local v4, "durationUs":J
    const/4 v15, 0x0

    .line 548
    .local v15, "trackIndex":I
    const/4 v9, 0x0

    move/from16 v16, v15

    .end local v15    # "trackIndex":I
    .local v16, "trackIndex":I
    :goto_f1
    if-ge v9, v6, :cond_19c

    .line 549
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->getMediaFormat(I)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Lcom/google/android/exoplayer/MediaFormat;->copyWithDurationUs(J)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v8

    .line 550
    .local v8, "format":Lcom/google/android/exoplayer/MediaFormat;
    const/4 v12, 0x0

    .line 551
    .local v12, "muxedLanguage":Ljava/lang/String;
    iget-object v0, v8, Lcom/google/android/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/google/android/exoplayer/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_151

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->chunkSource:Lcom/google/android/exoplayer/hls/HlsChunkSource;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->getMuxedAudioLanguage()Ljava/lang/String;

    move-result-object v12

    .line 556
    :cond_114
    :goto_114
    if-ne v9, v13, :cond_17b

    .line 557
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_117
    if-ge v10, v2, :cond_173

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractorTrackIndices:[I

    move-object/from16 v18, v0

    aput v9, v18, v16

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->chunkSourceTrackIndices:[I

    move-object/from16 v18, v0

    aput v10, v18, v16

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->chunkSource:Lcom/google/android/exoplayer/hls/HlsChunkSource;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->getFixedTrackVariant(I)Lcom/google/android/exoplayer/hls/Variant;

    move-result-object v7

    .line 561
    .local v7, "fixedTrackVariant":Lcom/google/android/exoplayer/hls/Variant;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->trackFormats:[Lcom/google/android/exoplayer/MediaFormat;

    move-object/from16 v19, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "trackIndex":I
    .restart local v15    # "trackIndex":I
    if-nez v7, :cond_168

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/google/android/exoplayer/MediaFormat;->copyAsAdaptive(Ljava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v18

    .line 562
    :goto_147
    aput-object v18, v19, v16

    .line 557
    add-int/lit8 v10, v10, 0x1

    move/from16 v16, v15

    .end local v15    # "trackIndex":I
    .restart local v16    # "trackIndex":I
    goto :goto_117

    .line 530
    .end local v3    # "expandPrimaryExtractorTrack":Z
    .end local v4    # "durationUs":J
    .end local v7    # "fixedTrackVariant":Lcom/google/android/exoplayer/hls/Variant;
    .end local v8    # "format":Lcom/google/android/exoplayer/MediaFormat;
    .end local v10    # "j":I
    .end local v12    # "muxedLanguage":Ljava/lang/String;
    .end local v16    # "trackIndex":I
    :cond_14e
    const/4 v3, 0x0

    goto/16 :goto_57

    .line 553
    .restart local v3    # "expandPrimaryExtractorTrack":Z
    .restart local v4    # "durationUs":J
    .restart local v8    # "format":Lcom/google/android/exoplayer/MediaFormat;
    .restart local v12    # "muxedLanguage":Ljava/lang/String;
    .restart local v16    # "trackIndex":I
    :cond_151
    const-string v18, "application/eia-608"

    iget-object v0, v8, Lcom/google/android/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_114

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->chunkSource:Lcom/google/android/exoplayer/hls/HlsChunkSource;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->getMuxedCaptionLanguage()Ljava/lang/String;

    move-result-object v12

    goto :goto_114

    .line 561
    .end local v16    # "trackIndex":I
    .restart local v7    # "fixedTrackVariant":Lcom/google/android/exoplayer/hls/Variant;
    .restart local v10    # "j":I
    .restart local v15    # "trackIndex":I
    :cond_168
    iget-object v0, v7, Lcom/google/android/exoplayer/hls/Variant;->format:Lcom/google/android/exoplayer/chunk/Format;

    move-object/from16 v18, v0

    .line 562
    move-object/from16 v0, v18

    invoke-static {v8, v0, v12}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->copyWithFixedTrackInfo(Lcom/google/android/exoplayer/MediaFormat;Lcom/google/android/exoplayer/chunk/Format;Ljava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v18

    goto :goto_147

    .end local v7    # "fixedTrackVariant":Lcom/google/android/exoplayer/hls/Variant;
    .end local v15    # "trackIndex":I
    .restart local v16    # "trackIndex":I
    :cond_173
    move/from16 v15, v16

    .line 548
    .end local v10    # "j":I
    .end local v16    # "trackIndex":I
    .restart local v15    # "trackIndex":I
    :goto_175
    add-int/lit8 v9, v9, 0x1

    move/from16 v16, v15

    .end local v15    # "trackIndex":I
    .restart local v16    # "trackIndex":I
    goto/16 :goto_f1

    .line 565
    :cond_17b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractorTrackIndices:[I

    move-object/from16 v18, v0

    aput v9, v18, v16

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->chunkSourceTrackIndices:[I

    move-object/from16 v18, v0

    const/16 v19, -0x1

    aput v19, v18, v16

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->trackFormats:[Lcom/google/android/exoplayer/MediaFormat;

    move-object/from16 v18, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "trackIndex":I
    .restart local v15    # "trackIndex":I
    invoke-virtual {v8, v12}, Lcom/google/android/exoplayer/MediaFormat;->copyWithLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v19

    aput-object v19, v18, v16

    goto :goto_175

    .line 570
    .end local v8    # "format":Lcom/google/android/exoplayer/MediaFormat;
    .end local v12    # "muxedLanguage":Ljava/lang/String;
    .end local v15    # "trackIndex":I
    .restart local v16    # "trackIndex":I
    :cond_19c
    return-void
.end method

.method private clearCurrentLoadable()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 682
    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentTsLoadable:Lcom/google/android/exoplayer/hls/TsChunk;

    .line 683
    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadable:Lcom/google/android/exoplayer/chunk/Chunk;

    .line 684
    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadableException:Ljava/io/IOException;

    .line 685
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadableExceptionCount:I

    .line 686
    return-void
.end method

.method private clearState()V
    .registers 3

    .prologue
    .line 673
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 674
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->clear()V

    .line 673
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 676
    :cond_17
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 677
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->clearCurrentLoadable()V

    .line 678
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->previousTsLoadable:Lcom/google/android/exoplayer/hls/TsChunk;

    .line 679
    return-void
.end method

.method private static copyWithFixedTrackInfo(Lcom/google/android/exoplayer/MediaFormat;Lcom/google/android/exoplayer/chunk/Format;Ljava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;
    .registers 9
    .param p0, "format"    # Lcom/google/android/exoplayer/MediaFormat;
    .param p1, "fixedTrackFormat"    # Lcom/google/android/exoplayer/chunk/Format;
    .param p2, "muxedLanguage"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 598
    iget v1, p1, Lcom/google/android/exoplayer/chunk/Format;->width:I

    if-ne v1, v0, :cond_1a

    move v3, v0

    .line 599
    .local v3, "width":I
    :goto_6
    iget v1, p1, Lcom/google/android/exoplayer/chunk/Format;->height:I

    if-ne v1, v0, :cond_1d

    move v4, v0

    .line 600
    .local v4, "height":I
    :goto_b
    iget-object v0, p1, Lcom/google/android/exoplayer/chunk/Format;->language:Ljava/lang/String;

    if-nez v0, :cond_20

    move-object v5, p2

    .line 601
    .local v5, "language":Ljava/lang/String;
    :goto_10
    iget-object v1, p1, Lcom/google/android/exoplayer/chunk/Format;->id:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/exoplayer/chunk/Format;->bitrate:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer/MediaFormat;->copyWithFixedTrackInfo(Ljava/lang/String;IIILjava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    return-object v0

    .line 598
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "language":Ljava/lang/String;
    :cond_1a
    iget v3, p1, Lcom/google/android/exoplayer/chunk/Format;->width:I

    goto :goto_6

    .line 599
    .restart local v3    # "width":I
    :cond_1d
    iget v4, p1, Lcom/google/android/exoplayer/chunk/Format;->height:I

    goto :goto_b

    .line 600
    .restart local v4    # "height":I
    :cond_20
    iget-object v5, p1, Lcom/google/android/exoplayer/chunk/Format;->language:Ljava/lang/String;

    goto :goto_10
.end method

.method private discardSamplesForDisabledTracks(Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;J)V
    .registers 6
    .param p1, "extractor"    # Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;
    .param p2, "timeUs"    # J

    .prologue
    .line 639
    invoke-virtual {p1}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->isPrepared()Z

    move-result v1

    if-nez v1, :cond_7

    .line 647
    :cond_6
    return-void

    .line 642
    :cond_7
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractorTrackEnabledStates:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_6

    .line 643
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractorTrackEnabledStates:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_16

    .line 644
    invoke-virtual {p1, v0, p2, p3}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->discardUntil(IJ)V

    .line 642
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method private getCurrentExtractor()Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;
    .registers 4

    .prologue
    .line 629
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    .line 630
    .local v0, "extractor":Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;
    :goto_8
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2b

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->haveSamplesForEnabledTracks(Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 632
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->clear()V

    .line 633
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "extractor":Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;
    check-cast v0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    .restart local v0    # "extractor":Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;
    goto :goto_8

    .line 635
    :cond_2b
    return-object v0
.end method

.method private getNextLoadPositionUs()J
    .registers 3

    .prologue
    .line 754
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 755
    iget-wide v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->pendingResetPositionUs:J

    .line 757
    :goto_8
    return-wide v0

    :cond_9
    iget-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loadingFinished:Z

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->prepared:Z

    if-eqz v0, :cond_18

    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->enabledTrackCount:I

    if-nez v0, :cond_18

    :cond_15
    const-wide/16 v0, -0x1

    goto :goto_8

    :cond_18
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentTsLoadable:Lcom/google/android/exoplayer/hls/TsChunk;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentTsLoadable:Lcom/google/android/exoplayer/hls/TsChunk;

    iget-wide v0, v0, Lcom/google/android/exoplayer/hls/TsChunk;->endTimeUs:J

    goto :goto_8

    :cond_21
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->previousTsLoadable:Lcom/google/android/exoplayer/hls/TsChunk;

    iget-wide v0, v0, Lcom/google/android/exoplayer/hls/TsChunk;->endTimeUs:J

    goto :goto_8
.end method

.method private getRetryDelayMillis(J)J
    .registers 8
    .param p1, "errorCount"    # J

    .prologue
    .line 771
    const-wide/16 v0, 0x1

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private haveSamplesForEnabledTracks(Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;)Z
    .registers 5
    .param p1, "extractor"    # Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    .prologue
    const/4 v1, 0x0

    .line 650
    invoke-virtual {p1}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->isPrepared()Z

    move-result v2

    if-nez v2, :cond_8

    .line 658
    :cond_7
    :goto_7
    return v1

    .line 653
    :cond_8
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractorTrackEnabledStates:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_7

    .line 654
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractorTrackEnabledStates:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_1c

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->hasSamples(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 655
    const/4 v1, 0x1

    goto :goto_7

    .line 653
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method private isPendingReset()Z
    .registers 5

    .prologue
    .line 767
    iget-wide v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->pendingResetPositionUs:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isTsChunk(Lcom/google/android/exoplayer/chunk/Chunk;)Z
    .registers 3
    .param p1, "chunk"    # Lcom/google/android/exoplayer/chunk/Chunk;

    .prologue
    .line 763
    instance-of v0, p1, Lcom/google/android/exoplayer/hls/TsChunk;

    return v0
.end method

.method private maybeStartLoading()V
    .registers 32

    .prologue
    .line 689
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v28

    .line 690
    .local v28, "now":J
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->getNextLoadPositionUs()J

    move-result-wide v8

    .line 691
    .local v8, "nextLoadPositionUs":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadableException:Ljava/io/IOException;

    if-eqz v4, :cond_55

    const/16 v25, 0x1

    .line 692
    .local v25, "isBackedOff":Z
    :goto_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/upstream/Loader;->isLoading()Z

    move-result v4

    if-nez v4, :cond_1c

    if-eqz v25, :cond_58

    :cond_1c
    const/4 v10, 0x1

    .line 695
    .local v10, "loadingOrBackedOff":Z
    :goto_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loadControl:Lcom/google/android/exoplayer/LoadControl;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->downstreamPositionUs:J

    move-object/from16 v5, p0

    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer/LoadControl;->update(Ljava/lang/Object;JJZ)Z

    move-result v27

    .line 698
    .local v27, "nextLoader":Z
    if-eqz v25, :cond_5a

    .line 699
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadableExceptionTimestamp:J

    sub-long v22, v28, v4

    .line 700
    .local v22, "elapsedMillis":J
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadableExceptionCount:I

    int-to-long v4, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->getRetryDelayMillis(J)J

    move-result-wide v4

    cmp-long v4, v22, v4

    if-ltz v4, :cond_54

    .line 701
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadableException:Ljava/io/IOException;

    .line 702
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadable:Lcom/google/android/exoplayer/chunk/Chunk;

    move-object/from16 v0, p0

    invoke-virtual {v4, v5, v0}, Lcom/google/android/exoplayer/upstream/Loader;->startLoading(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Lcom/google/android/exoplayer/upstream/Loader$Callback;)V

    .line 747
    .end local v22    # "elapsedMillis":J
    :cond_54
    :goto_54
    return-void

    .line 691
    .end local v10    # "loadingOrBackedOff":Z
    .end local v25    # "isBackedOff":Z
    .end local v27    # "nextLoader":Z
    :cond_55
    const/16 v25, 0x0

    goto :goto_10

    .line 692
    .restart local v25    # "isBackedOff":Z
    :cond_58
    const/4 v10, 0x0

    goto :goto_1d

    .line 707
    .restart local v10    # "loadingOrBackedOff":Z
    .restart local v27    # "nextLoader":Z
    :cond_5a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/upstream/Loader;->isLoading()Z

    move-result v4

    if-nez v4, :cond_54

    if-eqz v27, :cond_54

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->prepared:Z

    if-eqz v4, :cond_72

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->enabledTrackCount:I

    if-eqz v4, :cond_54

    .line 711
    :cond_72
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->chunkSource:Lcom/google/android/exoplayer/hls/HlsChunkSource;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->previousTsLoadable:Lcom/google/android/exoplayer/hls/TsChunk;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->pendingResetPositionUs:J

    const-wide/high16 v12, -0x8000000000000000L

    cmp-long v4, v4, v12

    if-eqz v4, :cond_bd

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->pendingResetPositionUs:J

    :goto_88
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->chunkOperationHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    invoke-virtual {v6, v7, v4, v5, v12}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->getChunkOperation(Lcom/google/android/exoplayer/hls/TsChunk;JLcom/google/android/exoplayer/chunk/ChunkOperationHolder;)V

    .line 714
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->chunkOperationHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-boolean v11, v4, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->endOfStream:Z

    .line 715
    .local v11, "endOfStream":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->chunkOperationHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v0, v4, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    move-object/from16 v26, v0

    .line 716
    .local v26, "nextLoadable":Lcom/google/android/exoplayer/chunk/Chunk;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->chunkOperationHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->clear()V

    .line 718
    if-eqz v11, :cond_c2

    .line 719
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loadingFinished:Z

    .line 720
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loadControl:Lcom/google/android/exoplayer/LoadControl;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->downstreamPositionUs:J

    const-wide/16 v16, -0x1

    const/16 v18, 0x0

    move-object/from16 v13, p0

    invoke-interface/range {v12 .. v18}, Lcom/google/android/exoplayer/LoadControl;->update(Ljava/lang/Object;JJZ)Z

    goto :goto_54

    .line 711
    .end local v11    # "endOfStream":Z
    .end local v26    # "nextLoadable":Lcom/google/android/exoplayer/chunk/Chunk;
    :cond_bd
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->downstreamPositionUs:J

    goto :goto_88

    .line 723
    .restart local v11    # "endOfStream":Z
    .restart local v26    # "nextLoadable":Lcom/google/android/exoplayer/chunk/Chunk;
    :cond_c2
    if-eqz v26, :cond_54

    .line 727
    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadStartTimeMs:J

    .line 728
    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadable:Lcom/google/android/exoplayer/chunk/Chunk;

    .line 729
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadable:Lcom/google/android/exoplayer/chunk/Chunk;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->isTsChunk(Lcom/google/android/exoplayer/chunk/Chunk;)Z

    move-result v4

    if-eqz v4, :cond_15e

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadable:Lcom/google/android/exoplayer/chunk/Chunk;

    move-object/from16 v30, v0

    check-cast v30, Lcom/google/android/exoplayer/hls/TsChunk;

    .line 731
    .local v30, "tsChunk":Lcom/google/android/exoplayer/hls/TsChunk;
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->isPendingReset()Z

    move-result v4

    if-eqz v4, :cond_f0

    .line 732
    const-wide/high16 v4, -0x8000000000000000L

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->pendingResetPositionUs:J

    .line 734
    :cond_f0
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/google/android/exoplayer/hls/TsChunk;->extractorWrapper:Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    move-object/from16 v24, v0

    .line 735
    .local v24, "extractorWrapper":Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_10c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v24

    if-eq v4, v0, :cond_122

    .line 736
    :cond_10c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loadControl:Lcom/google/android/exoplayer/LoadControl;

    invoke-interface {v4}, Lcom/google/android/exoplayer/LoadControl;->getAllocator()Lcom/google/android/exoplayer/upstream/Allocator;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->init(Lcom/google/android/exoplayer/upstream/Allocator;)V

    .line 737
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 739
    :cond_122
    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/TsChunk;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-wide v13, v4, Lcom/google/android/exoplayer/upstream/DataSpec;->length:J

    move-object/from16 v0, v30

    iget v15, v0, Lcom/google/android/exoplayer/hls/TsChunk;->type:I

    move-object/from16 v0, v30

    iget v0, v0, Lcom/google/android/exoplayer/hls/TsChunk;->trigger:I

    move/from16 v16, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/google/android/exoplayer/hls/TsChunk;->format:Lcom/google/android/exoplayer/chunk/Format;

    move-object/from16 v17, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/google/android/exoplayer/hls/TsChunk;->startTimeUs:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/google/android/exoplayer/hls/TsChunk;->endTimeUs:J

    move-wide/from16 v20, v0

    move-object/from16 v12, p0

    invoke-direct/range {v12 .. v21}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->notifyLoadStarted(JIILcom/google/android/exoplayer/chunk/Format;JJ)V

    .line 741
    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentTsLoadable:Lcom/google/android/exoplayer/hls/TsChunk;

    .line 746
    .end local v24    # "extractorWrapper":Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;
    .end local v30    # "tsChunk":Lcom/google/android/exoplayer/hls/TsChunk;
    :goto_14f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadable:Lcom/google/android/exoplayer/chunk/Chunk;

    move-object/from16 v0, p0

    invoke-virtual {v4, v5, v0}, Lcom/google/android/exoplayer/upstream/Loader;->startLoading(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Lcom/google/android/exoplayer/upstream/Loader$Callback;)V

    goto/16 :goto_54

    .line 743
    :cond_15e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadable:Lcom/google/android/exoplayer/chunk/Chunk;

    iget-object v4, v4, Lcom/google/android/exoplayer/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-wide v13, v4, Lcom/google/android/exoplayer/upstream/DataSpec;->length:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadable:Lcom/google/android/exoplayer/chunk/Chunk;

    iget v15, v4, Lcom/google/android/exoplayer/chunk/Chunk;->type:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadable:Lcom/google/android/exoplayer/chunk/Chunk;

    iget v0, v4, Lcom/google/android/exoplayer/chunk/Chunk;->trigger:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadable:Lcom/google/android/exoplayer/chunk/Chunk;

    iget-object v0, v4, Lcom/google/android/exoplayer/chunk/Chunk;->format:Lcom/google/android/exoplayer/chunk/Format;

    move-object/from16 v17, v0

    const-wide/16 v18, -0x1

    const-wide/16 v20, -0x1

    move-object/from16 v12, p0

    invoke-direct/range {v12 .. v21}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->notifyLoadStarted(JIILcom/google/android/exoplayer/chunk/Format;JJ)V

    goto :goto_14f
.end method

.method private notifyDownstreamFormatChanged(Lcom/google/android/exoplayer/chunk/Format;IJ)V
    .registers 12
    .param p1, "format"    # Lcom/google/android/exoplayer/chunk/Format;
    .param p2, "trigger"    # I
    .param p3, "positionUs"    # J

    .prologue
    .line 829
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->eventListener:Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;

    if-eqz v0, :cond_16

    .line 830
    iget-object v6, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->eventHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/exoplayer/hls/HlsSampleSource$5;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/hls/HlsSampleSource$5;-><init>(Lcom/google/android/exoplayer/hls/HlsSampleSource;Lcom/google/android/exoplayer/chunk/Format;IJ)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 838
    :cond_16
    return-void
.end method

.method private notifyLoadCanceled(J)V
    .registers 6
    .param p1, "bytesLoaded"    # J

    .prologue
    .line 806
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->eventListener:Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;

    if-eqz v0, :cond_12

    .line 807
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/hls/HlsSampleSource$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/exoplayer/hls/HlsSampleSource$3;-><init>(Lcom/google/android/exoplayer/hls/HlsSampleSource;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 814
    :cond_12
    return-void
.end method

.method private notifyLoadCompleted(JIILcom/google/android/exoplayer/chunk/Format;JJJJ)V
    .registers 32
    .param p1, "bytesLoaded"    # J
    .param p3, "type"    # I
    .param p4, "trigger"    # I
    .param p5, "format"    # Lcom/google/android/exoplayer/chunk/Format;
    .param p6, "mediaStartTimeUs"    # J
    .param p8, "mediaEndTimeUs"    # J
    .param p10, "elapsedRealtimeMs"    # J
    .param p12, "loadDurationMs"    # J

    .prologue
    .line 794
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->eventHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->eventListener:Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;

    if-eqz v2, :cond_2a

    .line 795
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->eventHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer/hls/HlsSampleSource$2;

    move-object/from16 v4, p0

    move-wide/from16 v5, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    move-wide/from16 v14, p10

    move-wide/from16 v16, p12

    invoke-direct/range {v3 .. v17}, Lcom/google/android/exoplayer/hls/HlsSampleSource$2;-><init>(Lcom/google/android/exoplayer/hls/HlsSampleSource;JIILcom/google/android/exoplayer/chunk/Format;JJJJ)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 803
    :cond_2a
    return-void
.end method

.method private notifyLoadError(Ljava/io/IOException;)V
    .registers 4
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 817
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->eventListener:Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;

    if-eqz v0, :cond_12

    .line 818
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/hls/HlsSampleSource$4;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer/hls/HlsSampleSource$4;-><init>(Lcom/google/android/exoplayer/hls/HlsSampleSource;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 825
    :cond_12
    return-void
.end method

.method private notifyLoadStarted(JIILcom/google/android/exoplayer/chunk/Format;JJ)V
    .registers 22
    .param p1, "length"    # J
    .param p3, "type"    # I
    .param p4, "trigger"    # I
    .param p5, "format"    # Lcom/google/android/exoplayer/chunk/Format;
    .param p6, "mediaStartTimeUs"    # J
    .param p8, "mediaEndTimeUs"    # J

    .prologue
    .line 780
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->eventListener:Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;

    if-eqz v0, :cond_1d

    .line 781
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/hls/HlsSampleSource$1;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-direct/range {v1 .. v11}, Lcom/google/android/exoplayer/hls/HlsSampleSource$1;-><init>(Lcom/google/android/exoplayer/hls/HlsSampleSource;JIILcom/google/android/exoplayer/chunk/Format;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 789
    :cond_1d
    return-void
.end method

.method private restartFrom(J)V
    .registers 4
    .param p1, "positionUs"    # J

    .prologue
    .line 662
    iput-wide p1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->pendingResetPositionUs:J

    .line 663
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loadingFinished:Z

    .line 664
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 665
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->cancelLoading()V

    .line 670
    :goto_12
    return-void

    .line 667
    :cond_13
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->clearState()V

    .line 668
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->maybeStartLoading()V

    goto :goto_12
.end method

.method private seekToInternal(J)V
    .registers 6
    .param p1, "positionUs"    # J

    .prologue
    .line 611
    iput-wide p1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->lastSeekPositionUs:J

    .line 612
    iput-wide p1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->downstreamPositionUs:J

    .line 613
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->pendingDiscontinuities:[Z

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 614
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->chunkSource:Lcom/google/android/exoplayer/hls/HlsChunkSource;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->seek()V

    .line 615
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->restartFrom(J)V

    .line 616
    return-void
.end method

.method private setTrackEnabledState(IZ)V
    .registers 7
    .param p1, "track"    # I
    .param p2, "enabledState"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 579
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->trackEnabledStates:[Z

    aget-boolean v1, v1, p1

    if-eq v1, p2, :cond_2a

    move v1, v2

    :goto_9
    invoke-static {v1}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 580
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractorTrackIndices:[I

    aget v0, v1, p1

    .line 581
    .local v0, "extractorTrack":I
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractorTrackEnabledStates:[Z

    aget-boolean v1, v1, v0

    if-eq v1, p2, :cond_17

    move v3, v2

    :cond_17
    invoke-static {v3}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 582
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->trackEnabledStates:[Z

    aput-boolean p2, v1, p1

    .line 583
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractorTrackEnabledStates:[Z

    aput-boolean p2, v1, v0

    .line 584
    iget v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->enabledTrackCount:I

    if-eqz p2, :cond_2c

    :goto_26
    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->enabledTrackCount:I

    .line 585
    return-void

    .end local v0    # "extractorTrack":I
    :cond_2a
    move v1, v3

    .line 579
    goto :goto_9

    .line 584
    .restart local v0    # "extractorTrack":I
    :cond_2c
    const/4 v2, -0x1

    goto :goto_26
.end method


# virtual methods
.method public continueBuffering(IJ)Z
    .registers 12
    .param p1, "track"    # I
    .param p2, "playbackPositionUs"    # J

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 256
    iget-boolean v5, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->prepared:Z

    invoke-static {v5}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 257
    iget-object v5, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->trackEnabledStates:[Z

    aget-boolean v5, v5, p1

    invoke-static {v5}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 258
    iput-wide p2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->downstreamPositionUs:J

    .line 259
    iget-object v5, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_21

    .line 260
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->getCurrentExtractor()Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    move-result-object v5

    iget-wide v6, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->downstreamPositionUs:J

    invoke-direct {p0, v5, v6, v7}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->discardSamplesForDisabledTracks(Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;J)V

    .line 262
    :cond_21
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->maybeStartLoading()V

    .line 263
    iget-boolean v5, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loadingFinished:Z

    if-eqz v5, :cond_29

    .line 279
    :cond_28
    :goto_28
    return v3

    .line 266
    :cond_29
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->isPendingReset()Z

    move-result v5

    if-nez v5, :cond_37

    iget-object v5, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_39

    :cond_37
    move v3, v4

    .line 267
    goto :goto_28

    .line 269
    :cond_39
    const/4 v1, 0x0

    .local v1, "extractorIndex":I
    :goto_3a
    iget-object v5, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-ge v1, v5, :cond_50

    .line 270
    iget-object v5, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v5, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    .line 271
    .local v0, "extractor":Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;
    invoke-virtual {v0}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->isPrepared()Z

    move-result v5

    if-nez v5, :cond_52

    .end local v0    # "extractor":Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;
    :cond_50
    move v3, v4

    .line 279
    goto :goto_28

    .line 274
    .restart local v0    # "extractor":Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;
    :cond_52
    iget-object v5, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractorTrackIndices:[I

    aget v2, v5, p1

    .line 275
    .local v2, "extractorTrack":I
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->hasSamples(I)Z

    move-result v5

    if-nez v5, :cond_28

    .line 269
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a
.end method

.method public disable(I)V
    .registers 5
    .param p1, "track"    # I

    .prologue
    const/4 v2, 0x0

    .line 236
    iget-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->prepared:Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 237
    invoke-direct {p0, p1, v2}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->setTrackEnabledState(IZ)V

    .line 238
    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->enabledTrackCount:I

    if-nez v0, :cond_2e

    .line 239
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->chunkSource:Lcom/google/android/exoplayer/hls/HlsChunkSource;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->reset()V

    .line 240
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->downstreamPositionUs:J

    .line 241
    iget-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loadControlRegistered:Z

    if-eqz v0, :cond_21

    .line 242
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loadControl:Lcom/google/android/exoplayer/LoadControl;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer/LoadControl;->unregister(Ljava/lang/Object;)V

    .line 243
    iput-boolean v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loadControlRegistered:Z

    .line 245
    :cond_21
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 246
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->cancelLoading()V

    .line 252
    :cond_2e
    :goto_2e
    return-void

    .line 248
    :cond_2f
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->clearState()V

    .line 249
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loadControl:Lcom/google/android/exoplayer/LoadControl;

    invoke-interface {v0}, Lcom/google/android/exoplayer/LoadControl;->trimAllocator()V

    goto :goto_2e
.end method

.method public enable(IJ)V
    .registers 10
    .param p1, "track"    # I
    .param p2, "positionUs"    # J

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 197
    iget-boolean v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->prepared:Z

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 198
    invoke-direct {p0, p1, v4}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->setTrackEnabledState(IZ)V

    .line 199
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->downstreamMediaFormats:[Lcom/google/android/exoplayer/MediaFormat;

    aput-object v5, v2, p1

    .line 200
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->pendingDiscontinuities:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, p1

    .line 201
    iput-object v5, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->downstreamFormat:Lcom/google/android/exoplayer/chunk/Format;

    .line 202
    iget-boolean v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loadControlRegistered:Z

    .line 203
    .local v1, "wasLoadControlRegistered":Z
    iget-boolean v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loadControlRegistered:Z

    if-nez v2, :cond_24

    .line 204
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loadControl:Lcom/google/android/exoplayer/LoadControl;

    iget v3, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->bufferSizeContribution:I

    invoke-interface {v2, p0, v3}, Lcom/google/android/exoplayer/LoadControl;->register(Ljava/lang/Object;I)V

    .line 205
    iput-boolean v4, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loadControlRegistered:Z

    .line 208
    :cond_24
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->chunkSource:Lcom/google/android/exoplayer/hls/HlsChunkSource;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->isLive()Z

    move-result v2

    if-eqz v2, :cond_2e

    const-wide/16 p2, 0x0

    .line 209
    :cond_2e
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->chunkSourceTrackIndices:[I

    aget v0, v2, p1

    .line 210
    .local v0, "chunkSourceTrack":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_46

    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->chunkSource:Lcom/google/android/exoplayer/hls/HlsChunkSource;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->getSelectedTrackIndex()I

    move-result v2

    if-eq v0, v2, :cond_46

    .line 215
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->chunkSource:Lcom/google/android/exoplayer/hls/HlsChunkSource;

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectTrack(I)V

    .line 216
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->seekToInternal(J)V

    .line 232
    :cond_45
    :goto_45
    return-void

    .line 219
    :cond_46
    iget v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->enabledTrackCount:I

    if-ne v2, v4, :cond_45

    .line 220
    iput-wide p2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->lastSeekPositionUs:J

    .line 221
    if-eqz v1, :cond_58

    iget-wide v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->downstreamPositionUs:J

    cmp-long v2, v2, p2

    if-nez v2, :cond_58

    .line 226
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->maybeStartLoading()V

    goto :goto_45

    .line 228
    :cond_58
    iput-wide p2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->downstreamPositionUs:J

    .line 229
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->restartFrom(J)V

    goto :goto_45
.end method

.method public getBufferedPositionUs()J
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 385
    iget-boolean v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->prepared:Z

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 386
    iget v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->enabledTrackCount:I

    if-lez v2, :cond_17

    move v2, v3

    :goto_b
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 387
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->isPendingReset()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 388
    iget-wide v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->pendingResetPositionUs:J

    .line 399
    :cond_16
    :goto_16
    return-wide v0

    .line 386
    :cond_17
    const/4 v2, 0x0

    goto :goto_b

    .line 389
    :cond_19
    iget-boolean v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loadingFinished:Z

    if-eqz v2, :cond_20

    .line 390
    const-wide/16 v0, -0x3

    goto :goto_16

    .line 392
    :cond_20
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->getLargestParsedTimestampUs()J

    move-result-wide v0

    .line 393
    .local v0, "largestParsedTimestampUs":J
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-le v2, v3, :cond_4c

    .line 396
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    .line 397
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->getLargestParsedTimestampUs()J

    move-result-wide v2

    .line 396
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 399
    :cond_4c
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_16

    iget-wide v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->downstreamPositionUs:J

    goto :goto_16
.end method

.method public getFormat(I)Lcom/google/android/exoplayer/MediaFormat;
    .registers 3
    .param p1, "track"    # I

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->prepared:Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 192
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->trackFormats:[Lcom/google/android/exoplayer/MediaFormat;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getTrackCount()I
    .registers 2

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->prepared:Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 186
    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->trackCount:I

    return v0
.end method

.method public maybeThrowError()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 358
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadableException:Ljava/io/IOException;

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadableExceptionCount:I

    iget v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->minLoadableRetryCount:I

    if-le v0, v1, :cond_d

    .line 359
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadableException:Ljava/io/IOException;

    throw v0

    .line 360
    :cond_d
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadable:Lcom/google/android/exoplayer/chunk/Chunk;

    if-nez v0, :cond_16

    .line 361
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->chunkSource:Lcom/google/android/exoplayer/hls/HlsChunkSource;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->maybeThrowError()V

    .line 363
    :cond_16
    return-void
.end method

.method public onLoadCanceled(Lcom/google/android/exoplayer/upstream/Loader$Loadable;)V
    .registers 4
    .param p1, "loadable"    # Lcom/google/android/exoplayer/upstream/Loader$Loadable;

    .prologue
    .line 441
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadable:Lcom/google/android/exoplayer/chunk/Chunk;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/chunk/Chunk;->bytesLoaded()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->notifyLoadCanceled(J)V

    .line 442
    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->enabledTrackCount:I

    if-lez v0, :cond_13

    .line 443
    iget-wide v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->pendingResetPositionUs:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->restartFrom(J)V

    .line 448
    :goto_12
    return-void

    .line 445
    :cond_13
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->clearState()V

    .line 446
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loadControl:Lcom/google/android/exoplayer/LoadControl;

    invoke-interface {v0}, Lcom/google/android/exoplayer/LoadControl;->trimAllocator()V

    goto :goto_12
.end method

.method public onLoadCompleted(Lcom/google/android/exoplayer/upstream/Loader$Loadable;)V
    .registers 16
    .param p1, "loadable"    # Lcom/google/android/exoplayer/upstream/Loader$Loadable;

    .prologue
    const-wide/16 v6, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 421
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadable:Lcom/google/android/exoplayer/chunk/Chunk;

    if-ne p1, v0, :cond_55

    move v0, v1

    :goto_9
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 422
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 423
    .local v10, "now":J
    iget-wide v4, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadStartTimeMs:J

    sub-long v12, v10, v4

    .line 424
    .local v12, "loadDurationMs":J
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->chunkSource:Lcom/google/android/exoplayer/hls/HlsChunkSource;

    iget-object v3, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadable:Lcom/google/android/exoplayer/chunk/Chunk;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->onChunkLoadCompleted(Lcom/google/android/exoplayer/chunk/Chunk;)V

    .line 425
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadable:Lcom/google/android/exoplayer/chunk/Chunk;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->isTsChunk(Lcom/google/android/exoplayer/chunk/Chunk;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 426
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadable:Lcom/google/android/exoplayer/chunk/Chunk;

    iget-object v3, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentTsLoadable:Lcom/google/android/exoplayer/hls/TsChunk;

    if-ne v0, v3, :cond_57

    :goto_29
    invoke-static {v1}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 427
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentTsLoadable:Lcom/google/android/exoplayer/hls/TsChunk;

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->previousTsLoadable:Lcom/google/android/exoplayer/hls/TsChunk;

    .line 428
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadable:Lcom/google/android/exoplayer/chunk/Chunk;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/chunk/Chunk;->bytesLoaded()J

    move-result-wide v1

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentTsLoadable:Lcom/google/android/exoplayer/hls/TsChunk;

    iget v3, v0, Lcom/google/android/exoplayer/hls/TsChunk;->type:I

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentTsLoadable:Lcom/google/android/exoplayer/hls/TsChunk;

    iget v4, v0, Lcom/google/android/exoplayer/hls/TsChunk;->trigger:I

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentTsLoadable:Lcom/google/android/exoplayer/hls/TsChunk;

    iget-object v5, v0, Lcom/google/android/exoplayer/hls/TsChunk;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentTsLoadable:Lcom/google/android/exoplayer/hls/TsChunk;

    iget-wide v6, v0, Lcom/google/android/exoplayer/hls/TsChunk;->startTimeUs:J

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentTsLoadable:Lcom/google/android/exoplayer/hls/TsChunk;

    iget-wide v8, v0, Lcom/google/android/exoplayer/hls/TsChunk;->endTimeUs:J

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->notifyLoadCompleted(JIILcom/google/android/exoplayer/chunk/Format;JJJJ)V

    .line 435
    :goto_4e
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->clearCurrentLoadable()V

    .line 436
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->maybeStartLoading()V

    .line 437
    return-void

    .end local v10    # "now":J
    .end local v12    # "loadDurationMs":J
    :cond_55
    move v0, v2

    .line 421
    goto :goto_9

    .restart local v10    # "now":J
    .restart local v12    # "loadDurationMs":J
    :cond_57
    move v1, v2

    .line 426
    goto :goto_29

    .line 432
    :cond_59
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadable:Lcom/google/android/exoplayer/chunk/Chunk;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/chunk/Chunk;->bytesLoaded()J

    move-result-wide v1

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadable:Lcom/google/android/exoplayer/chunk/Chunk;

    iget v3, v0, Lcom/google/android/exoplayer/chunk/Chunk;->type:I

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadable:Lcom/google/android/exoplayer/chunk/Chunk;

    iget v4, v0, Lcom/google/android/exoplayer/chunk/Chunk;->trigger:I

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadable:Lcom/google/android/exoplayer/chunk/Chunk;

    iget-object v5, v0, Lcom/google/android/exoplayer/chunk/Chunk;->format:Lcom/google/android/exoplayer/chunk/Format;

    move-object v0, p0

    move-wide v8, v6

    invoke-direct/range {v0 .. v13}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->notifyLoadCompleted(JIILcom/google/android/exoplayer/chunk/Format;JJJJ)V

    goto :goto_4e
.end method

.method public onLoadError(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Ljava/io/IOException;)V
    .registers 5
    .param p1, "loadable"    # Lcom/google/android/exoplayer/upstream/Loader$Loadable;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 452
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->chunkSource:Lcom/google/android/exoplayer/hls/HlsChunkSource;

    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadable:Lcom/google/android/exoplayer/chunk/Chunk;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->onChunkLoadError(Lcom/google/android/exoplayer/chunk/Chunk;Ljava/io/IOException;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 454
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->previousTsLoadable:Lcom/google/android/exoplayer/hls/TsChunk;

    if-nez v0, :cond_18

    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->isPendingReset()Z

    move-result v0

    if-nez v0, :cond_18

    .line 455
    iget-wide v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->lastSeekPositionUs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->pendingResetPositionUs:J

    .line 457
    :cond_18
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->clearCurrentLoadable()V

    .line 463
    :goto_1b
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->notifyLoadError(Ljava/io/IOException;)V

    .line 464
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->maybeStartLoading()V

    .line 465
    return-void

    .line 459
    :cond_22
    iput-object p2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadableException:Ljava/io/IOException;

    .line 460
    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadableExceptionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadableExceptionCount:I

    .line 461
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadableExceptionTimestamp:J

    goto :goto_1b
.end method

.method public prepare(J)Z
    .registers 8
    .param p1, "positionUs"    # J

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 145
    iget-boolean v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->prepared:Z

    if-eqz v1, :cond_8

    move v1, v2

    .line 180
    :goto_7
    return v1

    .line 147
    :cond_8
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->chunkSource:Lcom/google/android/exoplayer/hls/HlsChunkSource;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->prepare()Z

    move-result v1

    if-nez v1, :cond_12

    move v1, v3

    .line 148
    goto :goto_7

    .line 150
    :cond_12
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_46

    .line 153
    :goto_1a
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    .line 154
    .local v0, "extractor":Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;
    invoke-virtual {v0}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->isPrepared()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 155
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->buildTracks(Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;)V

    .line 156
    iput-boolean v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->prepared:Z

    .line 157
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->maybeStartLoading()V

    move v1, v2

    .line 158
    goto :goto_7

    .line 159
    :cond_32
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-le v1, v2, :cond_46

    .line 160
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->clear()V

    goto :goto_1a

    .line 167
    .end local v0    # "extractor":Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;
    :cond_46
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    if-nez v1, :cond_5c

    .line 168
    new-instance v1, Lcom/google/android/exoplayer/upstream/Loader;

    const-string v4, "Loader:HLS"

    invoke-direct {v1, v4}, Lcom/google/android/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    .line 169
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loadControl:Lcom/google/android/exoplayer/LoadControl;

    iget v4, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->bufferSizeContribution:I

    invoke-interface {v1, p0, v4}, Lcom/google/android/exoplayer/LoadControl;->register(Ljava/lang/Object;I)V

    .line 170
    iput-boolean v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loadControlRegistered:Z

    .line 172
    :cond_5c
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/upstream/Loader;->isLoading()Z

    move-result v1

    if-nez v1, :cond_68

    .line 176
    iput-wide p1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->pendingResetPositionUs:J

    .line 177
    iput-wide p1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->downstreamPositionUs:J

    .line 179
    :cond_68
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->maybeStartLoading()V

    move v1, v3

    .line 180
    goto :goto_7
.end method

.method public readData(IJLcom/google/android/exoplayer/MediaFormatHolder;Lcom/google/android/exoplayer/SampleHolder;)I
    .registers 16
    .param p1, "track"    # I
    .param p2, "playbackPositionUs"    # J
    .param p4, "formatHolder"    # Lcom/google/android/exoplayer/MediaFormatHolder;
    .param p5, "sampleHolder"    # Lcom/google/android/exoplayer/SampleHolder;

    .prologue
    .line 294
    iget-boolean v6, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->prepared:Z

    invoke-static {v6}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 295
    iput-wide p2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->downstreamPositionUs:J

    .line 297
    iget-object v6, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->pendingDiscontinuities:[Z

    aget-boolean v6, v6, p1

    if-nez v6, :cond_13

    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->isPendingReset()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 298
    :cond_13
    const/4 v6, -0x2

    .line 353
    :goto_14
    return v6

    .line 301
    :cond_15
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->getCurrentExtractor()Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    move-result-object v1

    .line 302
    .local v1, "extractor":Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;
    invoke-virtual {v1}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->isPrepared()Z

    move-result v6

    if-nez v6, :cond_21

    .line 303
    const/4 v6, -0x2

    goto :goto_14

    .line 306
    :cond_21
    iget-object v4, v1, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->format:Lcom/google/android/exoplayer/chunk/Format;

    .line 307
    .local v4, "format":Lcom/google/android/exoplayer/chunk/Format;
    iget-object v6, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->downstreamFormat:Lcom/google/android/exoplayer/chunk/Format;

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer/chunk/Format;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_32

    .line 308
    iget v6, v1, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->trigger:I

    iget-wide v8, v1, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->startTimeUs:J

    invoke-direct {p0, v4, v6, v8, v9}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->notifyDownstreamFormatChanged(Lcom/google/android/exoplayer/chunk/Format;IJ)V

    .line 310
    :cond_32
    iput-object v4, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->downstreamFormat:Lcom/google/android/exoplayer/chunk/Format;

    .line 312
    iget-object v6, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_49

    .line 315
    iget-object v6, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->configureSpliceTo(Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;)V

    .line 318
    :cond_49
    iget-object v6, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractorTrackIndices:[I

    aget v3, v6, p1

    .line 319
    .local v3, "extractorTrack":I
    const/4 v2, 0x0

    .line 320
    .local v2, "extractorIndex":I
    :cond_4e
    iget-object v6, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    add-int/lit8 v7, v2, 0x1

    if-le v6, v7, :cond_70

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->hasSamples(I)Z

    move-result v6

    if-nez v6, :cond_70

    .line 323
    iget-object v6, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v6, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "extractor":Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;
    check-cast v1, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    .line 324
    .restart local v1    # "extractor":Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;
    invoke-virtual {v1}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->isPrepared()Z

    move-result v6

    if-nez v6, :cond_4e

    .line 325
    const/4 v6, -0x2

    goto :goto_14

    .line 329
    :cond_70
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->getMediaFormat(I)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v5

    .line 330
    .local v5, "mediaFormat":Lcom/google/android/exoplayer/MediaFormat;
    if-eqz v5, :cond_8c

    .line 331
    iget-object v6, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->downstreamMediaFormats:[Lcom/google/android/exoplayer/MediaFormat;

    aget-object v6, v6, p1

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer/MediaFormat;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_88

    .line 332
    iput-object v5, p4, Lcom/google/android/exoplayer/MediaFormatHolder;->format:Lcom/google/android/exoplayer/MediaFormat;

    .line 333
    iget-object v6, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->downstreamMediaFormats:[Lcom/google/android/exoplayer/MediaFormat;

    aput-object v5, v6, p1

    .line 334
    const/4 v6, -0x4

    goto :goto_14

    .line 340
    :cond_88
    iget-object v6, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->downstreamMediaFormats:[Lcom/google/android/exoplayer/MediaFormat;

    aput-object v5, v6, p1

    .line 343
    :cond_8c
    invoke-virtual {v1, v3, p5}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->getSample(ILcom/google/android/exoplayer/SampleHolder;)Z

    move-result v6

    if-eqz v6, :cond_ab

    .line 344
    iget-wide v6, p5, Lcom/google/android/exoplayer/SampleHolder;->timeUs:J

    iget-wide v8, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->lastSeekPositionUs:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_a7

    const/4 v0, 0x1

    .line 345
    .local v0, "decodeOnly":Z
    :goto_9b
    iget v7, p5, Lcom/google/android/exoplayer/SampleHolder;->flags:I

    if-eqz v0, :cond_a9

    const/high16 v6, 0x8000000

    :goto_a1
    or-int/2addr v6, v7

    iput v6, p5, Lcom/google/android/exoplayer/SampleHolder;->flags:I

    .line 346
    const/4 v6, -0x3

    goto/16 :goto_14

    .line 344
    .end local v0    # "decodeOnly":Z
    :cond_a7
    const/4 v0, 0x0

    goto :goto_9b

    .line 345
    .restart local v0    # "decodeOnly":Z
    :cond_a9
    const/4 v6, 0x0

    goto :goto_a1

    .line 349
    .end local v0    # "decodeOnly":Z
    :cond_ab
    iget-boolean v6, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loadingFinished:Z

    if-eqz v6, :cond_b2

    .line 350
    const/4 v6, -0x1

    goto/16 :goto_14

    .line 353
    :cond_b2
    const/4 v6, -0x2

    goto/16 :goto_14
.end method

.method public readDiscontinuity(I)J
    .registers 4
    .param p1, "track"    # I

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->pendingDiscontinuities:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_e

    .line 285
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->pendingDiscontinuities:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 286
    iget-wide v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->lastSeekPositionUs:J

    .line 288
    :goto_d
    return-wide v0

    :cond_e
    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_d
.end method

.method public register()Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;
    .registers 2

    .prologue
    .line 139
    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->remainingReleaseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->remainingReleaseCount:I

    .line 140
    return-object p0
.end method

.method public release()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 406
    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->remainingReleaseCount:I

    if-lez v0, :cond_29

    const/4 v0, 0x1

    :goto_6
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 407
    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->remainingReleaseCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->remainingReleaseCount:I

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    if-eqz v0, :cond_28

    .line 408
    iget-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loadControlRegistered:Z

    if-eqz v0, :cond_20

    .line 409
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loadControl:Lcom/google/android/exoplayer/LoadControl;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer/LoadControl;->unregister(Ljava/lang/Object;)V

    .line 410
    iput-boolean v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loadControlRegistered:Z

    .line 412
    :cond_20
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->release()V

    .line 413
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    .line 415
    :cond_28
    return-void

    :cond_29
    move v0, v1

    .line 406
    goto :goto_6
.end method

.method public seekToUs(J)V
    .registers 6
    .param p1, "positionUs"    # J

    .prologue
    .line 367
    iget-boolean v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->prepared:Z

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 368
    iget v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->enabledTrackCount:I

    if-lez v2, :cond_28

    const/4 v2, 0x1

    :goto_a
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 370
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->chunkSource:Lcom/google/android/exoplayer/hls/HlsChunkSource;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->isLive()Z

    move-result v2

    if-eqz v2, :cond_17

    const-wide/16 p1, 0x0

    .line 373
    :cond_17
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->isPendingReset()Z

    move-result v2

    if-eqz v2, :cond_2a

    iget-wide v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->pendingResetPositionUs:J

    .line 374
    .local v0, "currentPositionUs":J
    :goto_1f
    iput-wide p1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->downstreamPositionUs:J

    .line 375
    iput-wide p1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->lastSeekPositionUs:J

    .line 376
    cmp-long v2, v0, p1

    if-nez v2, :cond_2d

    .line 381
    :goto_27
    return-void

    .line 368
    .end local v0    # "currentPositionUs":J
    :cond_28
    const/4 v2, 0x0

    goto :goto_a

    .line 373
    :cond_2a
    iget-wide v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->downstreamPositionUs:J

    goto :goto_1f

    .line 380
    .restart local v0    # "currentPositionUs":J
    :cond_2d
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->seekToInternal(J)V

    goto :goto_27
.end method

.method usToMs(J)J
    .registers 6
    .param p1, "timeUs"    # J

    .prologue
    .line 775
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    return-wide v0
.end method
