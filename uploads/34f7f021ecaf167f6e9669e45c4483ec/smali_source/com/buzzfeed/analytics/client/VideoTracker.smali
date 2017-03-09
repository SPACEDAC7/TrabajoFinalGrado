.class public Lcom/buzzfeed/analytics/client/VideoTracker;
.super Ljava/lang/Object;
.source "VideoTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/analytics/client/VideoTracker$ScreenName;,
        Lcom/buzzfeed/analytics/client/VideoTracker$GoogleAnalyticsCustomDimensions;,
        Lcom/buzzfeed/analytics/client/VideoTracker$GoogleAnalyticsAction;,
        Lcom/buzzfeed/analytics/client/VideoTracker$GoogleAnalyticsCategory;,
        Lcom/buzzfeed/analytics/client/VideoTracker$GACategory;
    }
.end annotation


# static fields
.field private static final NOT_SET:J = -0x1L

.field private static final NO_POSITION:I = -0x1

.field private static final TAG:Ljava/lang/String;

.field private static sBuzzFeedTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

.field private static sDustBusterVideoClient:Lcom/buzzfeed/analytics/client/DustBusterVideoClient;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static sSingleton:Lcom/buzzfeed/analytics/client/VideoTracker;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private mBuzzFeedTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

.field private mDustBusterVideoClient:Lcom/buzzfeed/analytics/client/DustBusterVideoClient;

.field private mDustbusterClient:Lcom/buzzfeed/analytics/client/DustbusterClient;

.field private mIsLandscapeOrientation:Z

.field private mIsVideoPlaying:Z

.field private mIsVideoPlayingGA:Z

.field private mPlayReason:Ljava/lang/String;

.field private mPlayerLocation:Ljava/lang/String;

.field private mPositionInFeed:I

.field private mScreenName:Ljava/lang/String;

.field private mVideoDuration:J

.field private mVideoId:Ljava/lang/String;

.field private mVideoTitle:Ljava/lang/String;

.field private mVideoUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const-class v0, Lcom/buzzfeed/analytics/client/VideoTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/analytics/client/VideoTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/buzzfeed/analytics/client/DustbusterClient;)V
    .registers 3
    .param p1, "dustbusterClient"    # Lcom/buzzfeed/analytics/client/DustbusterClient;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v0, "auto"

    iput-object v0, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mPlayReason:Ljava/lang/String;

    .line 85
    invoke-direct {p0}, Lcom/buzzfeed/analytics/client/VideoTracker;->setupAnalytics()V

    .line 86
    iput-object p1, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mDustbusterClient:Lcom/buzzfeed/analytics/client/DustbusterClient;

    .line 87
    return-void
.end method

