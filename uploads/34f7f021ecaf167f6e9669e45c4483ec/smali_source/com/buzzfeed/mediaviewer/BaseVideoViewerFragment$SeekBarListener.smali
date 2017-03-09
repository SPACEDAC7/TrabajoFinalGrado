.class Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$SeekBarListener;
.super Ljava/lang/Object;
.source "BaseVideoViewerFragment.java"

# interfaces
.implements Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeekBarListener"
.end annotation


# instance fields
.field mLastTrackedProgress:I

.field final synthetic this$0:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;


# direct methods
.method public constructor <init>(Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;JJ)V
    .registers 6
    .param p2, "duration"    # J
    .param p4, "startPos"    # J

    .prologue
    .line 522
    iput-object p1, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$SeekBarListener;->this$0:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 523
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$SeekBarListener;->setupProgress(JJ)V

    .line 524
    return-void
.end method

.method static synthetic access$200(Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$SeekBarListener;)V
    .registers 1
    .param p0, "x0"    # Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$SeekBarListener;

    .prologue
    .line 518
    invoke-direct {p0}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$SeekBarListener;->trackProgressIfNeeded()V

    return-void
.end method

.method private getQuartile(D)I
    .registers 14
    .param p1, "currentProgress"    # D

    .prologue
    const-wide/high16 v8, 0x3fe8000000000000L

    const-wide/high16 v6, 0x3fe0000000000000L

    const-wide/high16 v4, 0x3fd0000000000000L

    .line 542
    const/4 v0, 0x0

    .line 543
    .local v0, "quartile":I
    iget v1, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$SeekBarListener;->mLastTrackedProgress:I

    const/16 v2, 0x4b

    if-eq v1, v2, :cond_1e

    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$SeekBarListener;->this$0:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;

    # getter for: Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mLastProgressPercentage:D
    invoke-static {v1}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->access$400(Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;)D

    move-result-wide v2

    cmpg-double v1, v2, v8

    if-gtz v1, :cond_1e

    cmpg-double v1, v8, p1

    if-gtz v1, :cond_1e

    .line 544
    const/16 v0, 0x4b

    .line 550
    :cond_1d
    :goto_1d
    return v0

    .line 545
    :cond_1e
    iget v1, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$SeekBarListener;->mLastTrackedProgress:I

    const/16 v2, 0x32

    if-eq v1, v2, :cond_35

    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$SeekBarListener;->this$0:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;

    # getter for: Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mLastProgressPercentage:D
    invoke-static {v1}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->access$400(Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;)D

    move-result-wide v2

    cmpg-double v1, v2, v6

    if-gtz v1, :cond_35

    cmpg-double v1, v6, p1

    if-gtz v1, :cond_35

    .line 546
    const/16 v0, 0x32

    goto :goto_1d

    .line 547
    :cond_35
    iget v1, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$SeekBarListener;->mLastTrackedProgress:I

    const/16 v2, 0x19

    if-eq v1, v2, :cond_1d

    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$SeekBarListener;->this$0:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;

    # getter for: Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mLastProgressPercentage:D
    invoke-static {v1}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->access$400(Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;)D

    move-result-wide v2

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_1d

    cmpg-double v1, v4, p1

    if-gtz v1, :cond_1d

    .line 548
    const/16 v0, 0x19

    goto :goto_1d
.end method

.method private setupProgress(JJ)V
    .registers 14
    .param p1, "duration"    # J
    .param p3, "pos"    # J

    .prologue
    .line 528
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-eqz v3, :cond_17

    .line 529
    long-to-double v4, p3

    long-to-double v6, p1

    div-double v0, v4, v6

    .line 530
    .local v0, "currentProgress":D
    invoke-direct {p0, v0, v1}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$SeekBarListener;->getQuartile(D)I

    move-result v2

    .line 531
    .local v2, "lastQuartile":I
    if-eqz v2, :cond_12

    iput v2, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$SeekBarListener;->mLastTrackedProgress:I

    .line 532
    :cond_12
    iget-object v3, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$SeekBarListener;->this$0:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;

    # setter for: Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mLastProgressPercentage:D
    invoke-static {v3, v0, v1}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->access$402(Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;D)D

    .line 534
    .end local v0    # "currentProgress":D
    .end local v2    # "lastQuartile":I
    :cond_17
    return-void
.end method

