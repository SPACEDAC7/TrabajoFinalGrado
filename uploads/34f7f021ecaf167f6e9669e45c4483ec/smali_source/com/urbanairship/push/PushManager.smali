.class public Lcom/urbanairship/push/PushManager;
.super Lcom/urbanairship/AirshipComponent;
.source "PushManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/push/PushManager$QuietTime;
    }
.end annotation


# static fields
.field public static final ACTION_CHANNEL_UPDATED:Ljava/lang/String; = "com.urbanairship.push.CHANNEL_UPDATED"

.field public static final ACTION_NOTIFICATION_BUTTON_OPENED_PROXY:Ljava/lang/String; = "com.urbanairship.ACTION_NOTIFICATION_BUTTON_OPENED_PROXY"

.field public static final ACTION_NOTIFICATION_DISMISSED:Ljava/lang/String; = "com.urbanairship.push.DISMISSED"

.field public static final ACTION_NOTIFICATION_DISMISSED_PROXY:Ljava/lang/String; = "com.urbanairship.ACTION_NOTIFICATION_DISMISSED_PROXY"

.field public static final ACTION_NOTIFICATION_OPENED:Ljava/lang/String; = "com.urbanairship.push.OPENED"

.field public static final ACTION_NOTIFICATION_OPENED_PROXY:Ljava/lang/String; = "com.urbanairship.ACTION_NOTIFICATION_OPENED_PROXY"

.field public static final ACTION_PUSH_RECEIVED:Ljava/lang/String; = "com.urbanairship.push.RECEIVED"

.field static final ADM_REGISTRATION_ID_KEY:Ljava/lang/String; = "com.urbanairship.push.ADM_REGISTRATION_ID_KEY"

.field static final ALIAS_KEY:Ljava/lang/String; = "com.urbanairship.push.ALIAS"

.field static final APID_KEY:Ljava/lang/String; = "com.urbanairship.push.APID"

.field static final CHANNEL_ID_KEY:Ljava/lang/String; = "com.urbanairship.push.CHANNEL_ID"

.field static final CHANNEL_LOCATION_KEY:Ljava/lang/String; = "com.urbanairship.push.CHANNEL_LOCATION"

.field public static final EXTRA_CHANNEL_CREATE_REQUEST:Ljava/lang/String; = "com.urbanairship.push.EXTRA_CHANNEL_CREATE_REQUEST"

.field public static final EXTRA_CHANNEL_ID:Ljava/lang/String; = "com.urbanairship.push.EXTRA_CHANNEL_ID"

.field public static final EXTRA_ERROR:Ljava/lang/String; = "com.urbanairship.push.EXTRA_ERROR"

.field public static final EXTRA_NOTIFICATION_ACTION_BUTTON_DESCRIPTION:Ljava/lang/String; = "com.urbanairship.push.EXTRA_NOTIFICATION_ACTION_BUTTON_DESCRIPTION"

.field public static final EXTRA_NOTIFICATION_BUTTON_ACTIONS_PAYLOAD:Ljava/lang/String; = "com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_ACTIONS_PAYLOAD"

.field public static final EXTRA_NOTIFICATION_BUTTON_FOREGROUND:Ljava/lang/String; = "com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_FOREGROUND"

.field public static final EXTRA_NOTIFICATION_BUTTON_ID:Ljava/lang/String; = "com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_ID"

.field public static final EXTRA_NOTIFICATION_CONTENT_INTENT:Ljava/lang/String; = "com.urbanairship.push.EXTRA_NOTIFICATION_CONTENT_INTENT"

.field public static final EXTRA_NOTIFICATION_DELETE_INTENT:Ljava/lang/String; = "com.urbanairship.push.EXTRA_NOTIFICATION_DELETE_INTENT"

.field public static final EXTRA_NOTIFICATION_ID:Ljava/lang/String; = "com.urbanairship.push.NOTIFICATION_ID"

.field public static final EXTRA_PUSH_MESSAGE_BUNDLE:Ljava/lang/String; = "com.urbanairship.push.EXTRA_PUSH_MESSAGE_BUNDLE"

.field static final GCM_INSTANCE_ID_TOKEN_KEY:Ljava/lang/String; = "com.urbanairship.push.GCM_INSTANCE_ID_TOKEN_KEY"

.field static final KEY_PREFIX:Ljava/lang/String; = "com.urbanairship.push"

.field static final LAST_RECEIVED_METADATA:Ljava/lang/String; = "com.urbanairship.push.LAST_RECEIVED_METADATA"

.field static final OLD_QUIET_TIME_ENABLED:Ljava/lang/String; = "com.urbanairship.push.QuietTime.Enabled"

.field static final PUSH_ENABLED_KEY:Ljava/lang/String; = "com.urbanairship.push.PUSH_ENABLED"

.field static final PUSH_ENABLED_SETTINGS_MIGRATED_KEY:Ljava/lang/String; = "com.urbanairship.push.PUSH_ENABLED_SETTINGS_MIGRATED"

.field static final PUSH_TOKEN_REGISTRATION_ENABLED_KEY:Ljava/lang/String; = "com.urbanairship.push.PUSH_TOKEN_REGISTRATION_ENABLED"

.field static final QUIET_TIME_ENABLED:Ljava/lang/String; = "com.urbanairship.push.QUIET_TIME_ENABLED"

.field static final QUIET_TIME_INTERVAL:Ljava/lang/String; = "com.urbanairship.push.QUIET_TIME_INTERVAL"

.field static final REGISTRATION_TOKEN_KEY:Ljava/lang/String; = "com.urbanairship.push.REGISTRATION_TOKEN_KEY"

.field static final REGISTRATION_TOKEN_MIGRATED_KEY:Ljava/lang/String; = "com.urbanairship.push.REGISTRATION_TOKEN_MIGRATED_KEY"

.field static final SOUND_ENABLED_KEY:Ljava/lang/String; = "com.urbanairship.push.SOUND_ENABLED"

.field static final TAGS_KEY:Ljava/lang/String; = "com.urbanairship.push.TAGS"

