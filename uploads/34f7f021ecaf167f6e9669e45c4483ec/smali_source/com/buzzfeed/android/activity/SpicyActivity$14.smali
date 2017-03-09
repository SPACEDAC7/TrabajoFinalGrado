.class Lcom/buzzfeed/android/activity/SpicyActivity$14;
.super Ljava/lang/Object;
.source "SpicyActivity.java"

# interfaces
.implements Lcom/buzzfeed/spicerack/ui/view/FixedShareBar$FixedShareBarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/activity/SpicyActivity;->setupFixedShareBarExperiment()V
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
    .line 848
    iput-object p1, p0, Lcom/buzzfeed/android/activity/SpicyActivity$14;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public facebookButtonClicked()V
    .registers 4

    .prologue
    .line 857
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity$14;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    # getter for: Lcom/buzzfeed/android/activity/SpicyActivity;->mFacebookShare:Lcom/buzzfeed/spicerack/utils/FacebookShare;
    invoke-static {v0}, Lcom/buzzfeed/android/activity/SpicyActivity;->access$000(Lcom/buzzfeed/android/activity/SpicyActivity;)Lcom/buzzfeed/spicerack/utils/FacebookShare;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/activity/SpicyActivity$14;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    iget-object v1, v1, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpiceItem:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;

    iget-object v2, p0, Lcom/buzzfeed/android/activity/SpicyActivity$14;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    iget-object v2, v2, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpiceItem:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;

    invoke-virtual {v2}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getUrlWithSSLBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/buzzfeed/spicerack/utils/FacebookShare;->shareFacebookContent(Lcom/buzzfeed/toolkit/content/PostContent;Ljava/lang/String;)V

    .line 858
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity$14;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    iget-object v0, v0, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpicyTracker:Lcom/buzzfeed/android/data/tracking/SpicyTracker;

    sget-object v1, Lcom/buzzfeed/toolkit/util/ShareItemType;->Facebook:Lcom/buzzfeed/toolkit/util/ShareItemType;

    iget-object v2, p0, Lcom/buzzfeed/android/activity/SpicyActivity$14;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    iget-object v2, v2, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpiceItem:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;

    invoke-virtual {v0, v1, v2}, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->trackFixedShareBarShare(Lcom/buzzfeed/toolkit/util/ShareItemType;Lcom/buzzfeed/toolkit/content/PostContent;)V

    .line 859
    return-void
.end method

.method public forumButtonClicked()V
    .registers 5

    .prologue
    .line 851
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity$14;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    iget-object v1, p0, Lcom/buzzfeed/android/activity/SpicyActivity$14;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    iget-object v1, v1, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpiceItem:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;

    iget-object v2, p0, Lcom/buzzfeed/android/activity/SpicyActivity$14;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    iget-object v2, v2, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpiceItem:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;

    invoke-virtual {v2}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getUrlWithSSLBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/buzzfeed/toolkit/util/ShareItemType;->Sms:Lcom/buzzfeed/toolkit/util/ShareItemType;

    invoke-static {v0, v1, v2, v3}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->shareContent(Landroid/app/Activity;Lcom/buzzfeed/toolkit/content/PostContent;Ljava/lang/String;Lcom/buzzfeed/toolkit/util/ShareItemType;)V

    .line 852
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity$14;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    iget-object v0, v0, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpicyTracker:Lcom/buzzfeed/android/data/tracking/SpicyTracker;

    sget-object v1, Lcom/buzzfeed/toolkit/util/ShareItemType;->Sms:Lcom/buzzfeed/toolkit/util/ShareItemType;

    iget-object v2, p0, Lcom/buzzfeed/android/activity/SpicyActivity$14;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    iget-object v2, v2, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpiceItem:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;

    invoke-virtual {v0, v1, v2}, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->trackFixedShareBarShare(Lcom/buzzfeed/toolkit/util/ShareItemType;Lcom/buzzfeed/toolkit/content/PostContent;)V

    .line 853
    return-void
.end method

.method public shareButtonClicked()V
    .registers 5

    .prologue
    .line 863
    iget-object v1, p0, Lcom/buzzfeed/android/activity/SpicyActivity$14;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    iget-object v1, v1, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpiceItem:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/buzzfeed/android/activity/SpicyActivity$14;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    iget-object v1, v1, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpiceItem:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;

    invoke-virtual {v1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getUrlWithSSLBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_15

    .line 881
    :cond_14
    :goto_14
    return-void

    .line 867
    :cond_15
    iget-object v1, p0, Lcom/buzzfeed/android/activity/SpicyActivity$14;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    iget-object v1, v1, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpiceItem:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;

    invoke-virtual {v1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getUrlWithSSLBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 868
    .local v0, "formattedUri":Ljava/lang/String;
    iget-object v1, p0, Lcom/buzzfeed/android/activity/SpicyActivity$14;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    new-instance v2, Lcom/buzzfeed/android/activity/SpicyActivity$14$1;

    invoke-direct {v2, p0}, Lcom/buzzfeed/android/activity/SpicyActivity$14$1;-><init>(Lcom/buzzfeed/android/activity/SpicyActivity$14;)V

    iput-object v2, v1, Lcom/buzzfeed/android/activity/SpicyActivity;->mShareActionListener:Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;

    .line 875
    iget-object v1, p0, Lcom/buzzfeed/android/activity/SpicyActivity$14;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    iget-object v2, p0, Lcom/buzzfeed/android/activity/SpicyActivity$14;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    iget-object v2, v2, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpiceItem:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;

    .line 876
    invoke-virtual {v2}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/buzzfeed/android/activity/SpicyActivity$14;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    iget-object v3, v3, Lcom/buzzfeed/android/activity/SpicyActivity;->mShareActionListener:Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;

    .line 875
    invoke-static {v1, v2, v0, v3}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->shareWithListener(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;)V

    .line 880
    iget-object v1, p0, Lcom/buzzfeed/android/activity/SpicyActivity$14;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    iget-object v1, v1, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpicyTracker:Lcom/buzzfeed/android/data/tracking/SpicyTracker;

    iget-object v2, p0, Lcom/buzzfeed/android/activity/SpicyActivity$14;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    iget-object v2, v2, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpiceItem:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;

    invoke-virtual {v1, v2}, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->trackFixedShareBarGenericShare(Lcom/buzzfeed/toolkit/content/PostContent;)V

    goto :goto_14
.end method
