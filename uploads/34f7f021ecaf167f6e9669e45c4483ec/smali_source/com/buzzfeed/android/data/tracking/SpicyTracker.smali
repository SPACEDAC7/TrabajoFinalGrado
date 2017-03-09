.class public Lcom/buzzfeed/android/data/tracking/SpicyTracker;
.super Ljava/lang/Object;
.source "SpicyTracker.java"


# static fields
.field public static final ANDROID_TYPE:Ljava/lang/String; = "android"

.field public static final QUANTCAST_GENERAL_EVENT_NAME:Ljava/lang/String; = "view-page"

.field public static final QUANTCAST_LABEL_BUZZ:Ljava/lang/String; = "Buzz"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mDustbusterClient:Lcom/buzzfeed/analytics/client/DustbusterClient;

.field private mEdition:Ljava/lang/String;

.field private mLotameTracker:Lcom/buzzfeed/android/data/tracking/LotameEventTracker;

.field private mTenderizer:Lcom/buzzfeed/toolkit/tenderizer/Tenderizer;

.field private mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const-class v0, Lcom/buzzfeed/android/data/tracking/SpicyTracker;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/buzzfeed/analytics/client/BuzzFeedTracker;Lcom/buzzfeed/android/data/tracking/LotameEventTracker;Lcom/buzzfeed/toolkit/tenderizer/Tenderizer;Lcom/buzzfeed/analytics/client/DustbusterClient;Ljava/lang/String;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "tracker"    # Lcom/buzzfeed/analytics/client/BuzzFeedTracker;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "lotameTracker"    # Lcom/buzzfeed/android/data/tracking/LotameEventTracker;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "tenderizer"    # Lcom/buzzfeed/toolkit/tenderizer/Tenderizer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "dustbusterClient"    # Lcom/buzzfeed/analytics/client/DustbusterClient;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "edition"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->mAppContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    .line 65
    iput-object p3, p0, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->mLotameTracker:Lcom/buzzfeed/android/data/tracking/LotameEventTracker;

    .line 66
    iput-object p4, p0, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->mTenderizer:Lcom/buzzfeed/toolkit/tenderizer/Tenderizer;

    .line 67
    iput-object p5, p0, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->mDustbusterClient:Lcom/buzzfeed/analytics/client/DustbusterClient;

    .line 68
    iput-object p6, p0, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->mEdition:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public static getQuantcastUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "quantcastLabel"    # Ljava/lang/String;
    .param p1, "partialUrl"    # Ljava/lang/String;

    .prologue
    .line 72
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 76
    .end local p0    # "quantcastLabel":Ljava/lang/String;
    :goto_21
    return-object p0

    .line 75
    .restart local p0    # "quantcastLabel":Ljava/lang/String;
    :cond_22
    sget-object v0, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong partial url was passed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21
.end method

.method private getString(I)Ljava/lang/String;
    .registers 3
    .param p1, "resourceId"    # I

    .prologue
    .line 305
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public trackBack()V
    .registers 7

    .prologue
    .line 230
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    const v1, 0x7f0901f5

    invoke-direct {p0, v1}, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0901af

    invoke-direct {p0, v2}, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 231
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->mDustbusterClient:Lcom/buzzfeed/analytics/client/DustbusterClient;

    const-string v1, "/list/bpage"

    const-string v2, "back"

    const-string v3, "bpage"

    const-string v4, "header"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackUiTapEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    sget-object v0, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "trackBack"

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public trackBookmarkClick(Lcom/buzzfeed/toolkit/content/PostContent;Z)V
    .registers 10
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/PostContent;
    .param p2, "bookmarked"    # Z

    .prologue
    .line 241
    if-eqz p2, :cond_37

    const v6, 0x7f0901ab

    .line 242
    .local v6, "resource":I
    :goto_5
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    const v1, 0x7f0901f5

    invoke-direct {p0, v1}, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v6}, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 243
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->mDustbusterClient:Lcom/buzzfeed/analytics/client/DustbusterClient;

    invoke-virtual {v0, p1, p2}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackBookmarkBuzzPage(Lcom/buzzfeed/toolkit/content/PostContent;Z)V

    .line 244
    sget-object v0, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "trackBookmarkClicked - isBookmarked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return-void

    .line 241
    .end local v6    # "resource":I
    :cond_37
    const v6, 0x7f0901e3

    goto :goto_5
.end method

