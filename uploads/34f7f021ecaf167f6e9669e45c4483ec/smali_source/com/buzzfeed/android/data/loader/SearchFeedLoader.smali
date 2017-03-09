.class public Lcom/buzzfeed/android/data/loader/SearchFeedLoader;
.super Lcom/buzzfeed/android/data/loader/BaseFeedLoader;
.source "SearchFeedLoader.java"


# static fields
.field private static final SEARCH_RESPONSE:Ljava/lang/String; = "response"

.field private static final SEARCH_RESULTS:Ljava/lang/String; = "results"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const-class v0, Lcom/buzzfeed/android/data/loader/SearchFeedLoader;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/data/loader/SearchFeedLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/buzzfeed/android/data/Feed;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "feed"    # Lcom/buzzfeed/android/data/Feed;

    .prologue
    .line 35
    invoke-static {}, Lcom/buzzfeed/toolkit/networking/NetworkService;->getLegacyFeedService()Lcom/buzzfeed/toolkit/networking/helpers/LegacyFeedServiceHelper;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/buzzfeed/android/data/loader/BaseFeedLoader;-><init>(Landroid/content/Context;Lcom/buzzfeed/android/data/Feed;Lcom/buzzfeed/toolkit/networking/helpers/LegacyFeedServiceHelper;)V

    .line 36
    return-void
.end method

