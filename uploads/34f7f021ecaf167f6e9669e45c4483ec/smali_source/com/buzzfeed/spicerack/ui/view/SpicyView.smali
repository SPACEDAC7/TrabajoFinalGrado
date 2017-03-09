.class public Lcom/buzzfeed/spicerack/ui/view/SpicyView;
.super Landroid/widget/FrameLayout;
.source "SpicyView.java"

# interfaces
.implements Lcom/buzzfeed/spicerack/ui/protocol/FallbackViewListener;


# static fields
.field public static final KEY_IMAGE_LARGE:Ljava/lang/String; = "image_large"

.field public static final KEY_IMAGE_STACK:Ljava/lang/String; = "image_stack"

.field public static final KEY_TRANSITION_IMAGE:Ljava/lang/String; = "image"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdsShouldFallback:Z

.field private mAlwaysFallback:Z

.field private mAppBarLayout:Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayout;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mAppBarLayoutController:Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;

.field protected mBleedingOverlay:Lcom/buzzfeed/toolkit/ui/appbarlayout/BleedingOverlay;

.field private mCustomBottomView:Landroid/view/View;

.field private mDisplayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/content/FlowItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFallbackView:Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

.field private mFixedShareBarVariant:Lcom/buzzfeed/spicerack/experiment/FixedShareBarVariant;

.field private mHeaderImageStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsTallHeader:Z

.field private mLoadingSpinner:Landroid/widget/ProgressBar;

.field protected mPopulatedHeader:Z

.field protected mRecyclerView:Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;

.field private mShareBarDelay:I

.field private mShareBarItems:[Lcom/buzzfeed/toolkit/util/ShareItemType;

.field private mSpicyAdapter:Lcom/buzzfeed/spicerack/ui/adapter/SpicyAdapter;

.field private mSpicyEventListener:Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;

.field protected mSpicyHeaderFakeImageView:Landroid/widget/ImageView;

.field protected mSpicyHeaderImageView:Landroid/widget/ImageView;

.field protected mSpicyLayoutManager:Lcom/buzzfeed/spicerack/ui/view/SpicyLayoutManager;

.field private mSpicyTransitionStartListener:Lcom/buzzfeed/spicerack/ui/protocol/SpicyTransitionStartListener;

.field private mSpicyViewState:Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;

.field protected mTransitionSender:Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionSender;

.field private mUseCache:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 65
    const-class v0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    iput v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mShareBarDelay:I

    .line 99
    iput-boolean v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mUseCache:Z

    .line 100
    iput-boolean v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mAlwaysFallback:Z

    .line 101
    iput-boolean v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mPopulatedHeader:Z

    .line 102
    iput-boolean v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mIsTallHeader:Z

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mAdsShouldFallback:Z

    .line 115
    invoke-virtual {p0}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/buzzfeed/nativecontent/R$interpolator;->buzzfeed_interpolator:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 116
    invoke-virtual {p0}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->initView()V

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/spicerack/ui/view/SpicyView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->shouldAnimateHeader()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/buzzfeed/spicerack/ui/view/SpicyView;)I
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    .prologue
    .line 64
    iget v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mShareBarDelay:I

    return v0
.end method

.method static synthetic access$102(Lcom/buzzfeed/spicerack/ui/view/SpicyView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/spicerack/ui/view/SpicyView;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mShareBarDelay:I

    return p1
.end method

.method static synthetic access$200(Lcom/buzzfeed/spicerack/ui/view/SpicyView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->shouldAnimateShareBar()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/buzzfeed/spicerack/ui/view/SpicyView;)Lcom/buzzfeed/spicerack/ui/protocol/SpicyTransitionStartListener;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mSpicyTransitionStartListener:Lcom/buzzfeed/spicerack/ui/protocol/SpicyTransitionStartListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/buzzfeed/spicerack/ui/view/SpicyView;)V
    .registers 1
    .param p0, "x0"    # Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->runTransition()V

    return-void
.end method

.method static synthetic access$500(Lcom/buzzfeed/spicerack/ui/view/SpicyView;)Landroid/view/animation/Interpolator;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private attachScrollListener()V
    .registers 2

    .prologue
    .line 588
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mRecyclerView:Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;

    if-eqz v0, :cond_9

    .line 589
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mRecyclerView:Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;

    invoke-virtual {v0}, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->attachScrollListener()V

    .line 591
    :cond_9
    return-void
.end method