.field static final USER_NOTIFICATIONS_ENABLED_KEY:Ljava/lang/String; = "com.urbanairship.push.USER_NOTIFICATIONS_ENABLED"

.field static final VIBRATE_ENABLED_KEY:Ljava/lang/String; = "com.urbanairship.push.VIBRATE_ENABLED"


# instance fields
.field private final DEFAULT_TAG_GROUP:Ljava/lang/String;

.field private final UA_NOTIFICATION_BUTTON_GROUP_PREFIX:Ljava/lang/String;

.field private final actionGroupMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;",
            ">;"
        }
    .end annotation
.end field

.field private channelCreationDelayEnabled:Z

.field private channelJobHandler:Lcom/urbanairship/push/ChannelJobHandler;

.field private channelTagRegistrationEnabled:Z

.field private final configOptions:Lcom/urbanairship/AirshipConfigOptions;

.field private final context:Landroid/content/Context;

.field private final jobDispatcher:Lcom/urbanairship/job/JobDispatcher;

.field private notificationFactory:Lcom/urbanairship/push/notifications/NotificationFactory;

.field private final notificationManagerCompat:Landroid/support/v4/app/NotificationManagerCompat;

.field private final preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

.field private pushJobHandler:Lcom/urbanairship/push/PushJobHandler;

.field private final tagLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;Lcom/urbanairship/AirshipConfigOptions;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferenceDataStore"    # Lcom/urbanairship/PreferenceDataStore;
    .param p3, "configOptions"    # Lcom/urbanairship/AirshipConfigOptions;

    .prologue
    .line 260
    invoke-static {p1}, Lcom/urbanairship/job/JobDispatcher;->shared(Landroid/content/Context;)Lcom/urbanairship/job/JobDispatcher;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/urbanairship/push/PushManager;-><init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;Lcom/urbanairship/AirshipConfigOptions;Lcom/urbanairship/job/JobDispatcher;)V

    .line 261
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;Lcom/urbanairship/AirshipConfigOptions;Lcom/urbanairship/job/JobDispatcher;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferenceDataStore"    # Lcom/urbanairship/PreferenceDataStore;
    .param p3, "configOptions"    # Lcom/urbanairship/AirshipConfigOptions;
    .param p4, "dispatcher"    # Lcom/urbanairship/job/JobDispatcher;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/urbanairship/AirshipComponent;-><init>()V

    .line 190
    const-string/jumbo v1, "ua_"

    iput-object v1, p0, Lcom/urbanairship/push/PushManager;->UA_NOTIFICATION_BUTTON_GROUP_PREFIX:Ljava/lang/String;

    .line 195
    const-string v1, "device"

    iput-object v1, p0, Lcom/urbanairship/push/PushManager;->DEFAULT_TAG_GROUP:Ljava/lang/String;

    .line 236
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/urbanairship/push/PushManager;->actionGroupMap:Ljava/util/Map;

    .line 237
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/urbanairship/push/PushManager;->channelTagRegistrationEnabled:Z

    .line 247
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/urbanairship/push/PushManager;->tagLock:Ljava/lang/Object;

    .line 265
    iput-object p1, p0, Lcom/urbanairship/push/PushManager;->context:Landroid/content/Context;

    .line 266
    iput-object p2, p0, Lcom/urbanairship/push/PushManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    .line 267
    iput-object p4, p0, Lcom/urbanairship/push/PushManager;->jobDispatcher:Lcom/urbanairship/job/JobDispatcher;

    .line 269
    new-instance v0, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;

    invoke-direct {v0, p1}, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;-><init>(Landroid/content/Context;)V

    .line 270
    .local v0, "factory":Lcom/urbanairship/push/notifications/DefaultNotificationFactory;
    iget v1, p3, Lcom/urbanairship/AirshipConfigOptions;->notificationAccentColor:I

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->setColor(I)V

    .line 271
    iget v1, p3, Lcom/urbanairship/AirshipConfigOptions;->notificationIcon:I

    if-eqz v1, :cond_36

    .line 272
    iget v1, p3, Lcom/urbanairship/AirshipConfigOptions;->notificationIcon:I

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->setSmallIconId(I)V

    .line 275
    :cond_36
    iput-object v0, p0, Lcom/urbanairship/push/PushManager;->notificationFactory:Lcom/urbanairship/push/notifications/NotificationFactory;

    .line 277
    iput-object p3, p0, Lcom/urbanairship/push/PushManager;->configOptions:Lcom/urbanairship/AirshipConfigOptions;

    .line 279
    iget-object v1, p0, Lcom/urbanairship/push/PushManager;->actionGroupMap:Ljava/util/Map;

    sget v2, Lcom/urbanairship/R$xml;->ua_notification_buttons:I

    invoke-static {p1, v2}, Lcom/urbanairship/push/ActionButtonGroupsParser;->fromXml(Landroid/content/Context;I)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 281
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_56

    .line 282
    iget-object v1, p0, Lcom/urbanairship/push/PushManager;->actionGroupMap:Ljava/util/Map;

    sget v2, Lcom/urbanairship/R$xml;->ua_notification_button_overrides:I

    invoke-static {p1, v2}, Lcom/urbanairship/push/ActionButtonGroupsParser;->fromXml(Landroid/content/Context;I)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 285
    :cond_56
    invoke-static {p1}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v1

    iput-object v1, p0, Lcom/urbanairship/push/PushManager;->notificationManagerCompat:Landroid/support/v4/app/NotificationManagerCompat;

    .line 286
    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/push/PushManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/push/PushManager;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/urbanairship/push/PushManager;->channelTagRegistrationEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/urbanairship/push/PushManager;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/push/PushManager;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->tagLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/urbanairship/push/PushManager;Ljava/util/Set;)Z
    .registers 3
    .param p0, "x0"    # Lcom/urbanairship/push/PushManager;
    .param p1, "x1"    # Ljava/util/Set;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/urbanairship/push/PushManager;->storeTags(Ljava/util/Set;)Z

    move-result v0

    return v0
.end method

