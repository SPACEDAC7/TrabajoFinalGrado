.class public Lcom/buzzfeed/android/data/loader/FeedLoader;
.super Lcom/buzzfeed/android/data/loader/BaseFeedLoader;
.source "FeedLoader.java"


# static fields
.field protected static final BUZZFEED_AD_BACKFILL:Ljava/lang/String; = "ad_backfill"

.field protected static final BUZZFEED_BREAKING_BAR:Ljava/lang/String; = "breaking_bar"

.field protected static final BUZZFEED_SECTION:Ljava/lang/String; = "section"

.field protected static final BUZZFEED_SPLASH:Ljava/lang/String; = "splash"

.field protected static final MAX_PAGES:I = 0x5

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-class v0, Lcom/buzzfeed/android/data/loader/FeedLoader;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/data/loader/FeedLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/buzzfeed/android/data/Feed;Lcom/buzzfeed/toolkit/networking/helpers/LegacyFeedServiceHelper;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "feed"    # Lcom/buzzfeed/android/data/Feed;
    .param p3, "legacyWeaverService"    # Lcom/buzzfeed/toolkit/networking/helpers/LegacyFeedServiceHelper;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/buzzfeed/android/data/loader/BaseFeedLoader;-><init>(Landroid/content/Context;Lcom/buzzfeed/android/data/Feed;Lcom/buzzfeed/toolkit/networking/helpers/LegacyFeedServiceHelper;)V

    .line 28
    return-void
.end method


# virtual methods
.method protected getBaseFeedUrl(I)Ljava/lang/String;
    .registers 3
    .param p1, "page"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lcom/buzzfeed/android/data/loader/FeedLoader;->mFeed:Lcom/buzzfeed/android/data/Feed;

    invoke-virtual {v0}, Lcom/buzzfeed/android/data/Feed;->getUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPage()I
    .registers 2

    .prologue
    .line 86
    iget v0, p0, Lcom/buzzfeed/android/data/loader/FeedLoader;->mPage:I

    return v0
.end method

