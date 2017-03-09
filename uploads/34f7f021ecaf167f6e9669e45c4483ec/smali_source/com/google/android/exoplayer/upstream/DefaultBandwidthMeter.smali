.class public final Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;
.super Ljava/lang/Object;
.source "DefaultBandwidthMeter.java"

# interfaces
.implements Lcom/google/android/exoplayer/upstream/BandwidthMeter;


# static fields
.field public static final DEFAULT_MAX_WEIGHT:I = 0x7d0


# instance fields
.field private bitrateEstimate:J

.field private bytesAccumulator:J

.field private final clock:Lcom/google/android/exoplayer/util/Clock;

.field private final eventHandler:Landroid/os/Handler;

.field private final eventListener:Lcom/google/android/exoplayer/upstream/BandwidthMeter$EventListener;

.field private final slidingPercentile:Lcom/google/android/exoplayer/util/SlidingPercentile;

.field private startTimeMs:J

.field private streamCount:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, v0, v0}, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer/upstream/BandwidthMeter$EventListener;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer/upstream/BandwidthMeter$EventListener;)V
    .registers 4
    .param p1, "eventHandler"    # Landroid/os/Handler;
    .param p2, "eventListener"    # Lcom/google/android/exoplayer/upstream/BandwidthMeter$EventListener;

    .prologue
    .line 47
    new-instance v0, Lcom/google/android/exoplayer/util/SystemClock;

    invoke-direct {v0}, Lcom/google/android/exoplayer/util/SystemClock;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer/upstream/BandwidthMeter$EventListener;Lcom/google/android/exoplayer/util/Clock;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer/upstream/BandwidthMeter$EventListener;I)V
    .registers 5
    .param p1, "eventHandler"    # Landroid/os/Handler;
    .param p2, "eventListener"    # Lcom/google/android/exoplayer/upstream/BandwidthMeter$EventListener;
    .param p3, "maxWeight"    # I

    .prologue
    .line 55
    new-instance v0, Lcom/google/android/exoplayer/util/SystemClock;

    invoke-direct {v0}, Lcom/google/android/exoplayer/util/SystemClock;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer/upstream/BandwidthMeter$EventListener;Lcom/google/android/exoplayer/util/Clock;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer/upstream/BandwidthMeter$EventListener;Lcom/google/android/exoplayer/util/Clock;)V
    .registers 5
    .param p1, "eventHandler"    # Landroid/os/Handler;
    .param p2, "eventListener"    # Lcom/google/android/exoplayer/upstream/BandwidthMeter$EventListener;
    .param p3, "clock"    # Lcom/google/android/exoplayer/util/Clock;

    .prologue
    .line 51
    const/16 v0, 0x7d0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer/upstream/BandwidthMeter$EventListener;Lcom/google/android/exoplayer/util/Clock;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer/upstream/BandwidthMeter$EventListener;Lcom/google/android/exoplayer/util/Clock;I)V
    .registers 7
    .param p1, "eventHandler"    # Landroid/os/Handler;
    .param p2, "eventListener"    # Lcom/google/android/exoplayer/upstream/BandwidthMeter$EventListener;
    .param p3, "clock"    # Lcom/google/android/exoplayer/util/Clock;
    .param p4, "maxWeight"    # I

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;->eventHandler:Landroid/os/Handler;

    .line 61
    iput-object p2, p0, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;->eventListener:Lcom/google/android/exoplayer/upstream/BandwidthMeter$EventListener;

    .line 62
    iput-object p3, p0, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;->clock:Lcom/google/android/exoplayer/util/Clock;

    .line 63
    new-instance v0, Lcom/google/android/exoplayer/util/SlidingPercentile;

    invoke-direct {v0, p4}, Lcom/google/android/exoplayer/util/SlidingPercentile;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;->slidingPercentile:Lcom/google/android/exoplayer/util/SlidingPercentile;

    .line 64
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;->bitrateEstimate:J

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;)Lcom/google/android/exoplayer/upstream/BandwidthMeter$EventListener;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;->eventListener:Lcom/google/android/exoplayer/upstream/BandwidthMeter$EventListener;

    return-object v0
.end method

