.class Lcom/buzzfeed/android/activity/SpicyActivity$2;
.super Ljava/lang/Object;
.source "SpicyActivity.java"

# interfaces
.implements Lcom/buzzfeed/spicerack/ui/protocol/SpicyShareBarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/activity/SpicyActivity;->createShareListener()Lcom/buzzfeed/spicerack/ui/protocol/SpicyShareBarListener;
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
    .line 342
    iput-object p1, p0, Lcom/buzzfeed/android/activity/SpicyActivity$2;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShareEvent(Lcom/buzzfeed/toolkit/util/ShareItemType;Lcom/buzzfeed/spicerack/data/sharebar/SpicyShareBarLocation;)V
    .registers 6
    .param p1, "shareItemType"    # Lcom/buzzfeed/toolkit/util/ShareItemType;
    .param p2, "spicyShareBarLocation"    # Lcom/buzzfeed/spicerack/data/sharebar/SpicyShareBarLocation;

    .prologue
    .line 346
    sget-object v0, Lcom/buzzfeed/toolkit/util/ShareItemType;->Facebook:Lcom/buzzfeed/toolkit/util/ShareItemType;

    if-ne p1, v0, :cond_29

    .line 347
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity$2;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    # getter for: Lcom/buzzfeed/android/activity/SpicyActivity;->mFacebookShare:Lcom/buzzfeed/spicerack/utils/FacebookShare;
    invoke-static {v0}, Lcom/buzzfeed/android/activity/SpicyActivity;->access$000(Lcom/buzzfeed/android/activity/SpicyActivity;)Lcom/buzzfeed/spicerack/utils/FacebookShare;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/activity/SpicyActivity$2;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    iget-object v1, v1, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpiceItem:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;

    iget-object v2, p0, Lcom/buzzfeed/android/activity/SpicyActivity$2;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    iget-object v2, v2, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpiceItem:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;

    .line 348
    invoke-virtual {v2}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getUrlWithSSLBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 347
    invoke-virtual {v0, v1, v2}, Lcom/buzzfeed/spicerack/utils/FacebookShare;->shareFacebookContent(Lcom/buzzfeed/toolkit/content/PostContent;Ljava/lang/String;)V

    .line 353
    :goto_1d
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity$2;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    iget-object v0, v0, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpicyTracker:Lcom/buzzfeed/android/data/tracking/SpicyTracker;

    iget-object v1, p0, Lcom/buzzfeed/android/activity/SpicyActivity$2;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    iget-object v1, v1, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpiceItem:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;

    invoke-virtual {v0, p1, v1, p2}, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->trackShareBarShare(Lcom/buzzfeed/toolkit/util/ShareItemType;Lcom/buzzfeed/toolkit/content/PostContent;Lcom/buzzfeed/spicerack/data/sharebar/SpicyShareBarLocation;)V

    .line 354
    return-void

    .line 350
    :cond_29
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity$2;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    iget-object v1, p0, Lcom/buzzfeed/android/activity/SpicyActivity$2;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    iget-object v1, v1, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpiceItem:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;

    iget-object v2, p0, Lcom/buzzfeed/android/activity/SpicyActivity$2;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    iget-object v2, v2, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpiceItem:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;

    .line 351
    invoke-virtual {v2}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getUrlWithSSLBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 350
    invoke-static {v0, v1, v2, p1}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->shareContent(Landroid/app/Activity;Lcom/buzzfeed/toolkit/content/PostContent;Ljava/lang/String;Lcom/buzzfeed/toolkit/util/ShareItemType;)V

    goto :goto_1d
.end method
