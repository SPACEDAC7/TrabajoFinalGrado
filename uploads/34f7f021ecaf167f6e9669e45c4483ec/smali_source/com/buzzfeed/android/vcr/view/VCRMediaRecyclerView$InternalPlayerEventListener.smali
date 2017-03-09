.class Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalPlayerEventListener;
.super Ljava/lang/Object;
.source "VCRMediaRecyclerView.java"

# interfaces
.implements Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalPlayerEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;


# direct methods
.method private constructor <init>(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;)V
    .registers 2

    .prologue
    .line 366
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalPlayerEventListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;
    .param p2, "x1"    # Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$1;

    .prologue
    .line 366
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalPlayerEventListener;-><init>(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;)V

    return-void
.end method


# virtual methods
.method public onAudioMutedStateChanged(Z)V
    .registers 4
    .param p1, "muted"    # Z

    .prologue
    .line 378
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalPlayerEventListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    # getter for: Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mPlaybackStateListener:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$PlaybackStateListener;
    invoke-static {v0}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->access$800(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;)Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$PlaybackStateListener;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 379
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalPlayerEventListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    # getter for: Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mPlaybackStateListener:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$PlaybackStateListener;
    invoke-static {v0}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->access$800(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;)Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$PlaybackStateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalPlayerEventListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    # getter for: Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mCurrentFocusedViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-static {v1}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->access$500(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$PlaybackStateListener;->onAudioMuteStateChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    .line 381
    :cond_17
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 430
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalPlayerEventListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    const/4 v1, 0x0

    # invokes: Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->updateKeepScreenOnFlags(Z)V
    invoke-static {v0, v1}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->access$700(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;Z)V

    .line 431
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalPlayerEventListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    # getter for: Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mPlaybackStateListener:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$PlaybackStateListener;
    invoke-static {v0}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->access$800(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;)Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$PlaybackStateListener;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 432
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalPlayerEventListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    # getter for: Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mPlaybackStateListener:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$PlaybackStateListener;
    invoke-static {v0}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->access$800(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;)Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$PlaybackStateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalPlayerEventListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    # getter for: Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mCurrentFocusedViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-static {v1}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->access$500(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$PlaybackStateListener;->onPlaybackError(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 434
    :cond_1d
    return-void
.end method

.method public onPlayerPrepared(Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;)V
    .registers 4
    .param p1, "exoPlayer"    # Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    .prologue
    .line 370
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalPlayerEventListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    const/4 v1, 0x1

    # invokes: Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->updateKeepScreenOnFlags(Z)V
    invoke-static {v0, v1}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->access$700(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;Z)V

    .line 371
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalPlayerEventListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    # getter for: Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mPlaybackStateListener:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$PlaybackStateListener;
    invoke-static {v0}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->access$800(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;)Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$PlaybackStateListener;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 372
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalPlayerEventListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    # getter for: Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mPlaybackStateListener:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$PlaybackStateListener;
    invoke-static {v0}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->access$800(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;)Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$PlaybackStateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalPlayerEventListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    # getter for: Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mCurrentFocusedViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-static {v1}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->access$500(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$PlaybackStateListener;->onPlaybackPreparing(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 374
    :cond_1d
    return-void
.end method

.method public onPlayerReleased(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;J)V
    .registers 6
    .param p1, "presenter"    # Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;
    .param p2, "playbackPosition"    # J

    .prologue
    .line 385
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalPlayerEventListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    const/4 v1, 0x0

    # invokes: Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->updateKeepScreenOnFlags(Z)V
    invoke-static {v0, v1}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->access$700(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;Z)V

    .line 386
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalPlayerEventListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    # getter for: Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mPlaybackStateListener:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$PlaybackStateListener;
    invoke-static {v0}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->access$800(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;)Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$PlaybackStateListener;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 387
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalPlayerEventListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    # getter for: Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mPlaybackStateListener:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$PlaybackStateListener;
    invoke-static {v0}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->access$800(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;)Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$PlaybackStateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalPlayerEventListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    # getter for: Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mCurrentFocusedViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-static {v1}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->access$500(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$PlaybackStateListener;->onPlaybackStopped(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 389
    :cond_1d
    return-void
.end method