.method public hasMorePages()Z
    .registers 3

    .prologue
    .line 82
    iget v0, p0, Lcom/buzzfeed/android/data/loader/FeedLoader;->mPage:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method protected parseFeed(Lorg/json/JSONObject;)V
    .registers 13
    .param p1, "jsonParts"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 34
    const-string v7, "section"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_95

    .line 35
    new-instance v4, Lorg/json/JSONArray;

    const-string v7, "section"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 36
    .local v4, "jsonResult":Lorg/json/JSONArray;
    sget-object v7, Lcom/buzzfeed/toolkit/content/BuffetType;->POST:Lcom/buzzfeed/toolkit/content/BuffetType;

    invoke-virtual {p0}, Lcom/buzzfeed/android/data/loader/FeedLoader;->shouldShowAds()Z

    move-result v8

    invoke-virtual {p0, v4, v7, v8}, Lcom/buzzfeed/android/data/loader/FeedLoader;->parseFlow(Lorg/json/JSONArray;Lcom/buzzfeed/toolkit/content/BuffetType;Z)Lcom/buzzfeed/toolkit/content/FlowList;

    move-result-object v7

    iput-object v7, p0, Lcom/buzzfeed/android/data/loader/FeedLoader;->mLocalFlowList:Lcom/buzzfeed/toolkit/content/FlowList;

    .line 38
    iget v7, p0, Lcom/buzzfeed/android/data/loader/FeedLoader;->mPage:I

    if-ne v7, v10, :cond_95

    .line 39
    const/4 v3, 0x0

    .line 41
    .local v3, "flowItemPosition":I
    const-string v7, "splash"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_58

    .line 42
    new-instance v6, Lorg/json/JSONObject;

    const-string v7, "splash"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 43
    .local v6, "splashJsonResult":Lorg/json/JSONObject;
    new-instance v5, Lcom/buzzfeed/toolkit/content/FlowItem;

    invoke-direct {v5}, Lcom/buzzfeed/toolkit/content/FlowItem;-><init>()V

    .line 44
    .local v5, "splash":Lcom/buzzfeed/toolkit/content/FlowItem;
    new-instance v7, Lcom/buzzfeed/android/data/factory/MobileFeedFactory;

    sget-object v8, Lcom/buzzfeed/toolkit/content/BuffetType;->FEATURED_PROXIMA_NOVA_TITLE:Lcom/buzzfeed/toolkit/content/BuffetType;

    invoke-virtual {v8}, Lcom/buzzfeed/toolkit/content/BuffetType;->name()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/buzzfeed/android/data/factory/MobileFeedFactory;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Lcom/buzzfeed/toolkit/content/FlowItem;->parse(Lorg/json/JSONObject;Lcom/buzzfeed/toolkit/content/ContentFactory;)V

    .line 45
    invoke-virtual {v5}, Lcom/buzzfeed/toolkit/content/FlowItem;->isValid()Z

    move-result v7

    if-eqz v7, :cond_b1

    .line 46
    iget-object v7, p0, Lcom/buzzfeed/android/data/loader/FeedLoader;->mLocalFlowList:Lcom/buzzfeed/toolkit/content/FlowList;

    invoke-virtual {v7, v3, v5}, Lcom/buzzfeed/toolkit/content/FlowList;->add(ILcom/buzzfeed/toolkit/content/FlowItem;)V

    .line 47
    add-int/lit8 v3, v3, 0x1

    .line 54
    .end local v5    # "splash":Lcom/buzzfeed/toolkit/content/FlowItem;
    .end local v6    # "splashJsonResult":Lorg/json/JSONObject;
    :cond_58
    :goto_58
    const-string v7, "breaking_bar"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_93

    const-string v7, "breaking_bar"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_93

    .line 55
    new-instance v1, Lorg/json/JSONObject;

    const-string v7, "breaking_bar"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 56
    .local v1, "breakBarJson":Lorg/json/JSONObject;
    new-instance v2, Lcom/buzzfeed/toolkit/content/FlowItem;

    invoke-direct {v2}, Lcom/buzzfeed/toolkit/content/FlowItem;-><init>()V

    .line 57
    .local v2, "breakingBar":Lcom/buzzfeed/toolkit/content/FlowItem;
    new-instance v7, Lcom/buzzfeed/android/data/factory/MobileFeedFactory;

    sget-object v8, Lcom/buzzfeed/toolkit/content/BuffetType;->BREAKING_BAR:Lcom/buzzfeed/toolkit/content/BuffetType;

    invoke-virtual {v8}, Lcom/buzzfeed/toolkit/content/BuffetType;->name()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/buzzfeed/android/data/factory/MobileFeedFactory;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v7}, Lcom/buzzfeed/toolkit/content/FlowItem;->parse(Lorg/json/JSONObject;Lcom/buzzfeed/toolkit/content/ContentFactory;)V

    .line 58
    invoke-virtual {v2}, Lcom/buzzfeed/toolkit/content/FlowItem;->isValid()Z

    move-result v7

    if-eqz v7, :cond_93

    .line 59
    iget-object v7, p0, Lcom/buzzfeed/android/data/loader/FeedLoader;->mLocalFlowList:Lcom/buzzfeed/toolkit/content/FlowList;

    invoke-virtual {v7, v3, v2}, Lcom/buzzfeed/toolkit/content/FlowList;->add(ILcom/buzzfeed/toolkit/content/FlowItem;)V

    .line 60
    add-int/lit8 v3, v3, 0x1

    .line 64
    .end local v1    # "breakBarJson":Lorg/json/JSONObject;
    .end local v2    # "breakingBar":Lcom/buzzfeed/toolkit/content/FlowItem;
    :cond_93
    iput v3, p0, Lcom/buzzfeed/android/data/loader/FeedLoader;->mLocalFirstBuzzPos:I

    .line 67
    .end local v3    # "flowItemPosition":I
    .end local v4    # "jsonResult":Lorg/json/JSONArray;
    :cond_95
    const-string v7, "ad_backfill"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_ce

    .line 68
    new-instance v0, Lorg/json/JSONArray;

    const-string v7, "ad_backfill"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, "adBackFillJsonResults":Lorg/json/JSONArray;
    sget-object v7, Lcom/buzzfeed/toolkit/content/BuffetType;->POST:Lcom/buzzfeed/toolkit/content/BuffetType;

    invoke-virtual {p0, v0, v7, v10}, Lcom/buzzfeed/android/data/loader/FeedLoader;->parseFlow(Lorg/json/JSONArray;Lcom/buzzfeed/toolkit/content/BuffetType;Z)Lcom/buzzfeed/toolkit/content/FlowList;

    move-result-object v7

    iput-object v7, p0, Lcom/buzzfeed/android/data/loader/FeedLoader;->mLocalAdBackfillList:Lcom/buzzfeed/toolkit/content/FlowList;

    .line 73
    .end local v0    # "adBackFillJsonResults":Lorg/json/JSONArray;
    :goto_b0
    return-void

    .line 49
    .restart local v3    # "flowItemPosition":I
    .restart local v4    # "jsonResult":Lorg/json/JSONArray;
    .restart local v5    # "splash":Lcom/buzzfeed/toolkit/content/FlowItem;
    .restart local v6    # "splashJsonResult":Lorg/json/JSONObject;
    :cond_b1
    sget-object v7, Lcom/buzzfeed/android/data/loader/FeedLoader;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Splash was not valid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_58

    .line 71
    .end local v3    # "flowItemPosition":I
    .end local v4    # "jsonResult":Lorg/json/JSONArray;
    .end local v5    # "splash":Lcom/buzzfeed/toolkit/content/FlowItem;
    .end local v6    # "splashJsonResult":Lorg/json/JSONObject;
    :cond_ce
    iget-object v7, p0, Lcom/buzzfeed/android/data/loader/FeedLoader;->mLocalAdBackfillList:Lcom/buzzfeed/toolkit/content/FlowList;

    invoke-virtual {v7}, Lcom/buzzfeed/toolkit/content/FlowList;->clear()V

    goto :goto_b0
.end method
