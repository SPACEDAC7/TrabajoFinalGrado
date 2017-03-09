.class public Lcom/buzzfeed/android/widget/WidgetConfigure;
.super Lcom/buzzfeed/android/activity/BaseActivity;
.source "WidgetConfigure.java"


# static fields
.field private static final CONFIGURE_ACTION:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_CONFIGURE"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private appWidgetId:I

.field private badgeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/android/data/Feed;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private feedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/buzzfeed/android/data/Feed;",
            ">;"
        }
    .end annotation
.end field

.field private feedListProvider:Lcom/buzzfeed/android/navigation/FeedListProvider;

.field private feedNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private feedTypeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAlertDialog:Landroid/support/v7/app/AlertDialog;

.field private mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const-class v0, Lcom/buzzfeed/android/widget/WidgetConfigure;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/widget/WidgetConfigure;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/BaseActivity;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/buzzfeed/android/widget/WidgetConfigure;->appWidgetId:I

    .line 45
    iput-object v1, p0, Lcom/buzzfeed/android/widget/WidgetConfigure;->badgeList:Ljava/util/List;

    .line 46
    iput-object v1, p0, Lcom/buzzfeed/android/widget/WidgetConfigure;->feedListProvider:Lcom/buzzfeed/android/navigation/FeedListProvider;

    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/android/widget/WidgetConfigure;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/widget/WidgetConfigure;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/buzzfeed/android/widget/WidgetConfigure;->feedList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/buzzfeed/android/widget/WidgetConfigure;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .param p0, "x0"    # Lcom/buzzfeed/android/widget/WidgetConfigure;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Z

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/buzzfeed/android/widget/WidgetConfigure;->configureWidget(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/buzzfeed/android/widget/WidgetConfigure;)Landroid/support/v7/app/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/widget/WidgetConfigure;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/buzzfeed/android/widget/WidgetConfigure;->mAlertDialog:Landroid/support/v7/app/AlertDialog;

    return-object v0
.end method

