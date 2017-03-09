.class public Lcom/buzzfeed/android/widget/WidgetService;
.super Landroid/app/Service;
.source "WidgetService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;
    }
.end annotation


# static fields
.field public static final PREFERENCE_WIDGET_BADGE_IMAGE_URL:Ljava/lang/String; = "widgetBadgeImageUrl"

.field public static final PREFERENCE_WIDGET_FEED_TYPE:Ljava/lang/String; = "widgetFeedType"

.field private static final TAG:Ljava/lang/String;

.field public static final WIDGET_REFRESH_DELAY:I = 0xea60

.field private static feedConversionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final uniqueCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static widgetServiceFeedMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private feedListProvider:Lcom/buzzfeed/android/navigation/FeedListProvider;

.field private widgetIdsToUpdate:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 48
    const-class v0, Lcom/buzzfeed/android/widget/WidgetService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/widget/WidgetService;->TAG:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/buzzfeed/android/widget/WidgetService;->uniqueCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/buzzfeed/android/widget/WidgetService;->feedConversionMap:Ljava/util/HashMap;

    .line 60
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/buzzfeed/android/widget/WidgetService;->widgetServiceFeedMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 63
    sget-object v0, Lcom/buzzfeed/android/widget/WidgetService;->feedConversionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "viral"

    const-string/jumbo v2, "trending"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/buzzfeed/android/widget/WidgetService;->feedConversionMap:Ljava/util/HashMap;

    const-string v1, "quiz"

    const-string v2, "quizzes"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/android/widget/WidgetService;->widgetIdsToUpdate:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;I)V
    .registers 2
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I

    .prologue
    .line 43
    invoke-static {p0, p1}, Lcom/buzzfeed/android/widget/WidgetService;->updateWidget(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lcom/buzzfeed/android/widget/WidgetService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method protected static delWidgetServiceFeed(Landroid/content/Context;I)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appWidgetId"    # I

    .prologue
    .line 369
    sget-object v0, Lcom/buzzfeed/android/widget/WidgetService;->widgetServiceFeedMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_d

    .line 370
    sget-object v0, Lcom/buzzfeed/android/widget/WidgetService;->widgetServiceFeedMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    :cond_d
    return-void
.end method

.method public static getRegularBuzzList(Landroid/content/Context;I)[Lcom/buzzfeed/toolkit/content/PostContent;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appWidgetId"    # I

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/buzzfeed/android/widget/WidgetService;->getRegularBuzzList(Landroid/content/Context;IZ)[Lcom/buzzfeed/toolkit/content/PostContent;

    move-result-object v0

    return-object v0
.end method

.method public static getRegularBuzzList(Landroid/content/Context;IZ)[Lcom/buzzfeed/toolkit/content/PostContent;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appWidgetId"    # I
    .param p2, "refresh"    # Z

    .prologue
    .line 118
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/buzzfeed/android/widget/WidgetService;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".getRegularBuzzList"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "TAG":Ljava/lang/String;
    const/4 v7, 0x0

    new-array v5, v7, [Lcom/buzzfeed/toolkit/content/PostContent;

    .line 120
    .local v5, "regularBuzzList":[Lcom/buzzfeed/toolkit/content/PostContent;
    sget-object v7, Lcom/buzzfeed/android/widget/WidgetService;->widgetServiceFeedMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;

    .line 121
    .local v6, "widgetServiceFeed":Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;
    if-eqz p2, :cond_37

    .line 122
    if-nez v6, :cond_2b

    invoke-static {p0, p1}, Lcom/buzzfeed/android/widget/WidgetService;->updateWidget(Landroid/content/Context;I)V

    .line 123
    :cond_2b
    sget-object v7, Lcom/buzzfeed/android/widget/WidgetService;->widgetServiceFeedMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "widgetServiceFeed":Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;
    check-cast v6, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;

    .line 125
    .restart local v6    # "widgetServiceFeed":Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;
    :cond_37
    if-eqz v6, :cond_a7

    iget-object v7, v6, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;->widgetLoader:Lcom/buzzfeed/android/data/loader/WidgetLoader;

    if-eqz v7, :cond_a7

    iget-object v7, v6, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;->widgetLoader:Lcom/buzzfeed/android/data/loader/WidgetLoader;

    invoke-virtual {v7}, Lcom/buzzfeed/android/data/loader/WidgetLoader;->getFlowList()Lcom/buzzfeed/toolkit/content/FlowList;

    move-result-object v7

    if-eqz v7, :cond_a7

    .line 126
    iget-object v7, v6, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;->widgetLoader:Lcom/buzzfeed/android/data/loader/WidgetLoader;

    invoke-virtual {v7}, Lcom/buzzfeed/android/data/loader/WidgetLoader;->getFlowList()Lcom/buzzfeed/toolkit/content/FlowList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/buzzfeed/toolkit/content/FlowList;->getList()Ljava/util/List;

    move-result-object v2

    .line 127
    .local v2, "flowItems":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/toolkit/content/FlowItem;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v4, "rbl":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/toolkit/content/PostContent;>;"
    monitor-enter v2

    .line 129
    :try_start_55
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_59
    :goto_59
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/toolkit/content/FlowItem;

    .line 130
    .local v1, "flow":Lcom/buzzfeed/toolkit/content/FlowItem;
    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/content/FlowItem;->getType()Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, "flowType":Ljava/lang/String;
    sget-object v7, Lcom/buzzfeed/toolkit/content/BuffetType;->POST:Lcom/buzzfeed/toolkit/content/BuffetType;

    invoke-virtual {v7}, Lcom/buzzfeed/toolkit/content/BuffetType;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8d

    sget-object v7, Lcom/buzzfeed/toolkit/content/BuffetType;->TRENDING:Lcom/buzzfeed/toolkit/content/BuffetType;

    .line 132
    invoke-virtual {v7}, Lcom/buzzfeed/toolkit/content/BuffetType;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8d

    sget-object v7, Lcom/buzzfeed/toolkit/content/BuffetType;->TRENDING_SMALL:Lcom/buzzfeed/toolkit/content/BuffetType;

    .line 133
    invoke-virtual {v7}, Lcom/buzzfeed/toolkit/content/BuffetType;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_59

    .line 134
    :cond_8d
    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/content/FlowItem;->getContent()Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v7

    check-cast v7, Lcom/buzzfeed/toolkit/content/PostContent;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_59

    .line 137
    .end local v1    # "flow":Lcom/buzzfeed/toolkit/content/FlowItem;
    .end local v3    # "flowType":Ljava/lang/String;
    :catchall_97
    move-exception v7

    monitor-exit v2
    :try_end_99
    .catchall {:try_start_55 .. :try_end_99} :catchall_97

    throw v7

    :cond_9a
    :try_start_9a
    monitor-exit v2
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_97

    .line 138
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Lcom/buzzfeed/toolkit/content/PostContent;

    invoke-interface {v4, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "regularBuzzList":[Lcom/buzzfeed/toolkit/content/PostContent;
    check-cast v5, [Lcom/buzzfeed/toolkit/content/PostContent;

    .line 140
    .end local v2    # "flowItems":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/toolkit/content/FlowItem;>;"
    .end local v4    # "rbl":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/toolkit/content/PostContent;>;"
    .restart local v5    # "regularBuzzList":[Lcom/buzzfeed/toolkit/content/PostContent;
    :cond_a7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Widget FeedList count: appWidgetId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", count="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-object v5
.end method

.method protected static getWidgetServiceFeed(Landroid/content/Context;I)Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appWidgetId"    # I

    .prologue
    const/4 v13, 0x0

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/buzzfeed/android/widget/WidgetService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, ".getWidgetServiceFeed"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 319
    .local v6, "TAG":Ljava/lang/String;
    sget-object v0, Lcom/buzzfeed/android/widget/WidgetService;->widgetServiceFeedMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;

    .line 320
    .local v11, "widgetServiceFeed":Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;
    if-nez v11, :cond_e0

    .line 322
    invoke-static {p0}, Lcom/buzzfeed/android/database/PreferenceDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/buzzfeed/android/database/PreferenceDatabaseManager;

    move-result-object v7

    .line 323
    .local v7, "dbm":Lcom/buzzfeed/android/database/PreferenceDatabaseManager;
    iget-object v0, v7, Lcom/buzzfeed/android/database/PreferenceDatabaseManager;->preferenceData:Lcom/buzzfeed/android/database/PreferenceData;

    invoke-static {p1, v13}, Lcom/buzzfeed/android/widget/Widget4x2Stacked;->getAppWidgetIdPreferenceKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/buzzfeed/android/database/PreferenceData;->getPreference(Ljava/lang/String;)Lcom/buzzfeed/android/database/Preference;

    move-result-object v9

    .line 324
    .local v9, "preference":Lcom/buzzfeed/android/database/Preference;
    if-eqz v9, :cond_16a

    .line 325
    invoke-virtual {v9}, Lcom/buzzfeed/android/database/Preference;->getValue()Lorg/json/JSONObject;

    move-result-object v10

    .line 326
    .local v10, "prefsObject":Lorg/json/JSONObject;
    const/4 v1, 0x0

    .line 327
    .local v1, "feedName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 328
    .local v2, "feedUrl":Ljava/lang/String;
    const/4 v3, 0x0

    .line 329
    .local v3, "badgeImageUrl":Ljava/lang/String;
    const/4 v4, 0x0

    .line 330
    .local v4, "lang":Ljava/lang/String;
    const/4 v5, 0x0

    .line 332
    .local v5, "isBadgeFeed":Z
    const v0, 0x7f0902d7

    :try_start_40
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 333
    const v0, 0x7f0902d8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 334
    const v0, 0x7f0902d4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x0

    invoke-virtual {v10, v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 335
    const v0, 0x7f0902d6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 336
    const v0, 0x7f0902d5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x0

    invoke-virtual {v10, v0, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
    :try_end_75
    .catch Lorg/json/JSONException; {:try_start_40 .. :try_end_75} :catch_e1

    move-result v5

    .line 340
    :goto_76
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_102

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_102

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Loaded preferences: appWidgetId: "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, ", feedName="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, ", feedUrl="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, ", badgeImageUrl="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-nez v3, :cond_fe

    const-string v0, "null"

    :goto_af
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, ", lang="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-nez v4, :cond_100

    const-string v0, "null"

    :goto_bd
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, ", isBadge="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    .line 349
    invoke-static/range {v0 .. v5}, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;->newInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;

    move-result-object v11

    .line 350
    sget-object v0, Lcom/buzzfeed/android/widget/WidgetService;->widgetServiceFeedMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v12, v11}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    .end local v1    # "feedName":Ljava/lang/String;
    .end local v2    # "feedUrl":Ljava/lang/String;
    .end local v3    # "badgeImageUrl":Ljava/lang/String;
    .end local v4    # "lang":Ljava/lang/String;
    .end local v5    # "isBadgeFeed":Z
    .end local v7    # "dbm":Lcom/buzzfeed/android/database/PreferenceDatabaseManager;
    .end local v9    # "preference":Lcom/buzzfeed/android/database/Preference;
    .end local v10    # "prefsObject":Lorg/json/JSONObject;
    :cond_e0
    :goto_e0
    return-object v11

    .line 337
    .restart local v1    # "feedName":Ljava/lang/String;
    .restart local v2    # "feedUrl":Ljava/lang/String;
    .restart local v3    # "badgeImageUrl":Ljava/lang/String;
    .restart local v4    # "lang":Ljava/lang/String;
    .restart local v5    # "isBadgeFeed":Z
    .restart local v7    # "dbm":Lcom/buzzfeed/android/database/PreferenceDatabaseManager;
    .restart local v9    # "preference":Lcom/buzzfeed/android/database/Preference;
    .restart local v10    # "prefsObject":Lorg/json/JSONObject;
    :catch_e1
    move-exception v8

    .line 338
    .local v8, "e":Lorg/json/JSONException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error converting preference JSONObject into value parts: prefsObject="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v8}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_76

    .end local v8    # "e":Lorg/json/JSONException;
    :cond_fe
    move-object v0, v3

    .line 341
    goto :goto_af

    :cond_100
    move-object v0, v4

    goto :goto_bd

    .line 352
    :cond_102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error loading preferences:  appWidgetId="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, ", prefsObject="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 354
    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, " => feedName="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez v1, :cond_129

    const-string v1, "null"

    .end local v1    # "feedName":Ljava/lang/String;
    :cond_129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, ", feedUrl="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez v2, :cond_137

    const-string v2, "null"

    .end local v2    # "feedUrl":Ljava/lang/String;
    :cond_137
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, ", badgeImageUrl="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez v3, :cond_145

    const-string v3, "null"

    .end local v3    # "badgeImageUrl":Ljava/lang/String;
    :cond_145
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, ", lang="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez v4, :cond_153

    const-string v4, "null"

    .end local v4    # "lang":Ljava/lang/String;
    :cond_153
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, ", isBadge="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 352
    invoke-static {v6, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e0

    .line 362
    .end local v5    # "isBadgeFeed":Z
    .end local v10    # "prefsObject":Lorg/json/JSONObject;
    :cond_16a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Preferences not initialized for appWidgetId: "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, " (this is normal when adding a new Widget)"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e0
.end method

.method private static updateWidget(Landroid/content/Context;I)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appWidgetId"    # I

    .prologue
    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/buzzfeed/android/widget/WidgetService;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".updateWidget"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "TAG":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appWidgetId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static {p0, p1}, Lcom/buzzfeed/android/widget/WidgetService;->getWidgetServiceFeed(Landroid/content/Context;I)Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;

    move-result-object v1

    .line 159
    .local v1, "widgetServiceFeed":Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;
    if-eqz v1, :cond_36

    .line 160
    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-virtual {v1, p0, p1, v2, v3}, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;->loadBuzz(Landroid/content/Context;III)V

    .line 162
    :cond_36
    return-void
.end method

.method private static updateWidgetInternal(Landroid/content/Context;III)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appWidgetId"    # I
    .param p2, "currentPosition"    # I
    .param p3, "modifier"    # I

    .prologue
    .line 196
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/buzzfeed/android/widget/WidgetService;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".updateWidgetInternal"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "TAG":Ljava/lang/String;
    sget-object v4, Lcom/buzzfeed/android/widget/WidgetService;->widgetServiceFeedMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;

    .line 199
    .local v3, "widgetServiceFeed":Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;
    if-eqz v3, :cond_59

    .line 200
    iget-object v4, v3, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;->widgetLoader:Lcom/buzzfeed/android/data/loader/WidgetLoader;

    invoke-virtual {v4}, Lcom/buzzfeed/android/data/loader/WidgetLoader;->getFlowList()Lcom/buzzfeed/toolkit/content/FlowList;

    move-result-object v1

    .line 201
    .local v1, "flowList":Lcom/buzzfeed/toolkit/content/FlowList;
    if-eqz v1, :cond_3e

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/content/FlowList;->size()I

    move-result v4

    if-lez v4, :cond_3e

    .line 202
    const-string v4, "Calling WidgetService.getRegularBuzzList()"

    invoke-static {v0, v4}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-static {p0, p1}, Lcom/buzzfeed/android/widget/WidgetService;->getRegularBuzzList(Landroid/content/Context;I)[Lcom/buzzfeed/toolkit/content/PostContent;

    move-result-object v2

    .line 204
    .local v2, "regularBuzzList":[Lcom/buzzfeed/toolkit/content/PostContent;
    invoke-static {p0, p1, v2}, Lcom/buzzfeed/android/widget/WidgetService;->viewBuzz(Landroid/content/Context;I[Lcom/buzzfeed/toolkit/content/PostContent;)V

    .line 243
    .end local v1    # "flowList":Lcom/buzzfeed/toolkit/content/FlowList;
    .end local v2    # "regularBuzzList":[Lcom/buzzfeed/toolkit/content/PostContent;
    :goto_3d
    return-void

    .line 207
    .restart local v1    # "flowList":Lcom/buzzfeed/toolkit/content/FlowList;
    :cond_3e
    if-nez v1, :cond_53

    .line 210
    const-string v4, "error fetching buzzlist, will try to refresh after a delay..."

    invoke-static {v0, v4}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/buzzfeed/android/widget/WidgetService$1;

    invoke-direct {v5, v0, v3, p0, p1}, Lcom/buzzfeed/android/widget/WidgetService$1;-><init>(Ljava/lang/String;Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;Landroid/content/Context;I)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 232
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_3d

    .line 235
    :cond_53
    const-string v4, "Error: buzzList was empty"

    invoke-static {v0, v4}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3d

    .line 240
    .end local v1    # "flowList":Lcom/buzzfeed/toolkit/content/FlowList;
    :cond_59
    const-string/jumbo v4, "widgetServiceFeed does not exist, creating..."

    invoke-static {v0, v4}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-static {p0, p1}, Lcom/buzzfeed/android/widget/WidgetService;->updateWidget(Landroid/content/Context;I)V

    goto :goto_3d
.end method

.method public static updateWidgetOnPostExecute(Landroid/content/Context;II)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appWidgetId"    # I
    .param p2, "position"    # I

    .prologue
    .line 280
    const/4 v0, 0x0

    .line 281
    .local v0, "modifier":I
    const/4 v1, -0x1

    if-ne p2, v1, :cond_5

    const/4 v0, 0x1

    .line 282
    :cond_5
    invoke-static {p0, p1, p2, v0}, Lcom/buzzfeed/android/widget/WidgetService;->updateWidgetInternal(Landroid/content/Context;III)V

    .line 283
    return-void
.end method

.method protected static viewBuzz(Landroid/content/Context;I[Lcom/buzzfeed/toolkit/content/PostContent;)V
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appWidgetId"    # I
    .param p2, "buzzArray"    # [Lcom/buzzfeed/toolkit/content/PostContent;

    .prologue
    const v12, 0x7f11022a

    const/4 v11, 0x1

    const/4 v10, 0x0

    const v9, 0x7f110229

    .line 246
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/buzzfeed/android/widget/WidgetService;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".viewBuzz"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "TAG":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "appWidgetId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", buzzArray="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    sget-object v7, Lcom/buzzfeed/android/widget/WidgetService;->widgetServiceFeedMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;

    .line 251
    .local v6, "widgetServiceFeed":Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;
    invoke-static {p0, p1}, Lcom/buzzfeed/android/widget/WidgetConfigure;->getRemoteView(Landroid/content/Context;I)Landroid/widget/RemoteViews;

    move-result-object v5

    .line 252
    .local v5, "views":Landroid/widget/RemoteViews;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xb

    if-lt v7, v8, :cond_e8

    .line 254
    new-instance v3, Landroid/content/Intent;

    const-class v7, Lcom/buzzfeed/android/widget/StackWidgetService;

    invoke-direct {v3, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 255
    .local v3, "intent":Landroid/content/Intent;
    const-string v7, "appWidgetId"

    invoke-virtual {v3, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 256
    const-string/jumbo v7, "viewFeedName"

    iget-object v8, v6, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;->widgetLoader:Lcom/buzzfeed/android/data/loader/WidgetLoader;

    invoke-virtual {v8}, Lcom/buzzfeed/android/data/loader/WidgetLoader;->getFeedTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    const-string/jumbo v7, "viewFeedUrl"

    iget-object v8, v6, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;->widgetLoader:Lcom/buzzfeed/android/data/loader/WidgetLoader;

    invoke-virtual {v8}, Lcom/buzzfeed/android/data/loader/WidgetLoader;->getFeedUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    const-string/jumbo v7, "widgetFeedType"

    iget-object v8, v6, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;->feedType:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    const-string/jumbo v7, "widgetBadgeImageUrl"

    iget-object v8, v6, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;->badgeImageUrl:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    const v7, 0x7f0902d6

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v6, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;->lang:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    const-string/jumbo v7, "unique"

    sget-object v8, Lcom/buzzfeed/android/widget/WidgetService;->uniqueCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v8

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 262
    invoke-virtual {v3, v11}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 263
    invoke-virtual {v5, p1, v9, v3}, Landroid/widget/RemoteViews;->setRemoteAdapter(IILandroid/content/Intent;)V

    .line 264
    invoke-virtual {v5, v9, v12}, Landroid/widget/RemoteViews;->setEmptyView(II)V

    .line 265
    const/16 v7, 0x8

    invoke-virtual {v5, v12, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 266
    invoke-virtual {v5, v9, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 268
    new-instance v1, Landroid/content/Intent;

    const-class v7, Lcom/buzzfeed/android/widget/Widget4x2Stacked;

    invoke-direct {v1, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 269
    .local v1, "clickIntent":Landroid/content/Intent;
    const-string v7, "com.buzzfeed.android.widget.WIDGET_BUZZ_SELECT"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    const-string v7, "appWidgetId"

    invoke-virtual {v1, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 271
    invoke-virtual {v3, v11}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 272
    const/high16 v7, 0x8000000

    invoke-static {p0, v10, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 273
    .local v2, "clickPendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v5, v9, v2}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    .line 274
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    .line 275
    .local v4, "manager":Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v4, p1, v5}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 277
    .end local v1    # "clickIntent":Landroid/content/Intent;
    .end local v2    # "clickPendingIntent":Landroid/app/PendingIntent;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "manager":Landroid/appwidget/AppWidgetManager;
    :cond_e8
    return-void
.end method

.method protected static viewNextBuzz(Landroid/content/Context;ILjava/lang/String;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appWidgetId"    # I
    .param p2, "buzzId"    # Ljava/lang/String;

    .prologue
    .line 310
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/buzzfeed/android/widget/WidgetService;->viewNextPrevBuzz(Landroid/content/Context;ILjava/lang/String;I)V

    .line 311
    return-void
.end method

.method private static viewNextPrevBuzz(Landroid/content/Context;ILjava/lang/String;I)V
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appWidgetId"    # I
    .param p2, "buzzId"    # Ljava/lang/String;
    .param p3, "modifier"    # I

    .prologue
    const-wide/16 v4, 0x0

    const v1, 0x7f090206

    .line 288
    invoke-static {p0, p1}, Lcom/buzzfeed/android/widget/WidgetService;->getWidgetServiceFeed(Landroid/content/Context;I)Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;

    move-result-object v7

    .line 289
    .local v7, "widgetServiceFeed":Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;
    if-eqz v7, :cond_2e

    .line 291
    iget-object v0, v7, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;->widgetLoader:Lcom/buzzfeed/android/data/loader/WidgetLoader;

    invoke-virtual {v0, p2}, Lcom/buzzfeed/android/data/loader/WidgetLoader;->getPositionFromId(Ljava/lang/String;)I

    move-result v6

    .line 293
    .local v6, "position":I
    const/4 v0, -0x1

    if-ne v6, v0, :cond_15

    const/4 p3, 0x1

    .line 295
    :cond_15
    invoke-static {p0, p1, v6, p3}, Lcom/buzzfeed/android/widget/WidgetService;->updateWidgetInternal(Landroid/content/Context;III)V

    .line 297
    if-gez p3, :cond_2f

    .line 298
    invoke-static {}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->getInstance()Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    move-result-object v0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0901cd

    .line 299
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v7, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;->feedName:Ljava/lang/String;

    .line 298
    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 307
    .end local v6    # "position":I
    :cond_2e
    :goto_2e
    return-void

    .line 302
    .restart local v6    # "position":I
    :cond_2f
    invoke-static {}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->getInstance()Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    move-result-object v0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0901c9

    .line 303
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v7, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;->feedName:Ljava/lang/String;

    .line 302
    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_2e
.end method

.method protected static viewPrevBuzz(Landroid/content/Context;ILjava/lang/String;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appWidgetId"    # I
    .param p2, "buzzId"    # Ljava/lang/String;

    .prologue
    .line 314
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lcom/buzzfeed/android/widget/WidgetService;->viewNextPrevBuzz(Landroid/content/Context;ILjava/lang/String;I)V

    .line 315
    return-void
.end method


# virtual methods
.method public declared-synchronized handleIntent(Landroid/content/Intent;)V
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 85
    monitor-enter p0

    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/buzzfeed/android/widget/WidgetService;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".handleIntent"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "TAG":Ljava/lang/String;
    const-string v5, "Called"

    invoke-static {v0, v5}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 88
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_64

    .line 89
    const-string v5, "appWidgetIds"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    if-eqz v5, :cond_41

    .line 90
    const-string v5, "appWidgetIds"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    .line 91
    .local v3, "ids":[I
    array-length v5, v3

    :goto_31
    if-ge v4, v5, :cond_59

    aget v2, v3, v4

    .line 92
    .local v2, "id":I
    iget-object v6, p0, Lcom/buzzfeed/android/widget/WidgetService;->widgetIdsToUpdate:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    .line 94
    .end local v2    # "id":I
    .end local v3    # "ids":[I
    :cond_41
    const-string v4, "appWidgetId"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_59

    .line 95
    iget-object v4, p0, Lcom/buzzfeed/android/widget/WidgetService;->widgetIdsToUpdate:Ljava/util/ArrayList;

    const-string v5, "appWidgetId"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_59
    iget-object v4, p0, Lcom/buzzfeed/android/widget/WidgetService;->widgetIdsToUpdate:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_64

    .line 99
    invoke-virtual {p0}, Lcom/buzzfeed/android/widget/WidgetService;->updateWidgetFeeds()V

    .line 103
    :cond_64
    invoke-virtual {p0}, Lcom/buzzfeed/android/widget/WidgetService;->stopSelf()V
    :try_end_67
    .catchall {:try_start_2 .. :try_end_67} :catchall_69

    .line 104
    monitor-exit p0

    return-void

    .line 85
    .end local v0    # "TAG":Ljava/lang/String;
    .end local v1    # "extras":Landroid/os/Bundle;
    :catchall_69
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/buzzfeed/android/widget/WidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getEdition(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "edition":Ljava/lang/String;
    invoke-static {v0}, Lcom/buzzfeed/android/navigation/FeedListProvider;->getInstance(Ljava/lang/String;)Lcom/buzzfeed/android/navigation/FeedListProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/buzzfeed/android/widget/WidgetService;->feedListProvider:Lcom/buzzfeed/android/navigation/FeedListProvider;

    .line 71
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/widget/WidgetService;->handleIntent(Landroid/content/Intent;)V

    .line 76
    const/4 v0, 0x2

    return v0
.end method

.method public updateWidgetFeed(Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;)V
    .registers 7
    .param p1, "serviceFeed"    # Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;

    .prologue
    const/4 v4, 0x1

    .line 170
    invoke-virtual {p1}, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;->getFeedTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "feedTag":Ljava/lang/String;
    sget-object v3, Lcom/buzzfeed/android/widget/WidgetService;->feedConversionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    .line 173
    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 174
    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, "parts":[Ljava/lang/String;
    if-eqz v1, :cond_26

    array-length v3, v1

    if-le v3, v4, :cond_26

    aget-object v0, v1, v4

    .line 176
    :cond_26
    sget-object v3, Lcom/buzzfeed/android/widget/WidgetService;->feedConversionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 177
    sget-object v3, Lcom/buzzfeed/android/widget/WidgetService;->feedConversionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "feedTag":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 185
    .end local v1    # "parts":[Ljava/lang/String;
    .restart local v0    # "feedTag":Ljava/lang/String;
    :cond_36
    :goto_36
    iget-object v3, p0, Lcom/buzzfeed/android/widget/WidgetService;->feedListProvider:Lcom/buzzfeed/android/navigation/FeedListProvider;

    invoke-virtual {v3, v0}, Lcom/buzzfeed/android/navigation/FeedListProvider;->getFeedFromTag(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed;

    move-result-object v2

    .line 186
    .local v2, "updatedFeed":Lcom/buzzfeed/android/data/Feed;
    if-nez v2, :cond_42

    .line 187
    invoke-static {}, Lcom/buzzfeed/android/data/Feed;->createDefault()Lcom/buzzfeed/android/data/Feed;

    move-result-object v2

    .line 190
    :cond_42
    if-eqz v2, :cond_47

    .line 191
    invoke-virtual {p1, v2}, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;->updateWithFeed(Lcom/buzzfeed/android/data/Feed;)V

    .line 193
    :cond_47
    return-void

    .line 181
    .end local v2    # "updatedFeed":Lcom/buzzfeed/android/data/Feed;
    :cond_48
    sget-object v3, Lcom/buzzfeed/android/widget/WidgetService;->feedConversionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "feedTag":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "feedTag":Ljava/lang/String;
    goto :goto_36
.end method

.method public updateWidgetFeeds()V
    .registers 6

    .prologue
    .line 107
    iget-object v2, p0, Lcom/buzzfeed/android/widget/WidgetService;->widgetIdsToUpdate:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 108
    .local v0, "id":I
    invoke-static {p0, v0}, Lcom/buzzfeed/android/widget/WidgetService;->getWidgetServiceFeed(Landroid/content/Context;I)Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;

    move-result-object v1

    .line 109
    .local v1, "widgetServiceFeed":Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;
    if-eqz v1, :cond_6

    .line 110
    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/widget/WidgetService;->updateWidgetFeed(Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;)V

    .line 111
    const/4 v2, 0x1

    const/4 v4, -0x1

    invoke-virtual {v1, p0, v0, v2, v4}, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;->loadBuzz(Landroid/content/Context;III)V

    goto :goto_6

    .line 114
    .end local v0    # "id":I
    .end local v1    # "widgetServiceFeed":Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;
    :cond_25
    iget-object v2, p0, Lcom/buzzfeed/android/widget/WidgetService;->widgetIdsToUpdate:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 115
    return-void
.end method
