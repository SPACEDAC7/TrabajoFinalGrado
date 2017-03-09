.class Lcom/urbanairship/ChannelCapture;
.super Lcom/urbanairship/AirshipComponent;
.source "ChannelCapture.java"


# static fields
.field static final ACTION_CHANNEL_CAPTURE:Ljava/lang/String; = "com.urbanairship.ACTION_CHANNEL_CAPTURE"

.field private static final CHANNEL_PLACEHOLDER:Ljava/lang/String; = "CHANNEL"

.field static final EXTRA_ACTIONS:Ljava/lang/String; = "com.urbanairship.EXTRA_ACTIONS"

.field static final EXTRA_NOTIFICATION_ID:Ljava/lang/String; = "com.urbanairship.EXTRA_NOTIFICATION_ID"

.field private static final GO_URL:Ljava/lang/String; = "https://go.urbanairship.com/"

.field private static final NOTIFICATION_ID:I = 0xbb8


# instance fields
.field private final activityMonitor:Lcom/urbanairship/ActivityMonitor;

.field private clipboardManager:Landroid/content/ClipboardManager;

.field private final configOptions:Lcom/urbanairship/AirshipConfigOptions;

.field private final context:Landroid/content/Context;

.field executor:Ljava/util/concurrent/Executor;

.field private final listener:Lcom/urbanairship/ActivityMonitor$Listener;

.field private final notificationManager:Landroid/support/v4/app/NotificationManagerCompat;

.field private final pushManager:Lcom/urbanairship/push/PushManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/urbanairship/AirshipConfigOptions;Lcom/urbanairship/push/PushManager;Landroid/support/v4/app/NotificationManagerCompat;Lcom/urbanairship/ActivityMonitor;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "configOptions"    # Lcom/urbanairship/AirshipConfigOptions;
    .param p3, "pushManager"    # Lcom/urbanairship/push/PushManager;
    .param p4, "notificationManager"    # Landroid/support/v4/app/NotificationManagerCompat;
    .param p5, "activityMonitor"    # Lcom/urbanairship/ActivityMonitor;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/urbanairship/AirshipComponent;-><init>()V

    .line 67
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/ChannelCapture;->executor:Ljava/util/concurrent/Executor;

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/ChannelCapture;->context:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Lcom/urbanairship/ChannelCapture;->configOptions:Lcom/urbanairship/AirshipConfigOptions;

    .line 85
    iput-object p3, p0, Lcom/urbanairship/ChannelCapture;->pushManager:Lcom/urbanairship/push/PushManager;

    .line 86
    iput-object p4, p0, Lcom/urbanairship/ChannelCapture;->notificationManager:Landroid/support/v4/app/NotificationManagerCompat;

    .line 87
    new-instance v0, Lcom/urbanairship/ChannelCapture$1;

    invoke-direct {v0, p0}, Lcom/urbanairship/ChannelCapture$1;-><init>(Lcom/urbanairship/ChannelCapture;)V

    iput-object v0, p0, Lcom/urbanairship/ChannelCapture;->listener:Lcom/urbanairship/ActivityMonitor$Listener;

    .line 98
    iput-object p5, p0, Lcom/urbanairship/ChannelCapture;->activityMonitor:Lcom/urbanairship/ActivityMonitor;

    .line 99
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/urbanairship/AirshipConfigOptions;Lcom/urbanairship/push/PushManager;Lcom/urbanairship/ActivityMonitor;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "configOptions"    # Lcom/urbanairship/AirshipConfigOptions;
    .param p3, "pushManager"    # Lcom/urbanairship/push/PushManager;
    .param p4, "activityMonitor"    # Lcom/urbanairship/ActivityMonitor;

    .prologue
    .line 78
    invoke-static {p1}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/urbanairship/ChannelCapture;-><init>(Landroid/content/Context;Lcom/urbanairship/AirshipConfigOptions;Lcom/urbanairship/push/PushManager;Landroid/support/v4/app/NotificationManagerCompat;Lcom/urbanairship/ActivityMonitor;)V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/ChannelCapture;)V
    .registers 1
    .param p0, "x0"    # Lcom/urbanairship/ChannelCapture;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/urbanairship/ChannelCapture;->checkClipboard()V

    return-void
.end method

