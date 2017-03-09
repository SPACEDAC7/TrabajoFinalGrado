.class final Lcom/google/android/exoplayer/ExoPlayerImplInternal;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final IDLE_INTERVAL_MS:I = 0x3e8

.field private static final MSG_CUSTOM:I = 0x9

.field private static final MSG_DO_SOME_WORK:I = 0x7

.field public static final MSG_ERROR:I = 0x4

.field private static final MSG_INCREMENTAL_PREPARE:I = 0x2

.field private static final MSG_PREPARE:I = 0x1

.field public static final MSG_PREPARED:I = 0x1

.field private static final MSG_RELEASE:I = 0x5

.field private static final MSG_SEEK_TO:I = 0x6

.field private static final MSG_SET_PLAY_WHEN_READY:I = 0x3

.field public static final MSG_SET_PLAY_WHEN_READY_ACK:I = 0x3

.field private static final MSG_SET_RENDERER_SELECTED_TRACK:I = 0x8

.field public static final MSG_STATE_CHANGED:I = 0x2

.field private static final MSG_STOP:I = 0x4

.field private static final PREPARE_INTERVAL_MS:I = 0xa

.field private static final RENDERING_INTERVAL_MS:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ExoPlayerImplInternal"


# instance fields
.field private volatile bufferedPositionUs:J

.field private customMessagesProcessed:I

.field private customMessagesSent:I

.field private volatile durationUs:J

.field private elapsedRealtimeUs:J

.field private final enabledRenderers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/TrackRenderer;",
            ">;"
        }
    .end annotation
.end field

.field private final eventHandler:Landroid/os/Handler;

.field private final handler:Landroid/os/Handler;

.field private final internalPlaybackThread:Landroid/os/HandlerThread;

.field private lastSeekPositionMs:J

.field private final minBufferUs:J

.field private final minRebufferUs:J

.field private final pendingSeekCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private playWhenReady:Z

.field private volatile positionUs:J

.field private rebuffering:Z

.field private released:Z

.field private rendererMediaClock:Lcom/google/android/exoplayer/MediaClock;

.field private rendererMediaClockSource:Lcom/google/android/exoplayer/TrackRenderer;

