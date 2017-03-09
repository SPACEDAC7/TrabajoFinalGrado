.class Lcom/buzzfeed/android/activity/SpicyActivity$10;
.super Ljava/lang/Object;
.source "SpicyActivity.java"

# interfaces
.implements Lcom/buzzfeed/spicerack/data/provider/SpiceMill$SpiceMillListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/activity/SpicyActivity;->loadSpicesByUrl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

.field final synthetic val$sourceUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/activity/SpicyActivity;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/buzzfeed/android/activity/SpicyActivity;

    .prologue
    .line 571
    iput-object p1, p0, Lcom/buzzfeed/android/activity/SpicyActivity$10;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    iput-object p2, p0, Lcom/buzzfeed/android/activity/SpicyActivity$10;->val$sourceUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .registers 3

    .prologue
    .line 590
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity$10;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    iget-object v1, p0, Lcom/buzzfeed/android/activity/SpicyActivity$10;->val$sourceUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/buzzfeed/android/util/chrometabs/CustomTabUtils;->openChromeTab(Landroid/app/Activity;Ljava/lang/String;)V

    .line 591
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity$10;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    invoke-virtual {v0}, Lcom/buzzfeed/android/activity/SpicyActivity;->finish()V

    .line 592
    return-void
.end method

.method public onSuccess(Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;)V
    .registers 8
    .param p1, "spiceItem"    # Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;

    .prologue
    .line 574
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity$10;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    # invokes: Lcom/buzzfeed/android/activity/SpicyActivity;->shouldStopLoadingPage()Z
    invoke-static {v0}, Lcom/buzzfeed/android/activity/SpicyActivity;->access$300(Lcom/buzzfeed/android/activity/SpicyActivity;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 586
    :goto_8
    return-void

    .line 577
    :cond_9
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity$10;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    iput-object p1, v0, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpiceItem:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;

    .line 578
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity$10;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    iput-object p1, v0, Lcom/buzzfeed/android/activity/SpicyActivity;->mHeaderContent:Lcom/buzzfeed/toolkit/content/PostContent;

    .line 579
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity$10;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    iget-object v0, v0, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpicyView:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    invoke-static {}, Lcom/buzzfeed/toolkit/util/UIUtil;->getScreenDensityDpi()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->getImageStack(F)Ljava/util/Stack;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/android/activity/SpicyActivity$10;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    # invokes: Lcom/buzzfeed/android/activity/SpicyActivity;->isTallImage()Z
    invoke-static {v2}, Lcom/buzzfeed/android/activity/SpicyActivity;->access$400(Lcom/buzzfeed/android/activity/SpicyActivity;)Z

    move-result v2

    iget-object v3, p0, Lcom/buzzfeed/android/activity/SpicyActivity$10;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    iget-boolean v3, v3, Lcom/buzzfeed/android/activity/SpicyActivity;->mDoSharedElementAnimation:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->setHeaderImageInfo(Ljava/util/Stack;ZZ)V

    .line 580
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity$10;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    iget-object v0, v0, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpicyView:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    iget-object v1, p0, Lcom/buzzfeed/android/activity/SpicyActivity$10;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    iget-object v1, v1, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpiceItem:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;

    invoke-virtual {v0, v1}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->populateHeader(Lcom/buzzfeed/toolkit/content/PostContent;)V

    .line 581
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity$10;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    iget-object v0, v0, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpicyView:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    invoke-virtual {v0}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->onSharedElementTransitionEnd()V

    .line 582
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity$10;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    # invokes: Lcom/buzzfeed/android/activity/SpicyActivity;->updateReactionsAndCommentsMenuButton()V
    invoke-static {v0}, Lcom/buzzfeed/android/activity/SpicyActivity;->access$500(Lcom/buzzfeed/android/activity/SpicyActivity;)V

    .line 583
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity$10;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    iget-object v0, v0, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpicyView:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->populatePost(Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;)V

    .line 584
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity$10;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    iget-object v0, v0, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpicyTracker:Lcom/buzzfeed/android/data/tracking/SpicyTracker;

    iget-object v1, p0, Lcom/buzzfeed/android/activity/SpicyActivity$10;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    iget-object v1, v1, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpiceItem:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;

    iget-object v2, p0, Lcom/buzzfeed/android/activity/SpicyActivity$10;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    iget-object v2, v2, Lcom/buzzfeed/android/activity/SpicyActivity;->mFeed:Lcom/buzzfeed/android/data/Feed;

    iget-object v3, p0, Lcom/buzzfeed/android/activity/SpicyActivity$10;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    iget-object v3, v3, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpicyView:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    invoke-virtual {v3}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->getViewState()Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;

    move-result-object v3

    iget-object v4, p0, Lcom/buzzfeed/android/activity/SpicyActivity$10;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    invoke-virtual {v4}, Lcom/buzzfeed/android/activity/SpicyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/buzzfeed/spicerack/data/factory/SpiceFactory;->getUnsupportedSubbuzzs(Landroid/content/Context;Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/buzzfeed/android/activity/SpicyActivity$10;->val$sourceUrl:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->trackPageView(Lcom/buzzfeed/toolkit/content/PostContent;Lcom/buzzfeed/android/data/Feed;Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;Ljava/util/List;Ljava/lang/String;)V

    .line 585
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity$10;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    # invokes: Lcom/buzzfeed/android/activity/SpicyActivity;->trackIfNativeAdPost()V
    invoke-static {v0}, Lcom/buzzfeed/android/activity/SpicyActivity;->access$600(Lcom/buzzfeed/android/activity/SpicyActivity;)V

    goto :goto_8
.end method
