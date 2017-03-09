.class public Lcom/buzzfeed/android/activity/SpicyActivity;
.super Lcom/buzzfeed/android/activity/BaseActivity;
.source "SpicyActivity.java"

# interfaces
.implements Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;


# static fields
.field private static final KEY_DO_SHARED_ELEMENT_ANIMATION:Ljava/lang/String; = "KEY_DO_SHARED_ELEMENT_ANIMATION"

.field public static final KEY_FEED:Ljava/lang/String; = "KEY_FEED"

.field private static final KEY_SPICY_CONTENT:Ljava/lang/String; = "KEY_SPICY_CONTENT"

.field public static final KEY_URL:Ljava/lang/String; = "KEY_URL"

.field public static final REQUEST_CODE_FEED:I = 0x1

.field public static final REQUEST_CODE_LOGIN:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mBookmarkMenuButton:Landroid/view/MenuItem;

.field protected mCommentsMenuItem:Landroid/view/MenuItem;

.field protected mDoSharedElementAnimation:Z

.field mFab:Landroid/support/design/widget/FloatingActionButton;

.field private mFacebookShare:Lcom/buzzfeed/spicerack/utils/FacebookShare;

.field protected mFeed:Lcom/buzzfeed/android/data/Feed;

.field protected mHeaderContent:Lcom/buzzfeed/toolkit/content/PostContent;

.field protected mIsReturning:Z

.field protected mReactionsMenuItem:Landroid/view/MenuItem;

.field protected mReactionsView:Lcom/buzzfeed/android/ui/reactions/ReactionsView;

.field protected mShareActionListener:Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;

.field protected mSpiceItem:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;

.field private mSpiceMill:Lcom/buzzfeed/spicerack/data/provider/SpiceMill;

.field protected mSpicyTracker:Lcom/buzzfeed/android/data/tracking/SpicyTracker;

.field protected mSpicyView:Lcom/buzzfeed/spicerack/ui/view/SpicyView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 99
    const-class v0, Lcom/buzzfeed/android/activity/SpicyActivity;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/activity/SpicyActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/android/activity/SpicyActivity;)Lcom/buzzfeed/spicerack/utils/FacebookShare;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/activity/SpicyActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mFacebookShare:Lcom/buzzfeed/spicerack/utils/FacebookShare;

    return-object v0
.end method

