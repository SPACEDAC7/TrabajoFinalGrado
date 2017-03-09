.class public Lcom/google/android/exoplayer/chunk/ChunkSampleSource;
.super Ljava/lang/Object;
.source "ChunkSampleSource.java"

# interfaces
.implements Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;
.implements Lcom/google/android/exoplayer/SampleSource;
.implements Lcom/google/android/exoplayer/upstream/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_MIN_LOADABLE_RETRY_COUNT:I = 0x3

.field private static final NO_RESET_PENDING:J = -0x8000000000000000L

.field private static final STATE_ENABLED:I = 0x3

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_INITIALIZED:I = 0x1

.field private static final STATE_PREPARED:I = 0x2


# instance fields
.field private final bufferSizeContribution:I

.field private final chunkSource:Lcom/google/android/exoplayer/chunk/ChunkSource;

.field private currentLoadStartTimeMs:J

.field private currentLoadableException:Ljava/io/IOException;

.field private currentLoadableExceptionCount:I

.field private currentLoadableExceptionTimestamp:J

.field private final currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

.field private downstreamDrmInitData:Lcom/google/android/exoplayer/drm/DrmInitData;

.field private downstreamFormat:Lcom/google/android/exoplayer/chunk/Format;

.field private downstreamMediaFormat:Lcom/google/android/exoplayer/MediaFormat;

.field private downstreamPositionUs:J

.field private enabledTrackCount:I

.field private final eventHandler:Landroid/os/Handler;

.field private final eventListener:Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;

.field private final eventSourceId:I

.field private lastPerformedBufferOperation:J

.field private lastSeekPositionUs:J

.field private final loadControl:Lcom/google/android/exoplayer/LoadControl;

.field private loader:Lcom/google/android/exoplayer/upstream/Loader;

.field private loadingFinished:Z

.field private final mediaChunks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/exoplayer/chunk/BaseMediaChunk;",
            ">;"
        }
    .end annotation
.end field

.field private final minLoadableRetryCount:I

.field private pendingDiscontinuity:Z

.field private pendingResetPositionUs:J

.field private final readOnlyMediaChunks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/chunk/BaseMediaChunk;",
            ">;"
        }
    .end annotation
.end field

.field protected final sampleQueue:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

.field private state:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/chunk/ChunkSource;Lcom/google/android/exoplayer/LoadControl;I)V
    .registers 11
    .param p1, "chunkSource"    # Lcom/google/android/exoplayer/chunk/ChunkSource;
    .param p2, "loadControl"    # Lcom/google/android/exoplayer/LoadControl;
    .param p3, "bufferSizeContribution"    # I

    .prologue
    const/4 v4, 0x0

    .line 101
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSource;Lcom/google/android/exoplayer/LoadControl;ILandroid/os/Handler;Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;I)V

    .line 102
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/chunk/ChunkSource;Lcom/google/android/exoplayer/LoadControl;ILandroid/os/Handler;Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;I)V
    .registers 15
    .param p1, "chunkSource"    # Lcom/google/android/exoplayer/chunk/ChunkSource;
    .param p2, "loadControl"    # Lcom/google/android/exoplayer/LoadControl;
    .param p3, "bufferSizeContribution"    # I
    .param p4, "eventHandler"    # Landroid/os/Handler;
    .param p5, "eventListener"    # Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;
    .param p6, "eventSourceId"    # I

    .prologue
    .line 116
    const/4 v7, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSource;Lcom/google/android/exoplayer/LoadControl;ILandroid/os/Handler;Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;II)V

    .line 118
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/chunk/ChunkSource;Lcom/google/android/exoplayer/LoadControl;ILandroid/os/Handler;Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;II)V
    .registers 10
    .param p1, "chunkSource"    # Lcom/google/android/exoplayer/chunk/ChunkSource;
    .param p2, "loadControl"    # Lcom/google/android/exoplayer/LoadControl;
    .param p3, "bufferSizeContribution"    # I
    .param p4, "eventHandler"    # Landroid/os/Handler;
    .param p5, "eventListener"    # Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;
    .param p6, "eventSourceId"    # I
    .param p7, "minLoadableRetryCount"    # I

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->chunkSource:Lcom/google/android/exoplayer/chunk/ChunkSource;

    .line 135
    iput-object p2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loadControl:Lcom/google/android/exoplayer/LoadControl;

    .line 136
    iput p3, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->bufferSizeContribution:I

    .line 137
    iput-object p4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventHandler:Landroid/os/Handler;

    .line 138
    iput-object p5, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventListener:Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;

    .line 139
    iput p6, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventSourceId:I

    .line 140
    iput p7, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->minLoadableRetryCount:I

    .line 141
    new-instance v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    invoke-direct {v0}, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    .line 142
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    .line 143
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->readOnlyMediaChunks:Ljava/util/List;

    .line 144
    new-instance v0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-interface {p2}, Lcom/google/android/exoplayer/LoadControl;->getAllocator()Lcom/google/android/exoplayer/upstream/Allocator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;-><init>(Lcom/google/android/exoplayer/upstream/Allocator;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->sampleQueue:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    .line 145
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    .line 146
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->pendingResetPositionUs:J

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    .prologue
    .line 43
    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventSourceId:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;)Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventListener:Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;

    return-object v0
.end method

.method private clearCurrentLoadable()V
    .registers 3

    .prologue
    .line 426
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    .line 427
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->clearCurrentLoadableException()V

    .line 428
    return-void
.end method

