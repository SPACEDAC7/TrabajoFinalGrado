.class public Lcom/buzzfeed/android/data/loader/BuffetLoader;
.super Ljava/lang/Object;
.source "BuffetLoader.java"


# static fields
.field public static final US_EDITION:Ljava/lang/String; = "en-us"


# instance fields
.field private mCurrentPage:I

.field private mFeed:Lcom/buzzfeed/android/data/Feed;

.field private mIgnorePackages:Z

.field private mLoader:Lcom/buzzfeed/toolkit/content/BaseLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/buzzfeed/android/data/Feed;Z)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "feed"    # Lcom/buzzfeed/android/data/Feed;
    .param p3, "ignorePackages"    # Z

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/buzzfeed/android/data/loader/BuffetLoader;->mCurrentPage:I

    .line 32
    iput-boolean p3, p0, Lcom/buzzfeed/android/data/loader/BuffetLoader;->mIgnorePackages:Z

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/buzzfeed/android/data/loader/BuffetLoader;->getLoaderForFeed(Landroid/content/Context;Lcom/buzzfeed/android/data/Feed;)Lcom/buzzfeed/toolkit/content/BaseLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/data/loader/BuffetLoader;->mLoader:Lcom/buzzfeed/toolkit/content/BaseLoader;

    .line 34
    iput-object p2, p0, Lcom/buzzfeed/android/data/loader/BuffetLoader;->mFeed:Lcom/buzzfeed/android/data/Feed;

    .line 35
    return-void
.end method

.method static synthetic access$010(Lcom/buzzfeed/android/data/loader/BuffetLoader;)I
    .registers 3
    .param p0, "x0"    # Lcom/buzzfeed/android/data/loader/BuffetLoader;

    .prologue
    .line 24
    iget v0, p0, Lcom/buzzfeed/android/data/loader/BuffetLoader;->mCurrentPage:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/buzzfeed/android/data/loader/BuffetLoader;->mCurrentPage:I

    return v0
.end method

