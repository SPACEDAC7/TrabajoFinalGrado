.class final Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$InternalSeekChangeListener;
.super Ljava/lang/Object;
.source "PlayerControlFooterView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InternalSeekChangeListener"
.end annotation


# instance fields
.field private mSeekPosition:I

.field final synthetic this$0:Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;


# direct methods
.method private constructor <init>(Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;)V
    .registers 2

    .prologue
    .line 339
    iput-object p1, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$InternalSeekChangeListener;->this$0:Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;
    .param p2, "x1"    # Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$1;

    .prologue
    .line 339
    invoke-direct {p0, p1}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$InternalSeekChangeListener;-><init>(Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 7
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 344
    if-eqz p3, :cond_21

    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$InternalSeekChangeListener;->this$0:Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    # getter for: Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;
    invoke-static {v1}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->access$200(Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;)Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 345
    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$InternalSeekChangeListener;->this$0:Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    # getter for: Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;
    invoke-static {v1}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->access$300(Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;)Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/MediaController$MediaPlayerControl;->getDuration()I

    move-result v0

    .line 346
    .local v0, "duration":I
    mul-int v1, v0, p2

    div-int/lit16 v1, v1, 0x3e8

    iput v1, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$InternalSeekChangeListener;->mSeekPosition:I

    .line 348
    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$InternalSeekChangeListener;->this$0:Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    iget v2, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$InternalSeekChangeListener;->mSeekPosition:I

    # invokes: Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->updateCounters(II)V
    invoke-static {v1, v2, v0}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->access$400(Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;II)V

    .line 351
    .end local v0    # "duration":I
    :cond_21
    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$InternalSeekChangeListener;->this$0:Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    # getter for: Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mOnSeekBarChangeListener:Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$OnSeekBarChangeListener;
    invoke-static {v1}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->access$500(Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;)Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$OnSeekBarChangeListener;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 352
    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$InternalSeekChangeListener;->this$0:Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    # getter for: Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mOnSeekBarChangeListener:Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$OnSeekBarChangeListener;
    invoke-static {v1}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->access$500(Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;)Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$OnSeekBarChangeListener;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 354
    :cond_32
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 5
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    const/4 v2, 0x1

    .line 358
    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$InternalSeekChangeListener;->this$0:Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    # setter for: Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mIsDragging:Z
    invoke-static {v1, v2}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->access$602(Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;Z)Z

    .line 359
    const/4 v0, 0x0

    .line 360
    .local v0, "isPausing":Z
    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$InternalSeekChangeListener;->this$0:Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    invoke-virtual {v1}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->stopProgressUpdates()V

    .line 362
    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$InternalSeekChangeListener;->this$0:Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    # getter for: Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;
    invoke-static {v1}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->access$700(Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;)Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$InternalSeekChangeListener;->this$0:Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    # getter for: Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;
    invoke-static {v1}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->access$800(Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;)Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 363
    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$InternalSeekChangeListener;->this$0:Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    # setter for: Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mIsPausedForSeek:Z
    invoke-static {v1, v2}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->access$902(Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;Z)Z

    .line 364
    const/4 v0, 0x1

    .line 365
    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$InternalSeekChangeListener;->this$0:Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    # getter for: Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;
    invoke-static {v1}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->access$1000(Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;)Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/MediaController$MediaPlayerControl;->pause()V

    .line 368
    :cond_2f
    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$InternalSeekChangeListener;->this$0:Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    # getter for: Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mOnSeekBarChangeListener:Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$OnSeekBarChangeListener;
    invoke-static {v1}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->access$500(Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;)Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$OnSeekBarChangeListener;

    move-result-object v1

    if-eqz v1, :cond_48

    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$InternalSeekChangeListener;->this$0:Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    # getter for: Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mAllowScrubbing:Z
    invoke-static {v1}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->access$1100(Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 369
    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$InternalSeekChangeListener;->this$0:Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    # getter for: Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mOnSeekBarChangeListener:Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$OnSeekBarChangeListener;
    invoke-static {v1}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->access$500(Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;)Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$OnSeekBarChangeListener;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;Z)V

    .line 371
    :cond_48
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 6
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    const/4 v3, 0x0

    .line 375
    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$InternalSeekChangeListener;->this$0:Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    # setter for: Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mIsDragging:Z
    invoke-static {v1, v3}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->access$602(Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;Z)Z

    .line 376
    const/4 v0, 0x0

    .line 377
    .local v0, "isResuming":Z
    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$InternalSeekChangeListener;->this$0:Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    # getter for: Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;
    invoke-static {v1}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->access$1200(Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;)Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v1

    if-eqz v1, :cond_3a

    .line 378
    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$InternalSeekChangeListener;->this$0:Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    # getter for: Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;
    invoke-static {v1}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->access$1300(Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;)Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v1

    iget v2, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$InternalSeekChangeListener;->mSeekPosition:I

    invoke-interface {v1, v2}, Landroid/widget/MediaController$MediaPlayerControl;->seekTo(I)V

    .line 380
    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$InternalSeekChangeListener;->this$0:Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    # getter for: Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mIsPausedForSeek:Z
    invoke-static {v1}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->access$900(Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 381
    invoke-static {}, Lcom/buzzfeed/analytics/client/VideoTracker;->getInstance()Lcom/buzzfeed/analytics/client/VideoTracker;

    move-result-object v1

    const-string v2, "scrub_end"

    invoke-virtual {v1, v2}, Lcom/buzzfeed/analytics/client/VideoTracker;->setPlayReason(Ljava/lang/String;)Lcom/buzzfeed/analytics/client/VideoTracker;

    .line 382
    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$InternalSeekChangeListener;->this$0:Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    # setter for: Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mIsPausedForSeek:Z
    invoke-static {v1, v3}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->access$902(Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;Z)Z

    .line 383
    const/4 v0, 0x1

    .line 384
    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$InternalSeekChangeListener;->this$0:Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    # getter for: Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;
    invoke-static {v1}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->access$1400(Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;)Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/MediaController$MediaPlayerControl;->start()V

    .line 388
    :cond_3a
    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$InternalSeekChangeListener;->this$0:Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    invoke-virtual {v1}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->startProgressUpdates()V

    .line 390
    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$InternalSeekChangeListener;->this$0:Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    # getter for: Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mOnSeekBarChangeListener:Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$OnSeekBarChangeListener;
    invoke-static {v1}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->access$500(Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;)Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$OnSeekBarChangeListener;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 391
    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$InternalSeekChangeListener;->this$0:Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    # getter for: Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mOnSeekBarChangeListener:Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$OnSeekBarChangeListener;
    invoke-static {v1}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->access$500(Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;)Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$OnSeekBarChangeListener;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;Z)V

    .line 393
    :cond_50
    return-void
.end method
