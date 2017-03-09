.class public final Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;
.super Ljava/lang/Object;
.source "VideoFrameReleaseTimeHelper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper$VSyncSampler;
    }
.end annotation


# static fields
.field private static final CHOREOGRAPHER_SAMPLE_DELAY_MILLIS:J = 0x1f4L

.field private static final MAX_ALLOWED_DRIFT_NS:J = 0x1312d00L

.field private static final MIN_FRAMES_FOR_ADJUSTMENT:I = 0x6

.field private static final VSYNC_OFFSET_PERCENTAGE:J = 0x50L


# instance fields
.field private adjustedLastFrameTimeNs:J

.field private frameCount:J

.field private haveSync:Z

.field private lastFramePresentationTimeUs:J

.field private pendingAdjustedFrameTimeNs:J

.field private syncFramePresentationTimeNs:J

.field private syncUnadjustedReleaseTimeNs:J

.field private final useDefaultDisplayVsync:Z

.field private final vsyncDurationNs:J

.field private final vsyncOffsetNs:J

.field private final vsyncSampler:Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper$VSyncSampler;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 58
    const/high16 v0, -0x40800000

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;-><init>(FZ)V

    .line 59
    return-void
.end method

.method private constructor <init>(FZ)V
    .registers 7
    .param p1, "defaultDisplayRefreshRate"    # F
    .param p2, "useDefaultDisplayVsync"    # Z

    .prologue
    const-wide/16 v2, -0x1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-boolean p2, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->useDefaultDisplayVsync:Z

    .line 74
    if-eqz p2, :cond_24

    .line 75
    invoke-static {}, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper$VSyncSampler;->getInstance()Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper$VSyncSampler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->vsyncSampler:Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper$VSyncSampler;

    .line 76
    const-wide v0, 0x41cdcd6500000000L

    float-to-double v2, p1

    div-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->vsyncDurationNs:J

    .line 77
    iget-wide v0, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->vsyncDurationNs:J

    const-wide/16 v2, 0x50

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->vsyncOffsetNs:J

    .line 83
    :goto_23
    return-void

    .line 79
    :cond_24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->vsyncSampler:Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper$VSyncSampler;

    .line 80
    iput-wide v2, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->vsyncDurationNs:J

    .line 81
    iput-wide v2, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->vsyncOffsetNs:J

    goto :goto_23
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-static {p1}, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->getDefaultDisplayRefreshRate(Landroid/content/Context;)F

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;-><init>(FZ)V

    .line 69
    return-void
.end method

.method private static closestVsync(JJJ)J
    .registers 20
    .param p0, "releaseTime"    # J
    .param p2, "sampledVsyncTime"    # J
    .param p4, "vsyncDuration"    # J

    .prologue
    .line 186
    sub-long v12, p0, p2

    div-long v10, v12, p4

    .line 187
    .local v10, "vsyncCount":J
    mul-long v12, p4, v10

    add-long v8, p2, v12

    .line 190
    .local v8, "snappedTimeNs":J
    cmp-long v12, p0, v8

    if-gtz v12, :cond_18

    .line 191
    sub-long v6, v8, p4

    .line 192
    .local v6, "snappedBeforeNs":J
    move-wide v2, v8

    .line 197
    .local v2, "snappedAfterNs":J
    :goto_f
    sub-long v0, v2, p0

    .line 198
    .local v0, "snappedAfterDiff":J
    sub-long v4, p0, v6

    .line 199
    .local v4, "snappedBeforeDiff":J
    cmp-long v12, v0, v4

    if-gez v12, :cond_1c

    .end local v2    # "snappedAfterNs":J
    :goto_17
    return-wide v2

    .line 194
    .end local v0    # "snappedAfterDiff":J
    .end local v4    # "snappedBeforeDiff":J
    .end local v6    # "snappedBeforeNs":J
    :cond_18
    move-wide v6, v8

    .line 195
    .restart local v6    # "snappedBeforeNs":J
    add-long v2, v8, p4

    .restart local v2    # "snappedAfterNs":J
    goto :goto_f

    .restart local v0    # "snappedAfterDiff":J
    .restart local v4    # "snappedBeforeDiff":J
    :cond_1c
    move-wide v2, v6

    .line 199
    goto :goto_17
.end method

.method private static getDefaultDisplayRefreshRate(Landroid/content/Context;)F
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 203
    const-string/jumbo v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 204
    .local v0, "manager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRefreshRate()F

    move-result v1

    return v1
.end method

.method private isDriftTooLarge(JJ)Z
    .registers 14
    .param p1, "frameTimeNs"    # J
    .param p3, "releaseTimeNs"    # J

    .prologue
    .line 180
    iget-wide v4, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->syncFramePresentationTimeNs:J

    sub-long v0, p1, v4

    .line 181
    .local v0, "elapsedFrameTimeNs":J
    iget-wide v4, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->syncUnadjustedReleaseTimeNs:J

    sub-long v2, p3, v4

    .line 182
    .local v2, "elapsedReleaseTimeNs":J
    sub-long v4, v2, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v6, 0x1312d00

    cmp-long v4, v4, v6

    if-lez v4, :cond_17

    const/4 v4, 0x1

    :goto_16
    return v4

    :cond_17
    const/4 v4, 0x0

    goto :goto_16