.method private createMapForCustomDimensions()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 665
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/buzzfeed/analytics/client/VideoTracker;->createMapForCustomDimensions(Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static createMapForCustomDimensions(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .registers 6
    .param p0, "videoId"    # Ljava/lang/String;
    .param p1, "videoTitle"    # Ljava/lang/String;
    .param p2, "isLandscapeOrientation"    # Z
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 689
    if-eqz p2, :cond_25

    const-string v1, "landscape"

    .line 690
    .local v1, "orientationString":Ljava/lang/String;
    :goto_4
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 691
    .local v0, "customDimensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    return-object v0

    .line 689
    .end local v0    # "customDimensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v1    # "orientationString":Ljava/lang/String;
    :cond_25
    const-string v1, "portrait"

    goto :goto_4
.end method

.method private createMapForCustomDimensions(Z)Ljava/util/Map;
    .registers 5
    .param p1, "shouldApplyOrientation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 675
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 676
    .local v0, "customDimensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mVideoId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mVideoTitle:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    if-eqz p1, :cond_2a

    .line 680
    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0}, Lcom/buzzfeed/analytics/client/VideoTracker;->getOrientationsString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    :cond_2a
    return-object v0
.end method

.method public static getInstance()Lcom/buzzfeed/analytics/client/VideoTracker;
    .registers 3

    .prologue
    .line 64
    sget-object v0, Lcom/buzzfeed/analytics/client/VideoTracker;->sSingleton:Lcom/buzzfeed/analytics/client/VideoTracker;

    if-nez v0, :cond_17

    .line 65
    const-class v1, Lcom/buzzfeed/analytics/client/VideoTracker;

    monitor-enter v1

    .line 66
    :try_start_7
    sget-object v0, Lcom/buzzfeed/analytics/client/VideoTracker;->sSingleton:Lcom/buzzfeed/analytics/client/VideoTracker;

    if-nez v0, :cond_16

    .line 67
    new-instance v0, Lcom/buzzfeed/analytics/client/VideoTracker;

    invoke-static {}, Lcom/buzzfeed/analytics/client/DustbusterClient;->getInstance()Lcom/buzzfeed/analytics/client/DustbusterClient;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/buzzfeed/analytics/client/VideoTracker;-><init>(Lcom/buzzfeed/analytics/client/DustbusterClient;)V

    sput-object v0, Lcom/buzzfeed/analytics/client/VideoTracker;->sSingleton:Lcom/buzzfeed/analytics/client/VideoTracker;

    .line 69
    :cond_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_1a

    .line 71
    :cond_17
    sget-object v0, Lcom/buzzfeed/analytics/client/VideoTracker;->sSingleton:Lcom/buzzfeed/analytics/client/VideoTracker;

    return-object v0

    .line 69
    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method private getOrientationsString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 698
    iget-boolean v0, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mIsLandscapeOrientation:Z

    if-eqz v0, :cond_7

    const-string v0, "landscape"

    :goto_6
    return-object v0

    :cond_7
    const-string v0, "portrait"

    goto :goto_6
.end method

.method static getOrientationsString(Z)Ljava/lang/String;
    .registers 2
    .param p0, "isLandscapeOrientation"    # Z
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 703
    if-eqz p0, :cond_5

    const-string v0, "landscape"

    :goto_4
    return-object v0

    :cond_5
    const-string v0, "portrait"

    goto :goto_4
.end method

.method static setBuzzFeedTracker(Lcom/buzzfeed/analytics/client/BuzzFeedTracker;)V
    .registers 1
    .param p0, "buzzFeedTracker"    # Lcom/buzzfeed/analytics/client/BuzzFeedTracker;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 81
    sput-object p0, Lcom/buzzfeed/analytics/client/VideoTracker;->sBuzzFeedTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    .line 82
    return-void
.end method

.method static setDustBusterVideoClient(Lcom/buzzfeed/analytics/client/DustBusterVideoClient;)V
    .registers 1
    .param p0, "dustBusterVideoClient"    # Lcom/buzzfeed/analytics/client/DustBusterVideoClient;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 76
    sput-object p0, Lcom/buzzfeed/analytics/client/VideoTracker;->sDustBusterVideoClient:Lcom/buzzfeed/analytics/client/DustBusterVideoClient;

    .line 77
    return-void
.end method

.method private setupAnalytics()V
    .registers 4

    .prologue
    .line 648
    invoke-static {}, Lcom/buzzfeed/analytics/Analytics;->getInstance()Lcom/buzzfeed/analytics/Analytics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/buzzfeed/analytics/Analytics;->getConfiguration()Lcom/buzzfeed/analytics/Analytics$Configuration;

    move-result-object v0

    .line 650
    .local v0, "config":Lcom/buzzfeed/analytics/Analytics$Configuration;
    sget-object v1, Lcom/buzzfeed/analytics/client/VideoTracker;->sDustBusterVideoClient:Lcom/buzzfeed/analytics/client/DustBusterVideoClient;

    if-nez v1, :cond_32

    new-instance v1, Lcom/buzzfeed/analytics/client/DustBusterVideoClient;

    .line 651
    invoke-static {}, Lcom/buzzfeed/analytics/client/DustbusterClient;->getInstance()Lcom/buzzfeed/analytics/client/DustbusterClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/buzzfeed/analytics/client/DustbusterClient;->getDustbuster()Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/buzzfeed/analytics/client/DustBusterVideoClient;-><init>(Lcom/buzzfeed/toolkit/dustbuster/Dustbuster;)V

    :goto_19
    iput-object v1, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mDustBusterVideoClient:Lcom/buzzfeed/analytics/client/DustBusterVideoClient;

    .line 653
    iget-object v2, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mDustBusterVideoClient:Lcom/buzzfeed/analytics/client/DustBusterVideoClient;

    invoke-virtual {v0}, Lcom/buzzfeed/analytics/Analytics$Configuration;->isProductionBuild()Z

    move-result v1

    if-nez v1, :cond_35

    const/4 v1, 0x1

    :goto_24
    invoke-virtual {v2, v1}, Lcom/buzzfeed/analytics/client/DustBusterVideoClient;->setLoggingEnabled(Z)V

    .line 656
    sget-object v1, Lcom/buzzfeed/analytics/client/VideoTracker;->sBuzzFeedTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    if-nez v1, :cond_37

    .line 657
    invoke-static {}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->getInstance()Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    move-result-object v1

    :goto_2f
    iput-object v1, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mBuzzFeedTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    .line 659
    return-void

    .line 651
    :cond_32
    sget-object v1, Lcom/buzzfeed/analytics/client/VideoTracker;->sDustBusterVideoClient:Lcom/buzzfeed/analytics/client/DustBusterVideoClient;

    goto :goto_19

    .line 653
    :cond_35
    const/4 v1, 0x0

    goto :goto_24

    .line 657
    :cond_37
    sget-object v1, Lcom/buzzfeed/analytics/client/VideoTracker;->sBuzzFeedTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    goto :goto_2f
.end method


# virtual methods
.method public resetVideoData()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 109
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mVideoDuration:J

    .line 110
    iput-object v2, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mVideoId:Ljava/lang/String;

    .line 111
    iput-object v2, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mVideoTitle:Ljava/lang/String;

    .line 112
    iput-object v2, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mVideoUrl:Ljava/lang/String;

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mPositionInFeed:I

    .line 114
    return-void
.end method

.method public sendAutoPauseEvent(J)V
    .registers 14
    .param p1, "currentPositionInVideo"    # J

    .prologue
    .line 214
    iget-object v0, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mDustBusterVideoClient:Lcom/buzzfeed/analytics/client/DustBusterVideoClient;

    iget-object v1, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mScreenName:Ljava/lang/String;

    iget-object v2, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mVideoId:Ljava/lang/String;

    const-string v3, "pause"

    const-string v4, "auto"

    iget-boolean v5, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mIsLandscapeOrientation:Z

    iget-object v6, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mPlayerLocation:Ljava/lang/String;

    iget v7, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mPositionInFeed:I

    move-wide v8, p1

    invoke-virtual/range {v0 .. v9}, Lcom/buzzfeed/analytics/client/DustBusterVideoClient;->traceVideoPlayerEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJ)V

    .line 224
    return-void
