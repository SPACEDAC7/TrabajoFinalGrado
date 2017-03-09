.class public abstract Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;
.super Landroid/app/Fragment;
.source "BaseShowPageFragment.java"

# interfaces
.implements Lcom/buzzfeed/showx/showpage/ShowPageContract$Presenter$Callbacks;
.implements Lcom/buzzfeed/showx/showpage/ShowPageContract$UpdatableView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$NetworkChangeReceiver;,
        Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$UnitImpressionRecorder;,
        Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$InternalAutoFocusStrategy;,
        Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$InternalOnFocusChangeListener;,
        Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$PushNotificationPromptCallback;
    }
.end annotation


# static fields
.field private static final HEADER_ASPECT_RATIO:F = 1.5f

.field public static final KEY_TOOLBAR_STATE:Ljava/lang/String; = "KEY_TOOLBAR_STATE"

.field public static final KEY_TRANSLATION_OFFSET:Ljava/lang/String; = "KEY_TRANSLATION_OFFSET"

.field public static final TAG:Ljava/lang/String; = "BaseShowPageFragment"


# instance fields
.field private mAdapter:Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;

.field private mAppBarLayoutController:Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;

.field protected mAutoFocusController:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

.field private mCoverImageView:Landroid/widget/ImageView;

.field private mCurrentShowPage:Lcom/buzzfeed/showx/showpage/data/model/ShowPage;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected mFocusedAdapterPosition:I

.field private mFooterProgressBar:Landroid/widget/ProgressBar;

.field private mHeaderAnimationHelper:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;

.field private mInstallAppView:Lcom/buzzfeed/showx/showpage/ui/view/InstallAppView;

.field private mKeepScreenOnHelper:Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mNeedsPlayOnResume:Z

.field private mNeedsVideoPlayerSetup:Z

.field private mNetworkChangeReceiver:Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$NetworkChangeReceiver;

.field protected mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field protected mScreenName:Ljava/lang/String;

.field private mShareFab:Landroid/support/design/widget/FloatingActionButton;

.field protected mShowId:Ljava/lang/String;

.field protected mShowPagePresenter:Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

.field protected mShowPageTracker:Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;

.field private mShowSubscriptionStorage:Lcom/buzzfeed/showx/showpage/data/ShowSubscriptionStorage;

.field private mShowTitle:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private mToolbar:Lcom/buzzfeed/showx/showpage/ui/view/ShowPageToolbar;

.field private mToolbarStateOnRestore:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;

.field private mTranslationOffsetOnRestore:I

.field private mUnitImpressionRecorder:Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$UnitImpressionRecorder;

.field private mVideoCardStateHandler:Lcom/buzzfeed/buffet/ui/listener/VideoCardStateHandler;

.field protected mVideoEventTracker:Lcom/buzzfeed/analytics/client/VideoTracker;

.field protected mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 114
    new-instance v0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$NetworkChangeReceiver;

    invoke-direct {v0, p0, v1}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$NetworkChangeReceiver;-><init>(Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$1;)V

    iput-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mNetworkChangeReceiver:Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$NetworkChangeReceiver;

    .line 129
    iput-object v1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mToolbarStateOnRestore:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;

    .line 132
    const/4 v0, -0x1

    iput v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mFocusedAdapterPosition:I

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mNeedsPlayOnResume:Z

    return-void
.end method

.method static synthetic access$100(Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;ILcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;)V
    .registers 3
    .param p0, "x0"    # Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->restoreToolbarState(ILcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;)V

    return-void
.end method