.method private clearCurrentLoadableException()V
    .registers 2

    .prologue
    .line 431
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableException:Ljava/io/IOException;

    .line 432
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableExceptionCount:I

    .line 433
    return-void
.end method

.method private discardUpstreamMediaChunks(I)Z
    .registers 9
    .param p1, "queueLength"    # I

    .prologue
    const/4 v6, 0x0

    .line 586
    iget-object v3, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-gt v3, p1, :cond_b

    move v3, v6

    .line 601
    :goto_a
    return v3

    .line 589
    :cond_b
    const-wide/16 v4, 0x0

    .line 590
    .local v4, "startTimeUs":J
    iget-object v3, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;

    iget-wide v0, v3, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->endTimeUs:J

    .line 592
    .local v0, "endTimeUs":J
    const/4 v2, 0x0

    .line 593
    .local v2, "removed":Lcom/google/android/exoplayer/chunk/BaseMediaChunk;
    :goto_18
    iget-object v3, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-le v3, p1, :cond_2d

    .line 594
    iget-object v3, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "removed":Lcom/google/android/exoplayer/chunk/BaseMediaChunk;
    check-cast v2, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;

    .line 595
    .restart local v2    # "removed":Lcom/google/android/exoplayer/chunk/BaseMediaChunk;
    iget-wide v4, v2, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->startTimeUs:J

    .line 596
    iput-boolean v6, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loadingFinished:Z

    goto :goto_18

    .line 598
    :cond_2d
    iget-object v3, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->sampleQueue:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->getFirstSampleIndex()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->discardUpstreamSamples(I)V

    .line 600
    invoke-direct {p0, v4, v5, v0, v1}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->notifyUpstreamDiscarded(JJ)V

    .line 601
    const/4 v3, 0x1

    goto :goto_a
.end method

.method private doChunkOperation()V
    .registers 7

    .prologue
    .line 571
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->endOfStream:Z

    .line 572
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->readOnlyMediaChunks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->queueSize:I

    .line 573
    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->chunkSource:Lcom/google/android/exoplayer/chunk/ChunkSource;

    iget-object v3, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->readOnlyMediaChunks:Ljava/util/List;

    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->pendingResetPositionUs:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v0, v4

    if-eqz v0, :cond_29

    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->pendingResetPositionUs:J

    :goto_1d
    iget-object v4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    invoke-interface {v2, v3, v0, v1, v4}, Lcom/google/android/exoplayer/chunk/ChunkSource;->getChunkOperation(Ljava/util/List;JLcom/google/android/exoplayer/chunk/ChunkOperationHolder;)V

    .line 576
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-boolean v0, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->endOfStream:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loadingFinished:Z

    .line 577
    return-void

    .line 573
    :cond_29
    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->downstreamPositionUs:J

    goto :goto_1d
.end method

.method private getNextLoadPositionUs()J
    .registers 3

    .prologue
    .line 481
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 482
    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->pendingResetPositionUs:J

    .line 484
    :goto_8
    return-wide v0

    :cond_9
    iget-boolean v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loadingFinished:Z

    if-eqz v0, :cond_10

    const-wide/16 v0, -0x1

    goto :goto_8

    :cond_10
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;

    iget-wide v0, v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->endTimeUs:J

    goto :goto_8
.end method

.method private getRetryDelayMillis(J)J
    .registers 8
    .param p1, "errorCount"    # J

    .prologue
    .line 613
    const-wide/16 v0, 0x1

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private isMediaChunk(Lcom/google/android/exoplayer/chunk/Chunk;)Z
    .registers 3
    .param p1, "chunk"    # Lcom/google/android/exoplayer/chunk/Chunk;

    .prologue
    .line 605
    instance-of v0, p1, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;

    return v0
.end method

.method private isPendingReset()Z
    .registers 5

    .prologue
    .line 609
    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->pendingResetPositionUs:J

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

.method private maybeStartLoading()V
    .registers 13

    .prologue
    const-wide/16 v6, -0x1

    .line 543
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v10, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    .line 544
    .local v10, "currentLoadable":Lcom/google/android/exoplayer/chunk/Chunk;
    if-nez v10, :cond_9

    .line 563
    :goto_8
    return-void

    .line 548
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadStartTimeMs:J

    .line 549
    invoke-direct {p0, v10}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->isMediaChunk(Lcom/google/android/exoplayer/chunk/Chunk;)Z

    move-result v0

    if-eqz v0, :cond_44

    move-object v11, v10

    .line 550
    check-cast v11, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;

    .line 551
    .local v11, "mediaChunk":Lcom/google/android/exoplayer/chunk/BaseMediaChunk;
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->sampleQueue:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v11, v0}, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->init(Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;)V

    .line 552
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v0, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 553
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 554
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->pendingResetPositionUs:J

    .line 556
    :cond_2c
    iget-object v0, v11, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-wide v1, v0, Lcom/google/android/exoplayer/upstream/DataSpec;->length:J

    iget v3, v11, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->type:I

    iget v4, v11, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->trigger:I

    iget-object v5, v11, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget-wide v6, v11, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->startTimeUs:J

    iget-wide v8, v11, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->endTimeUs:J

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->notifyLoadStarted(JIILcom/google/android/exoplayer/chunk/Format;JJ)V

    .line 562
    .end local v11    # "mediaChunk":Lcom/google/android/exoplayer/chunk/BaseMediaChunk;
    :goto_3e
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0, v10, p0}, Lcom/google/android/exoplayer/upstream/Loader;->startLoading(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Lcom/google/android/exoplayer/upstream/Loader$Callback;)V

    goto :goto_8

    .line 559
    :cond_44
    iget-object v0, v10, Lcom/google/android/exoplayer/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-wide v1, v0, Lcom/google/android/exoplayer/upstream/DataSpec;->length:J

    iget v3, v10, Lcom/google/android/exoplayer/chunk/Chunk;->type:I

    iget v4, v10, Lcom/google/android/exoplayer/chunk/Chunk;->trigger:I

    iget-object v5, v10, Lcom/google/android/exoplayer/chunk/Chunk;->format:Lcom/google/android/exoplayer/chunk/Format;

    move-object v0, p0

    move-wide v8, v6

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->notifyLoadStarted(JIILcom/google/android/exoplayer/chunk/Format;JJ)V

    goto :goto_3e