.end method


# virtual methods
.method public adjustReleaseTime(JJ)J
    .registers 28
    .param p1, "framePresentationTimeUs"    # J
    .param p3, "unadjustedReleaseTimeNs"    # J

    .prologue
    .line 114
    const-wide/16 v8, 0x3e8

    mul-long v18, p1, v8

    .line 117
    .local v18, "framePresentationTimeNs":J
    move-wide/from16 v12, v18

    .line 118
    .local v12, "adjustedFrameTimeNs":J
    move-wide/from16 v6, p3

    .line 120
    .local v6, "adjustedReleaseTimeNs":J
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->haveSync:Z

    if-eqz v8, :cond_56

    .line 122
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->lastFramePresentationTimeUs:J

    cmp-long v8, p1, v8

    if-eqz v8, :cond_29

    .line 123
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->frameCount:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->frameCount:J

    .line 124
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->pendingAdjustedFrameTimeNs:J

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->adjustedLastFrameTimeNs:J

    .line 126
    :cond_29
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->frameCount:J

    const-wide/16 v10, 0x6

    cmp-long v8, v8, v10

    if-ltz v8, :cond_a1

    .line 131
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->syncFramePresentationTimeNs:J

    sub-long v8, v18, v8

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->frameCount:J

    div-long v14, v8, v10

    .line 134
    .local v14, "averageFrameDurationNs":J
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->adjustedLastFrameTimeNs:J

    add-long v16, v8, v14

    .line 136
    .local v16, "candidateAdjustedFrameTimeNs":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move-wide/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->isDriftTooLarge(JJ)Z

    move-result v8

    if-eqz v8, :cond_93

    .line 137
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->haveSync:Z

    .line 153
    .end local v14    # "averageFrameDurationNs":J
    .end local v16    # "candidateAdjustedFrameTimeNs":J
    :cond_56
    :goto_56
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->haveSync:Z

    if-nez v8, :cond_76

    .line 154
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->syncFramePresentationTimeNs:J

    .line 155
    move-wide/from16 v0, p3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->syncUnadjustedReleaseTimeNs:J

    .line 156
    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->frameCount:J

    .line 157
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->haveSync:Z

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->onSynced()V

    .line 161
    :cond_76
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->lastFramePresentationTimeUs:J

    .line 162
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->pendingAdjustedFrameTimeNs:J

    .line 164
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->vsyncSampler:Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper$VSyncSampler;

    if-eqz v8, :cond_92

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->vsyncSampler:Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper$VSyncSampler;

    iget-wide v8, v8, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper$VSyncSampler;->sampledVsyncTimeNs:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_b3

    .line 172
    .end local v6    # "adjustedReleaseTimeNs":J
    :cond_92
    :goto_92
    return-wide v6

    .line 139
    .restart local v6    # "adjustedReleaseTimeNs":J
    .restart local v14    # "averageFrameDurationNs":J
    .restart local v16    # "candidateAdjustedFrameTimeNs":J
    :cond_93
    move-wide/from16 v12, v16

    .line 140
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->syncUnadjustedReleaseTimeNs:J

    add-long/2addr v8, v12

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->syncFramePresentationTimeNs:J

    sub-long v6, v8, v10

    goto :goto_56

    .line 146
    .end local v14    # "averageFrameDurationNs":J
    .end local v16    # "candidateAdjustedFrameTimeNs":J
    :cond_a1
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->isDriftTooLarge(JJ)Z

    move-result v8

    if-eqz v8, :cond_56

    .line 147
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->haveSync:Z

    goto :goto_56

    .line 169
    :cond_b3
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->vsyncSampler:Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper$VSyncSampler;

    iget-wide v8, v8, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper$VSyncSampler;->sampledVsyncTimeNs:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->vsyncDurationNs:J

    invoke-static/range {v6 .. v11}, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->closestVsync(JJJ)J

    move-result-wide v20

    .line 172
    .local v20, "snappedTimeNs":J
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->vsyncOffsetNs:J

    sub-long v6, v20, v8

    goto :goto_92
.end method

.method public disable()V
    .registers 2

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->useDefaultDisplayVsync:Z

    if-eqz v0, :cond_9

    .line 100
    iget-object v0, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->vsyncSampler:Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper$VSyncSampler;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper$VSyncSampler;->removeObserver()V

    .line 102
    :cond_9
    return-void
.end method

.method public enable()V
    .registers 2

    .prologue
    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->haveSync:Z

    .line 90
    iget-boolean v0, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->useDefaultDisplayVsync:Z

    if-eqz v0, :cond_c

    .line 91
    iget-object v0, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->vsyncSampler:Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper$VSyncSampler;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper$VSyncSampler;->addObserver()V

    .line 93
    :cond_c
    return-void
.end method

.method protected onSynced()V
    .registers 1

    .prologue
    .line 177
    return-void
.end method
