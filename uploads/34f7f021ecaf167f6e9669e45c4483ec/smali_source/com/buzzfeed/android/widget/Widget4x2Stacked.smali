.class public Lcom/buzzfeed/android/widget/Widget4x2Stacked;
.super Landroid/appwidget/AppWidgetProvider;
.source "Widget4x2Stacked.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/android/widget/Widget4x2Stacked$ConnectivityReceiver;
    }
.end annotation


# static fields
.field private static final MINUTE:I = 0xea60

.field private static final PREFERENCES_PREFIX:Ljava/lang/String; = "appWidgetId"

.field private static final PREFERENCES_SEPARATOR:Ljava/lang/String; = "_"

.field private static final TAG:Ljava/lang/String;

.field protected static final WIDGET_NEXT_ACTION:Ljava/lang/String; = "com.buzzfeed.android.widget.WIDGET_NEXT"

.field protected static final WIDGET_PREV_ACTION:Ljava/lang/String; = "com.buzzfeed.android.widget.WIDGET_PREV"

.field protected static final WIDGET_REFRESH_ACTION:Ljava/lang/String; = "com.buzzfeed.android.widget.WIDGET_REFRESH"

.field protected static final WIDGET_SELECT_ACTION:Ljava/lang/String; = "com.buzzfeed.android.widget.WIDGET_BUZZ_SELECT"

