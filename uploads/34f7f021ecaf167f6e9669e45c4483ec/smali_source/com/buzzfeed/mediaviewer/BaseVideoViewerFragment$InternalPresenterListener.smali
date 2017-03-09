.class Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$InternalPresenterListener;
.super Lcom/buzzfeed/android/vcr/player/listener/VideoSurfacePresenterListenerImpl;
.source "BaseVideoViewerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalPresenterListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;


# direct methods
.method private constructor <init>(Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;)V
    .registers 2

    .prologue
    .line 593
    iput-object p1, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$InternalPresenterListener;->this$0:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;

    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/player/listener/VideoSurfacePresenterListenerImpl;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;
    .param p2, "x1"    # Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$1;

    .prologue
    .line 593
    invoke-direct {p0, p1}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$InternalPresenterListener;-><init>(Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .registers 5
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 609
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->access$500()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".onError"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 610
    .local v0, "tag":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Player Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$InternalPresenterListener;->this$0:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;

    invoke-virtual {v1}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/buzzfeed/toolkit/util/NetworkUtil;->isConnectedToNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 613
    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$InternalPresenterListener;->this$0:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;

    sget-object v2, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;->OFFLINE:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;

    invoke-virtual {v1, v2}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->setErrorState(Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;)V

    .line 617
    :goto_44
    return-void

    .line 615
    :cond_45
    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$InternalPresenterListener;->this$0:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;

    sget-object v2, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;->VIDEO_PLAYBACK:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;

    invoke-virtual {v1, v2}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->setErrorState(Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;)V

    goto :goto_44
.end method

.method public onPlayerReleased(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;J)V
    .registers 6
    .param p1, "presenter"    # Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;
    .param p2, "playbackPosition"    # J

    .prologue
    .line 597
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$InternalPresenterListener;->this$0:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;

    invoke-virtual {v0}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->showSystemUi()V

    .line 598
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$InternalPresenterListener;->this$0:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;

    iget-object v0, v0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoContainerView:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;

    invoke-virtual {v0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->getCoverImageView()Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;->setVisibility(I)V

    .line 599
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$InternalPresenterListener;->this$0:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;

    iget-object v0, v0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoContainerView:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;

    invoke-virtual {v0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 600
    return-void
.end method

.method public onStateChanged(ZI)V
    .registers 4
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackState"    # I

    .prologue
    .line 604
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$InternalPresenterListener;->this$0:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;

    invoke-virtual {v0, p1, p2}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->updateViewPlaybackState(ZI)V

    .line 605
    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .registers 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "unappliedRotationDegrees"    # I
    .param p4, "pixelWidthHeightRatio"    # F

    .prologue
    .line 621
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$InternalPresenterListener;->this$0:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;

    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$InternalPresenterListener;->this$0:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;

    iget-object v1, v1, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v1}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->getAspectRatio()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->setAspectRatio(F)V

    .line 622
    return-void
.end method
