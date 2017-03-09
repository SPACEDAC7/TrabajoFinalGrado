.class public Lcom/buzzfeed/ads/video/VideoAdLoader;
.super Ljava/lang/Object;
.source "VideoAdLoader.java"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;
.implements Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;


# static fields
.field private static PLAYER_TYPE:Ljava/lang/String;

.field private static PLAYER_VERSION:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String;

.field private static sSingleton:Lcom/buzzfeed/ads/video/VideoAdLoader;


# instance fields
.field private mAdsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

.field private mSdkFactory:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

.field private mShouldRefreshAds:Z

.field private mVideoAdManager:Lcom/buzzfeed/ads/video/VideoAdManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-class v0, Lcom/buzzfeed/ads/video/VideoAdLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/ads/video/VideoAdLoader;->TAG:Ljava/lang/String;

    .line 22
    const-string v0, "google/gmf-android"

    sput-object v0, Lcom/buzzfeed/ads/video/VideoAdLoader;->PLAYER_TYPE:Ljava/lang/String;

    .line 23
    const-string v0, "1.5.11"

    sput-object v0, Lcom/buzzfeed/ads/video/VideoAdLoader;->PLAYER_VERSION:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/buzzfeed/ads/video/VideoAdLoader;->mShouldRefreshAds:Z

    .line 44
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->getInstance()Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/buzzfeed/ads/video/VideoAdLoader;->mSdkFactory:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    .line 45
    iget-object v1, p0, Lcom/buzzfeed/ads/video/VideoAdLoader;->mSdkFactory:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createImaSdkSettings()Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    move-result-object v0

    .line 46
    .local v0, "settings":Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;
    sget-object v1, Lcom/buzzfeed/ads/video/VideoAdLoader;->PLAYER_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->setPlayerType(Ljava/lang/String;)V

    .line 47
    sget-object v1, Lcom/buzzfeed/ads/video/VideoAdLoader;->PLAYER_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->setPlayerVersion(Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/buzzfeed/ads/video/VideoAdLoader;->mSdkFactory:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createAdsLoader(Landroid/content/Context;)Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    move-result-object v1

    iput-object v1, p0, Lcom/buzzfeed/ads/video/VideoAdLoader;->mAdsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    .line 50
    iget-object v1, p0, Lcom/buzzfeed/ads/video/VideoAdLoader;->mAdsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    invoke-interface {v1, p0}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader;->addAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    .line 51
    iget-object v1, p0, Lcom/buzzfeed/ads/video/VideoAdLoader;->mAdsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    invoke-interface {v1, p0}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader;->addAdsLoadedListener(Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;)V

    .line 52
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/buzzfeed/ads/video/VideoAdLoader;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    sget-object v0, Lcom/buzzfeed/ads/video/VideoAdLoader;->sSingleton:Lcom/buzzfeed/ads/video/VideoAdLoader;

    if-nez v0, :cond_13

    .line 34
    const-class v1, Lcom/buzzfeed/ads/video/VideoAdLoader;

    monitor-enter v1

    .line 35
    :try_start_7
    sget-object v0, Lcom/buzzfeed/ads/video/VideoAdLoader;->sSingleton:Lcom/buzzfeed/ads/video/VideoAdLoader;

    if-nez v0, :cond_12

    .line 36
    new-instance v0, Lcom/buzzfeed/ads/video/VideoAdLoader;

    invoke-direct {v0, p0}, Lcom/buzzfeed/ads/video/VideoAdLoader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/buzzfeed/ads/video/VideoAdLoader;->sSingleton:Lcom/buzzfeed/ads/video/VideoAdLoader;

    .line 38
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 40
    :cond_13
    sget-object v0, Lcom/buzzfeed/ads/video/VideoAdLoader;->sSingleton:Lcom/buzzfeed/ads/video/VideoAdLoader;

    return-object v0

    .line 38
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public getContentUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/buzzfeed/ads/video/VideoAdLoader;->mVideoAdManager:Lcom/buzzfeed/ads/video/VideoAdManager;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/buzzfeed/ads/video/VideoAdLoader;->mVideoAdManager:Lcom/buzzfeed/ads/video/VideoAdManager;

    invoke-virtual {v0}, Lcom/buzzfeed/ads/video/VideoAdManager;->getContentUri()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getCurrentAdPosition()I
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/buzzfeed/ads/video/VideoAdLoader;->mVideoAdManager:Lcom/buzzfeed/ads/video/VideoAdManager;

    invoke-virtual {v0}, Lcom/buzzfeed/ads/video/VideoAdManager;->getAdProgress()I

    move-result v0

    return v0
.end method

.method public insertBlankAds(Lcom/buzzfeed/toolkit/content/FlowList;)V
    .registers 6
    .param p1, "flowList"    # Lcom/buzzfeed/toolkit/content/FlowList;

    .prologue
    .line 104
    const/4 v0, 0x3

    .line 105
    .local v0, "adSlot":I
    invoke-static {p1}, Lcom/buzzfeed/ads/utils/AdUtils;->hasBreakingBar(Lcom/buzzfeed/toolkit/content/FlowList;)Z

    move-result v1

    if-eqz v1, :cond_9

    add-int/lit8 v0, v0, 0x1

    .line 106
    :cond_9
    invoke-static {p1}, Lcom/buzzfeed/ads/utils/AdUtils;->hasFeatured(Lcom/buzzfeed/toolkit/content/FlowList;)Z

    move-result v1

    if-eqz v1, :cond_11

    add-int/lit8 v0, v0, 0x1

    .line 107
    :cond_11
    new-instance v1, Lcom/buzzfeed/toolkit/content/FlowItem;

    sget-object v2, Lcom/buzzfeed/toolkit/content/BuffetType;->VIDEO_AD:Lcom/buzzfeed/toolkit/content/BuffetType;

    invoke-virtual {v2}, Lcom/buzzfeed/toolkit/content/BuffetType;->name()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/buzzfeed/ads/model/VideoAd;

    invoke-direct {v3}, Lcom/buzzfeed/ads/model/VideoAd;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/buzzfeed/toolkit/content/FlowItem;-><init>(Ljava/lang/String;Lcom/buzzfeed/toolkit/content/Content;)V

    invoke-virtual {p1, v0, v1}, Lcom/buzzfeed/toolkit/content/FlowList;->add(ILcom/buzzfeed/toolkit/content/FlowItem;)V

    .line 108
    return-void
.end method

.method public loadAdSlot(Lcom/buzzfeed/ads/video/VideoAdListener;Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "listener"    # Lcom/buzzfeed/ads/video/VideoAdListener;
    .param p2, "presenter"    # Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "position"    # I
    .param p5, "adTag"    # Ljava/lang/String;
    .param p6, "edition"    # Ljava/lang/String;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/buzzfeed/ads/video/VideoAdLoader;->mVideoAdManager:Lcom/buzzfeed/ads/video/VideoAdManager;

    if-eqz v0, :cond_9

    .line 91
    iget-object v0, p0, Lcom/buzzfeed/ads/video/VideoAdLoader;->mVideoAdManager:Lcom/buzzfeed/ads/video/VideoAdManager;

    invoke-virtual {v0}, Lcom/buzzfeed/ads/video/VideoAdManager;->destroy()V

    .line 93
    :cond_9
    new-instance v0, Lcom/buzzfeed/ads/video/VideoAdManager;

    invoke-direct {v0, p3, p2}, Lcom/buzzfeed/ads/video/VideoAdManager;-><init>(Landroid/content/Context;Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;)V

    iput-object v0, p0, Lcom/buzzfeed/ads/video/VideoAdLoader;->mVideoAdManager:Lcom/buzzfeed/ads/video/VideoAdManager;

    .line 94
    iget-object v0, p0, Lcom/buzzfeed/ads/video/VideoAdLoader;->mVideoAdManager:Lcom/buzzfeed/ads/video/VideoAdManager;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/ads/video/VideoAdManager;->setBuffetVideoAdListener(Lcom/buzzfeed/ads/video/VideoAdListener;)V

    .line 95
    iget-object v0, p0, Lcom/buzzfeed/ads/video/VideoAdLoader;->mAdsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader;->contentComplete()V

    .line 96
    iget-object v0, p0, Lcom/buzzfeed/ads/video/VideoAdLoader;->mAdsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    iget-object v1, p0, Lcom/buzzfeed/ads/video/VideoAdLoader;->mVideoAdManager:Lcom/buzzfeed/ads/video/VideoAdManager;

    invoke-virtual {v1, p4, p5, p6}, Lcom/buzzfeed/ads/video/VideoAdManager;->buildRequest(ILjava/lang/String;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/api/AdsRequest;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader;->requestAds(Lcom/google/ads/interactivemedia/v3/api/AdsRequest;)V

    .line 97
    return-void
.end method

.method public onAdError(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V
    .registers 5
    .param p1, "adErrorEvent"    # Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;

    .prologue
    .line 64
    sget-object v0, Lcom/buzzfeed/ads/video/VideoAdLoader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;->getError()Lcom/google/ads/interactivemedia/v3/api/AdError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/api/AdError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/buzzfeed/ads/video/VideoAdLoader;->mVideoAdManager:Lcom/buzzfeed/ads/video/VideoAdManager;

    if-eqz v0, :cond_2e

    .line 66
    iget-object v0, p0, Lcom/buzzfeed/ads/video/VideoAdLoader;->mVideoAdManager:Lcom/buzzfeed/ads/video/VideoAdManager;

    invoke-virtual {v0}, Lcom/buzzfeed/ads/video/VideoAdManager;->notifyAdError()V

    .line 67
    iget-object v0, p0, Lcom/buzzfeed/ads/video/VideoAdLoader;->mVideoAdManager:Lcom/buzzfeed/ads/video/VideoAdManager;

    invoke-virtual {v0}, Lcom/buzzfeed/ads/video/VideoAdManager;->destroy()V

    .line 69
    :cond_2e
    return-void
.end method

.method public onAdsManagerLoaded(Lcom/google/ads/interactivemedia/v3/api/AdsManagerLoadedEvent;)V
    .registers 4
    .param p1, "adsManagerLoadedEvent"    # Lcom/google/ads/interactivemedia/v3/api/AdsManagerLoadedEvent;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/buzzfeed/ads/video/VideoAdLoader;->mVideoAdManager:Lcom/buzzfeed/ads/video/VideoAdManager;

    if-eqz v0, :cond_d

    .line 58
    iget-object v0, p0, Lcom/buzzfeed/ads/video/VideoAdLoader;->mVideoAdManager:Lcom/buzzfeed/ads/video/VideoAdManager;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdsManagerLoadedEvent;->getAdsManager()Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/ads/video/VideoAdManager;->initManager(Lcom/google/ads/interactivemedia/v3/api/AdsManager;)V

    .line 60
    :cond_d
    return-void
.end method

.method public setShouldRefreshAds(Z)V
    .registers 2
    .param p1, "reset"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/buzzfeed/ads/video/VideoAdLoader;->mShouldRefreshAds:Z

    .line 87
    return-void
.end method

.method public shouldRefreshAds()Z
    .registers 2

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/buzzfeed/ads/video/VideoAdLoader;->mShouldRefreshAds:Z

    return v0
.end method

.method public startAd()V
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/buzzfeed/ads/video/VideoAdLoader;->mVideoAdManager:Lcom/buzzfeed/ads/video/VideoAdManager;

    if-eqz v0, :cond_9

    .line 73
    iget-object v0, p0, Lcom/buzzfeed/ads/video/VideoAdLoader;->mVideoAdManager:Lcom/buzzfeed/ads/video/VideoAdManager;

    invoke-virtual {v0}, Lcom/buzzfeed/ads/video/VideoAdManager;->startAd()V

    .line 75
    :cond_9
    return-void
.end method

.method public updatePresenter(Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;)V
    .registers 3
    .param p1, "presenter"    # Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/buzzfeed/ads/video/VideoAdLoader;->mVideoAdManager:Lcom/buzzfeed/ads/video/VideoAdManager;

    if-eqz v0, :cond_9

    .line 112
    iget-object v0, p0, Lcom/buzzfeed/ads/video/VideoAdLoader;->mVideoAdManager:Lcom/buzzfeed/ads/video/VideoAdManager;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/ads/video/VideoAdManager;->updatePresenter(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;)V

    .line 114
    :cond_9
    return-void
.end method
