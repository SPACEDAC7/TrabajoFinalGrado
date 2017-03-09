.class public abstract Lcom/buzzfeed/android/data/loader/BaseFeedLoader;
.super Lcom/buzzfeed/toolkit/content/BaseLoader;
.source "BaseFeedLoader.java"


# static fields
.field public static final FIRST_PAGE:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mFeed:Lcom/buzzfeed/android/data/Feed;

.field protected mFeedUrl:Ljava/lang/String;

.field protected final mLegacyFeedService:Lcom/buzzfeed/toolkit/networking/helpers/LegacyFeedServiceHelper;

.field protected mLocalAdBackfillList:Lcom/buzzfeed/toolkit/content/FlowList;

.field protected mLocalFirstBuzzPos:I

.field protected mRefresh:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-class v0, Lcom/buzzfeed/android/data/loader/BaseFeedLoader;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/data/loader/BaseFeedLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/buzzfeed/android/data/Feed;Lcom/buzzfeed/toolkit/networking/helpers/LegacyFeedServiceHelper;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "feed"    # Lcom/buzzfeed/android/data/Feed;
    .param p3, "legacyFeedService"    # Lcom/buzzfeed/toolkit/networking/helpers/LegacyFeedServiceHelper;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/buzzfeed/toolkit/content/BaseLoader;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/buzzfeed/android/data/loader/BaseFeedLoader;->mLocalFirstBuzzPos:I

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/data/loader/BaseFeedLoader;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/buzzfeed/android/data/loader/BaseFeedLoader;->mFeed:Lcom/buzzfeed/android/data/Feed;

    .line 45
    iput-object p3, p0, Lcom/buzzfeed/android/data/loader/BaseFeedLoader;->mLegacyFeedService:Lcom/buzzfeed/toolkit/networking/helpers/LegacyFeedServiceHelper;

    .line 46
    iget-object v0, p0, Lcom/buzzfeed/android/data/loader/BaseFeedLoader;->mLegacyFeedService:Lcom/buzzfeed/toolkit/networking/helpers/LegacyFeedServiceHelper;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/networking/helpers/LegacyFeedServiceHelper;->gzip()V

    .line 47
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/buzzfeed/android/data/loader/BaseFeedLoader;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/buzzfeed/android/data/loader/BaseFeedLoader;)Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/data/loader/BaseFeedLoader;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/buzzfeed/android/data/loader/BaseFeedLoader;->mCallback:Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/buzzfeed/android/data/loader/BaseFeedLoader;)Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/data/loader/BaseFeedLoader;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/buzzfeed/android/data/loader/BaseFeedLoader;->mCallback:Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;

    return-object v0
.end method

.method private optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 8
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 115
    const/4 v1, 0x0

    .line 117
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_6} :catch_8

    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .local v2, "jsonObject":Lorg/json/JSONObject;
    move-object v1, v2

    .line 122
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_7
    return-object v1

    .line 118
    :catch_8
    move-exception v0

    .line 120
    .local v0, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/buzzfeed/android/data/loader/BaseFeedLoader;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing buzzfeed JSON: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method

.method private parseOldFeed(Ljava/lang/String;)V
    .registers 5
    .param p1, "response"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 129
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 130
    .local v0, "jsonResult":Lorg/json/JSONArray;
    sget-object v1, Lcom/buzzfeed/toolkit/content/BuffetType;->POST:Lcom/buzzfeed/toolkit/content/BuffetType;

    invoke-virtual {p0}, Lcom/buzzfeed/android/data/loader/BaseFeedLoader;->shouldShowAds()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/buzzfeed/android/data/loader/BaseFeedLoader;->parseFlow(Lorg/json/JSONArray;Lcom/buzzfeed/toolkit/content/BuffetType;Z)Lcom/buzzfeed/toolkit/content/FlowList;

    move-result-object v1

    iput-object v1, p0, Lcom/buzzfeed/android/data/loader/BaseFeedLoader;->mLocalFlowList:Lcom/buzzfeed/toolkit/content/FlowList;

    .line 131
    iget-object v1, p0, Lcom/buzzfeed/android/data/loader/BaseFeedLoader;->mLocalAdBackfillList:Lcom/buzzfeed/toolkit/content/FlowList;

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/content/FlowList;->clear()V

    .line 132
    return-void
