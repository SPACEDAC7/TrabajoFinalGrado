.class public abstract Lcom/google/android/exoplayer/TrackRenderer;
.super Ljava/lang/Object;
.source "TrackRenderer.java"

# interfaces
.implements Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;


# static fields
.field public static final END_OF_TRACK_US:J = -0x3L

.field public static final MATCH_LONGEST_US:J = -0x2L

.field protected static final STATE_ENABLED:I = 0x2

.field protected static final STATE_PREPARED:I = 0x1

.field protected static final STATE_RELEASED:I = -0x1

.field protected static final STATE_STARTED:I = 0x3

.field protected static final STATE_UNPREPARED:I = 0x0

.field public static final UNKNOWN_TIME_US:J = -0x1L


# instance fields
.field private state:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final disable()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 229
    iget v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_10

    move v0, v1

    :goto_7
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 230
    iput v1, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    .line 231
    invoke-virtual {p0}, Lcom/google/android/exoplayer/TrackRenderer;->onDisabled()V

    .line 232
    return-void

    .line 229
    :cond_10
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected abstract doPrepare(J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation
.end method

.method protected abstract doSomeWork(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation
.end method

.method final enable(IJZ)V
    .registers 7
    .param p1, "track"    # I
    .param p2, "positionUs"    # J
    .param p4, "joining"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 158
    iget v1, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    if-ne v1, v0, :cond_f

    :goto_5
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 159
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    .line 160
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer/TrackRenderer;->onEnabled(IJZ)V

    .line 161
    return-void

    .line 158
    :cond_f
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected abstract getBufferedPositionUs()J
.end method

.method protected abstract getDurationUs()J
.end method

.method protected abstract getFormat(I)Lcom/google/android/exoplayer/MediaFormat;
.end method

.method protected getMediaClock()Lcom/google/android/exoplayer/MediaClock;
    .registers 2

    .prologue
    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getState()I
    .registers 2

    .prologue
    .line 97
    iget v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    return v0
.end method

.method protected abstract getTrackCount()I
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .registers 3
    .param p1, "what"    # I
    .param p2, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 369
    return-void
.end method

.method protected abstract isEnded()Z
.end method

.method protected abstract isReady()Z
.end method

.method protected abstract maybeThrowError()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation
.end method

.method protected onDisabled()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 243
    return-void
.end method

.method protected onEnabled(IJZ)V
    .registers 5
    .param p1, "track"    # I
    .param p2, "positionUs"    # J
    .param p4, "joining"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 176
    return-void
.end method

.method protected onReleased()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 267
    return-void
.end method

.method protected onStarted()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 199
    return-void
.end method

.method protected onStopped()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 221
    return-void
.end method

.method final prepare(J)I
    .registers 6
    .param p1, "positionUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 109
    iget v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    if-nez v0, :cond_15

    move v0, v1

    :goto_7
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer/TrackRenderer;->doPrepare(J)Z

    move-result v0

    if-eqz v0, :cond_17

    :goto_10
    iput v1, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    .line 111
    iget v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    return v0

    :cond_15
    move v0, v2

    .line 109
    goto :goto_7

    :cond_17
    move v1, v2

    .line 110
    goto :goto_10
.end method

.method final release()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 251
    iget v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_19

    iget v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_19

    iget v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    if-eq v0, v2, :cond_19

    const/4 v0, 0x1

    :goto_10
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 254
    iput v2, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    .line 255
    invoke-virtual {p0}, Lcom/google/android/exoplayer/TrackRenderer;->onReleased()V

    .line 256
    return-void

    .line 251
    :cond_19
    const/4 v0, 0x0

    goto :goto_10
.end method

.method protected abstract seekTo(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation
.end method

.method final start()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 185
    iget v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_6
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 186
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    .line 187
    invoke-virtual {p0}, Lcom/google/android/exoplayer/TrackRenderer;->onStarted()V

    .line 188
    return-void

    .line 185
    :cond_10
    const/4 v0, 0x0

    goto :goto_6
.end method

.method final stop()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 207
    iget v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_6
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 208
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    .line 209
    invoke-virtual {p0}, Lcom/google/android/exoplayer/TrackRenderer;->onStopped()V

    .line 210
    return-void

    .line 207
    :cond_10
    const/4 v0, 0x0

    goto :goto_6
.end method
