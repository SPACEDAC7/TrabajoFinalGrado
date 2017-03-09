.class public Lcom/buzzfeed/android/data/loader/WidgetLoader;
.super Lcom/buzzfeed/android/data/loader/BuffetLoader;
.source "WidgetLoader.java"


# instance fields
.field private mFeed:Lcom/buzzfeed/android/data/Feed;

.field private mLoader:Lcom/buzzfeed/android/data/loader/FeedLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/buzzfeed/android/data/Feed;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "feed"    # Lcom/buzzfeed/android/data/Feed;

    .prologue
    .line 18
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/buzzfeed/android/data/loader/BuffetLoader;-><init>(Landroid/content/Context;Lcom/buzzfeed/android/data/Feed;Z)V

    .line 19
    iput-object p2, p0, Lcom/buzzfeed/android/data/loader/WidgetLoader;->mFeed:Lcom/buzzfeed/android/data/Feed;

    .line 20
    new-instance v0, Lcom/buzzfeed/android/data/loader/FeedLoader;

    invoke-static {}, Lcom/buzzfeed/toolkit/networking/NetworkService;->getLegacyFeedService()Lcom/buzzfeed/toolkit/networking/helpers/LegacyFeedServiceHelper;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/buzzfeed/android/data/loader/FeedLoader;-><init>(Landroid/content/Context;Lcom/buzzfeed/android/data/Feed;Lcom/buzzfeed/toolkit/networking/helpers/LegacyFeedServiceHelper;)V

    iput-object v0, p0, Lcom/buzzfeed/android/data/loader/WidgetLoader;->mLoader:Lcom/buzzfeed/android/data/loader/FeedLoader;

    .line 21
    return-void
.end method


# virtual methods
.method public getFeed()Lcom/buzzfeed/android/data/Feed;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/buzzfeed/android/data/loader/WidgetLoader;->mLoader:Lcom/buzzfeed/android/data/loader/FeedLoader;

    invoke-virtual {v0}, Lcom/buzzfeed/android/data/loader/FeedLoader;->getFeed()Lcom/buzzfeed/android/data/Feed;

    move-result-object v0

    return-object v0
.end method

.method public getFeedTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/buzzfeed/android/data/loader/WidgetLoader;->mFeed:Lcom/buzzfeed/android/data/Feed;

    invoke-virtual {v0}, Lcom/buzzfeed/android/data/Feed;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFeedUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/buzzfeed/android/data/loader/WidgetLoader;->mFeed:Lcom/buzzfeed/android/data/Feed;

    invoke-virtual {v0}, Lcom/buzzfeed/android/data/Feed;->getUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPage()I
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/buzzfeed/android/data/loader/WidgetLoader;->mLoader:Lcom/buzzfeed/android/data/loader/FeedLoader;

    invoke-virtual {v0}, Lcom/buzzfeed/android/data/loader/FeedLoader;->getPage()I

    move-result v0

    return v0
.end method

.method public getPositionFromId(Ljava/lang/String;)I
    .registers 3
    .param p1, "buzzId"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/loader/WidgetLoader;->getFlowList()Lcom/buzzfeed/toolkit/content/FlowList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/buzzfeed/toolkit/content/FlowList;->getLocationForId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public loadPage(Ljava/lang/Boolean;ILcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;)V
    .registers 5
    .param p1, "refresh"    # Ljava/lang/Boolean;
    .param p2, "page"    # I
    .param p3, "callback"    # Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;

    .prologue
    .line 24
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/buzzfeed/android/data/loader/WidgetLoader;->load(ZILcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;)V

    .line 25
    return-void
.end method