.end method

.method public sendAutoPlayBegins(Ljava/lang/String;)V
    .registers 6
    .param p1, "category"    # Ljava/lang/String;
        .annotation build Lcom/buzzfeed/analytics/client/VideoTracker$GACategory;
        .end annotation
    .end param

    .prologue
    .line 544
    iget-object v0, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mBuzzFeedTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    const-string/jumbo v1, "video:auto-play"

    iget-object v2, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mVideoId:Ljava/lang/String;

    .line 548
    invoke-direct {p0}, Lcom/buzzfeed/analytics/client/VideoTracker;->createMapForCustomDimensions()Ljava/util/Map;

    move-result-object v3

    .line 544
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 549
    return-void
.end method

.method public sendAutoPlayEvent(Ljava/lang/String;J)V
    .registers 6
    .param p1, "category"    # Ljava/lang/String;
        .annotation build Lcom/buzzfeed/analytics/client/VideoTracker$GACategory;
        .end annotation
    .end param
    .param p2, "currentPositionInVideo"    # J

    .prologue
    .line 169
    const-string v0, "auto"

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/buzzfeed/analytics/client/VideoTracker;->sendPlayEventWithReason(Ljava/lang/String;Ljava/lang/String;J)V

    .line 170
    return-void
.end method

.method public sendClickToPlayEvent(Ljava/lang/String;J)V
    .registers 6
    .param p1, "category"    # Ljava/lang/String;
        .annotation build Lcom/buzzfeed/analytics/client/VideoTracker$GACategory;
        .end annotation
    .end param
    .param p2, "currentPositionInVideo"    # J

    .prologue
    .line 234
    const-string/jumbo v0, "tap_player_controls"

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/buzzfeed/analytics/client/VideoTracker;->sendPlayEventWithReason(Ljava/lang/String;Ljava/lang/String;J)V

    .line 235
    invoke-virtual {p0, p1}, Lcom/buzzfeed/analytics/client/VideoTracker;->sendGAClickVideoPlayEvent(Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public sendClickToResumeVideoEvent(J)V
    .registers 14
    .param p1, "currentPositionInVideo"    # J

    .prologue
    .line 258
    iget-object v0, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mDustBusterVideoClient:Lcom/buzzfeed/analytics/client/DustBusterVideoClient;

    iget-object v1, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mScreenName:Ljava/lang/String;

    iget-object v2, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mVideoId:Ljava/lang/String;

    const-string v3, "play"

    const-string/jumbo v4, "tap_player_controls"

    iget-boolean v5, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mIsLandscapeOrientation:Z

    iget-object v6, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mPlayerLocation:Ljava/lang/String;

    iget v7, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mPositionInFeed:I

    move-wide v8, p1

    invoke-virtual/range {v0 .. v9}, Lcom/buzzfeed/analytics/client/DustBusterVideoClient;->traceVideoPlayerEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJ)V

    .line 268
    iget-object v0, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mBuzzFeedTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    const-string v1, "MediaViewer"

    const-string v2, "click:video-resume"

    const/4 v3, 0x0

    .line 272
    invoke-direct {p0}, Lcom/buzzfeed/analytics/client/VideoTracker;->createMapForCustomDimensions()Ljava/util/Map;

    move-result-object v4

    .line 268
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 273
    return-void
.end method