.method static synthetic access$100(Lcom/buzzfeed/android/activity/SpicyActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/buzzfeed/android/activity/SpicyActivity;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;->openResponseView()V

    return-void
.end method

.method static synthetic access$200(Lcom/buzzfeed/android/activity/SpicyActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/buzzfeed/android/activity/SpicyActivity;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;->onFabClick()V

    return-void
.end method

.method static synthetic access$300(Lcom/buzzfeed/android/activity/SpicyActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/activity/SpicyActivity;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;->shouldStopLoadingPage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/buzzfeed/android/activity/SpicyActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/activity/SpicyActivity;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;->isTallImage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/buzzfeed/android/activity/SpicyActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/buzzfeed/android/activity/SpicyActivity;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;->updateReactionsAndCommentsMenuButton()V

    return-void
.end method

.method static synthetic access$600(Lcom/buzzfeed/android/activity/SpicyActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/buzzfeed/android/activity/SpicyActivity;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;->trackIfNativeAdPost()V

    return-void
.end method

.method static synthetic access$700(Lcom/buzzfeed/android/activity/SpicyActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/buzzfeed/android/activity/SpicyActivity;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;->handlePageLoadingError()V

    return-void
.end method

.method private createNativeResponseButton()Landroid/view/View;
    .registers 3

    .prologue
    .line 369
    new-instance v0, Lcom/buzzfeed/android/ui/spicerack/ViewResponseButton;

    new-instance v1, Lcom/buzzfeed/android/activity/SpicyActivity$3;

    invoke-direct {v1, p0}, Lcom/buzzfeed/android/activity/SpicyActivity$3;-><init>(Lcom/buzzfeed/android/activity/SpicyActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/buzzfeed/android/ui/spicerack/ViewResponseButton;-><init>(Lcom/buzzfeed/android/activity/SpicyActivity;Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private createShareListener()Lcom/buzzfeed/spicerack/ui/protocol/SpicyShareBarListener;
    .registers 2

    .prologue
    .line 342
    new-instance v0, Lcom/buzzfeed/android/activity/SpicyActivity$2;

    invoke-direct {v0, p0}, Lcom/buzzfeed/android/activity/SpicyActivity$2;-><init>(Lcom/buzzfeed/android/activity/SpicyActivity;)V

    return-object v0
.end method

.method public static getDeepLinkIntent(Landroid/app/Activity;Ljava/lang/String;Lcom/buzzfeed/android/data/Feed;)Landroid/content/Intent;
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "feed"    # Lcom/buzzfeed/android/data/Feed;

    .prologue
    .line 165
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/buzzfeed/android/activity/SpicyActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 166
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "KEY_URL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    const-string v1, "KEY_FEED"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 168
    return-object v0
.end method

.method public static getDefaultIntent(Landroid/app/Activity;Lcom/buzzfeed/toolkit/content/PostContent;Lcom/buzzfeed/android/data/Feed;)Landroid/content/Intent;
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/PostContent;
    .param p2, "feed"    # Lcom/buzzfeed/android/data/Feed;

    .prologue
    .line 151
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/buzzfeed/android/activity/SpicyActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "KEY_SPICY_CONTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 153
    const-string v1, "KEY_FEED"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 154
    return-object v0
.end method

.method public static getDefaultIntentBlankHeader(Landroid/app/Activity;Lcom/buzzfeed/toolkit/content/PostContent;Lcom/buzzfeed/android/data/Feed;)Landroid/content/Intent;
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/PostContent;
    .param p2, "feed"    # Lcom/buzzfeed/android/data/Feed;

    .prologue
    .line 158
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/buzzfeed/android/activity/BlankHeaderSpicyActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 159
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "KEY_SPICY_CONTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 160
    const-string v1, "KEY_FEED"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 161
    return-object v0
.end method

.method private getShareItems()[Lcom/buzzfeed/toolkit/util/ShareItemType;
    .registers 4

    .prologue
    .line 359
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/buzzfeed/toolkit/util/ShareItemType;

    const/4 v1, 0x0

    sget-object v2, Lcom/buzzfeed/toolkit/util/ShareItemType;->Facebook:Lcom/buzzfeed/toolkit/util/ShareItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/buzzfeed/toolkit/util/ShareItemType;->Pinterest:Lcom/buzzfeed/toolkit/util/ShareItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/buzzfeed/toolkit/util/ShareItemType;->Email:Lcom/buzzfeed/toolkit/util/ShareItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/buzzfeed/toolkit/util/ShareItemType;->WhatsApp:Lcom/buzzfeed/toolkit/util/ShareItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/buzzfeed/toolkit/util/ShareItemType;->Sms:Lcom/buzzfeed/toolkit/util/ShareItemType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method private handleDeepLink(Ljava/lang/String;)V
    .registers 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/activity/SpicyActivity;->loadSpicesByUrl(Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method private handlePageLoadingError()V
    .registers 2

    .prologue
    .line 636
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;->isDeepLink()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 637
    invoke-static {p0}, Lcom/buzzfeed/android/activity/PagerActivity;->startIntent(Landroid/app/Activity;)V

    .line 639
    :cond_9
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;->finish()V

    .line 640
    return-void
.end method

.method private handleUrlClicked(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "webView"    # Z

    .prologue
    .line 544
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/buzzfeed/android/activity/SpicyActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".handleUrlClicked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 546
    .local v0, "TAG":Ljava/lang/String;
    iget-object v1, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpicyTracker:Lcom/buzzfeed/android/data/tracking/SpicyTracker;

    iget-object v2, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpiceItem:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;

    invoke-virtual {v1, v2, p1, p2}, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->trackUrlClicked(Lcom/buzzfeed/toolkit/content/PostContent;Ljava/lang/String;Z)V

    .line 548
    invoke-static {p1}, Lcom/buzzfeed/android/util/BuzzUtils;->isBuzzFeedUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-static {p1}, Lcom/buzzfeed/android/util/BuzzUtils;->isBuzzFeedStaticImageUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_44

    .line 549
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal URL click: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    iget-object v1, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mFeed:Lcom/buzzfeed/android/data/Feed;

    invoke-static {p0, p1, v1}, Lcom/buzzfeed/android/activity/SpicyActivity;->startIntent(Landroid/app/Activity;Ljava/lang/String;Lcom/buzzfeed/android/data/Feed;)V

    .line 558
    :goto_43
    return-void

    .line 551
    :cond_44
    invoke-static {p1}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->isEmailShare(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 552
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "External email URI click: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    invoke-static {p0, p1}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->shareEmail(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_43

    .line 555
    :cond_64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "External URL click: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    invoke-static {p0, p1}, Lcom/buzzfeed/android/util/chrometabs/CustomTabUtils;->openChromeTab(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_43
.end method

.method private isDeepLink()Z
    .registers 3

    .prologue
    .line 643
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "KEY_URL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isTallImage()Z
    .registers 4

    .prologue
    .line 843
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "image_large"

    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/DeviceUtil;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_11
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private loadSpices(Lcom/buzzfeed/toolkit/content/PostContent;)V
    .registers 8
    .param p1, "postContent"    # Lcom/buzzfeed/toolkit/content/PostContent;

    .prologue
    .line 600
    iput-object p1, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mHeaderContent:Lcom/buzzfeed/toolkit/content/PostContent;

    .line 601
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;->setUpSharedElementTransitionPreLollipop()Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionSender;

    move-result-object v2

    .line 603
    .local v2, "sender":Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionSender;
    invoke-static {}, Lcom/buzzfeed/toolkit/util/UIUtil;->getScreenDensityDpi()F

    move-result v3

    invoke-interface {p1, v3}, Lcom/buzzfeed/toolkit/content/PostContent;->getImageStack(F)Ljava/util/Stack;

    move-result-object v0

    .line 604
    .local v0, "imageStack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "image_stack"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 605
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "image_stack"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 606
    .local v1, "images":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 607
    invoke-virtual {v0, v1}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    .line 609
    .end local v1    # "images":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2c
    iget-object v3, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpicyView:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    invoke-direct {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;->isTallImage()Z

    move-result v4

    iget-boolean v5, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mDoSharedElementAnimation:Z

    invoke-virtual {v3, v0, v4, v5}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->setHeaderImageInfo(Ljava/util/Stack;ZZ)V

    .line 611
    iget-object v3, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpicyView:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    iget-object v4, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mHeaderContent:Lcom/buzzfeed/toolkit/content/PostContent;

    invoke-virtual {v3, v4, v2}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->populateHeader(Lcom/buzzfeed/toolkit/content/PostContent;Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionSender;)V

    .line 613
    iget-object v3, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpiceMill:Lcom/buzzfeed/spicerack/data/provider/SpiceMill;

    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/buzzfeed/android/activity/SpicyActivity$11;

    invoke-direct {v5, p0}, Lcom/buzzfeed/android/activity/SpicyActivity$11;-><init>(Lcom/buzzfeed/android/activity/SpicyActivity;)V

    invoke-virtual {v3, v4, v5}, Lcom/buzzfeed/spicerack/data/provider/SpiceMill;->getSpicesById(Ljava/lang/String;Lcom/buzzfeed/spicerack/data/provider/SpiceMill$SpiceMillListener;)V

    .line 632
    return-void
.end method

.method private loadSpicesByUrl(Ljava/lang/String;)V
    .registers 6
    .param p1, "sourceUrl"    # Ljava/lang/String;

    .prologue
    .line 568
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 569
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {v1}, Lcom/buzzfeed/toolkit/tenderizer/InterpolatedPound;->stripInterpolatedPound(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 570
    invoke-static {v1}, Lcom/buzzfeed/android/util/BuzzUtils;->stripSchemeAndHost(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 571
    .local v0, "relativeUrl":Ljava/lang/String;
    iget-object v2, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpiceMill:Lcom/buzzfeed/spicerack/data/provider/SpiceMill;

    new-instance v3, Lcom/buzzfeed/android/activity/SpicyActivity$10;

    invoke-direct {v3, p0, p1}, Lcom/buzzfeed/android/activity/SpicyActivity$10;-><init>(Lcom/buzzfeed/android/activity/SpicyActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v3}, Lcom/buzzfeed/spicerack/data/provider/SpiceMill;->getSpicesByUrl(Ljava/lang/String;Lcom/buzzfeed/spicerack/data/provider/SpiceMill$SpiceMillListener;)V

    .line 594
    return-void
.end method

.method private onBookmarkMenuButtonClicked()V
    .registers 4

    .prologue
    .line 795
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mHeaderContent:Lcom/buzzfeed/toolkit/content/PostContent;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mHeaderContent:Lcom/buzzfeed/toolkit/content/PostContent;

    invoke-interface {v0}, Lcom/buzzfeed/toolkit/content/PostContent;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 796
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->getInstance(Landroid/content/Context;)Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mHeaderContent:Lcom/buzzfeed/toolkit/content/PostContent;

    new-instance v2, Lcom/buzzfeed/android/activity/SpicyActivity$13;

    invoke-direct {v2, p0}, Lcom/buzzfeed/android/activity/SpicyActivity$13;-><init>(Lcom/buzzfeed/android/activity/SpicyActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->toggleBookmark(Lcom/buzzfeed/toolkit/content/PostContent;Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$ToggleBookmarkInterface;)V

    .line 820
    :cond_1e
    return-void
.end method

.method private onContributeMenuButtonClicked()V
    .registers 1

    .prologue
    .line 826
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;->openResponseView()V

    .line 827
    return-void
.end method

.method private onFabClick()V
    .registers 4

    .prologue
    .line 407
    iget-object v1, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpiceItem:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpiceItem:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;

    invoke-virtual {v1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getUrlWithSSLBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_11

    .line 425
    :cond_10
    :goto_10
    return-void

    .line 410
    :cond_11
    iget-object v1, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpicyTracker:Lcom/buzzfeed/android/data/tracking/SpicyTracker;

    iget-object v2, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpiceItem:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;

    invoke-virtual {v1, v2}, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->trackFabShare(Lcom/buzzfeed/toolkit/content/PostContent;)V

    .line 412
    iget-object v1, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpiceItem:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;

    invoke-virtual {v1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getUrlWithSSLBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 414
    .local v0, "formattedUri":Ljava/lang/String;
    new-instance v1, Lcom/buzzfeed/android/activity/SpicyActivity$6;

    invoke-direct {v1, p0}, Lcom/buzzfeed/android/activity/SpicyActivity$6;-><init>(Lcom/buzzfeed/android/activity/SpicyActivity;)V

    iput-object v1, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mShareActionListener:Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;

    .line 421
    iget-object v1, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpiceItem:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;

    .line 422
    invoke-virtual {v1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mShareActionListener:Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;

    .line 421
    invoke-static {p0, v1, v0, v2}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->shareWithListener(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;)V

    goto :goto_10
.end method

.method private onReactMenuButtonClicked()V
    .registers 3

    .prologue
    .line 833
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/buzzfeed/android/data/BuzzUser;->getInstance(Landroid/content/Context;)Lcom/buzzfeed/android/data/BuzzUser;

    move-result-object v0

    .line 834
    .local v0, "buzzUser":Lcom/buzzfeed/android/data/BuzzUser;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/buzzfeed/android/data/BuzzUser;->isLogin()Z

    move-result v1

    if-nez v1, :cond_14

    .line 835
    :cond_10
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;->startLoginActivityForResult()V

    .line 839
    :goto_13
    return-void

    .line 837
    :cond_14
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/buzzfeed/android/activity/SpicyActivity;->setReactionsViewVisible(Z)V

    goto :goto_13
.end method

.method private openResponseView()V
    .registers 3

    .prologue
    .line 738
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mHeaderContent:Lcom/buzzfeed/toolkit/content/PostContent;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mHeaderContent:Lcom/buzzfeed/toolkit/content/PostContent;

    invoke-interface {v0}, Lcom/buzzfeed/toolkit/content/PostContent;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getUrlWithSSLBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 739
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mHeaderContent:Lcom/buzzfeed/toolkit/content/PostContent;

    invoke-static {p0, v0}, Lcom/buzzfeed/android/activity/CommentsActivity;->startIntent(Landroid/content/Context;Lcom/buzzfeed/toolkit/content/PostContent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/activity/SpicyActivity;->startActivity(Landroid/content/Intent;)V

    .line 740
    const v0, 0x7f04001a

    const v1, 0x7f040019

    invoke-virtual {p0, v0, v1}, Lcom/buzzfeed/android/activity/SpicyActivity;->overridePendingTransition(II)V

    .line 742
    :cond_22
    return-void
.end method

.method private setReactionsViewVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .prologue
    .line 451
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mReactionsView:Lcom/buzzfeed/android/ui/reactions/ReactionsView;

    if-eqz v0, :cond_d

    .line 452
    if-eqz p1, :cond_e

    .line 453
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mReactionsView:Lcom/buzzfeed/android/ui/reactions/ReactionsView;

    iget-object v1, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpiceItem:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->show(Lcom/buzzfeed/toolkit/content/PostContent;)V

    .line 458
    :cond_d
    :goto_d
    return-void

    .line 455
    :cond_e
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mReactionsView:Lcom/buzzfeed/android/ui/reactions/ReactionsView;

    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->hide()V

    goto :goto_d
.end method

.method private setUpFab()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 381
    invoke-static {p0}, Lcom/buzzfeed/android/data/ShareFabLabelABTest;->shouldUseShareFabLabel(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 382
    const v2, 0x7f11015b

    invoke-static {p0, v2}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    .line 383
    .local v0, "cardView":Landroid/support/v7/widget/CardView;
    new-instance v2, Lcom/buzzfeed/android/activity/SpicyActivity$4;

    invoke-direct {v2, p0}, Lcom/buzzfeed/android/activity/SpicyActivity$4;-><init>(Lcom/buzzfeed/android/activity/SpicyActivity;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    const v2, 0x7f1100a5

    invoke-static {p0, v2}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 390
    .local v1, "customFab":Landroid/widget/RelativeLayout;
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 401
    .end local v0    # "cardView":Landroid/support/v7/widget/CardView;
    .end local v1    # "customFab":Landroid/widget/RelativeLayout;
    :goto_24
    return-void

    .line 392
    :cond_25
    const v2, 0x7f1100a6

    invoke-static {p0, v2}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/FloatingActionButton;

    iput-object v2, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mFab:Landroid/support/design/widget/FloatingActionButton;

    .line 393
    iget-object v2, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mFab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v2, v3}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    .line 394
    iget-object v2, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mFab:Landroid/support/design/widget/FloatingActionButton;

    new-instance v3, Lcom/buzzfeed/android/activity/SpicyActivity$5;

    invoke-direct {v3, p0}, Lcom/buzzfeed/android/activity/SpicyActivity$5;-><init>(Lcom/buzzfeed/android/activity/SpicyActivity;)V

    invoke-virtual {v2, v3}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_24
.end method

.method private setUpSharedElementTransition()V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 469
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;->postponeEnterTransition()V

    .line 470
    new-instance v1, Lcom/buzzfeed/android/activity/SpicyActivity$7;

    invoke-direct {v1, p0}, Lcom/buzzfeed/android/activity/SpicyActivity$7;-><init>(Lcom/buzzfeed/android/activity/SpicyActivity;)V

    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/activity/SpicyActivity;->setEnterSharedElementCallback(Landroid/support/v4/app/SharedElementCallback;)V

    .line 487
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getSharedElementEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    .line 488
    .local v0, "sharedElementEnterTransition":Landroid/transition/Transition;
    new-instance v1, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 489
    new-instance v1, Lcom/buzzfeed/android/activity/SpicyActivity$8;

    invoke-direct {v1, p0}, Lcom/buzzfeed/android/activity/SpicyActivity$8;-><init>(Lcom/buzzfeed/android/activity/SpicyActivity;)V

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 497
    iget-object v1, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpicyView:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    new-instance v2, Lcom/buzzfeed/android/activity/SpicyActivity$9;

    invoke-direct {v2, p0}, Lcom/buzzfeed/android/activity/SpicyActivity$9;-><init>(Lcom/buzzfeed/android/activity/SpicyActivity;)V

    invoke-virtual {v1, v2}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->setSpicyTransitionStartListener(Lcom/buzzfeed/spicerack/ui/protocol/SpicyTransitionStartListener;)V

    .line 504
    return-void
.end method

.method private setUpSharedElementTransitionPreLollipop()Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionSender;
    .registers 5

    .prologue
    .line 510
    iget-boolean v2, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mDoSharedElementAnimation:Z

    if-nez v2, :cond_6

    .line 511
    const/4 v2, 0x0

    .line 521
    :goto_5
    return-object v2

    .line 514
    :cond_6
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "image"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionElement;

    .line 516
    .local v1, "thumbnail":Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionElement;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 517
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionElement;>;"
    if-eqz v1, :cond_20

    .line 518
    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionElement;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    :cond_20
    new-instance v2, Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionSender;

    invoke-direct {v2, v0}, Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionSender;-><init>(Ljava/util/HashMap;)V

    goto :goto_5
.end method

.method private setupSpicyTracker()V
    .registers 8

    .prologue
    .line 227
    invoke-static {}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->getInstance()Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    move-result-object v2

    .line 228
    .local v2, "buzzFeedTracker":Lcom/buzzfeed/analytics/client/BuzzFeedTracker;
    new-instance v3, Lcom/buzzfeed/android/data/tracking/LotameEventTracker;

    invoke-direct {v3, v2}, Lcom/buzzfeed/android/data/tracking/LotameEventTracker;-><init>(Lcom/buzzfeed/analytics/client/BuzzFeedTracker;)V

    .line 229
    .local v3, "lotameTracker":Lcom/buzzfeed/android/data/tracking/LotameEventTracker;
    new-instance v4, Lcom/buzzfeed/toolkit/tenderizer/Tenderizer;

    invoke-static {p0}, Lcom/buzzfeed/android/util/BuzzUtils;->isPoundEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v0, 0x1

    :goto_12
    invoke-direct {v4, p0, v0}, Lcom/buzzfeed/toolkit/tenderizer/Tenderizer;-><init>(Landroid/content/Context;Z)V

    .line 230
    .local v4, "tenderizer":Lcom/buzzfeed/toolkit/tenderizer/Tenderizer;
    new-instance v0, Lcom/buzzfeed/android/data/tracking/SpicyTracker;

    .line 231
    invoke-static {}, Lcom/buzzfeed/analytics/client/DustbusterClient;->getInstance()Lcom/buzzfeed/analytics/client/DustbusterClient;

    move-result-object v5

    invoke-static {p0}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getEdition(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/buzzfeed/android/data/tracking/SpicyTracker;-><init>(Landroid/content/Context;Lcom/buzzfeed/analytics/client/BuzzFeedTracker;Lcom/buzzfeed/android/data/tracking/LotameEventTracker;Lcom/buzzfeed/toolkit/tenderizer/Tenderizer;Lcom/buzzfeed/analytics/client/DustbusterClient;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpicyTracker:Lcom/buzzfeed/android/data/tracking/SpicyTracker;

    .line 232
    return-void

    .line 229
    .end local v4    # "tenderizer":Lcom/buzzfeed/toolkit/tenderizer/Tenderizer;
    :cond_26
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private static setupThumbnailTransition(Landroid/app/Activity;Landroid/content/Intent;Landroid/view/View;Ljava/util/Stack;Z)V
    .registers 10
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "thumbnail"    # Landroid/view/View;
    .param p4, "isTallImage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/content/Intent;",
            "Landroid/view/View;",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p3, "imageStack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    const/4 v4, 0x1

    .line 175
    const-string v1, "image_stack"

    invoke-virtual {p1, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 176
    const-string v1, "image_large"

    invoke-virtual {p1, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 177
    invoke-static {}, Lcom/buzzfeed/toolkit/util/VersionUtil;->hasLollipop()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 178
    invoke-virtual {p2}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p2, v1}, Landroid/support/v4/app/ActivityOptionsCompat;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/support/v4/app/ActivityOptionsCompat;

    move-result-object v0

    .line 179
    .local v0, "optionsCompat":Landroid/support/v4/app/ActivityOptionsCompat;
    invoke-virtual {v0}, Landroid/support/v4/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, p1, v4, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 184
    .end local v0    # "optionsCompat":Landroid/support/v4/app/ActivityOptionsCompat;
    :goto_20
    return-void

    .line 181
    :cond_21
    const-string v1, "image"

    new-instance v2, Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionElement;

    const-string v3, "image"

    invoke-direct {v2, v3, p2}, Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionElement;-><init>(Ljava/lang/String;Landroid/view/View;)V

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 182
    invoke-virtual {p0, p1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_20
.end method

.method private shouldStopLoadingPage()Z
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 654
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {}, Lcom/buzzfeed/toolkit/util/VersionUtil;->hasJellyBeanMR1()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static startIntent(Landroid/app/Activity;Lcom/buzzfeed/toolkit/content/PostContent;Lcom/buzzfeed/android/data/Feed;Landroid/view/View;Ljava/util/Stack;Z)V
    .registers 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/PostContent;
    .param p2, "feed"    # Lcom/buzzfeed/android/data/Feed;
    .param p3, "thumbnail"    # Landroid/view/View;
    .param p5, "isTallImage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/buzzfeed/toolkit/content/PostContent;",
            "Lcom/buzzfeed/android/data/Feed;",
            "Landroid/view/View;",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p4, "imageStack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    invoke-static {p0, p1, p2}, Lcom/buzzfeed/android/activity/SpicyActivity;->getDefaultIntent(Landroid/app/Activity;Lcom/buzzfeed/toolkit/content/PostContent;Lcom/buzzfeed/android/data/Feed;)Landroid/content/Intent;

    move-result-object v0

    .line 138
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v0, p3, p4, p5}, Lcom/buzzfeed/android/activity/SpicyActivity;->setupThumbnailTransition(Landroid/app/Activity;Landroid/content/Intent;Landroid/view/View;Ljava/util/Stack;Z)V

    .line 139
    return-void
.end method

.method public static startIntent(Landroid/app/Activity;Ljava/lang/String;Lcom/buzzfeed/android/data/Feed;)V
    .registers 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "feed"    # Lcom/buzzfeed/android/data/Feed;

    .prologue
    .line 129
    invoke-static {p0, p1, p2}, Lcom/buzzfeed/android/activity/SpicyActivity;->getDeepLinkIntent(Landroid/app/Activity;Ljava/lang/String;Lcom/buzzfeed/android/data/Feed;)Landroid/content/Intent;

    move-result-object v0

    .line 130
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 131
    return-void
.end method

.method public static startIntentWithoutTransition(Landroid/app/Activity;Lcom/buzzfeed/toolkit/content/PostContent;Lcom/buzzfeed/android/data/Feed;)V
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/PostContent;
    .param p2, "feed"    # Lcom/buzzfeed/android/data/Feed;

    .prologue
    .line 145
    invoke-static {p0, p1, p2}, Lcom/buzzfeed/android/activity/SpicyActivity;->getDefaultIntent(Landroid/app/Activity;Lcom/buzzfeed/toolkit/content/PostContent;Lcom/buzzfeed/android/data/Feed;)Landroid/content/Intent;

    move-result-object v0

    .line 146
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "KEY_DO_SHARED_ELEMENT_ANIMATION"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 147
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 148
    return-void
.end method

.method private trackIfNativeAdPost()V
    .registers 4

    .prologue
    .line 647
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpicyView:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    invoke-virtual {v0}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->isFallingBack()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mHeaderContent:Lcom/buzzfeed/toolkit/content/PostContent;

    invoke-interface {v0}, Lcom/buzzfeed/toolkit/content/PostContent;->isAd()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 648
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mHeaderContent:Lcom/buzzfeed/toolkit/content/PostContent;

    invoke-interface {v0}, Lcom/buzzfeed/toolkit/content/PostContent;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mHeaderContent:Lcom/buzzfeed/toolkit/content/PostContent;

    invoke-interface {v1}, Lcom/buzzfeed/toolkit/content/PostContent;->getAuthorDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/buzzfeed/ads/tracking/VendorImpressionTracker;->makeRequest(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 650
    :cond_23
    return-void
.end method

.method private updateReactionsAndCommentsMenuButton()V
    .registers 3

    .prologue
    .line 441
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mHeaderContent:Lcom/buzzfeed/toolkit/content/PostContent;

    if-eqz v0, :cond_1a

    .line 442
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mReactionsMenuItem:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mHeaderContent:Lcom/buzzfeed/toolkit/content/PostContent;

    invoke-interface {v1}, Lcom/buzzfeed/toolkit/content/PostContent;->isReactionsEnabled()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/UIUtil;->setMenuItemVisiblity(Landroid/view/MenuItem;Z)V

    .line 443
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mCommentsMenuItem:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mHeaderContent:Lcom/buzzfeed/toolkit/content/PostContent;

    invoke-interface {v1}, Lcom/buzzfeed/toolkit/content/PostContent;->isCommentsEnabled()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/UIUtil;->setMenuItemVisiblity(Landroid/view/MenuItem;Z)V

    .line 445
    :cond_1a
    return-void
.end method


# virtual methods
.method public authorClicked(Lcom/buzzfeed/toolkit/content/AuthorContent;)V
    .registers 2
    .param p1, "authorContent"    # Lcom/buzzfeed/toolkit/content/AuthorContent;

    .prologue
    .line 664
    return-void
.end method

.method protected configureToolbar(Landroid/support/v7/widget/Toolbar;)V
    .registers 3
    .param p1, "toolbar"    # Landroid/support/v7/widget/Toolbar;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 321
    invoke-super {p0, p1}, Lcom/buzzfeed/android/activity/BaseActivity;->configureToolbar(Landroid/support/v7/widget/Toolbar;)V

    .line 322
    const v0, 0x7f1100a4

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/activity/SpicyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;

    iput-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mReactionsView:Lcom/buzzfeed/android/ui/reactions/ReactionsView;

    .line 323
    return-void
.end method

.method protected createSpicyOptionsMenu(Landroid/view/Menu;)V
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f120000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 276
    return-void
.end method

.method public finishAfterTransition()V
    .registers 2

    .prologue
    .line 526
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mIsReturning:Z

    .line 527
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/activity/SpicyActivity;->setResult(I)V

    .line 528
    invoke-super {p0}, Lcom/buzzfeed/android/activity/BaseActivity;->finishAfterTransition()V

    .line 529
    return-void
.end method

.method protected initLayout()V
    .registers 2

    .prologue
    .line 217
    const v0, 0x7f030025

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/activity/SpicyActivity;->setContentView(I)V

    .line 218
    new-instance v0, Lcom/buzzfeed/android/activity/SpicyActivity$1;

    invoke-direct {v0, p0}, Lcom/buzzfeed/android/activity/SpicyActivity$1;-><init>(Lcom/buzzfeed/android/activity/SpicyActivity;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/activity/SpicyActivity;->setToolBarAsUp(Landroid/view/View$OnClickListener;)V

    .line 224
    return-void
.end method

.method protected initSharedElementTransition()V
    .registers 5

    .prologue
    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/buzzfeed/android/activity/SpicyActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".initSharedElementTransition"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "TAG":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "KEY_DO_SHARED_ELEMENT_ANIMATION"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mDoSharedElementAnimation:Z

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "should we do shared element transition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mDoSharedElementAnimation:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-static {}, Lcom/buzzfeed/toolkit/util/VersionUtil;->hasLollipop()Z

    move-result v1

    if-eqz v1, :cond_47

    iget-boolean v1, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mDoSharedElementAnimation:Z

    if-eqz v1, :cond_47

    .line 212
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;->setUpSharedElementTransition()V

    .line 214
    :cond_47
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 306
    invoke-super {p0, p1, p2, p3}, Lcom/buzzfeed/android/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 307
    packed-switch p1, :pswitch_data_c

    .line 312
    :goto_6
    return-void

    .line 309
    :pswitch_7
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;->updateBookmarkMenuButton()V

    goto :goto_6

    .line 307
    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch
.end method

.method public onAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 765
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpicyTracker:Lcom/buzzfeed/android/data/tracking/SpicyTracker;

    invoke-virtual {v0}, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->trackBack()V

    .line 301
    invoke-super {p0}, Lcom/buzzfeed/android/activity/BaseActivity;->onBackPressed()V

    .line 302
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 188
    invoke-super {p0, p1}, Lcom/buzzfeed/android/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 189
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;->initLayout()V

    .line 190
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;->setUpSpicyView()V

    .line 191
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;->setUpFab()V

    .line 192
    new-instance v1, Lcom/buzzfeed/spicerack/data/provider/SpiceMill;

    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/buzzfeed/spicerack/data/provider/SpiceMill;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpiceMill:Lcom/buzzfeed/spicerack/data/provider/SpiceMill;

    .line 193
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;->setupFixedShareBarExperiment()V

    .line 194
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;->initSharedElementTransition()V

    .line 195
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;->setupSpicyTracker()V

    .line 196
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "KEY_FEED"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/android/data/Feed;

    iput-object v1, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mFeed:Lcom/buzzfeed/android/data/Feed;

    .line 197
    new-instance v1, Lcom/buzzfeed/spicerack/utils/FacebookShare;

    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/buzzfeed/spicerack/utils/FacebookShareEngine;

    invoke-direct {v3}, Lcom/buzzfeed/spicerack/utils/FacebookShareEngine;-><init>()V

    invoke-direct {v1, v2, p0, v3}, Lcom/buzzfeed/spicerack/utils/FacebookShare;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/buzzfeed/spicerack/utils/FacebookShareEngine;)V

    iput-object v1, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mFacebookShare:Lcom/buzzfeed/spicerack/utils/FacebookShare;

    .line 199
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "KEY_SPICY_CONTENT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 200
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "KEY_SPICY_CONTENT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/content/PostContent;

    .line 201
    .local v0, "content":Lcom/buzzfeed/toolkit/content/PostContent;
    invoke-direct {p0, v0}, Lcom/buzzfeed/android/activity/SpicyActivity;->loadSpices(Lcom/buzzfeed/toolkit/content/PostContent;)V

    .line 205
    .end local v0    # "content":Lcom/buzzfeed/toolkit/content/PostContent;
    :cond_59
    :goto_59
    return-void

    .line 202
    :cond_5a
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;->isDeepLink()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 203
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "KEY_URL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/buzzfeed/android/activity/SpicyActivity;->handleDeepLink(Ljava/lang/String;)V

    goto :goto_59
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x0

    .line 263
    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/activity/SpicyActivity;->createSpicyOptionsMenu(Landroid/view/Menu;)V

    .line 264
    const v0, 0x7f11022f

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mBookmarkMenuButton:Landroid/view/MenuItem;

    .line 265
    const v0, 0x7f11022e

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mReactionsMenuItem:Landroid/view/MenuItem;

    .line 266
    const v0, 0x7f11022d

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mCommentsMenuItem:Landroid/view/MenuItem;

    .line 267
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;->updateBookmarkMenuButton()V

    .line 269
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mReactionsMenuItem:Landroid/view/MenuItem;

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/UIUtil;->setMenuItemVisiblity(Landroid/view/MenuItem;Z)V

    .line 270
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mCommentsMenuItem:Landroid/view/MenuItem;

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/UIUtil;->setMenuItemVisiblity(Landroid/view/MenuItem;Z)V

    .line 271
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 256
    invoke-super {p0}, Lcom/buzzfeed/android/activity/BaseActivity;->onDestroy()V

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mShareActionListener:Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;

    .line 258
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpiceMill:Lcom/buzzfeed/spicerack/data/provider/SpiceMill;

    invoke-virtual {v0}, Lcom/buzzfeed/spicerack/data/provider/SpiceMill;->cancelRequests()V

    .line 259
    return-void
.end method

.method public onImageShare(Lcom/buzzfeed/spicerack/data/model/subbuzz/ImageSpice;)V
    .registers 8
    .param p1, "imageSpice"    # Lcom/buzzfeed/spicerack/data/model/subbuzz/ImageSpice;

    .prologue
    .line 691
    iget-object v3, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpicyTracker:Lcom/buzzfeed/android/data/tracking/SpicyTracker;

    invoke-virtual {v3}, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->trackSubBuzzOpenShareSheet()V

    .line 692
    invoke-static {}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getEnvironment()Lcom/buzzfeed/toolkit/networking/Environment;

    move-result-object v3

    iget-object v3, v3, Lcom/buzzfeed/toolkit/networking/Environment;->BASE_URL:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 693
    .local v1, "builder":Landroid/net/Uri$Builder;
    iget-object v3, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpiceItem:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;

    invoke-virtual {v3}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/buzzfeed/toolkit/util/StringUtils;->stripBeginningSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 694
    const-string/jumbo v3, "sub"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpiceItem:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;

    invoke-virtual {v5}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/ImageSpice;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 696
    iget-object v3, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpiceItem:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;

    invoke-virtual {v3}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 697
    .local v0, "blurb":Ljava/lang/String;
    invoke-interface {p1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/ImageSpice;->getHeader()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5b

    .line 698
    invoke-interface {p1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/ImageSpice;->getHeader()Ljava/lang/String;

    move-result-object v0

    .line 701
    :cond_5b
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 703
    .local v2, "formattedUri":Ljava/lang/String;
    new-instance v3, Lcom/buzzfeed/android/activity/SpicyActivity$12;

    invoke-direct {v3, p0}, Lcom/buzzfeed/android/activity/SpicyActivity$12;-><init>(Lcom/buzzfeed/android/activity/SpicyActivity;)V

    iput-object v3, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mShareActionListener:Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;

    .line 710
    iget-object v3, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mShareActionListener:Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;

    invoke-static {p0, v0, v2, v3}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->shareWithListener(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;)V

    .line 715
    return-void
.end method

.method public onItemDisplayed(Lcom/buzzfeed/toolkit/content/FlowItem;I)V
    .registers 3
    .param p1, "flowItem"    # Lcom/buzzfeed/toolkit/content/FlowItem;
    .param p2, "position"    # I

    .prologue
    .line 769
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 280
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_22

    .line 295
    invoke-super {p0, p1}, Lcom/buzzfeed/android/activity/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 282
    :sswitch_d
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;->onBookmarkMenuButtonClicked()V

    goto :goto_c

    .line 285
    :sswitch_11
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;->onContributeMenuButtonClicked()V

    goto :goto_c

    .line 288
    :sswitch_15
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;->onReactMenuButtonClicked()V

    goto :goto_c

    .line 291
    :sswitch_19
    iget-object v1, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpicyTracker:Lcom/buzzfeed/android/data/tracking/SpicyTracker;

    invoke-virtual {v1}, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->trackBack()V

    .line 292
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;->supportFinishAfterTransition()V

    goto :goto_c

    .line 280
    :sswitch_data_22
    .sparse-switch
        0x102002c -> :sswitch_19
        0x7f11022d -> :sswitch_11
        0x7f11022e -> :sswitch_15
        0x7f11022f -> :sswitch_d
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 248
    invoke-super {p0}, Lcom/buzzfeed/android/activity/BaseActivity;->onPause()V

    .line 250
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpicyView:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->setSpicyEventListener(Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;)V

    .line 251
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpicyView:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    invoke-virtual {v0}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->pause()V

    .line 252
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 240
    invoke-super {p0}, Lcom/buzzfeed/android/activity/BaseActivity;->onResume()V

    .line 242
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpicyView:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    invoke-virtual {v0, p0}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->setSpicyEventListener(Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;)V

    .line 243
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpicyView:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    invoke-virtual {v0}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->resume()V

    .line 244
    return-void
.end method

.method public onShareEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 668
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/buzzfeed/android/activity/SpicyActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".onShareEvent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 669
    .local v0, "TAG":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_21

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 670
    :cond_21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to perform share. Invalid content: type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", data="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    :goto_41
    return-void

    .line 675
    :cond_42
    :try_start_42
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 677
    .local v2, "shareJson":Lorg/json/JSONObject;
    const-string v3, "facebook"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 678
    iget-object v3, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mFacebookShare:Lcom/buzzfeed/spicerack/utils/FacebookShare;

    invoke-virtual {v3, v2}, Lcom/buzzfeed/spicerack/utils/FacebookShare;->shareFacebookFromJSON(Lorg/json/JSONObject;)V

    .line 683
    :goto_54
    iget-object v3, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpicyTracker:Lcom/buzzfeed/android/data/tracking/SpicyTracker;

    iget-object v4, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpiceItem:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;

    invoke-virtual {v3, p1, v4, v2}, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->trackWebShare(Ljava/lang/String;Lcom/buzzfeed/toolkit/content/PostContent;Lorg/json/JSONObject;)V
    :try_end_5b
    .catch Lorg/json/JSONException; {:try_start_42 .. :try_end_5b} :catch_5c

    goto :goto_41

    .line 684
    .end local v2    # "shareJson":Lorg/json/JSONObject;
    :catch_5c
    move-exception v1

    .line 685
    .local v1, "e":Lorg/json/JSONException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing share JSON: type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", data="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_41

    .line 680
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v2    # "shareJson":Lorg/json/JSONObject;
    :cond_7e
    :try_start_7e
    invoke-static {p0, p1, v2}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->shareFromWeb(Landroid/app/Activity;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_81
    .catch Lorg/json/JSONException; {:try_start_7e .. :try_end_81} :catch_5c

    goto :goto_54
.end method

.method public onUrlClicked(Ljava/lang/String;Z)Z
    .registers 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "webView"    # Z

    .prologue
    const/4 v1, 0x1

    .line 746
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/buzzfeed/android/activity/SpicyActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".onUrlClicked"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 748
    .local v0, "TAG":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_43

    .line 749
    invoke-static {p1}, Lcom/buzzfeed/android/util/WebContentType;->isFacebookPlugin(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 750
    invoke-static {p1}, Lcom/buzzfeed/android/util/BuzzUtils;->isBuzzFeedUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 751
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Preventing URL from loading: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    :goto_3e
    return v1

    .line 755
    :cond_3f
    invoke-direct {p0, p1, p2}, Lcom/buzzfeed/android/activity/SpicyActivity;->handleUrlClicked(Ljava/lang/String;Z)V

    goto :goto_3e

    .line 758
    :cond_43
    const-string v1, "Can\'t proceed; URL is null"

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    const/4 v1, 0x0

    goto :goto_3e
.end method

.method public onViewStateDetermined(Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;)V
    .registers 8
    .param p1, "viewState"    # Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;

    .prologue
    .line 773
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpicyTracker:Lcom/buzzfeed/android/data/tracking/SpicyTracker;

    iget-object v1, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpiceItem:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;

    iget-object v2, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mFeed:Lcom/buzzfeed/android/data/Feed;

    iget-object v3, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpicyView:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    invoke-virtual {v3}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->getViewState()Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;

    move-result-object v3

    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpiceItem:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;

    invoke-static {v4, v5}, Lcom/buzzfeed/spicerack/data/factory/SpiceFactory;->getUnsupportedSubbuzzs(Landroid/content/Context;Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->trackPageView(Lcom/buzzfeed/toolkit/content/PostContent;Lcom/buzzfeed/android/data/Feed;Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;Ljava/util/List;Ljava/lang/String;)V

    .line 774
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;->trackIfNativeAdPost()V

    .line 775
    return-void
.end method

.method public playYoutube(Ljava/lang/String;)V
    .registers 5
    .param p1, "videoId"    # Ljava/lang/String;

    .prologue
    .line 719
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 730
    :goto_6
    return-void

    .line 723
    :cond_7
    invoke-static {}, Lcom/buzzfeed/toolkit/util/DeviceUtil;->isAmazonDevice()Z

    move-result v0

    if-nez v0, :cond_13

    .line 724
    invoke-static {p0}, Lcom/buzzfeed/spicerack/ui/utils/SpicyUtil;->youTubeApiServiceIsAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 725
    :cond_13
    invoke-static {p0, p1}, Lcom/buzzfeed/android/activity/YouTubeActivity;->playYoutubeOnExternalPlayer(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_6

    .line 727
    :cond_17
    sget-object v0, Lcom/buzzfeed/android/activity/SpicyActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting embedded YouTube intent. videoId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    invoke-static {p0, p1}, Lcom/buzzfeed/android/activity/YouTubeActivity;->getStartIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/activity/SpicyActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_6
.end method

.method public setShareJson(Ljava/lang/String;)V
    .registers 2
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 780
    return-void
.end method

.method protected setUpSpicyView()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 329
    const v0, 0x7f1100a3

    invoke-static {p0, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    iput-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpicyView:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    .line 330
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpicyView:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    invoke-virtual {v0, v3}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->setAlwaysFallback(Z)V

    .line 331
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpicyView:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/buzzfeed/android/util/BuzzUtils;->getBuzzFeedUserAgentSuffix(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->setUserAgent(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpicyView:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    invoke-direct {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;->createNativeResponseButton()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->setBottomCustomView(Landroid/view/View;)V

    .line 333
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpicyView:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    invoke-direct {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;->createShareListener()Lcom/buzzfeed/spicerack/ui/protocol/SpicyShareBarListener;

    move-result-object v1

    invoke-direct {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;->getShareItems()[Lcom/buzzfeed/toolkit/util/ShareItemType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->setSpicyShareBarInfo(Lcom/buzzfeed/spicerack/ui/protocol/SpicyShareBarListener;[Lcom/buzzfeed/toolkit/util/ShareItemType;)V

    .line 334
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpicyView:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    invoke-virtual {v0}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->setWebCacheEnabled()V

    .line 336
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/buzzfeed/android/data/ads/NativeBPageAdTest;->useNativeBPageAds(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 337
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpicyView:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    invoke-virtual {v0, v3}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->setAdsShouldFallback(Z)V

    .line 339
    :cond_48
    return-void
.end method

.method protected setupFixedShareBarExperiment()V
    .registers 4

    .prologue
    .line 847
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/buzzfeed/android/experiment/FixedShareBarABTest;->getFixedShareBarVariant(Landroid/content/Context;)Lcom/buzzfeed/spicerack/experiment/FixedShareBarVariant;

    move-result-object v0

    .line 848
    .local v0, "variant":Lcom/buzzfeed/spicerack/experiment/FixedShareBarVariant;
    iget-object v1, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpicyView:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    new-instance v2, Lcom/buzzfeed/android/activity/SpicyActivity$14;

    invoke-direct {v2, p0}, Lcom/buzzfeed/android/activity/SpicyActivity$14;-><init>(Lcom/buzzfeed/android/activity/SpicyActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->setFixedShareBarVariant(Lcom/buzzfeed/spicerack/experiment/FixedShareBarVariant;Lcom/buzzfeed/spicerack/ui/view/FixedShareBar$FixedShareBarListener;)V

    .line 884
    iget-object v1, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mFab:Landroid/support/design/widget/FloatingActionButton;

    if-eqz v1, :cond_21

    sget-object v1, Lcom/buzzfeed/spicerack/experiment/FixedShareBarVariant;->Control:Lcom/buzzfeed/spicerack/experiment/FixedShareBarVariant;

    if-eq v0, v1, :cond_21

    .line 885
    iget-object v1, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mFab:Landroid/support/design/widget/FloatingActionButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    .line 887
    :cond_21
    return-void
.end method

.method public startLoginActivityForResult()V
    .registers 3

    .prologue
    .line 787
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 788
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/buzzfeed/android/activity/SpicyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 789
    return-void
.end method

.method protected updateBookmarkMenuButton()V
    .registers 4

    .prologue
    .line 428
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mHeaderContent:Lcom/buzzfeed/toolkit/content/PostContent;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mHeaderContent:Lcom/buzzfeed/toolkit/content/PostContent;

    invoke-interface {v0}, Lcom/buzzfeed/toolkit/content/PostContent;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mBookmarkMenuButton:Landroid/view/MenuItem;

    if-eqz v0, :cond_2c

    .line 429
    invoke-static {p0}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->getInstance(Landroid/content/Context;)Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mHeaderContent:Lcom/buzzfeed/toolkit/content/PostContent;

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->isBookmarked(Lcom/buzzfeed/toolkit/content/Content;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 430
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mBookmarkMenuButton:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020058

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 435
    :cond_2c
    :goto_2c
    return-void

    .line 432
    :cond_2d
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity;->mBookmarkMenuButton:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02005a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_2c
.end method

.method public viewResponses()V
    .registers 1

    .prologue
    .line 734
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;->openResponseView()V

    .line 735
    return-void
.end method
