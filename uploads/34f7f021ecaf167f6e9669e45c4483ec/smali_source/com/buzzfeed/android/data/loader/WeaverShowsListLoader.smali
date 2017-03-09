.class public Lcom/buzzfeed/android/data/loader/WeaverShowsListLoader;
.super Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;
.source "WeaverShowsListLoader.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "paramsBuilder"    # Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;
    .param p3, "weaverServiceHelper"    # Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper;

    .prologue
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shows-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/buzzfeed/toolkit/content/BuffetType;->SHOW:Lcom/buzzfeed/toolkit/content/BuffetType;

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/content/BuffetType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;-><init>(Landroid/content/Context;Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper;Ljava/lang/String;)V

    .line 20
    return-void
.end method


# virtual methods
.method public load(ZILcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;)V
    .registers 7
    .param p1, "refresh"    # Z
    .param p2, "page"    # I
    .param p3, "callback"    # Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/buzzfeed/android/data/loader/WeaverShowsListLoader;->mLocalFlowList:Lcom/buzzfeed/toolkit/content/FlowList;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/content/FlowList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 37
    iget-object v0, p0, Lcom/buzzfeed/android/data/loader/WeaverShowsListLoader;->mWeaverServiceHelper:Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper;

    iget-object v1, p0, Lcom/buzzfeed/android/data/loader/WeaverShowsListLoader;->mParamsBuilder:Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, p3}, Lcom/buzzfeed/android/data/loader/WeaverShowsListLoader;->getSafeCallback(Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper;->loadShowsList(Ljava/util/Map;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/data/loader/WeaverShowsListLoader;->mRequest:Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    .line 41
    :goto_1a
    return-void

    .line 39
    :cond_1b
    invoke-interface {p3}, Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;->onLoadComplete()V

    goto :goto_1a
.end method

.method protected parseModules(Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;)Lcom/buzzfeed/toolkit/content/FlowList;
    .registers 8
    .param p1, "weaverResponse"    # Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;

    .prologue
    .line 24
    new-instance v1, Lcom/buzzfeed/toolkit/content/FlowList;

    invoke-direct {v1}, Lcom/buzzfeed/toolkit/content/FlowList;-><init>()V

    .line 25
    .local v1, "flowList":Lcom/buzzfeed/toolkit/content/FlowList;
    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/data/loader/WeaverShowsListLoader;->updateHasMorePages(Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;)V

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

    if-eqz v5, :cond_2b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/buzzfeed/toolkit/content/WeaverItem;

    .line 28
    .local v2, "weaverItem":Lcom/buzzfeed/toolkit/content/WeaverItem;
    new-instance v0, Lcom/buzzfeed/toolkit/content/FlowItem;

    sget-object v5, Lcom/buzzfeed/toolkit/content/BuffetType;->SHOW:Lcom/buzzfeed/toolkit/content/BuffetType;

    invoke-virtual {v5}, Lcom/buzzfeed/toolkit/content/BuffetType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5, v2}, Lcom/buzzfeed/toolkit/content/FlowItem;-><init>(Ljava/lang/String;Lcom/buzzfeed/toolkit/content/Content;)V

    .line 29
    .local v0, "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    invoke-virtual {v1, v0}, Lcom/buzzfeed/toolkit/content/FlowList;->add(Lcom/buzzfeed/toolkit/content/FlowItem;)Z

    goto :goto_10

    .line 31
    .end local v0    # "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    .end local v2    # "weaverItem":Lcom/buzzfeed/toolkit/content/WeaverItem;
    :cond_2b
    return-object v1
.end method

.method public shouldShowAds()Z
    .registers 2

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method