.end method

.method private notifyDownstreamFormatChanged(Lcom/google/android/exoplayer/chunk/Format;IJ)V
    .registers 12
    .param p1, "format"    # Lcom/google/android/exoplayer/chunk/Format;
    .param p2, "trigger"    # I
    .param p3, "positionUs"    # J

    .prologue
    .line 683
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventListener:Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;

    if-eqz v0, :cond_16

    .line 684
    iget-object v6, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$6;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$6;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;Lcom/google/android/exoplayer/chunk/Format;IJ)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 692
    :cond_16
    return-void
.end method

.method private notifyLoadCanceled(J)V
    .registers 6
    .param p1, "bytesLoaded"    # J

    .prologue
    .line 648
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventListener:Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;

    if-eqz v0, :cond_12

    .line 649
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$3;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 656
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
    .line 636
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventListener:Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;

    if-eqz v2, :cond_2a

    .line 637
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$2;

    move-object/from16 v4, p0

    move-wide/from16 v5, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    move-wide/from16 v14, p10

    move-wide/from16 v16, p12

    invoke-direct/range {v3 .. v17}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$2;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;JIILcom/google/android/exoplayer/chunk/Format;JJJJ)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 645
    :cond_2a
    return-void
.end method

.method private notifyLoadError(Ljava/io/IOException;)V
    .registers 4
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 659
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventListener:Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;

    if-eqz v0, :cond_12

    .line 660
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$4;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$4;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 667
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
    .line 622
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventListener:Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;

    if-eqz v0, :cond_1d

    .line 623
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$1;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-direct/range {v1 .. v11}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$1;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;JIILcom/google/android/exoplayer/chunk/Format;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 631
    :cond_1d
    return-void
.end method

.method private notifyUpstreamDiscarded(JJ)V
    .registers 12
    .param p1, "mediaStartTimeUs"    # J
    .param p3, "mediaEndTimeUs"    # J

    .prologue
    .line 670
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventListener:Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;

    if-eqz v0, :cond_15

    .line 671
    iget-object v6, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$5;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$5;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;JJ)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 679
    :cond_15
    return-void
.end method

.method private restartFrom(J)V
    .registers 4
    .param p1, "positionUs"    # J

    .prologue
    .line 413
    iput-wide p1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->pendingResetPositionUs:J

    .line 414
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loadingFinished:Z

    .line 415
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 416
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->cancelLoading()V

    .line 423
    :goto_12
    return-void

    .line 418
    :cond_13
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->sampleQueue:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->clear()V

    .line 419
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 420
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->clearCurrentLoadable()V

    .line 421
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->updateLoadControl()V

    goto :goto_12
.end method

.method private resumeFromBackOff()V
    .registers 5

    .prologue
    .line 496
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableException:Ljava/io/IOException;

    .line 498
    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v0, v2, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    .line 499
    .local v0, "backedOffChunk":Lcom/google/android/exoplayer/chunk/Chunk;
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->isMediaChunk(Lcom/google/android/exoplayer/chunk/Chunk;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 500
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->doChunkOperation()V

    .line 501
    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget v2, v2, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->queueSize:I

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->discardUpstreamMediaChunks(I)Z

    .line 502
    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v2, v2, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    if-ne v2, v0, :cond_23

    .line 504
    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v2, v0, p0}, Lcom/google/android/exoplayer/upstream/Loader;->startLoading(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Lcom/google/android/exoplayer/upstream/Loader$Callback;)V

    .line 540
    :goto_22
    return-void

    .line 507
    :cond_23
    invoke-virtual {v0}, Lcom/google/android/exoplayer/chunk/Chunk;->bytesLoaded()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->notifyLoadCanceled(J)V

    .line 509
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->maybeStartLoading()V

    goto :goto_22

    .line 514
    :cond_2e
    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_3c

    .line 517
    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v2, v0, p0}, Lcom/google/android/exoplayer/upstream/Loader;->startLoading(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Lcom/google/android/exoplayer/upstream/Loader$Callback;)V

    goto :goto_22

    .line 523
    :cond_3c
    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;

    .line 524
    .local v1, "removedChunk":Lcom/google/android/exoplayer/chunk/BaseMediaChunk;
    if-ne v0, v1, :cond_5e

    const/4 v2, 0x1

    :goto_47
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 525
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->doChunkOperation()V

    .line 526
    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 528
    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v2, v2, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    if-ne v2, v0, :cond_60

    .line 530
    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v2, v0, p0}, Lcom/google/android/exoplayer/upstream/Loader;->startLoading(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Lcom/google/android/exoplayer/upstream/Loader$Callback;)V

    goto :goto_22

    .line 524
    :cond_5e
    const/4 v2, 0x0

    goto :goto_47

    .line 533
    :cond_60
    invoke-virtual {v0}, Lcom/google/android/exoplayer/chunk/Chunk;->bytesLoaded()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->notifyLoadCanceled(J)V

    .line 536
    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget v2, v2, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->queueSize:I

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->discardUpstreamMediaChunks(I)Z

    .line 537
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->clearCurrentLoadableException()V

    .line 538
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->maybeStartLoading()V

    goto :goto_22
