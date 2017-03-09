.class public Lcom/buzzfeed/ads/video/VideoAdManager;
.super Ljava/lang/Object;
.source "VideoAdManager.java"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;
.implements Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final mAdDisplayContainer:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

.field private mAdPlayer:Lcom/buzzfeed/ads/video/AdPlayer;

.field private mAdsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

.field private mBuffetVideoAdListener:Lcom/buzzfeed/ads/video/VideoAdListener;

.field private final mContext:Landroid/content/Context;

.field private mStarted:Z

.field private mVideoAd:Lcom/buzzfeed/ads/model/VideoAd;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const-class v0, Lcom/buzzfeed/ads/video/VideoAdManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/ads/video/VideoAdManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "presenter"    # Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/buzzfeed/ads/video/VideoAdManager;->mContext:Landroid/content/Context;

    .line 42
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->getInstance()Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createAdDisplayContainer()Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/ads/video/VideoAdManager;->mAdDisplayContainer:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    .line 43
    iget-object v0, p0, Lcom/buzzfeed/ads/video/VideoAdManager;->mAdDisplayContainer:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/buzzfeed/ads/video/VideoAdManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;->setAdContainer(Landroid/view/ViewGroup;)V

    .line 44
    new-instance v0, Lcom/buzzfeed/ads/video/AdPlayer;

    invoke-direct {v0, p2}, Lcom/buzzfeed/ads/video/AdPlayer;-><init>(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;)V

    iput-object v0, p0, Lcom/buzzfeed/ads/video/VideoAdManager;->mAdPlayer:Lcom/buzzfeed/ads/video/AdPlayer;

    .line 45
    iget-object v0, p0, Lcom/buzzfeed/ads/video/VideoAdManager;->mAdDisplayContainer:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    iget-object v1, p0, Lcom/buzzfeed/ads/video/VideoAdManager;->mAdPlayer:Lcom/buzzfeed/ads/video/AdPlayer;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;->setPlayer(Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;)V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/ads/video/VideoAdManager;)Lcom/buzzfeed/ads/video/VideoAdListener;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/ads/video/VideoAdManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/buzzfeed/ads/video/VideoAdManager;->mBuffetVideoAdListener:Lcom/buzzfeed/ads/video/VideoAdListener;

    return-object v0
.end method

.method private buildTraffickingParams(Ljava/lang/String;)Lcom/buzzfeed/ads/video/TraffickingParameters;
    .registers 6
    .param p1, "traffickingParametersResponse"    # Ljava/lang/String;

    .prologue
    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/buzzfeed/ads/video/VideoAdLoader;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".buildTraffickingParams"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "TAG":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trafficking Params: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    new-instance v1, Lcom/buzzfeed/ads/video/TraffickingParameters;

    invoke-direct {v1, p1}, Lcom/buzzfeed/ads/video/TraffickingParameters;-><init>(Ljava/lang/String;)V

    .line 161
    .local v1, "traffickingParameters":Lcom/buzzfeed/ads/video/TraffickingParameters;
    return-object v1
.end method

.method private populateAd(Lcom/google/ads/interactivemedia/v3/api/Ad;)V
    .registers 7
    .param p1, "ad"    # Lcom/google/ads/interactivemedia/v3/api/Ad;

    .prologue
    .line 125
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/Ad;->getTraffickingParameters()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "traffickingParameters":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_34

    .line 127
    new-instance v1, Lcom/buzzfeed/ads/model/VideoAd;

    invoke-direct {v1}, Lcom/buzzfeed/ads/model/VideoAd;-><init>()V

    .line 128
    .local v1, "videoAd":Lcom/buzzfeed/ads/model/VideoAd;
    invoke-direct {p0, v0}, Lcom/buzzfeed/ads/video/VideoAdManager;->buildTraffickingParams(Ljava/lang/String;)Lcom/buzzfeed/ads/video/TraffickingParameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/buzzfeed/ads/model/VideoAd;->setTraffickingParameters(Lcom/buzzfeed/ads/video/TraffickingParameters;)V

    .line 129
    if-eqz v1, :cond_33

    .line 130
    iput-object v1, p0, Lcom/buzzfeed/ads/video/VideoAdManager;->mVideoAd:Lcom/buzzfeed/ads/model/VideoAd;

    .line 132
    invoke-virtual {v1}, Lcom/buzzfeed/ads/model/VideoAd;->getVideoId()I

    move-result v2

    if-eqz v2, :cond_33

    .line 133
    new-instance v2, Lcom/buzzfeed/ads/data/VideoApiClient;

    invoke-direct {v2}, Lcom/buzzfeed/ads/data/VideoApiClient;-><init>()V

    new-instance v2, Lcom/buzzfeed/ads/video/VideoAdManager$1;

    invoke-direct {v2, p0, v1}, Lcom/buzzfeed/ads/video/VideoAdManager$1;-><init>(Lcom/buzzfeed/ads/video/VideoAdManager;Lcom/buzzfeed/ads/model/VideoAd;)V

    iget-object v3, p0, Lcom/buzzfeed/ads/video/VideoAdManager;->mContext:Landroid/content/Context;

    .line 148
    invoke-virtual {v1}, Lcom/buzzfeed/ads/model/VideoAd;->getVideoId()I

    move-result v4

    .line 133
    invoke-static {v2, v3, v4}, Lcom/buzzfeed/ads/data/VideoApiClient;->getVideo(Lcom/buzzfeed/ads/data/VideoApiClient$ResponseListener;Landroid/content/Context;I)V

    .line 154
    .end local v1    # "videoAd":Lcom/buzzfeed/ads/model/VideoAd;
    :cond_33
    :goto_33
    return-void

    .line 152
    :cond_34
    invoke-virtual {p0}, Lcom/buzzfeed/ads/video/VideoAdManager;->notifyAdError()V

    goto :goto_33
