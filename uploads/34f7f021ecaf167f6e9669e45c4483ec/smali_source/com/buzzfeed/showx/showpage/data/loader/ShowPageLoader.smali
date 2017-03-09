.class public final Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;
.super Ljava/lang/Object;
.source "ShowPageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader$LoadFailedException;,
        Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader$Callbacks;
    }
.end annotation


# instance fields
.field private final mAppContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCurrentPage:I

.field private final mFeedId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mHasMorePages:Z

.field private mIsLoading:Z

.field private final mParamsBuilder:Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mServiceHelper:Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mShowPageCall:Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/buzzfeed/toolkit/util/retrofit/SafeCall",
            "<",
            "Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/buzzfeed/toolkit/networking/Environment;Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "showId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "environment"    # Lcom/buzzfeed/toolkit/networking/Environment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "paramsBuilder"    # Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;->mHasMorePages:Z

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;->mIsLoading:Z

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/EZUtil;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;->mAppContext:Landroid/content/Context;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shows-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/buzzfeed/toolkit/util/EZUtil;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;->mFeedId:Ljava/lang/String;

    .line 60
    invoke-static {p4}, Lcom/buzzfeed/toolkit/util/EZUtil;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;

    iput-object v0, p0, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;->mParamsBuilder:Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;

    .line 61
    new-instance v1, Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper;

    invoke-static {p3}, Lcom/buzzfeed/toolkit/util/EZUtil;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/networking/Environment;

    invoke-direct {v1, p1, v0}, Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper;-><init>(Landroid/content/Context;Lcom/buzzfeed/toolkit/networking/Environment;)V

    iput-object v1, p0, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;->mServiceHelper:Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper;

    .line 62
    return-void
.end method