.end method

.method private updateLoadControl()V
    .registers 15

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 436
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 437
    .local v12, "now":J
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->getNextLoadPositionUs()J

    move-result-wide v4

    .line 438
    .local v4, "nextLoadPositionUs":J
    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableException:Ljava/io/IOException;

    if-eqz v2, :cond_65

    move v10, v0

    .line 439
    .local v10, "isBackedOff":Z
    :goto_f
    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/upstream/Loader;->isLoading()Z

    move-result v2

    if-nez v2, :cond_19

    if-eqz v10, :cond_67

    :cond_19
    move v6, v0

    .line 443
    .local v6, "loadingOrBackedOff":Z
    :goto_1a
    if-nez v6, :cond_47

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    if-nez v0, :cond_28

    const-wide/16 v0, -0x1

    cmp-long v0, v4, v0

    if-nez v0, :cond_32

    :cond_28
    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->lastPerformedBufferOperation:J

    sub-long v0, v12, v0

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_47

    .line 446
    :cond_32
    iput-wide v12, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->lastPerformedBufferOperation:J

    .line 447
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->doChunkOperation()V

    .line 448
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget v0, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->queueSize:I

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->discardUpstreamMediaChunks(I)Z

    move-result v7

    .line 450
    .local v7, "chunksDiscarded":Z
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    if-nez v0, :cond_69

    .line 452
    const-wide/16 v4, -0x1

    .line 460
    .end local v7    # "chunksDiscarded":Z
    :cond_47
    :goto_47
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loadControl:Lcom/google/android/exoplayer/LoadControl;

    iget-wide v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->downstreamPositionUs:J

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer/LoadControl;->update(Ljava/lang/Object;JJZ)Z

    move-result v11

    .line 463
    .local v11, "nextLoader":Z
    if-eqz v10, :cond_70

    .line 464
    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableExceptionTimestamp:J

    sub-long v8, v12, v0

    .line 465
    .local v8, "elapsedMillis":J
    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableExceptionCount:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->getRetryDelayMillis(J)J

    move-result-wide v0

    cmp-long v0, v8, v0

    if-ltz v0, :cond_64

    .line 466
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->resumeFromBackOff()V

    .line 474
    .end local v8    # "elapsedMillis":J
    :cond_64
    :goto_64
    return-void

    .end local v6    # "loadingOrBackedOff":Z
    .end local v10    # "isBackedOff":Z
    .end local v11    # "nextLoader":Z
    :cond_65
    move v10, v1

    .line 438
    goto :goto_f

    .restart local v10    # "isBackedOff":Z
    :cond_67
    move v6, v1

    .line 439
    goto :goto_1a

    .line 453
    .restart local v6    # "loadingOrBackedOff":Z
    .restart local v7    # "chunksDiscarded":Z
    :cond_69
    if-eqz v7, :cond_47

    .line 455
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->getNextLoadPositionUs()J

    move-result-wide v4

    goto :goto_47

    .line 471
    .end local v7    # "chunksDiscarded":Z
    .restart local v11    # "nextLoader":Z
    :cond_70
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->isLoading()Z

    move-result v0

    if-nez v0, :cond_64

    if-eqz v11, :cond_64

    .line 472
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->maybeStartLoading()V

    goto :goto_64
.end method


# virtual methods
.method public continueBuffering(IJ)Z
    .registers 8
    .param p1, "track"    # I
    .param p2, "positionUs"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 221
    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_23

    move v0, v1

    :goto_8
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 222
    iput-wide p2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->downstreamPositionUs:J

    .line 223
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->chunkSource:Lcom/google/android/exoplayer/chunk/ChunkSource;

    invoke-interface {v0, p2, p3}, Lcom/google/android/exoplayer/chunk/ChunkSource;->continueBuffering(J)V

    .line 224
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->updateLoadControl()V

    .line 225
    iget-boolean v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loadingFinished:Z

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->sampleQueue:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    :cond_21
    move v2, v1

    :cond_22
    return v2

    :cond_23
    move v0, v2

    .line 221
    goto :goto_8
.end method