.method private storeTags(Ljava/util/Set;)Z
    .registers 7
    .param p1    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 595
    .local p1, "tags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/urbanairship/push/PushManager;->tagLock:Ljava/lang/Object;

    monitor-enter v2

    .line 596
    :try_start_3
    invoke-static {p1}, Lcom/urbanairship/push/TagUtils;->normalizeTags(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 597
    .local v0, "normalizedTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->getTags()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 598
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 599
    iget-object v1, p0, Lcom/urbanairship/push/PushManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v3, "com.urbanairship.push.TAGS"

    invoke-virtual {v1, v3}, Lcom/urbanairship/PreferenceDataStore;->remove(Ljava/lang/String;)V

    .line 604
    :goto_1e
    const/4 v1, 0x1

    monitor-exit v2

    .line 607
    :goto_20
    return v1

    .line 601
    :cond_21
    iget-object v1, p0, Lcom/urbanairship/push/PushManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v3, "com.urbanairship.push.TAGS"

    invoke-static {v0}, Lcom/urbanairship/json/JsonValue;->wrapOpt(Ljava/lang/Object;)Lcom/urbanairship/json/JsonValue;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Lcom/urbanairship/json/JsonValue;)V

    goto :goto_1e

    .line 608
    .end local v0    # "normalizedTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_2d
    move-exception v1

    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1

    .line 607
    .restart local v0    # "normalizedTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_30
    const/4 v1, 0x0

    :try_start_31
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_2d

    goto :goto_20
.end method