.method static synthetic access$002(Lcom/buzzfeed/android/data/loader/SearchFeedLoader;Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/data/loader/SearchFeedLoader;
    .param p1, "x1"    # Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/buzzfeed/android/data/loader/SearchFeedLoader;->mRequest:Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    return-object p1
.end method

.method static synthetic access$102(Lcom/buzzfeed/android/data/loader/SearchFeedLoader;Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/data/loader/SearchFeedLoader;
    .param p1, "x1"    # Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/buzzfeed/android/data/loader/SearchFeedLoader;->mRequest:Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    return-object p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/buzzfeed/android/data/loader/SearchFeedLoader;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/buzzfeed/android/data/loader/SearchFeedLoader;)Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/data/loader/SearchFeedLoader;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/buzzfeed/android/data/loader/SearchFeedLoader;->mCallback:Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;

    return-object v0
.end method

.method static synthetic access$402(Lcom/buzzfeed/android/data/loader/SearchFeedLoader;Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/data/loader/SearchFeedLoader;
    .param p1, "x1"    # Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/buzzfeed/android/data/loader/SearchFeedLoader;->mRequest:Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    return-object p1
.end method

.method static synthetic access$500(Lcom/buzzfeed/android/data/loader/SearchFeedLoader;)Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/data/loader/SearchFeedLoader;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/buzzfeed/android/data/loader/SearchFeedLoader;->mCallback:Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;

    return-object v0
.end method

.method private fixRelativeImagePaths(Lcom/buzzfeed/toolkit/content/FlowList;)V
    .registers 10
    .param p1, "flowList"    # Lcom/buzzfeed/toolkit/content/FlowList;

    .prologue
    .line 119
    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/content/FlowList;->getList()Ljava/util/List;

    move-result-object v1

    .line 120
    .local v1, "flowItems":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/toolkit/content/FlowItem;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_41

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/buzzfeed/toolkit/content/FlowItem;

    .line 121
    .local v4, "item":Lcom/buzzfeed/toolkit/content/FlowItem;
    invoke-virtual {v4}, Lcom/buzzfeed/toolkit/content/FlowItem;->getContent()Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v7

    instance-of v7, v7, Lcom/buzzfeed/toolkit/content/Buzz;

    if-eqz v7, :cond_8

    .line 122
    invoke-virtual {v4}, Lcom/buzzfeed/toolkit/content/FlowItem;->getContent()Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/content/Buzz;

    .line 123
    .local v0, "buzz":Lcom/buzzfeed/toolkit/content/Buzz;
    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/content/Buzz;->getSponsorUserImageUrl()Ljava/lang/String;

    move-result-object v5

    .line 124
    .local v5, "sponsorImageUrl":Ljava/lang/String;
    if-eqz v5, :cond_3f

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3f

    const/4 v3, 0x1

    .line 125
    .local v3, "isRelativeUrl":Z
    :goto_31
    if-eqz v3, :cond_8

    .line 126
    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/content/Buzz;->getSponsorUserImageUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getUrlWithStaticBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "fullSponsorImageUrl":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/buzzfeed/toolkit/content/Buzz;->setSponsorUserImageUrl(Ljava/lang/String;)V

    goto :goto_8

    .line 124
    .end local v2    # "fullSponsorImageUrl":Ljava/lang/String;
    .end local v3    # "isRelativeUrl":Z
    :cond_3f
    const/4 v3, 0x0

    goto :goto_31

    .line 131
    .end local v0    # "buzz":Lcom/buzzfeed/toolkit/content/Buzz;
    .end local v4    # "item":Lcom/buzzfeed/toolkit/content/FlowItem;
    .end local v5    # "sponsorImageUrl":Ljava/lang/String;
    :cond_41
    return-void
.end method


# virtual methods
.method protected getBaseFeedUrl(I)Ljava/lang/String;
    .registers 3
    .param p1, "page"    # I

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getUrlParameters(I)Ljava/util/Map;
    .registers 4
    .param p1, "page"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 73
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/buzzfeed/android/data/loader/SearchFeedLoader;->mFeed:Lcom/buzzfeed/android/data/Feed;

    invoke-virtual {v1}, Lcom/buzzfeed/android/data/Feed;->getSearchParams()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 74
    invoke-super {p0, p1}, Lcom/buzzfeed/android/data/loader/BaseFeedLoader;->getUrlParameters(I)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 75
    return-object v0
.end method

.method public hasMorePages()Z
    .registers 2

    .prologue
    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method protected loadExecute()V
    .registers 4

    .prologue
    .line 45
    iget-object v0, p0, Lcom/buzzfeed/android/data/loader/SearchFeedLoader;->mLegacyFeedService:Lcom/buzzfeed/toolkit/networking/helpers/LegacyFeedServiceHelper;

    iget v1, p0, Lcom/buzzfeed/android/data/loader/SearchFeedLoader;->mPage:I

    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/data/loader/SearchFeedLoader;->getUrlParameters(I)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/buzzfeed/android/data/loader/SearchFeedLoader$1;

    invoke-direct {v2, p0}, Lcom/buzzfeed/android/data/loader/SearchFeedLoader$1;-><init>(Lcom/buzzfeed/android/data/loader/SearchFeedLoader;)V

    invoke-virtual {v0, v1, v2}, Lcom/buzzfeed/toolkit/networking/helpers/LegacyFeedServiceHelper;->searchFeeds(Ljava/util/Map;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/data/loader/SearchFeedLoader;->mRequest:Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    .line 68
    return-void
.end method

.method protected parseFeed(Lorg/json/JSONObject;)V
    .registers 5
    .param p1, "jsonParts"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 81
    const-string v1, "response"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 82
    new-instance v0, Lorg/json/JSONArray;

    const-string v1, "response"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "results"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 83
    .local v0, "jsonResult":Lorg/json/JSONArray;
    sget-object v1, Lcom/buzzfeed/toolkit/content/BuffetType;->POST:Lcom/buzzfeed/toolkit/content/BuffetType;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/buzzfeed/android/data/loader/SearchFeedLoader;->parseFlow(Lorg/json/JSONArray;Lcom/buzzfeed/toolkit/content/BuffetType;Z)Lcom/buzzfeed/toolkit/content/FlowList;

    move-result-object v1

    iput-object v1, p0, Lcom/buzzfeed/android/data/loader/SearchFeedLoader;->mLocalFlowList:Lcom/buzzfeed/toolkit/content/FlowList;

    .line 84
    iget-object v1, p0, Lcom/buzzfeed/android/data/loader/SearchFeedLoader;->mLocalFlowList:Lcom/buzzfeed/toolkit/content/FlowList;

    invoke-direct {p0, v1}, Lcom/buzzfeed/android/data/loader/SearchFeedLoader;->fixRelativeImagePaths(Lcom/buzzfeed/toolkit/content/FlowList;)V

    .line 88
    .end local v0    # "jsonResult":Lorg/json/JSONArray;
    :goto_27
    return-void

    .line 86
    :cond_28
    iget-object v1, p0, Lcom/buzzfeed/android/data/loader/SearchFeedLoader;->mLocalFlowList:Lcom/buzzfeed/toolkit/content/FlowList;

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/content/FlowList;->clear()V

    goto :goto_27
.end method

.method protected parseFlow(Lorg/json/JSONArray;Lcom/buzzfeed/toolkit/content/BuffetType;Z)Lcom/buzzfeed/toolkit/content/FlowList;
    .registers 13
    .param p1, "jsonFlow"    # Lorg/json/JSONArray;
    .param p2, "type"    # Lcom/buzzfeed/toolkit/content/BuffetType;
    .param p3, "allowAds"    # Z

    .prologue
    .line 92
    new-instance v3, Lcom/buzzfeed/toolkit/content/FlowList;

    invoke-direct {v3}, Lcom/buzzfeed/toolkit/content/FlowList;-><init>()V

    .line 93
    .local v3, "flowList":Lcom/buzzfeed/toolkit/content/FlowList;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_6
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_89

    .line 95
    :try_start_c
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 96
    .local v5, "obj":Lorg/json/JSONObject;
    new-instance v0, Lcom/buzzfeed/toolkit/content/Buzz;

    invoke-direct {v0}, Lcom/buzzfeed/toolkit/content/Buzz;-><init>()V

    .line 97
    .local v0, "buzz":Lcom/buzzfeed/toolkit/content/Buzz;
    invoke-virtual {v0, v5}, Lcom/buzzfeed/toolkit/content/Buzz;->parse(Lorg/json/JSONObject;)V

    .line 99
    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/content/Buzz;->isAd()Z

    move-result v6

    if-eqz v6, :cond_35

    .line 100
    new-instance v2, Lcom/buzzfeed/toolkit/content/FlowItem;

    sget-object v6, Lcom/buzzfeed/toolkit/content/BuffetType;->EDITORIAL_AD:Lcom/buzzfeed/toolkit/content/BuffetType;

    invoke-virtual {v6}, Lcom/buzzfeed/toolkit/content/BuffetType;->name()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6, v0}, Lcom/buzzfeed/toolkit/content/FlowItem;-><init>(Ljava/lang/String;Lcom/buzzfeed/toolkit/content/Content;)V

    .line 104
    .local v2, "flow":Lcom/buzzfeed/toolkit/content/FlowItem;
    :goto_29
    invoke-virtual {v2}, Lcom/buzzfeed/toolkit/content/FlowItem;->isValid()Z

    move-result v6

    if-eqz v6, :cond_41

    .line 105
    invoke-virtual {v3, v2}, Lcom/buzzfeed/toolkit/content/FlowList;->add(Lcom/buzzfeed/toolkit/content/FlowItem;)Z

    .line 93
    .end local v0    # "buzz":Lcom/buzzfeed/toolkit/content/Buzz;
    .end local v2    # "flow":Lcom/buzzfeed/toolkit/content/FlowItem;
    .end local v5    # "obj":Lorg/json/JSONObject;
    :goto_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 102
    .restart local v0    # "buzz":Lcom/buzzfeed/toolkit/content/Buzz;
    .restart local v5    # "obj":Lorg/json/JSONObject;
    :cond_35
    new-instance v2, Lcom/buzzfeed/toolkit/content/FlowItem;

    sget-object v6, Lcom/buzzfeed/toolkit/content/BuffetType;->POST:Lcom/buzzfeed/toolkit/content/BuffetType;

    invoke-virtual {v6}, Lcom/buzzfeed/toolkit/content/BuffetType;->name()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6, v0}, Lcom/buzzfeed/toolkit/content/FlowItem;-><init>(Ljava/lang/String;Lcom/buzzfeed/toolkit/content/Content;)V

    .restart local v2    # "flow":Lcom/buzzfeed/toolkit/content/FlowItem;
    goto :goto_29

    .line 107
    :cond_41
    sget-object v6, Lcom/buzzfeed/android/data/loader/SearchFeedLoader;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "flow was not valid! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v6, p0, Lcom/buzzfeed/android/data/loader/SearchFeedLoader;->mCallback:Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;

    new-instance v7, Ljava/lang/Exception;

    const-string v8, "An error occurred: Flow was not valid"

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v7}, Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;->onError(Ljava/lang/Exception;)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_69} :catch_6a

    goto :goto_32

    .line 110
    .end local v0    # "buzz":Lcom/buzzfeed/toolkit/content/Buzz;
    .end local v2    # "flow":Lcom/buzzfeed/toolkit/content/FlowItem;
    .end local v5    # "obj":Lorg/json/JSONObject;
    :catch_6a
    move-exception v1

    .line 111
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/buzzfeed/android/data/loader/SearchFeedLoader;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error parsing flow JSON: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    iget-object v6, p0, Lcom/buzzfeed/android/data/loader/SearchFeedLoader;->mCallback:Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;

    invoke-interface {v6, v1}, Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;->onError(Ljava/lang/Exception;)V

    goto :goto_32

    .line 115
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_89
    return-object v3
.end method

.method public shouldShowAds()Z
    .registers 2

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method