.method public sendClickVideoPauseEvent(J)V
    .registers 14
    .param p1, "currentPositionInVideo"    # J

    .prologue
    .line 282
    iget-object v0, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mDustBusterVideoClient:Lcom/buzzfeed/analytics/client/DustBusterVideoClient;

    iget-object v1, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mScreenName:Ljava/lang/String;

    iget-object v2, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mVideoId:Ljava/lang/String;

    const-string v3, "pause"

    const-string/jumbo v4, "tap_player_controls"

    iget-boolean v5, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mIsLandscapeOrientation:Z

    iget-object v6, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mPlayerLocation:Ljava/lang/String;

    iget v7, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mPositionInFeed:I

    move-wide v8, p1

    invoke-virtual/range {v0 .. v9}, Lcom/buzzfeed/analytics/client/DustBusterVideoClient;->traceVideoPlayerEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJ)V

    .line 292
    iget-object v0, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mBuzzFeedTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    const-string v1, "MediaViewer"

    const-string v2, "click:video-pause"

    const/4 v3, 0x0

    .line 296
    invoke-direct {p0}, Lcom/buzzfeed/analytics/client/VideoTracker;->createMapForCustomDimensions()Ljava/util/Map;

    move-result-object v4

    .line 292
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 297
    return-void
.end method

.method public sendCloseEvent()V
    .registers 6

    .prologue
    .line 555
    iget-object v0, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mBuzzFeedTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    const-string v1, "MediaViewer"

    const-string v2, "click:back"

    const/4 v3, 0x0

    .line 559
    invoke-direct {p0}, Lcom/buzzfeed/analytics/client/VideoTracker;->createMapForCustomDimensions()Ljava/util/Map;

    move-result-object v4

    .line 555
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 560
    return-void
.end method

.method public sendEndScrubPosition(JZ)V
    .registers 15
    .param p1, "currentPlaybackTime"    # J
    .param p3, "isResuming"    # Z

    .prologue
    .line 444
    if-eqz p3, :cond_16

    .line 445
    iget-object v0, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mDustBusterVideoClient:Lcom/buzzfeed/analytics/client/DustBusterVideoClient;

    iget-object v1, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mScreenName:Ljava/lang/String;

    iget-object v2, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mVideoId:Ljava/lang/String;

    const-string v3, "play"

    const-string v4, "scrub_end"

    iget-boolean v5, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mIsLandscapeOrientation:Z

    iget-object v6, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mPlayerLocation:Ljava/lang/String;

    iget v7, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mPositionInFeed:I

    move-wide v8, p1

    invoke-virtual/range {v0 .. v9}, Lcom/buzzfeed/analytics/client/DustBusterVideoClient;->traceVideoPlayerEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJ)V

    .line 456
    :cond_16
    iget-object v0, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mDustBusterVideoClient:Lcom/buzzfeed/analytics/client/DustBusterVideoClient;

    iget-object v1, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mScreenName:Ljava/lang/String;

    iget-object v2, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mVideoId:Ljava/lang/String;

    const-string v3, "scrub_end"

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mIsLandscapeOrientation:Z

    iget-object v6, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mPlayerLocation:Ljava/lang/String;

    iget v7, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mPositionInFeed:I

    move-wide v8, p1

    invoke-virtual/range {v0 .. v9}, Lcom/buzzfeed/analytics/client/DustBusterVideoClient;->traceVideoPlayerEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJ)V

    .line 465
    return-void
.end method

.method public sendEndVideoEvent(JLjava/lang/String;)V
    .registers 15
    .param p1, "currentPositionInVideo"    # J
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/buzzfeed/analytics/client/VideoTracker;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".sendEndVideoEvent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 332
    .local v10, "TAG":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ending video event, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mVideoTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", at player position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mDustBusterVideoClient:Lcom/buzzfeed/analytics/client/DustBusterVideoClient;

    iget-object v1, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mScreenName:Ljava/lang/String;

    iget-object v2, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mVideoId:Ljava/lang/String;

    const-string v3, "pause"

    iget-boolean v5, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mIsLandscapeOrientation:Z

    iget-object v6, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mPlayerLocation:Ljava/lang/String;

    iget v7, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mPositionInFeed:I

    move-object v4, p3

    move-wide v8, p1

    invoke-virtual/range {v0 .. v9}, Lcom/buzzfeed/analytics/client/DustBusterVideoClient;->traceVideoPlayerEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJ)V

    .line 343
    return-void
.end method

.method public sendEnterMediaViewer(J)V
    .registers 14
    .param p1, "currentPositionInVideo"    # J

    .prologue
    .line 509
    iget-object v0, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mDustBusterVideoClient:Lcom/buzzfeed/analytics/client/DustBusterVideoClient;

    iget-object v1, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mScreenName:Ljava/lang/String;

    iget-object v2, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mVideoId:Ljava/lang/String;

    const-string v3, "enter_media_viewer"

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mIsLandscapeOrientation:Z

    iget-object v6, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mPlayerLocation:Ljava/lang/String;

    iget v7, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mPositionInFeed:I

    move-wide v8, p1

    invoke-virtual/range {v0 .. v9}, Lcom/buzzfeed/analytics/client/DustBusterVideoClient;->traceVideoPlayerEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJ)V

    .line 513
    iget-object v0, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mBuzzFeedTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    const-string v1, "Feed"

    const-string v2, "click:enter-media-viewer"

    iget v3, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mPositionInFeed:I

    .line 516
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 517
    invoke-direct {p0}, Lcom/buzzfeed/analytics/client/VideoTracker;->createMapForCustomDimensions()Ljava/util/Map;

    move-result-object v4

    .line 513
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 518
    return-void
