.class Lcom/buzzfeed/mediaviewer/VideoViewerFragment$PlayPauseListener;
.super Ljava/lang/Object;
.source "VideoViewerFragment.java"

# interfaces
.implements Lcom/buzzfeed/android/vcr/view/BaseControllerView$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/mediaviewer/VideoViewerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayPauseListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/mediaviewer/VideoViewerFragment;


# direct methods
.method private constructor <init>(Lcom/buzzfeed/mediaviewer/VideoViewerFragment;)V
    .registers 2

    .prologue
    .line 375
    iput-object p1, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment$PlayPauseListener;->this$0:Lcom/buzzfeed/mediaviewer/VideoViewerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/buzzfeed/mediaviewer/VideoViewerFragment;Lcom/buzzfeed/mediaviewer/VideoViewerFragment$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/buzzfeed/mediaviewer/VideoViewerFragment;
    .param p2, "x1"    # Lcom/buzzfeed/mediaviewer/VideoViewerFragment$1;

    .prologue
    .line 375
    invoke-direct {p0, p1}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment$PlayPauseListener;-><init>(Lcom/buzzfeed/mediaviewer/VideoViewerFragment;)V

    return-void
.end method


# virtual methods
.method public onPauseClicked()V
    .registers 5

    .prologue
    .line 388
    iget-object v2, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment$PlayPauseListener;->this$0:Lcom/buzzfeed/mediaviewer/VideoViewerFragment;

    iget-object v2, v2, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v2}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->getCurrentPosition()J

    move-result-wide v0

    .line 389
    .local v0, "currentPosition":J
    iget-object v2, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment$PlayPauseListener;->this$0:Lcom/buzzfeed/mediaviewer/VideoViewerFragment;

    iget-object v2, v2, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mVideoTracker:Lcom/buzzfeed/analytics/client/VideoTracker;

    const-string v3, "media_viewer"

    .line 390
    invoke-virtual {v2, v3}, Lcom/buzzfeed/analytics/client/VideoTracker;->setPlayerLocation(Ljava/lang/String;)Lcom/buzzfeed/analytics/client/VideoTracker;

    move-result-object v2

    .line 391
    invoke-virtual {v2, v0, v1}, Lcom/buzzfeed/analytics/client/VideoTracker;->sendClickVideoPauseEvent(J)V

    .line 392
    iget-object v2, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment$PlayPauseListener;->this$0:Lcom/buzzfeed/mediaviewer/VideoViewerFragment;

    iget-object v2, v2, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v2}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->pause()V

    .line 393
    return-void
.end method

.method public onPlayClicked()V
    .registers 5

    .prologue
    .line 379
    iget-object v2, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment$PlayPauseListener;->this$0:Lcom/buzzfeed/mediaviewer/VideoViewerFragment;

    iget-object v2, v2, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v2}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->getCurrentPosition()J

    move-result-wide v0

    .line 380
    .local v0, "currentPosition":J
    iget-object v2, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment$PlayPauseListener;->this$0:Lcom/buzzfeed/mediaviewer/VideoViewerFragment;

    iget-object v2, v2, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mVideoTracker:Lcom/buzzfeed/analytics/client/VideoTracker;

    const-string v3, "media_viewer"

    .line 381
    invoke-virtual {v2, v3}, Lcom/buzzfeed/analytics/client/VideoTracker;->setPlayerLocation(Ljava/lang/String;)Lcom/buzzfeed/analytics/client/VideoTracker;

    move-result-object v2

    .line 382
    invoke-virtual {v2, v0, v1}, Lcom/buzzfeed/analytics/client/VideoTracker;->sendClickToResumeVideoEvent(J)V

    .line 383
    iget-object v2, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment$PlayPauseListener;->this$0:Lcom/buzzfeed/mediaviewer/VideoViewerFragment;

    iget-object v2, v2, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v2}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->play()V

    .line 384
    return-void
.end method
