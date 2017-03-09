.class public Lcom/buzzfeed/android/pushnotifications/factory/PushNotificationBuzzFactory;
.super Ljava/lang/Object;
.source "PushNotificationBuzzFactory.java"

# interfaces
.implements Lcom/buzzfeed/android/pushnotifications/factory/PushNotificationFactoryProvider;


# static fields
.field private static final REQUEST_CODE_BUZZ_ADDITION:I = 0x64

.field private static final REQUEST_CODE_DISMISS_ADDITION:I = 0xc8

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIdGenerator:Lcom/buzzfeed/android/pushnotifications/PushNotificationIdGenerator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const-class v0, Lcom/buzzfeed/android/pushnotifications/factory/PushNotificationBuzzFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/pushnotifications/factory/PushNotificationBuzzFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/pushnotifications/factory/PushNotificationBuzzFactory;->mContext:Landroid/content/Context;

    .line 32
    new-instance v0, Lcom/buzzfeed/android/pushnotifications/PushNotificationIdGenerator;

    invoke-direct {v0, p1}, Lcom/buzzfeed/android/pushnotifications/PushNotificationIdGenerator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/buzzfeed/android/pushnotifications/factory/PushNotificationBuzzFactory;->mIdGenerator:Lcom/buzzfeed/android/pushnotifications/PushNotificationIdGenerator;

    .line 33
    return-void
.end method

.method private static getRequestCodeBuzzIntent(I)I
    .registers 2
    .param p0, "notificationId"    # I

    .prologue
    .line 41
    add-int/lit8 v0, p0, 0x64

    return v0
.end method

.method private static getRequestCodeDismissIntent(I)I
    .registers 2
    .param p0, "notificationId"    # I

    .prologue
    .line 50
    add-int/lit16 v0, p0, 0xc8

    return v0
.end method


# virtual methods
.method public getNotification(Lcom/urbanairship/push/PushMessage;I)Landroid/app/Notification;
    .registers 15
    .param p1, "message"    # Lcom/urbanairship/push/PushMessage;
    .param p2, "i"    # I

    .prologue
    const/4 v11, 0x0

    const/high16 v10, 0x8000000

    .line 65
    invoke-static {p1}, Lcom/buzzfeed/android/pushnotifications/PushNotificationUtil;->getBuzzUriFromPushMessage(Lcom/urbanairship/push/PushMessage;)Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "buzzUrl":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 93
    :goto_d
    return-object v11

    .line 70
    :cond_e
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getAlert()Ljava/lang/String;

    move-result-object v6

    invoke-static {p2, v2, v6}, Lcom/buzzfeed/android/activity/SplashActivity;->getNotificationIntent(ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 72
    .local v0, "buzzIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/buzzfeed/android/pushnotifications/factory/PushNotificationBuzzFactory;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/buzzfeed/android/pushnotifications/factory/PushNotificationBuzzFactory;->getRequestCodeBuzzIntent(I)I

    move-result v7

    invoke-static {v6, v7, v0, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 73
    .local v1, "buzzPendingIntent":Landroid/app/PendingIntent;
    iget-object v6, p0, Lcom/buzzfeed/android/pushnotifications/factory/PushNotificationBuzzFactory;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/buzzfeed/android/pushnotifications/factory/PushNotificationBuzzFactory;->getRequestCodeDismissIntent(I)I

    move-result v7

    iget-object v8, p0, Lcom/buzzfeed/android/pushnotifications/factory/PushNotificationBuzzFactory;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getAlert()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Lcom/buzzfeed/android/pushnotifications/PushNotificationBroadcastReceiver;->getDismissIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-static {v6, v7, v8, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 75
    .local v3, "dismissPendingIntent":Landroid/app/PendingIntent;
    new-instance v6, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v7, p0, Lcom/buzzfeed/android/pushnotifications/factory/PushNotificationBuzzFactory;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/buzzfeed/android/pushnotifications/factory/PushNotificationBuzzFactory;->mContext:Landroid/content/Context;

    const v8, 0x7f090178

    .line 76
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    .line 77
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getAlert()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    const/4 v7, 0x1

    .line 78
    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    new-instance v7, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v7}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 80
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getAlert()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v7

    .line 79
    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    const/4 v7, 0x0

    .line 81
    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/buzzfeed/android/pushnotifications/factory/PushNotificationBuzzFactory;->mContext:Landroid/content/Context;

    .line 82
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f100025

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    const v7, 0x7f02010e

    .line 83
    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    .line 84
    invoke-virtual {v6, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    .line 85
    invoke-virtual {v6, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 87
    .local v5, "notificationBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    sget-object v6, Lcom/buzzfeed/android/pushnotifications/factory/PushNotificationBuzzFactory;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Creating BUZZ notification with id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " content: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getAlert()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v6, p0, Lcom/buzzfeed/android/pushnotifications/factory/PushNotificationBuzzFactory;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    .line 90
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 91
    .local v4, "mNotifyMgr":Landroid/app/NotificationManager;
    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v4, p2, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_d
.end method

.method public getNotificationId(Lcom/urbanairship/push/PushMessage;)I
    .registers 3
    .param p1, "message"    # Lcom/urbanairship/push/PushMessage;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/buzzfeed/android/pushnotifications/factory/PushNotificationBuzzFactory;->mIdGenerator:Lcom/buzzfeed/android/pushnotifications/PushNotificationIdGenerator;

    invoke-virtual {v0}, Lcom/buzzfeed/android/pushnotifications/PushNotificationIdGenerator;->getNextId()I

    move-result v0

    return v0
.end method

.method public handleNotificationDismissed(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 104
    return-void
.end method

.method public handleNotificationOpened(Lcom/urbanairship/push/PushMessage;)V
    .registers 2
    .param p1, "message"    # Lcom/urbanairship/push/PushMessage;

    .prologue
    .line 99
    return-void
.end method

.method public handlesPushMessage(Lcom/urbanairship/push/PushMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/urbanairship/push/PushMessage;

    .prologue
    .line 56
    const/4 v0, 0x1

    return v0
.end method