.end method

.method public sendGAClickVideoPlayEvent(Ljava/lang/String;)V
    .registers 6
    .param p1, "category"    # Ljava/lang/String;
        .annotation build Lcom/buzzfeed/analytics/client/VideoTracker$GACategory;
        .end annotation
    .end param

    .prologue
    .line 244
    iget-object v0, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mBuzzFeedTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    const-string v1, "click:video-play"

    iget-object v2, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mVideoId:Ljava/lang/String;

    .line 248
    invoke-direct {p0}, Lcom/buzzfeed/analytics/client/VideoTracker;->createMapForCustomDimensions()Ljava/util/Map;

    move-result-object v3

    .line 244
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 249
    return-void
.end method

.method public sendInstallAppEvent()V
    .registers 3

    .prologue
    .line 398
    iget-object v0, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mDustBusterVideoClient:Lcom/buzzfeed/analytics/client/DustBusterVideoClient;

    iget-object v1, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mScreenName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/buzzfeed/analytics/client/DustBusterVideoClient;->traceInstallAppEvent(Ljava/lang/String;)V

    .line 399
    return-void
.end method

.method public sendLeaveMediaViewer(J)V
    .registers 14
    .param p1, "currentPositionInVideo"    # J

    .prologue
    .line 521
    iget-object v0, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mDustBusterVideoClient:Lcom/buzzfeed/analytics/client/DustBusterVideoClient;

    iget-object v1, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mScreenName:Ljava/lang/String;

    iget-object v2, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mVideoId:Ljava/lang/String;

    const-string v3, "close_media_viewer"

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mIsLandscapeOrientation:Z

    iget-object v6, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mPlayerLocation:Ljava/lang/String;

    iget v7, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mPositionInFeed:I

    move-wide v8, p1

    invoke-virtual/range {v0 .. v9}, Lcom/buzzfeed/analytics/client/DustBusterVideoClient;->traceVideoPlayerEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJ)V

    .line 530
    return-void
.end method

.method public sendOpenShareSheetFromViewer()V
    .registers 5

    .prologue
    .line 596
    iget-object v0, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mBuzzFeedTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    const-string v1, "MediaViewer"

    const-string v2, "click:open-share-sheet"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    return-void
.end method

.method public sendOrientationChange(J)V
    .registers 14
    .param p1, "currentPositionInVideo"    # J

    .prologue
    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/buzzfeed/analytics/client/VideoTracker;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".sendOrientationChange"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 352
    .local v10, "TAG":Ljava/lang/String;
    iget-boolean v0, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mIsLandscapeOrientation:Z

    if-nez v0, :cond_53

    const-string v3, "enter_landscape"

    .line 353
    .local v3, "action":Ljava/lang/String;
    :goto_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mVideoTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", at player position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mDustBusterVideoClient:Lcom/buzzfeed/analytics/client/DustBusterVideoClient;

    iget-object v1, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mScreenName:Ljava/lang/String;

    iget-object v2, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mVideoId:Ljava/lang/String;

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mIsLandscapeOrientation:Z

    iget-object v6, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mPlayerLocation:Ljava/lang/String;

    iget v7, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mPositionInFeed:I

    move-wide v8, p1

    invoke-virtual/range {v0 .. v9}, Lcom/buzzfeed/analytics/client/DustBusterVideoClient;->traceVideoPlayerEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJ)V

    .line 360
    return-void

    .line 352
    .end local v3    # "action":Ljava/lang/String;
    :cond_53
    const-string v3, "enter_portrait"

    goto :goto_1b
.end method

.method public sendPauseEvent(J)V
    .registers 14
    .param p1, "currentPositionInVideo"    # J

    .prologue
    const/4 v10, 0x0

    .line 485
    iget-boolean v0, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mIsVideoPlaying:Z

    if-eqz v0, :cond_1c

    .line 486
    iget-object v0, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mDustBusterVideoClient:Lcom/buzzfeed/analytics/client/DustBusterVideoClient;

    iget-object v1, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mScreenName:Ljava/lang/String;

    iget-object v2, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mVideoId:Ljava/lang/String;

    const-string v3, "pause"

    const-string/jumbo v4, "tap_player_controls"

    iget-boolean v5, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mIsLandscapeOrientation:Z

    iget-object v6, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mPlayerLocation:Ljava/lang/String;

    iget v7, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mPositionInFeed:I

    move-wide v8, p1

    invoke-virtual/range {v0 .. v9}, Lcom/buzzfeed/analytics/client/DustBusterVideoClient;->traceVideoPlayerEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJ)V

    .line 495
    iput-boolean v10, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mIsVideoPlaying:Z

    .line 498
    :cond_1c
    iget-boolean v0, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mIsVideoPlayingGA:Z

    if-eqz v0, :cond_30

    .line 499
    iget-object v0, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mBuzzFeedTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    const-string v1, "MediaViewer"

    const-string v2, "click:video-pause"

    const/4 v3, 0x0

    .line 503
    invoke-direct {p0}, Lcom/buzzfeed/analytics/client/VideoTracker;->createMapForCustomDimensions()Ljava/util/Map;

    move-result-object v4

    .line 499
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 504
    iput-boolean v10, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mIsVideoPlayingGA:Z

    .line 506
    :cond_30
    return-void