.method public trackFabShare(Lcom/buzzfeed/toolkit/content/PostContent;)V
    .registers 8
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/PostContent;

    .prologue
    const-wide/16 v4, 0x0

    .line 84
    if-eqz p1, :cond_64

    .line 86
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    const v1, 0x7f0901ed

    invoke-direct {p0, v1}, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0901dc

    invoke-direct {p0, v2}, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/buzzfeed/android/util/BuzzUtils;->removeCacheBuster(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 87
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    const v1, 0x7f0901f4

    invoke-direct {p0, v1}, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0901b6

    invoke-direct {p0, v2}, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 90
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->mLotameTracker:Lcom/buzzfeed/android/data/tracking/LotameEventTracker;

    iget-object v1, p0, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->mAppContext:Landroid/content/Context;

    const-string v2, "android"

    invoke-virtual {v0, v1, v2, p1}, Lcom/buzzfeed/android/data/tracking/LotameEventTracker;->trackShare(Landroid/content/Context;Ljava/lang/String;Lcom/buzzfeed/toolkit/content/PostContent;)V

    .line 93
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    const v1, 0x7f090175

    invoke-direct {p0, v1}, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackAdjustEvent(Ljava/lang/String;)V

    .line 95
    sget-object v0, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TrackFabShare - Uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_64
    return-void
.end method

.method public trackFabShareActivity(Lcom/buzzfeed/toolkit/content/PostContent;Ljava/lang/String;)V
    .registers 5
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/PostContent;
    .param p2, "shareActivitySource"    # Ljava/lang/String;

    .prologue
    .line 122
    const v0, 0x7f0901c7

    invoke-direct {p0, v0}, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->trackGenericShareActivity(Lcom/buzzfeed/toolkit/content/PostContent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public trackFixedShareBarGenericShare(Lcom/buzzfeed/toolkit/content/PostContent;)V
    .registers 8
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/PostContent;

    .prologue
    const-wide/16 v4, 0x0

    .line 100
    if-eqz p1, :cond_64

    .line 102
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    const v1, 0x7f0901ed

    invoke-direct {p0, v1}, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0901dc

    invoke-direct {p0, v2}, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/buzzfeed/android/util/BuzzUtils;->removeCacheBuster(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 103
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    const v1, 0x7f0901f3

    invoke-direct {p0, v1}, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0901b6

    invoke-direct {p0, v2}, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 106
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->mLotameTracker:Lcom/buzzfeed/android/data/tracking/LotameEventTracker;

    iget-object v1, p0, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->mAppContext:Landroid/content/Context;

    const-string v2, "android"

    invoke-virtual {v0, v1, v2, p1}, Lcom/buzzfeed/android/data/tracking/LotameEventTracker;->trackShare(Landroid/content/Context;Ljava/lang/String;Lcom/buzzfeed/toolkit/content/PostContent;)V

    .line 109
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    const v1, 0x7f090175

    invoke-direct {p0, v1}, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackAdjustEvent(Ljava/lang/String;)V

    .line 111
    sget-object v0, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TrackFixedShareBarGenericShare - Uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_64
    return-void
.end method

.method public trackFixedShareBarGenericShareActivity(Lcom/buzzfeed/toolkit/content/PostContent;Ljava/lang/String;)V
    .registers 5
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/PostContent;
    .param p2, "shareActivitySource"    # Ljava/lang/String;

    .prologue
    .line 126
    const v0, 0x7f0901c6

    invoke-direct {p0, v0}, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persistent_bar"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->trackGenericShareActivity(Lcom/buzzfeed/toolkit/content/PostContent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public trackFixedShareBarShare(Lcom/buzzfeed/toolkit/util/ShareItemType;Lcom/buzzfeed/toolkit/content/PostContent;)V
    .registers 8
    .param p1, "type"    # Lcom/buzzfeed/toolkit/util/ShareItemType;
    .param p2, "content"    # Lcom/buzzfeed/toolkit/content/PostContent;

    .prologue
    const v4, 0x7f090200

    const v3, 0x7f0901c5

    .line 248
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->mAppContext:Landroid/content/Context;

    .line 250
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->mDustbusterClient:Lcom/buzzfeed/analytics/client/DustbusterClient;

    const-string v2, "persistent_bar"

    invoke-virtual {v1, p1, p2, v2}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackNativeShare(Lcom/buzzfeed/toolkit/util/ShareItemType;Lcom/buzzfeed/toolkit/content/PostContent;Ljava/lang/String;)V

    .line 252
    sget-object v1, Lcom/buzzfeed/toolkit/util/ShareItemType;->Generic:Lcom/buzzfeed/toolkit/util/ShareItemType;

    if-ne p1, v1, :cond_36

    .line 254
    invoke-static {}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->getInstance()Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    move-result-object v1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 255
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 256
    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/util/ShareItemType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 254
    invoke-virtual {v1, v2, v3, v4}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :goto_2a
    iget-object v1, p0, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->mLotameTracker:Lcom/buzzfeed/android/data/tracking/LotameEventTracker;

    iget-object v2, p0, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->mAppContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/util/ShareItemType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2}, Lcom/buzzfeed/android/data/tracking/LotameEventTracker;->trackShare(Landroid/content/Context;Ljava/lang/String;Lcom/buzzfeed/toolkit/content/PostContent;)V

    .line 266
    return-void

    .line 259
    :cond_36
    invoke-static {}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->getInstance()Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    move-result-object v1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 260
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 261
    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/util/ShareItemType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 259
    invoke-virtual {v1, v2, v3, v4}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a
.end method

.method public trackGenericShareActivity(Lcom/buzzfeed/toolkit/content/PostContent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/PostContent;
    .param p2, "gaAction"    # Ljava/lang/String;
    .param p3, "shareLocation"    # Ljava/lang/String;
    .param p4, "shareActivitySource"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-static {p4}, Lcom/buzzfeed/analytics/util/IntentStringConverter;->convertIntentToApp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, "appName":Ljava/lang/String;
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->mDustbusterClient:Lcom/buzzfeed/analytics/client/DustbusterClient;

    invoke-virtual {v0, p1, p3, v3}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackGenericShare(Lcom/buzzfeed/toolkit/content/PostContent;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    const v1, 0x7f090200

    invoke-direct {p0, v1}, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v4, 0x0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 141
    return-void
.end method

.method public trackPageView(Lcom/buzzfeed/toolkit/content/PostContent;Lcom/buzzfeed/android/data/Feed;Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;Ljava/util/List;Ljava/lang/String;)V
    .registers 22
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/PostContent;
    .param p2, "feed"    # Lcom/buzzfeed/android/data/Feed;
    .param p3, "viewState"    # Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;
    .param p5, "sourceUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/buzzfeed/toolkit/content/PostContent;",
            "Lcom/buzzfeed/android/data/Feed;",
            "Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 170
    .local p4, "unsupportedModules":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_14b

    invoke-interface/range {p1 .. p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getUri()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_14b

    .line 173
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    const-string/jumbo v3, "view-page"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v14, "Buzz"

    .line 174
    invoke-interface/range {p1 .. p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getUri()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->getQuantcastUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v6, v7

    const/4 v7, 0x1

    invoke-interface/range {p1 .. p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getCategory()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v6, v7

    .line 173
    invoke-virtual {v2, v3, v6}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackQuantcastEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 177
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 178
    .local v11, "customDimensions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->mAppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/buzzfeed/android/data/BuzzUser;->getInstance(Landroid/content/Context;)Lcom/buzzfeed/android/data/BuzzUser;

    move-result-object v9

    .line 179
    .local v9, "buzzUser":Lcom/buzzfeed/android/data/BuzzUser;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->mAppContext:Landroid/content/Context;

    .line 180
    .local v10, "context":Landroid/content/Context;
    if-eqz v9, :cond_56

    .line 181
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9}, Lcom/buzzfeed/android/data/BuzzUser;->isLogin()Z

    move-result v2

    if-eqz v2, :cond_14c

    const-string v2, "android:true"

    :goto_53
    invoke-virtual {v11, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_56
    invoke-interface/range {p1 .. p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getCategory()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_72

    .line 183
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :cond_72
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/buzzfeed/toolkit/content/Buzz;

    if-eqz v2, :cond_b4

    move-object/from16 v8, p1

    .line 187
    check-cast v8, Lcom/buzzfeed/toolkit/content/Buzz;

    .line 188
    .local v8, "buzz":Lcom/buzzfeed/toolkit/content/Buzz;
    invoke-virtual {v8}, Lcom/buzzfeed/toolkit/content/Buzz;->getBadges()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_98

    .line 189
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8}, Lcom/buzzfeed/toolkit/content/Buzz;->getBadges()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_98
    invoke-virtual {v8}, Lcom/buzzfeed/toolkit/content/Buzz;->getFlags()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b4

    .line 191
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8}, Lcom/buzzfeed/toolkit/content/Buzz;->getFlags()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .end local v8    # "buzz":Lcom/buzzfeed/toolkit/content/Buzz;
    :cond_b4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/post"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getUri()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/buzzfeed/android/util/BuzzUtils;->removeCacheBuster(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v11}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackPageView(Ljava/lang/String;Ljava/util/Map;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->mLotameTracker:Lcom/buzzfeed/android/data/tracking/LotameEventTracker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->mAppContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v2, v3, v0}, Lcom/buzzfeed/android/data/tracking/LotameEventTracker;->trackBuzzPageView(Landroid/content/Context;Lcom/buzzfeed/toolkit/content/PostContent;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    const v3, 0x7f090176

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackAdjustEvent(Ljava/lang/String;)V

    .line 202
    const/4 v4, 0x0

    .line 203
    .local v4, "viewStateString":Ljava/lang/String;
    sget-object v2, Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;->Fallback:Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;

    move-object/from16 v0, p3

    if-ne v0, v2, :cond_150

    .line 204
    const-string v4, "fallback"

    .line 211
    :cond_fc
    :goto_fc
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->mEdition:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/buzzfeed/android/util/AnalyticsUtils;->buildScreenNameFromFeed(Lcom/buzzfeed/android/data/Feed;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 214
    .local v5, "feedTrackingName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->mDustbusterClient:Lcom/buzzfeed/analytics/client/DustbusterClient;

    move-object/from16 v3, p1

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackBuzzPageView(Lcom/buzzfeed/toolkit/content/PostContent;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 217
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12e

    .line 218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->mTenderizer:Lcom/buzzfeed/toolkit/tenderizer/Tenderizer;

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Lcom/buzzfeed/toolkit/tenderizer/Tenderizer;->getFromClientId(Ljava/lang/String;)J

    move-result-wide v12

    .line 219
    .local v12, "fromClientId":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->mDustbusterClient:Lcom/buzzfeed/analytics/client/DustbusterClient;

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v2, v0, v1, v12, v13}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackUserEdge(Lcom/buzzfeed/toolkit/content/PostContent;Ljava/lang/String;J)V

    .line 222
    .end local v12    # "fromClientId":J
    :cond_12e
    sget-object v2, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "trackPageView- Uri:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getUri()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .end local v4    # "viewStateString":Ljava/lang/String;
    .end local v5    # "feedTrackingName":Ljava/lang/String;
    .end local v9    # "buzzUser":Lcom/buzzfeed/android/data/BuzzUser;
    .end local v10    # "context":Landroid/content/Context;
    .end local v11    # "customDimensions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_14b
    return-void

    .line 181
    .restart local v9    # "buzzUser":Lcom/buzzfeed/android/data/BuzzUser;
    .restart local v10    # "context":Landroid/content/Context;
    .restart local v11    # "customDimensions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_14c
    const-string v2, "android:false"

    goto/16 :goto_53

    .line 205
    .restart local v4    # "viewStateString":Ljava/lang/String;
    :cond_150
    sget-object v2, Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;->Native:Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;

    move-object/from16 v0, p3

    if-ne v0, v2, :cond_159

    .line 206
    const-string v4, "fully_native"

    goto :goto_fc

    .line 207
    :cond_159
    sget-object v2, Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;->PartiallyNative:Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;

    move-object/from16 v0, p3

    if-ne v0, v2, :cond_fc

    .line 208
    const-string v4, "partially_native"

    goto :goto_fc
.end method

.method public trackShareBarShare(Lcom/buzzfeed/toolkit/util/ShareItemType;Lcom/buzzfeed/toolkit/content/PostContent;Lcom/buzzfeed/spicerack/data/sharebar/SpicyShareBarLocation;)V
    .registers 12
    .param p1, "type"    # Lcom/buzzfeed/toolkit/util/ShareItemType;
    .param p2, "content"    # Lcom/buzzfeed/toolkit/content/PostContent;
    .param p3, "shareBarLocation"    # Lcom/buzzfeed/spicerack/data/sharebar/SpicyShareBarLocation;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->mAppContext:Landroid/content/Context;

    .line 272
    .local v0, "context":Landroid/content/Context;
    sget-object v2, Lcom/buzzfeed/spicerack/data/sharebar/SpicyShareBarLocation;->Top:Lcom/buzzfeed/spicerack/data/sharebar/SpicyShareBarLocation;

    if-ne p3, v2, :cond_4d

    const-string/jumbo v1, "top_share_bar"

    .line 276
    .local v1, "shareLocation":Ljava/lang/String;
    :goto_9
    iget-object v2, p0, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->mDustbusterClient:Lcom/buzzfeed/analytics/client/DustbusterClient;

    invoke-virtual {v2, p1, p2, v1}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackNativeShare(Lcom/buzzfeed/toolkit/util/ShareItemType;Lcom/buzzfeed/toolkit/content/PostContent;Ljava/lang/String;)V

    .line 279
    invoke-static {}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->getInstance()Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    move-result-object v2

    const v3, 0x7f090200

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 280
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090225

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p3}, Lcom/buzzfeed/spicerack/data/sharebar/SpicyShareBarLocation;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 281
    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/util/ShareItemType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 279
    invoke-virtual {v2, v3, v4, v5}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v2, p0, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->mLotameTracker:Lcom/buzzfeed/android/data/tracking/LotameEventTracker;

    iget-object v3, p0, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->mAppContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/util/ShareItemType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p2}, Lcom/buzzfeed/android/data/tracking/LotameEventTracker;->trackShare(Landroid/content/Context;Ljava/lang/String;Lcom/buzzfeed/toolkit/content/PostContent;)V

    .line 285
    return-void

    .line 272
    .end local v1    # "shareLocation":Ljava/lang/String;
    :cond_4d
    const-string v1, "bottom_share_bar"

    goto :goto_9
.end method

.method public trackSubBuzzOpenShareSheet()V
    .registers 5

    .prologue
    .line 313
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    const v1, 0x7f090205

    invoke-direct {p0, v1}, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0901ca

    invoke-direct {p0, v2}, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method public trackSubBuzzShareActivityClicked(Lcom/buzzfeed/toolkit/content/PostContent;Ljava/lang/String;)V
    .registers 9
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/PostContent;
    .param p2, "shareActivitySource"    # Ljava/lang/String;

    .prologue
    .line 325
    invoke-static {p2}, Lcom/buzzfeed/analytics/util/IntentStringConverter;->convertIntentToApp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 328
    .local v3, "appName":Ljava/lang/String;
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->mDustbusterClient:Lcom/buzzfeed/analytics/client/DustbusterClient;

    invoke-virtual {v0, p1, v3}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackSubbuzzShare(Lcom/buzzfeed/toolkit/content/PostContent;Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    const v1, 0x7f090200

    .line 332
    invoke-direct {p0, v1}, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0901e0

    .line 333
    invoke-direct {p0, v2}, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x0

    .line 331
    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 336
    return-void
.end method

.method public trackUrlClicked(Lcom/buzzfeed/toolkit/content/PostContent;Ljava/lang/String;Z)V
    .registers 8
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/PostContent;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "webView"    # Z

    .prologue
    .line 147
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 148
    if-eqz p3, :cond_3a

    const v0, 0x7f0901f6

    .line 151
    .local v0, "catResourceId":I
    :goto_b
    iget-object v1, p0, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    invoke-direct {p0, v0}, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0901b4

    invoke-direct {p0, v3}, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->mDustbusterClient:Lcom/buzzfeed/analytics/client/DustbusterClient;

    invoke-virtual {v1, p1, p2}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackLinkTap(Lcom/buzzfeed/toolkit/content/PostContent;Ljava/lang/String;)V

    .line 156
    sget-object v1, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "trackUrlClicked - Uri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .end local v0    # "catResourceId":I
    :cond_39
    return-void

    .line 148
    :cond_3a
    const v0, 0x7f090205

    goto :goto_b
.end method

.method public trackWebShare(Ljava/lang/String;Lcom/buzzfeed/toolkit/content/PostContent;Lorg/json/JSONObject;)V
    .registers 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "content"    # Lcom/buzzfeed/toolkit/content/PostContent;
    .param p3, "shareJson"    # Lorg/json/JSONObject;

    .prologue
    .line 292
    iget-object v1, p0, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->mDustbusterClient:Lcom/buzzfeed/analytics/client/DustbusterClient;

    invoke-virtual {v1, p1, p2}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackWebShare(Ljava/lang/String;Lcom/buzzfeed/toolkit/content/PostContent;)V

    .line 295
    iget-object v1, p0, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->mLotameTracker:Lcom/buzzfeed/android/data/tracking/LotameEventTracker;

    iget-object v2, p0, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1, p2}, Lcom/buzzfeed/android/data/tracking/LotameEventTracker;->trackShare(Landroid/content/Context;Ljava/lang/String;Lcom/buzzfeed/toolkit/content/PostContent;)V

    .line 298
    if-eqz p3, :cond_18

    .line 299
    new-instance v0, Lcom/buzzfeed/analytics/model/GAEvent;

    invoke-direct {v0, p3}, Lcom/buzzfeed/analytics/model/GAEvent;-><init>(Lorg/json/JSONObject;)V

    .line 300
    .local v0, "event":Lcom/buzzfeed/analytics/model/GAEvent;
    iget-object v1, p0, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    invoke-virtual {v1, v0}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Lcom/buzzfeed/analytics/model/GAEvent;)V

    .line 302
    .end local v0    # "event":Lcom/buzzfeed/analytics/model/GAEvent;
    :cond_18
    return-void
.end method