.end method


# virtual methods
.method protected abstract getBaseFeedUrl(I)Ljava/lang/String;
.end method

.method public getFeed()Lcom/buzzfeed/android/data/Feed;
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/buzzfeed/android/data/loader/BaseFeedLoader;->mFeed:Lcom/buzzfeed/android/data/Feed;

    return-object v0
.end method

.method public getPage()I
    .registers 2

    .prologue
    .line 184
    iget v0, p0, Lcom/buzzfeed/android/data/loader/BaseFeedLoader;->mPage:I

    return v0
.end method

.method protected getUrlParameters(I)Ljava/util/Map;
    .registers 5
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
    .line 138
    iget-object v2, p0, Lcom/buzzfeed/android/data/loader/BaseFeedLoader;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getEdition(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "edition":Ljava/lang/String;
    new-instance v1, Lcom/buzzfeed/toolkit/networking/helpers/LegacyFeedServiceHelper$QueryParamsBuilder;

    invoke-direct {v1}, Lcom/buzzfeed/toolkit/networking/helpers/LegacyFeedServiceHelper$QueryParamsBuilder;-><init>()V

    .line 140
    .local v1, "queryParamsBuilder":Lcom/buzzfeed/toolkit/networking/helpers/LegacyFeedServiceHelper$QueryParamsBuilder;
    iget-boolean v2, p0, Lcom/buzzfeed/android/data/loader/BaseFeedLoader;->mRefresh:Z

    invoke-virtual {v1, v2}, Lcom/buzzfeed/toolkit/networking/helpers/LegacyFeedServiceHelper$QueryParamsBuilder;->noCache(Z)Lcom/buzzfeed/toolkit/networking/helpers/LegacyFeedServiceHelper$QueryParamsBuilder;

    .line 141
    const/4 v2, 0x1

    if-le p1, v2, :cond_1a

    .line 142
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/buzzfeed/toolkit/networking/helpers/LegacyFeedServiceHelper$QueryParamsBuilder;->page(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/LegacyFeedServiceHelper$QueryParamsBuilder;

    .line 144
    :cond_1a
    if-eqz v0, :cond_1f

    .line 145
    invoke-virtual {v1, v0}, Lcom/buzzfeed/toolkit/networking/helpers/LegacyFeedServiceHelper$QueryParamsBuilder;->country(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/LegacyFeedServiceHelper$QueryParamsBuilder;

    .line 147
    :cond_1f
    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/networking/helpers/LegacyFeedServiceHelper$QueryParamsBuilder;->build()Ljava/util/Map;

    move-result-object v2

    return-object v2
.end method

.method public hasMorePages()Z
    .registers 2

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public load(ZILcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;)V
    .registers 5
    .param p1, "refresh"    # Z
    .param p2, "page"    # I
    .param p3, "callback"    # Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/buzzfeed/android/data/loader/BaseFeedLoader;->mRefresh:Z

    .line 52
    new-instance v0, Lcom/buzzfeed/toolkit/content/FlowList;

    invoke-direct {v0}, Lcom/buzzfeed/toolkit/content/FlowList;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/android/data/loader/BaseFeedLoader;->mLocalFlowList:Lcom/buzzfeed/toolkit/content/FlowList;

    .line 53
    new-instance v0, Lcom/buzzfeed/toolkit/content/FlowList;

    invoke-direct {v0}, Lcom/buzzfeed/toolkit/content/FlowList;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/android/data/loader/BaseFeedLoader;->mLocalAdBackfillList:Lcom/buzzfeed/toolkit/content/FlowList;

    .line 54
    invoke-virtual {p0, p2}, Lcom/buzzfeed/android/data/loader/BaseFeedLoader;->getBaseFeedUrl(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/data/loader/BaseFeedLoader;->mFeedUrl:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/buzzfeed/android/data/loader/BaseFeedLoader;->mCallback:Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;

    .line 56
    iput p2, p0, Lcom/buzzfeed/android/data/loader/BaseFeedLoader;->mPage:I

    .line 57
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/loader/BaseFeedLoader;->loadExecute()V

    .line 58
    return-void
.end method

.method protected loadExecute()V
    .registers 5

    .prologue
    .line 72
    iget-object v0, p0, Lcom/buzzfeed/android/data/loader/BaseFeedLoader;->mLegacyFeedService:Lcom/buzzfeed/toolkit/networking/helpers/LegacyFeedServiceHelper;

    iget-object v1, p0, Lcom/buzzfeed/android/data/loader/BaseFeedLoader;->mFeedUrl:Ljava/lang/String;

    iget v2, p0, Lcom/buzzfeed/android/data/loader/BaseFeedLoader;->mPage:I

    invoke-virtual {p0, v2}, Lcom/buzzfeed/android/data/loader/BaseFeedLoader;->getUrlParameters(I)Ljava/util/Map;

    move-result-object v2

    new-instance v3, Lcom/buzzfeed/android/data/loader/BaseFeedLoader$1;

    invoke-direct {v3, p0}, Lcom/buzzfeed/android/data/loader/BaseFeedLoader$1;-><init>(Lcom/buzzfeed/android/data/loader/BaseFeedLoader;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/buzzfeed/toolkit/networking/helpers/LegacyFeedServiceHelper;->loadFeeds(Ljava/lang/String;Ljava/util/Map;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    .line 92
    return-void
.end method

.method protected abstract parseFeed(Lorg/json/JSONObject;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method protected parseFlow(Lorg/json/JSONArray;Lcom/buzzfeed/toolkit/content/BuffetType;Z)Lcom/buzzfeed/toolkit/content/FlowList;
    .registers 12
    .param p1, "jsonFlow"    # Lorg/json/JSONArray;
    .param p2, "type"    # Lcom/buzzfeed/toolkit/content/BuffetType;
    .param p3, "allowAds"    # Z

    .prologue
    .line 151
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/buzzfeed/android/data/loader/BaseFeedLoader;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".parseFlow"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "TAG":Ljava/lang/String;
    new-instance v3, Lcom/buzzfeed/toolkit/content/FlowList;

    invoke-direct {v3}, Lcom/buzzfeed/toolkit/content/FlowList;-><init>()V

    .line 153
    .local v3, "flowList":Lcom/buzzfeed/toolkit/content/FlowList;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1b
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_98

    .line 155
    :try_start_21
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 157
    .local v5, "obj":Lorg/json/JSONObject;
    if-eqz p2, :cond_57

    .line 158
    if-eqz p3, :cond_3a

    const-string/jumbo v6, "user_ad"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 159
    sget-object p2, Lcom/buzzfeed/toolkit/content/BuffetType;->EDITORIAL_AD:Lcom/buzzfeed/toolkit/content/BuffetType;

    .line 161
    :cond_3a
    new-instance v2, Lcom/buzzfeed/toolkit/content/FlowItem;

    invoke-direct {v2}, Lcom/buzzfeed/toolkit/content/FlowItem;-><init>()V

    .line 162
    .local v2, "flow":Lcom/buzzfeed/toolkit/content/FlowItem;
    new-instance v6, Lcom/buzzfeed/android/data/factory/MobileFeedFactory;

    invoke-virtual {p2}, Lcom/buzzfeed/toolkit/content/BuffetType;->name()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/buzzfeed/android/data/factory/MobileFeedFactory;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Lcom/buzzfeed/toolkit/content/FlowItem;->parse(Lorg/json/JSONObject;Lcom/buzzfeed/toolkit/content/ContentFactory;)V

    .line 167
    :goto_4b
    invoke-virtual {v2}, Lcom/buzzfeed/toolkit/content/FlowItem;->isValid()Z

    move-result v6

    if-eqz v6, :cond_7d

    .line 168
    invoke-virtual {v3, v2}, Lcom/buzzfeed/toolkit/content/FlowList;->add(Lcom/buzzfeed/toolkit/content/FlowItem;)Z

    .line 153
    .end local v2    # "flow":Lcom/buzzfeed/toolkit/content/FlowItem;
    .end local v5    # "obj":Lorg/json/JSONObject;
    :goto_54
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 164
    .restart local v5    # "obj":Lorg/json/JSONObject;
    :cond_57
    new-instance v2, Lcom/buzzfeed/toolkit/content/FlowItem;

    invoke-direct {v2}, Lcom/buzzfeed/toolkit/content/FlowItem;-><init>()V

    .line 165
    .restart local v2    # "flow":Lcom/buzzfeed/toolkit/content/FlowItem;
    new-instance v6, Lcom/buzzfeed/toolkit/content/SimpleFlowItemFactory;

    invoke-direct {v6}, Lcom/buzzfeed/toolkit/content/SimpleFlowItemFactory;-><init>()V

    invoke-virtual {v2, v5, v6}, Lcom/buzzfeed/toolkit/content/FlowItem;->parse(Lorg/json/JSONObject;Lcom/buzzfeed/toolkit/content/ContentFactory;)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_64} :catch_65

    goto :goto_4b

    .line 172
    .end local v2    # "flow":Lcom/buzzfeed/toolkit/content/FlowItem;
    .end local v5    # "obj":Lorg/json/JSONObject;
    :catch_65
    move-exception v1

    .line 173
    .local v1, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error parsing flow JSON: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_54

    .line 170
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "flow":Lcom/buzzfeed/toolkit/content/FlowItem;
    .restart local v5    # "obj":Lorg/json/JSONObject;
    :cond_7d
    :try_start_7d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "flow was not valid! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_97} :catch_65

    goto :goto_54

    .line 176
    .end local v2    # "flow":Lcom/buzzfeed/toolkit/content/FlowItem;
    .end local v5    # "obj":Lorg/json/JSONObject;
    :cond_98
    return-object v3
.end method

.method protected parseResponse(Ljava/lang/String;)V
    .registers 7
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 95
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_e

    .line 96
    :cond_8
    iget-object v2, p0, Lcom/buzzfeed/android/data/loader/BaseFeedLoader;->mCallback:Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;

    invoke-interface {v2}, Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;->onLoadComplete()V

    .line 112
    :goto_d
    return-void

    .line 99
    :cond_e
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/data/loader/BaseFeedLoader;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 101
    .local v1, "jsonParts":Lorg/json/JSONObject;
    if-eqz v1, :cond_1d

    .line 102
    :try_start_14
    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/data/loader/BaseFeedLoader;->parseFeed(Lorg/json/JSONObject;)V
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_17} :catch_21
    .catchall {:try_start_14 .. :try_end_17} :catchall_40

    .line 110
    :goto_17
    iget-object v2, p0, Lcom/buzzfeed/android/data/loader/BaseFeedLoader;->mCallback:Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;

    invoke-interface {v2}, Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;->onLoadComplete()V

    goto :goto_d

    .line 104
    :cond_1d
    :try_start_1d
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/data/loader/BaseFeedLoader;->parseOldFeed(Ljava/lang/String;)V
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_20} :catch_21
    .catchall {:try_start_1d .. :try_end_20} :catchall_40

    goto :goto_17

    .line 106
    :catch_21
    move-exception v0

    .line 107
    .local v0, "e":Lorg/json/JSONException;
    :try_start_22
    sget-object v2, Lcom/buzzfeed/android/data/loader/BaseFeedLoader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error Parsing buzzfeed JSON.  Response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3a
    .catchall {:try_start_22 .. :try_end_3a} :catchall_40

    .line 110
    iget-object v2, p0, Lcom/buzzfeed/android/data/loader/BaseFeedLoader;->mCallback:Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;

    invoke-interface {v2}, Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;->onLoadComplete()V

    goto :goto_d

    .end local v0    # "e":Lorg/json/JSONException;
    :catchall_40
    move-exception v2

    iget-object v3, p0, Lcom/buzzfeed/android/data/loader/BaseFeedLoader;->mCallback:Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;

    invoke-interface {v3}, Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;->onLoadComplete()V

    throw v2
.end method

.method public shouldShowAds()Z
    .registers 2

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method