.method private buildDisplayList(Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;)Ljava/util/List;
    .registers 6
    .param p1, "spiceItem"    # Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/content/FlowItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 428
    invoke-direct {p0, p1}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->determineSpicyViewState(Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;)Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;

    move-result-object v1

    iput-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mSpicyViewState:Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;

    .line 429
    invoke-virtual {p0}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->isFallingBack()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 430
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 431
    .local v0, "subBuzzList":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/toolkit/content/FlowItem;>;"
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mFallbackView:Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    if-nez v1, :cond_2b

    .line 432
    new-instance v1, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    invoke-virtual {p0}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v3, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mUseCache:Z

    invoke-direct {v1, v2, v3}, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mFallbackView:Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    .line 433
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mFallbackView:Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    invoke-virtual {v1, p0}, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->setListener(Lcom/buzzfeed/spicerack/ui/protocol/FallbackViewListener;)V

    .line 435
    :cond_2b
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mSpicyEventListener:Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;

    if-eqz v1, :cond_36

    .line 436
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mFallbackView:Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mSpicyEventListener:Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;

    invoke-virtual {v1, v2}, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->setExternalListener(Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;)V

    .line 438
    :cond_36
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mSpicyAdapter:Lcom/buzzfeed/spicerack/ui/adapter/SpicyAdapter;

    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mFallbackView:Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    invoke-virtual {v1, v2}, Lcom/buzzfeed/spicerack/ui/adapter/SpicyAdapter;->setFallback(Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;)V

    .line 439
    invoke-static {p1}, Lcom/buzzfeed/spicerack/data/factory/SpiceFactory;->createFallbackSpice(Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;)Lcom/buzzfeed/toolkit/content/FlowItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    :goto_44
    return-object v0

    .line 441
    .end local v0    # "subBuzzList":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/toolkit/content/FlowItem;>;"
    :cond_45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 442
    .restart local v0    # "subBuzzList":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/toolkit/content/FlowItem;>;"
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mFixedShareBarVariant:Lcom/buzzfeed/spicerack/experiment/FixedShareBarVariant;

    sget-object v2, Lcom/buzzfeed/spicerack/experiment/FixedShareBarVariant;->Control:Lcom/buzzfeed/spicerack/experiment/FixedShareBarVariant;

    if-ne v1, v2, :cond_60

    .line 443
    new-instance v1, Lcom/buzzfeed/spicerack/data/sharebar/ShareBarContent;

    sget-object v2, Lcom/buzzfeed/spicerack/data/sharebar/SpicyShareBarLocation;->Top:Lcom/buzzfeed/spicerack/data/sharebar/SpicyShareBarLocation;

    iget-object v3, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mShareBarItems:[Lcom/buzzfeed/toolkit/util/ShareItemType;

    invoke-direct {v1, v2, v3}, Lcom/buzzfeed/spicerack/data/sharebar/ShareBarContent;-><init>(Lcom/buzzfeed/spicerack/data/sharebar/SpicyShareBarLocation;[Lcom/buzzfeed/toolkit/util/ShareItemType;)V

    invoke-static {v1}, Lcom/buzzfeed/spicerack/data/factory/SpiceFactory;->createShareBar(Lcom/buzzfeed/spicerack/data/sharebar/ShareBarContent;)Lcom/buzzfeed/toolkit/content/FlowItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    :cond_60
    invoke-static {p1}, Lcom/buzzfeed/spicerack/data/factory/SpiceFactory;->getSubBuzzesAsFlowItems(Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 447
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mFixedShareBarVariant:Lcom/buzzfeed/spicerack/experiment/FixedShareBarVariant;

    sget-object v2, Lcom/buzzfeed/spicerack/experiment/FixedShareBarVariant;->Control:Lcom/buzzfeed/spicerack/experiment/FixedShareBarVariant;

    if-ne v1, v2, :cond_7d

    .line 449
    new-instance v1, Lcom/buzzfeed/spicerack/data/sharebar/ShareBarContent;

    sget-object v2, Lcom/buzzfeed/spicerack/data/sharebar/SpicyShareBarLocation;->Bottom:Lcom/buzzfeed/spicerack/data/sharebar/SpicyShareBarLocation;

    iget-object v3, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mShareBarItems:[Lcom/buzzfeed/toolkit/util/ShareItemType;

    invoke-direct {v1, v2, v3}, Lcom/buzzfeed/spicerack/data/sharebar/ShareBarContent;-><init>(Lcom/buzzfeed/spicerack/data/sharebar/SpicyShareBarLocation;[Lcom/buzzfeed/toolkit/util/ShareItemType;)V

    invoke-static {v1}, Lcom/buzzfeed/spicerack/data/factory/SpiceFactory;->createShareBar(Lcom/buzzfeed/spicerack/data/sharebar/ShareBarContent;)Lcom/buzzfeed/toolkit/content/FlowItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    :cond_7d
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mCustomBottomView:Landroid/view/View;

    if-eqz v1, :cond_88

    .line 453
    invoke-static {p1}, Lcom/buzzfeed/spicerack/data/factory/SpiceFactory;->createCustomBottomView(Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;)Lcom/buzzfeed/toolkit/content/FlowItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    :cond_88
    invoke-static {p1}, Lcom/buzzfeed/spicerack/data/factory/SpiceFactory;->createEmptySpice(Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;)Lcom/buzzfeed/toolkit/content/FlowItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_44
.end method

.method private determineSpicyViewState(Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;)Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;
    .registers 5
    .param p1, "spiceItem"    # Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;

    .prologue
    .line 477
    iget-boolean v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mAlwaysFallback:Z

    if-eqz v0, :cond_e

    .line 478
    sget-object v0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->TAG:Ljava/lang/String;

    const-string v1, "Always Fallback"

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    sget-object v0, Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;->Fallback:Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;

    .line 500
    :goto_d
    return-object v0

    .line 483
    :cond_e
    iget-boolean v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mAdsShouldFallback:Z

    if-eqz v0, :cond_22

    invoke-virtual {p1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->isAd()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 484
    sget-object v0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->TAG:Ljava/lang/String;

    const-string v1, "SpiceItem Ad Fallback"

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    sget-object v0, Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;->Fallback:Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;

    goto :goto_d

    .line 488
    :cond_22
    sget-object v0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fallback Page Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->getFormat()Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Format;

    move-result-object v2

    invoke-virtual {v2}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Format;->getPageType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const-string v0, "long"

    invoke-virtual {p1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->getFormat()Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Format;

    move-result-object v1

    invoke-virtual {v1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Format;->getPageType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 491
    sget-object v0, Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;->Fallback:Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;

    goto :goto_d

    .line 494
    :cond_55
    invoke-direct {p0, p1}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->hasDisclaimer(Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 496
    sget-object v0, Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;->Fallback:Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;

    goto :goto_d

    .line 500
    :cond_5e
    invoke-virtual {p0}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/buzzfeed/spicerack/data/factory/SpiceFactory;->containsSupportedSubBuzz(Landroid/content/Context;Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;)Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;

    move-result-object v0

    goto :goto_d
.end method

.method private hasDisclaimer(Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;)Z
    .registers 6
    .param p1, "spiceItem"    # Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;

    .prologue
    .line 510
    invoke-virtual {p1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->getTags()Ljava/util/List;

    move-result-object v1

    .line 511
    .local v1, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_2d

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2d

    .line 512
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 513
    .local v0, "tag":Ljava/lang/String;
    const-string v3, "--disclaimer"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 514
    sget-object v2, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->TAG:Ljava/lang/String;

    const-string v3, "Fallback Has Disclaimer"

    invoke-static {v2, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const/4 v2, 0x1

    .line 519
    .end local v0    # "tag":Ljava/lang/String;
    :goto_2c
    return v2

    :cond_2d
    const/4 v2, 0x0

    goto :goto_2c
.end method

.method private runTransition()V
    .registers 4

    .prologue
    .line 549
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mSpicyHeaderFakeImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mTransitionSender:Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionSender;

    if-nez v1, :cond_9

    .line 577
    :cond_8
    :goto_8
    return-void

    .line 551
    :cond_9
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mTransitionSender:Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionSender;

    const-string v2, "image"

    invoke-virtual {v1, v2}, Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionSender;->getElementForKey(Ljava/lang/String;)Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionElement;

    move-result-object v0

    .line 552
    .local v0, "sharedElement":Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionElement;
    if-eqz v0, :cond_8

    .line 557
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mSpicyHeaderFakeImageView:Landroid/widget/ImageView;

    new-instance v2, Lcom/buzzfeed/spicerack/ui/view/SpicyView$6;

    invoke-direct {v2, p0, v0}, Lcom/buzzfeed/spicerack/ui/view/SpicyView$6;-><init>(Lcom/buzzfeed/spicerack/ui/view/SpicyView;Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionElement;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_8
.end method

.method private shouldAnimateHeader()Z
    .registers 2

    .prologue
    .line 580
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mSpicyAdapter:Lcom/buzzfeed/spicerack/ui/adapter/SpicyAdapter;

    invoke-virtual {v0}, Lcom/buzzfeed/spicerack/ui/adapter/SpicyAdapter;->getLastItemDisplayed()I

    move-result v0

    if-gtz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private shouldAnimateShareBar()Z
    .registers 3

    .prologue
    .line 584
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mSpicyAdapter:Lcom/buzzfeed/spicerack/ui/adapter/SpicyAdapter;

    invoke-virtual {v0}, Lcom/buzzfeed/spicerack/ui/adapter/SpicyAdapter;->getLastItemDisplayed()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method


# virtual methods
.method protected buildHeader(Lcom/buzzfeed/toolkit/content/PostContent;)Ljava/util/List;
    .registers 5
    .param p1, "postContent"    # Lcom/buzzfeed/toolkit/content/PostContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/buzzfeed/toolkit/content/PostContent;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/content/FlowItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 462
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 463
    .local v0, "subBuzzList":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/toolkit/content/FlowItem;>;"
    const/4 v1, 0x0

    invoke-static {p1}, Lcom/buzzfeed/spicerack/data/factory/SpiceFactory;->createHeaderSpice(Lcom/buzzfeed/toolkit/content/PostContent;)Lcom/buzzfeed/toolkit/content/FlowItem;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 464
    invoke-static {p1}, Lcom/buzzfeed/spicerack/data/factory/SpiceFactory;->createLoadingSpice(Lcom/buzzfeed/toolkit/content/PostContent;)Lcom/buzzfeed/toolkit/content/FlowItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    return-object v0
.end method

.method protected buildListFromPostContent(Lcom/buzzfeed/toolkit/content/PostContent;)V
    .registers 4
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/PostContent;

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->buildHeader(Lcom/buzzfeed/toolkit/content/PostContent;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mDisplayList:Ljava/util/List;

    .line 384
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mSpicyAdapter:Lcom/buzzfeed/spicerack/ui/adapter/SpicyAdapter;

    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mDisplayList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/buzzfeed/spicerack/ui/adapter/SpicyAdapter;->setList(Ljava/util/List;)V

    .line 385
    return-void
.end method

.method protected dismissLoading()V
    .registers 3

    .prologue
    .line 414
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mLoadingSpinner:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 415
    return-void
.end method

.method public getHeaderImageIfOnScreen()Landroid/widget/ImageView;
    .registers 3

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mBleedingOverlay:Lcom/buzzfeed/toolkit/ui/appbarlayout/BleedingOverlay;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/ui/appbarlayout/BleedingOverlay;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_15

    .line 303
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mSpicyHeaderImageView:Landroid/widget/ImageView;

    .line 305
    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public getViewState()Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;
    .registers 2

    .prologue
    .line 534
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mSpicyViewState:Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;

    return-object v0
.end method

.method protected initView()V
    .registers 3

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/buzzfeed/nativecontent/R$layout;->spicy_view:I

    invoke-static {v0, v1, p0}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 121
    return-void
.end method

.method public isFallingBack()Z
    .registers 3

    .prologue
    .line 530
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mSpicyViewState:Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;

    sget-object v1, Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;->Fallback:Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected onAttachedToWindow()V
    .registers 5

    .prologue
    .line 186
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 187
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mAppBarLayout:Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayout;

    if-eqz v0, :cond_12

    .line 188
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mAppBarLayoutController:Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;

    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mRecyclerView:Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;

    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mSpicyLayoutManager:Lcom/buzzfeed/spicerack/ui/view/SpicyLayoutManager;

    iget-object v3, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mAppBarLayout:Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayout;

    invoke-virtual {v0, v1, v2, v3}, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->attachView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/LinearLayoutManager;Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayout;)V

    .line 190
    :cond_12
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mAppBarLayout:Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayout;

    if-eqz v0, :cond_9

    .line 195
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mAppBarLayoutController:Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->detachView()V

    .line 197
    :cond_9
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 198
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 125
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 126
    sget v0, Lcom/buzzfeed/nativecontent/R$id;->bleeding_overlay:I

    invoke-static {p0, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/ui/appbarlayout/BleedingOverlay;

    iput-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mBleedingOverlay:Lcom/buzzfeed/toolkit/ui/appbarlayout/BleedingOverlay;

    .line 127
    sget v0, Lcom/buzzfeed/nativecontent/R$id;->spicy_spinner:I

    invoke-static {p0, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mLoadingSpinner:Landroid/widget/ProgressBar;

    .line 128
    sget v0, Lcom/buzzfeed/nativecontent/R$id;->header_image:I

    invoke-static {p0, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mSpicyHeaderImageView:Landroid/widget/ImageView;

    .line 129
    sget v0, Lcom/buzzfeed/nativecontent/R$id;->header_image_fake:I

    invoke-static {p0, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mSpicyHeaderFakeImageView:Landroid/widget/ImageView;

    .line 130
    sget v0, Lcom/buzzfeed/nativecontent/R$id;->recyclerView:I

    invoke-static {p0, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;

    iput-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mRecyclerView:Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;

    .line 131
    sget v0, Lcom/buzzfeed/nativecontent/R$id;->appbar:I

    invoke-static {p0, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayout;

    iput-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mAppBarLayout:Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayout;

    .line 132
    new-instance v0, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;

    invoke-direct {v0}, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mAppBarLayoutController:Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;

    .line 133
    new-instance v0, Lcom/buzzfeed/spicerack/ui/view/SpicyLayoutManager;

    invoke-virtual {p0}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/buzzfeed/spicerack/ui/view/SpicyLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mSpicyLayoutManager:Lcom/buzzfeed/spicerack/ui/view/SpicyLayoutManager;

    .line 134
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mRecyclerView:Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;

    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mSpicyLayoutManager:Lcom/buzzfeed/spicerack/ui/view/SpicyLayoutManager;

    invoke-virtual {v0, v1}, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 135
    new-instance v0, Lcom/buzzfeed/spicerack/ui/adapter/SpicyAdapter;

    invoke-direct {v0}, Lcom/buzzfeed/spicerack/ui/adapter/SpicyAdapter;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mSpicyAdapter:Lcom/buzzfeed/spicerack/ui/adapter/SpicyAdapter;

    .line 136
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mRecyclerView:Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;

    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mSpicyAdapter:Lcom/buzzfeed/spicerack/ui/adapter/SpicyAdapter;

    invoke-virtual {v0, v1}, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 137
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mSpicyLayoutManager:Lcom/buzzfeed/spicerack/ui/view/SpicyLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/buzzfeed/spicerack/ui/view/SpicyLayoutManager;->setScrollEnabled(Z)V

    .line 138
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mRecyclerView:Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;

    new-instance v1, Lcom/buzzfeed/spicerack/ui/view/SpicyView$1;

    invoke-direct {v1, p0}, Lcom/buzzfeed/spicerack/ui/view/SpicyView$1;-><init>(Lcom/buzzfeed/spicerack/ui/view/SpicyView;)V

    invoke-virtual {v0, v1}, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->addOnChildAttachStateChangeListener(Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 155
    invoke-virtual {p0}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->setupHeader()V

    .line 156
    return-void
.end method

.method public onSharedElementTransitionEnd()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 275
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mRecyclerView:Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;

    if-nez v0, :cond_6

    .line 287
    :goto_5
    return-void

    .line 278
    :cond_6
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mSpicyHeaderFakeImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_15

    .line 279
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mSpicyHeaderFakeImageView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mSpicyHeaderImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 282
    :cond_15
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mSpicyLayoutManager:Lcom/buzzfeed/spicerack/ui/view/SpicyLayoutManager;

    if-eqz v0, :cond_1f

    .line 283
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mSpicyLayoutManager:Lcom/buzzfeed/spicerack/ui/view/SpicyLayoutManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/spicerack/ui/view/SpicyLayoutManager;->setScrollEnabled(Z)V

    .line 286
    :cond_1f
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mBleedingOverlay:Lcom/buzzfeed/toolkit/ui/appbarlayout/BleedingOverlay;

    invoke-virtual {v0, v2}, Lcom/buzzfeed/toolkit/ui/appbarlayout/BleedingOverlay;->setVisibility(I)V

    goto :goto_5
.end method

.method public pageLoaded()V
    .registers 3

    .prologue
    .line 539
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mRecyclerView:Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;

    if-nez v1, :cond_5

    .line 546
    :cond_4
    :goto_4
    return-void

    .line 542
    :cond_5
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mRecyclerView:Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;

    invoke-virtual {v1}, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->getLoadingViewHolder()Lcom/buzzfeed/spicerack/ui/holder/LoadingSpiceViewHolder;

    move-result-object v0

    .line 543
    .local v0, "viewHolder":Lcom/buzzfeed/spicerack/ui/holder/LoadingSpiceViewHolder;
    if-eqz v0, :cond_4

    .line 544
    invoke-virtual {v0}, Lcom/buzzfeed/spicerack/ui/holder/LoadingSpiceViewHolder;->hide()V

    goto :goto_4
.end method

.method public pause()V
    .registers 2

    .prologue
    .line 594
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mFallbackView:Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->isFallingBack()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 595
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mFallbackView:Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    invoke-virtual {v0}, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->onPause()V

    .line 597
    :cond_f
    return-void
.end method

.method public populateHeader(Lcom/buzzfeed/toolkit/content/PostContent;)V
    .registers 3
    .param p1, "postContent"    # Lcom/buzzfeed/toolkit/content/PostContent;

    .prologue
    .line 309
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->populateHeader(Lcom/buzzfeed/toolkit/content/PostContent;Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionSender;)V

    .line 310
    return-void
.end method

.method public populateHeader(Lcom/buzzfeed/toolkit/content/PostContent;Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionSender;)V
    .registers 9
    .param p1, "postContent"    # Lcom/buzzfeed/toolkit/content/PostContent;
    .param p2, "sender"    # Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionSender;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 314
    iget-boolean v2, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mPopulatedHeader:Z

    if-eqz v2, :cond_7

    .line 380
    :goto_6
    return-void

    .line 317
    :cond_7
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mPopulatedHeader:Z

    .line 318
    iput-object p2, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mTransitionSender:Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionSender;

    .line 320
    invoke-static {}, Lcom/buzzfeed/toolkit/util/VersionUtil;->hasLollipop()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 321
    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mSpicyHeaderImageView:Landroid/widget/ImageView;

    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 322
    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mSpicyHeaderImageView:Landroid/widget/ImageView;

    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTransitionName(Ljava/lang/String;)V

    .line 323
    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mSpicyHeaderImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 324
    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mSpicyHeaderFakeImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 330
    :goto_2e
    invoke-static {}, Lcom/buzzfeed/toolkit/util/ImageUtil;->getCacheableImageWidth()I

    move-result v1

    .line 331
    .local v1, "width":I
    iget-boolean v2, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mIsTallHeader:Z

    invoke-static {v2}, Lcom/buzzfeed/toolkit/util/ImageUtil;->getCacheableImageHeight(Z)I

    move-result v0

    .line 332
    .local v0, "height":I
    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mHeaderImageStack:Ljava/util/Stack;

    if-eqz v2, :cond_57

    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mHeaderImageStack:Ljava/util/Stack;

    :goto_3e
    iget-object v3, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mSpicyHeaderImageView:Landroid/widget/ImageView;

    new-instance v4, Lcom/buzzfeed/spicerack/ui/view/SpicyView$4;

    invoke-direct {v4, p0}, Lcom/buzzfeed/spicerack/ui/view/SpicyView$4;-><init>(Lcom/buzzfeed/spicerack/ui/view/SpicyView;)V

    invoke-static {v2, v1, v0, v3, v4}, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils;->loadSpiceHeader(Ljava/util/Stack;IILandroid/widget/ImageView;Lcom/bumptech/glide/request/RequestListener;)V

    .line 379
    invoke-virtual {p0, p1}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->buildListFromPostContent(Lcom/buzzfeed/toolkit/content/PostContent;)V

    goto :goto_6

    .line 326
    .end local v0    # "height":I
    .end local v1    # "width":I
    :cond_4c
    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mSpicyHeaderFakeImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 327
    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mSpicyHeaderImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2e

    .line 332
    .restart local v0    # "height":I
    .restart local v1    # "width":I
    :cond_57
    invoke-static {}, Lcom/buzzfeed/toolkit/util/UIUtil;->getScreenDensityDpi()F

    move-result v2

    invoke-interface {p1, v2}, Lcom/buzzfeed/toolkit/content/PostContent;->getImageStack(F)Ljava/util/Stack;

    move-result-object v2

    goto :goto_3e
.end method

.method public populatePost(Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;)V
    .registers 5
    .param p1, "spiceItem"    # Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;

    .prologue
    .line 388
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mDisplayList:Ljava/util/List;

    if-nez v1, :cond_c

    .line 389
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "You must call populateHeader before calling populatePost"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 392
    :cond_c
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mDisplayList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->buildDisplayList(Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 393
    invoke-virtual {p0}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->isFallingBack()Z

    move-result v1

    if-eqz v1, :cond_3d

    const/4 v0, 0x2

    .line 394
    .local v0, "skipRange":I
    :goto_1c
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mSpicyAdapter:Lcom/buzzfeed/spicerack/ui/adapter/SpicyAdapter;

    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mDisplayList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v0, v2}, Lcom/buzzfeed/spicerack/ui/adapter/SpicyAdapter;->notifyItemRangeChanged(II)V

    .line 395
    invoke-virtual {p0}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->isFallingBack()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 396
    invoke-direct {p0}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->attachScrollListener()V

    .line 399
    :cond_32
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mRecyclerView:Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;

    new-instance v2, Lcom/buzzfeed/spicerack/ui/view/SpicyView$5;

    invoke-direct {v2, p0, p1}, Lcom/buzzfeed/spicerack/ui/view/SpicyView$5;-><init>(Lcom/buzzfeed/spicerack/ui/view/SpicyView;Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;)V

    invoke-static {v1, v2}, Lcom/buzzfeed/toolkit/util/UIUtil;->runAfterLayout(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 411
    return-void

    .line 393
    .end local v0    # "skipRange":I
    :cond_3d
    const/4 v0, 0x3

    goto :goto_1c
.end method

.method public resume()V
    .registers 2

    .prologue
    .line 600
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mFallbackView:Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->isFallingBack()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 601
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mFallbackView:Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    invoke-virtual {v0}, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->onResume()V

    .line 603
    :cond_f
    return-void
.end method

.method public setAdsShouldFallback(Z)V
    .registers 2
    .param p1, "fallback"    # Z

    .prologue
    .line 237
    iput-boolean p1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mAdsShouldFallback:Z

    .line 238
    return-void
.end method

.method public setAlwaysFallback(Z)V
    .registers 2
    .param p1, "alwaysFallback"    # Z

    .prologue
    .line 233
    iput-boolean p1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mAlwaysFallback:Z

    .line 234
    return-void
.end method

.method public setBottomCustomView(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mCustomBottomView:Landroid/view/View;

    .line 295
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mSpicyAdapter:Lcom/buzzfeed/spicerack/ui/adapter/SpicyAdapter;

    if-eqz v0, :cond_b

    .line 296
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mSpicyAdapter:Lcom/buzzfeed/spicerack/ui/adapter/SpicyAdapter;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/spicerack/ui/adapter/SpicyAdapter;->setBottomCustomView(Landroid/view/View;)V

    .line 298
    :cond_b
    return-void
.end method

.method public setFixedShareBarVariant(Lcom/buzzfeed/spicerack/experiment/FixedShareBarVariant;Lcom/buzzfeed/spicerack/ui/view/FixedShareBar$FixedShareBarListener;)V
    .registers 5
    .param p1, "variant"    # Lcom/buzzfeed/spicerack/experiment/FixedShareBarVariant;
    .param p2, "listener"    # Lcom/buzzfeed/spicerack/ui/view/FixedShareBar$FixedShareBarListener;

    .prologue
    .line 606
    iput-object p1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mFixedShareBarVariant:Lcom/buzzfeed/spicerack/experiment/FixedShareBarVariant;

    .line 607
    sget v1, Lcom/buzzfeed/nativecontent/R$id;->spicy_view_fixed_share_bar:I

    invoke-static {p0, v1}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/spicerack/ui/view/FixedShareBar;

    .line 608
    .local v0, "fixedShareBar":Lcom/buzzfeed/spicerack/ui/view/FixedShareBar;
    sget-object v1, Lcom/buzzfeed/spicerack/experiment/FixedShareBarVariant;->Control:Lcom/buzzfeed/spicerack/experiment/FixedShareBarVariant;

    if-eq p1, v1, :cond_15

    .line 609
    invoke-virtual {v0, p1, p2}, Lcom/buzzfeed/spicerack/ui/view/FixedShareBar;->setVariant(Lcom/buzzfeed/spicerack/experiment/FixedShareBarVariant;Lcom/buzzfeed/spicerack/ui/view/FixedShareBar$FixedShareBarListener;)V

    .line 610
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/buzzfeed/spicerack/ui/view/FixedShareBar;->setVisibility(I)V

    .line 612
    :cond_15
    return-void
.end method

.method public setHeaderImageInfo(Ljava/util/Stack;ZZ)V
    .registers 6
    .param p2, "isTallHeader"    # Z
    .param p3, "doSharedElementTransition"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p1, "imageStack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    iput-boolean p2, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mIsTallHeader:Z

    .line 202
    iput-object p1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mHeaderImageStack:Ljava/util/Stack;

    .line 203
    if-nez p3, :cond_15

    .line 204
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mSpicyHeaderImageView:Landroid/widget/ImageView;

    invoke-static {p2}, Lcom/buzzfeed/toolkit/util/ImageUtil;->getCacheableImageHeight(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 205
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mSpicyHeaderImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 207
    :cond_15
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mRecyclerView:Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;

    new-instance v1, Lcom/buzzfeed/spicerack/ui/view/SpicyView$3;

    invoke-direct {v1, p0, p2}, Lcom/buzzfeed/spicerack/ui/view/SpicyView$3;-><init>(Lcom/buzzfeed/spicerack/ui/view/SpicyView;Z)V

    invoke-virtual {v0, v1}, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 224
    return-void
.end method

.method public setSpicyEventListener(Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mSpicyEventListener:Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;

    .line 242
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mSpicyAdapter:Lcom/buzzfeed/spicerack/ui/adapter/SpicyAdapter;

    if-eqz v0, :cond_b

    .line 243
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mSpicyAdapter:Lcom/buzzfeed/spicerack/ui/adapter/SpicyAdapter;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/spicerack/ui/adapter/SpicyAdapter;->setSpicyEventListener(Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;)V

    .line 245
    :cond_b
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mFallbackView:Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    if-eqz v0, :cond_14

    .line 246
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mFallbackView:Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->setExternalListener(Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;)V

    .line 248
    :cond_14
    return-void
.end method

.method public setSpicyShareBarInfo(Lcom/buzzfeed/spicerack/ui/protocol/SpicyShareBarListener;[Lcom/buzzfeed/toolkit/util/ShareItemType;)V
    .registers 4
    .param p1, "listener"    # Lcom/buzzfeed/spicerack/ui/protocol/SpicyShareBarListener;
    .param p2, "shareTypes"    # [Lcom/buzzfeed/toolkit/util/ShareItemType;

    .prologue
    .line 264
    iput-object p2, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mShareBarItems:[Lcom/buzzfeed/toolkit/util/ShareItemType;

    .line 265
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mSpicyAdapter:Lcom/buzzfeed/spicerack/ui/adapter/SpicyAdapter;

    if-eqz v0, :cond_b

    .line 266
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mSpicyAdapter:Lcom/buzzfeed/spicerack/ui/adapter/SpicyAdapter;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/spicerack/ui/adapter/SpicyAdapter;->setSpicyShareBarInfo(Lcom/buzzfeed/spicerack/ui/protocol/SpicyShareBarListener;)V

    .line 268
    :cond_b
    return-void
.end method

.method public setSpicyTransitionStartListener(Lcom/buzzfeed/spicerack/ui/protocol/SpicyTransitionStartListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/buzzfeed/spicerack/ui/protocol/SpicyTransitionStartListener;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mSpicyTransitionStartListener:Lcom/buzzfeed/spicerack/ui/protocol/SpicyTransitionStartListener;

    .line 272
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .registers 2
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 290
    invoke-static {p1}, Lcom/buzzfeed/spicerack/data/constant/Environment;->setUserAgent(Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method public setWebCacheDisabled()V
    .registers 2

    .prologue
    .line 260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mUseCache:Z

    .line 261
    return-void
.end method

.method public setWebCacheEnabled()V
    .registers 2

    .prologue
    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mUseCache:Z

    .line 257
    return-void
.end method

.method protected setupHeader()V
    .registers 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mAppBarLayout:Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayout;

    if-nez v0, :cond_5

    .line 182
    :goto_4
    return-void

    .line 163
    :cond_5
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mAppBarLayout:Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayout;

    new-instance v1, Lcom/buzzfeed/spicerack/ui/view/SpicyView$2;

    invoke-direct {v1, p0}, Lcom/buzzfeed/spicerack/ui/view/SpicyView$2;-><init>(Lcom/buzzfeed/spicerack/ui/view/SpicyView;)V

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayout;->addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    goto :goto_4
.end method