# virtual methods
.method public addNotificationActionButtonGroup(Ljava/lang/String;Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "group"    # Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 907
    const-string/jumbo v0, "ua_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 908
    const-string v0, "Unable to add any notification button groups that starts with the reserved Urban Airship prefix ua_"

    invoke-static {v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    .line 913
    :goto_e
    return-void

    .line 912
    :cond_f
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->actionGroupMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e
.end method

.method public editTagGroups()Lcom/urbanairship/push/TagGroupsEditor;
    .registers 5

    .prologue
    .line 830
    new-instance v0, Lcom/urbanairship/push/PushManager$1;

    const-string v1, "com.urbanairship.push.ACTION_APPLY_TAG_GROUP_CHANGES"

    const-class v2, Lcom/urbanairship/push/PushManager;

    iget-object v3, p0, Lcom/urbanairship/push/PushManager;->jobDispatcher:Lcom/urbanairship/job/JobDispatcher;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/urbanairship/push/PushManager$1;-><init>(Lcom/urbanairship/push/PushManager;Ljava/lang/String;Ljava/lang/Class;Lcom/urbanairship/job/JobDispatcher;)V

    return-object v0
.end method

.method public editTags()Lcom/urbanairship/push/TagEditor;
    .registers 2

    .prologue
    .line 877
    new-instance v0, Lcom/urbanairship/push/PushManager$2;

    invoke-direct {v0, p0}, Lcom/urbanairship/push/PushManager$2;-><init>(Lcom/urbanairship/push/PushManager;)V

    return-object v0
.end method

.method public enableChannelCreation()V
    .registers 2

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->isChannelCreationDelayEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 348
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/push/PushManager;->channelCreationDelayEnabled:Z

    .line 349
    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->updateRegistration()V

    .line 351
    :cond_c
    return-void
.end method

.method public getAlias()Ljava/lang/String;
    .registers 4

    .prologue
    .line 618
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.ALIAS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getApid()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.APID"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChannelId()Ljava/lang/String;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 946
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.CHANNEL_ID"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getChannelLocation()Ljava/lang/String;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 956
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.CHANNEL_LOCATION"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChannelTagRegistrationEnabled()Z
    .registers 2

    .prologue
    .line 662
    iget-boolean v0, p0, Lcom/urbanairship/push/PushManager;->channelTagRegistrationEnabled:Z

    return v0
.end method

.method public getLastReceivedMetadata()Ljava/lang/String;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 799
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.LAST_RECEIVED_METADATA"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getNextChannelRegistrationPayload()Lcom/urbanairship/push/ChannelRegistrationPayload;
    .registers 5

    .prologue
    .line 500
    new-instance v1, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;

    invoke-direct {v1}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;-><init>()V

    .line 501
    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->setAlias(Ljava/lang/String;)Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;

    move-result-object v1

    .line 502
    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->getChannelTagRegistrationEnabled()Z

    move-result v2

    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->getTags()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->setTags(ZLjava/util/Set;)Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;

    move-result-object v1

    .line 503
    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->isOptIn()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->setOptIn(Z)Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;

    move-result-object v2

    .line 504
    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->isPushEnabled()Z

    move-result v1

    if-eqz v1, :cond_6b

    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->isPushAvailable()Z

    move-result v1

    if-eqz v1, :cond_6b

    const/4 v1, 0x1

    :goto_2e
    invoke-virtual {v2, v1}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->setBackgroundEnabled(Z)Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;

    move-result-object v1

    .line 505
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/UAirship;->getInbox()Lcom/urbanairship/richpush/RichPushInbox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/richpush/RichPushInbox;->getUser()Lcom/urbanairship/richpush/RichPushUser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/richpush/RichPushUser;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->setUserId(Ljava/lang/String;)Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;

    move-result-object v1

    .line 506
    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->getApid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->setApid(Ljava/lang/String;)Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;

    move-result-object v0

    .line 508
    .local v0, "builder":Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getPlatformType()I

    move-result v1

    packed-switch v1, :pswitch_data_7a

    .line 517
    :goto_59
    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->getPushTokenRegistrationEnabled()Z

    move-result v1

    if-eqz v1, :cond_66

    .line 518
    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->getRegistrationToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->setPushAddress(Ljava/lang/String;)Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;

    .line 521
    :cond_66
    invoke-virtual {v0}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->build()Lcom/urbanairship/push/ChannelRegistrationPayload;

    move-result-object v1

    return-object v1

    .line 504
    .end local v0    # "builder":Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;
    :cond_6b
    const/4 v1, 0x0

    goto :goto_2e

    .line 510
    .restart local v0    # "builder":Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;
    :pswitch_6d
    const-string v1, "android"

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->setDeviceType(Ljava/lang/String;)Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;

    goto :goto_59

    .line 513
    :pswitch_73
    const-string v1, "amazon"

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->setDeviceType(Ljava/lang/String;)Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;

    goto :goto_59

    .line 508
    nop

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_73
        :pswitch_6d
    .end packed-switch
.end method

.method public getNotificationActionGroup(Ljava/lang/String;)Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;
    .registers 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 936
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->actionGroupMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;

    return-object v0
.end method

.method public getNotificationFactory()Lcom/urbanairship/push/notifications/NotificationFactory;
    .registers 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->notificationFactory:Lcom/urbanairship/push/notifications/NotificationFactory;

    return-object v0
.end method

.method getPreferenceDataStore()Lcom/urbanairship/PreferenceDataStore;
    .registers 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    return-object v0
.end method

.method public getPushTokenRegistrationEnabled()Z
    .registers 4

    .prologue
    .line 684
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.PUSH_TOKEN_REGISTRATION_ENABLED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getQuietTimeInterval()[Ljava/util/Date;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 784
    iget-object v2, p0, Lcom/urbanairship/push/PushManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v3, "com.urbanairship.push.QUIET_TIME_INTERVAL"

    invoke-virtual {v2, v3, v1}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/push/QuietTimeInterval;->parseJson(Ljava/lang/String;)Lcom/urbanairship/push/QuietTimeInterval;

    move-result-object v0

    .line 785
    .local v0, "quietTimeInterval":Lcom/urbanairship/push/QuietTimeInterval;
    if-eqz v0, :cond_13

    .line 786
    invoke-virtual {v0}, Lcom/urbanairship/push/QuietTimeInterval;->getQuietTimeIntervalDateArray()[Ljava/util/Date;

    move-result-object v1

    .line 788
    :cond_13
    return-object v1
.end method

.method public getRegistrationToken()Ljava/lang/String;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 998
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.REGISTRATION_TOKEN_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTags()Ljava/util/Set;
    .registers 8
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 630
    iget-object v5, p0, Lcom/urbanairship/push/PushManager;->tagLock:Ljava/lang/Object;

    monitor-enter v5

    .line 631
    :try_start_3
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 633
    .local v3, "tags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/urbanairship/push/PushManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v6, "com.urbanairship.push.TAGS"

    invoke-virtual {v4, v6}, Lcom/urbanairship/PreferenceDataStore;->getJsonValue(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    .line 635
    .local v0, "jsonValue":Lcom/urbanairship/json/JsonValue;
    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->isJsonList()Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 636
    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->getList()Lcom/urbanairship/json/JsonList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/json/JsonList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1e
    :goto_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/urbanairship/json/JsonValue;

    .line 637
    .local v2, "tag":Lcom/urbanairship/json/JsonValue;
    invoke-virtual {v2}, Lcom/urbanairship/json/JsonValue;->isString()Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 638
    invoke-virtual {v2}, Lcom/urbanairship/json/JsonValue;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 651
    .end local v0    # "jsonValue":Lcom/urbanairship/json/JsonValue;
    .end local v2    # "tag":Lcom/urbanairship/json/JsonValue;
    .end local v3    # "tags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_38
    move-exception v4

    monitor-exit v5
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_38

    throw v4

    .line 643
    .restart local v0    # "jsonValue":Lcom/urbanairship/json/JsonValue;
    .restart local v3    # "tags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3b
    :try_start_3b
    invoke-static {v3}, Lcom/urbanairship/push/TagUtils;->normalizeTags(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 646
    .local v1, "normalizedTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v6

    if-eq v4, v6, :cond_4c

    .line 647
    invoke-virtual {p0, v1}, Lcom/urbanairship/push/PushManager;->setTags(Ljava/util/Set;)V

    .line 650
    :cond_4c
    monitor-exit v5
    :try_end_4d
    .catchall {:try_start_3b .. :try_end_4d} :catchall_38

    return-object v1
.end method

.method public getUserNotificationsEnabled()Z
    .registers 4

    .prologue
    .line 398
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.USER_NOTIFICATIONS_ENABLED"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected init()V
    .registers 4

    .prologue
    .line 290
    sget v1, Lcom/urbanairship/Logger;->logLevel:I

    const/4 v2, 0x7

    if-ge v1, v2, :cond_2d

    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->getChannelId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/urbanairship/UAirship;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Channel ID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->getChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_2d
    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->migratePushEnabledSettings()V

    .line 295
    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->migrateQuietTimeSettings()V

    .line 296
    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->migrateRegistrationTokenSettings()V

    .line 298
    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->getChannelId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_64

    iget-object v1, p0, Lcom/urbanairship/push/PushManager;->configOptions:Lcom/urbanairship/AirshipConfigOptions;

    iget-boolean v1, v1, Lcom/urbanairship/AirshipConfigOptions;->channelCreationDelayEnabled:Z

    if-eqz v1, :cond_64

    const/4 v1, 0x1

    :goto_43
    iput-boolean v1, p0, Lcom/urbanairship/push/PushManager;->channelCreationDelayEnabled:Z

    .line 301
    const-string v1, "com.urbanairship.push.ACTION_START_REGISTRATION"

    invoke-static {v1}, Lcom/urbanairship/job/Job;->newBuilder(Ljava/lang/String;)Lcom/urbanairship/job/Job$Builder;

    move-result-object v1

    const-class v2, Lcom/urbanairship/push/PushManager;

    .line 302
    invoke-virtual {v1, v2}, Lcom/urbanairship/job/Job$Builder;->setAirshipComponent(Ljava/lang/Class;)Lcom/urbanairship/job/Job$Builder;

    move-result-object v1

    .line 303
    invoke-virtual {v1}, Lcom/urbanairship/job/Job$Builder;->build()Lcom/urbanairship/job/Job;

    move-result-object v0

    .line 305
    .local v0, "job":Lcom/urbanairship/job/Job;
    iget-object v1, p0, Lcom/urbanairship/push/PushManager;->jobDispatcher:Lcom/urbanairship/job/JobDispatcher;

    invoke-virtual {v1, v0}, Lcom/urbanairship/job/JobDispatcher;->dispatch(Lcom/urbanairship/job/Job;)V

    .line 308
    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->getChannelId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_63

    .line 309
    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->startUpdateTagsService()V

    .line 311
    :cond_63
    return-void

    .line 298
    .end local v0    # "job":Lcom/urbanairship/job/Job;
    :cond_64
    const/4 v1, 0x0

    goto :goto_43
.end method

.method isChannelCreationDelayEnabled()Z
    .registers 2

    .prologue
    .line 775
    iget-boolean v0, p0, Lcom/urbanairship/push/PushManager;->channelCreationDelayEnabled:Z

    return v0
.end method

.method public isInQuietTime()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 760
    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->isQuietTimeEnabled()Z

    move-result v2

    if-nez v2, :cond_8

    .line 765
    :cond_7
    :goto_7
    return v1

    .line 764
    :cond_8
    iget-object v2, p0, Lcom/urbanairship/push/PushManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v3, "com.urbanairship.push.QUIET_TIME_INTERVAL"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/push/QuietTimeInterval;->parseJson(Ljava/lang/String;)Lcom/urbanairship/push/QuietTimeInterval;

    move-result-object v0

    .line 765
    .local v0, "quietTimeInterval":Lcom/urbanairship/push/QuietTimeInterval;
    if-eqz v0, :cond_7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/urbanairship/push/QuietTimeInterval;->isInQuietTime(Ljava/util/Calendar;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v1, 0x1

    goto :goto_7
.end method

.method public isOptIn()Z
    .registers 2

    .prologue
    .line 491
    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->isPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->isPushAvailable()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->getUserNotificationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->notificationManagerCompat:Landroid/support/v4/app/NotificationManagerCompat;

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public isPushAvailable()Z
    .registers 2

    .prologue
    .line 482
    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->getPushTokenRegistrationEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->getRegistrationToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isPushEnabled()Z
    .registers 4

    .prologue
    .line 373
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.PUSH_ENABLED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isQuietTimeEnabled()Z
    .registers 4

    .prologue
    .line 741
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.QUIET_TIME_ENABLED"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSoundEnabled()Z
    .registers 4

    .prologue
    .line 705
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.SOUND_ENABLED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isVibrateEnabled()Z
    .registers 4

    .prologue
    .line 723
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.VIBRATE_ENABLED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method migratePushEnabledSettings()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1016
    iget-object v1, p0, Lcom/urbanairship/push/PushManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v2, "com.urbanairship.push.PUSH_ENABLED_SETTINGS_MIGRATED"

    invoke-virtual {v1, v2, v3}, Lcom/urbanairship/PreferenceDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1037
    :goto_c
    return-void

    .line 1020
    :cond_d
    const-string v1, "Migrating push enabled preferences"

    invoke-static {v1}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 1023
    iget-object v1, p0, Lcom/urbanairship/push/PushManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v2, "com.urbanairship.push.PUSH_ENABLED"

    invoke-virtual {v1, v2, v3}, Lcom/urbanairship/PreferenceDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1026
    .local v0, "oldPushEnabled":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting user notifications enabled to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 1027
    iget-object v1, p0, Lcom/urbanairship/push/PushManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v2, "com.urbanairship.push.USER_NOTIFICATIONS_ENABLED"

    invoke-virtual {v1, v2, v0}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Z)V

    .line 1029
    if-nez v0, :cond_42

    .line 1030
    const-string v1, "Push is now enabled. You can continue to toggle the opt-in state by enabling or disabling user notifications"

    invoke-static {v1}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 1035
    :cond_42
    iget-object v1, p0, Lcom/urbanairship/push/PushManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v2, "com.urbanairship.push.PUSH_ENABLED"

    invoke-virtual {v1, v2, v4}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Z)V

    .line 1036
    iget-object v1, p0, Lcom/urbanairship/push/PushManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v2, "com.urbanairship.push.PUSH_ENABLED_SETTINGS_MIGRATED"

    invoke-virtual {v1, v2, v4}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Z)V

    goto :goto_c
.end method

.method migrateQuietTimeSettings()V
    .registers 12

    .prologue
    const/4 v10, -0x1

    .line 1048
    iget-object v5, p0, Lcom/urbanairship/push/PushManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v6, "com.urbanairship.push.QUIET_TIME_ENABLED"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_23

    .line 1049
    iget-object v5, p0, Lcom/urbanairship/push/PushManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v6, "com.urbanairship.push.QUIET_TIME_ENABLED"

    iget-object v7, p0, Lcom/urbanairship/push/PushManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v8, "com.urbanairship.push.QuietTime.Enabled"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/urbanairship/PreferenceDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Z)V

    .line 1050
    iget-object v5, p0, Lcom/urbanairship/push/PushManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v6, "com.urbanairship.push.QuietTime.Enabled"

    invoke-virtual {v5, v6}, Lcom/urbanairship/PreferenceDataStore;->remove(Ljava/lang/String;)V

    .line 1054
    :cond_23
    iget-object v5, p0, Lcom/urbanairship/push/PushManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v6, "com.urbanairship.push.QuietTime.START_HOUR"

    invoke-virtual {v5, v6, v10}, Lcom/urbanairship/PreferenceDataStore;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1055
    .local v3, "startHr":I
    iget-object v5, p0, Lcom/urbanairship/push/PushManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v6, "com.urbanairship.push.QuietTime.START_MINUTE"

    invoke-virtual {v5, v6, v10}, Lcom/urbanairship/PreferenceDataStore;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 1056
    .local v4, "startMin":I
    iget-object v5, p0, Lcom/urbanairship/push/PushManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v6, "com.urbanairship.push.QuietTime.END_HOUR"

    invoke-virtual {v5, v6, v10}, Lcom/urbanairship/PreferenceDataStore;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1057
    .local v0, "endHr":I
    iget-object v5, p0, Lcom/urbanairship/push/PushManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v6, "com.urbanairship.push.QuietTime.END_MINUTE"

    invoke-virtual {v5, v6, v10}, Lcom/urbanairship/PreferenceDataStore;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1059
    .local v1, "endMin":I
    if-eq v3, v10, :cond_4b

    if-eq v4, v10, :cond_4b

    if-eq v0, v10, :cond_4b

    if-ne v1, v10, :cond_4c

    .line 1078
    :cond_4b
    :goto_4b
    return-void

    .line 1064
    :cond_4c
    const-string v5, "Migrating quiet time interval"

    invoke-static {v5}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 1066
    new-instance v5, Lcom/urbanairship/push/QuietTimeInterval$Builder;

    invoke-direct {v5}, Lcom/urbanairship/push/QuietTimeInterval$Builder;-><init>()V

    .line 1067
    invoke-virtual {v5, v3}, Lcom/urbanairship/push/QuietTimeInterval$Builder;->setStartHour(I)Lcom/urbanairship/push/QuietTimeInterval$Builder;

    move-result-object v5

    .line 1068
    invoke-virtual {v5, v4}, Lcom/urbanairship/push/QuietTimeInterval$Builder;->setStartMin(I)Lcom/urbanairship/push/QuietTimeInterval$Builder;

    move-result-object v5

    .line 1069
    invoke-virtual {v5, v0}, Lcom/urbanairship/push/QuietTimeInterval$Builder;->setEndHour(I)Lcom/urbanairship/push/QuietTimeInterval$Builder;

    move-result-object v5

    .line 1070
    invoke-virtual {v5, v1}, Lcom/urbanairship/push/QuietTimeInterval$Builder;->setEndMin(I)Lcom/urbanairship/push/QuietTimeInterval$Builder;

    move-result-object v5

    .line 1071
    invoke-virtual {v5}, Lcom/urbanairship/push/QuietTimeInterval$Builder;->build()Lcom/urbanairship/push/QuietTimeInterval;

    move-result-object v2

    .line 1073
    .local v2, "quietTimeInterval":Lcom/urbanairship/push/QuietTimeInterval;
    iget-object v5, p0, Lcom/urbanairship/push/PushManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v6, "com.urbanairship.push.QUIET_TIME_INTERVAL"

    invoke-virtual {v2}, Lcom/urbanairship/push/QuietTimeInterval;->toJsonValue()Lcom/urbanairship/json/JsonValue;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Lcom/urbanairship/json/JsonValue;)V

    .line 1074
    iget-object v5, p0, Lcom/urbanairship/push/PushManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v6, "com.urbanairship.push.QuietTime.START_HOUR"

    invoke-virtual {v5, v6}, Lcom/urbanairship/PreferenceDataStore;->remove(Ljava/lang/String;)V

    .line 1075
    iget-object v5, p0, Lcom/urbanairship/push/PushManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v6, "com.urbanairship.push.QuietTime.START_MINUTE"

    invoke-virtual {v5, v6}, Lcom/urbanairship/PreferenceDataStore;->remove(Ljava/lang/String;)V

    .line 1076
    iget-object v5, p0, Lcom/urbanairship/push/PushManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v6, "com.urbanairship.push.QuietTime.END_HOUR"

    invoke-virtual {v5, v6}, Lcom/urbanairship/PreferenceDataStore;->remove(Ljava/lang/String;)V

    .line 1077
    iget-object v5, p0, Lcom/urbanairship/push/PushManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v6, "com.urbanairship.push.QuietTime.END_MINUTE"

    invoke-virtual {v5, v6}, Lcom/urbanairship/PreferenceDataStore;->remove(Ljava/lang/String;)V

    goto :goto_4b
.end method

.method migrateRegistrationTokenSettings()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1084
    iget-object v1, p0, Lcom/urbanairship/push/PushManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v2, "com.urbanairship.push.REGISTRATION_TOKEN_MIGRATED_KEY"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/urbanairship/PreferenceDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1105
    :goto_c
    return-void

    .line 1088
    :cond_d
    const-string v1, "Migrating registration token preference"

    invoke-static {v1}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 1090
    const/4 v0, 0x0

    .line 1091
    .local v0, "token":Ljava/lang/String;
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getPlatformType()I

    move-result v1

    packed-switch v1, :pswitch_data_42

    .line 1100
    :goto_1e
    invoke-static {v0}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 1101
    invoke-virtual {p0, v0}, Lcom/urbanairship/push/PushManager;->setRegistrationToken(Ljava/lang/String;)V

    .line 1104
    :cond_27
    iget-object v1, p0, Lcom/urbanairship/push/PushManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v2, "com.urbanairship.push.REGISTRATION_TOKEN_MIGRATED_KEY"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Z)V

    goto :goto_c

    .line 1093
    :pswitch_30
    iget-object v1, p0, Lcom/urbanairship/push/PushManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v2, "com.urbanairship.push.GCM_INSTANCE_ID_TOKEN_KEY"

    invoke-virtual {v1, v2, v4}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1094
    goto :goto_1e

    .line 1096
    :pswitch_39
    iget-object v1, p0, Lcom/urbanairship/push/PushManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v2, "com.urbanairship.push.ADM_REGISTRATION_ID_KEY"

    invoke-virtual {v1, v2, v4}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    .line 1091
    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_39
        :pswitch_30
    .end packed-switch
.end method

.method protected onPerformJob(Lcom/urbanairship/UAirship;Lcom/urbanairship/job/Job;)I
    .registers 7
    .param p1, "airship"    # Lcom/urbanairship/UAirship;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "job"    # Lcom/urbanairship/job/Job;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 316
    invoke-virtual {p2}, Lcom/urbanairship/job/Job;->getAction()Ljava/lang/String;

    move-result-object v2

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_8e

    :cond_d
    :goto_d
    packed-switch v1, :pswitch_data_b0

    .line 336
    :goto_10
    return v0

    .line 316
    :sswitch_11
    const-string v3, "com.urbanairship.push.ACTION_UPDATE_TAG_GROUPS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    move v1, v0

    goto :goto_d

    :sswitch_1b
    const-string v3, "com.urbanairship.push.ACTION_APPLY_TAG_GROUP_CHANGES"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v1, 0x1

    goto :goto_d

    :sswitch_25
    const-string v3, "com.urbanairship.push.ACTION_ADM_REGISTRATION_FINISHED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v1, 0x2

    goto :goto_d

    :sswitch_2f
    const-string v3, "com.urbanairship.push.ACTION_START_REGISTRATION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v1, 0x3

    goto :goto_d

    :sswitch_39
    const-string v3, "com.urbanairship.push.ACTION_UPDATE_CHANNEL_REGISTRATION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v1, 0x4

    goto :goto_d

    :sswitch_43
    const-string v3, "com.urbanairship.push.ACTION_UPDATE_PUSH_REGISTRATION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v1, 0x5

    goto :goto_d

    :sswitch_4d
    const-string v3, "com.urbanairship.push.ACTION_RECEIVE_ADM_MESSAGE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v1, 0x6

    goto :goto_d

    :sswitch_57
    const-string v3, "com.urbanairship.push.ACTION_RECEIVE_GCM_MESSAGE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v1, 0x7

    goto :goto_d

    .line 323
    :pswitch_61
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->channelJobHandler:Lcom/urbanairship/push/ChannelJobHandler;

    if-nez v0, :cond_70

    .line 324
    new-instance v0, Lcom/urbanairship/push/ChannelJobHandler;

    iget-object v1, p0, Lcom/urbanairship/push/PushManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/urbanairship/push/PushManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    invoke-direct {v0, v1, p1, v2}, Lcom/urbanairship/push/ChannelJobHandler;-><init>(Landroid/content/Context;Lcom/urbanairship/UAirship;Lcom/urbanairship/PreferenceDataStore;)V

    iput-object v0, p0, Lcom/urbanairship/push/PushManager;->channelJobHandler:Lcom/urbanairship/push/ChannelJobHandler;

    .line 326
    :cond_70
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->channelJobHandler:Lcom/urbanairship/push/ChannelJobHandler;

    invoke-virtual {v0, p2}, Lcom/urbanairship/push/ChannelJobHandler;->performJob(Lcom/urbanairship/job/Job;)I

    move-result v0

    goto :goto_10

    .line 330
    :pswitch_77
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->pushJobHandler:Lcom/urbanairship/push/PushJobHandler;

    if-nez v0, :cond_86

    .line 331
    new-instance v0, Lcom/urbanairship/push/PushJobHandler;

    iget-object v1, p0, Lcom/urbanairship/push/PushManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/urbanairship/push/PushManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    invoke-direct {v0, v1, p1, v2}, Lcom/urbanairship/push/PushJobHandler;-><init>(Landroid/content/Context;Lcom/urbanairship/UAirship;Lcom/urbanairship/PreferenceDataStore;)V

    iput-object v0, p0, Lcom/urbanairship/push/PushManager;->pushJobHandler:Lcom/urbanairship/push/PushJobHandler;

    .line 333
    :cond_86
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->pushJobHandler:Lcom/urbanairship/push/PushJobHandler;

    invoke-virtual {v0, p2}, Lcom/urbanairship/push/PushJobHandler;->performJob(Lcom/urbanairship/job/Job;)I

    move-result v0

    goto :goto_10

    .line 316
    nop

    :sswitch_data_8e
    .sparse-switch
        -0x43dae3c5 -> :sswitch_57
        -0x3bd17948 -> :sswitch_2f
        -0x35b60096 -> :sswitch_43
        0x2af863e1 -> :sswitch_25
        0x33125cd4 -> :sswitch_4d
        0x4678022b -> :sswitch_1b
        0x539af969 -> :sswitch_39
        0x5a1b420d -> :sswitch_11
    .end sparse-switch

    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_77
        :pswitch_77
    .end packed-switch
.end method

.method public removeNotificationActionButtonGroup(Ljava/lang/String;)V
    .registers 3
    .param p1, "id"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 921
    const-string/jumbo v0, "ua_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 922
    const-string v0, "Unable to remove any reserved Urban Airship actions groups that begin with ua_"

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 927
    :goto_e
    return-void

    .line 926
    :cond_f
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->actionGroupMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e
.end method

.method public setAlias(Ljava/lang/String;)V
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 550
    if-eqz p1, :cond_6

    .line 551
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 554
    :cond_6
    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/urbanairship/util/UAStringUtil;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 555
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.ALIAS"

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->updateRegistration()V

    .line 558
    :cond_1a
    return-void
.end method

.method public setAliasAndTags(Ljava/lang/String;Ljava/util/Set;)V
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 452
    .local p2, "tags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p2, :cond_a

    .line 453
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Tags must be non-null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 459
    :cond_a
    const/4 v0, 0x0

    .line 461
    .local v0, "updateServer":Z
    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/urbanairship/util/UAStringUtil;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 462
    invoke-virtual {p0, p1}, Lcom/urbanairship/push/PushManager;->setAlias(Ljava/lang/String;)V

    .line 463
    const/4 v0, 0x1

    .line 466
    :cond_19
    invoke-direct {p0, p2}, Lcom/urbanairship/push/PushManager;->storeTags(Ljava/util/Set;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 467
    const/4 v0, 0x1

    .line 470
    :cond_20
    if-eqz v0, :cond_25

    .line 471
    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->updateRegistration()V

    .line 473
    :cond_25
    return-void
.end method

.method setChannel(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "channelLocation"    # Ljava/lang/String;

    .prologue
    .line 967
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.CHANNEL_ID"

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.CHANNEL_LOCATION"

    invoke-virtual {v0, v1, p2}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    return-void
.end method

.method public setChannelTagRegistrationEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 672
    iput-boolean p1, p0, Lcom/urbanairship/push/PushManager;->channelTagRegistrationEnabled:Z

    .line 673
    return-void
.end method

.method setLastReceivedMetadata(Ljava/lang/String;)V
    .registers 4
    .param p1, "sendMetadata"    # Ljava/lang/String;

    .prologue
    .line 808
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.LAST_RECEIVED_METADATA"

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    return-void
.end method

.method public setNotificationFactory(Lcom/urbanairship/push/notifications/NotificationFactory;)V
    .registers 2
    .param p1, "factory"    # Lcom/urbanairship/push/notifications/NotificationFactory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 417
    iput-object p1, p0, Lcom/urbanairship/push/PushManager;->notificationFactory:Lcom/urbanairship/push/notifications/NotificationFactory;

    .line 418
    return-void
.end method

.method public setPushEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 362
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.PUSH_ENABLED"

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Z)V

    .line 363
    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->updateRegistration()V

    .line 364
    return-void
.end method

.method public setPushTokenRegistrationEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 695
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.PUSH_TOKEN_REGISTRATION_ENABLED"

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Z)V

    .line 696
    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->updateRegistration()V

    .line 697
    return-void
.end method

.method public setQuietTimeEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 750
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.QUIET_TIME_ENABLED"

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Z)V

    .line 751
    return-void