.field private static alarmPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-class v0, Lcom/buzzfeed/android/widget/Widget4x2Stacked;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/widget/Widget4x2Stacked;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/buzzfeed/android/widget/Widget4x2Stacked;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static cancelWidgetAlarm(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 225
    sget-object v1, Lcom/buzzfeed/android/widget/Widget4x2Stacked;->alarmPendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_11

    .line 226
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 227
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    sget-object v1, Lcom/buzzfeed/android/widget/Widget4x2Stacked;->alarmPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 229
    .end local v0    # "alarmManager":Landroid/app/AlarmManager;
    :cond_11
    return-void
.end method

.method private disableConnectivityReceiver(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/buzzfeed/android/widget/Widget4x2Stacked;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".disableConnectivityReceiver"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "TAG":Ljava/lang/String;
    const-string v2, "Connectivity Receiver disabled"

    invoke-static {v0, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 187
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/buzzfeed/android/widget/Widget4x2Stacked$ConnectivityReceiver;

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 190
    return-void
.end method

.method private enableConnectivityReceiver(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/buzzfeed/android/widget/Widget4x2Stacked;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".enableConnectivityReceiver"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "TAG":Ljava/lang/String;
    const-string v2, "Connectivity Receiver enabled"

    invoke-static {v0, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 178
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/buzzfeed/android/widget/Widget4x2Stacked$ConnectivityReceiver;

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v4, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 181
    return-void
.end method

.method protected static getAppWidgetIdPreferenceKey(ILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "appWidgetId"    # I
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appWidgetId_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_20

    const-string v0, ""

    :goto_17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_17
.end method

.method private static getWidgetAlarmPendingIntent4x2Stacked(Landroid/content/Context;)Landroid/app/PendingIntent;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 211
    const/4 v3, 0x0

    .line 212
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 213
    .local v1, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcom/buzzfeed/android/widget/Widget4x2Stacked;

    invoke-direct {v4, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v4}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 214
    .local v0, "appWidgetIds":[I
    array-length v4, v0

    if-lez v4, :cond_2b

    .line 215
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/buzzfeed/android/widget/Widget4x2Stacked;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 216
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "appWidgetIds"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 217
    const-string v4, "com.buzzfeed.android.widget.WIDGET_REFRESH"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    invoke-static {p0, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 220
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2b
    return-object v3
.end method

.method protected static setWidgetAlarm(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 207
    const-wide/16 v0, -0x1

    invoke-static {p0, v0, v1}, Lcom/buzzfeed/android/widget/Widget4x2Stacked;->setWidgetAlarm(Landroid/content/Context;J)V

    .line 208
    return-void
.end method

.method public static setWidgetAlarm(Landroid/content/Context;J)V
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "delay"    # J

    .prologue
    .line 196
    const v1, 0x7f0902d9

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 197
    .local v7, "frequencyDefault":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const v2, 0xea60

    mul-int/2addr v1, v2

    int-to-long v4, v1

    .line 198
    .local v4, "frequency":J
    const-wide/16 v2, -0x1

    cmp-long v1, p1, v2

    if-nez v1, :cond_17

    move-wide p1, v4

    .line 199
    :cond_17
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 200
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-static {p0}, Lcom/buzzfeed/android/widget/Widget4x2Stacked;->getWidgetAlarmPendingIntent4x2Stacked(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    sput-object v1, Lcom/buzzfeed/android/widget/Widget4x2Stacked;->alarmPendingIntent:Landroid/app/PendingIntent;

    .line 201
    sget-object v1, Lcom/buzzfeed/android/widget/Widget4x2Stacked;->alarmPendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_34

    .line 202
    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    sget-object v6, Lcom/buzzfeed/android/widget/Widget4x2Stacked;->alarmPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 204
    :cond_34
    return-void
.end method

.method private startClickIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "feedName"    # Ljava/lang/String;
    .param p3, "buzzUri"    # Ljava/lang/String;
    .param p4, "lang"    # Ljava/lang/String;

    .prologue
    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/buzzfeed/android/widget/Widget4x2Stacked;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".getOnClickIntent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "TAG":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "feedName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", buzzUri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/buzzfeed/android/activity/SplashActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 240
    .local v1, "splashIntent":Landroid/content/Intent;
    const-string v2, "KEY_WIDGET_LANG"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    const-string v2, "KEY_WIDGET_BUZZ_URL"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    const-string v2, "KEY_WIDGET_FEED_NAME"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 244
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 245
    return-void
.end method

.method public static update(Landroid/content/Context;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 164
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 165
    .local v1, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/buzzfeed/android/widget/Widget4x2Stacked;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 166
    .local v0, "appWidgetIds":[I
    array-length v3, v0

    if-lez v3, :cond_26

    .line 167
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/buzzfeed/android/widget/Widget4x2Stacked;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    .local v2, "refreshIntent":Landroid/content/Intent;
    const-string v3, "appWidgetIds"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 169
    const-string v3, "com.buzzfeed.android.widget.WIDGET_REFRESH"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 172
    .end local v2    # "refreshIntent":Landroid/content/Intent;
    :cond_26
    return-void
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetIds"    # [I

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/buzzfeed/android/widget/Widget4x2Stacked;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onDeleted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 132
    .local v6, "TAG":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appWidgetIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    array-length v10, p2

    const/4 v0, 0x0

    move v9, v0

    :goto_32
    if-ge v9, v10, :cond_65

    aget v7, p2, v9

    .line 134
    .local v7, "appWidgetId":I
    invoke-static {p1, v7}, Lcom/buzzfeed/android/widget/WidgetService;->getWidgetServiceFeed(Landroid/content/Context;I)Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;

    move-result-object v8

    .line 135
    .local v8, "widgetServiceFeed":Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;
    invoke-static {p1, v7}, Lcom/buzzfeed/android/widget/WidgetConfigure;->deletePreferences(Landroid/content/Context;I)V

    .line 136
    invoke-static {p1, v7}, Lcom/buzzfeed/android/widget/WidgetService;->delWidgetServiceFeed(Landroid/content/Context;I)V

    .line 138
    if-eqz v8, :cond_5f

    .line 139
    invoke-static {}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->getInstance()Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    move-result-object v0

    const v1, 0x7f090206

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0901e7

    .line 140
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v8, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;->feedName:Ljava/lang/String;

    const-wide/16 v4, 0x0

    .line 139
    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 133
    :goto_5b
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_32

    .line 143
    :cond_5f
    const-string v0, "Can\'t track the GA Tracker event because the widgetServiceFeed object is null"

    invoke-static {v6, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5b

    .line 146
    .end local v7    # "appWidgetId":I
    .end local v8    # "widgetServiceFeed":Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;
    :cond_65
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 147
    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/buzzfeed/android/widget/Widget4x2Stacked;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".onDisabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "TAG":Ljava/lang/String;
    const-string v1, "Called"

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {p1}, Lcom/buzzfeed/android/widget/Widget4x2Stacked;->cancelWidgetAlarm(Landroid/content/Context;)V

    .line 56
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/widget/Widget4x2Stacked;->disableConnectivityReceiver(Landroid/content/Context;)V

    .line 57
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/buzzfeed/android/widget/Widget4x2Stacked;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".onEnabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "TAG":Ljava/lang/String;
    const-string v1, "Called"

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-static {p1}, Lcom/buzzfeed/android/widget/Widget4x2Stacked;->setWidgetAlarm(Landroid/content/Context;)V

    .line 48
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/widget/Widget4x2Stacked;->enableConnectivityReceiver(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 76
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/buzzfeed/android/widget/Widget4x2Stacked;->TAG:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".onReceive"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "TAG":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Intent action: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "com.buzzfeed.intent.RESTART"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5a

    const-string v9, "phoenix_extra_package"

    .line 79
    invoke-virtual {p2, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5a

    const-string v9, "phoenix_extra_package"

    .line 80
    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5a

    .line 82
    invoke-static {p1}, Lcom/buzzfeed/android/widget/Widget4x2Stacked;->update(Landroid/content/Context;)V

    .line 126
    :cond_56
    :goto_56
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 127
    return-void

    .line 83
    :cond_5a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "com.buzzfeed.android.widget.WIDGET_REFRESH"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c8

    .line 84
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 85
    .local v3, "extras":Landroid/os/Bundle;
    if-eqz v3, :cond_a3

    .line 86
    const-string v9, "appWidgetId"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 87
    .local v1, "appWidgetId":I
    const-string v9, "appWidgetIds"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 88
    .local v2, "appWidgetIds":[I
    new-instance v5, Landroid/content/Intent;

    const-class v9, Lcom/buzzfeed/android/widget/WidgetService;

    invoke-direct {v5, p1, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    .local v5, "update":Landroid/content/Intent;
    if-eqz v2, :cond_a7

    .line 90
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "appWidgetIds="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v9, "appWidgetIds"

    invoke-virtual {v5, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 92
    invoke-virtual {p1, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 99
    .end local v1    # "appWidgetId":I
    .end local v2    # "appWidgetIds":[I
    .end local v5    # "update":Landroid/content/Intent;
    :cond_a3
    :goto_a3
    invoke-static {p1}, Lcom/buzzfeed/android/widget/Widget4x2Stacked;->setWidgetAlarm(Landroid/content/Context;)V

    goto :goto_56

    .line 93
    .restart local v1    # "appWidgetId":I
    .restart local v2    # "appWidgetIds":[I
    .restart local v5    # "update":Landroid/content/Intent;
    :cond_a7
    if-eqz v1, :cond_a3

    .line 94
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "appWidgetId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v9, "appWidgetId"

    invoke-virtual {v5, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 96
    invoke-virtual {p1, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_a3

    .line 100
    .end local v1    # "appWidgetId":I
    .end local v2    # "appWidgetIds":[I
    .end local v3    # "extras":Landroid/os/Bundle;
    .end local v5    # "update":Landroid/content/Intent;
    :cond_c8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "com.buzzfeed.android.widget.WIDGET_BUZZ_SELECT"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_fb

    .line 101
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 102
    .restart local v3    # "extras":Landroid/os/Bundle;
    if-eqz v3, :cond_f6

    .line 103
    const-string/jumbo v9, "viewFeedName"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 104
    .local v8, "viewFeedName":Ljava/lang/String;
    const-string/jumbo v9, "viewBuzzUri"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 105
    .local v7, "viewBuzzUri":Ljava/lang/String;
    const v9, 0x7f0902d6

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, "lang":Ljava/lang/String;
    invoke-direct {p0, p1, v8, v7, v4}, Lcom/buzzfeed/android/widget/Widget4x2Stacked;->startClickIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .end local v4    # "lang":Ljava/lang/String;
    .end local v7    # "viewBuzzUri":Ljava/lang/String;
    .end local v8    # "viewFeedName":Ljava/lang/String;
    :cond_f6
    invoke-static {p1}, Lcom/buzzfeed/android/widget/Widget4x2Stacked;->setWidgetAlarm(Landroid/content/Context;)V

    goto/16 :goto_56

    .line 109
    .end local v3    # "extras":Landroid/os/Bundle;
    :cond_fb
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "com.buzzfeed.android.widget.WIDGET_NEXT"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_122

    .line 110
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 111
    .restart local v3    # "extras":Landroid/os/Bundle;
    if-eqz v3, :cond_11d

    .line 112
    const-string v9, "appWidgetId"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 113
    .restart local v1    # "appWidgetId":I
    const-string/jumbo v9, "viewBuzzId"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 114
    .local v6, "viewBuzzId":Ljava/lang/String;
    invoke-static {p1, v1, v6}, Lcom/buzzfeed/android/widget/WidgetService;->viewNextBuzz(Landroid/content/Context;ILjava/lang/String;)V

    .line 116
    .end local v1    # "appWidgetId":I
    .end local v6    # "viewBuzzId":Ljava/lang/String;
    :cond_11d
    invoke-static {p1}, Lcom/buzzfeed/android/widget/Widget4x2Stacked;->setWidgetAlarm(Landroid/content/Context;)V

    goto/16 :goto_56

    .line 117
    .end local v3    # "extras":Landroid/os/Bundle;
    :cond_122
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "com.buzzfeed.android.widget.WIDGET_PREV"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_56

    .line 118
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 119
    .restart local v3    # "extras":Landroid/os/Bundle;
    if-eqz v3, :cond_144

    .line 120
    const-string v9, "appWidgetId"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 121
    .restart local v1    # "appWidgetId":I
    const-string/jumbo v9, "viewBuzzId"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 122
    .restart local v6    # "viewBuzzId":Ljava/lang/String;
    invoke-static {p1, v1, v6}, Lcom/buzzfeed/android/widget/WidgetService;->viewPrevBuzz(Landroid/content/Context;ILjava/lang/String;)V

    .line 124
    .end local v1    # "appWidgetId":I
    .end local v6    # "viewBuzzId":Ljava/lang/String;
    :cond_144
    invoke-static {p1}, Lcom/buzzfeed/android/widget/Widget4x2Stacked;->setWidgetAlarm(Landroid/content/Context;)V

    goto/16 :goto_56
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 62
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/buzzfeed/android/widget/Widget4x2Stacked;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".onUpdate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "TAG":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appWidgetIds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/buzzfeed/android/widget/WidgetService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "appWidgetIds"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 68
    invoke-static {p1}, Lcom/buzzfeed/android/widget/Widget4x2Stacked;->setWidgetAlarm(Landroid/content/Context;)V

    .line 69
    return-void
.end method