.method static synthetic access$400(Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->startAutoFocusIfNeeded(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->toggleSubscriptionStatus()V

    return-void
.end method

.method static synthetic access$700(Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;)Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mAdapter:Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;

    return-object v0
.end method

.method private calculateTopHeaderClearance()I
    .registers 5

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/buzzfeed/toolkit/util/UIUtil;->isPortrait(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 379
    invoke-static {}, Lcom/buzzfeed/toolkit/util/UIUtil;->getScreenWidth()I

    move-result v1

    .line 381
    .local v1, "futureScreenWidth":I
    :goto_12
    int-to-float v2, v1

    const/high16 v3, 0x3fc00000

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 383
    .local v0, "clearance":I
    invoke-static {}, Lcom/buzzfeed/toolkit/util/VersionUtil;->hasLollipop()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 384
    invoke-virtual {p0}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/buzzfeed/toolkit/util/UIUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    sub-int/2addr v0, v2

    .line 387
    :cond_29
    return v0

    .line 379
    .end local v0    # "clearance":I
    .end local v1    # "futureScreenWidth":I
    :cond_2a
    invoke-static {}, Lcom/buzzfeed/toolkit/util/UIUtil;->getScreenHeight()I

    move-result v1

    goto :goto_12
.end method

.method private configureFab()V
    .registers 1

    .prologue
    .line 406
    return-void
.end method

.method private configureInstallAppView(Landroid/view/View;)V
    .registers 2
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 421
    return-void
.end method

.method private configureSwipeRefreshLayout()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 391
    invoke-virtual {p0}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/buzzfeed/toolkit/util/UIUtil;->getActionBarHeight(Landroid/content/Context;)I

    move-result v0

    .line 392
    .local v0, "actionBarHeight":I
    invoke-static {}, Lcom/buzzfeed/toolkit/util/VersionUtil;->hasLollipop()Z

    move-result v5

    if-eqz v5, :cond_3c

    invoke-virtual {p0}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/buzzfeed/toolkit/util/UIUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    .line 393
    .local v2, "statusBarHeight":I
    :goto_18
    invoke-virtual {p0}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/buzzfeed/showx/R$dimen;->padding_medium:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 395
    .local v1, "defaultPadding":I
    add-int v5, v0, v2

    add-int v3, v5, v1

    .line 397
    .local v3, "topOffset":I
    iget-object v5, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v5, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 398
    iget-object v5, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-array v6, v8, [I

    sget v7, Lcom/buzzfeed/showx/R$color;->buzzfeed_blue:I

    aput v7, v6, v4

    invoke-virtual {v5, v6}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 399
    iget-object v5, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v5, v8, v4, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setProgressViewOffset(ZII)V

    .line 400
    return-void

    .end local v1    # "defaultPadding":I
    .end local v2    # "statusBarHeight":I
    .end local v3    # "topOffset":I
    :cond_3c
    move v2, v4

    .line 392
    goto :goto_18
.end method

.method private configureTrackingComponents(Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;)V
    .registers 8
    .param p1, "player"    # Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    .prologue
    .line 336
    new-instance v0, Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;

    .line 337
    invoke-virtual {p0}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mScreenName:Ljava/lang/String;

    .line 339
    invoke-static {}, Lcom/buzzfeed/analytics/client/VideoTracker;->getInstance()Lcom/buzzfeed/analytics/client/VideoTracker;

    move-result-object v3

    .line 340
    invoke-static {}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->getInstance()Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    move-result-object v4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/buzzfeed/analytics/client/VideoTracker;Lcom/buzzfeed/analytics/client/BuzzFeedTracker;Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;)V

    iput-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowPageTracker:Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;

    .line 342
    return-void
.end method

.method private detachTrackerIfNeeded()V
    .registers 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowPageTracker:Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowPageTracker:Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;

    invoke-virtual {v0}, Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 346
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowPageTracker:Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;

    invoke-virtual {v0}, Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;->detachMediaComponents()V

    .line 348
    :cond_11
    return-void
.end method

.method private isFeedLoaded()Z
    .registers 2

    .prologue
    .line 553
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mAdapter:Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mAdapter:Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;

    invoke-virtual {v0}, Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private onSetupVideoPlayback(Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;)Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;
    .registers 4
    .param p1, "player"    # Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    .prologue
    .line 323
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->setAudioMuted(Z)V

    .line 324
    new-instance v0, Lcom/buzzfeed/buffet/ui/listener/VideoCardStateHandler;

    invoke-direct {v0}, Lcom/buzzfeed/buffet/ui/listener/VideoCardStateHandler;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mVideoCardStateHandler:Lcom/buzzfeed/buffet/ui/listener/VideoCardStateHandler;

    .line 325
    new-instance v0, Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;

    invoke-virtual {p0}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;-><init>(Landroid/view/Window;)V

    iput-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mKeepScreenOnHelper:Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;

    .line 326
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mKeepScreenOnHelper:Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;->attachTo(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;)V

    .line 327
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mVideoCardStateHandler:Lcom/buzzfeed/buffet/ui/listener/VideoCardStateHandler;

    invoke-virtual {p1, v0}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->addListener(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;)V

    .line 328
    invoke-direct {p0, p1}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->configureTrackingComponents(Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;)V

    .line 329
    return-object p1
.end method

.method private restoreToolBarStateIfNeeded(Landroid/view/View;)V
    .registers 5
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 229
    iget v2, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mTranslationOffsetOnRestore:I

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mToolbarStateOnRestore:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;

    if-eqz v2, :cond_1a

    .line 230
    iget v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mTranslationOffsetOnRestore:I

    .line 231
    .local v0, "offset":I
    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mToolbarStateOnRestore:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;

    .line 232
    .local v1, "state":Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;
    new-instance v2, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$1;-><init>(Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;ILcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;)V

    invoke-static {p1, v2}, Lcom/buzzfeed/toolkit/util/UIUtil;->runAfterLayout(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 238
    const/4 v2, 0x0

    iput v2, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mTranslationOffsetOnRestore:I

    .line 239
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mToolbarStateOnRestore:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;

    .line 241
    .end local v0    # "offset":I
    .end local v1    # "state":Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;
    :cond_1a
    return-void
.end method

.method private restoreToolbarState(ILcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;)V
    .registers 4
    .param p1, "translationOffset"    # I
    .param p2, "toolbarState"    # Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;

    .prologue
    .line 244
    if-eqz p1, :cond_7

    .line 245
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mAppBarLayoutController:Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->setTranslationOffset(I)V

    .line 248
    :cond_7
    if-eqz p2, :cond_e

    .line 249
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mHeaderAnimationHelper:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;

    invoke-virtual {v0, p2}, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->setToolbarState(Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;)V

    .line 251
    :cond_e
    return-void
.end method

.method private setupAutoPlay()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 316
    new-instance v0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    invoke-direct {v0}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mAutoFocusController:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    .line 317
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mAutoFocusController:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    new-instance v1, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$InternalOnFocusChangeListener;

    invoke-direct {v1, p0, v2}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$InternalOnFocusChangeListener;-><init>(Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->addOnFocusChangeListener(Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$OnFocusChangeListener;)V

    .line 318
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mAutoFocusController:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    new-instance v1, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$InternalAutoFocusStrategy;

    invoke-direct {v1, p0, v2}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$InternalAutoFocusStrategy;-><init>(Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->setAutoFocusStrategy(Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$AutoFocusStrategy;)V

    .line 319
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mAutoFocusController:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->attachView(Landroid/support/v7/widget/RecyclerView;)V

    .line 320
    return-void
.end method

.method private startAutoFocusAfterLayoutIfNeeded(Z)V
    .registers 4
    .param p1, "initialFocus"    # Z

    .prologue
    .line 526
    invoke-direct {p0}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->isFeedLoaded()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 527
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mAutoFocusController:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->start(Z)V

    .line 536
    :goto_b
    return-void

    .line 529
    :cond_c
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$5;

    invoke-direct {v1, p0, p1}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$5;-><init>(Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;Z)V

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/UIUtil;->runAfterLayout(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_b
.end method

.method private startAutoFocusIfNeeded(Z)V
    .registers 5
    .param p1, "initialFocus"    # Z

    .prologue
    const/4 v2, -0x1

    .line 539
    invoke-virtual {p0}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/VideoSettings;->isInAutoplayMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mAutoFocusController:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->isStarted()Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-direct {p0}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->isFeedLoaded()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 540
    iget v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mFocusedAdapterPosition:I

    if-eq v0, v2, :cond_26

    .line 541
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mAutoFocusController:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    iget v1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mFocusedAdapterPosition:I

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->requestFocus(I)Z

    .line 542
    iput v2, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mFocusedAdapterPosition:I

    .line 544
    :cond_26
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mAutoFocusController:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->start(Z)V

    .line 546
    :cond_2b
    return-void
.end method

.method private startPlaybackInternal(Lcom/buzzfeed/buffet/ui/holder/VideoCard;Ljava/lang/String;)V
    .registers 5
    .param p1, "videoCard"    # Lcom/buzzfeed/buffet/ui/holder/VideoCard;
    .param p2, "contentUri"    # Ljava/lang/String;

    .prologue
    .line 806
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-static {p2}, Lcom/buzzfeed/android/vcr/model/VideoType;->inferContentType(Ljava/lang/String;)Lcom/buzzfeed/android/vcr/model/VideoType;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->setContent(Ljava/lang/String;Lcom/buzzfeed/android/vcr/model/VideoType;)V

    .line 807
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {p1}, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->getTextureView()Landroid/view/TextureView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->setTargetView(Landroid/view/View;)V

    .line 808
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_30

    .line 809
    sget-object v0, Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;->PREPARING:Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;

    invoke-virtual {p1, v0}, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->applyUiState(Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;)V

    .line 810
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->play()V

    .line 814
    :goto_24
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->setAudioMuted(Z)V

    .line 815
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mVideoCardStateHandler:Lcom/buzzfeed/buffet/ui/listener/VideoCardStateHandler;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/buffet/ui/listener/VideoCardStateHandler;->setTargetVideoCard(Lcom/buzzfeed/buffet/ui/holder/VideoCard;)V

    .line 816
    return-void

    .line 812
    :cond_30
    sget-object v0, Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;->PLAYING:Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;

    invoke-virtual {p1, v0}, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->applyUiState(Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;)V

    goto :goto_24
.end method

.method private toggleSubscriptionStatus()V
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 731
    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowSubscriptionStorage:Lcom/buzzfeed/showx/showpage/data/ShowSubscriptionStorage;

    iget-object v2, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/buzzfeed/showx/showpage/data/ShowSubscriptionStorage;->isSubscribedToShow(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 732
    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowSubscriptionStorage:Lcom/buzzfeed/showx/showpage/data/ShowSubscriptionStorage;

    iget-object v2, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/buzzfeed/showx/showpage/data/ShowSubscriptionStorage;->unsubscribeFromShow(Ljava/lang/String;)V

    .line 733
    sget v1, Lcom/buzzfeed/showx/R$string;->show_subscriptions_disable_notifications_snackbar:I

    invoke-virtual {p0, v1}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowTitle:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 740
    .local v0, "snackbar":Ljava/lang/String;
    :goto_23
    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowPageTracker:Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;

    iget-object v2, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowId:Ljava/lang/String;

    iget-object v3, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowSubscriptionStorage:Lcom/buzzfeed/showx/showpage/data/ShowSubscriptionStorage;

    iget-object v4, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/buzzfeed/showx/showpage/data/ShowSubscriptionStorage;->isSubscribedToShow(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;->trackTapSubscribeButton(Ljava/lang/String;Z)V

    .line 741
    const-string v1, "BaseShowPageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting show subscription status for show: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowSubscriptionStorage:Lcom/buzzfeed/showx/showpage/data/ShowSubscriptionStorage;

    iget-object v4, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/buzzfeed/showx/showpage/data/ShowSubscriptionStorage;->isSubscribedToShow(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    invoke-virtual {p0}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_74

    .line 743
    invoke-virtual {p0}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar;->show()V

    .line 745
    :cond_74
    return-void

    .line 736
    .end local v0    # "snackbar":Ljava/lang/String;
    :cond_75
    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowSubscriptionStorage:Lcom/buzzfeed/showx/showpage/data/ShowSubscriptionStorage;

    iget-object v2, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/buzzfeed/showx/showpage/data/ShowSubscriptionStorage;->subscribeToShow(Ljava/lang/String;)V

    .line 737
    sget v1, Lcom/buzzfeed/showx/R$string;->show_subscriptions_enable_notifications_snackbar:I

    invoke-virtual {p0, v1}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowTitle:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "snackbar":Ljava/lang/String;
    goto :goto_23
.end method

.method private trackPage()V
    .registers 3

    .prologue
    .line 652
    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mCurrentShowPage:Lcom/buzzfeed/showx/showpage/data/model/ShowPage;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mCurrentShowPage:Lcom/buzzfeed/showx/showpage/data/model/ShowPage;

    iget v0, v1, Lcom/buzzfeed/showx/showpage/data/model/ShowPage;->pageNumber:I

    .line 653
    .local v0, "currentPage":I
    :goto_8
    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowPageTracker:Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;

    invoke-virtual {v1, v0}, Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;->trackPageView(I)V

    .line 654
    return-void

    .line 652
    .end local v0    # "currentPage":I
    :cond_e
    const/4 v0, 0x1

    goto :goto_8
.end method

.method private trackPageLoadIfNeeded(Lcom/buzzfeed/showx/showpage/data/model/ShowPage;)V
    .registers 4
    .param p1, "page"    # Lcom/buzzfeed/showx/showpage/data/model/ShowPage;

    .prologue
    .line 638
    if-nez p1, :cond_3

    .line 649
    :cond_2
    :goto_2
    return-void

    .line 642
    :cond_3
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mCurrentShowPage:Lcom/buzzfeed/showx/showpage/data/model/ShowPage;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mCurrentShowPage:Lcom/buzzfeed/showx/showpage/data/model/ShowPage;

    iget v0, v0, Lcom/buzzfeed/showx/showpage/data/model/ShowPage;->pageNumber:I

    iget v1, p1, Lcom/buzzfeed/showx/showpage/data/model/ShowPage;->pageNumber:I

    if-eq v0, v1, :cond_2

    .line 643
    :cond_f
    iput-object p1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mCurrentShowPage:Lcom/buzzfeed/showx/showpage/data/model/ShowPage;

    .line 645
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mCurrentShowPage:Lcom/buzzfeed/showx/showpage/data/model/ShowPage;

    iget v0, v0, Lcom/buzzfeed/showx/showpage/data/model/ShowPage;->pageNumber:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 646
    invoke-direct {p0}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->trackPage()V

    goto :goto_2
.end method

.method private updateToolbarTitleIfNecessary(Lcom/buzzfeed/showx/showpage/data/model/ShowPage;)V
    .registers 4
    .param p1, "page"    # Lcom/buzzfeed/showx/showpage/data/model/ShowPage;

    .prologue
    .line 631
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p1, Lcom/buzzfeed/showx/showpage/data/model/ShowPage;->show:Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;

    if-eqz v0, :cond_27

    iget-object v0, p1, Lcom/buzzfeed/showx/showpage/data/model/ShowPage;->show:Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 632
    iget-object v0, p1, Lcom/buzzfeed/showx/showpage/data/model/ShowPage;->show:Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowTitle:Ljava/lang/String;

    .line 633
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mToolbar:Lcom/buzzfeed/showx/showpage/ui/view/ShowPageToolbar;

    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowTitle:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->configureToolbar(Landroid/support/v7/widget/Toolbar;Ljava/lang/String;)V

    .line 635
    :cond_27
    return-void
.end method


# virtual methods
.method public appendItems(Ljava/util/List;)V
    .registers 4
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/content/FlowItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 578
    .local p1, "flowItemList":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/toolkit/content/FlowItem;>;"
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mAdapter:Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;

    const-string v1, "Adapter must not be null."

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/EZUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 579
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mAdapter:Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;->appendItems(Ljava/util/List;)V

    .line 580
    return-void
.end method

.method protected clearRestoreFocusPosition()V
    .registers 2

    .prologue
    .line 831
    const/4 v0, -0x1

    iput v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mFocusedAdapterPosition:I

    .line 832
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mNeedsPlayOnResume:Z

    .line 833
    return-void
.end method

.method protected configureRecyclerView()V
    .registers 7

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/buzzfeed/showx/R$dimen;->buffet_gutter:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 308
    .local v0, "gutter":I
    invoke-virtual {p0}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/buzzfeed/showx/R$dimen;->buffet_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 309
    .local v1, "margin":I
    invoke-direct {p0}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->calculateTopHeaderClearance()I

    move-result v2

    .line 310
    .local v2, "topPadding":I
    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 311
    iget-object v3, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 312
    iget-object v3, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v4, Lcom/buzzfeed/toolkit/ui/itemdecoration/SpacingItemDecoration;

    const/4 v5, 0x1

    invoke-direct {v4, v0, v1, v2, v5}, Lcom/buzzfeed/toolkit/ui/itemdecoration/SpacingItemDecoration;-><init>(IIIZ)V

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 313
    return-void
.end method

.method protected configureToolbar(Landroid/support/v7/widget/Toolbar;Ljava/lang/String;)V
    .registers 4
    .param p1, "toolbar"    # Landroid/support/v7/widget/Toolbar;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 354
    if-nez p1, :cond_3

    .line 367
    .end local p2    # "title":Ljava/lang/String;
    :goto_2
    return-void

    .line 358
    .restart local p2    # "title":Ljava/lang/String;
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .end local p2    # "title":Ljava/lang/String;
    :goto_9
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 359
    invoke-virtual {p0}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 361
    new-instance v0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$2;

    invoke-direct {v0, p0}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$2;-><init>(Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 358
    .restart local p2    # "title":Ljava/lang/String;
    :cond_1e
    sget v0, Lcom/buzzfeed/showx/R$string;->showpage_toolbar_title_default:I

    invoke-virtual {p0, v0}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_9
.end method

.method public getPlayer()Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;
    .registers 2

    .prologue
    .line 610
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    return-object v0
.end method

.method public getPresenter()Lcom/buzzfeed/showx/showpage/ShowPagePresenter;
    .registers 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowPagePresenter:Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    return-object v0
.end method

.method public getRecyclerView()Landroid/support/v7/widget/RecyclerView;
    .registers 2

    .prologue
    .line 605
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method protected abstract isPushNotificationsEnabled()Z
.end method

.method public isSubscribedToShow()Z
    .registers 3

    .prologue
    .line 749
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowSubscriptionStorage:Lcom/buzzfeed/showx/showpage/data/ShowSubscriptionStorage;

    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/buzzfeed/showx/showpage/data/ShowSubscriptionStorage;->isSubscribedToShow(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 262
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 263
    new-instance v0, Lcom/buzzfeed/showx/showpage/data/ShowSubscriptionStorage;

    invoke-virtual {p0}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/buzzfeed/showx/showpage/data/ShowSubscriptionStorage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowSubscriptionStorage:Lcom/buzzfeed/showx/showpage/data/ShowSubscriptionStorage;

    .line 264
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowPagePresenter:Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    invoke-virtual {v0, p0}, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->attachView(Lcom/buzzfeed/showx/showpage/ShowPageContract$UpdatableView;)V

    .line 265
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowPagePresenter:Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    invoke-virtual {v0, p0}, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->setPresenterCallbacks(Lcom/buzzfeed/showx/showpage/ShowPageContract$Presenter$Callbacks;)V

    .line 266
    iget-boolean v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mNeedsVideoPlayerSetup:Z

    if-eqz v0, :cond_28

    .line 267
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-direct {p0, v0}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->onSetupVideoPlayback(Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;)Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    .line 268
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mNeedsVideoPlayerSetup:Z

    .line 270
    :cond_28
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 149
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 150
    if-eqz p1, :cond_29

    const-string v2, "KEY_TOOLBAR_STATE"

    .line 151
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    const-string v2, "KEY_TRANSLATION_OFFSET"

    .line 152
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 154
    const-string v2, "KEY_TRANSLATION_OFFSET"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mTranslationOffsetOnRestore:I

    .line 155
    const-string v2, "KEY_TOOLBAR_STATE"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "state":Ljava/lang/String;
    invoke-static {v1}, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;->valueOf(Ljava/lang/String;)Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;

    move-result-object v2

    iput-object v2, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mToolbarStateOnRestore:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;

    .line 159
    .end local v1    # "state":Ljava/lang/String;
    :cond_29
    invoke-virtual {p0}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 160
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "SELECTED_SHOW_ID"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowId:Ljava/lang/String;

    .line 161
    const-string v2, "SELECTED_SHOW_TITLE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowTitle:Ljava/lang/String;

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/list/show/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mScreenName:Ljava/lang/String;

    .line 163
    return-void
.end method

.method protected onCreateDefaultPlayer(Landroid/content/Context;)Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 254
    new-instance v0, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-direct {v0, p1}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;-><init>(Landroid/content/Context;)V

    .line 255
    .local v0, "videoPlayerPresenter":Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;
    invoke-static {}, Lcom/buzzfeed/android/vcr/VCRConfig;->getInstance()Lcom/buzzfeed/android/vcr/VCRConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/buzzfeed/android/vcr/VCRConfig;->getGlobalPositionCache()Lcom/buzzfeed/android/vcr/toolbox/PositionCache;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->setPositionCache(Lcom/buzzfeed/android/vcr/toolbox/PositionCache;)V

    .line 256
    invoke-static {}, Lcom/buzzfeed/android/vcr/VCRConfig;->getInstance()Lcom/buzzfeed/android/vcr/VCRConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/buzzfeed/android/vcr/VCRConfig;->isDebugLoggingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->setDebugLoggingEnabled(Z)V

    .line 257
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 168
    sget v3, Lcom/buzzfeed/showx/R$layout;->fragment_show_page:I

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 169
    .local v2, "rootView":Landroid/view/View;
    sget v3, Lcom/buzzfeed/showx/R$id;->show_page_swipe_refresh_layout:I

    invoke-static {v2, v3}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v3, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 170
    sget v3, Lcom/buzzfeed/showx/R$id;->show_page_footer_progress_bar:I

    invoke-static {v2, v3}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mFooterProgressBar:Landroid/widget/ProgressBar;

    .line 171
    sget v3, Lcom/buzzfeed/showx/R$id;->show_page_cover:I

    invoke-static {v2, v3}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mCoverImageView:Landroid/widget/ImageView;

    .line 172
    sget v3, Lcom/buzzfeed/showx/R$id;->show_page_recyclerView:I

    invoke-static {v2, v3}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    iput-object v3, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 173
    sget v3, Lcom/buzzfeed/showx/R$id;->share_button:I

    invoke-static {v2, v3}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/FloatingActionButton;

    iput-object v3, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShareFab:Landroid/support/design/widget/FloatingActionButton;

    .line 174
    sget v3, Lcom/buzzfeed/showx/R$id;->download_app_view:I

    invoke-static {v2, v3}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/buzzfeed/showx/showpage/ui/view/InstallAppView;

    iput-object v3, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mInstallAppView:Lcom/buzzfeed/showx/showpage/ui/view/InstallAppView;

    .line 176
    iget-object v3, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    if-nez v3, :cond_56

    .line 177
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->onCreateDefaultPlayer(Landroid/content/Context;)Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    move-result-object v3

    iput-object v3, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    .line 178
    iget-object v3, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-direct {p0, v3}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->onSetupVideoPlayback(Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;)Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    .line 181
    :cond_56
    invoke-direct {p0}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->setupAutoPlay()V

    .line 183
    invoke-virtual {p0}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mFooterProgressBar:Landroid/widget/ProgressBar;

    sget v5, Lcom/buzzfeed/showx/R$color;->buzzfeed_blue:I

    invoke-static {v3, v4, v5}, Lcom/buzzfeed/toolkit/util/UIUtil;->tintProgressBar(Landroid/content/Context;Landroid/widget/ProgressBar;I)V

    .line 185
    sget v3, Lcom/buzzfeed/showx/R$id;->show_page_appbar:I

    invoke-static {v2, v3}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayout;

    .line 186
    .local v0, "appBarLayout":Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayout;
    sget v3, Lcom/buzzfeed/showx/R$id;->toolbar:I

    invoke-static {v2, v3}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/buzzfeed/showx/showpage/ui/view/ShowPageToolbar;

    iput-object v3, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mToolbar:Lcom/buzzfeed/showx/showpage/ui/view/ShowPageToolbar;

    .line 187
    sget v3, Lcom/buzzfeed/showx/R$id;->show_page_header_overlay:I

    invoke-static {v2, v3}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 194
    .local v1, "headerOverlay":Landroid/view/View;
    invoke-virtual {p0}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->configureRecyclerView()V

    .line 195
    invoke-direct {p0}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->configureSwipeRefreshLayout()V

    .line 196
    invoke-direct {p0}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->configureFab()V

    .line 197
    invoke-direct {p0, v2}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->configureInstallAppView(Landroid/view/View;)V

    .line 198
    iget-object v3, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mToolbar:Lcom/buzzfeed/showx/showpage/ui/view/ShowPageToolbar;

    iget-object v4, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowTitle:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->configureToolbar(Landroid/support/v7/widget/Toolbar;Ljava/lang/String;)V

    .line 200
    new-instance v3, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;

    iget-object v4, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mToolbar:Lcom/buzzfeed/showx/showpage/ui/view/ShowPageToolbar;

    invoke-direct {v3, v4, v0, v1}, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;-><init>(Lcom/buzzfeed/showx/showpage/ui/view/ShowPageToolbar;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;)V

    iput-object v3, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mHeaderAnimationHelper:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;

    .line 201
    new-instance v3, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;

    invoke-direct {v3}, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;-><init>()V

    iput-object v3, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mAppBarLayoutController:Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;

    .line 202
    iget-object v3, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mAppBarLayoutController:Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;

    iget-object v4, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v3, v4, v5, v0}, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->attachView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/LinearLayoutManager;Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayout;)V

    .line 203
    invoke-static {}, Lcom/buzzfeed/analytics/client/VideoTracker;->getInstance()Lcom/buzzfeed/analytics/client/VideoTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mVideoEventTracker:Lcom/buzzfeed/analytics/client/VideoTracker;

    .line 204
    new-instance v3, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$UnitImpressionRecorder;

    iget-object v4, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {v3, p0, v4}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$UnitImpressionRecorder;-><init>(Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;Landroid/support/v7/widget/RecyclerView;)V

    iput-object v3, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mUnitImpressionRecorder:Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$UnitImpressionRecorder;

    .line 206
    invoke-direct {p0, v2}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->restoreToolBarStateIfNeeded(Landroid/view/View;)V

    .line 208
    return-object v2
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 521
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowPageTracker:Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;

    .line 522
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 523
    return-void
.end method

.method public onDestroyView()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 488
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 489
    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mCoverImageView:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->clear(Landroid/view/View;)V

    .line 491
    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mToolbarStateOnRestore:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;

    if-nez v1, :cond_15

    .line 492
    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mHeaderAnimationHelper:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;

    invoke-virtual {v1}, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->getToolbarState()Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;

    move-result-object v1

    iput-object v1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mToolbarStateOnRestore:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;

    .line 494
    :cond_15
    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mHeaderAnimationHelper:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;

    invoke-virtual {v1}, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->detach()V

    .line 496
    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mAutoFocusController:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    invoke-virtual {v1}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->getCurrentViewHolder()Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 497
    .local v0, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_2d

    iget v1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mFocusedAdapterPosition:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2d

    .line 498
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    iput v1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mFocusedAdapterPosition:I

    .line 500
    :cond_2d
    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mAutoFocusController:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    invoke-virtual {v1}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->detachView()V

    .line 501
    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowPagePresenter:Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    if-eqz v1, :cond_40

    .line 502
    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowPagePresenter:Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    invoke-virtual {v1}, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->detachView()V

    .line 503
    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowPagePresenter:Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    invoke-virtual {v1, v3}, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->setPresenterCallbacks(Lcom/buzzfeed/showx/showpage/ShowPageContract$Presenter$Callbacks;)V

    .line 505
    :cond_40
    iput-object v3, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mHeaderAnimationHelper:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;

    .line 506
    iget v1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mTranslationOffsetOnRestore:I

    if-nez v1, :cond_4e

    .line 507
    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mAppBarLayoutController:Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->getTranslationOffset()I

    move-result v1

    iput v1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mTranslationOffsetOnRestore:I

    .line 509
    :cond_4e
    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mAppBarLayoutController:Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->detachView()V

    .line 510
    iput-object v3, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mAppBarLayoutController:Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;

    .line 511
    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 512
    iput-object v3, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 513
    iput-object v3, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 514
    iput-object v3, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mAdapter:Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;

    .line 515
    iput-object v3, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mCoverImageView:Landroid/widget/ImageView;

    .line 516
    iput-object v3, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mUnitImpressionRecorder:Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$UnitImpressionRecorder;

    .line 517
    return-void
.end method

.method public onGetRecipeClicked(Ljava/lang/String;)V
    .registers 2
    .param p1, "contentUri"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 664
    return-void
.end method

.method public abstract onInstantAppInstall()V
.end method

.method protected onNetworkChange(Landroid/net/NetworkInfo;)V
    .registers 3
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 681
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowPagePresenter:Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    if-eqz v0, :cond_9

    .line 682
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowPagePresenter:Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    invoke-virtual {v0}, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->handleConnectivityChange()V

    .line 684
    :cond_9
    return-void
.end method

.method public onPause()V
    .registers 4

    .prologue
    .line 457
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mAutoFocusController:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->stop()V

    .line 458
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    if-eqz v0, :cond_30

    .line 459
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    .line 460
    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->isReadyToPlay()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 461
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getScrollState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_25

    .line 462
    :cond_22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mNeedsPlayOnResume:Z

    .line 464
    :cond_25
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->setTargetView(Landroid/view/View;)V

    .line 465
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->release()V

    .line 467
    :cond_30
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowPageTracker:Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;

    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowId:Ljava/lang/String;

    iget-object v2, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mUnitImpressionRecorder:Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$UnitImpressionRecorder;

    invoke-virtual {v2}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$UnitImpressionRecorder;->getUnitImpressionCollection()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;->trackUnitImpressions(Ljava/lang/String;Ljava/util/Collection;)V

    .line 468
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mUnitImpressionRecorder:Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$UnitImpressionRecorder;

    invoke-virtual {v0}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$UnitImpressionRecorder;->clearUnitImpressionCollection()V

    .line 469
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 470
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 438
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 439
    iget-boolean v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mNeedsPlayOnResume:Z

    .line 440
    .local v0, "initialFocus":Z
    invoke-direct {p0, v0}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->startAutoFocusAfterLayoutIfNeeded(Z)V

    .line 441
    iget-object v2, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    if-eqz v2, :cond_2b

    .line 442
    iget-object v2, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mAutoFocusController:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    invoke-virtual {v2}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->getCurrentViewHolder()Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/buffet/ui/holder/VideoCard;

    .line 443
    .local v1, "videoCard":Lcom/buzzfeed/buffet/ui/holder/VideoCard;
    if-eqz v1, :cond_1f

    .line 444
    iget-object v2, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v1}, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->getTextureView()Landroid/view/TextureView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->setTargetView(Landroid/view/View;)V

    .line 446
    :cond_1f
    iget-boolean v2, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mNeedsPlayOnResume:Z

    if-eqz v2, :cond_2b

    .line 447
    iget-object v2, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v2}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->play()V

    .line 448
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mNeedsPlayOnResume:Z

    .line 451
    .end local v1    # "videoCard":Lcom/buzzfeed/buffet/ui/holder/VideoCard;
    :cond_2b
    iget-object v2, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mUnitImpressionRecorder:Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$UnitImpressionRecorder;

    invoke-virtual {v2}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$UnitImpressionRecorder;->recordAttachedViews()V

    .line 452
    invoke-direct {p0}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->trackPage()V

    .line 453
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 213
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 214
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mAppBarLayoutController:Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;

    if-eqz v0, :cond_f

    .line 215
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mAppBarLayoutController:Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->getTranslationOffset()I

    move-result v0

    iput v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mTranslationOffsetOnRestore:I

    .line 217
    :cond_f
    iget v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mTranslationOffsetOnRestore:I

    if-eqz v0, :cond_1a

    .line 218
    const-string v0, "KEY_TRANSLATION_OFFSET"

    iget v1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mTranslationOffsetOnRestore:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 220
    :cond_1a
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mHeaderAnimationHelper:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;

    if-eqz v0, :cond_26

    .line 221
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mHeaderAnimationHelper:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;

    invoke-virtual {v0}, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->getToolbarState()Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mToolbarStateOnRestore:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;

    .line 223
    :cond_26
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mToolbarStateOnRestore:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;

    if-eqz v0, :cond_35

    .line 224
    const-string v0, "KEY_TOOLBAR_STATE"

    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mToolbarStateOnRestore:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;

    invoke-virtual {v1}, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_35
    return-void
.end method

.method public onShareClicked(Lcom/buzzfeed/toolkit/content/FlowItem;I)V
    .registers 3
    .param p1, "flowItem"    # Lcom/buzzfeed/toolkit/content/FlowItem;
    .param p2, "positionInFeed"    # I

    .prologue
    .line 659
    return-void
.end method

.method public onShowPageLoaded(Lcom/buzzfeed/showx/showpage/data/model/ShowPage;)V
    .registers 4
    .param p1, "page"    # Lcom/buzzfeed/showx/showpage/data/model/ShowPage;

    .prologue
    .line 615
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mCurrentShowPage:Lcom/buzzfeed/showx/showpage/data/model/ShowPage;

    if-nez v0, :cond_a

    .line 620
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mAppBarLayoutController:Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->setTranslationOffset(I)V

    .line 622
    :cond_a
    invoke-direct {p0, p1}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->updateToolbarTitleIfNecessary(Lcom/buzzfeed/showx/showpage/data/model/ShowPage;)V

    .line 623
    invoke-direct {p0, p1}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->trackPageLoadIfNeeded(Lcom/buzzfeed/showx/showpage/data/model/ShowPage;)V

    .line 624
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->startAutoFocusIfNeeded(Z)V

    .line 625
    return-void
.end method

.method public onStart()V
    .registers 5

    .prologue
    .line 474
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 475
    invoke-virtual {p0}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mNetworkChangeReceiver:Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$NetworkChangeReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 476
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowPageTracker:Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;

    invoke-virtual {v0}, Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;->attachMediaComponents()V

    .line 477
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 481
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 482
    invoke-virtual {p0}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mNetworkChangeReceiver:Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$NetworkChangeReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 483
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowPageTracker:Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;

    invoke-virtual {v0}, Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;->detachMediaComponents()V

    .line 484
    return-void
.end method

.method public onSubscribeButtonClicked()V
    .registers 3

    .prologue
    .line 692
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowSubscriptionStorage:Lcom/buzzfeed/showx/showpage/data/ShowSubscriptionStorage;

    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/buzzfeed/showx/showpage/data/ShowSubscriptionStorage;->isSubscribedToShow(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 693
    new-instance v0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$6;

    invoke-direct {v0, p0}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$6;-><init>(Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->showDisableShowSubscriptionPrompt(Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$PushNotificationPromptCallback;)V

    .line 727
    :goto_12
    return-void

    .line 708
    :cond_13
    invoke-virtual {p0}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->isPushNotificationsEnabled()Z

    move-result v0

    if-nez v0, :cond_22

    .line 709
    new-instance v0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$7;

    invoke-direct {v0, p0}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$7;-><init>(Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->showEnablePushNotificationPrompt(Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$PushNotificationPromptCallback;)V

    goto :goto_12

    .line 724
    :cond_22
    invoke-direct {p0}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->toggleSubscriptionStatus()V

    goto :goto_12
.end method

.method protected onVideoCardFocusChanged(Lcom/buzzfeed/buffet/ui/holder/VideoCard;Z)V
    .registers 3
    .param p1, "videoCard"    # Lcom/buzzfeed/buffet/ui/holder/VideoCard;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 688
    return-void
.end method

.method public onVideoCellClicked(Lcom/buzzfeed/toolkit/content/VideoContent;Landroid/widget/ImageView;JIZ)V
    .registers 7
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/VideoContent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "thumbnail"    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "positionInVideo"    # J
    .param p5, "positionInFeed"    # I
    .param p6, "isPlaying"    # Z

    .prologue
    .line 673
    return-void
.end method

.method public setAdapter(Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;)V
    .registers 4
    .param p1, "adapter"    # Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 558
    iput-object p1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mAdapter:Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;

    .line 559
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mAdapter:Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 560
    return-void
.end method

.method public setCoverImage(Ljava/lang/String;)V
    .registers 4
    .param p1, "coverImageUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 590
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mCoverImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mCoverImageView:Landroid/widget/ImageView;

    invoke-static {v0, v1, p1}, Lcom/buzzfeed/toolkit/util/GlideUtils;->loadImageCenterCrop(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 591
    return-void
.end method

.method public setFooterProgressVisibility(Z)V
    .registers 4
    .param p1, "shown"    # Z

    .prologue
    .line 600
    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mFooterProgressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 601
    return-void

    .line 600
    :cond_9
    const/16 v0, 0x8

    goto :goto_5
.end method

.method public setHeaderProgressVisibility(Z)V
    .registers 3
    .param p1, "shown"    # Z

    .prologue
    .line 595
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 596
    return-void
.end method

.method public setPresenter(Lcom/buzzfeed/showx/showpage/ShowPagePresenter;)V
    .registers 3
    .param p1, "presenter"    # Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowPagePresenter:Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    .line 299
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowPagePresenter:Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    invoke-virtual {v0, p0}, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->setPresenterCallbacks(Lcom/buzzfeed/showx/showpage/ShowPageContract$Presenter$Callbacks;)V

    .line 300
    return-void
.end method

.method protected abstract setPushNotificationsEnabled()V
.end method

.method public setShowPageModel(Lcom/buzzfeed/showx/showpage/data/model/ShowPage;)V
    .registers 6
    .param p1, "showPageModel"    # Lcom/buzzfeed/showx/showpage/data/model/ShowPage;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 564
    iget-object v0, p1, Lcom/buzzfeed/showx/showpage/data/model/ShowPage;->flowList:Ljava/util/List;

    .line 565
    .local v0, "flowItemList":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/toolkit/content/FlowItem;>;"
    iget-object v2, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mAdapter:Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;

    const-string v3, "Adapter must not be null."

    invoke-static {v2, v3}, Lcom/buzzfeed/toolkit/util/EZUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 566
    const-string v2, "FlowList must not be null."

    invoke-static {v0, v2}, Lcom/buzzfeed/toolkit/util/EZUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 568
    iget-object v2, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mAdapter:Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;

    invoke-virtual {v2, v0}, Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;->setList(Ljava/util/List;)V

    .line 569
    iget-object v1, p1, Lcom/buzzfeed/showx/showpage/data/model/ShowPage;->show:Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;

    .line 570
    .local v1, "show":Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;
    if-eqz v1, :cond_25

    .line 571
    iget-object v2, p1, Lcom/buzzfeed/showx/showpage/data/model/ShowPage;->show:Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;

    invoke-virtual {v2}, Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;->getId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowId:Ljava/lang/String;

    .line 572
    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowTitle:Ljava/lang/String;

    .line 574
    :cond_25
    return-void
.end method

.method public setTracker(Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;)V
    .registers 2
    .param p1, "tracker"    # Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowPageTracker:Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;

    .line 274
    return-void
.end method

.method public setVideoPlayer(Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;)V
    .registers 5
    .param p1, "videoPlayerPresenter"    # Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    .prologue
    const/4 v2, 0x1

    .line 277
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    if-ne v0, p1, :cond_6

    .line 295
    :cond_5
    :goto_5
    return-void

    .line 279
    :cond_6
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    if-eqz v0, :cond_1d

    .line 280
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mKeepScreenOnHelper:Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;

    if-eqz v0, :cond_13

    .line 281
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mKeepScreenOnHelper:Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;->detachFromPresenter()V

    .line 283
    :cond_13
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mVideoCardStateHandler:Lcom/buzzfeed/buffet/ui/listener/VideoCardStateHandler;

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->removeListener(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;)V

    .line 284
    invoke-direct {p0}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->detachTrackerIfNeeded()V

    .line 286
    :cond_1d
    if-eqz p1, :cond_34

    invoke-virtual {p0}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 287
    invoke-direct {p0, p1}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->onSetupVideoPlayback(Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;)Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    .line 291
    :goto_28
    iput-object p1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    .line 292
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    if-eqz v0, :cond_5

    .line 293
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v0, v2}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->setAudioMuted(Z)V

    goto :goto_5

    .line 289
    :cond_34
    iput-boolean v2, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mNeedsVideoPlayerSetup:Z

    goto :goto_28
.end method

.method protected abstract showDisableShowSubscriptionPrompt(Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$PushNotificationPromptCallback;)V
.end method

.method protected abstract showEnablePushNotificationPrompt(Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$PushNotificationPromptCallback;)V
.end method

.method protected startPlayback(Lcom/buzzfeed/buffet/ui/holder/VideoCard;)V
    .registers 7
    .param p1, "videoCard"    # Lcom/buzzfeed/buffet/ui/holder/VideoCard;

    .prologue
    .line 792
    invoke-virtual {p1}, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->getVideoContent()Lcom/buzzfeed/toolkit/content/VideoContent;

    move-result-object v2

    .line 793
    .local v2, "videoContent":Lcom/buzzfeed/toolkit/content/VideoContent;
    invoke-static {v2}, Lcom/buzzfeed/toolkit/util/WeaverVideoUtils;->getFirstVideoFromVideoContent(Lcom/buzzfeed/toolkit/content/VideoContent;)Lcom/buzzfeed/toolkit/content/WeaverItem$Video;

    move-result-object v1

    .line 794
    .local v1, "video":Lcom/buzzfeed/toolkit/content/WeaverItem$Video;
    if-eqz v2, :cond_26

    if-eqz v1, :cond_26

    .line 795
    invoke-static {v1}, Lcom/buzzfeed/toolkit/util/WeaverVideoUtils;->getHlsVideoContentUri(Lcom/buzzfeed/toolkit/content/WeaverItem$Video;)Ljava/lang/String;

    move-result-object v0

    .line 796
    .local v0, "contentUri":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 798
    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/NetworkUtil;->convertHttpToHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 800
    :cond_1a
    invoke-direct {p0, p1, v0}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->startPlaybackInternal(Lcom/buzzfeed/buffet/ui/holder/VideoCard;Ljava/lang/String;)V

    .line 801
    iget-object v3, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowPageTracker:Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;

    invoke-virtual {p1}, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->getAdapterPosition()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;->setVideoContent(Lcom/buzzfeed/toolkit/content/VideoContent;I)V

    .line 803
    .end local v0    # "contentUri":Ljava/lang/String;
    :cond_26
    return-void
.end method

.method protected stopPlayback()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 819
    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v1}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->stop()V

    .line 820
    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    sget-object v2, Lcom/buzzfeed/android/vcr/model/VideoType;->NONE:Lcom/buzzfeed/android/vcr/model/VideoType;

    invoke-virtual {v1, v3, v2}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->setContent(Ljava/lang/String;Lcom/buzzfeed/android/vcr/model/VideoType;)V

    .line 821
    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v1, v3}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->setTargetView(Landroid/view/View;)V

    .line 822
    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mVideoCardStateHandler:Lcom/buzzfeed/buffet/ui/listener/VideoCardStateHandler;

    invoke-virtual {v1}, Lcom/buzzfeed/buffet/ui/listener/VideoCardStateHandler;->getTargetViewCard()Lcom/buzzfeed/buffet/ui/holder/VideoCard;

    move-result-object v0

    .line 823
    .local v0, "videoCard":Lcom/buzzfeed/buffet/ui/holder/VideoCard;
    if-eqz v0, :cond_24

    .line 824
    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mVideoCardStateHandler:Lcom/buzzfeed/buffet/ui/listener/VideoCardStateHandler;

    invoke-virtual {v1, v3}, Lcom/buzzfeed/buffet/ui/listener/VideoCardStateHandler;->setTargetVideoCard(Lcom/buzzfeed/buffet/ui/holder/VideoCard;)V

    .line 825
    sget-object v1, Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;->STOPPED:Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;

    invoke-virtual {v0, v1}, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->applyUiState(Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;)V

    .line 827
    :cond_24
    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowPageTracker:Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;

    invoke-virtual {v1}, Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;->notifyContentReset()V

    .line 828
    return-void
.end method

.method public toggleAutoPlay(Z)V
    .registers 3
    .param p1, "enableAutoplay"    # Z

    .prologue
    .line 754
    if-eqz p1, :cond_7

    .line 755
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->startAutoFocusIfNeeded(Z)V

    .line 759
    :goto_6
    return-void

    .line 757
    :cond_7
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mAutoFocusController:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->stop()V

    goto :goto_6
.end method

.method public updateItem(I)V
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 584
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mAdapter:Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;

    const-string v1, "Adapter must not be null."

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/EZUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 585
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mAdapter:Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;->notifyItemChanged(I)V

    .line 586
    return-void
.end method