.end method

.method public setQuietTimeInterval(Ljava/util/Date;Ljava/util/Date;)V
    .registers 7
    .param p1, "startTime"    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "endTime"    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 818
    new-instance v1, Lcom/urbanairship/push/QuietTimeInterval$Builder;

    invoke-direct {v1}, Lcom/urbanairship/push/QuietTimeInterval$Builder;-><init>()V

    .line 819
    invoke-virtual {v1, p1, p2}, Lcom/urbanairship/push/QuietTimeInterval$Builder;->setQuietTimeInterval(Ljava/util/Date;Ljava/util/Date;)Lcom/urbanairship/push/QuietTimeInterval$Builder;

    move-result-object v1

    .line 820
    invoke-virtual {v1}, Lcom/urbanairship/push/QuietTimeInterval$Builder;->build()Lcom/urbanairship/push/QuietTimeInterval;

    move-result-object v0

    .line 821
    .local v0, "quietTimeInterval":Lcom/urbanairship/push/QuietTimeInterval;
    iget-object v1, p0, Lcom/urbanairship/push/PushManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v2, "com.urbanairship.push.QUIET_TIME_INTERVAL"

    invoke-virtual {v0}, Lcom/urbanairship/push/QuietTimeInterval;->toJsonValue()Lcom/urbanairship/json/JsonValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Lcom/urbanairship/json/JsonValue;)V

    .line 822
    return-void
