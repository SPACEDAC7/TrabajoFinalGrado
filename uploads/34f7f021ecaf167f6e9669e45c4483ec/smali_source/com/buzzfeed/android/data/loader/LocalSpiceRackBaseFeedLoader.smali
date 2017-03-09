.class public Lcom/buzzfeed/android/data/loader/LocalSpiceRackBaseFeedLoader;
.super Lcom/buzzfeed/android/data/loader/BaseFeedLoader;
.source "LocalSpiceRackBaseFeedLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-class v0, Lcom/buzzfeed/android/data/loader/LocalSpiceRackBaseFeedLoader;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/data/loader/LocalSpiceRackBaseFeedLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/buzzfeed/android/data/Feed;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "feed"    # Lcom/buzzfeed/android/data/Feed;

    .prologue
    .line 25
    invoke-static {}, Lcom/buzzfeed/toolkit/networking/NetworkService;->getLegacyFeedService()Lcom/buzzfeed/toolkit/networking/helpers/LegacyFeedServiceHelper;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/buzzfeed/android/data/loader/BaseFeedLoader;-><init>(Landroid/content/Context;Lcom/buzzfeed/android/data/Feed;Lcom/buzzfeed/toolkit/networking/helpers/LegacyFeedServiceHelper;)V

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/data/loader/LocalSpiceRackBaseFeedLoader;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method

.method private loadFromAssets()Ljava/lang/String;
    .registers 4

    .prologue
    .line 31
    :try_start_0
    iget-object v1, p0, Lcom/buzzfeed/android/data/loader/LocalSpiceRackBaseFeedLoader;->mContext:Landroid/content/Context;

    const-string v2, "localspicerack.json"

    invoke-static {v1, v2}, Lcom/buzzfeed/toolkit/util/EZUtil;->readStringFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 35
    :goto_8
    return-object v1

    .line 32
    :catch_9
    move-exception v0

    .line 33
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/buzzfeed/android/data/loader/LocalSpiceRackBaseFeedLoader;->TAG:Ljava/lang/String;

    const-string v2, "localspicerack.json load failed: "

    invoke-static {v1, v2, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    const/4 v1, 0x0

    goto :goto_8
.end method


# virtual methods
.method protected getBaseFeedUrl(I)Ljava/lang/String;
    .registers 3
    .param p1, "page"    # I

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasMorePages()Z
    .registers 2

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public load(ZILcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;)V
    .registers 8
    .param p1, "refresh"    # Z
    .param p2, "page"    # I
    .param p3, "callback"    # Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/buzzfeed/android/data/loader/LocalSpiceRackBaseFeedLoader;->loadFromAssets()Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "jsonString":Ljava/lang/String;
    :try_start_4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/buzzfeed/android/data/loader/LocalSpiceRackBaseFeedLoader;->parseFeed(Lorg/json/JSONObject;)V
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_c} :catch_10

    .line 47
    :goto_c
    invoke-interface {p3}, Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;->onLoadComplete()V

    .line 48
    return-void

    .line 43
    :catch_10
    move-exception v0

    .line 44
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/buzzfeed/android/data/loader/LocalSpiceRackBaseFeedLoader;->TAG:Ljava/lang/String;

    const-string v3, "localspicerack.json parse failed: "

    invoke-static {v2, v3, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    invoke-interface {p3, v0}, Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;->onError(Ljava/lang/Exception;)V

    goto :goto_c
.end method

.method protected parseFeed(Lorg/json/JSONObject;)V
    .registers 5
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 57
    const-string v1, "section"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 58
    .local v0, "jsonArray":Lorg/json/JSONArray;
    sget-object v1, Lcom/buzzfeed/toolkit/content/BuffetType;->POST:Lcom/buzzfeed/toolkit/content/BuffetType;

    invoke-virtual {p0}, Lcom/buzzfeed/android/data/loader/LocalSpiceRackBaseFeedLoader;->shouldShowAds()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/buzzfeed/android/data/loader/LocalSpiceRackBaseFeedLoader;->parseFlow(Lorg/json/JSONArray;Lcom/buzzfeed/toolkit/content/BuffetType;Z)Lcom/buzzfeed/toolkit/content/FlowList;

    move-result-object v1

    iput-object v1, p0, Lcom/buzzfeed/android/data/loader/LocalSpiceRackBaseFeedLoader;->mLocalFlowList:Lcom/buzzfeed/toolkit/content/FlowList;

    .line 59
    return-void
.end method

.method public shouldShowAds()Z
    .registers 2

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method