.end method

.method public sendPlayEvent()V
    .registers 6

    .prologue
    .line 471
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mIsVideoPlayingGA:Z

    .line 472
    iget-object v0, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mBuzzFeedTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    const-string v1, "Feed"

    const-string v2, "click:video-play"

    iget-object v3, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mVideoId:Ljava/lang/String;

    .line 476
    invoke-direct {p0}, Lcom/buzzfeed/analytics/client/VideoTracker;->createMapForCustomDimensions()Ljava/util/Map;

    move-result-object v4

    .line 472
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 477
    return-void
.end method

.method public sendPlayEventWithReason(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 16
    .param p1, "category"    # Ljava/lang/String;
        .annotation build Lcom/buzzfeed/analytics/client/VideoTracker$GACategory;
        .end annotation
    .end param
    .param p2, "playbackReason"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "currentPositionInVideo"    # J

    .prologue
    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/buzzfeed/analytics/client/VideoTracker;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".sendPlayEventWithReason"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 184
    .local v10, "TAG":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting video event, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mVideoTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playbackReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", at player position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mDustBusterVideoClient:Lcom/buzzfeed/analytics/client/DustBusterVideoClient;

    iget-object v1, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mScreenName:Ljava/lang/String;

    iget-object v2, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mVideoId:Ljava/lang/String;

    const-string v3, "play"

    iget-boolean v5, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mIsLandscapeOrientation:Z

    iget-object v6, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mPlayerLocation:Ljava/lang/String;

    iget v7, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mPositionInFeed:I

    move-object v4, p2

    move-wide v8, p3

    invoke-virtual/range {v0 .. v9}, Lcom/buzzfeed/analytics/client/DustBusterVideoClient;->traceVideoPlayerEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJ)V

    .line 198
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_72

    .line 199
    iget-object v0, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mBuzzFeedTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    const-string/jumbo v1, "video:auto-play"

    iget-object v2, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mVideoId:Ljava/lang/String;

    .line 203
    invoke-direct {p0}, Lcom/buzzfeed/analytics/client/VideoTracker;->createMapForCustomDimensions()Ljava/util/Map;

    move-result-object v3

    .line 199
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 205
    :cond_72
    return-void
.end method

.method public sendPlaybackProgress(Ljava/lang/String;I)V
    .registers 7
    .param p1, "category"    # Ljava/lang/String;
        .annotation build Lcom/buzzfeed/analytics/client/VideoTracker$GACategory;
        .end annotation
    .end param
    .param p2, "percentComplete"    # I

    .prologue
    .line 536
    iget-object v0, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mBuzzFeedTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    const-string/jumbo v1, "video:playback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 539
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 540
    invoke-direct {p0}, Lcom/buzzfeed/analytics/client/VideoTracker;->createMapForCustomDimensions()Ljava/util/Map;

    move-result-object v3

    .line 536
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 541
    return-void
.end method

.method public sendShareShowEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "application"    # Ljava/lang/String;
    .param p2, "shareButtonLocation"    # Ljava/lang/String;
    .param p3, "shareActivitySource"    # Ljava/lang/String;

    .prologue
    .line 391
    iget-object v0, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mDustBusterVideoClient:Lcom/buzzfeed/analytics/client/DustBusterVideoClient;

    iget-object v1, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mScreenName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/buzzfeed/analytics/client/DustBusterVideoClient;->traceShareShowEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    return-void
.end method