.field private renderers:[Lcom/google/android/exoplayer/TrackRenderer;

.field private final selectedTrackIndices:[I

.field private final standaloneMediaClock:Lcom/google/android/exoplayer/StandaloneMediaClock;

.field private state:I

.field private final trackFormats:[[Lcom/google/android/exoplayer/MediaFormat;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Z[III)V
    .registers 12
    .param p1, "eventHandler"    # Landroid/os/Handler;
    .param p2, "playWhenReady"    # Z
    .param p3, "selectedTrackIndices"    # [I
    .param p4, "minBufferMs"    # I
    .param p5, "minRebufferMs"    # I

    .prologue
    const-wide/16 v4, 0x3e8

    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->customMessagesSent:I

    .line 84
    iput v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->customMessagesProcessed:I

    .line 94
    iput-object p1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    .line 95
    iput-boolean p2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->playWhenReady:Z

    .line 96
    int-to-long v0, p4

    mul-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->minBufferUs:J

    .line 97
    int-to-long v0, p5

    mul-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->minRebufferUs:J

    .line 98
    array-length v0, p3

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->selectedTrackIndices:[I

    .line 99
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I

    .line 100
    iput-wide v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->durationUs:J

    .line 101
    iput-wide v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->bufferedPositionUs:J

    .line 103
    new-instance v0, Lcom/google/android/exoplayer/StandaloneMediaClock;

    invoke-direct {v0}, Lcom/google/android/exoplayer/StandaloneMediaClock;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer/StandaloneMediaClock;

    .line 104
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->pendingSeekCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->enabledRenderers:Ljava/util/List;

    .line 106
    array-length v0, p3

    new-array v0, v0, [[Lcom/google/android/exoplayer/MediaFormat;

    iput-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->trackFormats:[[Lcom/google/android/exoplayer/MediaFormat;

    .line 109
    new-instance v0, Lcom/google/android/exoplayer/util/PriorityHandlerThread;

    const-string v1, "ExoPlayerImplInternal:Handler"

    const/16 v2, -0x10

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/util/PriorityHandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    .line 111
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 112
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    .line 113
    return-void
.end method

.method private doSomeWork()V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 420
    const-string v2, "doSomeWork"

    invoke-static {v2}, Lcom/google/android/exoplayer/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 421
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 422
    .local v4, "operationStartTimeMs":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->durationUs:J

    const-wide/16 v6, -0x1

    cmp-long v2, v2, v6

    if-eqz v2, :cond_5e

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->durationUs:J

    .line 424
    .local v10, "bufferedPositionUs":J
    :goto_17
    const/4 v8, 0x1

    .line 425
    .local v8, "allRenderersEnded":Z
    const/4 v9, 0x1

    .line 426
    .local v9, "allRenderersReadyOrEnded":Z
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->updatePositionUs()V

    .line 427
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->enabledRenderers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v12, v2, :cond_94

    .line 428
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->enabledRenderers:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/exoplayer/TrackRenderer;

    .line 432
    .local v13, "renderer":Lcom/google/android/exoplayer/TrackRenderer;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->positionUs:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->elapsedRealtimeUs:J

    invoke-virtual {v13, v2, v3, v6, v7}, Lcom/google/android/exoplayer/TrackRenderer;->doSomeWork(JJ)V

    .line 433
    if-eqz v8, :cond_64

    invoke-virtual {v13}, Lcom/google/android/exoplayer/TrackRenderer;->isEnded()Z

    move-result v2

    if-eqz v2, :cond_64

    const/4 v8, 0x1

    .line 437
    :goto_45
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->rendererReadyOrEnded(Lcom/google/android/exoplayer/TrackRenderer;)Z

    move-result v18

    .line 438
    .local v18, "rendererReadyOrEnded":Z
    if-nez v18, :cond_50

    .line 439
    invoke-virtual {v13}, Lcom/google/android/exoplayer/TrackRenderer;->maybeThrowError()V

    .line 441
    :cond_50
    if-eqz v9, :cond_66

    if-eqz v18, :cond_66

    const/4 v9, 0x1

    .line 443
    :goto_55
    const-wide/16 v2, -0x1

    cmp-long v2, v10, v2

    if-nez v2, :cond_68

    .line 427
    :cond_5b
    :goto_5b
    add-int/lit8 v12, v12, 0x1

    goto :goto_1d

    .line 422
    .end local v8    # "allRenderersEnded":Z
    .end local v9    # "allRenderersReadyOrEnded":Z
    .end local v10    # "bufferedPositionUs":J
    .end local v12    # "i":I
    .end local v13    # "renderer":Lcom/google/android/exoplayer/TrackRenderer;
    .end local v18    # "rendererReadyOrEnded":Z
    :cond_5e
    const-wide v10, 0x7fffffffffffffffL

    goto :goto_17

    .line 433
    .restart local v8    # "allRenderersEnded":Z
    .restart local v9    # "allRenderersReadyOrEnded":Z
    .restart local v10    # "bufferedPositionUs":J
    .restart local v12    # "i":I
    .restart local v13    # "renderer":Lcom/google/android/exoplayer/TrackRenderer;
    :cond_64
    const/4 v8, 0x0

    goto :goto_45

    .line 441
    .restart local v18    # "rendererReadyOrEnded":Z
    :cond_66
    const/4 v9, 0x0

    goto :goto_55

    .line 447
    :cond_68
    invoke-virtual {v13}, Lcom/google/android/exoplayer/TrackRenderer;->getDurationUs()J

    move-result-wide v16

    .line 448
    .local v16, "rendererDurationUs":J
    invoke-virtual {v13}, Lcom/google/android/exoplayer/TrackRenderer;->getBufferedPositionUs()J

    move-result-wide v14

    .line 449
    .local v14, "rendererBufferedPositionUs":J
    const-wide/16 v2, -0x1

    cmp-long v2, v14, v2

    if-nez v2, :cond_79

    .line 450
    const-wide/16 v10, -0x1

    goto :goto_5b

    .line 451
    :cond_79
    const-wide/16 v2, -0x3

    cmp-long v2, v14, v2

    if-eqz v2, :cond_5b

    const-wide/16 v2, -0x1

    cmp-long v2, v16, v2

    if-eqz v2, :cond_8f

    const-wide/16 v2, -0x2

    cmp-long v2, v16, v2

    if-eqz v2, :cond_8f

    cmp-long v2, v14, v16

    if-gez v2, :cond_5b

    .line 457
    :cond_8f
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    goto :goto_5b

    .line 461
    .end local v13    # "renderer":Lcom/google/android/exoplayer/TrackRenderer;
    .end local v14    # "rendererBufferedPositionUs":J
    .end local v16    # "rendererDurationUs":J
    .end local v18    # "rendererReadyOrEnded":Z
    :cond_94
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->bufferedPositionUs:J

    .line 463
    if-eqz v8, :cond_e1

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->durationUs:J

    const-wide/16 v6, -0x1

    cmp-long v2, v2, v6

    if-eqz v2, :cond_b0

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->durationUs:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->positionUs:J

    cmp-long v2, v2, v6

    if-gtz v2, :cond_e1

    .line 465
    :cond_b0
    const/4 v2, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->setState(I)V

    .line 466
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->stopRenderers()V

    .line 478
    :cond_b9
    :goto_b9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 479
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->playWhenReady:Z

    if-eqz v2, :cond_ce

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_d5

    :cond_ce
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_115

    .line 480
    :cond_d5
    const/4 v3, 0x7

    const-wide/16 v6, 0xa

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->scheduleNextOperation(IJJ)V

    .line 485
    :cond_dd
    :goto_dd
    invoke-static {}, Lcom/google/android/exoplayer/util/TraceUtil;->endSection()V

    .line 486
    return-void

    .line 467
    :cond_e1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_fa

    if-eqz v9, :cond_fa

    .line 468
    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->setState(I)V

    .line 469
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->playWhenReady:Z

    if-eqz v2, :cond_b9

    .line 470
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->startRenderers()V

    goto :goto_b9

    .line 472
    :cond_fa
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_b9

    if-nez v9, :cond_b9

    .line 473
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->playWhenReady:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->rebuffering:Z

    .line 474
    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->setState(I)V

    .line 475
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->stopRenderers()V

    goto :goto_b9

    .line 481
    :cond_115
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->enabledRenderers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_dd

    .line 482
    const/4 v3, 0x7

    const-wide/16 v6, 0x3e8

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->scheduleNextOperation(IJJ)V

    goto :goto_dd
.end method

.method private enableRenderer(Lcom/google/android/exoplayer/TrackRenderer;IZ)V
    .registers 8
    .param p1, "renderer"    # Lcom/google/android/exoplayer/TrackRenderer;
    .param p2, "trackIndex"    # I
    .param p3, "joining"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 341
    iget-wide v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->positionUs:J

    invoke-virtual {p1, p2, v2, v3, p3}, Lcom/google/android/exoplayer/TrackRenderer;->enable(IJZ)V

    .line 342
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->enabledRenderers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    invoke-virtual {p1}, Lcom/google/android/exoplayer/TrackRenderer;->getMediaClock()Lcom/google/android/exoplayer/MediaClock;

    move-result-object v0

    .line 344
    .local v0, "mediaClock":Lcom/google/android/exoplayer/MediaClock;
    if-eqz v0, :cond_1c

    .line 345
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer/MediaClock;

    if-nez v1, :cond_1d

    const/4 v1, 0x1

    :goto_15
    invoke-static {v1}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 346
    iput-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer/MediaClock;

    .line 347
    iput-object p1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->rendererMediaClockSource:Lcom/google/android/exoplayer/TrackRenderer;

    .line 349
    :cond_1c
    return-void

    .line 345
    :cond_1d
    const/4 v1, 0x0

    goto :goto_15
.end method

.method private ensureDisabled(Lcom/google/android/exoplayer/TrackRenderer;)V
    .registers 5
    .param p1, "renderer"    # Lcom/google/android/exoplayer/TrackRenderer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 657
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->ensureStopped(Lcom/google/android/exoplayer/TrackRenderer;)V

    .line 658
    invoke-virtual {p1}, Lcom/google/android/exoplayer/TrackRenderer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    .line 659
    invoke-virtual {p1}, Lcom/google/android/exoplayer/TrackRenderer;->disable()V

    .line 660
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->rendererMediaClockSource:Lcom/google/android/exoplayer/TrackRenderer;

    if-ne p1, v0, :cond_16

    .line 661
    iput-object v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer/MediaClock;

    .line 662
    iput-object v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->rendererMediaClockSource:Lcom/google/android/exoplayer/TrackRenderer;

    .line 665
    :cond_16
    return-void
.end method

.method private ensureStopped(Lcom/google/android/exoplayer/TrackRenderer;)V
    .registers 4
    .param p1, "renderer"    # Lcom/google/android/exoplayer/TrackRenderer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 651
    invoke-virtual {p1}, Lcom/google/android/exoplayer/TrackRenderer;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    .line 652
    invoke-virtual {p1}, Lcom/google/android/exoplayer/TrackRenderer;->stop()V

    .line 654
    :cond_a
    return-void
.end method

.method private incrementalPrepareInternal()V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 266
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 267
    .local v4, "operationStartTimeMs":J
    const/4 v12, 0x1

    .line 268
    .local v12, "prepared":Z
    const/4 v14, 0x0

    .local v14, "rendererIndex":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer/TrackRenderer;

    array-length v2, v2

    if-ge v14, v2, :cond_2a

    .line 269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer/TrackRenderer;

    aget-object v13, v2, v14

    .line 270
    .local v13, "renderer":Lcom/google/android/exoplayer/TrackRenderer;
    invoke-virtual {v13}, Lcom/google/android/exoplayer/TrackRenderer;->getState()I

    move-result v2

    if-nez v2, :cond_27

    .line 271
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->positionUs:J

    invoke-virtual {v13, v2, v3}, Lcom/google/android/exoplayer/TrackRenderer;->prepare(J)I

    move-result v17

    .line 272
    .local v17, "state":I
    if-nez v17, :cond_27

    .line 273
    invoke-virtual {v13}, Lcom/google/android/exoplayer/TrackRenderer;->maybeThrowError()V

    .line 274
    const/4 v12, 0x0

    .line 268
    .end local v17    # "state":I
    :cond_27
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 279
    .end local v13    # "renderer":Lcom/google/android/exoplayer/TrackRenderer;
    :cond_2a
    if-nez v12, :cond_35

    .line 281
    const/4 v3, 0x2

    const-wide/16 v6, 0xa

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->scheduleNextOperation(IJJ)V

    .line 337
    :goto_34
    return-void

    .line 285
    :cond_35
    const-wide/16 v10, 0x0

    .line 286
    .local v10, "durationUs":J
    const/4 v8, 0x1

    .line 287
    .local v8, "allRenderersEnded":Z
    const/4 v9, 0x1

    .line 288
    .local v9, "allRenderersReadyOrEnded":Z
    const/4 v14, 0x0

    :goto_3a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer/TrackRenderer;

    array-length v2, v2

    if-ge v14, v2, :cond_ba

    .line 289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer/TrackRenderer;

    aget-object v13, v2, v14

    .line 290
    .restart local v13    # "renderer":Lcom/google/android/exoplayer/TrackRenderer;
    invoke-virtual {v13}, Lcom/google/android/exoplayer/TrackRenderer;->getTrackCount()I

    move-result v15

    .line 291
    .local v15, "rendererTrackCount":I
    new-array v0, v15, [Lcom/google/android/exoplayer/MediaFormat;

    move-object/from16 v16, v0

    .line 292
    .local v16, "rendererTrackFormats":[Lcom/google/android/exoplayer/MediaFormat;
    const/16 v20, 0x0

    .local v20, "trackIndex":I
    :goto_51
    move/from16 v0, v20

    if-ge v0, v15, :cond_60

    .line 293
    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/google/android/exoplayer/TrackRenderer;->getFormat(I)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v2

    aput-object v2, v16, v20

    .line 292
    add-int/lit8 v20, v20, 0x1

    goto :goto_51

    .line 295
    :cond_60
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->trackFormats:[[Lcom/google/android/exoplayer/MediaFormat;

    aput-object v16, v2, v14

    .line 296
    if-lez v15, :cond_99

    .line 297
    const-wide/16 v2, -0x1

    cmp-long v2, v10, v2

    if-nez v2, :cond_9c

    .line 310
    :cond_6e
    :goto_6e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->selectedTrackIndices:[I

    aget v20, v2, v14

    .line 311
    if-ltz v20, :cond_99

    move-object/from16 v0, v16

    array-length v2, v0

    move/from16 v0, v20

    if-ge v0, v2, :cond_99

    .line 312
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v13, v1, v2}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->enableRenderer(Lcom/google/android/exoplayer/TrackRenderer;IZ)V

    .line 313
    if-eqz v8, :cond_b6

    invoke-virtual {v13}, Lcom/google/android/exoplayer/TrackRenderer;->isEnded()Z

    move-result v2

    if-eqz v2, :cond_b6

    const/4 v8, 0x1

    .line 314
    :goto_8e
    if-eqz v9, :cond_b8

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->rendererReadyOrEnded(Lcom/google/android/exoplayer/TrackRenderer;)Z

    move-result v2

    if-eqz v2, :cond_b8

    const/4 v9, 0x1

    .line 288
    :cond_99
    :goto_99
    add-int/lit8 v14, v14, 0x1

    goto :goto_3a

    .line 301
    :cond_9c
    invoke-virtual {v13}, Lcom/google/android/exoplayer/TrackRenderer;->getDurationUs()J

    move-result-wide v18

    .line 302
    .local v18, "trackDurationUs":J
    const-wide/16 v2, -0x1

    cmp-long v2, v18, v2

    if-nez v2, :cond_a9

    .line 303
    const-wide/16 v10, -0x1

    goto :goto_6e

    .line 304
    :cond_a9
    const-wide/16 v2, -0x2

    cmp-long v2, v18, v2

    if-eqz v2, :cond_6e

    .line 307
    move-wide/from16 v0, v18

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    goto :goto_6e

    .line 313
    .end local v18    # "trackDurationUs":J
    :cond_b6
    const/4 v8, 0x0

    goto :goto_8e

    .line 314
    :cond_b8
    const/4 v9, 0x0

    goto :goto_99

    .line 318
    .end local v13    # "renderer":Lcom/google/android/exoplayer/TrackRenderer;
    .end local v15    # "rendererTrackCount":I
    .end local v16    # "rendererTrackFormats":[Lcom/google/android/exoplayer/MediaFormat;
    .end local v20    # "trackIndex":I
    :cond_ba
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->durationUs:J

    .line 320
    if-eqz v8, :cond_106

    const-wide/16 v2, -0x1

    cmp-long v2, v10, v2

    if-eqz v2, :cond_ce

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->positionUs:J

    cmp-long v2, v10, v2

    if-gtz v2, :cond_106

    .line 323
    :cond_ce
    const/4 v2, 0x5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I

    .line 330
    :goto_d3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->trackFormats:[[Lcom/google/android/exoplayer/MediaFormat;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v2, v3, v6, v7, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 333
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->playWhenReady:Z

    if-eqz v2, :cond_fc

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_fc

    .line 334
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->startRenderers()V

    .line 336
    :cond_fc
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_34

    .line 325
    :cond_106
    if-eqz v9, :cond_10e

    const/4 v2, 0x4

    :goto_109
    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I

    goto :goto_d3

    :cond_10e
    const/4 v2, 0x3

    goto :goto_109
.end method

.method private prepareInternal([Lcom/google/android/exoplayer/TrackRenderer;)V
    .registers 4
    .param p1, "renderers"    # [Lcom/google/android/exoplayer/TrackRenderer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->resetInternal()V

    .line 259
    iput-object p1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer/TrackRenderer;

    .line 260
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->trackFormats:[[Lcom/google/android/exoplayer/MediaFormat;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 261
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->setState(I)V

    .line 262
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->incrementalPrepareInternal()V

    .line 263
    return-void
.end method

.method private release(Lcom/google/android/exoplayer/TrackRenderer;)V
    .registers 5
    .param p1, "renderer"    # Lcom/google/android/exoplayer/TrackRenderer;

    .prologue
    .line 572
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer/TrackRenderer;->release()V
    :try_end_3
    .catch Lcom/google/android/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_d

    .line 580
    :goto_3
    return-void

    .line 573
    :catch_4
    move-exception v0

    .line 575
    .local v0, "e":Lcom/google/android/exoplayer/ExoPlaybackException;
    const-string v1, "ExoPlayerImplInternal"

    const-string v2, "Release failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 576
    .end local v0    # "e":Lcom/google/android/exoplayer/ExoPlaybackException;
    :catch_d
    move-exception v0

    .line 578
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "ExoPlayerImplInternal"

    const-string v2, "Release failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private releaseInternal()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 531
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->resetInternal()V

    .line 532
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->setState(I)V

    .line 533
    monitor-enter p0

    .line 534
    const/4 v0, 0x1

    :try_start_9
    iput-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->released:Z

    .line 535
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 536
    monitor-exit p0

    .line 537
    return-void

    .line 536
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_10

    throw v0
.end method

.method private rendererReadyOrEnded(Lcom/google/android/exoplayer/TrackRenderer;)Z
    .registers 14
    .param p1, "renderer"    # Lcom/google/android/exoplayer/TrackRenderer;

    .prologue
    const-wide/16 v10, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 352
    invoke-virtual {p1}, Lcom/google/android/exoplayer/TrackRenderer;->isEnded()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 364
    :cond_a
    :goto_a
    return v7

    .line 355
    :cond_b
    invoke-virtual {p1}, Lcom/google/android/exoplayer/TrackRenderer;->isReady()Z

    move-result v8

    if-nez v8, :cond_13

    move v7, v6

    .line 356
    goto :goto_a

    .line 358
    :cond_13
    iget v8, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I

    const/4 v9, 0x4

    if-eq v8, v9, :cond_a

    .line 361
    invoke-virtual {p1}, Lcom/google/android/exoplayer/TrackRenderer;->getDurationUs()J

    move-result-wide v4

    .line 362
    .local v4, "rendererDurationUs":J
    invoke-virtual {p1}, Lcom/google/android/exoplayer/TrackRenderer;->getBufferedPositionUs()J

    move-result-wide v2

    .line 363
    .local v2, "rendererBufferedPositionUs":J
    iget-boolean v8, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->rebuffering:Z

    if-eqz v8, :cond_4e

    iget-wide v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->minRebufferUs:J

    .line 364
    .local v0, "minBufferDurationUs":J
    :goto_26
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-lez v8, :cond_4b

    cmp-long v8, v2, v10

    if-eqz v8, :cond_4b

    const-wide/16 v8, -0x3

    cmp-long v8, v2, v8

    if-eqz v8, :cond_4b

    iget-wide v8, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->positionUs:J

    add-long/2addr v8, v0

    cmp-long v8, v2, v8

    if-gez v8, :cond_4b

    cmp-long v8, v4, v10

    if-eqz v8, :cond_4c

    const-wide/16 v8, -0x2

    cmp-long v8, v4, v8

    if-eqz v8, :cond_4c

    cmp-long v8, v2, v4

    if-ltz v8, :cond_4c

    :cond_4b
    move v6, v7

    :cond_4c
    move v7, v6

    goto :goto_a

    .line 363
    .end local v0    # "minBufferDurationUs":J
    :cond_4e
    iget-wide v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->minBufferUs:J

    goto :goto_26
.end method

.method private resetInternal()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 540
    iget-object v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 541
    iget-object v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 542
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->rebuffering:Z

    .line 543
    iget-object v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer/StandaloneMediaClock;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/StandaloneMediaClock;->stop()V

    .line 544
    iget-object v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer/TrackRenderer;

    if-nez v2, :cond_1a

    .line 556
    :goto_19
    return-void

    .line 547
    :cond_1a
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1b
    iget-object v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer/TrackRenderer;

    array-length v2, v2

    if-ge v0, v2, :cond_2d

    .line 548
    iget-object v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer/TrackRenderer;

    aget-object v1, v2, v0

    .line 549
    .local v1, "renderer":Lcom/google/android/exoplayer/TrackRenderer;
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->stopAndDisable(Lcom/google/android/exoplayer/TrackRenderer;)V

    .line 550
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->release(Lcom/google/android/exoplayer/TrackRenderer;)V

    .line 547
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 552
    .end local v1    # "renderer":Lcom/google/android/exoplayer/TrackRenderer;
    :cond_2d
    iput-object v4, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer/TrackRenderer;

    .line 553
    iput-object v4, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer/MediaClock;

    .line 554
    iput-object v4, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->rendererMediaClockSource:Lcom/google/android/exoplayer/TrackRenderer;

    .line 555
    iget-object v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->enabledRenderers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_19
.end method

.method private scheduleNextOperation(IJJ)V
    .registers 12
    .param p1, "operationType"    # I
    .param p2, "thisOperationStartTimeMs"    # J
    .param p4, "intervalMs"    # J

    .prologue
    .line 490
    add-long v2, p2, p4

    .line 491
    .local v2, "nextOperationStartTimeMs":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 492
    .local v0, "nextOperationDelayMs":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_14

    .line 493
    iget-object v4, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v4, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 497
    :goto_13
    return-void

    .line 495
    :cond_14
    iget-object v4, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v4, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_13
.end method

.method private seekToInternal(J)V
    .registers 12
    .param p1, "positionMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x3e8

    .line 501
    :try_start_2
    iget-wide v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->positionUs:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_60

    cmp-long v2, p1, v2

    if-nez v2, :cond_11

    .line 521
    iget-object v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->pendingSeekCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 523
    :goto_10
    return-void

    .line 506
    :cond_11
    const/4 v2, 0x0

    :try_start_12
    iput-boolean v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->rebuffering:Z

    .line 507
    mul-long v2, p1, v6

    iput-wide v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->positionUs:J

    .line 508
    iget-object v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer/StandaloneMediaClock;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/StandaloneMediaClock;->stop()V

    .line 509
    iget-object v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer/StandaloneMediaClock;

    iget-wide v4, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->positionUs:J

    invoke-virtual {v2, v4, v5}, Lcom/google/android/exoplayer/StandaloneMediaClock;->setPositionUs(J)V

    .line 510
    iget v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2e

    iget v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I
    :try_end_2b
    .catchall {:try_start_12 .. :try_end_2b} :catchall_60

    const/4 v3, 0x2

    if-ne v2, v3, :cond_34

    .line 521
    :cond_2e
    iget-object v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->pendingSeekCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_10

    .line 513
    :cond_34
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_35
    :try_start_35
    iget-object v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->enabledRenderers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_50

    .line 514
    iget-object v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->enabledRenderers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/TrackRenderer;

    .line 515
    .local v1, "renderer":Lcom/google/android/exoplayer/TrackRenderer;
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->ensureStopped(Lcom/google/android/exoplayer/TrackRenderer;)V

    .line 516
    iget-wide v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->positionUs:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer/TrackRenderer;->seekTo(J)V

    .line 513
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    .line 518
    .end local v1    # "renderer":Lcom/google/android/exoplayer/TrackRenderer;
    :cond_50
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->setState(I)V

    .line 519
    iget-object v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_5a
    .catchall {:try_start_35 .. :try_end_5a} :catchall_60

    .line 521
    iget-object v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->pendingSeekCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_10

    .end local v0    # "i":I
    :catchall_60
    move-exception v2

    iget-object v3, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->pendingSeekCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    throw v2
.end method

.method private sendMessageInternal(ILjava/lang/Object;)V
    .registers 7
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 586
    :try_start_0
    move-object v0, p2

    check-cast v0, Landroid/util/Pair;

    move-object v1, v0

    .line 587
    .local v1, "targetAndMessage":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;Ljava/lang/Object;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v2, p1, v3}, Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;->handleMessage(ILjava/lang/Object;)V

    .line 588
    iget v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1d

    iget v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1d

    .line 590
    iget-object v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_2c

    .line 593
    :cond_1d
    monitor-enter p0

    .line 594
    :try_start_1e
    iget v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->customMessagesProcessed:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->customMessagesProcessed:I

    .line 595
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 596
    monitor-exit p0

    .line 598
    return-void

    .line 596
    :catchall_29
    move-exception v2

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_29

    throw v2

    .line 593
    .end local v1    # "targetAndMessage":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;Ljava/lang/Object;>;"
    :catchall_2c
    move-exception v2

    monitor-enter p0

    .line 594
    :try_start_2e
    iget v3, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->customMessagesProcessed:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->customMessagesProcessed:I

    .line 595
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 596
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_2e .. :try_end_38} :catchall_39

    throw v2

    :catchall_39
    move-exception v2

    :try_start_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v2
.end method

.method private setPlayWhenReadyInternal(Z)V
    .registers 5
    .param p1, "playWhenReady"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    .line 375
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->rebuffering:Z

    .line 376
    iput-boolean p1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->playWhenReady:Z

    .line 377
    if-nez p1, :cond_18

    .line 378
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->stopRenderers()V

    .line 379
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->updatePositionUs()V
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_27

    .line 389
    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 391
    return-void

    .line 381
    :cond_18
    :try_start_18
    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_32

    .line 382
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->startRenderers()V

    .line 383
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_27

    goto :goto_e

    .line 389
    :catchall_27
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    throw v0

    .line 384
    :cond_32
    :try_start_32
    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I

    if-ne v0, v2, :cond_e

    .line 385
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_27

    goto :goto_e
.end method

.method private setRendererSelectedTrackInternal(II)V
    .registers 13
    .param p1, "rendererIndex"    # I
    .param p2, "trackIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 602
    iget-object v7, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->selectedTrackIndices:[I

    aget v7, v7, p1

    if-ne v7, p2, :cond_a

    .line 648
    :cond_9
    :goto_9
    return-void

    .line 606
    :cond_a
    iget-object v7, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->selectedTrackIndices:[I

    aput p2, v7, p1

    .line 607
    iget v7, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I

    if-eq v7, v1, :cond_9

    iget v7, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I

    if-eq v7, v8, :cond_9

    .line 611
    iget-object v7, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer/TrackRenderer;

    aget-object v3, v7, p1

    .line 612
    .local v3, "renderer":Lcom/google/android/exoplayer/TrackRenderer;
    invoke-virtual {v3}, Lcom/google/android/exoplayer/TrackRenderer;->getState()I

    move-result v4

    .line 613
    .local v4, "rendererState":I
    if-eqz v4, :cond_9

    const/4 v7, -0x1

    if-eq v4, v7, :cond_9

    .line 615
    invoke-virtual {v3}, Lcom/google/android/exoplayer/TrackRenderer;->getTrackCount()I

    move-result v7

    if-eqz v7, :cond_9

    .line 619
    if-eq v4, v8, :cond_2e

    const/4 v7, 0x3

    if-ne v4, v7, :cond_73

    :cond_2e
    move v0, v1

    .line 621
    .local v0, "isEnabled":Z
    :goto_2f
    if-ltz p2, :cond_75

    iget-object v7, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->trackFormats:[[Lcom/google/android/exoplayer/MediaFormat;

    aget-object v7, v7, p1

    array-length v7, v7

    if-ge p2, v7, :cond_75

    move v5, v1

    .line 623
    .local v5, "shouldEnable":Z
    :goto_39
    if-eqz v0, :cond_54

    .line 627
    if-nez v5, :cond_4c

    iget-object v7, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->rendererMediaClockSource:Lcom/google/android/exoplayer/TrackRenderer;

    if-ne v3, v7, :cond_4c

    .line 631
    iget-object v7, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer/StandaloneMediaClock;

    iget-object v8, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer/MediaClock;

    invoke-interface {v8}, Lcom/google/android/exoplayer/MediaClock;->getPositionUs()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/google/android/exoplayer/StandaloneMediaClock;->setPositionUs(J)V

    .line 633
    :cond_4c
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->ensureDisabled(Lcom/google/android/exoplayer/TrackRenderer;)V

    .line 634
    iget-object v7, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->enabledRenderers:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 637
    :cond_54
    if-eqz v5, :cond_9

    .line 639
    iget-boolean v7, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->playWhenReady:Z

    if-eqz v7, :cond_77

    iget v7, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_77

    move v2, v1

    .line 641
    .local v2, "playing":Z
    :goto_60
    if-nez v0, :cond_79

    if-eqz v2, :cond_79

    .line 642
    .local v1, "joining":Z
    :goto_64
    invoke-direct {p0, v3, p2, v1}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->enableRenderer(Lcom/google/android/exoplayer/TrackRenderer;IZ)V

    .line 643
    if-eqz v2, :cond_6c

    .line 644
    invoke-virtual {v3}, Lcom/google/android/exoplayer/TrackRenderer;->start()V

    .line 646
    :cond_6c
    iget-object v6, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_9

    .end local v0    # "isEnabled":Z
    .end local v1    # "joining":Z
    .end local v2    # "playing":Z
    .end local v5    # "shouldEnable":Z
    :cond_73
    move v0, v6

    .line 619
    goto :goto_2f

    .restart local v0    # "isEnabled":Z
    :cond_75
    move v5, v6

    .line 621
    goto :goto_39

    .restart local v5    # "shouldEnable":Z
    :cond_77
    move v2, v6

    .line 639
    goto :goto_60

    .restart local v2    # "playing":Z
    :cond_79
    move v1, v6

    .line 641
    goto :goto_64
.end method

.method private setState(I)V
    .registers 5
    .param p1, "state"    # I

    .prologue
    .line 251
    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I

    if-eq v0, p1, :cond_11

    .line 252
    iput p1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I

    .line 253
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 255
    :cond_11
    return-void
.end method

.method private startRenderers()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 394
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->rebuffering:Z

    .line 395
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer/StandaloneMediaClock;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/StandaloneMediaClock;->start()V

    .line 396
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->enabledRenderers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 397
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->enabledRenderers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/TrackRenderer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/TrackRenderer;->start()V

    .line 396
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 399
    :cond_1f
    return-void
.end method

.method private stopAndDisable(Lcom/google/android/exoplayer/TrackRenderer;)V
    .registers 5
    .param p1, "renderer"    # Lcom/google/android/exoplayer/TrackRenderer;

    .prologue
    .line 560
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->ensureDisabled(Lcom/google/android/exoplayer/TrackRenderer;)V
    :try_end_3
    .catch Lcom/google/android/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_d

    .line 568
    :goto_3
    return-void

    .line 561
    :catch_4
    move-exception v0

    .line 563
    .local v0, "e":Lcom/google/android/exoplayer/ExoPlaybackException;
    const-string v1, "ExoPlayerImplInternal"

    const-string v2, "Stop failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 564
    .end local v0    # "e":Lcom/google/android/exoplayer/ExoPlaybackException;
    :catch_d
    move-exception v0

    .line 566
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "ExoPlayerImplInternal"

    const-string v2, "Stop failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private stopInternal()V
    .registers 2

    .prologue
    .line 526
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->resetInternal()V

    .line 527
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->setState(I)V

    .line 528
    return-void
.end method

.method private stopRenderers()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 402
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer/StandaloneMediaClock;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/StandaloneMediaClock;->stop()V

    .line 403
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->enabledRenderers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 404
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->enabledRenderers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/TrackRenderer;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->ensureStopped(Lcom/google/android/exoplayer/TrackRenderer;)V

    .line 403
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 406
    :cond_1c
    return-void
.end method

.method private updatePositionUs()V
    .registers 5

    .prologue
    .line 409
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer/MediaClock;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->enabledRenderers:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->rendererMediaClockSource:Lcom/google/android/exoplayer/TrackRenderer;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->rendererMediaClockSource:Lcom/google/android/exoplayer/TrackRenderer;

    .line 410
    invoke-virtual {v0}, Lcom/google/android/exoplayer/TrackRenderer;->isEnded()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 411
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer/MediaClock;

    invoke-interface {v0}, Lcom/google/android/exoplayer/MediaClock;->getPositionUs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->positionUs:J

    .line 412
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer/StandaloneMediaClock;

    iget-wide v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->positionUs:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer/StandaloneMediaClock;->setPositionUs(J)V

    .line 416
    :goto_25
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->elapsedRealtimeUs:J

    .line 417
    return-void

    .line 414
    :cond_2f
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer/StandaloneMediaClock;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/StandaloneMediaClock;->getPositionUs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->positionUs:J

    goto :goto_25
.end method


# virtual methods
.method public declared-synchronized blockingSendMessage(Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V
    .registers 10
    .param p1, "target"    # Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;
    .param p2, "messageType"    # I
    .param p3, "message"    # Ljava/lang/Object;

    .prologue
    .line 164
    monitor-enter p0

    :try_start_1
    iget-boolean v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->released:Z

    if-eqz v2, :cond_25

    .line 165
    const-string v2, "ExoPlayerImplInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sent message("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") after release. Message ignored."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_4c

    .line 177
    :cond_23
    monitor-exit p0

    return-void

    .line 168
    :cond_25
    :try_start_25
    iget v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->customMessagesSent:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->customMessagesSent:I

    .line 169
    .local v1, "messageNumber":I
    iget-object v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-static {p1, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v2, v3, p2, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 170
    :goto_3b
    iget v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->customMessagesProcessed:I
    :try_end_3d
    .catchall {:try_start_25 .. :try_end_3d} :catchall_4c

    if-gt v2, v1, :cond_23

    .line 172
    :try_start_3f
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_42
    .catch Ljava/lang/InterruptedException; {:try_start_3f .. :try_end_42} :catch_43
    .catchall {:try_start_3f .. :try_end_42} :catchall_4c

    goto :goto_3b

    .line 173
    :catch_43
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_44
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_4b
    .catchall {:try_start_44 .. :try_end_4b} :catchall_4c

    goto :goto_3b

    .line 164
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "messageNumber":I
    :catchall_4c
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getBufferedPosition()J
    .registers 5

    .prologue
    const-wide/16 v0, -0x1

    .line 124
    iget-wide v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->bufferedPositionUs:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_9

    :goto_8
    return-wide v0

    :cond_9
    iget-wide v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->bufferedPositionUs:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    goto :goto_8
.end method

.method public getCurrentPosition()J
    .registers 5

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->pendingSeekCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_b

    iget-wide v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->lastSeekPositionMs:J

    :goto_a
    return-wide v0

    :cond_b
    iget-wide v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->positionUs:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    goto :goto_a
.end method

.method public getDuration()J
    .registers 5

    .prologue
    const-wide/16 v0, -0x1

    .line 129
    iget-wide v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->durationUs:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_9

    :goto_8
    return-wide v0

    :cond_9
    iget-wide v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->durationUs:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    goto :goto_8
.end method

.method public getPlaybackLooper()Landroid/os/Looper;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 197
    :try_start_3
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_82

    .line 246
    :goto_8
    return v1

    .line 199
    :pswitch_9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Lcom/google/android/exoplayer/TrackRenderer;

    check-cast v1, [Lcom/google/android/exoplayer/TrackRenderer;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->prepareInternal([Lcom/google/android/exoplayer/TrackRenderer;)V

    move v1, v2

    .line 200
    goto :goto_8

    .line 203
    :pswitch_14
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->incrementalPrepareInternal()V

    move v1, v2

    .line 204
    goto :goto_8

    .line 207
    :pswitch_19
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_1e

    move v1, v2

    :cond_1e
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->setPlayWhenReadyInternal(Z)V

    move v1, v2

    .line 208
    goto :goto_8

    .line 211
    :pswitch_23
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->doSomeWork()V

    move v1, v2

    .line 212
    goto :goto_8

    .line 215
    :pswitch_28
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v3}, Lcom/google/android/exoplayer/util/Util;->getLong(II)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->seekToInternal(J)V

    move v1, v2

    .line 216
    goto :goto_8

    .line 219
    :pswitch_35
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->stopInternal()V

    move v1, v2

    .line 220
    goto :goto_8

    .line 223
    :pswitch_3a
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->releaseInternal()V

    move v1, v2

    .line 224
    goto :goto_8

    .line 227
    :pswitch_3f
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v1, v3}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->sendMessageInternal(ILjava/lang/Object;)V

    move v1, v2

    .line 228
    goto :goto_8

    .line 231
    :pswitch_48
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v1, v3}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->setRendererSelectedTrackInternal(II)V
    :try_end_4f
    .catch Lcom/google/android/exoplayer/ExoPlaybackException; {:try_start_3 .. :try_end_4f} :catch_51
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_4f} :catch_67

    move v1, v2

    .line 232
    goto :goto_8

    .line 237
    :catch_51
    move-exception v0

    .line 238
    .local v0, "e":Lcom/google/android/exoplayer/ExoPlaybackException;
    const-string v1, "ExoPlayerImplInternal"

    const-string v3, "Internal track renderer error."

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 240
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->stopInternal()V

    move v1, v2

    .line 241
    goto :goto_8

    .line 242
    .end local v0    # "e":Lcom/google/android/exoplayer/ExoPlaybackException;
    :catch_67
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "ExoPlayerImplInternal"

    const-string v3, "Internal runtime error."

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 244
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer/ExoPlaybackException;

    invoke-direct {v3, v0, v2}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;Z)V

    invoke-virtual {v1, v6, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 245
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->stopInternal()V

    move v1, v2

    .line 246
    goto :goto_8

    .line 197
    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_9
        :pswitch_14
        :pswitch_19
        :pswitch_35
        :pswitch_3a
        :pswitch_28
        :pswitch_23
        :pswitch_48
        :pswitch_3f
    .end packed-switch
.end method

.method public varargs prepare([Lcom/google/android/exoplayer/TrackRenderer;)V
    .registers 4
    .param p1, "renderers"    # [Lcom/google/android/exoplayer/TrackRenderer;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 135
    return-void
.end method

.method public declared-synchronized release()V
    .registers 4

    .prologue
    .line 180
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->released:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1e

    if-eqz v1, :cond_7

    .line 192
    :goto_5
    monitor-exit p0

    return-void

    .line 183
    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 184
    :goto_d
    iget-boolean v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->released:Z
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_1e

    if-nez v1, :cond_21

    .line 186
    :try_start_11
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_14} :catch_15
    .catchall {:try_start_11 .. :try_end_14} :catchall_1e

    goto :goto_d

    .line 187
    :catch_15
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_16
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_1e

    goto :goto_d

    .line 180
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1

    .line 191
    :cond_21
    :try_start_21
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_1e

    goto :goto_5
.end method

.method public seekTo(J)V
    .registers 8
    .param p1, "positionMs"    # J

    .prologue
    .line 142
    iput-wide p1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->lastSeekPositionMs:J

    .line 143
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->pendingSeekCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 144
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-static {p1, p2}, Lcom/google/android/exoplayer/util/Util;->getTopInt(J)I

    move-result v2

    .line 145
    invoke-static {p1, p2}, Lcom/google/android/exoplayer/util/Util;->getBottomInt(J)I

    move-result v3

    .line 144
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 146
    return-void
.end method

.method public sendMessage(Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V
    .registers 8
    .param p1, "target"    # Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;
    .param p2, "messageType"    # I
    .param p3, "message"    # Ljava/lang/Object;

    .prologue
    .line 158
    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->customMessagesSent:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->customMessagesSent:I

    .line 159
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-static {p1, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 160
    return-void
.end method

.method public setPlayWhenReady(Z)V
    .registers 6
    .param p1, "playWhenReady"    # Z

    .prologue
    const/4 v1, 0x0

    .line 138
    iget-object v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v3, 0x3

    if-eqz p1, :cond_f

    const/4 v0, 0x1

    :goto_7
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 139
    return-void

    :cond_f
    move v0, v1

    .line 138
    goto :goto_7
.end method

.method public setRendererSelectedTrack(II)V
    .registers 5
    .param p1, "rendererIndex"    # I
    .param p2, "trackIndex"    # I

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 155
    return-void
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 150
    return-void
.end method