.method private trackProgressIfNeeded()V
    .registers 13

    .prologue
    .line 561
    iget-object v7, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$SeekBarListener;->this$0:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;

    iget-object v7, v7, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    if-eqz v7, :cond_3c

    iget-object v7, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$SeekBarListener;->this$0:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;

    iget-object v7, v7, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v7}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->isPlaying()Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 562
    iget-object v7, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$SeekBarListener;->this$0:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;

    iget-object v7, v7, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v7}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->getCurrentPosition()J

    move-result-wide v0

    .line 563
    .local v0, "currentPosition":J
    iget-object v7, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$SeekBarListener;->this$0:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;

    iget-object v7, v7, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v7}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->getDuration()J

    move-result-wide v4

    .line 564
    .local v4, "duration":J
    long-to-double v8, v0

    long-to-double v10, v4

    div-double v2, v8, v10

    .line 565
    .local v2, "currentProgress":D
    invoke-direct {p0, v2, v3}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$SeekBarListener;->getQuartile(D)I

    move-result v6

    .line 566
    .local v6, "quartile":I
    if-eqz v6, :cond_37

    .line 567
    iput v6, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$SeekBarListener;->mLastTrackedProgress:I

    .line 568
    iget-object v7, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$SeekBarListener;->this$0:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;

    iget-object v7, v7, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoTracker:Lcom/buzzfeed/analytics/client/VideoTracker;

    const-string v8, "MediaViewer"

    iget v9, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$SeekBarListener;->mLastTrackedProgress:I

    invoke-virtual {v7, v8, v9}, Lcom/buzzfeed/analytics/client/VideoTracker;->sendPlaybackProgress(Ljava/lang/String;I)V

    .line 570
    :cond_37
    iget-object v7, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$SeekBarListener;->this$0:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;

    # setter for: Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mLastProgressPercentage:D
    invoke-static {v7, v2, v3}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->access$402(Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;D)D

    .line 572
    .end local v0    # "currentPosition":J
    .end local v2    # "currentProgress":D
    .end local v4    # "duration":J
    .end local v6    # "quartile":I
    :cond_3c
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 555
    if-nez p3, :cond_5

    .line 556
    invoke-direct {p0}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$SeekBarListener;->trackProgressIfNeeded()V

    .line 558
    :cond_5
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;Z)V
    .registers 7
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "isPausing"    # Z

    .prologue
    .line 576
    iget-object v2, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$SeekBarListener;->this$0:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;

    iget-object v2, v2, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v2}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->getCurrentPosition()J

    move-result-wide v0

    .line 577
    .local v0, "currentPosition":J
    iget-object v2, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$SeekBarListener;->this$0:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;

    iget-object v2, v2, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoTracker:Lcom/buzzfeed/analytics/client/VideoTracker;

    const-string v3, "media_viewer"

    .line 578
    invoke-virtual {v2, v3}, Lcom/buzzfeed/analytics/client/VideoTracker;->setPlayerLocation(Ljava/lang/String;)Lcom/buzzfeed/analytics/client/VideoTracker;

    move-result-object v2

    .line 579
    invoke-virtual {v2, v0, v1, p2}, Lcom/buzzfeed/analytics/client/VideoTracker;->sendStartScrubPosition(JZ)V

    .line 580
    iget-object v2, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$SeekBarListener;->this$0:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;

    invoke-virtual {v2}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->showSystemUi()V

    .line 581
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;Z)V
    .registers 9
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "isResuming"    # Z

    .prologue
    .line 585
    iget-object v2, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$SeekBarListener;->this$0:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;

    iget-object v2, v2, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v2}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->getCurrentPosition()J

    move-result-wide v0

    .line 586
    .local v0, "currentPosition":J
    iget-object v2, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$SeekBarListener;->this$0:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;

    iget-object v2, v2, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoTracker:Lcom/buzzfeed/analytics/client/VideoTracker;

    const-string v3, "media_viewer"

    .line 587
    invoke-virtual {v2, v3}, Lcom/buzzfeed/analytics/client/VideoTracker;->setPlayerLocation(Ljava/lang/String;)Lcom/buzzfeed/analytics/client/VideoTracker;

    move-result-object v2

    .line 588
    invoke-virtual {v2, v0, v1, p2}, Lcom/buzzfeed/analytics/client/VideoTracker;->sendEndScrubPosition(JZ)V

    .line 589
    iget-object v2, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$SeekBarListener;->this$0:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v4, v5}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->delayHideSystemUi(J)V

    .line 590
    return-void
.end method

.method public resetProgress()V
    .registers 5

    .prologue
    .line 537
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$SeekBarListener;->this$0:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;

    const-wide/16 v2, 0x0

    # setter for: Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mLastProgressPercentage:D
    invoke-static {v0, v2, v3}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->access$402(Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;D)D

    .line 538
    const/4 v0, 0x0

    iput v0, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$SeekBarListener;->mLastTrackedProgress:I

    .line 539
    return-void
.end method