.method static synthetic access$102(Lcom/urbanairship/ChannelCapture;Landroid/content/ClipboardManager;)Landroid/content/ClipboardManager;
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/ChannelCapture;
    .param p1, "x1"    # Landroid/content/ClipboardManager;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/urbanairship/ChannelCapture;->clipboardManager:Landroid/content/ClipboardManager;

    return-object p1
.end method

.method static synthetic access$200(Lcom/urbanairship/ChannelCapture;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/ChannelCapture;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/urbanairship/ChannelCapture;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/urbanairship/ChannelCapture;)Lcom/urbanairship/ActivityMonitor$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/ChannelCapture;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/urbanairship/ChannelCapture;->listener:Lcom/urbanairship/ActivityMonitor$Listener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/urbanairship/ChannelCapture;)Lcom/urbanairship/ActivityMonitor;
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/ChannelCapture;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/urbanairship/ChannelCapture;->activityMonitor:Lcom/urbanairship/ActivityMonitor;

    return-object v0
.end method

.method private base64Decode(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "encoded"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 192
    invoke-static {p1}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 205
    :goto_7
    return-object v2

    .line 198
    :cond_8
    const/4 v3, 0x0

    :try_start_9
    invoke-static {p1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 199
    .local v0, "data":[B
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_14
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_14} :catch_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_14} :catch_1d

    move-object v2, v3

    goto :goto_7

    .line 200
    .end local v0    # "data":[B
    :catch_16
    move-exception v1

    .line 201
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v3, "ClipBoardMagic - Unsupported encoding."

    invoke-static {v3}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    goto :goto_7

    .line 203
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1d
    move-exception v1

    .line 204
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "ClipBoardMagic - Failed to decode string."

    invoke-static {v3}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    goto :goto_7
.end method

.method private checkClipboard()V
    .registers 14

    .prologue
    .line 128
    iget-object v10, p0, Lcom/urbanairship/ChannelCapture;->pushManager:Lcom/urbanairship/push/PushManager;

    invoke-virtual {v10}, Lcom/urbanairship/push/PushManager;->getChannelId()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "channel":Ljava/lang/String;
    invoke-static {v0}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 183
    :cond_c
    :goto_c
    return-void

    .line 134
    :cond_d
    iget-object v10, p0, Lcom/urbanairship/ChannelCapture;->clipboardManager:Landroid/content/ClipboardManager;

    if-eqz v10, :cond_c

    .line 138
    const/4 v1, 0x0

    .line 140
    .local v1, "clipboardText":Ljava/lang/String;
    :try_start_12
    iget-object v10, p0, Lcom/urbanairship/ChannelCapture;->clipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v10}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 144
    iget-object v10, p0, Lcom/urbanairship/ChannelCapture;->clipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v10}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v6

    .line 146
    .local v6, "primaryClip":Landroid/content/ClipData;
    if-eqz v6, :cond_5c

    invoke-virtual {v6}, Landroid/content/ClipData;->getItemCount()I

    move-result v10

    if-lez v10, :cond_5c

    .line 148
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_29
    invoke-virtual {v6}, Landroid/content/ClipData;->getItemCount()I

    move-result v10

    if-ge v4, v10, :cond_5c

    .line 149
    invoke-virtual {v6, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    .line 150
    .local v5, "item":Landroid/content/ClipData$Item;
    invoke-virtual {v5}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    .line 151
    .local v8, "text":Ljava/lang/CharSequence;
    if-eqz v8, :cond_3d

    .line 152
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_3c
    .catch Ljava/lang/SecurityException; {:try_start_12 .. :try_end_3c} :catch_40

    move-result-object v1

    .line 148
    :cond_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 156
    .end local v4    # "i":I
    .end local v5    # "item":Landroid/content/ClipData$Item;
    .end local v6    # "primaryClip":Landroid/content/ClipData;
    .end local v8    # "text":Ljava/lang/CharSequence;
    :catch_40
    move-exception v3

    .line 157
    .local v3, "e":Ljava/lang/SecurityException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to read clipboard: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    goto :goto_c

    .line 161
    .end local v3    # "e":Ljava/lang/SecurityException;
    .restart local v6    # "primaryClip":Landroid/content/ClipData;
    :cond_5c
    invoke-direct {p0, v1}, Lcom/urbanairship/ChannelCapture;->base64Decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, "decodedClipboardString":Ljava/lang/String;
    invoke-direct {p0}, Lcom/urbanairship/ChannelCapture;->generateToken()Ljava/lang/String;

    move-result-object v7

    .line 163
    .local v7, "superSecretCode":Ljava/lang/String;
    invoke-static {v2}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_c

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 168
    const/4 v9, 0x0

    .line 169
    .local v9, "url":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-le v10, v11, :cond_8b

    .line 170
    const-string v10, "https://go.urbanairship.com/"

    invoke-virtual {v2, v7, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "CHANNEL"

    .line 171
    invoke-virtual {v10, v11, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 172
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 177
    :cond_8b
    :try_start_8b
    iget-object v10, p0, Lcom/urbanairship/ChannelCapture;->clipboardManager:Landroid/content/ClipboardManager;

    const-string v11, ""

    const-string v12, ""

    invoke-static {v11, v12}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_98
    .catch Ljava/lang/SecurityException; {:try_start_8b .. :try_end_98} :catch_9d

    .line 182
    :goto_98
    invoke-direct {p0, v0, v9}, Lcom/urbanairship/ChannelCapture;->displayNotification(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 178
    :catch_9d
    move-exception v3

    .line 179
    .restart local v3    # "e":Ljava/lang/SecurityException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to clear clipboard: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    goto :goto_98
.end method

.method private createCopyChannelPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .registers 9
    .param p1, "channel"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/16 v6, 0xbb8

    .line 273
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 274
    .local v1, "actionValue":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "text"

    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    const-string v3, "label"

    const-string v4, "Urban Airship Channel"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 278
    .local v0, "actionPayload":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "clipboard_action"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string/jumbo v3, "toast_action"

    iget-object v4, p0, Lcom/urbanairship/ChannelCapture;->context:Landroid/content/Context;

    sget v5, Lcom/urbanairship/R$string;->ua_channel_copy_toast:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/urbanairship/ChannelCapture;->context:Landroid/content/Context;

    const-class v5, Lcom/urbanairship/CoreReceiver;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "com.urbanairship.ACTION_CHANNEL_CAPTURE"

    .line 282
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 283
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.urbanairship.EXTRA_NOTIFICATION_ID"

    .line 284
    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.urbanairship.EXTRA_ACTIONS"

    .line 285
    invoke-static {v0}, Lcom/urbanairship/json/JsonValue;->wrapOpt(Ljava/lang/Object;)Lcom/urbanairship/json/JsonValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/json/JsonValue;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 287
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/urbanairship/ChannelCapture;->context:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v6, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    return-object v3
.end method

.method private createOpenUrlPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .registers 8
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/16 v5, 0xbb8

    .line 298
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 299
    .local v0, "actionPayload":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "open_external_url_action"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/urbanairship/ChannelCapture;->context:Landroid/content/Context;

    const-class v4, Lcom/urbanairship/CoreActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.urbanairship.ACTION_CHANNEL_CAPTURE"

    .line 302
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 303
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.urbanairship.EXTRA_NOTIFICATION_ID"

    .line 304
    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.urbanairship.EXTRA_ACTIONS"

    .line 305
    invoke-static {v0}, Lcom/urbanairship/json/JsonValue;->wrapOpt(Ljava/lang/Object;)Lcom/urbanairship/json/JsonValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/json/JsonValue;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 307
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/urbanairship/ChannelCapture;->context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v5, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2
.end method

.method private displayNotification(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 216
    invoke-direct {p0, p1}, Lcom/urbanairship/ChannelCapture;->createCopyChannelPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 217
    .local v2, "copyClipboardPendingIntent":Landroid/app/PendingIntent;
    if-nez p2, :cond_95

    const/4 v3, 0x0

    .line 219
    .local v3, "openUrlPendingIntent":Landroid/app/PendingIntent;
    :goto_8
    iget-object v4, p0, Lcom/urbanairship/ChannelCapture;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/urbanairship/ChannelCapture;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "appName":Ljava/lang/String;
    new-instance v4, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v5, p0, Lcom/urbanairship/ChannelCapture;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 221
    invoke-virtual {v4, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 222
    invoke-virtual {v4, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setLocalOnly(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 223
    invoke-virtual {v4, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 224
    invoke-virtual {v4, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    sget v5, Lcom/urbanairship/R$drawable;->ua_ic_urbanairship_notification:I

    .line 225
    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/urbanairship/ChannelCapture;->context:Landroid/content/Context;

    sget v6, Lcom/urbanairship/R$color;->urban_airship_blue:I

    .line 226
    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    const/4 v5, -0x1

    .line 227
    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    const/4 v5, 0x2

    .line 228
    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/urbanairship/ChannelCapture;->context:Landroid/content/Context;

    sget v6, Lcom/urbanairship/R$string;->ua_channel_notification_ticker:I

    .line 229
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    if-nez v3, :cond_9b

    move-object v4, v2

    .line 230
    :goto_5e
    invoke-virtual {v5, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    new-instance v5, Landroid/support/v4/app/NotificationCompat$Action;

    sget v6, Lcom/urbanairship/R$drawable;->ua_ic_notification_button_copy:I

    iget-object v7, p0, Lcom/urbanairship/ChannelCapture;->context:Landroid/content/Context;

    sget v8, Lcom/urbanairship/R$string;->ua_notification_button_copy:I

    .line 232
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7, v2}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 231
    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 235
    .local v1, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    if-eqz v3, :cond_89

    .line 236
    new-instance v4, Landroid/support/v4/app/NotificationCompat$Action;

    sget v5, Lcom/urbanairship/R$drawable;->ua_ic_notification_button_open_browser:I

    iget-object v6, p0, Lcom/urbanairship/ChannelCapture;->context:Landroid/content/Context;

    sget v7, Lcom/urbanairship/R$string;->ua_notification_button_save:I

    .line 237
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v3}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 236
    invoke-virtual {v1, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 242
    :cond_89
    iget-object v4, p0, Lcom/urbanairship/ChannelCapture;->notificationManager:Landroid/support/v4/app/NotificationManagerCompat;

    const/16 v5, 0xbb8

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 243
    return-void

    .line 217
    .end local v0    # "appName":Ljava/lang/String;
    .end local v1    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v3    # "openUrlPendingIntent":Landroid/app/PendingIntent;
    :cond_95
    invoke-direct {p0, p2}, Lcom/urbanairship/ChannelCapture;->createOpenUrlPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    goto/16 :goto_8

    .restart local v0    # "appName":Ljava/lang/String;
    .restart local v3    # "openUrlPendingIntent":Landroid/app/PendingIntent;
    :cond_9b
    move-object v4, v3

    .line 229
    goto :goto_5e
.end method

.method private generateToken()Ljava/lang/String;
    .registers 10
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 252
    iget-object v5, p0, Lcom/urbanairship/ChannelCapture;->configOptions:Lcom/urbanairship/AirshipConfigOptions;

    invoke-virtual {v5}, Lcom/urbanairship/AirshipConfigOptions;->getAppKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 253
    .local v0, "appKeyBytes":[B
    iget-object v5, p0, Lcom/urbanairship/ChannelCapture;->configOptions:Lcom/urbanairship/AirshipConfigOptions;

    invoke-virtual {v5}, Lcom/urbanairship/AirshipConfigOptions;->getAppSecret()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 255
    .local v1, "appSecretBytes":[B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    .local v3, "code":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1a
    array-length v5, v0

    if-ge v4, v5, :cond_3c

    .line 258
    aget-byte v5, v0, v4

    array-length v6, v1

    rem-int v6, v4, v6

    aget-byte v6, v1, v6

    xor-int/2addr v5, v6

    int-to-byte v2, v5

    .line 259
    .local v2, "b":B
    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 262
    .end local v2    # "b":B
    :cond_3c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method protected init()V
    .registers 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/urbanairship/ChannelCapture;->configOptions:Lcom/urbanairship/AirshipConfigOptions;

    iget-boolean v0, v0, Lcom/urbanairship/AirshipConfigOptions;->channelCaptureEnabled:Z

    if-nez v0, :cond_7

    .line 116
    :goto_6
    return-void

    .line 109
    :cond_7
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/urbanairship/ChannelCapture$2;

    invoke-direct {v1, p0}, Lcom/urbanairship/ChannelCapture$2;-><init>(Lcom/urbanairship/ChannelCapture;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6
.end method

.method protected tearDown()V
    .registers 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/urbanairship/ChannelCapture;->activityMonitor:Lcom/urbanairship/ActivityMonitor;

    iget-object v1, p0, Lcom/urbanairship/ChannelCapture;->listener:Lcom/urbanairship/ActivityMonitor$Listener;

    invoke-virtual {v0, v1}, Lcom/urbanairship/ActivityMonitor;->removeListener(Lcom/urbanairship/ActivityMonitor$Listener;)V

    .line 121
    return-void
.end method