.end method

.method setRegistrationToken(Ljava/lang/String;)V
    .registers 4
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 988
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.REGISTRATION_TOKEN_KEY"

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    return-void
.end method

.method public setSoundEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 714
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.SOUND_ENABLED"

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Z)V

    .line 715
    return-void
.end method

.method public setTags(Ljava/util/Set;)V
    .registers 4
    .param p1    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 579
    .local p1, "tags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p1, :cond_a

    .line 580
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tags must be non-null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 583
    :cond_a
    invoke-direct {p0, p1}, Lcom/urbanairship/push/PushManager;->storeTags(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 584
    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->updateRegistration()V

    .line 586
    :cond_13
    return-void
.end method

.method public setUserNotificationsEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 388
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.USER_NOTIFICATIONS_ENABLED"

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Z)V

    .line 389
    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->updateRegistration()V

    .line 390
    return-void
.end method

.method public setVibrateEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 732
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.VIBRATE_ENABLED"

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Z)V

    .line 733
    return-void
.end method

.method startUpdateTagsService()V
    .registers 4

    .prologue
    .line 975
    const-string v1, "com.urbanairship.push.ACTION_UPDATE_TAG_GROUPS"

    invoke-static {v1}, Lcom/urbanairship/job/Job;->newBuilder(Ljava/lang/String;)Lcom/urbanairship/job/Job$Builder;

    move-result-object v1

    const-class v2, Lcom/urbanairship/push/PushManager;

    .line 976
    invoke-virtual {v1, v2}, Lcom/urbanairship/job/Job$Builder;->setAirshipComponent(Ljava/lang/Class;)Lcom/urbanairship/job/Job$Builder;

    move-result-object v1

    .line 977
    invoke-virtual {v1}, Lcom/urbanairship/job/Job$Builder;->build()Lcom/urbanairship/job/Job;

    move-result-object v0

    .line 979
    .local v0, "job":Lcom/urbanairship/job/Job;
    iget-object v1, p0, Lcom/urbanairship/push/PushManager;->jobDispatcher:Lcom/urbanairship/job/JobDispatcher;

    invoke-virtual {v1, v0}, Lcom/urbanairship/job/JobDispatcher;->dispatch(Lcom/urbanairship/job/Job;)V

    .line 980
    return-void