.end method

.method private removeWebViewOverlay()V
    .registers 6

    .prologue
    .line 166
    iget-object v4, p0, Lcom/buzzfeed/ads/video/VideoAdManager;->mAdDisplayContainer:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    invoke-interface {v4}, Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;->getAdContainer()Landroid/view/ViewGroup;

    move-result-object v1

    .line 167
    .local v1, "container":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 168
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_b
    if-ge v3, v2, :cond_23

    .line 169
    iget-object v4, p0, Lcom/buzzfeed/ads/video/VideoAdManager;->mAdDisplayContainer:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    invoke-interface {v4}, Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;->getAdContainer()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 170
    .local v0, "ch":Landroid/view/View;
    instance-of v4, v0, Landroid/webkit/WebView;

    if-eqz v4, :cond_20

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 168
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 172
    .end local v0    # "ch":Landroid/view/View;
    :cond_23
    return-void
.end method


# virtual methods
.method public buildRequest(ILjava/lang/String;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/api/AdsRequest;
    .registers 9
    .param p1, "position"    # I
    .param p2, "adTag"    # Ljava/lang/String;
    .param p3, "edition"    # Ljava/lang/String;

    .prologue
    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/buzzfeed/ads/video/VideoAdManager;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".buildRequest"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "TAG":Ljava/lang/String;
    iget-object v3, p0, Lcom/buzzfeed/ads/video/VideoAdManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/buzzfeed/toolkit/util/DeviceUtil;->getVersionCode(Landroid/content/Context;)I

    move-result v3

    invoke-static {p1, v3, p2, p3}, Lcom/buzzfeed/ads/video/VideoAdTagBuilder;->build(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "adTagUrl":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ad Tag URl: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->getInstance()Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createAdsRequest()Lcom/google/ads/interactivemedia/v3/api/AdsRequest;

    move-result-object v2

    .line 54
    .local v2, "adsRequest":Lcom/google/ads/interactivemedia/v3/api/AdsRequest;
    invoke-interface {v2, v1}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->setAdTagUrl(Ljava/lang/String;)V

    .line 55
    iget-object v3, p0, Lcom/buzzfeed/ads/video/VideoAdManager;->mAdDisplayContainer:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    invoke-interface {v2, v3}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->setAdDisplayContainer(Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;)V

    .line 57
    return-object v2
.end method

.method public destroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 183
    iget-object v0, p0, Lcom/buzzfeed/ads/video/VideoAdManager;->mAdsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    if-eqz v0, :cond_c

    .line 184
    iget-object v0, p0, Lcom/buzzfeed/ads/video/VideoAdManager;->mAdsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->destroy()V

    .line 185
    iput-object v1, p0, Lcom/buzzfeed/ads/video/VideoAdManager;->mAdsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    .line 187
    :cond_c
    iget-object v0, p0, Lcom/buzzfeed/ads/video/VideoAdManager;->mAdPlayer:Lcom/buzzfeed/ads/video/AdPlayer;

    if-eqz v0, :cond_17

    .line 188
    iget-object v0, p0, Lcom/buzzfeed/ads/video/VideoAdManager;->mAdPlayer:Lcom/buzzfeed/ads/video/AdPlayer;

    invoke-virtual {v0}, Lcom/buzzfeed/ads/video/AdPlayer;->removeCallbacks()V

    .line 189
    iput-object v1, p0, Lcom/buzzfeed/ads/video/VideoAdManager;->mAdPlayer:Lcom/buzzfeed/ads/video/AdPlayer;

    .line 191
    :cond_17
    return-void
.end method

.method public getAdProgress()I
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/buzzfeed/ads/video/VideoAdManager;->mAdsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/buzzfeed/ads/video/VideoAdManager;->mAdsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->getAdProgress()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->getCurrentTime()F

    move-result v0

    float-to-int v0, v0

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public getContentUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/buzzfeed/ads/video/VideoAdManager;->mVideoAd:Lcom/buzzfeed/ads/model/VideoAd;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/buzzfeed/ads/video/VideoAdManager;->mVideoAd:Lcom/buzzfeed/ads/model/VideoAd;

    invoke-virtual {v0}, Lcom/buzzfeed/ads/model/VideoAd;->getContentUri()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public initManager(Lcom/google/ads/interactivemedia/v3/api/AdsManager;)V
    .registers 5
    .param p1, "adsManager"    # Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/buzzfeed/ads/video/VideoAdManager;->mAdsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v0, "mimeTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "application/x-mpegURL"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    const-string/jumbo v2, "video/mp4"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->getInstance()Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createAdsRenderingSettings()Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;

    move-result-object v1

    .line 68
    .local v1, "renderingSettings":Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;
    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;->setMimeTypes(Ljava/util/List;)V

    .line 71
    iget-object v2, p0, Lcom/buzzfeed/ads/video/VideoAdManager;->mAdsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    invoke-interface {v2, p0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->addAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    .line 72
    iget-object v2, p0, Lcom/buzzfeed/ads/video/VideoAdManager;->mAdsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    invoke-interface {v2, p0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->addAdEventListener(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;)V

    .line 73
    iget-object v2, p0, Lcom/buzzfeed/ads/video/VideoAdManager;->mAdsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    invoke-interface {v2, v1}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->init(Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;)V

    .line 74
    return-void
.end method

.method public notifyAdError()V
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/buzzfeed/ads/video/VideoAdManager;->mBuffetVideoAdListener:Lcom/buzzfeed/ads/video/VideoAdListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/buzzfeed/ads/video/VideoAdManager;->mBuffetVideoAdListener:Lcom/buzzfeed/ads/video/VideoAdListener;

    invoke-interface {v0}, Lcom/buzzfeed/ads/video/VideoAdListener;->onError()V

    .line 89
    :cond_9
    return-void
.end method

.method public onAdError(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V
    .registers 5
    .param p1, "adErrorEvent"    # Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;

    .prologue
    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/buzzfeed/ads/video/VideoAdManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".onAdError"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "TAG":Ljava/lang/String;
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

    .line 95
    invoke-virtual {p0}, Lcom/buzzfeed/ads/video/VideoAdManager;->notifyAdError()V

    .line 96
    return-void
.end method

.method public onAdEvent(Lcom/google/ads/interactivemedia/v3/api/AdEvent;)V
    .registers 6
    .param p1, "adEvent"    # Lcom/google/ads/interactivemedia/v3/api/AdEvent;

    .prologue
    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/buzzfeed/ads/video/VideoAdManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "onAdEvent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "TAG":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent;->getType()Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    sget-object v2, Lcom/buzzfeed/ads/video/VideoAdManager$2;->$SwitchMap$com$google$ads$interactivemedia$v3$api$AdEvent$AdEventType:[I

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent;->getType()Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_6e

    .line 122
    :cond_3e
    :goto_3e
    return-void

    .line 104
    :pswitch_3f
    invoke-direct {p0}, Lcom/buzzfeed/ads/video/VideoAdManager;->removeWebViewOverlay()V

    goto :goto_3e

    .line 109
    :pswitch_43
    iget-object v2, p0, Lcom/buzzfeed/ads/video/VideoAdManager;->mAdsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->getCurrentAd()Lcom/google/ads/interactivemedia/v3/api/Ad;

    move-result-object v1

    .line 111
    .local v1, "ad":Lcom/google/ads/interactivemedia/v3/api/Ad;
    if-eqz v1, :cond_3e

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video Ad Content Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/Ad;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-direct {p0, v1}, Lcom/buzzfeed/ads/video/VideoAdManager;->populateAd(Lcom/google/ads/interactivemedia/v3/api/Ad;)V

    goto :goto_3e

    .line 117
    .end local v1    # "ad":Lcom/google/ads/interactivemedia/v3/api/Ad;
    :pswitch_69
    invoke-virtual {p0}, Lcom/buzzfeed/ads/video/VideoAdManager;->destroy()V

    goto :goto_3e

    .line 102
    nop

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_3f
        :pswitch_43
        :pswitch_69
    .end packed-switch
.end method

.method public setBuffetVideoAdListener(Lcom/buzzfeed/ads/video/VideoAdListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/buzzfeed/ads/video/VideoAdListener;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/buzzfeed/ads/video/VideoAdManager;->mBuffetVideoAdListener:Lcom/buzzfeed/ads/video/VideoAdListener;

    .line 176
    return-void
.end method

.method public startAd()V
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/buzzfeed/ads/video/VideoAdManager;->mAdsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/buzzfeed/ads/video/VideoAdManager;->mStarted:Z

    if-nez v0, :cond_10

    .line 78
    iget-object v0, p0, Lcom/buzzfeed/ads/video/VideoAdManager;->mAdsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->start()V

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/ads/video/VideoAdManager;->mStarted:Z

    .line 81
    :cond_10
    return-void
.end method

.method public updatePresenter(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;)V
    .registers 3
    .param p1, "presenter"    # Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/buzzfeed/ads/video/VideoAdManager;->mAdPlayer:Lcom/buzzfeed/ads/video/AdPlayer;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/buzzfeed/ads/video/VideoAdManager;->mAdPlayer:Lcom/buzzfeed/ads/video/AdPlayer;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/ads/video/AdPlayer;->updatePresenter(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;)V

    .line 85
    :cond_9
    return-void
.end method