.method private getLoaderForFeed(Landroid/content/Context;Lcom/buzzfeed/android/data/Feed;)Lcom/buzzfeed/toolkit/content/BaseLoader;
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "feed"    # Lcom/buzzfeed/android/data/Feed;

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/loader/BuffetLoader;->getUserPoundIdentifier()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/buzzfeed/android/data/loader/BuffetLoader;->setQueryParams(Landroid/content/Context;J)Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;

    move-result-object v2

    .line 39
    .local v2, "paramsBuilder":Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;
    invoke-static {p2}, Lcom/buzzfeed/android/util/FeedUtils;->isHomeFeed(Lcom/buzzfeed/android/data/Feed;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 40
    new-instance v0, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;

    invoke-virtual {p0}, Lcom/buzzfeed/android/data/loader/BuffetLoader;->getWeaverService()Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper;

    move-result-object v3

    const-string v4, "home"

    iget-boolean v5, p0, Lcom/buzzfeed/android/data/loader/BuffetLoader;->mIgnorePackages:Z

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;-><init>(Landroid/content/Context;Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper;Ljava/lang/String;Z)V

    .line 60
    :goto_1c
    return-object v0

    .line 41
    :cond_1d
    invoke-static {p2}, Lcom/buzzfeed/android/util/FeedUtils;->isTrendingFeed(Lcom/buzzfeed/android/data/Feed;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 42
    new-instance v0, Lcom/buzzfeed/android/data/loader/WeaverTrendingFeedLoader;

    invoke-virtual {p0}, Lcom/buzzfeed/android/data/loader/BuffetLoader;->getWeaverService()Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper;

    move-result-object v1

    invoke-direct {v0, p1, v2, v1}, Lcom/buzzfeed/android/data/loader/WeaverTrendingFeedLoader;-><init>(Landroid/content/Context;Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper;)V

    goto :goto_1c

    .line 43
    :cond_2d
    invoke-static {p2}, Lcom/buzzfeed/android/util/FeedUtils;->isNewsFeed(Lcom/buzzfeed/android/data/Feed;)Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/data/loader/BuffetLoader;->getCurrentEdition(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "en-us"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 44
    new-instance v0, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;

    invoke-virtual {p0}, Lcom/buzzfeed/android/data/loader/BuffetLoader;->getWeaverService()Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper;

    move-result-object v3

    const-string v4, "news"

    iget-boolean v5, p0, Lcom/buzzfeed/android/data/loader/BuffetLoader;->mIgnorePackages:Z

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;-><init>(Landroid/content/Context;Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper;Ljava/lang/String;Z)V

    goto :goto_1c

    .line 45
    :cond_4e
    invoke-static {p2}, Lcom/buzzfeed/android/util/FeedUtils;->isVideoFeed(Lcom/buzzfeed/android/data/Feed;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 46
    new-instance v0, Lcom/buzzfeed/android/data/loader/WeaverVideoFeedLoader;

    invoke-virtual {p0}, Lcom/buzzfeed/android/data/loader/BuffetLoader;->getWeaverService()Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper;

    move-result-object v1

    invoke-direct {v0, p1, v2, v1}, Lcom/buzzfeed/android/data/loader/WeaverVideoFeedLoader;-><init>(Landroid/content/Context;Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper;)V

    goto :goto_1c

    .line 47
    :cond_5e
    invoke-static {p2}, Lcom/buzzfeed/android/util/FeedUtils;->isShowsFeed(Lcom/buzzfeed/android/data/Feed;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 48
    new-instance v0, Lcom/buzzfeed/android/data/loader/WeaverShowsListLoader;

    invoke-virtual {p0}, Lcom/buzzfeed/android/data/loader/BuffetLoader;->getWeaverService()Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper;

    move-result-object v1

    invoke-direct {v0, p1, v2, v1}, Lcom/buzzfeed/android/data/loader/WeaverShowsListLoader;-><init>(Landroid/content/Context;Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper;)V

    goto :goto_1c

    .line 49
    :cond_6e
    invoke-static {p2}, Lcom/buzzfeed/android/util/FeedUtils;->isSearchFeed(Lcom/buzzfeed/android/data/Feed;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 50
    new-instance v0, Lcom/buzzfeed/android/data/loader/SearchFeedLoader;

    invoke-direct {v0, p1, p2}, Lcom/buzzfeed/android/data/loader/SearchFeedLoader;-><init>(Landroid/content/Context;Lcom/buzzfeed/android/data/Feed;)V

    goto :goto_1c

    .line 51
    :cond_7a
    invoke-static {p2}, Lcom/buzzfeed/android/util/FeedUtils;->isBookmarkFeed(Lcom/buzzfeed/android/data/Feed;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 52
    new-instance v0, Lcom/buzzfeed/android/data/loader/BookmarkLoader;

    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/data/loader/BuffetLoader;->getBookmarkManager(Landroid/content/Context;)Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/data/loader/BookmarkLoader;-><init>(Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;)V

    goto :goto_1c

    .line 53
    :cond_8a
    invoke-static {p2}, Lcom/buzzfeed/android/util/FeedUtils;->isQuizFeed(Lcom/buzzfeed/android/data/Feed;)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 54
    new-instance v0, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;

    invoke-virtual {p0}, Lcom/buzzfeed/android/data/loader/BuffetLoader;->getWeaverService()Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper;

    move-result-object v1

    const-string v3, "quiz"

    invoke-direct {v0, p1, v2, v1, v3}, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;-><init>(Landroid/content/Context;Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper;Ljava/lang/String;)V

    goto :goto_1c

    .line 55
    :cond_9c
    invoke-static {p2}, Lcom/buzzfeed/android/util/FeedUtils;->isLocalSpiceRack(Lcom/buzzfeed/android/data/Feed;)Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 56
    new-instance v0, Lcom/buzzfeed/android/data/loader/LocalSpiceRackBaseFeedLoader;

    invoke-direct {v0, p1, p2}, Lcom/buzzfeed/android/data/loader/LocalSpiceRackBaseFeedLoader;-><init>(Landroid/content/Context;Lcom/buzzfeed/android/data/Feed;)V

    goto/16 :goto_1c

    .line 57
    :cond_a9
    invoke-static {p2}, Lcom/buzzfeed/android/util/FeedUtils;->isLocalWeaverFeed(Lcom/buzzfeed/android/data/Feed;)Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 58
    new-instance v0, Lcom/buzzfeed/android/data/loader/LocalWeaverLoader;

    invoke-direct {v0, p1}, Lcom/buzzfeed/android/data/loader/LocalWeaverLoader;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1c

    .line 60
    :cond_b6
    new-instance v0, Lcom/buzzfeed/android/data/loader/FeedLoader;

    invoke-virtual {p0}, Lcom/buzzfeed/android/data/loader/BuffetLoader;->getLegacyWeaverService()Lcom/buzzfeed/toolkit/networking/helpers/LegacyFeedServiceHelper;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/buzzfeed/android/data/loader/FeedLoader;-><init>(Landroid/content/Context;Lcom/buzzfeed/android/data/Feed;Lcom/buzzfeed/toolkit/networking/helpers/LegacyFeedServiceHelper;)V

    goto/16 :goto_1c
.end method


# virtual methods
.method public cancelPendingRequest()V
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/buzzfeed/android/data/loader/BuffetLoader;->mLoader:Lcom/buzzfeed/toolkit/content/BaseLoader;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/content/BaseLoader;->cancelRequest()V

    .line 140
    return-void
.end method

.method protected getBookmarkManager(Landroid/content/Context;)Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    invoke-static {p1}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->getInstance(Landroid/content/Context;)Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;

    move-result-object v0

    return-object v0
.end method

.method protected getCurrentEdition(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-static {p1}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getEdition(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFeed()Lcom/buzzfeed/android/data/Feed;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/buzzfeed/android/data/loader/BuffetLoader;->mFeed:Lcom/buzzfeed/android/data/Feed;

    return-object v0
.end method

.method public getFlowList()Lcom/buzzfeed/toolkit/content/FlowList;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/buzzfeed/android/data/loader/BuffetLoader;->mLoader:Lcom/buzzfeed/toolkit/content/BaseLoader;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/content/BaseLoader;->getLocalFlowList()Lcom/buzzfeed/toolkit/content/FlowList;

    move-result-object v0

    return-object v0
.end method

.method protected getLegacyWeaverService()Lcom/buzzfeed/toolkit/networking/helpers/LegacyFeedServiceHelper;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 66
    invoke-static {}, Lcom/buzzfeed/toolkit/networking/NetworkService;->getLegacyFeedService()Lcom/buzzfeed/toolkit/networking/helpers/LegacyFeedServiceHelper;

    move-result-object v0

    return-object v0
.end method

.method public getLoader()Lcom/buzzfeed/toolkit/content/BaseLoader;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/buzzfeed/android/data/loader/BuffetLoader;->mLoader:Lcom/buzzfeed/toolkit/content/BaseLoader;

    return-object v0
.end method

.method public getPage()I
    .registers 2

    .prologue
    .line 135
    iget v0, p0, Lcom/buzzfeed/android/data/loader/BuffetLoader;->mCurrentPage:I

    return v0
.end method

.method protected getUserPoundIdentifier()J
    .registers 3

    .prologue
    .line 79
    invoke-static {}, Lcom/buzzfeed/analytics/client/DustbusterClient;->getInstance()Lcom/buzzfeed/analytics/client/DustbusterClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/buzzfeed/analytics/client/DustbusterClient;->getUserPoundIdentifier()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getWeaverService()Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 75
    invoke-static {}, Lcom/buzzfeed/toolkit/networking/NetworkService;->getWeaverService()Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper;

    move-result-object v0

    return-object v0
.end method

.method public hasMorePages()Z
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/buzzfeed/android/data/loader/BuffetLoader;->mLoader:Lcom/buzzfeed/toolkit/content/BaseLoader;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/content/BaseLoader;->hasMorePages()Z

    move-result v0

    return v0
.end method

.method public isOnFirstPage()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 143
    iget v1, p0, Lcom/buzzfeed/android/data/loader/BuffetLoader;->mCurrentPage:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected load(ZILcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;)V
    .registers 5
    .param p1, "refresh"    # Z
    .param p2, "page"    # I
    .param p3, "callback"    # Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/buzzfeed/android/data/loader/BuffetLoader;->mLoader:Lcom/buzzfeed/toolkit/content/BaseLoader;

    invoke-virtual {v0, p1, p2, p3}, Lcom/buzzfeed/toolkit/content/BaseLoader;->load(ZILcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;)V

    .line 112
    return-void
.end method

.method public loadNextPage(Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;Z)V
    .registers 5
    .param p1, "callback"    # Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;
    .param p2, "refresh"    # Z

    .prologue
    .line 95
    iget v0, p0, Lcom/buzzfeed/android/data/loader/BuffetLoader;->mCurrentPage:I

    new-instance v1, Lcom/buzzfeed/android/data/loader/BuffetLoader$1;

    invoke-direct {v1, p0, p1}, Lcom/buzzfeed/android/data/loader/BuffetLoader$1;-><init>(Lcom/buzzfeed/android/data/loader/BuffetLoader;Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;)V

    invoke-virtual {p0, p2, v0, v1}, Lcom/buzzfeed/android/data/loader/BuffetLoader;->load(ZILcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;)V

    .line 107
    iget v0, p0, Lcom/buzzfeed/android/data/loader/BuffetLoader;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/buzzfeed/android/data/loader/BuffetLoader;->mCurrentPage:I

    .line 108
    return-void
.end method

.method protected setQueryParams(Landroid/content/Context;J)Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userPoundIdentifier"    # J

    .prologue
    .line 87
    new-instance v0, Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;

    invoke-direct {v0}, Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;-><init>()V

    .line 88
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;->clientId(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;

    move-result-object v0

    .line 89
    invoke-static {p1}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getWeaverLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;->language(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;

    move-result-object v0

    .line 90
    invoke-static {p1}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getWeaverEdition(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;->country(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;

    move-result-object v0

    return-object v0
.end method

.method public shouldShowAds()Z
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/buzzfeed/android/data/loader/BuffetLoader;->mLoader:Lcom/buzzfeed/toolkit/content/BaseLoader;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/content/BaseLoader;->shouldShowAds()Z

    move-result v0

    return v0
.end method
