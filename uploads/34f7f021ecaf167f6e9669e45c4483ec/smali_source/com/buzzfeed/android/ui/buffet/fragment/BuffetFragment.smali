.class public Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;
.super Landroid/support/v4/app/Fragment;
.source "BuffetFragment.java"

# interfaces
.implements Lcom/buzzfeed/android/ui/buffet/fragment/NavigationBuffetItem;
.implements Lcom/buzzfeed/android/ui/buffet/listener/BuffetErrorListener;
.implements Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$AdHelper;,
        Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$InternalAutoFocusStrategy;,
        Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$InternalOnFocusChangeListener;
    }
.end annotation


# static fields
.field public static final KEY_FEED:Ljava/lang/String; = "KEY_FEED"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mAdHelper:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$AdHelper;

.field private mAdLoader:Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;

.field private mAdapter:Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;

.field private mAutoFocusController:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

.field protected mBuffetLoader:Lcom/buzzfeed/android/data/loader/BuffetLoader;

.field private mBuffetRecycledViewPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected mBuffetTracker:Lcom/buzzfeed/android/data/tracking/BuffetTracker;

.field protected mBuffetVideoEventTracker:Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;

.field protected mBuffetView:Lcom/buzzfeed/buffet/ui/view/BuffetView;

.field mCurrentEdition:Ljava/lang/String;

.field protected mCurrentFeed:Lcom/buzzfeed/android/data/Feed;

.field mErrorHandler:Lcom/buzzfeed/toolkit/util/PageErrorHandler;

.field protected mErrorView:Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;

.field private mKeepScreenOnHelper:Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;

.field protected mLoadingView:Landroid/view/View;

.field private mNeedFeedLoad:Z

.field private mProgressiveLoadingManager:Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;

.field protected mRefreshView:Landroid/support/v4/widget/SwipeRefreshLayout;

.field protected mShareActionListener:Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;

.field private mUnitImpressionRecorder:Lcom/buzzfeed/buffet/data/tracker/BuffetUnitImpressionRecorder;

.field protected mVideoAdLoader:Lcom/buzzfeed/ads/video/VideoAdLoader;

.field private mVideoCardStateHandler:Lcom/buzzfeed/buffet/ui/listener/VideoCardStateHandler;

.field private mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

.field protected mVideoTracker:Lcom/buzzfeed/analytics/client/VideoTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 107
    const-class v0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 106
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;)Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mAdLoader:Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;)Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mAutoFocusController:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;)Lcom/buzzfeed/buffet/ui/listener/VideoCardStateHandler;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoCardStateHandler:Lcom/buzzfeed/buffet/ui/listener/VideoCardStateHandler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;)Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->onInitialLoadFeedComplete()V

    return-void
.end method