.method public disable(I)V
    .registers 6
    .param p1, "track"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 201
    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_33

    move v0, v1

    :goto_8
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 202
    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->enabledTrackCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->enabledTrackCount:I

    if-nez v0, :cond_35

    :goto_13
    invoke-static {v1}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 203
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    .line 205
    :try_start_19
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->chunkSource:Lcom/google/android/exoplayer/chunk/ChunkSource;

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/chunk/ChunkSource;->disable(Ljava/util/List;)V
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_4a

    .line 207
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loadControl:Lcom/google/android/exoplayer/LoadControl;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer/LoadControl;->unregister(Ljava/lang/Object;)V

    .line 208
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 209
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->cancelLoading()V

    .line 217
    :goto_32
    return-void

    :cond_33
    move v0, v2

    .line 201
    goto :goto_8

    :cond_35
    move v1, v2

    .line 202
    goto :goto_13

    .line 211
    :cond_37
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->sampleQueue:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->clear()V

    .line 212
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 213
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->clearCurrentLoadable()V

    .line 214
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loadControl:Lcom/google/android/exoplayer/LoadControl;

    invoke-interface {v0}, Lcom/google/android/exoplayer/LoadControl;->trimAllocator()V

    goto :goto_32

    .line 207
    :catchall_4a
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loadControl:Lcom/google/android/exoplayer/LoadControl;

    invoke-interface {v1, p0}, Lcom/google/android/exoplayer/LoadControl;->unregister(Ljava/lang/Object;)V

    .line 208
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/upstream/Loader;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 209
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/upstream/Loader;->cancelLoading()V

    .line 214
    :goto_5d
    throw v0

    .line 211
    :cond_5e
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->sampleQueue:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->clear()V

    .line 212
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 213
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->clearCurrentLoadable()V

    .line 214
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loadControl:Lcom/google/android/exoplayer/LoadControl;

    invoke-interface {v1}, Lcom/google/android/exoplayer/LoadControl;->trimAllocator()V

    goto :goto_5d
.end method

.method public enable(IJ)V
    .registers 10
    .param p1, "track"    # I
    .param p2, "positionUs"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 185
    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_36

    move v0, v1

    :goto_9
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 186
    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->enabledTrackCount:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->enabledTrackCount:I

    if-nez v0, :cond_38

    :goto_14
    invoke-static {v1}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 187
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    .line 188
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->chunkSource:Lcom/google/android/exoplayer/chunk/ChunkSource;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer/chunk/ChunkSource;->enable(I)V

    .line 189
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loadControl:Lcom/google/android/exoplayer/LoadControl;

    iget v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->bufferSizeContribution:I

    invoke-interface {v0, p0, v1}, Lcom/google/android/exoplayer/LoadControl;->register(Ljava/lang/Object;I)V

    .line 190
    iput-object v4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->downstreamFormat:Lcom/google/android/exoplayer/chunk/Format;

    .line 191
    iput-object v4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->downstreamMediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    .line 192
    iput-object v4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->downstreamDrmInitData:Lcom/google/android/exoplayer/drm/DrmInitData;

    .line 193
    iput-wide p2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->downstreamPositionUs:J

    .line 194
    iput-wide p2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->lastSeekPositionUs:J

    .line 195
    iput-boolean v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->pendingDiscontinuity:Z

    .line 196
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->restartFrom(J)V

    .line 197
    return-void

    :cond_36
    move v0, v2

    .line 185
    goto :goto_9

    :cond_38
    move v1, v2

    .line 186
    goto :goto_14
.end method

.method public getBufferedPositionUs()J
    .registers 5

    .prologue
    .line 336
    iget v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_12

    const/4 v2, 0x1

    :goto_6
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 337
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->isPendingReset()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 338
    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->pendingResetPositionUs:J

    .line 343
    :cond_11
    :goto_11
    return-wide v0

    .line 336
    :cond_12
    const/4 v2, 0x0

    goto :goto_6

    .line 339
    :cond_14
    iget-boolean v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loadingFinished:Z

    if-eqz v2, :cond_1b

    .line 340
    const-wide/16 v0, -0x3

    goto :goto_11

    .line 342
    :cond_1b
    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->sampleQueue:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->getLargestParsedTimestampUs()J

    move-result-wide v0

    .line 343
    .local v0, "largestParsedTimestampUs":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_11

    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->downstreamPositionUs:J

    goto :goto_11
.end method

.method public getFormat(I)Lcom/google/android/exoplayer/MediaFormat;
    .registers 4
    .param p1, "track"    # I

    .prologue
    .line 179
    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_15

    :cond_a
    const/4 v0, 0x1

    :goto_b
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 180
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->chunkSource:Lcom/google/android/exoplayer/chunk/ChunkSource;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer/chunk/ChunkSource;->getFormat(I)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    return-object v0

    .line 179
    :cond_15
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getTrackCount()I
    .registers 3

    .prologue
    .line 173
    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_15

    :cond_a
    const/4 v0, 0x1

    :goto_b
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 174
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->chunkSource:Lcom/google/android/exoplayer/chunk/ChunkSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer/chunk/ChunkSource;->getTrackCount()I

    move-result v0

    return v0

    .line 173
    :cond_15
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public maybeThrowError()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 327
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableException:Ljava/io/IOException;

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableExceptionCount:I

    iget v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->minLoadableRetryCount:I

    if-le v0, v1, :cond_d

    .line 328
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableException:Ljava/io/IOException;

    throw v0

    .line 329
    :cond_d
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    if-nez v0, :cond_18

    .line 330
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->chunkSource:Lcom/google/android/exoplayer/chunk/ChunkSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer/chunk/ChunkSource;->maybeThrowError()V

    .line 332
    :cond_18
    return-void
.end method

.method public onLoadCanceled(Lcom/google/android/exoplayer/upstream/Loader$Loadable;)V
    .registers 6
    .param p1, "loadable"    # Lcom/google/android/exoplayer/upstream/Loader$Loadable;

    .prologue
    .line 378
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v0, v1, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    .line 379
    .local v0, "currentLoadable":Lcom/google/android/exoplayer/chunk/Chunk;
    invoke-virtual {v0}, Lcom/google/android/exoplayer/chunk/Chunk;->bytesLoaded()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->notifyLoadCanceled(J)V

    .line 380
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->clearCurrentLoadable()V

    .line 381
    iget v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_19

    .line 382
    iget-wide v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->pendingResetPositionUs:J

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->restartFrom(J)V

    .line 389
    :goto_18
    return-void

    .line 384
    :cond_19
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->sampleQueue:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->clear()V

    .line 385
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 386
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->clearCurrentLoadable()V

    .line 387
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loadControl:Lcom/google/android/exoplayer/LoadControl;

    invoke-interface {v1}, Lcom/google/android/exoplayer/LoadControl;->trimAllocator()V

    goto :goto_18
