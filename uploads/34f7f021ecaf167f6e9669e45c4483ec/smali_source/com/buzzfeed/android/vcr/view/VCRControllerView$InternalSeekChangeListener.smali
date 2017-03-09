.class final Lcom/buzzfeed/android/vcr/view/VCRControllerView$InternalSeekChangeListener;
.super Ljava/lang/Object;
.source "VCRControllerView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/vcr/view/VCRControllerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InternalSeekChangeListener"
.end annotation


# instance fields
.field private mSeekPosition:I

.field final synthetic this$0:Lcom/buzzfeed/android/vcr/view/VCRControllerView;


# direct methods
.method private constructor <init>(Lcom/buzzfeed/android/vcr/view/VCRControllerView;)V
    .registers 2

    .prologue
    .line 353
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView$InternalSeekChangeListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRControllerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/buzzfeed/android/vcr/view/VCRControllerView;Lcom/buzzfeed/android/vcr/view/VCRControllerView$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/buzzfeed/android/vcr/view/VCRControllerView;
    .param p2, "x1"    # Lcom/buzzfeed/android/vcr/view/VCRControllerView$1;

    .prologue
    .line 353
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/vcr/view/VCRControllerView$InternalSeekChangeListener;-><init>(Lcom/buzzfeed/android/vcr/view/VCRControllerView;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 7
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 358
    if-eqz p3, :cond_8

    iget-object v1, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView$InternalSeekChangeListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRControllerView;

    iget-object v1, v1, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    if-nez v1, :cond_9

    .line 366
    :cond_8
    :goto_8
    return-void

    .line 362
    :cond_9
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView$InternalSeekChangeListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRControllerView;

    iget-object v1, v1, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v1}, Landroid/widget/MediaController$MediaPlayerControl;->getDuration()I

    move-result v0

    .line 363
    .local v0, "duration":I
    mul-int v1, v0, p2

    div-int/lit16 v1, v1, 0x3e8

    iput v1, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView$InternalSeekChangeListener;->mSeekPosition:I

    .line 365
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView$InternalSeekChangeListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRControllerView;

    iget v2, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView$InternalSeekChangeListener;->mSeekPosition:I

    # invokes: Lcom/buzzfeed/android/vcr/view/VCRControllerView;->updateCounters(II)V
    invoke-static {v1, v2, v0}, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->access$300(Lcom/buzzfeed/android/vcr/view/VCRControllerView;II)V

    goto :goto_8
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    const/4 v1, 0x1

    .line 370
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView$InternalSeekChangeListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRControllerView;

    # setter for: Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mIsDragging:Z
    invoke-static {v0, v1}, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->access$402(Lcom/buzzfeed/android/vcr/view/VCRControllerView;Z)Z

    .line 372
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView$InternalSeekChangeListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRControllerView;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->stopProgressUpdates()V

    .line 374
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView$InternalSeekChangeListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRControllerView;

    iget-object v0, v0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView$InternalSeekChangeListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRControllerView;

    iget-object v0, v0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 375
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView$InternalSeekChangeListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRControllerView;

    # setter for: Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mIsPausedForSeek:Z
    invoke-static {v0, v1}, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->access$502(Lcom/buzzfeed/android/vcr/view/VCRControllerView;Z)Z

    .line 376
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView$InternalSeekChangeListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRControllerView;

    iget-object v0, v0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->pause()V

    .line 379
    :cond_27
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView$InternalSeekChangeListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRControllerView;

    # invokes: Lcom/buzzfeed/android/vcr/view/VCRControllerView;->cancelHide()V
    invoke-static {v0}, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->access$600(Lcom/buzzfeed/android/vcr/view/VCRControllerView;)V

    .line 380
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 6
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    const/4 v2, 0x0

    .line 384
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView$InternalSeekChangeListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRControllerView;

    # setter for: Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mIsDragging:Z
    invoke-static {v0, v2}, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->access$402(Lcom/buzzfeed/android/vcr/view/VCRControllerView;Z)Z

    .line 386
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView$InternalSeekChangeListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRControllerView;

    iget-object v0, v0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    if-eqz v0, :cond_29

    .line 387
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView$InternalSeekChangeListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRControllerView;

    iget-object v0, v0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    iget v1, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView$InternalSeekChangeListener;->mSeekPosition:I

    invoke-interface {v0, v1}, Landroid/widget/MediaController$MediaPlayerControl;->seekTo(I)V

    .line 389
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView$InternalSeekChangeListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRControllerView;

    # getter for: Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mIsPausedForSeek:Z
    invoke-static {v0}, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->access$500(Lcom/buzzfeed/android/vcr/view/VCRControllerView;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 390
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView$InternalSeekChangeListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRControllerView;

    # setter for: Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mIsPausedForSeek:Z
    invoke-static {v0, v2}, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->access$502(Lcom/buzzfeed/android/vcr/view/VCRControllerView;Z)Z

    .line 391
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView$InternalSeekChangeListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRControllerView;

    iget-object v0, v0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->start()V

    .line 395
    :cond_29
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView$InternalSeekChangeListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRControllerView;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->startProgressUpdates()V

    .line 396
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView$InternalSeekChangeListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRControllerView;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->hideDelayed(J)V

    .line 397
    return-void
.end method