.method static synthetic access$300(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->displayConnectionNoticeIfOffline()V

    return-void
.end method

.method static synthetic access$400(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->hideLoading()V

    return-void
.end method

.method static synthetic access$500(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;)Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mProgressiveLoadingManager:Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;ILcom/buzzfeed/toolkit/content/FlowList;)V
    .registers 3
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/buzzfeed/toolkit/content/FlowList;

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->prepareAds(ILcom/buzzfeed/toolkit/content/FlowList;)V

    return-void
.end method

.method static synthetic access$700()Ljava/lang/String;
    .registers 1

    .prologue
    .line 106
    sget-object v0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;Lcom/buzzfeed/android/data/Feed;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;
    .param p1, "x1"    # Lcom/buzzfeed/android/data/Feed;

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getScreenName(Lcom/buzzfeed/android/data/Feed;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;I)V
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;
    .param p1, "x1"    # I

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->refocusViewHolderOnUpdateIfNeeded(I)V

    return-void
.end method

.method private displayConnectionNoticeIfOffline()V
    .registers 2

    .prologue
    .line 677
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->isConnectedToNetwork()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 678
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->createErrorHandler(Landroid/view/View;)Lcom/buzzfeed/toolkit/util/PageErrorHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/util/PageErrorHandler;->onNoConnectionError()V

    .line 680
    :cond_17
    return-void
.end method

.method private getScreenName(Lcom/buzzfeed/android/data/Feed;)Ljava/lang/String;
    .registers 4
    .param p1, "feed"    # Lcom/buzzfeed/android/data/Feed;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 286
    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mCurrentEdition:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/buzzfeed/android/util/AnalyticsUtils;->buildScreenNameFromFeed(Lcom/buzzfeed/android/data/Feed;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "screen":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .end local v0    # "screen":Ljava/lang/String;
    :goto_c
    return-object v0

    .restart local v0    # "screen":Ljava/lang/String;
    :cond_d
    const-string v0, ""

    goto :goto_c
.end method

.method private handlePostContentClicked(Lcom/buzzfeed/toolkit/content/PostContent;ILandroid/view/View;Ljava/util/Stack;ZZZZ)V
    .registers 16
    .param p1, "postContent"    # Lcom/buzzfeed/toolkit/content/PostContent;
    .param p2, "position"    # I
    .param p3, "thumbnail"    # Landroid/view/View;
    .param p5, "isTallImage"    # Z
    .param p6, "isSplash"    # Z
    .param p7, "isAd"    # Z
    .param p8, "isImageLoaded"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/buzzfeed/toolkit/content/PostContent;",
            "I",
            "Landroid/view/View;",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;ZZZZ)V"
        }
    .end annotation

    .prologue
    .line 830
    .local p4, "imageStack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getUri()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 831
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetTracker:Lcom/buzzfeed/android/data/tracking/BuffetTracker;

    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mCurrentFeed:Lcom/buzzfeed/android/data/Feed;

    invoke-direct {p0, v1}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getScreenName(Lcom/buzzfeed/android/data/Feed;)Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p6

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->trackPostClicked(Ljava/lang/String;Lcom/buzzfeed/toolkit/content/PostContent;IZZ)V

    .line 833
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/buzzfeed/android/experiment/BlankHeaderABTest;->getUseFullHeader(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2c

    const/4 v6, 0x1

    .line 834
    .local v6, "isBlankHeaderTest":Z
    :goto_20
    if-eqz v6, :cond_2e

    .line 835
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mCurrentFeed:Lcom/buzzfeed/android/data/Feed;

    invoke-static {v0, p1, v1}, Lcom/buzzfeed/android/activity/BlankHeaderSpicyActivity;->startIntent(Landroid/app/Activity;Lcom/buzzfeed/toolkit/content/PostContent;Lcom/buzzfeed/android/data/Feed;)V

    .line 847
    .end local v6    # "isBlankHeaderTest":Z
    :goto_2b
    return-void

    .line 833
    :cond_2c
    const/4 v6, 0x0

    goto :goto_20

    .line 839
    .restart local v6    # "isBlankHeaderTest":Z
    :cond_2e
    if-eqz p8, :cond_3e

    .line 840
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mCurrentFeed:Lcom/buzzfeed/android/data/Feed;

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/buzzfeed/android/activity/SpicyActivity;->startIntent(Landroid/app/Activity;Lcom/buzzfeed/toolkit/content/PostContent;Lcom/buzzfeed/android/data/Feed;Landroid/view/View;Ljava/util/Stack;Z)V

    goto :goto_2b

    .line 842
    :cond_3e
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mCurrentFeed:Lcom/buzzfeed/android/data/Feed;

    invoke-static {v0, p1, v1}, Lcom/buzzfeed/android/activity/SpicyActivity;->startIntentWithoutTransition(Landroid/app/Activity;Lcom/buzzfeed/toolkit/content/PostContent;Lcom/buzzfeed/android/data/Feed;)V

    goto :goto_2b

    .line 845
    .end local v6    # "isBlankHeaderTest":Z
    :cond_48
    sget-object v0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->TAG:Ljava/lang/String;

    const-string v1, "No URI for buzz, ignoring click"

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b
.end method

.method private handleShowClicked(Lcom/buzzfeed/toolkit/content/ShowListContent;)V
    .registers 6
    .param p1, "show"    # Lcom/buzzfeed/toolkit/content/ShowListContent;

    .prologue
    .line 850
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetTracker:Lcom/buzzfeed/android/data/tracking/BuffetTracker;

    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mCurrentFeed:Lcom/buzzfeed/android/data/Feed;

    invoke-direct {p0, v1}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getScreenName(Lcom/buzzfeed/android/data/Feed;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/ShowListContent;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->trackShowIconClickedFromShowsPage(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/ShowListContent;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/ShowListContent;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/buzzfeed/android/activity/ShowPageActivity;->startIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    return-void
.end method

.method private handleVideoAdContentClicked(Lcom/buzzfeed/toolkit/content/FlowItem;I)V
    .registers 16
    .param p1, "flowItem"    # Lcom/buzzfeed/toolkit/content/FlowItem;
    .param p2, "positionInFeed"    # I

    .prologue
    .line 724
    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/content/FlowItem;->getContent()Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v12

    check-cast v12, Lcom/buzzfeed/ads/model/VideoAd;

    .line 726
    .local v12, "videoAd":Lcom/buzzfeed/ads/model/VideoAd;
    if-eqz v12, :cond_74

    invoke-virtual {v12}, Lcom/buzzfeed/ads/model/VideoAd;->isValid()Z

    move-result v1

    if-eqz v1, :cond_74

    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoAdLoader:Lcom/buzzfeed/ads/video/VideoAdLoader;

    if-eqz v1, :cond_74

    .line 727
    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoAdLoader:Lcom/buzzfeed/ads/video/VideoAdLoader;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/buzzfeed/ads/video/VideoAdLoader;->setShouldRefreshAds(Z)V

    .line 728
    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->setTargetView(Landroid/view/View;)V

    .line 730
    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mCurrentFeed:Lcom/buzzfeed/android/data/Feed;

    invoke-direct {p0, v1}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getScreenName(Lcom/buzzfeed/android/data/Feed;)Ljava/lang/String;

    move-result-object v10

    .line 731
    .local v10, "screenName":Ljava/lang/String;
    invoke-virtual {v12}, Lcom/buzzfeed/ads/model/VideoAd;->getContentUri()Ljava/lang/String;

    move-result-object v9

    .line 732
    .local v9, "contentUri":Ljava/lang/String;
    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-static {v1, v9}, Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils;->getLastKnownVideoPosition(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;Ljava/lang/String;)J

    move-result-wide v4

    .line 734
    .local v4, "positionInVideo":J
    new-instance v11, Lcom/buzzfeed/android/activity/VideoAdViewerActivity$IntentBuilder;

    invoke-direct {v11}, Lcom/buzzfeed/android/activity/VideoAdViewerActivity$IntentBuilder;-><init>()V

    .line 735
    .local v11, "intentBuilder":Lcom/buzzfeed/android/activity/VideoAdViewerActivity$IntentBuilder;
    invoke-virtual {v11, v12}, Lcom/buzzfeed/android/activity/VideoAdViewerActivity$IntentBuilder;->videoAd(Lcom/buzzfeed/ads/model/VideoAd;)Lcom/buzzfeed/android/activity/VideoAdViewerActivity$IntentBuilder;

    move-result-object v1

    .line 736
    invoke-virtual {v1, v4, v5}, Lcom/buzzfeed/android/activity/VideoAdViewerActivity$IntentBuilder;->startPosition(J)Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/android/activity/VideoAdViewerActivity$IntentBuilder;

    iget-object v2, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mCurrentFeed:Lcom/buzzfeed/android/data/Feed;

    .line 737
    invoke-direct {p0, v2}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getScreenName(Lcom/buzzfeed/android/data/Feed;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/buzzfeed/android/activity/VideoAdViewerActivity$IntentBuilder;->referrerScreen(Ljava/lang/String;)Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/android/activity/VideoAdViewerActivity$IntentBuilder;

    .line 738
    invoke-virtual {v1, p2}, Lcom/buzzfeed/android/activity/VideoAdViewerActivity$IntentBuilder;->referrerFeedPosition(I)Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/android/activity/VideoAdViewerActivity$IntentBuilder;

    const-string/jumbo v2, "tap_to_play_auto"

    .line 739
    invoke-virtual {v1, v2}, Lcom/buzzfeed/android/activity/VideoAdViewerActivity$IntentBuilder;->initialPlaybackReason(Ljava/lang/String;)Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/android/activity/VideoAdViewerActivity$IntentBuilder;

    .line 740
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/buzzfeed/android/activity/VideoAdViewerActivity$IntentBuilder;->build(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 741
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->startActivity(Landroid/content/Intent;)V

    .line 743
    invoke-virtual {v12}, Lcom/buzzfeed/ads/model/VideoAd;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Lcom/buzzfeed/ads/model/VideoAd;->getDuration()J

    move-result-wide v6

    .line 744
    invoke-virtual {v12}, Lcom/buzzfeed/ads/model/VideoAd;->getTitle()Ljava/lang/String;

    move-result-object v8

    move-object v1, p0

    move v3, p2

    .line 743
    invoke-direct/range {v1 .. v10}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->trackVideoClick(Ljava/lang/String;IJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v4    # "positionInVideo":J
    .end local v9    # "contentUri":Ljava/lang/String;
    .end local v10    # "screenName":Ljava/lang/String;
    .end local v11    # "intentBuilder":Lcom/buzzfeed/android/activity/VideoAdViewerActivity$IntentBuilder;
    :cond_74
    return-void
.end method

.method private handleVideoContentClicked(Lcom/buzzfeed/toolkit/content/VideoContent;ILandroid/view/View;)V
    .registers 24
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/VideoContent;
    .param p2, "positionInFeed"    # I
    .param p3, "thumbnail"    # Landroid/view/View;

    .prologue
    .line 749
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".handleVideoContentClicked"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 750
    .local v2, "TAG":Ljava/lang/String;
    const-string v3, "Video Content clicked "

    invoke-static {v2, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    new-instance v14, Lcom/buzzfeed/mediaviewer/VideoViewerFragmentActivity$IntentBuilder;

    invoke-direct {v14}, Lcom/buzzfeed/mediaviewer/VideoViewerFragmentActivity$IntentBuilder;-><init>()V

    .line 755
    .local v14, "intentBuilder":Lcom/buzzfeed/mediaviewer/VideoViewerFragmentActivity$IntentBuilder;
    invoke-static/range {p1 .. p1}, Lcom/buzzfeed/toolkit/util/WeaverVideoUtils;->getFirstVideoFromVideoContent(Lcom/buzzfeed/toolkit/content/VideoContent;)Lcom/buzzfeed/toolkit/content/WeaverItem$Video;

    move-result-object v19

    .line 756
    .local v19, "video":Lcom/buzzfeed/toolkit/content/WeaverItem$Video;
    invoke-static/range {v19 .. v19}, Lcom/buzzfeed/toolkit/util/WeaverVideoUtils;->getHlsVideoContentUri(Lcom/buzzfeed/toolkit/content/WeaverItem$Video;)Ljava/lang/String;

    move-result-object v11

    .line 757
    .local v11, "contentUri":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mCurrentFeed:Lcom/buzzfeed/android/data/Feed;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getScreenName(Lcom/buzzfeed/android/data/Feed;)Ljava/lang/String;

    move-result-object v12

    .line 759
    .local v12, "screenName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-static {v3, v11}, Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils;->getLastKnownVideoPosition(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;Ljava/lang/String;)J

    move-result-wide v6

    .line 761
    .local v6, "positionInVideo":J
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/buzzfeed/mediaviewer/VideoViewerFragmentActivity$IntentBuilder;->videoContent(Lcom/buzzfeed/toolkit/content/VideoContent;)Lcom/buzzfeed/mediaviewer/VideoViewerFragmentActivity$IntentBuilder;

    move-result-object v3

    .line 762
    invoke-virtual {v3, v11}, Lcom/buzzfeed/mediaviewer/VideoViewerFragmentActivity$IntentBuilder;->contentUri(Ljava/lang/String;)Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;

    move-result-object v3

    .line 763
    invoke-virtual {v3, v6, v7}, Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;->startPosition(J)Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;

    move-result-object v3

    .line 764
    move/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;->referrerFeedPosition(I)Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;

    move-result-object v3

    .line 765
    invoke-virtual {v3, v12}, Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;->referrerScreen(Ljava/lang/String;)Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;

    move-result-object v3

    const-string/jumbo v4, "tap_to_play_auto"

    .line 766
    invoke-virtual {v3, v4}, Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;->initialPlaybackReason(Ljava/lang/String;)Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;

    .line 769
    invoke-interface/range {p1 .. p1}, Lcom/buzzfeed/toolkit/content/VideoContent;->getShow()Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;

    move-result-object v3

    if-eqz v3, :cond_80

    .line 770
    invoke-interface/range {p1 .. p1}, Lcom/buzzfeed/toolkit/content/VideoContent;->getShow()Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;

    move-result-object v17

    .line 771
    .local v17, "show":Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;
    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Lcom/buzzfeed/android/activity/ShowPageActivity;->getIntent(Landroid/content/Context;Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;)Landroid/content/Intent;

    move-result-object v18

    .line 772
    .local v18, "showClickIntent":Landroid/content/Intent;
    invoke-virtual/range {v17 .. v17}, Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/buzzfeed/mediaviewer/VideoViewerFragmentActivity$IntentBuilder;->showId(Ljava/lang/String;)Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;

    move-result-object v3

    .line 773
    invoke-virtual/range {v17 .. v17}, Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;->avatarUrl(Ljava/lang/String;)Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;

    move-result-object v3

    .line 774
    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;->showClickIntent(Landroid/content/Intent;)Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;

    .line 778
    .end local v17    # "show":Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;
    .end local v18    # "showClickIntent":Landroid/content/Intent;
    :cond_80
    invoke-interface/range {p1 .. p1}, Lcom/buzzfeed/toolkit/content/VideoContent;->getSourceUri()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a6

    invoke-interface/range {p1 .. p1}, Lcom/buzzfeed/toolkit/content/VideoContent;->getShow()Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;

    move-result-object v3

    invoke-static {v3}, Lcom/buzzfeed/toolkit/util/WeaverVideoUtils;->hasTastySpecificShowContent(Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;)Z

    move-result v3

    if-eqz v3, :cond_a6

    .line 779
    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lcom/buzzfeed/toolkit/content/VideoContent;->getSourceUri()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/buzzfeed/android/activity/SpicyActivity;->getDeepLinkIntent(Landroid/app/Activity;Ljava/lang/String;Lcom/buzzfeed/android/data/Feed;)Landroid/content/Intent;

    move-result-object v16

    .line 780
    .local v16, "recipeClickIntent":Landroid/content/Intent;
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/buzzfeed/mediaviewer/VideoViewerFragmentActivity$IntentBuilder;->recipeClickIntent(Landroid/content/Intent;)Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;

    .line 784
    .end local v16    # "recipeClickIntent":Landroid/content/Intent;
    :cond_a6
    invoke-static {}, Lcom/buzzfeed/toolkit/util/VersionUtil;->hasLollipop()Z

    move-result v3

    if-eqz v3, :cond_e4

    .line 785
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Lcom/buzzfeed/mediaviewer/VideoViewerFragmentActivity$IntentBuilder;->withSharedElementCoverImage(Landroid/view/View;)Lcom/buzzfeed/mediaviewer/VideoViewerFragmentActivity$IntentBuilder;

    .line 787
    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 789
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v4

    .line 786
    move-object/from16 v0, p3

    invoke-static {v3, v0, v4}, Landroid/support/v4/app/ActivityOptionsCompat;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/support/v4/app/ActivityOptionsCompat;

    move-result-object v15

    .line 790
    .local v15, "optionsCompat":Landroid/support/v4/app/ActivityOptionsCompat;
    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/buzzfeed/mediaviewer/VideoViewerFragmentActivity$IntentBuilder;->build(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v13

    .line 791
    .local v13, "intent":Landroid/content/Intent;
    invoke-virtual {v15}, Landroid/support/v4/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v3}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 796
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v15    # "optionsCompat":Landroid/support/v4/app/ActivityOptionsCompat;
    :goto_d0
    invoke-interface/range {p1 .. p1}, Lcom/buzzfeed/toolkit/content/VideoContent;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Lcom/buzzfeed/toolkit/content/WeaverItem$Video;->getDuration()J

    move-result-wide v8

    .line 797
    invoke-interface/range {p1 .. p1}, Lcom/buzzfeed/toolkit/content/VideoContent;->getTitle()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v3, p0

    move/from16 v5, p2

    .line 796
    invoke-direct/range {v3 .. v12}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->trackVideoClick(Ljava/lang/String;IJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    return-void

    .line 793
    :cond_e4
    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/buzzfeed/mediaviewer/VideoViewerFragmentActivity$IntentBuilder;->build(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_d0
.end method

.method private hasNetworkErrorOccurred()Z
    .registers 2

    .prologue
    .line 438
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mErrorHandler:Lcom/buzzfeed/toolkit/util/PageErrorHandler;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mErrorHandler:Lcom/buzzfeed/toolkit/util/PageErrorHandler;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/util/PageErrorHandler;->hasErrorOccurred()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private hideLoading()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 472
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mLoadingView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 473
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mRefreshView:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 474
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetView:Lcom/buzzfeed/buffet/ui/view/BuffetView;

    invoke-virtual {v0, v2}, Lcom/buzzfeed/buffet/ui/view/BuffetView;->setSpinnerVisible(Z)V

    .line 475
    return-void
.end method

.method private initBuffetLoader()V
    .registers 5

    .prologue
    .line 523
    new-instance v1, Lcom/buzzfeed/android/data/loader/BuffetLoader;

    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mCurrentFeed:Lcom/buzzfeed/android/data/Feed;

    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/buzzfeed/android/experiment/NewsPackageABTest;->shouldShowNewsPackages(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    :goto_17
    invoke-direct {v1, v2, v3, v0}, Lcom/buzzfeed/android/data/loader/BuffetLoader;-><init>(Landroid/content/Context;Lcom/buzzfeed/android/data/Feed;Z)V

    iput-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetLoader:Lcom/buzzfeed/android/data/loader/BuffetLoader;

    .line 524
    return-void

    .line 523
    :cond_1d
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private isFeedLoaded()Z
    .registers 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetLoader:Lcom/buzzfeed/android/data/loader/BuffetLoader;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetLoader:Lcom/buzzfeed/android/data/loader/BuffetLoader;

    .line 463
    invoke-virtual {v0}, Lcom/buzzfeed/android/data/loader/BuffetLoader;->getFlowList()Lcom/buzzfeed/toolkit/content/FlowList;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetLoader:Lcom/buzzfeed/android/data/loader/BuffetLoader;

    .line 464
    invoke-virtual {v0}, Lcom/buzzfeed/android/data/loader/BuffetLoader;->getFlowList()Lcom/buzzfeed/toolkit/content/FlowList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/content/FlowList;->size()I

    move-result v0

    if-lez v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private loadFeedAfterRefresh(Z)V
    .registers 4
    .param p1, "currentFeedWasRefreshed"    # Z

    .prologue
    .line 543
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 544
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->initBuffetLoader()V

    .line 545
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mAutoFocusController:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->stop()V

    .line 546
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetLoader:Lcom/buzzfeed/android/data/loader/BuffetLoader;

    new-instance v1, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$3;-><init>(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;Z)V

    invoke-virtual {v0, v1, p1}, Lcom/buzzfeed/android/data/loader/BuffetLoader;->loadNextPage(Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;Z)V

    .line 574
    :cond_18
    return-void
.end method

.method private loadFeedIfNeeded()V
    .registers 2

    .prologue
    .line 508
    iget-boolean v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mNeedFeedLoad:Z

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 509
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mNeedFeedLoad:Z

    .line 510
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mErrorHandler:Lcom/buzzfeed/toolkit/util/PageErrorHandler;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mErrorHandler:Lcom/buzzfeed/toolkit/util/PageErrorHandler;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/util/PageErrorHandler;->hasErrorOccurred()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 511
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mErrorHandler:Lcom/buzzfeed/toolkit/util/PageErrorHandler;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/util/PageErrorHandler;->dismissSnackbarIfVisible()V

    .line 513
    :cond_1e
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->showLoading()V

    .line 514
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->loadFeed()V

    .line 515
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 516
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->trackScreenView()V

    .line 518
    :cond_2d
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mAdHelper:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$AdHelper;

    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$AdHelper;->reset()V

    .line 520
    :cond_32
    return-void
.end method

.method public static newInstance(Lcom/buzzfeed/android/data/Feed;)Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;
    .registers 4
    .param p0, "feed"    # Lcom/buzzfeed/android/data/Feed;

    .prologue
    .line 151
    new-instance v1, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    invoke-direct {v1}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;-><init>()V

    .line 152
    .local v1, "fragment":Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 153
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "KEY_FEED"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 154
    invoke-virtual {v1, v0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->setArguments(Landroid/os/Bundle;)V

    .line 155
    return-object v1
.end method

.method private onInitialLoadFeedComplete()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 600
    invoke-static {}, Lcom/buzzfeed/android/experiment/DummyABTest;->shouldDoSomething()Z

    .line 602
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 603
    .local v0, "context":Landroid/content/Context;
    new-instance v2, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;

    iget-object v3, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mCurrentFeed:Lcom/buzzfeed/android/data/Feed;

    .line 604
    invoke-virtual {v3}, Lcom/buzzfeed/android/data/Feed;->getAdTag()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mCurrentEdition:Ljava/lang/String;

    const v5, 0x7a8f2

    .line 606
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mAdLoader:Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;

    .line 608
    iget-object v2, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mRefreshView:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v2, v6}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 609
    iget-object v2, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetLoader:Lcom/buzzfeed/android/data/loader/BuffetLoader;

    invoke-virtual {v2}, Lcom/buzzfeed/android/data/loader/BuffetLoader;->getFlowList()Lcom/buzzfeed/toolkit/content/FlowList;

    move-result-object v1

    .line 610
    .local v1, "flowList":Lcom/buzzfeed/toolkit/content/FlowList;
    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/content/FlowList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_47

    .line 611
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->showBuffet()V

    .line 612
    invoke-direct {p0, v6, v1}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->prepareAds(ILcom/buzzfeed/toolkit/content/FlowList;)V

    .line 613
    iget-object v2, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetView:Lcom/buzzfeed/buffet/ui/view/BuffetView;

    invoke-virtual {v2, v1}, Lcom/buzzfeed/buffet/ui/view/BuffetView;->setList(Ljava/util/List;)V

    .line 614
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->startAutoFocusControllerIfNeeded()V

    .line 618
    :goto_41
    iget-object v2, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetView:Lcom/buzzfeed/buffet/ui/view/BuffetView;

    invoke-virtual {v2, v6}, Lcom/buzzfeed/buffet/ui/view/BuffetView;->setSpinnerVisible(Z)V

    .line 619
    return-void

    .line 616
    :cond_47
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->showError()V

    goto :goto_41
.end method

.method private prepareAds(ILcom/buzzfeed/toolkit/content/FlowList;)V
    .registers 4
    .param p1, "numBuffetItems"    # I
    .param p2, "flowList"    # Lcom/buzzfeed/toolkit/content/FlowList;

    .prologue
    .line 623
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mCurrentFeed:Lcom/buzzfeed/android/data/Feed;

    invoke-static {v0}, Lcom/buzzfeed/android/util/FeedUtils;->isHomeFeed(Lcom/buzzfeed/android/data/Feed;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoAdLoader:Lcom/buzzfeed/ads/video/VideoAdLoader;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoAdLoader:Lcom/buzzfeed/ads/video/VideoAdLoader;

    .line 625
    invoke-virtual {v0}, Lcom/buzzfeed/ads/video/VideoAdLoader;->shouldRefreshAds()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 626
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoAdLoader:Lcom/buzzfeed/ads/video/VideoAdLoader;

    invoke-virtual {v0, p2}, Lcom/buzzfeed/ads/video/VideoAdLoader;->insertBlankAds(Lcom/buzzfeed/toolkit/content/FlowList;)V

    .line 630
    :cond_19
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetLoader:Lcom/buzzfeed/android/data/loader/BuffetLoader;

    invoke-virtual {v0}, Lcom/buzzfeed/android/data/loader/BuffetLoader;->shouldShowAds()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mAdLoader:Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;

    invoke-virtual {v0, p1, p2}, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->insertBlankAds(ILcom/buzzfeed/toolkit/content/FlowList;)V

    .line 631
    :cond_26
    return-void
.end method

.method private refocusViewHolderOnUpdateIfNeeded(I)V
    .registers 6
    .param p1, "index"    # I

    .prologue
    .line 1068
    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mAutoFocusController:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    invoke-virtual {v1}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->getCurrentViewHolder()Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 1069
    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mAutoFocusController:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    invoke-virtual {v1}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->getCurrentViewHolder()Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 1070
    .local v0, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    if-ne v1, p1, :cond_28

    .line 1071
    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetView:Lcom/buzzfeed/buffet/ui/view/BuffetView;

    invoke-virtual {v1}, Lcom/buzzfeed/buffet/ui/view/BuffetView;->getRecyclerView()Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    move-result-object v1

    new-instance v2, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$8;

    iget-object v3, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetView:Lcom/buzzfeed/buffet/ui/view/BuffetView;

    .line 1072
    invoke-virtual {v3}, Lcom/buzzfeed/buffet/ui/view/BuffetView;->getRecyclerView()Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    move-result-object v3

    invoke-direct {v2, p0, v3, p1}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$8;-><init>(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;Landroid/support/v7/widget/RecyclerView;I)V

    .line 1071
    invoke-virtual {v1, v2}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->addOnChildAttachStateChangeListener(Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 1080
    .end local v0    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_28
    return-void
.end method

.method private refreshBookmarksFeedOnLogin(Lcom/buzzfeed/android/data/Feed;)V
    .registers 3
    .param p1, "currentFeed"    # Lcom/buzzfeed/android/data/Feed;

    .prologue
    .line 1259
    invoke-static {p1}, Lcom/buzzfeed/android/util/FeedUtils;->isBookmarkFeed(Lcom/buzzfeed/android/data/Feed;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->reloadFeed()V

    .line 1260
    :cond_9
    return-void
.end method

.method private setupAnalytics(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;Lcom/buzzfeed/android/data/Feed;)V
    .registers 8
    .param p1, "videoSurfacePresenter"    # Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;
    .param p2, "feed"    # Lcom/buzzfeed/android/data/Feed;

    .prologue
    .line 274
    new-instance v0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$AdHelper;

    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetView:Lcom/buzzfeed/buffet/ui/view/BuffetView;

    invoke-virtual {v1}, Lcom/buzzfeed/buffet/ui/view/BuffetView;->getRecyclerView()Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$AdHelper;-><init>(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mAdHelper:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$AdHelper;

    .line 275
    new-instance v0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;

    .line 276
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoTracker:Lcom/buzzfeed/analytics/client/VideoTracker;

    invoke-direct {v0, v1, v2, p1}, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;-><init>(Landroid/content/Context;Lcom/buzzfeed/analytics/client/VideoTracker;Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;)V

    iput-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetVideoEventTracker:Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;

    .line 277
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetVideoEventTracker:Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;

    invoke-direct {p0, p2}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getScreenName(Lcom/buzzfeed/android/data/Feed;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->setScreenName(Ljava/lang/String;)V

    .line 278
    new-instance v2, Lcom/buzzfeed/buffet/data/tracker/BuffetUnitImpressionRecorder;

    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetView:Lcom/buzzfeed/buffet/ui/view/BuffetView;

    invoke-virtual {v0}, Lcom/buzzfeed/buffet/ui/view/BuffetView;->getRecyclerView()Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    move-result-object v3

    iget-object v4, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mAdapter:Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;

    invoke-virtual {p0, p2}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->isShowsList(Lcom/buzzfeed/android/data/Feed;)Z

    move-result v0

    if-nez v0, :cond_3e

    const/4 v0, 0x1

    move v1, v0

    :goto_35
    if-nez p2, :cond_41

    const/4 v0, 0x0

    :goto_38
    invoke-direct {v2, v3, v4, v1, v0}, Lcom/buzzfeed/buffet/data/tracker/BuffetUnitImpressionRecorder;-><init>(Landroid/support/v7/widget/RecyclerView;Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;ZLjava/lang/String;)V

    iput-object v2, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mUnitImpressionRecorder:Lcom/buzzfeed/buffet/data/tracker/BuffetUnitImpressionRecorder;

    .line 279
    return-void

    .line 278
    :cond_3e
    const/4 v0, 0x0

    move v1, v0

    goto :goto_35

    :cond_41
    invoke-virtual {p2}, Lcom/buzzfeed/android/data/Feed;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_38
.end method

.method private setupAutoPlay()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 253
    new-instance v0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    invoke-direct {v0}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mAutoFocusController:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    .line 254
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mAutoFocusController:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    new-instance v1, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$InternalOnFocusChangeListener;

    invoke-direct {v1, p0, v2}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$InternalOnFocusChangeListener;-><init>(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->addOnFocusChangeListener(Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$OnFocusChangeListener;)V

    .line 255
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mAutoFocusController:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    new-instance v1, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$InternalAutoFocusStrategy;

    invoke-direct {v1, v2}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$InternalAutoFocusStrategy;-><init>(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->setAutoFocusStrategy(Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$AutoFocusStrategy;)V

    .line 256
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mAutoFocusController:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetView:Lcom/buzzfeed/buffet/ui/view/BuffetView;

    invoke-virtual {v1}, Lcom/buzzfeed/buffet/ui/view/BuffetView;->getRecyclerView()Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->attachView(Landroid/support/v7/widget/RecyclerView;)V

    .line 257
    return-void
.end method

.method private setupPlayer()Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;
    .registers 5

    .prologue
    .line 260
    new-instance v0, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;-><init>(Landroid/content/Context;)V

    .line 261
    .local v0, "player":Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;
    invoke-static {}, Lcom/buzzfeed/android/vcr/VCRConfig;->getInstance()Lcom/buzzfeed/android/vcr/VCRConfig;

    move-result-object v1

    .line 262
    .local v1, "vcrConfig":Lcom/buzzfeed/android/vcr/VCRConfig;
    invoke-virtual {v1}, Lcom/buzzfeed/android/vcr/VCRConfig;->getGlobalPositionCache()Lcom/buzzfeed/android/vcr/toolbox/PositionCache;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->setPositionCache(Lcom/buzzfeed/android/vcr/toolbox/PositionCache;)V

    .line 263
    invoke-virtual {v1}, Lcom/buzzfeed/android/vcr/VCRConfig;->isDebugLoggingEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->setDebugLoggingEnabled(Z)V

    .line 264
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->setAudioMuted(Z)V

    .line 266
    new-instance v2, Lcom/buzzfeed/buffet/ui/listener/VideoCardStateHandler;

    invoke-direct {v2}, Lcom/buzzfeed/buffet/ui/listener/VideoCardStateHandler;-><init>()V

    iput-object v2, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoCardStateHandler:Lcom/buzzfeed/buffet/ui/listener/VideoCardStateHandler;

    .line 267
    new-instance v2, Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;

    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;-><init>(Landroid/view/Window;)V

    iput-object v2, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mKeepScreenOnHelper:Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;

    .line 268
    iget-object v2, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mKeepScreenOnHelper:Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;

    invoke-virtual {v2, v0}, Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;->attachTo(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;)V

    .line 269
    iget-object v2, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoCardStateHandler:Lcom/buzzfeed/buffet/ui/listener/VideoCardStateHandler;

    invoke-virtual {v0, v2}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->addListener(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;)V

    .line 270
    return-object v0
.end method

.method private startAutoFocusControllerIfNeeded()V
    .registers 2

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->isFragmentVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/VideoSettings;->isInAutoplayMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mAutoFocusController:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    .line 331
    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->isStarted()Z

    move-result v0

    if-nez v0, :cond_23

    invoke-direct {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->isFeedLoaded()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 332
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mAutoFocusController:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->start()V

    .line 334
    :cond_23
    return-void
.end method

.method private trackVideoClick(Ljava/lang/String;IJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "positionInFeed"    # I
    .param p3, "positionInVideo"    # J
    .param p5, "duration"    # J
    .param p7, "title"    # Ljava/lang/String;
    .param p8, "contentUri"    # Ljava/lang/String;
    .param p9, "screenName"    # Ljava/lang/String;

    .prologue
    .line 802
    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoTracker:Lcom/buzzfeed/analytics/client/VideoTracker;

    .line 803
    invoke-virtual {v1, p2}, Lcom/buzzfeed/analytics/client/VideoTracker;->setPositionInFeed(I)Lcom/buzzfeed/analytics/client/VideoTracker;

    move-result-object v1

    .line 804
    invoke-virtual {v1, p5, p6}, Lcom/buzzfeed/analytics/client/VideoTracker;->setVideoDuration(J)Lcom/buzzfeed/analytics/client/VideoTracker;

    move-result-object v1

    .line 805
    invoke-virtual {v1, p1}, Lcom/buzzfeed/analytics/client/VideoTracker;->setVideoId(Ljava/lang/String;)Lcom/buzzfeed/analytics/client/VideoTracker;

    move-result-object v1

    .line 806
    invoke-virtual {v1, p7}, Lcom/buzzfeed/analytics/client/VideoTracker;->setVideoTitle(Ljava/lang/String;)Lcom/buzzfeed/analytics/client/VideoTracker;

    move-result-object v1

    .line 807
    invoke-virtual {v1, p8}, Lcom/buzzfeed/analytics/client/VideoTracker;->setVideoUrl(Ljava/lang/String;)Lcom/buzzfeed/analytics/client/VideoTracker;

    move-result-object v1

    .line 808
    invoke-virtual {v1, p9}, Lcom/buzzfeed/analytics/client/VideoTracker;->setScreenName(Ljava/lang/String;)Lcom/buzzfeed/analytics/client/VideoTracker;

    move-result-object v1

    const-string v2, "in_feed"

    .line 809
    invoke-virtual {v1, v2}, Lcom/buzzfeed/analytics/client/VideoTracker;->setPlayerLocation(Ljava/lang/String;)Lcom/buzzfeed/analytics/client/VideoTracker;

    .line 811
    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v1}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    .line 812
    invoke-virtual {v1}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_43

    const/4 v0, 0x1

    .line 814
    .local v0, "isPlaying":Z
    :goto_34
    if-nez v0, :cond_3d

    .line 815
    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoTracker:Lcom/buzzfeed/analytics/client/VideoTracker;

    const-string v2, "Feed"

    invoke-virtual {v1, v2}, Lcom/buzzfeed/analytics/client/VideoTracker;->sendGAClickVideoPlayEvent(Ljava/lang/String;)V

    .line 818
    :cond_3d
    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoTracker:Lcom/buzzfeed/analytics/client/VideoTracker;

    invoke-virtual {v1, p3, p4}, Lcom/buzzfeed/analytics/client/VideoTracker;->sendEnterMediaViewer(J)V

    .line 819
    return-void

    .line 812
    .end local v0    # "isPlaying":Z
    :cond_43
    const/4 v0, 0x0

    goto :goto_34
.end method


# virtual methods
.method public createErrorHandler(Landroid/view/View;)Lcom/buzzfeed/toolkit/util/PageErrorHandler;
    .registers 4
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mErrorHandler:Lcom/buzzfeed/toolkit/util/PageErrorHandler;

    if-nez v0, :cond_c

    new-instance v0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$9;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$9;-><init>(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mErrorHandler:Lcom/buzzfeed/toolkit/util/PageErrorHandler;

    .line 1239
    :cond_c
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mErrorHandler:Lcom/buzzfeed/toolkit/util/PageErrorHandler;

    return-object v0
.end method

.method public getCurrentFeed()Lcom/buzzfeed/android/data/Feed;
    .registers 2

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mCurrentFeed:Lcom/buzzfeed/android/data/Feed;

    return-object v0
.end method

.method isBookmarkFeedEmpty(Lcom/buzzfeed/android/data/Feed;Lcom/buzzfeed/android/data/loader/BuffetLoader;)Z
    .registers 4
    .param p1, "currentFeed"    # Lcom/buzzfeed/android/data/Feed;
    .param p2, "buffetLoader"    # Lcom/buzzfeed/android/data/loader/BuffetLoader;

    .prologue
    .line 468
    invoke-static {p1}, Lcom/buzzfeed/android/util/FeedUtils;->isBookmarkFeed(Lcom/buzzfeed/android/data/Feed;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p2}, Lcom/buzzfeed/android/data/loader/BuffetLoader;->getFlowList()Lcom/buzzfeed/toolkit/content/FlowList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/content/FlowList;->size()I

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method isConnectedToNetwork()Z
    .registers 2

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/NetworkUtil;->isConnectedToNetwork(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method isConnectedToWifi()Z
    .registers 2

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/NetworkUtil;->isConnectedToWifi(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected isFragmentVisibleToUser()Z
    .registers 2

    .prologue
    .line 478
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getUserVisibleHint()Z

    move-result v0

    return v0
.end method

.method protected isShowsList(Lcom/buzzfeed/android/data/Feed;)Z
    .registers 3
    .param p1, "feed"    # Lcom/buzzfeed/android/data/Feed;

    .prologue
    .line 291
    if-eqz p1, :cond_a

    invoke-static {p1}, Lcom/buzzfeed/android/util/FeedUtils;->isShowsFeed(Lcom/buzzfeed/android/data/Feed;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method isUserLoggedIn()Z
    .registers 3

    .prologue
    .line 457
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/buzzfeed/android/data/BuzzUser;->getInstance(Landroid/content/Context;)Lcom/buzzfeed/android/data/BuzzUser;

    move-result-object v0

    .line 458
    .local v0, "buzzUser":Lcom/buzzfeed/android/data/BuzzUser;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/buzzfeed/android/data/BuzzUser;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method loadFeed()V
    .registers 2

    .prologue
    .line 539
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->loadFeedAfterRefresh(Z)V

    .line 540
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 175
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 176
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1248
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1249
    const/4 v0, -0x1

    if-ne p2, v0, :cond_9

    .line 1250
    packed-switch p1, :pswitch_data_10

    .line 1256
    :cond_9
    :goto_9
    return-void

    .line 1252
    :pswitch_a
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mCurrentFeed:Lcom/buzzfeed/android/data/Feed;

    invoke-direct {p0, v0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->refreshBookmarksFeedOnLogin(Lcom/buzzfeed/android/data/Feed;)V

    goto :goto_9

    .line 1250
    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_a
    .end packed-switch
.end method

.method public onBreakingNewsLinkClicked(Lcom/buzzfeed/toolkit/content/FlowItem;Ljava/lang/String;)V
    .registers 5
    .param p1, "flowItem"    # Lcom/buzzfeed/toolkit/content/FlowItem;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 949
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/buzzfeed/android/util/BuzzUtils;->openLink(Landroid/app/Activity;Ljava/lang/String;)V

    .line 950
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetTracker:Lcom/buzzfeed/android/data/tracking/BuffetTracker;

    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mCurrentFeed:Lcom/buzzfeed/android/data/Feed;

    invoke-direct {p0, v1}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getScreenName(Lcom/buzzfeed/android/data/Feed;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->trackBreakingNewsLinkClicked(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    return-void
.end method

.method public onBuffetAdReady(IZ)V
    .registers 10
    .param p1, "index"    # I
    .param p2, "isVideo"    # Z

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetLoader:Lcom/buzzfeed/android/data/loader/BuffetLoader;

    invoke-virtual {v0}, Lcom/buzzfeed/android/data/loader/BuffetLoader;->shouldShowAds()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1021
    if-eqz p2, :cond_34

    .line 1022
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoAdLoader:Lcom/buzzfeed/ads/video/VideoAdLoader;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoAdLoader:Lcom/buzzfeed/ads/video/VideoAdLoader;

    invoke-virtual {v0}, Lcom/buzzfeed/ads/video/VideoAdLoader;->shouldRefreshAds()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1023
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoAdLoader:Lcom/buzzfeed/ads/video/VideoAdLoader;

    new-instance v1, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$6;

    invoke-direct {v1, p0, p1}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$6;-><init>(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;I)V

    iget-object v2, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    .line 1043
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mCurrentFeed:Lcom/buzzfeed/android/data/Feed;

    .line 1045
    invoke-virtual {v5}, Lcom/buzzfeed/android/data/Feed;->getAdTag()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mCurrentEdition:Ljava/lang/String;

    .line 1023
    invoke-virtual/range {v0 .. v6}, Lcom/buzzfeed/ads/video/VideoAdLoader;->loadAdSlot(Lcom/buzzfeed/ads/video/VideoAdListener;Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 1059
    :cond_33
    :goto_33
    return-void

    .line 1049
    :cond_34
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mAdLoader:Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;

    new-instance v1, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$7;

    invoke-direct {v1, p0, p1}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$7;-><init>(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;I)V

    invoke-virtual {v0, p1, v1}, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->loadAd(ILcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$AdLoadedListener;)V

    goto :goto_33
.end method

.method public onBuffetRefresh()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 987
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->setTargetView(Landroid/view/View;)V

    .line 988
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoCardStateHandler:Lcom/buzzfeed/buffet/ui/listener/VideoCardStateHandler;

    invoke-virtual {v0, v1}, Lcom/buzzfeed/buffet/ui/listener/VideoCardStateHandler;->setTargetVideoCard(Lcom/buzzfeed/buffet/ui/holder/VideoCard;)V

    .line 989
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 990
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->stop()V

    .line 994
    :cond_18
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->trackUnitImpressions()V

    .line 996
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mAdHelper:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$AdHelper;

    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$AdHelper;->reset()V

    .line 997
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->loadFeedAfterRefresh(Z)V

    .line 998
    return-void
.end method

.method public onBuffetSignIn()V
    .registers 4

    .prologue
    .line 1015
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1016
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1017
    return-void
.end method

.method public onCellClicked(Lcom/buzzfeed/toolkit/content/FlowItem;ILandroid/widget/ImageView;Ljava/util/Stack;Z)V
    .registers 16
    .param p1, "flowItem"    # Lcom/buzzfeed/toolkit/content/FlowItem;
    .param p2, "position"    # I
    .param p3, "thumbnail"    # Landroid/widget/ImageView;
    .param p5, "isTallImage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/buzzfeed/toolkit/content/FlowItem;",
            "I",
            "Landroid/widget/ImageView;",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p4, "imageStack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 704
    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/content/FlowItem;->getContent()Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v0

    instance-of v0, v0, Lcom/buzzfeed/ads/model/NativeInlineAd;

    if-eqz v0, :cond_36

    .line 705
    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/content/FlowItem;->getContent()Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v9

    check-cast v9, Lcom/buzzfeed/ads/model/NativeInlineAd;

    .line 706
    .local v9, "ad":Lcom/buzzfeed/ads/model/NativeInlineAd;
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mAdLoader:Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;

    invoke-virtual {v0, v9}, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->registerClick(Lcom/buzzfeed/toolkit/content/BuzzAd;)V

    .line 707
    invoke-virtual {v9}, Lcom/buzzfeed/ads/model/NativeInlineAd;->isInternal()Z

    move-result v0

    if-nez v0, :cond_22

    .line 708
    invoke-virtual {v9}, Lcom/buzzfeed/ads/model/NativeInlineAd;->getAdUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->openExternalBuzz(Ljava/lang/String;)V

    .line 721
    .end local v9    # "ad":Lcom/buzzfeed/ads/model/NativeInlineAd;
    :cond_21
    :goto_21
    return-void

    .line 710
    .restart local v9    # "ad":Lcom/buzzfeed/ads/model/NativeInlineAd;
    :cond_22
    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/content/FlowItem;->getContent()Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/toolkit/content/PostContent;

    const/4 v7, 0x1

    invoke-static {p3}, Lcom/buzzfeed/toolkit/util/GlideUtils;->isImageLoaded(Landroid/widget/ImageView;)Z

    move-result v8

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v8}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->handlePostContentClicked(Lcom/buzzfeed/toolkit/content/PostContent;ILandroid/view/View;Ljava/util/Stack;ZZZZ)V

    goto :goto_21

    .line 712
    .end local v9    # "ad":Lcom/buzzfeed/ads/model/NativeInlineAd;
    :cond_36
    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/content/FlowItem;->getContent()Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v0

    instance-of v0, v0, Lcom/buzzfeed/toolkit/content/VideoAdContent;

    if-eqz v0, :cond_42

    .line 713
    invoke-direct {p0, p1, p2}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->handleVideoAdContentClicked(Lcom/buzzfeed/toolkit/content/FlowItem;I)V

    goto :goto_21

    .line 714
    :cond_42
    invoke-static {p1}, Lcom/buzzfeed/toolkit/util/WeaverVideoUtils;->hasVideoItemType(Lcom/buzzfeed/toolkit/content/FlowItem;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 715
    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/content/FlowItem;->getContent()Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/content/VideoContent;

    invoke-direct {p0, v0, p2, p3}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->handleVideoContentClicked(Lcom/buzzfeed/toolkit/content/VideoContent;ILandroid/view/View;)V

    goto :goto_21

    .line 716
    :cond_52
    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/content/FlowItem;->getType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/buzzfeed/toolkit/content/BuffetType;->SHOW:Lcom/buzzfeed/toolkit/content/BuffetType;

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/content/BuffetType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 717
    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/content/FlowItem;->getContent()Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/content/ShowListContent;

    invoke-direct {p0, v0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->handleShowClicked(Lcom/buzzfeed/toolkit/content/ShowListContent;)V

    goto :goto_21

    .line 718
    :cond_6c
    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/content/FlowItem;->getContent()Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v0

    instance-of v0, v0, Lcom/buzzfeed/toolkit/content/PostContent;

    if-eqz v0, :cond_21

    .line 719
    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/content/FlowItem;->getContent()Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/toolkit/content/PostContent;

    invoke-static {p3}, Lcom/buzzfeed/toolkit/util/GlideUtils;->isImageLoaded(Landroid/widget/ImageView;)Z

    move-result v8

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v7, v6

    invoke-direct/range {v0 .. v8}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->handlePostContentClicked(Lcom/buzzfeed/toolkit/content/PostContent;ILandroid/view/View;Ljava/util/Stack;ZZZZ)V

    goto :goto_21
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 160
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 161
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getEdition(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mCurrentEdition:Ljava/lang/String;

    .line 162
    new-instance v1, Lcom/buzzfeed/android/data/tracking/BuffetTracker;

    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->getInstance()Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    move-result-object v3

    .line 163
    invoke-static {}, Lcom/buzzfeed/analytics/client/DustbusterClient;->getInstance()Lcom/buzzfeed/analytics/client/DustbusterClient;

    move-result-object v4

    iget-object v5, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mCurrentEdition:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;-><init>(Landroid/content/Context;Lcom/buzzfeed/analytics/client/BuzzFeedTracker;Lcom/buzzfeed/analytics/client/DustbusterClient;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetTracker:Lcom/buzzfeed/android/data/tracking/BuffetTracker;

    .line 164
    invoke-static {}, Lcom/buzzfeed/analytics/client/VideoTracker;->getInstance()Lcom/buzzfeed/analytics/client/VideoTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoTracker:Lcom/buzzfeed/analytics/client/VideoTracker;

    .line 165
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_4a

    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "KEY_FEED"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4a

    .line 166
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "KEY_FEED"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/data/Feed;

    .line 167
    .local v0, "feed":Lcom/buzzfeed/android/data/Feed;
    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->switchFeed(Lcom/buzzfeed/android/data/Feed;)V

    .line 171
    return-void

    .line 169
    .end local v0    # "feed":Lcom/buzzfeed/android/data/Feed;
    :cond_4a
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "BuffetFragment must have a feed!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 187
    const v0, 0x7f030033

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mShareActionListener:Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;

    .line 181
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 182
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetLoader:Lcom/buzzfeed/android/data/loader/BuffetLoader;

    invoke-virtual {v0}, Lcom/buzzfeed/android/data/loader/BuffetLoader;->cancelPendingRequest()V

    .line 183
    return-void
.end method

.method public onDestroyView()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 384
    iput-object v2, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mAdHelper:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$AdHelper;

    .line 385
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoCardStateHandler:Lcom/buzzfeed/buffet/ui/listener/VideoCardStateHandler;

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->removeListener(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;)V

    .line 386
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mKeepScreenOnHelper:Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;->detachFromPresenter()V

    .line 387
    iput-object v2, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mUnitImpressionRecorder:Lcom/buzzfeed/buffet/data/tracker/BuffetUnitImpressionRecorder;

    .line 388
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 389
    return-void
.end method

.method public onGetRecipeClicked(Ljava/lang/String;)V
    .registers 4
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 955
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mCurrentFeed:Lcom/buzzfeed/android/data/Feed;

    invoke-static {v0, p1, v1}, Lcom/buzzfeed/android/activity/SpicyActivity;->startIntent(Landroid/app/Activity;Ljava/lang/String;Lcom/buzzfeed/android/data/Feed;)V

    .line 956
    return-void
.end method

.method public onLoadNextPage()V
    .registers 4

    .prologue
    .line 634
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetLoader:Lcom/buzzfeed/android/data/loader/BuffetLoader;

    invoke-virtual {v0}, Lcom/buzzfeed/android/data/loader/BuffetLoader;->hasMorePages()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 635
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetView:Lcom/buzzfeed/buffet/ui/view/BuffetView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/buffet/ui/view/BuffetView;->setSpinnerVisible(Z)V

    .line 637
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetLoader:Lcom/buzzfeed/android/data/loader/BuffetLoader;

    new-instance v1, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$4;

    invoke-direct {v1, p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$4;-><init>(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/buzzfeed/android/data/loader/BuffetLoader;->loadNextPage(Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;Z)V

    .line 674
    :goto_19
    return-void

    .line 672
    :cond_1a
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mProgressiveLoadingManager:Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;->resetLoading()V

    goto :goto_19
.end method

.method public onNewsPackageClicked(Lcom/buzzfeed/toolkit/content/PackageContent;Lcom/buzzfeed/toolkit/content/PostContent;IILandroid/widget/ImageView;Ljava/util/Stack;Z)V
    .registers 14
    .param p1, "parentPackage"    # Lcom/buzzfeed/toolkit/content/PackageContent;
    .param p2, "postContent"    # Lcom/buzzfeed/toolkit/content/PostContent;
    .param p3, "adapterPosition"    # I
    .param p4, "packagePosition"    # I
    .param p5, "thumbnail"    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "isTallImage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/buzzfeed/toolkit/content/PackageContent;",
            "Lcom/buzzfeed/toolkit/content/PostContent;",
            "II",
            "Landroid/widget/ImageView;",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 935
    .local p6, "imageStack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    invoke-interface {p2}, Lcom/buzzfeed/toolkit/content/PostContent;->getUri()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 936
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetTracker:Lcom/buzzfeed/android/data/tracking/BuffetTracker;

    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mCurrentFeed:Lcom/buzzfeed/android/data/Feed;

    invoke-direct {p0, v1}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getScreenName(Lcom/buzzfeed/android/data/Feed;)Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->trackNewsPackageClick(Ljava/lang/String;Lcom/buzzfeed/toolkit/content/PackageContent;Lcom/buzzfeed/toolkit/content/PostContent;II)V

    .line 937
    invoke-static {p5}, Lcom/buzzfeed/toolkit/util/GlideUtils;->isImageLoaded(Landroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 938
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mCurrentFeed:Lcom/buzzfeed/android/data/Feed;

    move-object v1, p2

    move-object v3, p5

    move-object v4, p6

    move v5, p7

    invoke-static/range {v0 .. v5}, Lcom/buzzfeed/android/activity/SpicyActivity;->startIntent(Landroid/app/Activity;Lcom/buzzfeed/toolkit/content/PostContent;Lcom/buzzfeed/android/data/Feed;Landroid/view/View;Ljava/util/Stack;Z)V

    .line 945
    :goto_28
    return-void

    .line 940
    :cond_29
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mCurrentFeed:Lcom/buzzfeed/android/data/Feed;

    invoke-static {v0, p2, v1}, Lcom/buzzfeed/android/activity/SpicyActivity;->startIntentWithoutTransition(Landroid/app/Activity;Lcom/buzzfeed/toolkit/content/PostContent;Lcom/buzzfeed/android/data/Feed;)V

    goto :goto_28

    .line 943
    :cond_33
    sget-object v0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->TAG:Ljava/lang/String;

    const-string v1, "No URI for buzz, ignoring click"

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28
.end method

.method public onPause()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 392
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 394
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetView:Lcom/buzzfeed/buffet/ui/view/BuffetView;

    invoke-virtual {v0, v1}, Lcom/buzzfeed/buffet/ui/view/BuffetView;->setBuffetEventListener(Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;)V

    .line 395
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mErrorView:Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;->setErrorListener(Lcom/buzzfeed/android/ui/buffet/listener/BuffetErrorListener;)V

    .line 396
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->stopAutoPlay()V

    .line 397
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetVideoEventTracker:Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;

    invoke-virtual {v0}, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->detachMediaComponents()V

    .line 398
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->onPauseComplete()V

    .line 399
    return-void
.end method

.method public onPauseComplete()V
    .registers 1

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->trackUnitImpressions()V

    .line 404
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 296
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 297
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mAdLoader:Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mAdLoader:Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;

    invoke-virtual {v0}, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->resetCorrelator()V

    .line 299
    :cond_c
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->resumeBuffetView()V

    .line 301
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mErrorView:Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;

    invoke-virtual {v0, p0}, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;->setErrorListener(Lcom/buzzfeed/android/ui/buffet/listener/BuffetErrorListener;)V

    .line 302
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mErrorView:Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;

    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->isUserLoggedIn()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;->refreshErrorView(Z)V

    .line 303
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->isConnectedToNetwork()Z

    move-result v0

    if-nez v0, :cond_26

    .line 304
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->showSnackBarErrorIfNoConnection()V

    .line 307
    :cond_26
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->onResumeComplete()V

    .line 308
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->recordAttachedViewsForUnitImpression()V

    .line 310
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mAdHelper:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$AdHelper;

    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$AdHelper;->refreshAds()V

    .line 311
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetVideoEventTracker:Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;

    invoke-virtual {v0}, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->attachMediaComponents()V

    .line 312
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->startAutoPlay()V

    .line 313
    return-void
.end method

.method protected onResumeComplete()V
    .registers 1

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->trackScreenView()V

    .line 364
    return-void
.end method

.method public onShareClicked(Lcom/buzzfeed/toolkit/content/FlowItem;I)V
    .registers 21
    .param p1, "flowItem"    # Lcom/buzzfeed/toolkit/content/FlowItem;
    .param p2, "position"    # I

    .prologue
    .line 869
    const/4 v12, 0x0

    .line 870
    .local v12, "subject":Ljava/lang/String;
    const/4 v11, 0x0

    .line 871
    .local v11, "shareUrl":Ljava/lang/String;
    const-wide/16 v16, 0x0

    .line 873
    .local v16, "videoPosition":J
    sget-object v2, Lcom/buzzfeed/toolkit/content/BuffetType;->VIDEO_AD:Lcom/buzzfeed/toolkit/content/BuffetType;

    invoke-static/range {p1 .. p1}, Lcom/buzzfeed/toolkit/content/BuffetType;->fromFlowItem(Lcom/buzzfeed/toolkit/content/FlowItem;)Lcom/buzzfeed/toolkit/content/BuffetType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/buzzfeed/toolkit/content/BuffetType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 874
    invoke-virtual/range {p1 .. p1}, Lcom/buzzfeed/toolkit/content/FlowItem;->getContent()Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v8

    check-cast v8, Lcom/buzzfeed/toolkit/content/VideoAdContent;

    .line 875
    .local v8, "adContent":Lcom/buzzfeed/toolkit/content/VideoAdContent;
    if-eqz v8, :cond_3a

    .line 876
    invoke-interface {v8}, Lcom/buzzfeed/toolkit/content/VideoAdContent;->getShareUrl()Ljava/lang/String;

    move-result-object v11

    .line 877
    invoke-interface {v8}, Lcom/buzzfeed/toolkit/content/VideoAdContent;->getTitle()Ljava/lang/String;

    move-result-object v12

    .line 878
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-interface {v8}, Lcom/buzzfeed/toolkit/content/VideoAdContent;->getContentUri()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils;->getLastKnownVideoPosition(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;Ljava/lang/String;)J

    move-result-wide v16

    .line 879
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoAdLoader:Lcom/buzzfeed/ads/video/VideoAdLoader;

    if-eqz v2, :cond_3a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoAdLoader:Lcom/buzzfeed/ads/video/VideoAdLoader;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/buzzfeed/ads/video/VideoAdLoader;->setShouldRefreshAds(Z)V

    .line 900
    .end local v8    # "adContent":Lcom/buzzfeed/toolkit/content/VideoAdContent;
    :cond_3a
    :goto_3a
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_63

    .line 901
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetTracker:Lcom/buzzfeed/android/data/tracking/BuffetTracker;

    invoke-virtual {v2}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->trackBuffetOpenShareSheet()V

    .line 903
    move-wide/from16 v6, v16

    .line 904
    .local v6, "videoPos":J
    new-instance v2, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$5;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$5;-><init>(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;Lcom/buzzfeed/toolkit/content/FlowItem;IJ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mShareActionListener:Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;

    .line 926
    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mShareActionListener:Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;

    .line 925
    invoke-static {v2, v12, v11, v3}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->shareWithListener(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;)V

    .line 931
    .end local v6    # "videoPos":J
    :cond_63
    return-void

    .line 881
    :cond_64
    invoke-static/range {p1 .. p1}, Lcom/buzzfeed/toolkit/util/WeaverVideoUtils;->hasVideoItemType(Lcom/buzzfeed/toolkit/content/FlowItem;)Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 882
    invoke-virtual/range {p1 .. p1}, Lcom/buzzfeed/toolkit/content/FlowItem;->getContent()Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v10

    check-cast v10, Lcom/buzzfeed/toolkit/content/VideoContent;

    .line 883
    .local v10, "content":Lcom/buzzfeed/toolkit/content/VideoContent;
    if-eqz v10, :cond_3a

    .line 884
    invoke-interface {v10}, Lcom/buzzfeed/toolkit/content/VideoContent;->getShareUrl()Ljava/lang/String;

    move-result-object v11

    .line 885
    invoke-interface {v10}, Lcom/buzzfeed/toolkit/content/VideoContent;->getTitle()Ljava/lang/String;

    move-result-object v12

    .line 887
    invoke-static {v10}, Lcom/buzzfeed/toolkit/util/WeaverVideoUtils;->getFirstVideoFromVideoContent(Lcom/buzzfeed/toolkit/content/VideoContent;)Lcom/buzzfeed/toolkit/content/WeaverItem$Video;

    move-result-object v13

    .line 888
    .local v13, "video":Lcom/buzzfeed/toolkit/content/WeaverItem$Video;
    invoke-static {v13}, Lcom/buzzfeed/toolkit/util/WeaverVideoUtils;->getHlsVideoContentUri(Lcom/buzzfeed/toolkit/content/WeaverItem$Video;)Ljava/lang/String;

    move-result-object v14

    .line 890
    .local v14, "videoContentUri":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-static {v2, v14}, Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils;->getLastKnownVideoPosition(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;Ljava/lang/String;)J

    move-result-wide v16

    goto :goto_3a

    .line 893
    .end local v10    # "content":Lcom/buzzfeed/toolkit/content/VideoContent;
    .end local v13    # "video":Lcom/buzzfeed/toolkit/content/WeaverItem$Video;
    .end local v14    # "videoContentUri":Ljava/lang/String;
    :cond_8b
    invoke-virtual/range {p1 .. p1}, Lcom/buzzfeed/toolkit/content/FlowItem;->getContent()Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v9

    check-cast v9, Lcom/buzzfeed/toolkit/content/PostContent;

    .line 894
    .local v9, "buzz":Lcom/buzzfeed/toolkit/content/PostContent;
    if-eqz v9, :cond_3a

    invoke-interface {v9}, Lcom/buzzfeed/toolkit/content/PostContent;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 895
    invoke-interface {v9}, Lcom/buzzfeed/toolkit/content/PostContent;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getUrlWithSSLBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 896
    invoke-interface {v9}, Lcom/buzzfeed/toolkit/content/PostContent;->getSubject()Ljava/lang/String;

    move-result-object v12

    goto :goto_3a
.end method

.method public onShowImageClicked(Lcom/buzzfeed/toolkit/content/VideoContent;)V
    .registers 5
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/VideoContent;

    .prologue
    .line 960
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".onShowImageClicked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 961
    .local v0, "TAG":Ljava/lang/String;
    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/VideoContent;->getShow()Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 962
    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetTracker:Lcom/buzzfeed/android/data/tracking/BuffetTracker;

    iget-object v2, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mCurrentFeed:Lcom/buzzfeed/android/data/Feed;

    invoke-direct {p0, v2}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getScreenName(Lcom/buzzfeed/android/data/Feed;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->trackShowIconClicked(Lcom/buzzfeed/toolkit/content/VideoContent;Ljava/lang/String;)V

    .line 963
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/VideoContent;->getShow()Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/buzzfeed/android/activity/ShowPageActivity;->startIntent(Landroid/content/Context;Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;)V

    .line 967
    :goto_31
    return-void

    .line 965
    :cond_32
    const-string v1, "Unable to start ShowPageActivity. No valid show content."

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 378
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoAdLoader:Lcom/buzzfeed/ads/video/VideoAdLoader;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoAdLoader:Lcom/buzzfeed/ads/video/VideoAdLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/ads/video/VideoAdLoader;->setShouldRefreshAds(Z)V

    .line 379
    :cond_a
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 380
    return-void
.end method

.method public onVideoReloadClicked()V
    .registers 2

    .prologue
    .line 971
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->play()V

    .line 972
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 192
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 195
    const v1, 0x7f1100c7

    invoke-static {p1, v1}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mLoadingView:Landroid/view/View;

    .line 197
    const v1, 0x7f1100c6

    invoke-static {p1, v1}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/buffet/ui/view/BuffetView;

    iput-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetView:Lcom/buzzfeed/buffet/ui/view/BuffetView;

    .line 198
    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetView:Lcom/buzzfeed/buffet/ui/view/BuffetView;

    iget-object v2, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mCurrentFeed:Lcom/buzzfeed/android/data/Feed;

    invoke-virtual {p0, v2}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->isShowsList(Lcom/buzzfeed/android/data/Feed;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/buzzfeed/buffet/ui/view/BuffetView;->setIsShowsFeed(Z)V

    .line 200
    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetRecycledViewPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    if-eqz v1, :cond_2e

    .line 201
    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetView:Lcom/buzzfeed/buffet/ui/view/BuffetView;

    iget-object v2, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetRecycledViewPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    invoke-virtual {v1, v2}, Lcom/buzzfeed/buffet/ui/view/BuffetView;->setRecycledViewPool(Landroid/support/v7/widget/RecyclerView$RecycledViewPool;)V

    .line 204
    :cond_2e
    new-instance v1, Lcom/buzzfeed/buffet/ui/adapter/BuffetAdapter;

    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/buzzfeed/android/data/ab/ShrinkCellHeightAbTest;->shouldUseSmallCells(Landroid/content/Context;)Z

    move-result v2

    invoke-direct {v1, v2}, Lcom/buzzfeed/buffet/ui/adapter/BuffetAdapter;-><init>(Z)V

    iput-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mAdapter:Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;

    .line 205
    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetView:Lcom/buzzfeed/buffet/ui/view/BuffetView;

    iget-object v2, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mAdapter:Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;

    invoke-virtual {v1, v2}, Lcom/buzzfeed/buffet/ui/view/BuffetView;->setAdapter(Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;)V

    .line 207
    invoke-static {}, Lcom/buzzfeed/android/vcr/VCRConfig;->getInstance()Lcom/buzzfeed/android/vcr/VCRConfig;

    move-result-object v0

    .line 208
    .local v0, "vcrConfig":Lcom/buzzfeed/android/vcr/VCRConfig;
    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetView:Lcom/buzzfeed/buffet/ui/view/BuffetView;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/VCRConfig;->getGlobalPositionCache()Lcom/buzzfeed/android/vcr/toolbox/PositionCache;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/buzzfeed/buffet/ui/view/BuffetView;->setMediaPlaybackPositionCache(Lcom/buzzfeed/android/vcr/toolbox/PositionCache;)V

    .line 209
    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetView:Lcom/buzzfeed/buffet/ui/view/BuffetView;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/VCRConfig;->isDebugLoggingEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/buzzfeed/buffet/ui/view/BuffetView;->setMediaPlaybackDebuggingEnabled(Z)V

    .line 211
    const v1, 0x7f1100c1

    invoke-static {p1, v1}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;

    iput-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mErrorView:Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;

    .line 213
    const v1, 0x7f1100c5

    invoke-static {p1, v1}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mRefreshView:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 214
    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mRefreshView:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x7f100015

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 215
    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mRefreshView:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v2, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$1;

    invoke-direct {v2, p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$1;-><init>(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 227
    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mCurrentFeed:Lcom/buzzfeed/android/data/Feed;

    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->isShowsList(Lcom/buzzfeed/android/data/Feed;)Z

    move-result v1

    if-eqz v1, :cond_94

    .line 228
    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mRefreshView:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v1, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 231
    :cond_94
    new-instance v2, Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;

    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetView:Lcom/buzzfeed/buffet/ui/view/BuffetView;

    invoke-virtual {v1}, Lcom/buzzfeed/buffet/ui/view/BuffetView;->getRecyclerView()Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    move-result-object v3

    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetView:Lcom/buzzfeed/buffet/ui/view/BuffetView;

    invoke-virtual {v1}, Lcom/buzzfeed/buffet/ui/view/BuffetView;->getRecyclerView()Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v4, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetView:Lcom/buzzfeed/buffet/ui/view/BuffetView;

    invoke-virtual {v4}, Lcom/buzzfeed/buffet/ui/view/BuffetView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v4

    new-instance v5, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$2;

    invoke-direct {v5, p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$2;-><init>(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;)V

    invoke-direct {v2, v3, v1, v4, v5}, Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;-><init>(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/LinearLayoutManager;Landroid/support/v7/widget/RecyclerView$Adapter;Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager$ProgressiveLoadingListener;)V

    iput-object v2, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mProgressiveLoadingManager:Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;

    .line 239
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/buzzfeed/android/data/ads/VideoAdABTest;->shouldShowVideoAds(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_d4

    .line 240
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/buzzfeed/ads/video/VideoAdLoader;->getInstance(Landroid/content/Context;)Lcom/buzzfeed/ads/video/VideoAdLoader;

    move-result-object v1

    iput-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoAdLoader:Lcom/buzzfeed/ads/video/VideoAdLoader;

    .line 243
    :cond_d4
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->setupAutoPlay()V

    .line 244
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->setupPlayer()Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    move-result-object v1

    iput-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    .line 246
    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mCurrentFeed:Lcom/buzzfeed/android/data/Feed;

    if-eqz v1, :cond_eb

    .line 247
    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    iget-object v2, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mCurrentFeed:Lcom/buzzfeed/android/data/Feed;

    invoke-direct {p0, v1, v2}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->setupAnalytics(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;Lcom/buzzfeed/android/data/Feed;)V

    .line 248
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->loadFeedIfNeeded()V

    .line 250
    :cond_eb
    return-void
.end method

.method openExternalBuzz(Ljava/lang/String;)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 860
    if-eqz p1, :cond_a

    .line 861
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/buzzfeed/android/util/chrometabs/CustomTabUtils;->openChromeTab(Landroid/app/Activity;Ljava/lang/String;)V

    .line 865
    :goto_9
    return-void

    .line 863
    :cond_a
    sget-object v0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->TAG:Ljava/lang/String;

    const-string v1, "Unable to open external buzz, no url"

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method protected recordAttachedViewsForUnitImpression()V
    .registers 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mUnitImpressionRecorder:Lcom/buzzfeed/buffet/data/tracker/BuffetUnitImpressionRecorder;

    invoke-virtual {v0}, Lcom/buzzfeed/buffet/data/tracker/BuffetUnitImpressionRecorder;->recordAttachedViews()V

    .line 368
    return-void
.end method

.method public reloadFeed()V
    .registers 1

    .prologue
    .line 580
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->showLoading()V

    .line 581
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->loadFeed()V

    .line 582
    return-void
.end method

.method resumeBuffetView()V
    .registers 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetView:Lcom/buzzfeed/buffet/ui/view/BuffetView;

    invoke-virtual {v0, p0}, Lcom/buzzfeed/buffet/ui/view/BuffetView;->setBuffetEventListener(Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;)V

    .line 375
    return-void
.end method

.method public retryFeedLoad()V
    .registers 2

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mErrorHandler:Lcom/buzzfeed/toolkit/util/PageErrorHandler;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mErrorHandler:Lcom/buzzfeed/toolkit/util/PageErrorHandler;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/util/PageErrorHandler;->hasErrorOccurred()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1002
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetLoader:Lcom/buzzfeed/android/data/loader/BuffetLoader;

    invoke-virtual {v0}, Lcom/buzzfeed/android/data/loader/BuffetLoader;->getFlowList()Lcom/buzzfeed/toolkit/content/FlowList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/content/FlowList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mErrorView:Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;

    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_24

    .line 1003
    :cond_20
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->reloadFeed()V

    .line 1011
    :cond_23
    :goto_23
    return-void

    .line 1005
    :cond_24
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mErrorHandler:Lcom/buzzfeed/toolkit/util/PageErrorHandler;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/util/PageErrorHandler;->dismissSnackbarIfVisible()V

    .line 1006
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mProgressiveLoadingManager:Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;->reloadNeeded()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1007
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->onLoadNextPage()V

    goto :goto_23
.end method

.method public scrollToTop()V
    .registers 3

    .prologue
    .line 589
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetView:Lcom/buzzfeed/buffet/ui/view/BuffetView;

    if-eqz v0, :cond_10

    .line 590
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetView:Lcom/buzzfeed/buffet/ui/view/BuffetView;

    invoke-virtual {v0}, Lcom/buzzfeed/buffet/ui/view/BuffetView;->smoothScrollToTop()V

    .line 594
    :goto_f
    return-void

    .line 592
    :cond_10
    sget-object v0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->TAG:Ljava/lang/String;

    const-string v1, "Unable to perform smooth scroll. Fragment may not be added or ready."

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method

.method public setBuffetRecycledViewPool(Landroid/support/v7/widget/RecyclerView$RecycledViewPool;)V
    .registers 4
    .param p1, "recycledViewPool"    # Landroid/support/v7/widget/RecyclerView$RecycledViewPool;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1088
    iput-object p1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetRecycledViewPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    .line 1090
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetView:Lcom/buzzfeed/buffet/ui/view/BuffetView;

    if-eqz v0, :cond_d

    .line 1091
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetView:Lcom/buzzfeed/buffet/ui/view/BuffetView;

    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetRecycledViewPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    invoke-virtual {v0, v1}, Lcom/buzzfeed/buffet/ui/view/BuffetView;->setRecycledViewPool(Landroid/support/v7/widget/RecyclerView$RecycledViewPool;)V

    .line 1093
    :cond_d
    return-void
.end method

.method setErrorViewType(Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;Lcom/buzzfeed/android/data/Feed;Z)V
    .registers 5
    .param p1, "errorView"    # Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;
    .param p2, "currentFeed"    # Lcom/buzzfeed/android/data/Feed;
    .param p3, "hasNetworkError"    # Z

    .prologue
    .line 442
    invoke-static {p2}, Lcom/buzzfeed/android/util/FeedUtils;->isSearchFeed(Lcom/buzzfeed/android/data/Feed;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 443
    sget-object v0, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;->SEARCH:Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;

    invoke-virtual {p1, v0}, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;->setErrorType(Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;)V

    .line 453
    :goto_b
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->isUserLoggedIn()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;->refreshErrorView(Z)V

    .line 454
    return-void

    .line 444
    :cond_13
    invoke-static {p2}, Lcom/buzzfeed/android/util/FeedUtils;->isBookmarkFeed(Lcom/buzzfeed/android/data/Feed;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 445
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->isUserLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_27

    if-eqz p3, :cond_27

    .line 446
    sget-object v0, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;->DEFAULT:Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;

    invoke-virtual {p1, v0}, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;->setErrorType(Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;)V

    goto :goto_b

    .line 448
    :cond_27
    sget-object v0, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;->BOOKMARK_EMPTY:Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;

    invoke-virtual {p1, v0}, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;->setErrorType(Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;)V

    goto :goto_b

    .line 451
    :cond_2d
    sget-object v0, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;->DEFAULT:Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;

    invoke-virtual {p1, v0}, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;->setErrorType(Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;)V

    goto :goto_b
.end method

.method public showBuffet()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 423
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mLoadingView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 424
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mRefreshView:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setVisibility(I)V

    .line 425
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mErrorView:Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;

    invoke-virtual {v0, v2}, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;->setVisibility(I)V

    .line 426
    return-void
.end method

.method public showError()V
    .registers 4

    .prologue
    .line 432
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->hideLoading()V

    .line 433
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mErrorView:Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;->setVisibility(I)V

    .line 434
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mErrorView:Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;

    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mCurrentFeed:Lcom/buzzfeed/android/data/Feed;

    invoke-direct {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->hasNetworkErrorOccurred()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->setErrorViewType(Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;Lcom/buzzfeed/android/data/Feed;Z)V

    .line 435
    return-void
.end method

.method public showLoading()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 414
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mLoadingView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 415
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mRefreshView:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setVisibility(I)V

    .line 416
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mErrorView:Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;

    invoke-virtual {v0, v2}, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;->setVisibility(I)V

    .line 417
    return-void
.end method

.method showSnackBarErrorIfNoConnection()V
    .registers 2

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->createErrorHandler(Landroid/view/View;)Lcom/buzzfeed/toolkit/util/PageErrorHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/util/PageErrorHandler;->onNoConnectionError()V

    .line 360
    :cond_11
    return-void
.end method

.method protected startAutoPlay()V
    .registers 4

    .prologue
    .line 316
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->startAutoFocusControllerIfNeeded()V

    .line 317
    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v1}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->play()V

    .line 318
    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->setAudioMuted(Z)V

    .line 320
    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mAutoFocusController:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    invoke-virtual {v1}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->getCurrentViewHolder()Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;

    .line 321
    .local v0, "videoCard":Lcom/buzzfeed/buffet/ui/holder/VideoCard;
    if-eqz v0, :cond_21

    .line 322
    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v0}, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->getTextureView()Landroid/view/TextureView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->setTargetView(Landroid/view/View;)V

    .line 324
    :cond_21
    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoAdLoader:Lcom/buzzfeed/ads/video/VideoAdLoader;

    if-eqz v1, :cond_2c

    .line 325
    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoAdLoader:Lcom/buzzfeed/ads/video/VideoAdLoader;

    iget-object v2, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v1, v2}, Lcom/buzzfeed/ads/video/VideoAdLoader;->updatePresenter(Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;)V

    .line 327
    :cond_2c
    return-void
.end method

.method public startLoginActivityForResult()V
    .registers 4

    .prologue
    .line 975
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 976
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 977
    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mErrorHandler:Lcom/buzzfeed/toolkit/util/PageErrorHandler;

    if-eqz v1, :cond_18

    .line 978
    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mErrorHandler:Lcom/buzzfeed/toolkit/util/PageErrorHandler;

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/util/PageErrorHandler;->dismissSnackbarIfVisible()V

    .line 980
    :cond_18
    return-void
.end method

.method protected stopAutoPlay()V
    .registers 3

    .prologue
    .line 337
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mAutoFocusController:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->stop()V

    .line 338
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->setTargetView(Landroid/view/View;)V

    .line 339
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->release()V

    .line 340
    return-void
.end method

.method public switchFeed(Lcom/buzzfeed/android/data/Feed;)V
    .registers 4
    .param p1, "feed"    # Lcom/buzzfeed/android/data/Feed;

    .prologue
    .line 491
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mCurrentFeed:Lcom/buzzfeed/android/data/Feed;

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/ObjectUtil;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 505
    :goto_8
    return-void

    .line 495
    :cond_9
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mCurrentFeed:Lcom/buzzfeed/android/data/Feed;

    if-eqz v0, :cond_10

    .line 497
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->trackUnitImpressions()V

    .line 499
    :cond_10
    iput-object p1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mCurrentFeed:Lcom/buzzfeed/android/data/Feed;

    .line 500
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetVideoEventTracker:Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;

    if-eqz v0, :cond_21

    .line 501
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetVideoEventTracker:Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;

    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mCurrentFeed:Lcom/buzzfeed/android/data/Feed;

    invoke-direct {p0, v1}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getScreenName(Lcom/buzzfeed/android/data/Feed;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->setScreenName(Ljava/lang/String;)V

    .line 503
    :cond_21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mNeedFeedLoad:Z

    .line 504
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->loadFeedIfNeeded()V

    goto :goto_8
.end method

.method public toggleAutoplay(Z)V
    .registers 2
    .param p1, "enableAutoplay"    # Z

    .prologue
    .line 343
    if-eqz p1, :cond_6

    .line 344
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->startAutoFocusControllerIfNeeded()V

    .line 348
    :goto_5
    return-void

    .line 346
    :cond_6
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->stopAutoPlay()V

    goto :goto_5
.end method

.method public trackScreenView()V
    .registers 4

    .prologue
    .line 683
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetLoader:Lcom/buzzfeed/android/data/loader/BuffetLoader;

    if-eqz v0, :cond_13

    .line 684
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetTracker:Lcom/buzzfeed/android/data/tracking/BuffetTracker;

    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mCurrentFeed:Lcom/buzzfeed/android/data/Feed;

    iget-object v2, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetLoader:Lcom/buzzfeed/android/data/loader/BuffetLoader;

    invoke-virtual {v2}, Lcom/buzzfeed/android/data/loader/BuffetLoader;->getPage()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->trackScreenView(Lcom/buzzfeed/android/data/Feed;I)V

    .line 686
    :cond_13
    return-void
.end method

.method public trackUnitImpressions()V
    .registers 4

    .prologue
    .line 527
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mCurrentFeed:Lcom/buzzfeed/android/data/Feed;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mUnitImpressionRecorder:Lcom/buzzfeed/buffet/data/tracker/BuffetUnitImpressionRecorder;

    if-eqz v0, :cond_1e

    .line 528
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetTracker:Lcom/buzzfeed/android/data/tracking/BuffetTracker;

    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mCurrentFeed:Lcom/buzzfeed/android/data/Feed;

    .line 529
    invoke-direct {p0, v1}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getScreenName(Lcom/buzzfeed/android/data/Feed;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mUnitImpressionRecorder:Lcom/buzzfeed/buffet/data/tracker/BuffetUnitImpressionRecorder;

    .line 530
    invoke-virtual {v2}, Lcom/buzzfeed/buffet/data/tracker/BuffetUnitImpressionRecorder;->getUnitImpressionCollection()Ljava/util/Collection;

    move-result-object v2

    .line 528
    invoke-virtual {v0, v1, v2}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->trackUnitImpressions(Ljava/lang/String;Ljava/util/Collection;)V

    .line 531
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mUnitImpressionRecorder:Lcom/buzzfeed/buffet/data/tracker/BuffetUnitImpressionRecorder;

    invoke-virtual {v0}, Lcom/buzzfeed/buffet/data/tracker/BuffetUnitImpressionRecorder;->clearUnitImpressionCollection()V

    .line 533
    :cond_1e
    return-void
.end method
