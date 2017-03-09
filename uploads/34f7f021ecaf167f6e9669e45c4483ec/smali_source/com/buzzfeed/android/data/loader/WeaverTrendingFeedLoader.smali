.class public Lcom/buzzfeed/android/data/loader/WeaverTrendingFeedLoader;
.super Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;
.source "WeaverTrendingFeedLoader.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "paramsBuilder"    # Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;
    .param p3, "weaverServiceHelper"    # Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper;

    .prologue
    .line 19
    const-string/jumbo v0, "trending"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;-><init>(Landroid/content/Context;Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper;Ljava/lang/String;)V

    .line 20
    return-void
.end method


# virtual methods
.method public hasMorePages()Z
    .registers 2

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public load(ZILcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;)V
    .registers 8
    .param p1, "refresh"    # Z
    .param p2, "page"    # I
    .param p3, "callback"    # Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/buzzfeed/android/data/loader/WeaverTrendingFeedLoader;->mLocalFlowList:Lcom/buzzfeed/toolkit/content/FlowList;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/content/FlowList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    if-le p2, v0, :cond_2a

    .line 42
    :cond_b
    iget-object v0, p0, Lcom/buzzfeed/android/data/loader/WeaverTrendingFeedLoader;->mParamsBuilder:Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;->page(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;

    .line 43
    iget-object v0, p0, Lcom/buzzfeed/android/data/loader/WeaverTrendingFeedLoader;->mWeaverServiceHelper:Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper;

    const-string/jumbo v1, "trending"

    iget-object v2, p0, Lcom/buzzfeed/android/data/loader/WeaverTrendingFeedLoader;->mParamsBuilder:Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;

    invoke-virtual {v2}, Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0, p3}, Lcom/buzzfeed/android/data/loader/WeaverTrendingFeedLoader;->getSafeCallback(Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper;->loadFeeds(Ljava/lang/String;Ljava/util/Map;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/data/loader/WeaverTrendingFeedLoader;->mRequest:Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    .line 47
    :goto_29
    return-void

    .line 45
    :cond_2a
    invoke-interface {p3}, Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;->onLoadComplete()V

    goto :goto_29
.end method

.method protected parseModules(Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;)Lcom/buzzfeed/toolkit/content/FlowList;
    .registers 10
    .param p1, "weaverResponse"    # Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;

    .prologue
    .line 24
    new-instance v1, Lcom/buzzfeed/toolkit/content/FlowList;

    invoke-direct {v1}, Lcom/buzzfeed/toolkit/content/FlowList;-><init>()V

    .line 25
    .local v1, "flowList":Lcom/buzzfeed/toolkit/content/FlowList;
    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/data/loader/WeaverTrendingFeedLoader;->updateHasMorePages(Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;)V

    .line 26
    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;->getResults()Ljava/util/List;

    move-result-object v3

    .line 27
    .local v3, "weaverItems":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/toolkit/content/WeaverItem;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_45

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/buzzfeed/toolkit/content/WeaverItem;

    .line 29
    .local v2, "weaverItem":Lcom/buzzfeed/toolkit/content/WeaverItem;
    const/4 v5, 0x1

    new-array v5, v5, [Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;

    const/4 v6, 0x0

    sget-object v7, Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;->QUIZ:Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;

    aput-object v7, v5, v6

    invoke-virtual {p0, v2, v5}, Lcom/buzzfeed/android/data/loader/WeaverTrendingFeedLoader;->containsTreatments(Lcom/buzzfeed/toolkit/content/WeaverItem;[Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 30
    new-instance v0, Lcom/buzzfeed/toolkit/content/FlowItem;

    sget-object v5, Lcom/buzzfeed/toolkit/content/BuffetType;->TRENDING_FEED_TRENDING_QUIZ:Lcom/buzzfeed/toolkit/content/BuffetType;

    invoke-virtual {v5}, Lcom/buzzfeed/toolkit/content/BuffetType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5, v2}, Lcom/buzzfeed/toolkit/content/FlowItem;-><init>(Ljava/lang/String;Lcom/buzzfeed/toolkit/content/Content;)V

    .line 34
    .local v0, "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    :goto_35
    invoke-virtual {v1, v0}, Lcom/buzzfeed/toolkit/content/FlowList;->add(Lcom/buzzfeed/toolkit/content/FlowItem;)Z

    goto :goto_10

    .line 32
    .end local v0    # "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    :cond_39
    new-instance v0, Lcom/buzzfeed/toolkit/content/FlowItem;

    sget-object v5, Lcom/buzzfeed/toolkit/content/BuffetType;->TRENDING:Lcom/buzzfeed/toolkit/content/BuffetType;

    invoke-virtual {v5}, Lcom/buzzfeed/toolkit/content/BuffetType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5, v2}, Lcom/buzzfeed/toolkit/content/FlowItem;-><init>(Ljava/lang/String;Lcom/buzzfeed/toolkit/content/Content;)V

    .restart local v0    # "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    goto :goto_35

    .line 36
    .end local v0    # "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    .end local v2    # "weaverItem":Lcom/buzzfeed/toolkit/content/WeaverItem;
    :cond_45
    return-object v1
.end method

.method public shouldShowAds()Z
    .registers 2

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method
