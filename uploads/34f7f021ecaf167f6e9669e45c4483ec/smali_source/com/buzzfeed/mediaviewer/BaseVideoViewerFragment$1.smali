.class Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$1;
.super Ljava/lang/Object;
.source "BaseVideoViewerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->onSetupHeader(Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;

.field final synthetic val$showClickIntent:Landroid/content/Intent;

.field final synthetic val$showId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;Landroid/content/Intent;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$1;->this$0:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;

    iput-object p2, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$1;->val$showClickIntent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$1;->val$showId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 282
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$1;->this$0:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;

    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$1;->val$showClickIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->startActivity(Landroid/content/Intent;)V

    .line 283
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$1;->this$0:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;

    iget-object v0, v0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoTracker:Lcom/buzzfeed/analytics/client/VideoTracker;

    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$1;->val$showId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/buzzfeed/analytics/client/VideoTracker;->sendShowIconTapEvent(Ljava/lang/String;)V

    .line 284
    return-void
.end method