.method public onPlayerStopped(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;J)V
    .registers 6
    .param p1, "presenter"    # Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;
    .param p2, "playbackPosition"    # J

    .prologue
    .line 393
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalPlayerEventListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    # getter for: Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mPlaybackStateListener:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$PlaybackStateListener;
    invoke-static {v0}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->access$800(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;)Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$PlaybackStateListener;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 394
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalPlayerEventListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    # getter for: Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mPlaybackStateListener:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$PlaybackStateListener;
    invoke-static {v0}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->access$800(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;)Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$PlaybackStateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalPlayerEventListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    # getter for: Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mCurrentFocusedViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-static {v1}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->access$500(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$PlaybackStateListener;->onPlaybackStopped(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 396
    :cond_17
    return-void
.end method

.method public onStateChanged(ZI)V
    .registers 6
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackState"    # I

    .prologue
    const/4 v2, 0x0

    .line 400
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalPlayerEventListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    # getter for: Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mPlaybackStateListener:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$PlaybackStateListener;
    invoke-static {v0}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->access$800(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;)Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$PlaybackStateListener;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalPlayerEventListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    # getter for: Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;
    invoke-static {v0}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->access$600(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;)Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_16

    .line 426
    :cond_15
    :goto_15
    return-void

    .line 404
    :cond_16
    packed-switch p2, :pswitch_data_7a

    .line 423
    # getter for: Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown playback state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 406
    :pswitch_34
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalPlayerEventListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    # invokes: Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->updateKeepScreenOnFlags(Z)V
    invoke-static {v0, v2}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->access$700(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;Z)V

    goto :goto_15

    .line 409
    :pswitch_3a
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalPlayerEventListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    # getter for: Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mPlaybackStateListener:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$PlaybackStateListener;
    invoke-static {v0}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->access$800(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;)Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$PlaybackStateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalPlayerEventListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    # getter for: Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mCurrentFocusedViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-static {v1}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->access$500(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$PlaybackStateListener;->onPlaybackStarted(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 410
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalPlayerEventListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    # invokes: Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->updateKeepScreenOnFlags(Z)V
    invoke-static {v0, p1}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->access$700(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;Z)V

    goto :goto_15

    .line 414
    :pswitch_4f
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalPlayerEventListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    # getter for: Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mPlaybackStateListener:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$PlaybackStateListener;
    invoke-static {v0}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->access$800(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;)Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$PlaybackStateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalPlayerEventListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    # getter for: Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mCurrentFocusedViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-static {v1}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->access$500(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$PlaybackStateListener;->onPlaybackPreparing(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 415
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalPlayerEventListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    const/4 v1, 0x1

    # invokes: Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->updateKeepScreenOnFlags(Z)V
    invoke-static {v0, v1}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->access$700(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;Z)V

    goto :goto_15

    .line 418
    :pswitch_65
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalPlayerEventListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    # getter for: Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mPlaybackStateListener:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$PlaybackStateListener;
    invoke-static {v0}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->access$800(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;)Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$PlaybackStateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalPlayerEventListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    # getter for: Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mCurrentFocusedViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-static {v1}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->access$500(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$PlaybackStateListener;->onPlaybackStopped(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 419
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalPlayerEventListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    # invokes: Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->updateKeepScreenOnFlags(Z)V
    invoke-static {v0, v2}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->access$700(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;Z)V

    goto :goto_15

    .line 404
    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_34
        :pswitch_4f
        :pswitch_4f
        :pswitch_3a
        :pswitch_65
    .end packed-switch
.end method

.method public onVideoSizeChanged(IIIF)V
    .registers 11
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "unappliedRotationDegrees"    # I
    .param p4, "pixelWidthHeightRatio"    # F

    .prologue
    .line 439
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalPlayerEventListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    # getter for: Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mPlaybackStateListener:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$PlaybackStateListener;
    invoke-static {v0}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->access$800(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;)Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$PlaybackStateListener;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 440
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalPlayerEventListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    # getter for: Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mPlaybackStateListener:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$PlaybackStateListener;
    invoke-static {v0}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->access$800(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;)Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$PlaybackStateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalPlayerEventListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    # getter for: Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mCurrentFocusedViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-static {v1}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->access$500(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$PlaybackStateListener;->onVideoSizeChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIIF)V

    .line 443
    :cond_1b
    return-void
.end method
