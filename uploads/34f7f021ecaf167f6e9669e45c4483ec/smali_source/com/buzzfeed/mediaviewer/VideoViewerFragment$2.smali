.class Lcom/buzzfeed/mediaviewer/VideoViewerFragment$2;
.super Lcom/buzzfeed/android/vcr/view/TransitionListenerAdapter;
.source "VideoViewerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->setupSharedElementTransitionListeners()V
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
    .line 119
    iput-object p1, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment$2;->this$0:Lcom/buzzfeed/mediaviewer/VideoViewerFragment;

    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/view/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .registers 4
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/buzzfeed/android/vcr/view/TransitionListenerAdapter;->onTransitionEnd(Landroid/transition/Transition;)V

    .line 123
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment$2;->this$0:Lcom/buzzfeed/mediaviewer/VideoViewerFragment;

    # invokes: Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->startInitialPlayback()V
    invoke-static {v0}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->access$100(Lcom/buzzfeed/mediaviewer/VideoViewerFragment;)V

    .line 124
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment$2;->this$0:Lcom/buzzfeed/mediaviewer/VideoViewerFragment;

    const/4 v1, 0x0

    # setter for: Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mIsAnimatingSharedElementTransition:Z
    invoke-static {v0, v1}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->access$202(Lcom/buzzfeed/mediaviewer/VideoViewerFragment;Z)Z

    .line 125
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 126
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment$2;->this$0:Lcom/buzzfeed/mediaviewer/VideoViewerFragment;

    # invokes: Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->updateViewPlaybackState()V
    invoke-static {v0}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->access$300(Lcom/buzzfeed/mediaviewer/VideoViewerFragment;)V

    .line 127
    return-void
.end method
