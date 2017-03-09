.class Lcom/buzzfeed/android/data/loader/WeaverVideoFeedLoader;
.super Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;
.source "WeaverVideoFeedLoader.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "paramsBuilder"    # Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;
    .param p3, "weaverServiceHelper"    # Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper;

    .prologue
    .line 29
    const-string/jumbo v0, "videos"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;-><init>(Landroid/content/Context;Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper;Ljava/lang/String;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected parseModules(Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;)Lcom/buzzfeed/toolkit/content/FlowList;
    .registers 10
    .param p1, "weaverResponse"    # Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;

    .prologue
    .line 34
    new-instance v1, Lcom/buzzfeed/toolkit/content/FlowList;

    invoke-direct {v1}, Lcom/buzzfeed/toolkit/content/FlowList;-><init>()V

    .line 35
    .local v1, "flowList":Lcom/buzzfeed/toolkit/content/FlowList;
    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/data/loader/WeaverVideoFeedLoader;->updateHasMorePages(Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;)V

    .line 36
    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;->getResults()Ljava/util/List;

    move-result-object v4

    .line 38
    .local v4, "weaverItems":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/toolkit/content/WeaverItem;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_10
    :goto_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_42

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/buzzfeed/toolkit/content/WeaverItem;

    .line 39
    .local v2, "item":Lcom/buzzfeed/toolkit/content/WeaverItem;
    const-string/jumbo v6, "video"

    invoke-virtual {v2}, Lcom/buzzfeed/toolkit/content/WeaverItem;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-static {v2}, Lcom/buzzfeed/toolkit/util/WeaverVideoUtils;->ensureVideoContent(Lcom/buzzfeed/toolkit/content/VideoContent;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 40
    iget-object v6, p0, Lcom/buzzfeed/android/data/loader/WeaverVideoFeedLoader;->mApplicationContext:Landroid/content/Context;

    invoke-static {v6, v2}, Lcom/buzzfeed/toolkit/util/WeaverVideoUtils;->getVideoSpecificBuffetType(Landroid/content/Context;Lcom/buzzfeed/toolkit/content/VideoContent;)Lcom/buzzfeed/toolkit/content/BuffetType;

    move-result-object v3

    .line 41
    .local v3, "type":Lcom/buzzfeed/toolkit/content/BuffetType;
    new-instance v0, Lcom/buzzfeed/toolkit/content/FlowItem;

    invoke-virtual {v3}, Lcom/buzzfeed/toolkit/content/BuffetType;->name()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6, v2}, Lcom/buzzfeed/toolkit/content/FlowItem;-><init>(Ljava/lang/String;Lcom/buzzfeed/toolkit/content/Content;)V

    .line 42
    .local v0, "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    invoke-virtual {v1, v0}, Lcom/buzzfeed/toolkit/content/FlowList;->add(Lcom/buzzfeed/toolkit/content/FlowItem;)Z

    goto :goto_10

    .line 46
    .end local v0    # "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    .end local v2    # "item":Lcom/buzzfeed/toolkit/content/WeaverItem;
    .end local v3    # "type":Lcom/buzzfeed/toolkit/content/BuffetType;
    :cond_42
    return-object v1
.end method

.method public shouldShowAds()Z
    .registers 2

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method