.end method

.method public onLoadCompleted(Lcom/google/android/exoplayer/upstream/Loader$Loadable;)V
    .registers 20
    .param p1, "loadable"    # Lcom/google/android/exoplayer/upstream/Loader$Loadable;

    .prologue
    .line 360
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 361
    .local v12, "now":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadStartTimeMs:J

    sub-long v14, v12, v2

    .line 362
    .local v14, "loadDurationMs":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v0, v2, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    move-object/from16 v16, v0

    .line 363
    .local v16, "currentLoadable":Lcom/google/android/exoplayer/chunk/Chunk;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->chunkSource:Lcom/google/android/exoplayer/chunk/ChunkSource;

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer/chunk/ChunkSource;->onChunkLoadCompleted(Lcom/google/android/exoplayer/chunk/Chunk;)V

    .line 364
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->isMediaChunk(Lcom/google/android/exoplayer/chunk/Chunk;)Z

    move-result v2

    if-eqz v2, :cond_4d

    move-object/from16 v17, v16

    .line 365
    check-cast v17, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;

    .line 366
    .local v17, "mediaChunk":Lcom/google/android/exoplayer/chunk/BaseMediaChunk;
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer/chunk/Chunk;->bytesLoaded()J

    move-result-wide v3

    move-object/from16 v0, v17

    iget v5, v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->type:I

    move-object/from16 v0, v17

    iget v6, v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->trigger:I

    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->format:Lcom/google/android/exoplayer/chunk/Format;

    move-object/from16 v0, v17

    iget-wide v8, v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->startTimeUs:J

    move-object/from16 v0, v17

    iget-wide v10, v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->endTimeUs:J

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v15}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->notifyLoadCompleted(JIILcom/google/android/exoplayer/chunk/Format;JJJJ)V

    .line 372
    .end local v17    # "mediaChunk":Lcom/google/android/exoplayer/chunk/BaseMediaChunk;
    :goto_46
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->clearCurrentLoadable()V

    .line 373
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->updateLoadControl()V

    .line 374
    return-void

    .line 369
    :cond_4d
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer/chunk/Chunk;->bytesLoaded()J

    move-result-wide v3

    move-object/from16 v0, v16

    iget v5, v0, Lcom/google/android/exoplayer/chunk/Chunk;->type:I

    move-object/from16 v0, v16

    iget v6, v0, Lcom/google/android/exoplayer/chunk/Chunk;->trigger:I

    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/google/android/exoplayer/chunk/Chunk;->format:Lcom/google/android/exoplayer/chunk/Format;

    const-wide/16 v8, -0x1

    const-wide/16 v10, -0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v15}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->notifyLoadCompleted(JIILcom/google/android/exoplayer/chunk/Format;JJJJ)V

    goto :goto_46
.end method

.method public onLoadError(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Ljava/io/IOException;)V
    .registers 5
    .param p1, "loadable"    # Lcom/google/android/exoplayer/upstream/Loader$Loadable;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 393
    iput-object p2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableException:Ljava/io/IOException;

    .line 394
    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableExceptionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableExceptionCount:I

    .line 395
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableExceptionTimestamp:J

    .line 396
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->notifyLoadError(Ljava/io/IOException;)V

    .line 397
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->chunkSource:Lcom/google/android/exoplayer/chunk/ChunkSource;

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v1, v1, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    invoke-interface {v0, v1, p2}, Lcom/google/android/exoplayer/chunk/ChunkSource;->onChunkLoadError(Lcom/google/android/exoplayer/chunk/Chunk;Ljava/lang/Exception;)V

    .line 398
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->updateLoadControl()V

    .line 399
    return-void
.end method

.method protected onSampleRead(Lcom/google/android/exoplayer/chunk/MediaChunk;Lcom/google/android/exoplayer/SampleHolder;)V
    .registers 3
    .param p1, "mediaChunk"    # Lcom/google/android/exoplayer/chunk/MediaChunk;
    .param p2, "sampleHolder"    # Lcom/google/android/exoplayer/SampleHolder;

    .prologue
    .line 410
    return-void
.end method

.method public prepare(J)Z
    .registers 9
    .param p1, "positionUs"    # J

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 158
    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    if-eq v0, v2, :cond_b

    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    if-ne v0, v5, :cond_14

    :cond_b
    move v0, v2

    :goto_c
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 159
    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    if-ne v0, v5, :cond_16

    .line 168
    :goto_13
    return v2

    :cond_14
    move v0, v1

    .line 158
    goto :goto_c

    .line 161
    :cond_16
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->chunkSource:Lcom/google/android/exoplayer/chunk/ChunkSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer/chunk/ChunkSource;->prepare()Z

    move-result v0

    if-nez v0, :cond_20

    move v2, v1

    .line 162
    goto :goto_13

    .line 164
    :cond_20
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->chunkSource:Lcom/google/android/exoplayer/chunk/ChunkSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer/chunk/ChunkSource;->getTrackCount()I

    move-result v0

    if-lez v0, :cond_4a

    .line 165
    new-instance v0, Lcom/google/android/exoplayer/upstream/Loader;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loader:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->chunkSource:Lcom/google/android/exoplayer/chunk/ChunkSource;

    invoke-interface {v4, v1}, Lcom/google/android/exoplayer/chunk/ChunkSource;->getFormat(I)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    .line 167
    :cond_4a
    iput v5, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    goto :goto_13
