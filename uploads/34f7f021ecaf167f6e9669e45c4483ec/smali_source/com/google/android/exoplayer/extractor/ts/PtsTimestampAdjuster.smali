.class public final Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;
.super Ljava/lang/Object;
.source "PtsTimestampAdjuster.java"


# static fields
.field public static final DO_NOT_OFFSET:J = 0x7fffffffffffffffL

.field private static final MAX_PTS_PLUS_ONE:J = 0x200000000L


# instance fields
.field private final firstSampleTimestampUs:J

.field private volatile lastPts:J

.field private timestampOffsetUs:J


# direct methods
.method public constructor <init>(J)V
    .registers 6
    .param p1, "firstSampleTimestampUs"    # J

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-wide p1, p0, Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;->firstSampleTimestampUs:J

    .line 51
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;->lastPts:J

    .line 52
    return-void
.end method

.method public static ptsToUs(J)J
    .registers 6
    .param p0, "pts"    # J

    .prologue
    .line 102
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p0

    const-wide/32 v2, 0x15f90

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static usToPts(J)J
    .registers 6
    .param p0, "us"    # J

    .prologue
    .line 112
    const-wide/32 v0, 0x15f90

    mul-long/2addr v0, p0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public adjustTimestamp(J)J
    .registers 16
    .param p1, "pts"    # J

    .prologue
    .line 75
    iget-wide v8, p0, Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;->lastPts:J

    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v8, v8, v10

    if-eqz v8, :cond_40

    .line 78
    iget-wide v8, p0, Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;->lastPts:J

    const-wide v10, 0x100000000L

    add-long/2addr v8, v10

    const-wide v10, 0x200000000L

    div-long v0, v8, v10

    .line 79
    .local v0, "closestWrapCount":J
    const-wide v8, 0x200000000L

    const-wide/16 v10, 0x1

    sub-long v10, v0, v10

    mul-long/2addr v8, v10

    add-long v4, p1, v8

    .line 80
    .local v4, "ptsWrapBelow":J
    const-wide v8, 0x200000000L

    mul-long/2addr v8, v0

    add-long v2, p1, v8

    .line 81
    .local v2, "ptsWrapAbove":J
    iget-wide v8, p0, Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;->lastPts:J

    sub-long v8, v4, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    iget-wide v10, p0, Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;->lastPts:J

    sub-long v10, v2, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_62

    move-wide p1, v4

    .line 85
    .end local v0    # "closestWrapCount":J
    .end local v2    # "ptsWrapAbove":J
    .end local v4    # "ptsWrapBelow":J
    :cond_40
    :goto_40
    invoke-static {p1, p2}, Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;->ptsToUs(J)J

    move-result-wide v6

    .line 86
    .local v6, "timeUs":J
    iget-wide v8, p0, Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;->firstSampleTimestampUs:J

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v8, v8, v10

    if-eqz v8, :cond_5c

    iget-wide v8, p0, Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;->lastPts:J

    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v8, v8, v10

    if-nez v8, :cond_5c

    .line 88
    iget-wide v8, p0, Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;->firstSampleTimestampUs:J

    sub-long/2addr v8, v6

    iput-wide v8, p0, Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;->timestampOffsetUs:J

    .line 91
    :cond_5c
    iput-wide p1, p0, Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;->lastPts:J

    .line 92
    iget-wide v8, p0, Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;->timestampOffsetUs:J

    add-long/2addr v8, v6

    return-wide v8

    .end local v6    # "timeUs":J
    .restart local v0    # "closestWrapCount":J
    .restart local v2    # "ptsWrapAbove":J
    .restart local v4    # "ptsWrapBelow":J
    :cond_62
    move-wide p1, v2

    .line 81
    goto :goto_40
.end method

.method public isInitialized()Z
    .registers 5

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;->lastPts:J

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

.method public reset()V
    .registers 3

    .prologue
    .line 58
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;->lastPts:J

    .line 59
    return-void
.end method
