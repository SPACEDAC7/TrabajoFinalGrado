.class Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$5;
.super Ljava/lang/Object;
.source "BuffetFragment.java"

# interfaces
.implements Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->onShareClicked(Lcom/buzzfeed/toolkit/content/FlowItem;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

.field final synthetic val$flowItem:Lcom/buzzfeed/toolkit/content/FlowItem;

.field final synthetic val$position:I

.field final synthetic val$videoPos:J


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;Lcom/buzzfeed/toolkit/content/FlowItem;IJ)V
    .registers 6
    .param p1, "this$0"    # Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    .prologue
    .line 904
    iput-object p1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$5;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    iput-object p2, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$5;->val$flowItem:Lcom/buzzfeed/toolkit/content/FlowItem;

    iput p3, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$5;->val$position:I

    iput-wide p4, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$5;->val$videoPos:J

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
    .line 907
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$5;->val$flowItem:Lcom/buzzfeed/toolkit/content/FlowItem;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/WeaverVideoUtils;->hasVideoItemType(Lcom/buzzfeed/toolkit/content/FlowItem;)Z

    move-result v0

    if-nez v0, :cond_16

    sget-object v0, Lcom/buzzfeed/toolkit/content/BuffetType;->VIDEO_AD:Lcom/buzzfeed/toolkit/content/BuffetType;

    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$5;->val$flowItem:Lcom/buzzfeed/toolkit/content/FlowItem;

    invoke-static {v1}, Lcom/buzzfeed/toolkit/content/BuffetType;->fromFlowItem(Lcom/buzzfeed/toolkit/content/FlowItem;)Lcom/buzzfeed/toolkit/content/BuffetType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/content/BuffetType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 908
    :cond_16
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$5;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    iget-object v0, v0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoTracker:Lcom/buzzfeed/analytics/client/VideoTracker;

    iget v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$5;->val$position:I

    invoke-virtual {v0, v1}, Lcom/buzzfeed/analytics/client/VideoTracker;->setPositionInFeed(I)Lcom/buzzfeed/analytics/client/VideoTracker;

    .line 909
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$5;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    iget-object v1, v0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoTracker:Lcom/buzzfeed/analytics/client/VideoTracker;

    iget-wide v2, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$5;->val$videoPos:J

    const-string v5, "feed_module"

    const-string v6, "share_sheet"

    const-string v7, "click:feed-module/share-sheet"

    move-object v4, p1

    invoke-virtual/range {v1 .. v7}, Lcom/buzzfeed/analytics/client/VideoTracker;->sendShareVideoEvent(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    :goto_2f
    return-void

    .line 916
    :cond_30
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$5;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    iget-object v0, v0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetTracker:Lcom/buzzfeed/android/data/tracking/BuffetTracker;

    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$5;->val$flowItem:Lcom/buzzfeed/toolkit/content/FlowItem;

    iget-object v2, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$5;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    iget-object v3, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$5;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    iget-object v3, v3, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mCurrentFeed:Lcom/buzzfeed/android/data/Feed;

    .line 918
    # invokes: Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getScreenName(Lcom/buzzfeed/android/data/Feed;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->access$800(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;Lcom/buzzfeed/android/data/Feed;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$5;->val$position:I

    .line 916
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->trackBuffetShareActivity(Lcom/buzzfeed/toolkit/content/FlowItem;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2f
.end method
