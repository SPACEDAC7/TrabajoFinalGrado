.class public Lcom/buzzfeed/android/data/tracking/BuffetTracker;
.super Ljava/lang/Object;
.source "BuffetTracker.java"


# static fields
.field public static final QUANTCAST_GENERAL_EVENT_NAME:Ljava/lang/String; = "view-page"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mDustbusterClient:Lcom/buzzfeed/analytics/client/DustbusterClient;

.field private mEdition:Ljava/lang/String;

.field private mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    const-class v0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/buzzfeed/analytics/client/BuzzFeedTracker;Lcom/buzzfeed/analytics/client/DustbusterClient;Ljava/lang/String;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "tracker"    # Lcom/buzzfeed/analytics/client/BuzzFeedTracker;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "dustbusterClient"    # Lcom/buzzfeed/analytics/client/DustbusterClient;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "edition"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mAppContext:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    .line 62
    iput-object p3, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mDustbusterClient:Lcom/buzzfeed/analytics/client/DustbusterClient;

    .line 63
    iput-object p4, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mEdition:Ljava/lang/String;

    .line 64
    return-void
.end method

.method private buildContentTypeFromFlowId(Lcom/buzzfeed/toolkit/content/FlowItem;)Ljava/lang/String;
    .registers 7
    .param p1, "item"    # Lcom/buzzfeed/toolkit/content/FlowItem;

    .prologue
    .line 273
    const-string v0, ""

    .line 274
    .local v0, "contentType":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/content/FlowItem;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/buzzfeed/toolkit/content/BuffetType;->valueOf(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/BuffetType;

    move-result-object v1

    .line 275
    .local v1, "type":Lcom/buzzfeed/toolkit/content/BuffetType;
    sget-object v2, Lcom/buzzfeed/android/data/tracking/BuffetTracker$1;->$SwitchMap$com$buzzfeed$toolkit$content$BuffetType:[I

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/content/BuffetType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_48

    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".buildContentTypeFromFlowId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No case found for type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :goto_40
    return-object v0

    .line 278
    :pswitch_41
    const-string/jumbo v0, "video"

    .line 279
    goto :goto_40

    .line 287
    :pswitch_45
    const-string v0, "buzz"

    .line 288
    goto :goto_40

    .line 275
    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_41
        :pswitch_41
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
    .end packed-switch
.end method

.method private getString(I)Ljava/lang/String;
    .registers 3
    .param p1, "resourceId"    # I

    .prologue
    .line 298
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public trackBackSearchFeed()V
    .registers 6

    .prologue
    .line 199
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mDustbusterClient:Lcom/buzzfeed/analytics/client/DustbusterClient;

    const-string v1, "/list/search"

    const-string v2, "back"

    const-string v3, "search_back"

    const-string v4, "search_screen"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackUiTapEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public trackBookmarksClicked(Ljava/lang/String;)V
    .registers 6
    .param p1, "screen"    # Ljava/lang/String;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    const v1, 0x7f0901f9

    invoke-direct {p0, v1}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0901cc

    invoke-direct {p0, v2}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f09021f

    invoke-direct {p0, v3}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mDustbusterClient:Lcom/buzzfeed/analytics/client/DustbusterClient;

    const-string v1, "bookmarks"

    const/4 v2, 0x0

    const-string v3, "overflow"

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackUiTapEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public trackBreakingNewsLinkClicked(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "screen"    # Ljava/lang/String;

    .prologue
    .line 204
    invoke-static {p1}, Lcom/buzzfeed/android/util/BuzzUtils;->isBuzzFeedUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 205
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    const v1, 0x7f0901f6

    invoke-direct {p0, v1}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0901b1

    invoke-direct {p0, v2}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 208
    :cond_1c
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mDustbusterClient:Lcom/buzzfeed/analytics/client/DustbusterClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackBreakingNewsUnitTap(ILjava/lang/String;)V

    .line 209
    return-void
.end method

.method public trackBuffetOpenShareSheet()V
    .registers 5

    .prologue
    .line 222
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    const v1, 0x7f0901f0

    .line 223
    invoke-direct {p0, v1}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0901ca

    .line 224
    invoke-direct {p0, v2}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 222
    invoke-virtual {v0, v1, v2, v3}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public trackBuffetShareActivity(Lcom/buzzfeed/toolkit/content/FlowItem;Ljava/lang/String;ILjava/lang/String;)V
    .registers 11
    .param p1, "item"    # Lcom/buzzfeed/toolkit/content/FlowItem;
    .param p2, "screen"    # Ljava/lang/String;
    .param p3, "position"    # I
    .param p4, "appName"    # Ljava/lang/String;

    .prologue
    .line 239
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->buildContentTypeFromFlowId(Lcom/buzzfeed/toolkit/content/FlowItem;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->trackBuffetShareActivity(Lcom/buzzfeed/toolkit/content/FlowItem;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method public trackBuffetShareActivity(Lcom/buzzfeed/toolkit/content/FlowItem;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "item"    # Lcom/buzzfeed/toolkit/content/FlowItem;
    .param p2, "screen"    # Ljava/lang/String;
    .param p3, "position"    # I
    .param p4, "appName"    # Ljava/lang/String;
    .param p5, "contentType"    # Ljava/lang/String;

    .prologue
    .line 254
    invoke-static {p4}, Lcom/buzzfeed/analytics/util/IntentStringConverter;->convertIntentToApp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 255
    .local v4, "simpleName":Ljava/lang/String;
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mDustbusterClient:Lcom/buzzfeed/analytics/client/DustbusterClient;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackTrendingShare(Lcom/buzzfeed/toolkit/content/FlowItem;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    const v1, 0x7f0901dc

    .line 257
    invoke-direct {p0, v1}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0901c3

    .line 258
    invoke-direct {p0, v2}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 256
    invoke-virtual {v0, v1, v2, v4}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method public trackFeedbackClicked(Ljava/lang/String;)V
    .registers 6
    .param p1, "screen"    # Ljava/lang/String;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    const v1, 0x7f0901f9

    invoke-direct {p0, v1}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0901cb

    invoke-direct {p0, v2}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f090220

    invoke-direct {p0, v3}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mDustbusterClient:Lcom/buzzfeed/analytics/client/DustbusterClient;

    const-string v1, "feedback"

    const/4 v2, 0x0

    const-string v3, "overflow"

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackUiTapEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public trackNewsPackageClick(Ljava/lang/String;Lcom/buzzfeed/toolkit/content/PackageContent;Lcom/buzzfeed/toolkit/content/PostContent;II)V
    .registers 19
    .param p1, "screen"    # Ljava/lang/String;
    .param p2, "parent"    # Lcom/buzzfeed/toolkit/content/PackageContent;
    .param p3, "postContent"    # Lcom/buzzfeed/toolkit/content/PostContent;
    .param p4, "feedPosition"    # I
    .param p5, "packagePosition"    # I

    .prologue
    .line 115
    iget-object v1, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901f0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 116
    .local v11, "gaCategory":Ljava/lang/String;
    iget-object v1, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 117
    .local v10, "gaAction":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 118
    .local v12, "gaLabel":Ljava/lang/String;
    new-instance v9, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v9}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 119
    .local v9, "customDimensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface/range {p3 .. p3}, Lcom/buzzfeed/toolkit/content/PostContent;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v1, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2}, Lcom/buzzfeed/toolkit/content/PackageContent;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v1, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2}, Lcom/buzzfeed/toolkit/content/PackageContent;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v1, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    invoke-virtual {v1, v11, v10, v12, v9}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 124
    iget-object v1, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mDustbusterClient:Lcom/buzzfeed/analytics/client/DustbusterClient;

    .line 125
    invoke-interface {p2}, Lcom/buzzfeed/toolkit/content/PackageContent;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2}, Lcom/buzzfeed/toolkit/content/PackageContent;->getPackageItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    .line 126
    invoke-interface {p2}, Lcom/buzzfeed/toolkit/content/PackageContent;->getId()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object v4, p1

    move/from16 v5, p5

    .line 124
    invoke-virtual/range {v1 .. v8}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackNewsPackageUnitTap(Lcom/buzzfeed/toolkit/content/PostContent;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 127
    return-void
.end method

.method public trackOverflowMenuOpened(Ljava/lang/String;)V
    .registers 6
    .param p1, "screen"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 156
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    const v1, 0x7f0901f9

    invoke-direct {p0, v1}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0901cb

    invoke-direct {p0, v2}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mDustbusterClient:Lcom/buzzfeed/analytics/client/DustbusterClient;

    const-string v1, "overflow_menu"

    const-string v2, "overflow"

    invoke-virtual {v0, p1, v1, v3, v2}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackUiTapEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public trackPostClicked(Ljava/lang/String;Lcom/buzzfeed/toolkit/content/PostContent;IZZ)V
    .registers 15
    .param p1, "screen"    # Ljava/lang/String;
    .param p2, "postContent"    # Lcom/buzzfeed/toolkit/content/PostContent;
    .param p3, "position"    # I
    .param p4, "isSplash"    # Z
    .param p5, "isAd"    # Z

    .prologue
    const v8, 0x7f0f0011

    const v7, 0x7f0901b7

    .line 94
    const v3, 0x7f0901f0

    invoke-direct {p0, v3}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "category":Ljava/lang/String;
    iget-object v3, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    const v4, 0x7f090176

    invoke-direct {p0, v4}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackAdjustEvent(Ljava/lang/String;)V

    .line 97
    iget-object v3, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    invoke-virtual {v3}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->getTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v4

    new-instance v3, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;

    invoke-direct {v3}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;-><init>()V

    iget-object v5, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mAppContext:Landroid/content/Context;

    .line 98
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-interface {p2}, Lcom/buzzfeed/toolkit/content/PostContent;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;

    .line 99
    invoke-virtual {v3}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->build()Ljava/util/Map;

    move-result-object v3

    .line 97
    invoke-virtual {v4, v3}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 102
    new-instance v2, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v2}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 103
    .local v2, "customDimensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mAppContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2}, Lcom/buzzfeed/toolkit/content/PostContent;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    if-eqz p5, :cond_8a

    const v3, 0x7f0901b0

    invoke-direct {p0, v3}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "action":Ljava/lang/String;
    :goto_62
    iget-object v3, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v0, v4, v2}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 106
    if-eqz p4, :cond_84

    .line 107
    iget-object v3, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    const v4, 0x7f090204

    invoke-direct {p0, v4}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v7}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f090215

    invoke-direct {p0, v6}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 111
    :cond_84
    iget-object v3, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mDustbusterClient:Lcom/buzzfeed/analytics/client/DustbusterClient;

    invoke-virtual {v3, p2, p3, p1}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackBuzzUnitTap(Lcom/buzzfeed/toolkit/content/PostContent;ILjava/lang/String;)V

    .line 112
    return-void

    .line 104
    .end local v0    # "action":Ljava/lang/String;
    :cond_8a
    invoke-direct {p0, v7}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_62
.end method

.method public trackPullToRefresh()V
    .registers 7

    .prologue
    .line 90
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    const v1, 0x7f0901f0

    invoke-direct {p0, v1}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0901cf

    invoke-direct {p0, v2}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 91
    return-void
.end method

.method public trackRateUsClicked(Ljava/lang/String;)V
    .registers 6
    .param p1, "screen"    # Ljava/lang/String;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    const v1, 0x7f0901f9

    invoke-direct {p0, v1}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0901cb

    invoke-direct {p0, v2}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f090221

    invoke-direct {p0, v3}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mDustbusterClient:Lcom/buzzfeed/analytics/client/DustbusterClient;

    const-string v1, "rate_us"

    const/4 v2, 0x0

    const-string v3, "overflow"

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackUiTapEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public trackScreenView(Lcom/buzzfeed/android/data/Feed;I)V
    .registers 9
    .param p1, "feed"    # Lcom/buzzfeed/android/data/Feed;
    .param p2, "page"    # I

    .prologue
    const/4 v5, 0x1

    .line 79
    if-ne p2, v5, :cond_11

    .line 80
    iget-object v2, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mEdition:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/buzzfeed/android/util/AnalyticsUtils;->formatFeedNameForQuantcast(Lcom/buzzfeed/android/data/Feed;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "quantcastFeedName":Ljava/lang/String;
    iget-object v2, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    const-string/jumbo v3, "view-page"

    invoke-virtual {v2, v3, v0}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackQuantcastEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .end local v0    # "quantcastFeedName":Ljava/lang/String;
    :cond_11
    iget-object v2, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mEdition:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/buzzfeed/android/util/AnalyticsUtils;->buildScreenNameFromFeed(Lcom/buzzfeed/android/data/Feed;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "screen":Ljava/lang/String;
    iget-object v3, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-le p2, v5, :cond_49

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_37
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackPageView(Ljava/lang/String;Ljava/util/Map;)V

    .line 86
    iget-object v2, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mDustbusterClient:Lcom/buzzfeed/analytics/client/DustbusterClient;

    invoke-virtual {v2, v1}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackFeedPageView(Ljava/lang/String;)V

    .line 87
    return-void

    .line 85
    :cond_49
    const-string v2, ""

    goto :goto_37
.end method

.method public trackSearchClicked(Ljava/lang/String;)V
    .registers 8
    .param p1, "screen"    # Ljava/lang/String;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    const v1, 0x7f0901f8

    invoke-direct {p0, v1}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0901bd

    invoke-direct {p0, v2}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 75
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mDustbusterClient:Lcom/buzzfeed/analytics/client/DustbusterClient;

    const-string v1, "search"

    const-string v2, "header_search"

    const-string v3, "header"

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackUiTapEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public trackSearchQuery(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "screen"    # Ljava/lang/String;
    .param p2, "searchQuery"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    const v1, 0x7f0901f5

    invoke-direct {p0, v1}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0901bd

    invoke-direct {p0, v2}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x0

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 68
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    const v1, 0x7f090177

    invoke-direct {p0, v1}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackAdjustEvent(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mDustbusterClient:Lcom/buzzfeed/analytics/client/DustbusterClient;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackFeedPageView(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackPageView(Ljava/lang/String;Ljava/util/Map;)V

    .line 71
    return-void
.end method

.method public trackSettingsClicked(Ljava/lang/String;)V
    .registers 6
    .param p1, "screen"    # Ljava/lang/String;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    const v1, 0x7f0901f9

    invoke-direct {p0, v1}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0901cb

    invoke-direct {p0, v2}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f090222

    invoke-direct {p0, v3}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mDustbusterClient:Lcom/buzzfeed/analytics/client/DustbusterClient;

    const-string v1, "settings"

    const/4 v2, 0x0

    const-string v3, "overflow"

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackUiTapEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public trackShowIconClicked(Lcom/buzzfeed/toolkit/content/VideoContent;Ljava/lang/String;)V
    .registers 10
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/VideoContent;
    .param p2, "screen"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 130
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".trackShowIconClicked"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "TAG":Ljava/lang/String;
    if-eqz p1, :cond_1d

    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/VideoContent;->getShow()Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;

    move-result-object v4

    if-nez v4, :cond_23

    .line 132
    :cond_1d
    const-string v4, "Unable to track event. Required content not available."

    invoke-static {v0, v4}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :goto_22
    return-void

    .line 137
    :cond_23
    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 138
    .local v1, "customDimensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mAppContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f000e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 139
    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/VideoContent;->getId()Ljava/lang/String;

    move-result-object v5

    .line 138
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v4, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mAppContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 141
    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/VideoContent;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 140
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/VideoContent;->getShow()Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;

    move-result-object v4

    invoke-virtual {v4}, Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;->getId()Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, "showId":Ljava/lang/String;
    iget-object v4, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    const v5, 0x7f0901f0

    .line 145
    invoke-direct {p0, v5}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0901be

    .line 146
    invoke-direct {p0, v6}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 144
    invoke-virtual {v4, v5, v6, v3, v1}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "show:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "formattedItemId":Ljava/lang/String;
    iget-object v4, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mDustbusterClient:Lcom/buzzfeed/analytics/client/DustbusterClient;

    const-string v5, "show_icon"

    const-string v6, "feed_module"

    invoke-virtual {v4, p2, v5, v2, v6}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackUiTapEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22
.end method

.method public trackShowIconClickedFromShowsPage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "screen"    # Ljava/lang/String;
    .param p2, "showId"    # Ljava/lang/String;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    const v1, 0x7f090202

    invoke-direct {p0, v1}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0901be

    invoke-direct {p0, v2}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mDustbusterClient:Lcom/buzzfeed/analytics/client/DustbusterClient;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "shows_list"

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackUiTapEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method public trackSignInClicked(Ljava/lang/String;)V
    .registers 6
    .param p1, "screen"    # Ljava/lang/String;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    const v1, 0x7f0901f9

    invoke-direct {p0, v1}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0901cb

    invoke-direct {p0, v2}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f090223

    invoke-direct {p0, v3}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mDustbusterClient:Lcom/buzzfeed/analytics/client/DustbusterClient;

    const-string v1, "sign_in"

    const/4 v2, 0x0

    const-string v3, "overflow"

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackUiTapEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public trackSignOut()V
    .registers 7

    .prologue
    .line 181
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    const v1, 0x7f0901f7

    invoke-direct {p0, v1}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0901de

    invoke-direct {p0, v2}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 182
    return-void
.end method

.method public trackSignOutCancel()V
    .registers 7

    .prologue
    .line 185
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    const v1, 0x7f0901f7

    invoke-direct {p0, v1}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0901ad

    invoke-direct {p0, v2}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 186
    return-void
.end method

.method public trackSignOutClicked(Ljava/lang/String;)V
    .registers 6
    .param p1, "screen"    # Ljava/lang/String;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    const v1, 0x7f0901f9

    invoke-direct {p0, v1}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0901cb

    invoke-direct {p0, v2}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f090224

    invoke-direct {p0, v3}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mDustbusterClient:Lcom/buzzfeed/analytics/client/DustbusterClient;

    const-string v1, "sign_out"

    const/4 v2, 0x0

    const-string v3, "overflow"

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackUiTapEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public trackTabClicked(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "screen"    # Ljava/lang/String;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    const v1, 0x7f0901f8

    invoke-direct {p0, v1}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0901bf

    invoke-direct {p0, v2}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mDustbusterClient:Lcom/buzzfeed/analytics/client/DustbusterClient;

    const/4 v1, 0x0

    const-string/jumbo v2, "tab_nav"

    invoke-virtual {v0, p2, p1, v1, v2}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackUiTapEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method public trackUnitImpressions(Ljava/lang/String;Ljava/util/Collection;)V
    .registers 4
    .param p1, "screen"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/buzzfeed/analytics/model/UnitImpression;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 212
    .local p2, "impressions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/buzzfeed/analytics/model/UnitImpression;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    if-eqz p2, :cond_13

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 213
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->mDustbusterClient:Lcom/buzzfeed/analytics/client/DustbusterClient;

    invoke-virtual {v0, p1, p2}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackUnitImpressions(Ljava/lang/String;Ljava/util/Collection;)V

    .line 215
    :cond_13
    return-void
.end method
