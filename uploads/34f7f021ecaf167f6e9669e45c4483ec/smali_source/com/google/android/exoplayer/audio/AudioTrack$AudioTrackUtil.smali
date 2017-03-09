.class Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;
.super Ljava/lang/Object;
.source "AudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/audio/AudioTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioTrackUtil"
.end annotation


# instance fields
.field protected audioTrack:Landroid/media/AudioTrack;

.field private endPlaybackHeadPosition:J

.field private lastRawPlaybackHeadPosition:J

.field private needsPassthroughWorkaround:Z

.field private passthroughWorkaroundPauseOffset:J

.field private rawPlaybackHeadWrapCount:J

.field private sampleRate:I

.field private stopPlaybackHeadPosition:J

.field private stopTimestampUs:J


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1076
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer/audio/AudioTrack$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/google/android/exoplayer/audio/AudioTrack$1;

    .prologue
    .line 1076
    invoke-direct {p0}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlaybackHeadPosition()J
    .registers 15

    .prologue
    const-wide/16 v8, 0x0

    .line 1145
    iget-wide v10, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->stopTimestampUs:J

    const-wide/16 v12, -0x1

    cmp-long v7, v10, v12

    if-eqz v7, :cond_28

    .line 1147
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    iget-wide v10, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->stopTimestampUs:J

    sub-long v0, v8, v10

    .line 1148
    .local v0, "elapsedTimeSinceStopUs":J
    iget v7, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->sampleRate:I

    int-to-long v8, v7

    mul-long/2addr v8, v0

    const-wide/32 v10, 0xf4240

    div-long v2, v8, v10

    .line 1149
    .local v2, "framesSinceStop":J
    iget-wide v8, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->endPlaybackHeadPosition:J

    iget-wide v10, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->stopPlaybackHeadPosition:J

    add-long/2addr v10, v2

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 1173
    .end local v0    # "elapsedTimeSinceStopUs":J
    .end local v2    # "framesSinceStop":J
    :cond_27
    :goto_27
    return-wide v8

    .line 1152
    :cond_28
    iget-object v7, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v7}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v6

    .line 1153
    .local v6, "state":I
    const/4 v7, 0x1

    if-eq v6, v7, :cond_27

    .line 1158
    const-wide v10, 0xffffffffL

    iget-object v7, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v7}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v7

    int-to-long v12, v7

    and-long v4, v10, v12

    .line 1159
    .local v4, "rawPlaybackHeadPosition":J
    iget-boolean v7, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->needsPassthroughWorkaround:Z

    if-eqz v7, :cond_51

    .line 1163
    const/4 v7, 0x2

    if-ne v6, v7, :cond_4e

    cmp-long v7, v4, v8

    if-nez v7, :cond_4e

    .line 1164
    iget-wide v8, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->lastRawPlaybackHeadPosition:J

    iput-wide v8, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->passthroughWorkaroundPauseOffset:J

    .line 1166
    :cond_4e
    iget-wide v8, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->passthroughWorkaroundPauseOffset:J

    add-long/2addr v4, v8

    .line 1168
    :cond_51
    iget-wide v8, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->lastRawPlaybackHeadPosition:J

    cmp-long v7, v8, v4

    if-lez v7, :cond_5e

    .line 1170
    iget-wide v8, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->rawPlaybackHeadWrapCount:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->rawPlaybackHeadWrapCount:J

    .line 1172
    :cond_5e
    iput-wide v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->lastRawPlaybackHeadPosition:J

    .line 1173
    iget-wide v8, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->rawPlaybackHeadWrapCount:J

    const/16 v7, 0x20

    shl-long/2addr v8, v7

    add-long/2addr v8, v4

    goto :goto_27
.end method

.method public getPlaybackHeadPositionUs()J
    .registers 5

    .prologue
    .line 1180
    invoke-virtual {p0}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPosition()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->sampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getPlaybackSpeed()F
    .registers 2

    .prologue
    .line 1241
    const/high16 v0, 0x3f800000

    return v0
.end method

.method public getTimestampFramePosition()J
    .registers 2

    .prologue
    .line 1220
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getTimestampNanoTime()J
    .registers 2

    .prologue
    .line 1204
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public handleEndOfStream(J)V
    .registers 8
    .param p1, "submittedFrames"    # J

    .prologue
    .line 1117
    invoke-virtual {p0}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->stopPlaybackHeadPosition:J

    .line 1118
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->stopTimestampUs:J

    .line 1119
    iput-wide p1, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->endPlaybackHeadPosition:J

    .line 1120
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 1121
    return-void
.end method

.method public pause()V
    .registers 5

    .prologue
    .line 1128
    iget-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->stopTimestampUs:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    .line 1133
    :goto_8
    return-void

    .line 1132
    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    goto :goto_8
.end method

.method public reconfigure(Landroid/media/AudioTrack;Z)V
    .registers 7
    .param p1, "audioTrack"    # Landroid/media/AudioTrack;
    .param p2, "needsPassthroughWorkaround"    # Z

    .prologue
    const-wide/16 v2, 0x0

    .line 1098
    iput-object p1, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->audioTrack:Landroid/media/AudioTrack;

    .line 1099
    iput-boolean p2, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->needsPassthroughWorkaround:Z

    .line 1100
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->stopTimestampUs:J

    .line 1101
    iput-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->lastRawPlaybackHeadPosition:J

    .line 1102
    iput-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->rawPlaybackHeadWrapCount:J

    .line 1103
    iput-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->passthroughWorkaroundPauseOffset:J

    .line 1104
    if-eqz p1, :cond_18

    .line 1105
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->sampleRate:I

    .line 1107
    :cond_18
    return-void
.end method

.method public setPlaybackParameters(Landroid/media/PlaybackParams;)V
    .registers 3
    .param p1, "playbackParams"    # Landroid/media/PlaybackParams;

    .prologue
    .line 1231
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public updateTimestamp()Z
    .registers 2

    .prologue
    .line 1190
    const/4 v0, 0x0

    return v0
.end method
