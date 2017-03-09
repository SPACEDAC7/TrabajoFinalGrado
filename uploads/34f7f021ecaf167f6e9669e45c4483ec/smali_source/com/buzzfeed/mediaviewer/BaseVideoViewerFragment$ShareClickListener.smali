.class Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$ShareClickListener;
.super Ljava/lang/Object;
.source "BaseVideoViewerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShareClickListener"
.end annotation


# instance fields
.field private mShareActionListener:Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;

.field private mSourceUri:Ljava/lang/String;

.field private mVideoTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;


# direct methods
.method public constructor <init>(Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p2, "videoTitle"    # Ljava/lang/String;
    .param p3, "sourceUri"    # Ljava/lang/String;

    .prologue
    .line 480
    iput-object p1, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$ShareClickListener;->this$0:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 481
    iput-object p2, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$ShareClickListener;->mVideoTitle:Ljava/lang/String;

    .line 482
    iput-object p3, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$ShareClickListener;->mSourceUri:Ljava/lang/String;

    .line 483
    return-void
.end method

.method static synthetic access$302(Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$ShareClickListener;Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;)Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$ShareClickListener;
    .param p1, "x1"    # Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;

    .prologue
    .line 474
    iput-object p1, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$ShareClickListener;->mShareActionListener:Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;

    return-object p1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 487
    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$ShareClickListener;->mSourceUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 488
    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$ShareClickListener;->this$0:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;

    sget v4, Lcom/buzzfeed/mediaviewer/R$string;->video_viewer_no_share_link_available:I

    invoke-virtual {v1, v4}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 489
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$ShareClickListener;->this$0:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;

    invoke-virtual {v1}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 515
    .end local v0    # "message":Ljava/lang/String;
    :goto_1e
    return-void

    .line 493
    :cond_1f
    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$ShareClickListener;->this$0:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;

    iget-object v1, v1, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v1}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->getCurrentPosition()J

    move-result-wide v2

    .line 495
    .local v2, "positionInVideo":J
    new-instance v1, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$ShareClickListener$1;

    invoke-direct {v1, p0, v2, v3}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$ShareClickListener$1;-><init>(Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$ShareClickListener;J)V

    iput-object v1, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$ShareClickListener;->mShareActionListener:Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;

    .line 508
    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$ShareClickListener;->this$0:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;

    .line 509
    invoke-virtual {v1}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v4, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$ShareClickListener;->mVideoTitle:Ljava/lang/String;

    iget-object v5, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$ShareClickListener;->mSourceUri:Ljava/lang/String;

    iget-object v6, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$ShareClickListener;->mShareActionListener:Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;

    .line 508
    invoke-static {v1, v4, v5, v6}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->shareWithListener(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;)V

    .line 514
    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$ShareClickListener;->this$0:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;

    iget-object v1, v1, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoTracker:Lcom/buzzfeed/analytics/client/VideoTracker;

    invoke-virtual {v1}, Lcom/buzzfeed/analytics/client/VideoTracker;->sendOpenShareSheetFromViewer()V

    goto :goto_1e
.end method
