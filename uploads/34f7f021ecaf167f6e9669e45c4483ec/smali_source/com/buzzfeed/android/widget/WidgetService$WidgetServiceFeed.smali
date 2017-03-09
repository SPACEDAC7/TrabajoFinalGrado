.class public Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;
.super Ljava/lang/Object;
.source "WidgetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/widget/WidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WidgetServiceFeed"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mfeed:Lcom/buzzfeed/android/data/Feed;


# instance fields
.field private appWidgetId:I

.field protected badgeImageUrl:Ljava/lang/String;

.field protected context:Landroid/content/Context;

.field protected feedName:Ljava/lang/String;

.field protected feedType:Ljava/lang/String;

.field protected feedUrl:Ljava/lang/String;

.field protected lang:Ljava/lang/String;

.field private position:I

.field protected widgetLoader:Lcom/buzzfeed/android/data/loader/WidgetLoader;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/buzzfeed/android/widget/WidgetService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/buzzfeed/android/widget/WidgetService;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".WidgetServiceFeed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    return-void
.end method

.method static synthetic access$200(Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;)V
    .registers 1
    .param p0, "x0"    # Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;

    .prologue
    .line 374
    invoke-direct {p0}, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;->updateWidget()V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "feedName"    # Ljava/lang/String;
    .param p2, "feedUrl"    # Ljava/lang/String;
    .param p3, "badgeImageUrl"    # Ljava/lang/String;
    .param p4, "lang"    # Ljava/lang/String;
    .param p5, "isBadgeFeed"    # Z

    .prologue
    .line 395
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".WidgetServiceFeed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, "TAG":Ljava/lang/String;
    new-instance v1, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;

    invoke-direct {v1}, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;-><init>()V

    .line 397
    .local v1, "widgetServiceFeed":Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "feedName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_83

    const-string v2, "null"

    :goto_29
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", feedUrl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p2, :cond_85

    const-string v2, "null"

    :goto_37
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", badgeImageUrl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p3, :cond_87

    const-string v2, "null"

    :goto_45
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isBadge: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iput-object p0, v1, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;->context:Landroid/content/Context;

    .line 404
    new-instance v2, Lcom/buzzfeed/android/data/Feed$Builder;

    invoke-direct {v2, p1}, Lcom/buzzfeed/android/data/Feed$Builder;-><init>(Ljava/lang/String;)V

    .line 405
    invoke-virtual {v2, p2}, Lcom/buzzfeed/android/data/Feed$Builder;->withUri(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v2

    .line 406
    invoke-virtual {v2}, Lcom/buzzfeed/android/data/Feed$Builder;->build()Lcom/buzzfeed/android/data/Feed;

    move-result-object v2

    sput-object v2, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;->mfeed:Lcom/buzzfeed/android/data/Feed;

    .line 408
    new-instance v2, Lcom/buzzfeed/android/data/loader/WidgetLoader;

    sget-object v3, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;->mfeed:Lcom/buzzfeed/android/data/Feed;

    invoke-direct {v2, p0, v3}, Lcom/buzzfeed/android/data/loader/WidgetLoader;-><init>(Landroid/content/Context;Lcom/buzzfeed/android/data/Feed;)V

    iput-object v2, v1, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;->widgetLoader:Lcom/buzzfeed/android/data/loader/WidgetLoader;

    .line 409
    iput-object p1, v1, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;->feedName:Ljava/lang/String;

    .line 410
    invoke-static {p5}, Lcom/buzzfeed/android/widget/WidgetUtil;->getWidgetFeedType(Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;->feedType:Ljava/lang/String;

    .line 411
    iput-object p2, v1, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;->feedUrl:Ljava/lang/String;

    .line 412
    iput-object p3, v1, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;->badgeImageUrl:Ljava/lang/String;

    .line 413
    iput-object p4, v1, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;->lang:Ljava/lang/String;

    .line 415
    return-object v1

    :cond_83
    move-object v2, p1

    .line 397
    goto :goto_29

    :cond_85
    move-object v2, p2

    goto :goto_37

    :cond_87
    move-object v2, p3

    goto :goto_45
.end method

.method private updateWidget()V
    .registers 4

    .prologue
    .line 473
    iget-object v0, p0, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;->context:Landroid/content/Context;

    iget v1, p0, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;->appWidgetId:I

    iget v2, p0, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;->position:I

    invoke-static {v0, v1, v2}, Lcom/buzzfeed/android/widget/WidgetService;->updateWidgetOnPostExecute(Landroid/content/Context;II)V

    .line 474
    return-void
.end method


# virtual methods
.method public getFeedTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;->feedName:Ljava/lang/String;

    return-object v0
.end method

.method public loadBuzz(Landroid/content/Context;III)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetId"    # I
    .param p3, "page"    # I
    .param p4, "position"    # I

    .prologue
    const/4 v3, 0x1

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".WidgetServiceFeed.loadBuzz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, "TAG":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading buzz feed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;->mfeed:Lcom/buzzfeed/android/data/Feed;

    invoke-virtual {v2}, Lcom/buzzfeed/android/data/Feed;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", feedUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;->mfeed:Lcom/buzzfeed/android/data/Feed;

    invoke-virtual {v2}, Lcom/buzzfeed/android/data/Feed;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", page: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iput-object p1, p0, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;->context:Landroid/content/Context;

    .line 423
    iput p2, p0, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;->appWidgetId:I

    .line 424
    iput p4, p0, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;->position:I

    .line 425
    if-le p3, v3, :cond_6e

    iget-object v1, p0, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;->widgetLoader:Lcom/buzzfeed/android/data/loader/WidgetLoader;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    new-instance v3, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed$1;

    invoke-direct {v3, p0}, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed$1;-><init>(Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;)V

    invoke-virtual {v1, v2, p3, v3}, Lcom/buzzfeed/android/data/loader/WidgetLoader;->loadPage(Ljava/lang/Boolean;ILcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;)V

    .line 447
    :goto_6d
    return-void

    .line 436
    :cond_6e
    iget-object v1, p0, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;->widgetLoader:Lcom/buzzfeed/android/data/loader/WidgetLoader;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    new-instance v3, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed$2;

    invoke-direct {v3, p0}, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed$2;-><init>(Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;)V

    invoke-virtual {v1, v2, p3, v3}, Lcom/buzzfeed/android/data/loader/WidgetLoader;->loadPage(Ljava/lang/Boolean;ILcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;)V

    goto :goto_6d
.end method

.method public updateWithFeed(Lcom/buzzfeed/android/data/Feed;)V
    .registers 6
    .param p1, "feed"    # Lcom/buzzfeed/android/data/Feed;

    .prologue
    .line 450
    invoke-virtual {p1}, Lcom/buzzfeed/android/data/Feed;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;->feedName:Ljava/lang/String;

    .line 451
    invoke-virtual {p1}, Lcom/buzzfeed/android/data/Feed;->isBadge()Z

    move-result v0

    invoke-static {v0}, Lcom/buzzfeed/android/widget/WidgetUtil;->getWidgetFeedType(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;->feedType:Ljava/lang/String;

    .line 453
    invoke-virtual {p1}, Lcom/buzzfeed/android/data/Feed;->getWidgetImage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;->badgeImageUrl:Ljava/lang/String;

    .line 454
    new-instance v0, Lcom/buzzfeed/android/data/loader/WidgetLoader;

    iget-object v1, p0, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/buzzfeed/android/data/loader/WidgetLoader;-><init>(Landroid/content/Context;Lcom/buzzfeed/android/data/Feed;)V

    iput-object v0, p0, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;->widgetLoader:Lcom/buzzfeed/android/data/loader/WidgetLoader;

    .line 455
    iget-object v0, p0, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;->widgetLoader:Lcom/buzzfeed/android/data/loader/WidgetLoader;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed$3;

    invoke-direct {v3, p0}, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed$3;-><init>(Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/buzzfeed/android/data/loader/WidgetLoader;->loadPage(Ljava/lang/Boolean;ILcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;)V

    .line 466
    return-void
.end method
