.class Lcom/buzzfeed/android/widget/WidgetUtil;
.super Ljava/lang/Object;
.source "WidgetUtil.java"


# static fields
.field static final FEED_TYPE_REACTION:Ljava/lang/String; = "reaction"

.field static final FEED_TYPE_SECTION:Ljava/lang/String; = "section"

.field static final VIEW_BUZZ_ID:Ljava/lang/String; = "viewBuzzId"

.field static final VIEW_BUZZ_URI:Ljava/lang/String; = "viewBuzzUri"

.field static final VIEW_FEED_NAME:Ljava/lang/String; = "viewFeedName"

.field static final VIEW_FEED_URL:Ljava/lang/String; = "viewFeedUrl"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getWidgetFeedType(Z)Ljava/lang/String;
    .registers 2
    .param p0, "isBadgeFeed"    # Z

    .prologue
    .line 17
    if-eqz p0, :cond_5

    const-string v0, "reaction"

    :goto_4
    return-object v0

    :cond_5
    const-string v0, "section"

    goto :goto_4
.end method
