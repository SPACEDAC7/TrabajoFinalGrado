.class Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$ShareClickListener$1;
.super Ljava/lang/Object;
.source "BaseVideoViewerFragment.java"

# interfaces
.implements Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$ShareClickListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$ShareClickListener;

.field final synthetic val$positionInVideo:J


# direct methods
.method constructor <init>(Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$ShareClickListener;J)V
    .registers 4
    .param p1, "this$1"    # Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$ShareClickListener;

    .prologue
    .line 495
    iput-object p1, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$ShareClickListener$1;->this$1:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$ShareClickListener;

    iput-wide p2, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$ShareClickListener$1;->val$positionInVideo:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShareAction(Ljava/lang/String;)V
    .registers 10
    .param p1, "shareApplication"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 498
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$ShareClickListener$1;->this$1:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$ShareClickListener;

    iget-object v0, v0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$ShareClickListener;->this$0:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;

    iget-object v1, v0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoTracker:Lcom/buzzfeed/analytics/client/VideoTracker;

    iget-wide v2, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$ShareClickListener$1;->val$positionInVideo:J

    const-string v5, "media_viewer"

    const-string v6, "share_sheet"

    const-string v7, "click:media-viewer/share-sheet"

    move-object v4, p1

    invoke-virtual/range {v1 .. v7}, Lcom/buzzfeed/analytics/client/VideoTracker;->sendShareVideoEvent(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$ShareClickListener$1;->this$1:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$ShareClickListener;

    const/4 v1, 0x0

    # setter for: Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$ShareClickListener;->mShareActionListener:Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;
    invoke-static {v0, v1}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$ShareClickListener;->access$302(Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$ShareClickListener;Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;)Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;

    .line 505
    return-void
.end method