.method public sendShareVideoEvent(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 20
    .param p1, "currentPositionInVideo"    # J
    .param p3, "application"    # Ljava/lang/String;
    .param p4, "shareButtonLocation"    # Ljava/lang/String;
    .param p5, "shareActivitySource"    # Ljava/lang/String;
    .param p6, "gaShareAction"    # Ljava/lang/String;

    .prologue
    .line 373
    iget-object v2, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mDustBusterVideoClient:Lcom/buzzfeed/analytics/client/DustBusterVideoClient;

    iget-object v3, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mScreenName:Ljava/lang/String;

    iget-object v4, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mVideoId:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mIsLandscapeOrientation:Z

    iget-object v6, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mPlayerLocation:Ljava/lang/String;

    iget v7, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mPositionInFeed:I

    move-wide v8, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-virtual/range {v2 .. v12}, Lcom/buzzfeed/analytics/client/DustBusterVideoClient;->traceShareEvent(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object v2, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mBuzzFeedTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    const-string v3, "Share"

    .line 380
    invoke-static/range {p3 .. p3}, Lcom/buzzfeed/analytics/util/IntentStringConverter;->convertIntentToApp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 377
    move-object/from16 v0, p6

    invoke-virtual {v2, v3, v0, v4}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method public sendSharingFromFeed()V
    .registers 5

    .prologue
    .line 589
    iget-object v0, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mBuzzFeedTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    const-string v1, "Feed"

    const-string v2, "click:open-share-sheet"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    return-void
.end method

.method public sendShowIconTapEvent(Ljava/lang/String;)V
    .registers 8
    .param p1, "showId"    # Ljava/lang/String;

    .prologue
    .line 566
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/buzzfeed/analytics/client/VideoTracker;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "sendShowIconTapEvent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 567
    .local v0, "TAG":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2b

    iget-object v2, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mVideoId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2b

    iget-object v2, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mVideoTitle:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 568
    :cond_2b
    const-string v2, "Unable to track UI tap event. Required fields are not available."

    invoke-static {v0, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    :goto_30
    return-void

    .line 572
    :cond_31
    iget-object v2, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mBuzzFeedTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    const-string v3, "MediaViewer"

    const-string v4, "click:show-icon"

    const/4 v5, 0x0

    .line 575
    invoke-direct {p0, v5}, Lcom/buzzfeed/analytics/client/VideoTracker;->createMapForCustomDimensions(Z)Ljava/util/Map;

    move-result-object v5

    .line 572
    invoke-virtual {v2, v3, v4, p1, v5}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 577
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 579
    .local v1, "formattedItemId":Ljava/lang/String;
    iget-object v2, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mDustbusterClient:Lcom/buzzfeed/analytics/client/DustbusterClient;

    iget-object v3, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mScreenName:Ljava/lang/String;

    const-string v4, "show_icon"

    const-string v5, "media_viewer"

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackUiTapEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30
.end method

.method public sendStartScrubPosition(JZ)V
    .registers 15
    .param p1, "currentPlaybackTime"    # J
    .param p3, "isPausing"    # Z

    .prologue
    .line 410
    if-eqz p3, :cond_16

    .line 411
    iget-object v0, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mDustBusterVideoClient:Lcom/buzzfeed/analytics/client/DustBusterVideoClient;

    iget-object v1, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mScreenName:Ljava/lang/String;

    iget-object v2, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mVideoId:Ljava/lang/String;

    const-string v3, "pause"

    const-string v4, "scrub_start"

    iget-boolean v5, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mIsLandscapeOrientation:Z

    iget-object v6, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mPlayerLocation:Ljava/lang/String;

    iget v7, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mPositionInFeed:I

    move-wide v8, p1

    invoke-virtual/range {v0 .. v9}, Lcom/buzzfeed/analytics/client/DustBusterVideoClient;->traceVideoPlayerEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJ)V

    .line 423
    :cond_16
    iget-object v0, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mDustBusterVideoClient:Lcom/buzzfeed/analytics/client/DustBusterVideoClient;

    iget-object v1, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mScreenName:Ljava/lang/String;

    iget-object v2, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mVideoId:Ljava/lang/String;

    const-string v3, "scrub_start"

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mIsLandscapeOrientation:Z

    iget-object v6, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mPlayerLocation:Ljava/lang/String;

    iget v7, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mPositionInFeed:I

    move-wide v8, p1

    invoke-virtual/range {v0 .. v9}, Lcom/buzzfeed/analytics/client/DustBusterVideoClient;->traceVideoPlayerEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJ)V

    .line 433
    return-void
.end method

.method public sendStartVideoEvent(J)V
    .registers 14
    .param p1, "currentPositionInVideo"    # J

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/buzzfeed/analytics/client/VideoTracker;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".sendStartVideoEvent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 146
    .local v10, "TAG":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting video event , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mVideoTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", at player position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mDustBusterVideoClient:Lcom/buzzfeed/analytics/client/DustBusterVideoClient;

    iget-object v1, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mScreenName:Ljava/lang/String;

    iget-object v2, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mVideoId:Ljava/lang/String;

    const-string v3, "play"

    iget-object v4, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mPlayReason:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mIsLandscapeOrientation:Z

    iget-object v6, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mPlayerLocation:Ljava/lang/String;

    iget v7, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mPositionInFeed:I

    move-wide v8, p1

    invoke-virtual/range {v0 .. v9}, Lcom/buzzfeed/analytics/client/DustBusterVideoClient;->traceVideoPlayerEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJ)V

    .line 158
    const-string v0, "auto"

    iput-object v0, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mPlayReason:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public sendVideoCompleteEvent(J)V
    .registers 14
    .param p1, "currentPositionInVideo"    # J

    .prologue
    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/buzzfeed/analytics/client/VideoTracker;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".sendVideoCompleteEvdent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 307
    .local v10, "TAG":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Complete video event, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mVideoTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", at player position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mDustBusterVideoClient:Lcom/buzzfeed/analytics/client/DustBusterVideoClient;

    iget-object v1, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mScreenName:Ljava/lang/String;

    iget-object v2, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mVideoId:Ljava/lang/String;

    const-string v3, "pause"

    const-string/jumbo v4, "video_complete"

    iget-boolean v5, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mIsLandscapeOrientation:Z

    iget-object v6, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mPlayerLocation:Ljava/lang/String;

    iget v7, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mPositionInFeed:I

    move-wide v8, p1

    invoke-virtual/range {v0 .. v9}, Lcom/buzzfeed/analytics/client/DustBusterVideoClient;->traceVideoPlayerEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJ)V

    .line 319
    return-void