.end method

.method public readData(IJLcom/google/android/exoplayer/MediaFormatHolder;Lcom/google/android/exoplayer/SampleHolder;)I
    .registers 16
    .param p1, "track"    # I
    .param p2, "positionUs"    # J
    .param p4, "formatHolder"    # Lcom/google/android/exoplayer/MediaFormatHolder;
    .param p5, "sampleHolder"    # Lcom/google/android/exoplayer/SampleHolder;

    .prologue
    .line 240
    iget v6, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_17

    const/4 v6, 0x1

    :goto_6
    invoke-static {v6}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 241
    iput-wide p2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->downstreamPositionUs:J

    .line 243
    iget-boolean v6, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->pendingDiscontinuity:Z

    if-nez v6, :cond_15

    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->isPendingReset()Z

    move-result v6

    if-eqz v6, :cond_19

    .line 244
    :cond_15
    const/4 v6, -0x2

    .line 294
    :goto_16
    return v6

    .line 240
    :cond_17
    const/4 v6, 0x0

    goto :goto_6

    .line 247
    :cond_19
    iget-object v6, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->sampleQueue:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v6}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_58

    const/4 v4, 0x1

    .line 248
    .local v4, "haveSamples":Z
    :goto_22
    iget-object v6, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;

    .line 249
    .local v0, "currentChunk":Lcom/google/android/exoplayer/chunk/BaseMediaChunk;
    :goto_2a
    if-eqz v4, :cond_5a

    iget-object v6, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_5a

    iget-object v6, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    const/4 v7, 0x1

    .line 250
    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;

    invoke-virtual {v6}, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->getFirstSampleIndex()I

    move-result v6

    iget-object v7, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->sampleQueue:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v7}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->getReadIndex()I

    move-result v7

    if-gt v6, v7, :cond_5a

    .line 251
    iget-object v6, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 252
    iget-object v6, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "currentChunk":Lcom/google/android/exoplayer/chunk/BaseMediaChunk;
    check-cast v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;

    .restart local v0    # "currentChunk":Lcom/google/android/exoplayer/chunk/BaseMediaChunk;
    goto :goto_2a

    .line 247
    .end local v0    # "currentChunk":Lcom/google/android/exoplayer/chunk/BaseMediaChunk;
    .end local v4    # "haveSamples":Z
    :cond_58
    const/4 v4, 0x0

    goto :goto_22

    .line 255
    .restart local v0    # "currentChunk":Lcom/google/android/exoplayer/chunk/BaseMediaChunk;
    .restart local v4    # "haveSamples":Z
    :cond_5a
    iget-object v3, v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->format:Lcom/google/android/exoplayer/chunk/Format;

    .line 256
    .local v3, "format":Lcom/google/android/exoplayer/chunk/Format;
    iget-object v6, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->downstreamFormat:Lcom/google/android/exoplayer/chunk/Format;

    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer/chunk/Format;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6b

    .line 257
    iget v6, v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->trigger:I

    iget-wide v8, v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->startTimeUs:J

    invoke-direct {p0, v3, v6, v8, v9}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->notifyDownstreamFormatChanged(Lcom/google/android/exoplayer/chunk/Format;IJ)V

    .line 259
    :cond_6b
    iput-object v3, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->downstreamFormat:Lcom/google/android/exoplayer/chunk/Format;

    .line 261
    if-nez v4, :cond_73

    iget-boolean v6, v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->isMediaFormatFinal:Z

    if-eqz v6, :cond_99

    .line 262
    :cond_73
    invoke-virtual {v0}, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->getMediaFormat()Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v5

    .line 263
    .local v5, "mediaFormat":Lcom/google/android/exoplayer/MediaFormat;
    invoke-virtual {v0}, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->getDrmInitData()Lcom/google/android/exoplayer/drm/DrmInitData;

    move-result-object v2

    .line 264
    .local v2, "drmInitData":Lcom/google/android/exoplayer/drm/DrmInitData;
    iget-object v6, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->downstreamMediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer/MediaFormat;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8b

    iget-object v6, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->downstreamDrmInitData:Lcom/google/android/exoplayer/drm/DrmInitData;

    .line 265
    invoke-static {v6, v2}, Lcom/google/android/exoplayer/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_95

    .line 266
    :cond_8b
    iput-object v5, p4, Lcom/google/android/exoplayer/MediaFormatHolder;->format:Lcom/google/android/exoplayer/MediaFormat;

    .line 267
    iput-object v2, p4, Lcom/google/android/exoplayer/MediaFormatHolder;->drmInitData:Lcom/google/android/exoplayer/drm/DrmInitData;

    .line 268
    iput-object v5, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->downstreamMediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    .line 269
    iput-object v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->downstreamDrmInitData:Lcom/google/android/exoplayer/drm/DrmInitData;

    .line 270
    const/4 v6, -0x4

    goto :goto_16

    .line 276
    :cond_95
    iput-object v5, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->downstreamMediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    .line 277
    iput-object v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->downstreamDrmInitData:Lcom/google/android/exoplayer/drm/DrmInitData;

    .line 280
    .end local v2    # "drmInitData":Lcom/google/android/exoplayer/drm/DrmInitData;
    .end local v5    # "mediaFormat":Lcom/google/android/exoplayer/MediaFormat;
    :cond_99
    if-nez v4, :cond_a5

    .line 281
    iget-boolean v6, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loadingFinished:Z

    if-eqz v6, :cond_a2

    .line 282
    const/4 v6, -0x1

    goto/16 :goto_16

    .line 284
    :cond_a2
    const/4 v6, -0x2

    goto/16 :goto_16

    .line 287
    :cond_a5
    iget-object v6, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->sampleQueue:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v6, p5}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->getSample(Lcom/google/android/exoplayer/SampleHolder;)Z

    move-result v6

    if-eqz v6, :cond_c9

    .line 288
    iget-wide v6, p5, Lcom/google/android/exoplayer/SampleHolder;->timeUs:J

    iget-wide v8, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->lastSeekPositionUs:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_c5

    const/4 v1, 0x1

    .line 289
    .local v1, "decodeOnly":Z
    :goto_b6
    iget v7, p5, Lcom/google/android/exoplayer/SampleHolder;->flags:I

    if-eqz v1, :cond_c7

    const/high16 v6, 0x8000000

    :goto_bc
    or-int/2addr v6, v7

    iput v6, p5, Lcom/google/android/exoplayer/SampleHolder;->flags:I

    .line 290
    invoke-virtual {p0, v0, p5}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->onSampleRead(Lcom/google/android/exoplayer/chunk/MediaChunk;Lcom/google/android/exoplayer/SampleHolder;)V

    .line 291
    const/4 v6, -0x3

    goto/16 :goto_16

    .line 288
    .end local v1    # "decodeOnly":Z
    :cond_c5
    const/4 v1, 0x0

    goto :goto_b6

    .line 289
    .restart local v1    # "decodeOnly":Z
    :cond_c7
    const/4 v6, 0x0

    goto :goto_bc

    .line 294
    .end local v1    # "decodeOnly":Z
    :cond_c9
    const/4 v6, -0x2

    goto/16 :goto_16
