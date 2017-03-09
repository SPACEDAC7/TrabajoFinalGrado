.class Lcom/buzzfeed/mediaviewer/VideoViewerFragment$4;
.super Lcom/buzzfeed/toolkit/util/TransitionListener;
.source "VideoViewerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->setSharedElementEnterTransition(Landroid/transition/Transition;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/mediaviewer/VideoViewerFragment;


# direct methods
.method constructor <init>(Lcom/buzzfeed/mediaviewer/VideoViewerFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/mediaviewer/VideoViewerFragment;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment$4;->this$0:Lcom/buzzfeed/mediaviewer/VideoViewerFragment;

    invoke-direct {p0}, Lcom/buzzfeed/toolkit/util/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .registers 4
    .param p1, "transition"    # Landroid/transition/Transition;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 181
    invoke-super {p0, p1}, Lcom/buzzfeed/toolkit/util/TransitionListener;->onTransitionEnd(Landroid/transition/Transition;)V

    .line 182
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment$4;->this$0:Lcom/buzzfeed/mediaviewer/VideoViewerFragment;

    iget-object v0, v0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment$4;->this$0:Lcom/buzzfeed/mediaviewer/VideoViewerFragment;

    iget-object v0, v0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->isReadyToPlay()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 183
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment$4;->this$0:Lcom/buzzfeed/mediaviewer/VideoViewerFragment;

    # invokes: Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->startInitialPlayback()V
    invoke-static {v0}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->access$100(Lcom/buzzfeed/mediaviewer/VideoViewerFragment;)V

    .line 185
    :cond_1c
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment$4;->this$0:Lcom/buzzfeed/mediaviewer/VideoViewerFragment;

    const/4 v1, 0x0

    # setter for: Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mIsAnimatingSharedElementTransition:Z
    invoke-static {v0, v1}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->access$202(Lcom/buzzfeed/mediaviewer/VideoViewerFragment;Z)Z

    .line 186
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 187
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment$4;->this$0:Lcom/buzzfeed/mediaviewer/VideoViewerFragment;

    # invokes: Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->updateViewPlaybackState()V
    invoke-static {v0}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->access$300(Lcom/buzzfeed/mediaviewer/VideoViewerFragment;)V

    .line 188
    return-void
.end method