.end method

.method public setDeviceOrientation(Z)Lcom/buzzfeed/analytics/client/VideoTracker;
    .registers 2
    .param p1, "isLandscapeOrientation"    # Z

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mIsLandscapeOrientation:Z

    .line 124
    return-object p0
.end method

.method public setLoggingEnabled(Z)V
    .registers 3
    .param p1, "loggingEnabled"    # Z

    .prologue
    .line 102
    iget-object v0, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mDustBusterVideoClient:Lcom/buzzfeed/analytics/client/DustBusterVideoClient;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/analytics/client/DustBusterVideoClient;->setLoggingEnabled(Z)V

    .line 103
    return-void
.end method

.method public setPlayReason(Ljava/lang/String;)Lcom/buzzfeed/analytics/client/VideoTracker;
    .registers 2
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mPlayReason:Ljava/lang/String;

    .line 136
    return-object p0
.end method

.method public setPlayerLocation(Ljava/lang/String;)Lcom/buzzfeed/analytics/client/VideoTracker;
    .registers 2
    .param p1, "playerLocation"    # Ljava/lang/String;

    .prologue
    .line 640
    iput-object p1, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mPlayerLocation:Ljava/lang/String;

    .line 641
    return-object p0
.end method

.method public setPositionInFeed(I)Lcom/buzzfeed/analytics/client/VideoTracker;
    .registers 2
    .param p1, "positionInFeed"    # I

    .prologue
    .line 623
    iput p1, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mPositionInFeed:I

    .line 624
    return-object p0
.end method

.method public setScreenName(Ljava/lang/String;)Lcom/buzzfeed/analytics/client/VideoTracker;
    .registers 2
    .param p1, "screenName"    # Ljava/lang/String;

    .prologue
    .line 603
    iput-object p1, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mScreenName:Ljava/lang/String;

    .line 604
    return-object p0
.end method

.method public setVideoDuration(J)Lcom/buzzfeed/analytics/client/VideoTracker;
    .registers 4
    .param p1, "videoDuration"    # J

    .prologue
    .line 628
    iput-wide p1, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mVideoDuration:J

    .line 629
    return-object p0
.end method

.method public setVideoId(Ljava/lang/String;)Lcom/buzzfeed/analytics/client/VideoTracker;
    .registers 2
    .param p1, "videoId"    # Ljava/lang/String;

    .prologue
    .line 608
    iput-object p1, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mVideoId:Ljava/lang/String;

    .line 609
    return-object p0
.end method

.method public setVideoTitle(Ljava/lang/String;)Lcom/buzzfeed/analytics/client/VideoTracker;
    .registers 2
    .param p1, "videoTitle"    # Ljava/lang/String;

    .prologue
    .line 613
    iput-object p1, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mVideoTitle:Ljava/lang/String;

    .line 614
    return-object p0
.end method

.method public setVideoUrl(Ljava/lang/String;)Lcom/buzzfeed/analytics/client/VideoTracker;
    .registers 2
    .param p1, "videoUrl"    # Ljava/lang/String;

    .prologue
    .line 618
    iput-object p1, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mVideoUrl:Ljava/lang/String;

    .line 619
    return-object p0
.end method

.method public trackShowFeedPageView(Ljava/lang/String;I)V
    .registers 8
    .param p1, "showName"    # Ljava/lang/String;
    .param p2, "page"    # I

    .prologue
    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/list/show/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "screenName":Ljava/lang/String;
    iget-object v2, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mBuzzFeedTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v1, 0x1

    if-le p2, v1, :cond_46

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_34
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackPageView(Ljava/lang/String;Ljava/util/Map;)V

    .line 98
    iget-object v1, p0, Lcom/buzzfeed/analytics/client/VideoTracker;->mDustbusterClient:Lcom/buzzfeed/analytics/client/DustbusterClient;

    invoke-virtual {v1, v0}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackFeedPageView(Ljava/lang/String;)V

    .line 99
    return-void

    .line 97
    :cond_46
    const-string v1, ""

    goto :goto_34
.end method
