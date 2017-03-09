.class public Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;
.super Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;
.source "ShowPageTracker.java"

# interfaces
.implements Lcom/buzzfeed/showx/showpage/ShowPageContract$Tracker;


# instance fields
.field private mBuzzFeedTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/buzzfeed/analytics/client/VideoTracker;Lcom/buzzfeed/analytics/client/BuzzFeedTracker;Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "screenName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "videoTracker"    # Lcom/buzzfeed/analytics/client/VideoTracker;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "buzzFeedTracker"    # Lcom/buzzfeed/analytics/client/BuzzFeedTracker;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "videoSurfacePresenter"    # Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 54
    invoke-direct {p0, p1, p3, p5}, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;-><init>(Landroid/content/Context;Lcom/buzzfeed/analytics/client/VideoTracker;Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;)V

    .line 55
    invoke-static {p2}, Lcom/buzzfeed/toolkit/util/EZUtil;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;->setScreenName(Ljava/lang/String;)V

    .line 56
    iput-object p4, p0, Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;->mBuzzFeedTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    .line 57
    return-void
.end method


# virtual methods
.method public trackEnableNotificationCanceled(Ljava/lang/String;)V
    .registers 7
    .param p1, "showId"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-static {}, Lcom/buzzfeed/analytics/client/DustbusterClient;->getInstance()Lcom/buzzfeed/analytics/client/DustbusterClient;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/list/show/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cancel_enable_notifications"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "show:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "show_page"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackUiTapEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public trackOpenShareSheet()V
    .registers 5

    .prologue
    .line 68
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;->mBuzzFeedTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    .line 69
    invoke-virtual {p0}, Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/buzzfeed/showx/R$string;->ga_category_feed:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-virtual {p0}, Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/buzzfeed/showx/R$string;->ga_action_open_share_sheet:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 68
    invoke-virtual {v0, v1, v2, v3}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public trackPageView(I)V
    .registers 6
    .param p1, "page"    # I

    .prologue
    .line 117
    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;->mBuzzFeedTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;->getScreenName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v0, 0x1

    if-le p1, v0, :cond_3d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackPageView(Ljava/lang/String;Ljava/util/Map;)V

    .line 118
    invoke-static {}, Lcom/buzzfeed/analytics/client/DustbusterClient;->getInstance()Lcom/buzzfeed/analytics/client/DustbusterClient;

    move-result-object v0

    invoke-virtual {p0}, Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;->getScreenName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackFeedPageView(Ljava/lang/String;)V

    .line 119
    return-void

    .line 117
    :cond_3d
    const-string v0, ""

    goto :goto_25
.end method

.method public trackTapSubscribeButton(Ljava/lang/String;Z)V
    .registers 9
    .param p1, "showId"    # Ljava/lang/String;
    .param p2, "isSubscribed"    # Z

    .prologue
    .line 123
    if-eqz p2, :cond_50

    invoke-virtual {p0}, Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/buzzfeed/showx/R$string;->ga_action_tap_subscribe:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "gaAction":Ljava/lang/String;
    :goto_c
    if-eqz p2, :cond_5b

    const-string/jumbo v1, "subscribe"

    .line 125
    .local v1, "uiItem":Ljava/lang/String;
    :goto_11
    iget-object v2, p0, Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;->mBuzzFeedTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    invoke-virtual {p0}, Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/buzzfeed/showx/R$string;->ga_category_show:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, p1}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-static {}, Lcom/buzzfeed/analytics/client/DustbusterClient;->getInstance()Lcom/buzzfeed/analytics/client/DustbusterClient;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/list/show/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "show:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "show_page"

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackUiTapEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void

    .line 123
    .end local v0    # "gaAction":Ljava/lang/String;
    .end local v1    # "uiItem":Ljava/lang/String;
    :cond_50
    invoke-virtual {p0}, Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/buzzfeed/showx/R$string;->ga_action_tap_unsubscribe:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 124
    .restart local v0    # "gaAction":Ljava/lang/String;
    :cond_5b
    const-string/jumbo v1, "unsubscribe"

    goto :goto_11
.end method

.method public trackUnitImpressions(Ljava/lang/String;Ljava/util/Collection;)V
    .registers 5
    .param p1, "screenName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/buzzfeed/analytics/model/UnitImpression;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p2, "impressions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/buzzfeed/analytics/model/UnitImpression;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    if-eqz p2, :cond_19

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 62
    invoke-static {}, Lcom/buzzfeed/analytics/client/DustbusterClient;->getInstance()Lcom/buzzfeed/analytics/client/DustbusterClient;

    move-result-object v0

    invoke-virtual {p0}, Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;->getScreenName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackUnitImpressions(Ljava/lang/String;Ljava/util/Collection;)V

    .line 64
    :cond_19
    return-void
.end method

