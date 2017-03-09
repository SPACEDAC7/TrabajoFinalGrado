.class final Lcom/google/android/exoplayer/ExoPlayerImpl;
.super Ljava/lang/Object;
.source "ExoPlayerImpl.java"

# interfaces
.implements Lcom/google/android/exoplayer/ExoPlayer;


# static fields
.field private static final TAG:Ljava/lang/String; = "ExoPlayerImpl"


# instance fields
.field private final eventHandler:Landroid/os/Handler;

.field private final internalPlayer:Lcom/google/android/exoplayer/ExoPlayerImplInternal;

.field private final listeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lcom/google/android/exoplayer/ExoPlayer$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private pendingPlayWhenReadyAcks:I

.field private playWhenReady:Z

.field private playbackState:I

.field private final selectedTrackIndices:[I

.field private final trackFormats:[[Lcom/google/android/exoplayer/MediaFormat;


# direct methods
.method public constructor <init>(III)V
    .registers 10
    .param p1, "rendererCount"    # I
    .param p2, "minBufferMs"    # I
    .param p3, "minRebufferMs"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, "ExoPlayerImpl"

    const-string v1, "Init 1.5.11"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->playWhenReady:Z

    .line 58
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->playbackState:I

    .line 59
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 60
    new-array v0, p1, [[Lcom/google/android/exoplayer/MediaFormat;

    iput-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->trackFormats:[[Lcom/google/android/exoplayer/MediaFormat;

    .line 61
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->selectedTrackIndices:[I

    .line 62
    new-instance v0, Lcom/google/android/exoplayer/ExoPlayerImpl$1;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer/ExoPlayerImpl$1;-><init>(Lcom/google/android/exoplayer/ExoPlayerImpl;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->eventHandler:Landroid/os/Handler;

    .line 68
    new-instance v0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;

    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->eventHandler:Landroid/os/Handler;

    iget-boolean v2, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->playWhenReady:Z

    iget-object v3, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->selectedTrackIndices:[I

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;-><init>(Landroid/os/Handler;Z[III)V

    iput-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer/ExoPlayerImplInternal;

    .line 70
    return-void
.end method


# virtual methods
.method public addListener(Lcom/google/android/exoplayer/ExoPlayer$Listener;)V
    .registers 3
    .param p1, "listener"    # Lcom/google/android/exoplayer/ExoPlayer$Listener;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 80
    return-void
.end method

.method public blockingSendMessage(Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V
    .registers 5
    .param p1, "target"    # Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;
    .param p2, "messageType"    # I
    .param p3, "message"    # Ljava/lang/Object;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->blockingSendMessage(Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    .line 167
    return-void
.end method

.method public getBufferedPercentage()I
    .registers 11

    .prologue
    const-wide/16 v4, 0x64

    const-wide/16 v8, -0x1

    .line 186
    invoke-virtual {p0}, Lcom/google/android/exoplayer/ExoPlayerImpl;->getBufferedPosition()J

    move-result-wide v0

    .line 187
    .local v0, "bufferedPosition":J
    invoke-virtual {p0}, Lcom/google/android/exoplayer/ExoPlayerImpl;->getDuration()J

    move-result-wide v2

    .line 188
    .local v2, "duration":J
    cmp-long v6, v0, v8

    if-eqz v6, :cond_14

    cmp-long v6, v2, v8

    if-nez v6, :cond_16

    :cond_14
    const/4 v4, 0x0

    :goto_15
    return v4

    :cond_16
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-nez v6, :cond_1e

    :goto_1c
    long-to-int v4, v4

    goto :goto_15

    :cond_1e
    mul-long/2addr v4, v0

    div-long/2addr v4, v2

    goto :goto_1c
.end method

.method public getBufferedPosition()J
    .registers 3

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->getBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentPosition()J
    .registers 3

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .registers 3

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlayWhenReady()Z
    .registers 2

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->playWhenReady:Z

    return v0
.end method

.method public getPlaybackLooper()Landroid/os/Looper;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->getPlaybackLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackState()I
    .registers 2

    .prologue
    .line 89
    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->playbackState:I

    return v0
.end method

.method public getSelectedTrack(I)I
    .registers 3
    .param p1, "rendererIndex"    # I

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->selectedTrackIndices:[I

    aget v0, v0, p1

    return v0
.end method

.method public getTrackCount(I)I
    .registers 3
    .param p1, "rendererIndex"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->trackFormats:[[Lcom/google/android/exoplayer/MediaFormat;

    aget-object v0, v0, p1

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->trackFormats:[[Lcom/google/android/exoplayer/MediaFormat;

    aget-object v0, v0, p1

    array-length v0, v0

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getTrackFormat(II)Lcom/google/android/exoplayer/MediaFormat;
    .registers 4
    .param p1, "rendererIndex"    # I
    .param p2, "trackIndex"    # I

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->trackFormats:[[Lcom/google/android/exoplayer/MediaFormat;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    return-object v0
.end method

.method handleEvent(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 194
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_88

    .line 227
    :cond_6
    return-void

    .line 196
    :pswitch_7
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->trackFormats:[[Lcom/google/android/exoplayer/MediaFormat;

    iget-object v4, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->trackFormats:[[Lcom/google/android/exoplayer/MediaFormat;

    array-length v4, v4

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->playbackState:I

    .line 198
    iget-object v2, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/ExoPlayer$Listener;

    .line 199
    .local v1, "listener":Lcom/google/android/exoplayer/ExoPlayer$Listener;
    iget-boolean v3, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->playWhenReady:Z

    iget v4, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->playbackState:I

    invoke-interface {v1, v3, v4}, Lcom/google/android/exoplayer/ExoPlayer$Listener;->onPlayerStateChanged(ZI)V

    goto :goto_1b

    .line 204
    .end local v1    # "listener":Lcom/google/android/exoplayer/ExoPlayer$Listener;
    :pswitch_2f
    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->playbackState:I

    .line 205
    iget-object v2, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_39
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/ExoPlayer$Listener;

    .line 206
    .restart local v1    # "listener":Lcom/google/android/exoplayer/ExoPlayer$Listener;
    iget-boolean v3, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->playWhenReady:Z

    iget v4, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->playbackState:I

    invoke-interface {v1, v3, v4}, Lcom/google/android/exoplayer/ExoPlayer$Listener;->onPlayerStateChanged(ZI)V

    goto :goto_39

    .line 211
    .end local v1    # "listener":Lcom/google/android/exoplayer/ExoPlayer$Listener;
    :pswitch_4d
    iget v2, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->pendingPlayWhenReadyAcks:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->pendingPlayWhenReadyAcks:I

    .line 212
    iget v2, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->pendingPlayWhenReadyAcks:I

    if-nez v2, :cond_6

    .line 213
    iget-object v2, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/ExoPlayer$Listener;

    .line 214
    .restart local v1    # "listener":Lcom/google/android/exoplayer/ExoPlayer$Listener;
    invoke-interface {v1}, Lcom/google/android/exoplayer/ExoPlayer$Listener;->onPlayWhenReadyCommitted()V

    goto :goto_5d

    .line 220
    .end local v1    # "listener":Lcom/google/android/exoplayer/ExoPlayer$Listener;
    :pswitch_6d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer/ExoPlaybackException;

    .line 221
    .local v0, "exception":Lcom/google/android/exoplayer/ExoPlaybackException;
    iget-object v2, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_77
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/ExoPlayer$Listener;

    .line 222
    .restart local v1    # "listener":Lcom/google/android/exoplayer/ExoPlayer$Listener;
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer/ExoPlayer$Listener;->onPlayerError(Lcom/google/android/exoplayer/ExoPlaybackException;)V

    goto :goto_77

    .line 194
    nop

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_7
        :pswitch_2f
        :pswitch_4d
        :pswitch_6d
    .end packed-switch
.end method

.method public isPlayWhenReadyCommitted()Z
    .registers 2

    .prologue
    .line 140
    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->pendingPlayWhenReadyAcks:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public varargs prepare([Lcom/google/android/exoplayer/TrackRenderer;)V
    .registers 4
    .param p1, "renderers"    # [Lcom/google/android/exoplayer/TrackRenderer;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->trackFormats:[[Lcom/google/android/exoplayer/MediaFormat;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->prepare([Lcom/google/android/exoplayer/TrackRenderer;)V

    .line 96
    return-void
.end method

.method public release()V
    .registers 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->release()V

    .line 156
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->eventHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 157
    return-void
.end method

.method public removeListener(Lcom/google/android/exoplayer/ExoPlayer$Listener;)V
    .registers 3
    .param p1, "listener"    # Lcom/google/android/exoplayer/ExoPlayer$Listener;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 85
    return-void
.end method

.method public seekTo(J)V
    .registers 4
    .param p1, "positionMs"    # J

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->seekTo(J)V

    .line 146
    return-void
.end method

.method public sendMessage(Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V
    .registers 5
    .param p1, "target"    # Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;
    .param p2, "messageType"    # I
    .param p3, "message"    # Ljava/lang/Object;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->sendMessage(Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    .line 162
    return-void
.end method

.method public setPlayWhenReady(Z)V
    .registers 5
    .param p1, "playWhenReady"    # Z

    .prologue
    .line 123
    iget-boolean v1, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->playWhenReady:Z

    if-eq v1, p1, :cond_29

    .line 124
    iput-boolean p1, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->playWhenReady:Z

    .line 125
    iget v1, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->pendingPlayWhenReadyAcks:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->pendingPlayWhenReadyAcks:I

    .line 126
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->setPlayWhenReady(Z)V

    .line 127
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/ExoPlayer$Listener;

    .line 128
    .local v0, "listener":Lcom/google/android/exoplayer/ExoPlayer$Listener;
    iget v2, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->playbackState:I

    invoke-interface {v0, p1, v2}, Lcom/google/android/exoplayer/ExoPlayer$Listener;->onPlayerStateChanged(ZI)V

    goto :goto_17

    .line 131
    .end local v0    # "listener":Lcom/google/android/exoplayer/ExoPlayer$Listener;
    :cond_29
    return-void
.end method

.method public setSelectedTrack(II)V
    .registers 4
    .param p1, "rendererIndex"    # I
    .param p2, "trackIndex"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->selectedTrackIndices:[I

    aget v0, v0, p1

    if-eq v0, p2, :cond_f

    .line 111
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->selectedTrackIndices:[I

    aput p2, v0, p1

    .line 112
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->setRendererSelectedTrack(II)V

    .line 114
    :cond_f
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->stop()V

    .line 151
    return-void
.end method