.end method

.method public readDiscontinuity(I)J
    .registers 4
    .param p1, "track"    # I

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->pendingDiscontinuity:Z

    if-eqz v0, :cond_a

    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->pendingDiscontinuity:Z

    .line 232
    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->lastSeekPositionUs:J

    .line 234
    :goto_9
    return-wide v0

    :cond_a
    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_9
.end method

.method public register()Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 151
    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    if-nez v0, :cond_c

    move v0, v1

    :goto_6
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 152
    iput v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    .line 153
    return-object p0

    .line 151
    :cond_c
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public release()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 350
    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_19

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 351
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    if-eqz v0, :cond_16

    .line 352
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->release()V

    .line 353
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    .line 355
    :cond_16
    iput v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    .line 356
    return-void

    :cond_19
    move v0, v1

    .line 350
    goto :goto_7
.end method

.method public seekToUs(J)V
    .registers 12
    .param p1, "positionUs"    # J

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 299
    iget v4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    const/4 v7, 0x3

    if-ne v4, v7, :cond_1c

    move v4, v5

    :goto_8
    invoke-static {v4}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 301
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->isPendingReset()Z

    move-result v4

    if-eqz v4, :cond_1e

    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->pendingResetPositionUs:J

    .line 302
    .local v0, "currentPositionUs":J
    :goto_13
    iput-wide p1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->downstreamPositionUs:J

    .line 303
    iput-wide p1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->lastSeekPositionUs:J

    .line 304
    cmp-long v4, v0, p1

    if-nez v4, :cond_21

    .line 323
    :goto_1b
    return-void

    .end local v0    # "currentPositionUs":J
    :cond_1c
    move v4, v6

    .line 299
    goto :goto_8

    .line 301
    :cond_1e
    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->downstreamPositionUs:J

    goto :goto_13

    .line 309
    .restart local v0    # "currentPositionUs":J
    :cond_21
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->isPendingReset()Z

    move-result v4

    if-nez v4, :cond_5f

    iget-object v4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->sampleQueue:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v4, p1, p2}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->skipToKeyframeBefore(J)Z

    move-result v4

    if-eqz v4, :cond_5f

    move v3, v5

    .line 310
    .local v3, "seekInsideBuffer":Z
    :goto_30
    if-eqz v3, :cond_63

    .line 312
    iget-object v4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->sampleQueue:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_61

    move v2, v5

    .line 313
    .local v2, "haveSamples":Z
    :goto_3b
    if-eqz v2, :cond_66

    iget-object v4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-le v4, v5, :cond_66

    iget-object v4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    .line 314
    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->getFirstSampleIndex()I

    move-result v4

    iget-object v6, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->sampleQueue:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v6}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->getReadIndex()I

    move-result v6

    if-gt v4, v6, :cond_66

    .line 315
    iget-object v4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_3b

    .end local v2    # "haveSamples":Z
    .end local v3    # "seekInsideBuffer":Z
    :cond_5f
    move v3, v6

    .line 309
    goto :goto_30

    .restart local v3    # "seekInsideBuffer":Z
    :cond_61
    move v2, v6

    .line 312
    goto :goto_3b

    .line 319
    :cond_63
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->restartFrom(J)V

    .line 322
    :cond_66
    iput-boolean v5, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->pendingDiscontinuity:Z

    goto :goto_1b
.end method

.method protected final usToMs(J)J
    .registers 6
    .param p1, "timeUs"    # J

    .prologue
    .line 617
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    return-wide v0
.end method