.method public trackUnsubscribeNotificationCanceled(Ljava/lang/String;)V
    .registers 7
    .param p1, "showId"    # Ljava/lang/String;

    .prologue
    .line 136
    invoke-static {}, Lcom/buzzfeed/analytics/client/DustbusterClient;->getInstance()Lcom/buzzfeed/analytics/client/DustbusterClient;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/list/show/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cancel_unsubscribe_notifications"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "show:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "show_page"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackUiTapEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public trackVideoCellClicked(Lcom/buzzfeed/toolkit/content/VideoContent;IJZ)V
    .registers 9
    .param p1, "videoContent"    # Lcom/buzzfeed/toolkit/content/VideoContent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "positionInFeed"    # I
    .param p3, "positionInVideo"    # J
    .param p5, "isPlaying"    # Z

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;->getVideoEventTracker()Lcom/buzzfeed/analytics/client/VideoTracker;

    move-result-object v0

    .line 78
    .local v0, "tracker":Lcom/buzzfeed/analytics/client/VideoTracker;
    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/VideoContent;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/analytics/client/VideoTracker;->setVideoId(Ljava/lang/String;)Lcom/buzzfeed/analytics/client/VideoTracker;

    move-result-object v1

    .line 79
    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/VideoContent;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/buzzfeed/analytics/client/VideoTracker;->setVideoTitle(Ljava/lang/String;)Lcom/buzzfeed/analytics/client/VideoTracker;

    move-result-object v1

    const-string v2, "in_feed"

    .line 80
    invoke-virtual {v1, v2}, Lcom/buzzfeed/analytics/client/VideoTracker;->setPlayerLocation(Ljava/lang/String;)Lcom/buzzfeed/analytics/client/VideoTracker;

    move-result-object v1

    .line 81
    invoke-virtual {v1, p2}, Lcom/buzzfeed/analytics/client/VideoTracker;->setPositionInFeed(I)Lcom/buzzfeed/analytics/client/VideoTracker;

    move-result-object v1

    .line 82
    invoke-virtual {p0}, Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/buzzfeed/toolkit/util/UIUtil;->isLandscape(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/buzzfeed/analytics/client/VideoTracker;->setDeviceOrientation(Z)Lcom/buzzfeed/analytics/client/VideoTracker;

    .line 84
    if-nez p5, :cond_30

    .line 85
    const-string v1, "Feed"

    invoke-virtual {v0, v1}, Lcom/buzzfeed/analytics/client/VideoTracker;->sendGAClickVideoPlayEvent(Ljava/lang/String;)V

    .line 88
    :cond_30
    invoke-virtual {v0, p3, p4}, Lcom/buzzfeed/analytics/client/VideoTracker;->sendEnterMediaViewer(J)V

    .line 91
    invoke-virtual {p0}, Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;->configureTrackerForCurrentContent()V

    .line 92
    return-void
.end method

.method public trackVideoShareAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 13
    .param p1, "videoId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "videoContentUri"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "application"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "positionInFeed"    # I

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;->getVideoEventTracker()Lcom/buzzfeed/analytics/client/VideoTracker;

    move-result-object v0

    .line 100
    .local v0, "tracker":Lcom/buzzfeed/analytics/client/VideoTracker;
    invoke-virtual {v0, p1}, Lcom/buzzfeed/analytics/client/VideoTracker;->setVideoId(Ljava/lang/String;)Lcom/buzzfeed/analytics/client/VideoTracker;

    move-result-object v1

    .line 101
    invoke-virtual {v1, p4}, Lcom/buzzfeed/analytics/client/VideoTracker;->setPositionInFeed(I)Lcom/buzzfeed/analytics/client/VideoTracker;

    move-result-object v1

    const-string v2, "in_feed"

    .line 102
    invoke-virtual {v1, v2}, Lcom/buzzfeed/analytics/client/VideoTracker;->setPlayerLocation(Ljava/lang/String;)Lcom/buzzfeed/analytics/client/VideoTracker;

    move-result-object v1

    .line 103
    invoke-virtual {p0}, Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/buzzfeed/toolkit/util/UIUtil;->isLandscape(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/buzzfeed/analytics/client/VideoTracker;->setDeviceOrientation(Z)Lcom/buzzfeed/analytics/client/VideoTracker;

    move-result-object v1

    .line 105
    invoke-virtual {p0}, Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;->getVideoSurfacePresenter()Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils;->getLastKnownVideoPosition(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;Ljava/lang/String;)J

    move-result-wide v2

    const-string v5, "feed_module"

    const-string v6, "share_sheet"

    .line 109
    invoke-virtual {p0}, Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v7, Lcom/buzzfeed/showx/R$string;->ga_action_feed_share_activity:I

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v4, p3

    .line 104
    invoke-virtual/range {v1 .. v7}, Lcom/buzzfeed/analytics/client/VideoTracker;->sendShareVideoEvent(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;->configureTrackerForCurrentContent()V

    .line 113
    return-void
.end method
