.class Lcom/buzzfeed/android/activity/SpicyActivity$11;
.super Ljava/lang/Object;
.source "SpicyActivity.java"

# interfaces
.implements Lcom/buzzfeed/spicerack/data/provider/SpiceMill$SpiceMillListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/activity/SpicyActivity;->loadSpices(Lcom/buzzfeed/toolkit/content/PostContent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/activity/SpicyActivity;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/activity/SpicyActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/android/activity/SpicyActivity;

    .prologue
    .line 613
    iput-object p1, p0, Lcom/buzzfeed/android/activity/SpicyActivity$11;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .registers 2

    .prologue
    .line 629
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity$11;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    # invokes: Lcom/buzzfeed/android/activity/SpicyActivity;->handlePageLoadingError()V
    invoke-static {v0}, Lcom/buzzfeed/android/activity/SpicyActivity;->access$700(Lcom/buzzfeed/android/activity/SpicyActivity;)V

    .line 630
    return-void
.end method

.method public onSuccess(Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;)V
    .registers 8
    .param p1, "spiceItem"    # Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;

    .prologue
    .line 616
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity$11;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    # invokes: Lcom/buzzfeed/android/activity/SpicyActivity;->shouldStopLoadingPage()Z
    invoke-static {v0}, Lcom/buzzfeed/android/activity/SpicyActivity;->access$300(Lcom/buzzfeed/android/activity/SpicyActivity;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 625
    :goto_8
    return-void

    .line 619
    :cond_9
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity$11;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    iput-object p1, v0, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpiceItem:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;

    .line 620
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity$11;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    iput-object p1, v0, Lcom/buzzfeed/android/activity/SpicyActivity;->mHeaderContent:Lcom/buzzfeed/toolkit/content/PostContent;

    .line 621
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity$11;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    # invokes: Lcom/buzzfeed/android/activity/SpicyActivity;->updateReactionsAndCommentsMenuButton()V
    invoke-static {v0}, Lcom/buzzfeed/android/activity/SpicyActivity;->access$500(Lcom/buzzfeed/android/activity/SpicyActivity;)V

    .line 622
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity$11;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    iget-object v0, v0, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpicyView:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->populatePost(Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;)V

    .line 623
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity$11;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    iget-object v0, v0, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpicyTracker:Lcom/buzzfeed/android/data/tracking/SpicyTracker;

    iget-object v1, p0, Lcom/buzzfeed/android/activity/SpicyActivity$11;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    iget-object v1, v1, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpiceItem:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;

    iget-object v2, p0, Lcom/buzzfeed/android/activity/SpicyActivity$11;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    iget-object v2, v2, Lcom/buzzfeed/android/activity/SpicyActivity;->mFeed:Lcom/buzzfeed/android/data/Feed;

    iget-object v3, p0, Lcom/buzzfeed/android/activity/SpicyActivity$11;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    iget-object v3, v3, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpicyView:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    invoke-virtual {v3}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->getViewState()Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;

    move-result-object v3

    iget-object v4, p0, Lcom/buzzfeed/android/activity/SpicyActivity$11;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    invoke-virtual {v4}, Lcom/buzzfeed/android/activity/SpicyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/buzzfeed/spicerack/data/factory/SpiceFactory;->getUnsupportedSubbuzzs(Landroid/content/Context;Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->trackPageView(Lcom/buzzfeed/toolkit/content/PostContent;Lcom/buzzfeed/android/data/Feed;Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;Ljava/util/List;Ljava/lang/String;)V

    .line 624
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity$11;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    # invokes: Lcom/buzzfeed/android/activity/SpicyActivity;->trackIfNativeAdPost()V
    invoke-static {v0}, Lcom/buzzfeed/android/activity/SpicyActivity;->access$600(Lcom/buzzfeed/android/activity/SpicyActivity;)V

    goto :goto_8
.end method
