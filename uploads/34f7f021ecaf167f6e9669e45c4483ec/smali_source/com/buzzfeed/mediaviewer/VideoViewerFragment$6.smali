.class Lcom/buzzfeed/mediaviewer/VideoViewerFragment$6;
.super Ljava/lang/Object;
.source "VideoViewerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->onSetupButtons(Landroid/view/View;Landroid/view/View;)V
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
    .line 208
    iput-object p1, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment$6;->this$0:Lcom/buzzfeed/mediaviewer/VideoViewerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 211
    iget-object v2, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment$6;->this$0:Lcom/buzzfeed/mediaviewer/VideoViewerFragment;

    iget-object v2, v2, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v2}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->play()V

    .line 212
    iget-object v2, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment$6;->this$0:Lcom/buzzfeed/mediaviewer/VideoViewerFragment;

    iget-object v2, v2, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v2}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->getCurrentPosition()J

    move-result-wide v0

    .line 213
    .local v0, "currentPosition":J
    iget-object v2, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment$6;->this$0:Lcom/buzzfeed/mediaviewer/VideoViewerFragment;

    iget-object v2, v2, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mVideoTracker:Lcom/buzzfeed/analytics/client/VideoTracker;

    const-string v3, "MediaViewer"

    invoke-virtual {v2, v3, v0, v1}, Lcom/buzzfeed/analytics/client/VideoTracker;->sendClickToPlayEvent(Ljava/lang/String;J)V

    .line 216
    return-void
.end method
