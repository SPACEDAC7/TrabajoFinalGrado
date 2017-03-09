.class public Lcom/buzzfeed/android/pushnotifications/ShowNotificationIntentService;
.super Landroid/app/IntentService;
.source "ShowNotificationIntentService.java"


# static fields
.field private static final KEY_NOTIFICATION_ID:Ljava/lang/String; = "notification_id"

.field private static final KEY_PUSH_MESSAGE:Ljava/lang/String; = "push_message"

.field private static final REQUEST_CODE_DISMISS_ADDITION:I = 0x7d0

.field private static final REQUEST_CODE_SHOW_ADDITION:I = 0x3e8

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const-class v0, Lcom/buzzfeed/android/pushnotifications/ShowNotificationIntentService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/pushnotifications/ShowNotificationIntentService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    const-string v0, "ShowNotificationIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method private getBitmapFromURL(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "strUrl"    # Ljava/lang/String;

    .prologue
    .line 126
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/buzzfeed/android/pushnotifications/ShowNotificationIntentService;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".getBitmapFromUrl"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "TAG":Ljava/lang/String;
    :try_start_15
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 129
    .local v5, "url":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 130
    .local v2, "connection":Ljava/net/HttpURLConnection;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 132
    const/16 v6, 0x2710

    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 133
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 134
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 135
    .local v4, "input":Ljava/io/InputStream;
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 137
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3d4ccccd

    mul-float/2addr v6, v7

    invoke-static {p1, v1, v6}, Lcom/buzzfeed/toolkit/util/ImageUtil;->getRoundedCornersBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_40} :catch_42

    move-result-object v6

    .line 140
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "connection":Ljava/net/HttpURLConnection;
    .end local v4    # "input":Ljava/io/InputStream;
    .end local v5    # "url":Ljava/net/URL;
    :goto_41
    return-object v6

    .line 138
    :catch_42
    move-exception v3

    .line 139
    .local v3, "e":Ljava/io/IOException;
    const-string v6, "Error loading notification bitmap"

    invoke-static {v0, v6, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    const/4 v6, 0x0

    goto :goto_41
.end method

.method private static getRequestCode(I)I
    .registers 2
    .param p0, "i"    # I

    .prologue
    .line 116
    add-int/lit16 v0, p0, 0x3e8

    return v0
.end method

.method private static getRequestCodeDismissIntent(I)I
    .registers 2
    .param p0, "i"    # I

    .prologue
    .line 120
    add-int/lit16 v0, p0, 0x7d0

    return v0
.end method

.method public static getStartIntent(Landroid/content/Context;Lcom/urbanairship/push/PushMessage;I)Landroid/content/Intent;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pushMessage"    # Lcom/urbanairship/push/PushMessage;
    .param p2, "notificationId"    # I

    .prologue
    .line 41
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/buzzfeed/android/pushnotifications/ShowNotificationIntentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "push_message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 43
    const-string v1, "notification_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 44
    return-object v0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 21
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 49
    const-string v15, "push_message"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/urbanairship/push/PushMessage;

    .line 50
    .local v8, "message":Lcom/urbanairship/push/PushMessage;
    const-string v15, "notification_id"

    const/16 v16, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 51
    .local v10, "notificationId":I
    if-nez v8, :cond_19

    .line 113
    :cond_18
    :goto_18
    return-void

    .line 55
    :cond_19
    invoke-static {v8}, Lcom/buzzfeed/android/pushnotifications/PushNotificationUtil;->getBuzzUriFromPushMessage(Lcom/urbanairship/push/PushMessage;)Ljava/lang/String;

    move-result-object v5

    .line 56
    .local v5, "buzzUrl":Ljava/lang/String;
    if-eqz v5, :cond_18

    .line 60
    invoke-static {v8}, Lcom/buzzfeed/android/pushnotifications/ShowNotificationUtils;->getShowIdFromPushMessage(Lcom/urbanairship/push/PushMessage;)Ljava/lang/String;

    move-result-object v12

    .line 61
    .local v12, "showId":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/urbanairship/push/PushMessage;->getPushBundle()Landroid/os/Bundle;

    move-result-object v15

    const-string v16, "show_icon_url"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 62
    .local v11, "showIconUrl":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/urbanairship/push/PushMessage;->getAlert()Ljava/lang/String;

    move-result-object v15

    invoke-static {v10, v5, v15, v12}, Lcom/buzzfeed/android/activity/SplashActivity;->getShowNotificationIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 64
    .local v3, "buzzIntent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/android/pushnotifications/ShowNotificationIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v10}, Lcom/buzzfeed/android/pushnotifications/ShowNotificationIntentService;->getRequestCode(I)I

    move-result v16

    const/high16 v17, 0x8000000

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v15, v0, v3, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 65
    .local v4, "buzzPendingIntent":Landroid/app/PendingIntent;
    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/android/pushnotifications/ShowNotificationIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v10}, Lcom/buzzfeed/android/pushnotifications/ShowNotificationIntentService;->getRequestCodeDismissIntent(I)I

    move-result v16

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/android/pushnotifications/ShowNotificationIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual {v8}, Lcom/urbanairship/push/PushMessage;->getAlert()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5, v12}, Lcom/buzzfeed/android/pushnotifications/PushNotificationBroadcastReceiver;->getDismissIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v17

    const/high16 v18, 0x8000000

    .line 65
    invoke-static/range {v15 .. v18}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 68
    .local v6, "dismissPendingIntent":Landroid/app/PendingIntent;
    new-instance v15, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/android/pushnotifications/ShowNotificationIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 69
    invoke-virtual {v8}, Lcom/urbanairship/push/PushMessage;->getPushBundle()Landroid/os/Bundle;

    move-result-object v16

    const-string v17, "show_title"

    invoke-virtual/range {v16 .. v17}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v15

    const/16 v16, 0x1

    .line 70
    invoke-virtual/range {v15 .. v16}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v15

    const/16 v16, 0x0

    .line 71
    invoke-virtual/range {v15 .. v16}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v15

    .line 72
    invoke-virtual {v15, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v15

    .line 73
    invoke-virtual {v15, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    .line 75
    .local v9, "notificationBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-static {}, Lcom/buzzfeed/toolkit/util/VersionUtil;->hasNougat()Z

    move-result v15

    if-eqz v15, :cond_187

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/android/pushnotifications/ShowNotificationIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f100025

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    invoke-virtual {v9, v15}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v15

    const v16, 0x7f020113

    .line 77
    invoke-virtual/range {v15 .. v16}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 84
    :goto_af
    invoke-static {}, Lcom/buzzfeed/android/pushnotifications/ShowNotificationStorageProvider;->getInstance()Lcom/buzzfeed/android/pushnotifications/ShowNotificationStorageProvider;

    move-result-object v15

    invoke-virtual {v15}, Lcom/buzzfeed/android/pushnotifications/ShowNotificationStorageProvider;->getShowSubscriptionNotificationStorage()Ljava/util/HashMap;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/buzzfeed/android/pushnotifications/ShowSubscriptionNotificationStorage;

    .line 85
    .local v13, "storage":Lcom/buzzfeed/android/pushnotifications/ShowSubscriptionNotificationStorage;
    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/android/pushnotifications/ShowNotificationIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v11}, Lcom/buzzfeed/android/pushnotifications/ShowNotificationIntentService;->getBitmapFromURL(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 86
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_ec

    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/android/pushnotifications/ShowNotificationIntentService;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x1050006

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/android/pushnotifications/ShowNotificationIntentService;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x1050006

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    const/16 v17, 0x0

    .line 87
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v2, v15, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 92
    :cond_ec
    if-eqz v13, :cond_1a2

    .line 93
    invoke-virtual {v8}, Lcom/urbanairship/push/PushMessage;->getAlert()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/buzzfeed/android/pushnotifications/ShowSubscriptionNotificationStorage;->addNotification(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v13}, Lcom/buzzfeed/android/pushnotifications/ShowSubscriptionNotificationStorage;->getMessagesCount()I

    move-result v14

    .line 95
    .local v14, "totalCount":I
    new-instance v15, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v15}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 96
    invoke-virtual {v8}, Lcom/urbanairship/push/PushMessage;->getPushBundle()Landroid/os/Bundle;

    move-result-object v16

    const-string v17, "show_title"

    invoke-virtual/range {v16 .. v17}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v15

    .line 97
    invoke-virtual {v13}, Lcom/buzzfeed/android/pushnotifications/ShowSubscriptionNotificationStorage;->getAllMessagesCombined()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v15

    .line 95
    invoke-virtual {v9, v15}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/android/pushnotifications/ShowNotificationIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f0902b6

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 99
    const v15, 0x7f0200db

    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/android/pushnotifications/ShowNotificationIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    const v17, 0x7f0902b7

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 108
    .end local v14    # "totalCount":I
    :goto_14c
    sget-object v15, Lcom/buzzfeed/android/pushnotifications/ShowNotificationIntentService;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Creating SHOW notification with id: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " content: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v8}, Lcom/urbanairship/push/PushMessage;->getAlert()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v15, "notification"

    .line 111
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/buzzfeed/android/pushnotifications/ShowNotificationIntentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 112
    .local v7, "mNotifyMgr":Landroid/app/NotificationManager;
    invoke-virtual {v9}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v15

    invoke-virtual {v7, v10, v15}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_18

    .line 80
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "mNotifyMgr":Landroid/app/NotificationManager;
    .end local v13    # "storage":Lcom/buzzfeed/android/pushnotifications/ShowSubscriptionNotificationStorage;
    :cond_187
    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/android/pushnotifications/ShowNotificationIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f100025

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    invoke-virtual {v9, v15}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v15

    const v16, 0x7f02010e

    .line 81
    invoke-virtual/range {v15 .. v16}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_af

    .line 102
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v13    # "storage":Lcom/buzzfeed/android/pushnotifications/ShowSubscriptionNotificationStorage;
    :cond_1a2
    new-instance v13, Lcom/buzzfeed/android/pushnotifications/ShowSubscriptionNotificationStorage;

    .end local v13    # "storage":Lcom/buzzfeed/android/pushnotifications/ShowSubscriptionNotificationStorage;
    invoke-direct {v13, v10}, Lcom/buzzfeed/android/pushnotifications/ShowSubscriptionNotificationStorage;-><init>(I)V

    .line 103
    .restart local v13    # "storage":Lcom/buzzfeed/android/pushnotifications/ShowSubscriptionNotificationStorage;
    invoke-virtual {v8}, Lcom/urbanairship/push/PushMessage;->getAlert()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/buzzfeed/android/pushnotifications/ShowSubscriptionNotificationStorage;->addNotification(Ljava/lang/String;)V

    .line 104
    invoke-static {}, Lcom/buzzfeed/android/pushnotifications/ShowNotificationStorageProvider;->getInstance()Lcom/buzzfeed/android/pushnotifications/ShowNotificationStorageProvider;

    move-result-object v15

    invoke-virtual {v15}, Lcom/buzzfeed/android/pushnotifications/ShowNotificationStorageProvider;->getShowSubscriptionNotificationStorage()Ljava/util/HashMap;

    move-result-object v15

    invoke-virtual {v15, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-virtual {v8}, Lcom/urbanairship/push/PushMessage;->getAlert()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_14c
.end method