.method private notifyBandwidthSample(IJJ)V
    .registers 14
    .param p1, "elapsedMs"    # I
    .param p2, "bytes"    # J
    .param p4, "bitrate"    # J

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;->eventListener:Lcom/google/android/exoplayer/upstream/BandwidthMeter$EventListener;

    if-eqz v0, :cond_16

    .line 107
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter$1;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter$1;-><init>(Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;IJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 114
    :cond_16
    return-void
.end method


# virtual methods
.method public declared-synchronized getBitrateEstimate()J
    .registers 3

    .prologue
    .line 69
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;->bitrateEstimate:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onBytesTransferred(I)V
    .registers 6
    .param p1, "bytes"    # I

    .prologue
    .line 82
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;->bytesAccumulator:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;->bytesAccumulator:J
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 83
    monitor-exit p0

    return-void

    .line 82
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onTransferEnd()V
    .registers 11

    .prologue
    .line 87
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;->streamCount:I

    if-lez v0, :cond_57

    const/4 v0, 0x1

    :goto_6
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 88
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;->clock:Lcom/google/android/exoplayer/util/Clock;

    invoke-interface {v0}, Lcom/google/android/exoplayer/util/Clock;->elapsedRealtime()J

    move-result-wide v8

    .line 89
    .local v8, "nowMs":J
    iget-wide v2, p0, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;->startTimeMs:J

    sub-long v2, v8, v2

    long-to-int v1, v2

    .line 90
    .local v1, "elapsedMs":I
    if-lez v1, :cond_45

    .line 91
    iget-wide v2, p0, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;->bytesAccumulator:J

    const-wide/16 v4, 0x1f40

    mul-long/2addr v2, v4

    int-to-long v4, v1

    div-long/2addr v2, v4

    long-to-float v7, v2

    .line 92
    .local v7, "bitsPerSecond":F
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;->slidingPercentile:Lcom/google/android/exoplayer/util/SlidingPercentile;

    iget-wide v2, p0, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;->bytesAccumulator:J

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v0, v2, v7}, Lcom/google/android/exoplayer/util/SlidingPercentile;->addSample(IF)V

    .line 93
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;->slidingPercentile:Lcom/google/android/exoplayer/util/SlidingPercentile;

    const/high16 v2, 0x3f000000

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/util/SlidingPercentile;->getPercentile(F)F

    move-result v6

    .line 94
    .local v6, "bandwidthEstimateFloat":F
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_59

    const-wide/16 v2, -0x1

    :goto_3b
    iput-wide v2, p0, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;->bitrateEstimate:J

    .line 96
    iget-wide v2, p0, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;->bytesAccumulator:J

    iget-wide v4, p0, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;->bitrateEstimate:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;->notifyBandwidthSample(IJJ)V

    .line 98
    .end local v6    # "bandwidthEstimateFloat":F
    .end local v7    # "bitsPerSecond":F
    :cond_45
    iget v0, p0, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;->streamCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;->streamCount:I

    .line 99
    iget v0, p0, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;->streamCount:I

    if-lez v0, :cond_51

    .line 100
    iput-wide v8, p0, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;->startTimeMs:J

    .line 102
    :cond_51
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;->bytesAccumulator:J
    :try_end_55
    .catchall {:try_start_1 .. :try_end_55} :catchall_5b

    .line 103
    monitor-exit p0

    return-void

    .line 87
    .end local v1    # "elapsedMs":I
    .end local v8    # "nowMs":J
    :cond_57
    const/4 v0, 0x0

    goto :goto_6

    .line 94
    .restart local v1    # "elapsedMs":I
    .restart local v6    # "bandwidthEstimateFloat":F
    .restart local v7    # "bitsPerSecond":F
    .restart local v8    # "nowMs":J
    :cond_59
    float-to-long v2, v6

    goto :goto_3b

    .line 87
    .end local v1    # "elapsedMs":I
    .end local v6    # "bandwidthEstimateFloat":F
    .end local v7    # "bitsPerSecond":F
    .end local v8    # "nowMs":J
    :catchall_5b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onTransferStart()V
    .registers 3

    .prologue
    .line 74
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;->streamCount:I

    if-nez v0, :cond_d

    .line 75
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;->clock:Lcom/google/android/exoplayer/util/Clock;

    invoke-interface {v0}, Lcom/google/android/exoplayer/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;->startTimeMs:J

    .line 77
    :cond_d
    iget v0, p0, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;->streamCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;->streamCount:I
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 78
    monitor-exit p0

    return-void

    .line 74
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method