.method static synthetic access$002(Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;->mIsLoading:Z

    return p1
.end method

.method static synthetic access$100(Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;)Z
    .registers 3
    .param p0, "x0"    # Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;
    .param p1, "x1"    # Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;->ensureResponseContent(Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;ILcom/buzzfeed/toolkit/weaver/model/WeaverResponse;)Lcom/buzzfeed/showx/showpage/data/model/ShowPage;
    .registers 4
    .param p0, "x0"    # Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;->buildShowPageModel(ILcom/buzzfeed/toolkit/weaver/model/WeaverResponse;)Lcom/buzzfeed/showx/showpage/data/model/ShowPage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;I)I
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;->mCurrentPage:I

    return p1
.end method

.method static synthetic access$402(Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;->mHasMorePages:Z

    return p1
.end method

.method private buildFlowListFromResponse(Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;)Lcom/buzzfeed/toolkit/content/FlowList;
    .registers 10
    .param p1, "response"    # Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;

    .prologue
    .line 156
    new-instance v2, Lcom/buzzfeed/toolkit/content/FlowList;

    invoke-direct {v2}, Lcom/buzzfeed/toolkit/content/FlowList;-><init>()V

    .line 158
    .local v2, "itemCollection":Lcom/buzzfeed/toolkit/content/FlowList;
    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;->getResults()Ljava/util/List;

    move-result-object v4

    .line 160
    .local v4, "weaverItems":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/toolkit/content/WeaverItem;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_d
    :goto_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/toolkit/content/WeaverItem;

    .line 161
    .local v1, "item":Lcom/buzzfeed/toolkit/content/WeaverItem;
    const-string/jumbo v6, "video"

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/content/WeaverItem;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-static {v1}, Lcom/buzzfeed/toolkit/util/WeaverVideoUtils;->ensureVideoContent(Lcom/buzzfeed/toolkit/content/VideoContent;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 162
    iget-object v6, p0, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;->mAppContext:Landroid/content/Context;

    invoke-static {v6, v1}, Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;->getItemTypeFromVideoContent(Landroid/content/Context;Lcom/buzzfeed/toolkit/content/VideoContent;)Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;

    move-result-object v3

    .line 163
    .local v3, "type":Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;
    new-instance v0, Lcom/buzzfeed/toolkit/content/FlowItem;

    invoke-virtual {v3}, Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;->name()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6, v1}, Lcom/buzzfeed/toolkit/content/FlowItem;-><init>(Ljava/lang/String;Lcom/buzzfeed/toolkit/content/Content;)V

    .line 164
    .local v0, "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    invoke-virtual {v2, v0}, Lcom/buzzfeed/toolkit/content/FlowList;->add(Lcom/buzzfeed/toolkit/content/FlowItem;)Z

    goto :goto_d

    .line 168
    .end local v0    # "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    .end local v1    # "item":Lcom/buzzfeed/toolkit/content/WeaverItem;
    .end local v3    # "type":Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;
    :cond_3f
    return-object v2
.end method

.method private buildShowPageModel(ILcom/buzzfeed/toolkit/weaver/model/WeaverResponse;)Lcom/buzzfeed/showx/showpage/data/model/ShowPage;
    .registers 7
    .param p1, "page"    # I
    .param p2, "response"    # Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;

    .prologue
    .line 137
    invoke-direct {p0, p2}, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;->buildFlowListFromResponse(Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;)Lcom/buzzfeed/toolkit/content/FlowList;

    move-result-object v0

    .line 139
    .local v0, "flowList":Lcom/buzzfeed/toolkit/content/FlowList;
    new-instance v1, Lcom/buzzfeed/showx/showpage/data/model/ShowPage;

    invoke-direct {v1}, Lcom/buzzfeed/showx/showpage/data/model/ShowPage;-><init>()V

    .line 141
    .local v1, "model":Lcom/buzzfeed/showx/showpage/data/model/ShowPage;
    iput p1, v1, Lcom/buzzfeed/showx/showpage/data/model/ShowPage;->pageNumber:I

    .line 142
    iput-object v0, v1, Lcom/buzzfeed/showx/showpage/data/model/ShowPage;->flowList:Ljava/util/List;

    .line 144
    iget-object v3, p2, Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;->embedded:Lcom/buzzfeed/toolkit/content/WeaverEmbed;

    if-eqz v3, :cond_28

    iget-object v3, p2, Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;->embedded:Lcom/buzzfeed/toolkit/content/WeaverEmbed;

    invoke-virtual {v3}, Lcom/buzzfeed/toolkit/content/WeaverEmbed;->hasShows()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 145
    iget-object v3, p2, Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;->embedded:Lcom/buzzfeed/toolkit/content/WeaverEmbed;

    invoke-virtual {v3}, Lcom/buzzfeed/toolkit/content/WeaverEmbed;->getShows()Ljava/util/List;

    move-result-object v2

    .line 146
    .local v2, "shows":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;>;"
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;

    iput-object v3, v1, Lcom/buzzfeed/showx/showpage/data/model/ShowPage;->show:Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;

    .line 149
    .end local v2    # "shows":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;>;"
    :cond_28
    return-object v1
.end method

.method private ensureResponseContent(Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;)Z
    .registers 3
    .param p1, "response"    # Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;

    .prologue
    .line 130
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;->getResults()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;->getResults()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private getShowPage(ILcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader$Callbacks;)V
    .registers 7
    .param p1, "page"    # I
    .param p2, "callbacks"    # Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader$Callbacks;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;->mParamsBuilder:Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;->page(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;

    .line 84
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;->mServiceHelper:Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper;

    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;->mFeedId:Ljava/lang/String;

    iget-object v2, p0, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;->mParamsBuilder:Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;

    invoke-virtual {v2}, Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;->build()Ljava/util/Map;

    move-result-object v2

    new-instance v3, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader$1;

    invoke-direct {v3, p0, p2, p1}, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader$1;-><init>(Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader$Callbacks;I)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper;->loadFeeds(Ljava/lang/String;Ljava/util/Map;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;->mShowPageCall:Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    .line 127
    return-void
.end method


# virtual methods
.method public cancelPendingRequests()V
    .registers 2

    .prologue
    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;->mIsLoading:Z

    .line 191
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;->mShowPageCall:Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    if-eqz v0, :cond_f

    .line 192
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;->mShowPageCall:Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;->cancel()V

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;->mShowPageCall:Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    .line 195
    :cond_f
    return-void
.end method

.method public hasMorePages()Z
    .registers 2

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;->mHasMorePages:Z

    return v0
.end method

.method public isLoading()Z
    .registers 2

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;->mIsLoading:Z

    return v0
.end method

.method public loadNextPage(Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader$Callbacks;)V
    .registers 4
    .param p1, "callbacks"    # Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader$Callbacks;

    .prologue
    .line 70
    iget-boolean v1, p0, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;->mIsLoading:Z

    if-nez v1, :cond_a

    invoke-virtual {p0}, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;->hasMorePages()Z

    move-result v1

    if-nez v1, :cond_17

    .line 71
    :cond_a
    if-eqz p1, :cond_16

    .line 72
    const-string v0, "Load in progress, or there are no more pages to load."

    .line 73
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader$LoadFailedException;

    invoke-direct {v1, v0}, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader$LoadFailedException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader$Callbacks;->onLoadError(Ljava/lang/Exception;)V

    .line 80
    .end local v0    # "message":Ljava/lang/String;
    :cond_16
    :goto_16
    return-void

    .line 78
    :cond_17
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;->mIsLoading:Z

    .line 79
    iget v1, p0, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;->mCurrentPage:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1, p1}, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;->getShowPage(ILcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader$Callbacks;)V

    goto :goto_16
.end method
