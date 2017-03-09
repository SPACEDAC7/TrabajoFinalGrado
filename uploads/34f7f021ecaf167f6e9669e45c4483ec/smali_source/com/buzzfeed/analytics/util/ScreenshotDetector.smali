.class public Lcom/buzzfeed/analytics/util/ScreenshotDetector;
.super Landroid/database/ContentObserver;
.source "ScreenshotDetector.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 19
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 20
    iput-object p1, p0, Lcom/buzzfeed/analytics/util/ScreenshotDetector;->mContext:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public beginDetection()V
    .registers 4

    .prologue
    .line 32
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 33
    .local v0, "contentUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/buzzfeed/analytics/util/ScreenshotDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 34
    return-void
.end method

.method public endDetection()V
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/buzzfeed/analytics/util/ScreenshotDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 38
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 25
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 26
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 27
    invoke-static {}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->getInstance()Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/analytics/util/ScreenshotDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackScreenshot(Landroid/content/Context;)V

    .line 29
    :cond_14
    return-void
.end method