.end method

.method public updateRegistration()V
    .registers 4

    .prologue
    .line 529
    const-string v1, "com.urbanairship.push.ACTION_UPDATE_CHANNEL_REGISTRATION"

    invoke-static {v1}, Lcom/urbanairship/job/Job;->newBuilder(Ljava/lang/String;)Lcom/urbanairship/job/Job$Builder;

    move-result-object v1

    const-class v2, Lcom/urbanairship/push/PushManager;

    .line 530
    invoke-virtual {v1, v2}, Lcom/urbanairship/job/Job$Builder;->setAirshipComponent(Ljava/lang/Class;)Lcom/urbanairship/job/Job$Builder;

    move-result-object v1

    .line 531
    invoke-virtual {v1}, Lcom/urbanairship/job/Job$Builder;->build()Lcom/urbanairship/job/Job;

    move-result-object v0

    .line 533
    .local v0, "job":Lcom/urbanairship/job/Job;
    iget-object v1, p0, Lcom/urbanairship/push/PushManager;->jobDispatcher:Lcom/urbanairship/job/JobDispatcher;

    invoke-virtual {v1, v0}, Lcom/urbanairship/job/JobDispatcher;->dispatch(Lcom/urbanairship/job/Job;)V

    .line 534
    return-void
.end method