.method private buildFeedList()V
    .registers 5

    .prologue
    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/buzzfeed/android/widget/WidgetConfigure;->feedList:Ljava/util/ArrayList;

    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/buzzfeed/android/widget/WidgetConfigure;->feedNameList:Ljava/util/ArrayList;

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/buzzfeed/android/widget/WidgetConfigure;->feedTypeList:Ljava/util/ArrayList;

    .line 87
    iget-object v1, p0, Lcom/buzzfeed/android/widget/WidgetConfigure;->feedListProvider:Lcom/buzzfeed/android/navigation/FeedListProvider;

    invoke-virtual {v1}, Lcom/buzzfeed/android/navigation/FeedListProvider;->getFeeds()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/buzzfeed/android/widget/WidgetConfigure;->badgeList:Ljava/util/List;

    .line 88
    iget-object v1, p0, Lcom/buzzfeed/android/widget/WidgetConfigure;->badgeList:Ljava/util/List;

    if-eqz v1, :cond_6e

    .line 89
    iget-object v1, p0, Lcom/buzzfeed/android/widget/WidgetConfigure;->badgeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_27
    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/data/Feed;

    .line 90
    .local v0, "feed":Lcom/buzzfeed/android/data/Feed;
    invoke-virtual {v0}, Lcom/buzzfeed/android/data/Feed;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/buzzfeed/android/util/FeedUtils;->excludeFromWidgetSelection(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 91
    iget-object v2, p0, Lcom/buzzfeed/android/widget/WidgetConfigure;->feedList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-virtual {v0}, Lcom/buzzfeed/android/data/Feed;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/buzzfeed/android/util/FeedUtils;->isFeedReaction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 93
    iget-object v2, p0, Lcom/buzzfeed/android/widget/WidgetConfigure;->feedNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/buzzfeed/android/data/Feed;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v2, p0, Lcom/buzzfeed/android/widget/WidgetConfigure;->feedTypeList:Ljava/util/ArrayList;

    const-string v3, "reaction"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 96
    :cond_5d
    iget-object v2, p0, Lcom/buzzfeed/android/widget/WidgetConfigure;->feedNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/buzzfeed/android/data/Feed;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v2, p0, Lcom/buzzfeed/android/widget/WidgetConfigure;->feedTypeList:Ljava/util/ArrayList;

    const-string v3, "section"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 102
    .end local v0    # "feed":Lcom/buzzfeed/android/data/Feed;
    :cond_6e
    return-void
.end method

.method private configureWidget(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 25
    .param p1, "feedName"    # Ljava/lang/String;
    .param p2, "feedUrl"    # Ljava/lang/String;
    .param p3, "badgeImageUrl"    # Ljava/lang/String;
    .param p4, "isBadgeFeed"    # Z

    .prologue
    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/android/widget/WidgetConfigure;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v4, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/android/widget/WidgetConfigure;->getIntent()Landroid/content/Intent;

    move-result-object v16

    .line 109
    .local v16, "intent":Landroid/content/Intent;
    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    .line 110
    .local v15, "extras":Landroid/os/Bundle;
    if-eqz v15, :cond_9a

    .line 111
    const-string v2, "appWidgetId"

    const/4 v4, 0x0

    invoke-virtual {v15, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 112
    .local v3, "appWidgetId":I
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    .local v7, "locale":Ljava/lang/String;
    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v8, p4

    .line 113
    invoke-static/range {v2 .. v8}, Lcom/buzzfeed/android/widget/WidgetConfigure;->savePreferences(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 114
    invoke-static/range {p0 .. p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v14

    .line 115
    .local v14, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/buzzfeed/android/widget/WidgetConfigure;->getRemoteView(Landroid/content/Context;I)Landroid/widget/RemoteViews;

    move-result-object v19

    .line 116
    .local v19, "views":Landroid/widget/RemoteViews;
    move-object/from16 v0, v19

    invoke-virtual {v14, v3, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 117
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 118
    .local v17, "result":Landroid/content/Intent;
    const-string v2, "appWidgetId"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 119
    const/4 v2, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Lcom/buzzfeed/android/widget/WidgetConfigure;->setResult(ILandroid/content/Intent;)V

    .line 120
    new-instance v18, Landroid/content/Intent;

    const-class v2, Lcom/buzzfeed/android/widget/Widget4x2Stacked;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    .local v18, "update":Landroid/content/Intent;
    const-string v2, "appWidgetId"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    const-string v2, "com.buzzfeed.android.widget.WIDGET_REFRESH"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/widget/WidgetConfigure;->sendBroadcast(Landroid/content/Intent;)V

    .line 125
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/buzzfeed/android/widget/WidgetConfigure;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/buzzfeed/android/widget/WidgetConfigure;->context:Landroid/content/Context;

    const v4, 0x7f090206

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/buzzfeed/android/widget/WidgetConfigure;->context:Landroid/content/Context;

    const v4, 0x7f0901e6

    .line 126
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-wide/16 v12, 0x0

    move-object/from16 v11, p1

    .line 125
    invoke-virtual/range {v8 .. v13}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 130
    .end local v3    # "appWidgetId":I
    .end local v7    # "locale":Ljava/lang/String;
    .end local v14    # "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    .end local v15    # "extras":Landroid/os/Bundle;
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v17    # "result":Landroid/content/Intent;
    .end local v18    # "update":Landroid/content/Intent;
    .end local v19    # "views":Landroid/widget/RemoteViews;
    :cond_9a
    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/android/widget/WidgetConfigure;->finish()V

    .line 131
    return-void
.end method

.method protected static deletePreferences(Landroid/content/Context;I)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appWidgetId"    # I

    .prologue
    const/4 v4, 0x0

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/buzzfeed/android/widget/WidgetConfigure;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".deletePreferences"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "TAG":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called with appWidgetId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-static {p0}, Lcom/buzzfeed/android/database/PreferenceDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/buzzfeed/android/database/PreferenceDatabaseManager;

    move-result-object v1

    .line 181
    .local v1, "dbm":Lcom/buzzfeed/android/database/PreferenceDatabaseManager;
    iget-object v2, v1, Lcom/buzzfeed/android/database/PreferenceDatabaseManager;->preferenceData:Lcom/buzzfeed/android/database/PreferenceData;

    invoke-static {p1, v4}, Lcom/buzzfeed/android/widget/Widget4x2Stacked;->getAppWidgetIdPreferenceKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/database/PreferenceData;->delete(Ljava/lang/String;)V

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleted preference: key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, v4}, Lcom/buzzfeed/android/widget/Widget4x2Stacked;->getAppWidgetIdPreferenceKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method protected static getRemoteView(Landroid/content/Context;I)Landroid/widget/RemoteViews;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appWidgetId"    # I

    .prologue
    .line 141
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0300d3

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method private static savePreferences(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appWidgetId"    # I
    .param p2, "feedName"    # Ljava/lang/String;
    .param p3, "feedUrl"    # Ljava/lang/String;
    .param p4, "badgeImageUrl"    # Ljava/lang/String;
    .param p5, "locale"    # Ljava/lang/String;
    .param p6, "isBadgeFeed"    # Z

    .prologue
    const/4 v7, 0x0

    .line 152
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/buzzfeed/android/widget/WidgetConfigure;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".savePreferences"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "TAG":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Called with appWidgetId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-static {p0}, Lcom/buzzfeed/android/database/PreferenceDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/buzzfeed/android/database/PreferenceDatabaseManager;

    move-result-object v1

    .line 155
    .local v1, "dbm":Lcom/buzzfeed/android/database/PreferenceDatabaseManager;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 157
    .local v3, "prefObject":Lorg/json/JSONObject;
    const v5, 0x7f0902d7

    :try_start_38
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    const v5, 0x7f0902d5

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 159
    const v5, 0x7f0902d8

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    const v5, 0x7f0902d6

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    if-eqz p4, :cond_69

    .line 162
    const v5, 0x7f0902d4

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_69
    .catch Lorg/json/JSONException; {:try_start_38 .. :try_end_69} :catch_a0

    .line 166
    :cond_69
    :goto_69
    new-instance v4, Lcom/buzzfeed/android/database/Preference;

    invoke-static {p1, v7}, Lcom/buzzfeed/android/widget/Widget4x2Stacked;->getAppWidgetIdPreferenceKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/buzzfeed/android/database/Preference;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 167
    .local v4, "preference":Lcom/buzzfeed/android/database/Preference;
    iget-object v5, v1, Lcom/buzzfeed/android/database/PreferenceDatabaseManager;->preferenceData:Lcom/buzzfeed/android/database/PreferenceData;

    invoke-virtual {v5, v4}, Lcom/buzzfeed/android/database/PreferenceData;->putPreference(Lcom/buzzfeed/android/database/Preference;)V

    .line 168
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Saved preference: key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1, v7}, Lcom/buzzfeed/android/widget/Widget4x2Stacked;->getAppWidgetIdPreferenceKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void

    .line 163
    .end local v4    # "preference":Lcom/buzzfeed/android/database/Preference;
    :catch_a0
    move-exception v2

    .line 164
    .local v2, "e":Lorg/json/JSONException;
    const-string v5, "Error creating preference object"

    invoke-static {v0, v5, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_69
.end method


# virtual methods
.method public buildFeedListBuzzFeedAlertDialog()V
    .registers 5

    .prologue
    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/buzzfeed/android/widget/WidgetConfigure;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".buildFeedListBuzzFeedAlertDialog"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "TAG":Ljava/lang/String;
    new-instance v1, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 192
    .local v1, "builder":Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;
    const v2, 0x7f0900f1

    invoke-virtual {v1, v2}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setTitle(I)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    .line 193
    iget-object v2, p0, Lcom/buzzfeed/android/widget/WidgetConfigure;->feedNameList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/buzzfeed/android/widget/WidgetConfigure;->feedNameList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    new-instance v3, Lcom/buzzfeed/android/widget/WidgetConfigure$1;

    invoke-direct {v3, p0}, Lcom/buzzfeed/android/widget/WidgetConfigure$1;-><init>(Lcom/buzzfeed/android/widget/WidgetConfigure;)V

    invoke-virtual {v1, v2, v3}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setStackedListItems([Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    .line 203
    invoke-virtual {v1}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/buzzfeed/android/widget/WidgetConfigure;->mAlertDialog:Landroid/support/v7/app/AlertDialog;

    .line 204
    iget-object v2, p0, Lcom/buzzfeed/android/widget/WidgetConfigure;->mAlertDialog:Landroid/support/v7/app/AlertDialog;

    new-instance v3, Lcom/buzzfeed/android/widget/WidgetConfigure$2;

    invoke-direct {v3, p0}, Lcom/buzzfeed/android/widget/WidgetConfigure$2;-><init>(Lcom/buzzfeed/android/widget/WidgetConfigure;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 210
    iget-object v2, p0, Lcom/buzzfeed/android/widget/WidgetConfigure;->mAlertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 211
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/buzzfeed/android/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/buzzfeed/android/widget/WidgetConfigure;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/buzzfeed/android/widget/WidgetConfigure;->context:Landroid/content/Context;

    .line 57
    invoke-virtual {p0}, Lcom/buzzfeed/android/widget/WidgetConfigure;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_28

    invoke-virtual {p0}, Lcom/buzzfeed/android/widget/WidgetConfigure;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "appWidgetId"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 58
    invoke-virtual {p0}, Lcom/buzzfeed/android/widget/WidgetConfigure;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "appWidgetId"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/buzzfeed/android/widget/WidgetConfigure;->appWidgetId:I

    .line 60
    :cond_28
    iget v1, p0, Lcom/buzzfeed/android/widget/WidgetConfigure;->appWidgetId:I

    if-nez v1, :cond_30

    .line 61
    invoke-virtual {p0}, Lcom/buzzfeed/android/widget/WidgetConfigure;->finish()V

    .line 78
    :cond_2f
    :goto_2f
    return-void

    .line 65
    :cond_30
    invoke-static {}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->getInstance()Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/buzzfeed/android/widget/WidgetConfigure;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    .line 68
    invoke-virtual {p0}, Lcom/buzzfeed/android/widget/WidgetConfigure;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 72
    .local v0, "mgr":Landroid/appwidget/AppWidgetManager;
    invoke-virtual {p0}, Lcom/buzzfeed/android/widget/WidgetConfigure;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getEdition(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-static {v1}, Lcom/buzzfeed/android/navigation/FeedListProvider;->getInstance(Ljava/lang/String;)Lcom/buzzfeed/android/navigation/FeedListProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/buzzfeed/android/widget/WidgetConfigure;->feedListProvider:Lcom/buzzfeed/android/navigation/FeedListProvider;

    .line 73
    invoke-direct {p0}, Lcom/buzzfeed/android/widget/WidgetConfigure;->buildFeedList()V

    .line 75
    invoke-virtual {p0}, Lcom/buzzfeed/android/widget/WidgetConfigure;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 76
    invoke-virtual {p0}, Lcom/buzzfeed/android/widget/WidgetConfigure;->buildFeedListBuzzFeedAlertDialog()V

    goto :goto_2f
.end method
