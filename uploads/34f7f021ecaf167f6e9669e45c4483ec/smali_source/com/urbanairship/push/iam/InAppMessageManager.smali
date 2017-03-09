.class public Lcom/urbanairship/push/iam/InAppMessageManager;
.super Lcom/urbanairship/AirshipComponent;
.source "InAppMessageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/push/iam/InAppMessageManager$Listener;
    }
.end annotation


# static fields
.field private static final AUTO_DISPLAY_ENABLED_KEY:Ljava/lang/String; = "com.urbanairship.push.iam.AUTO_DISPLAY_ENABLED"

.field private static final DEFAULT_ACTIVITY_RESUME_DELAY_MS:J = 0xbb8L

.field public static final EXCLUDE_FROM_AUTO_SHOW:Ljava/lang/String; = "com.urbanairship.push.iam.EXCLUDE_FROM_AUTO_SHOW"

.field private static final IN_APP_TAG:Ljava/lang/String; = "com.urbanairship.in_app_fragment"

.field private static final KEY_PREFIX:Ljava/lang/String; = "com.urbanairship.push.iam."

.field private static final LAST_DISPLAYED_ID_KEY:Ljava/lang/String; = "com.urbanairship.push.iam.LAST_DISPLAYED_ID"

.field private static final PENDING_IN_APP_MESSAGE_KEY:Ljava/lang/String; = "com.urbanairship.push.iam.PENDING_IN_APP_MESSAGE"

.field private static listener:Lcom/urbanairship/ActivityMonitor$Listener;


# instance fields
.field private final activityMonitor:Lcom/urbanairship/ActivityMonitor;

.field private activityReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private autoDisplayDelayMs:J

.field private autoDisplayPendingMessage:Z

.field private currentFragment:Lcom/urbanairship/push/iam/InAppMessageFragment;

.field private currentMessage:Lcom/urbanairship/push/iam/InAppMessage;

.field private final dataStore:Lcom/urbanairship/PreferenceDataStore;

.field private displayAsap:Z

.field private final displayRunnable:Ljava/lang/Runnable;

.field private fragmentFactory:Lcom/urbanairship/push/iam/InAppMessageFragmentFactory;

.field private final fragmentListener:Lcom/urbanairship/push/iam/InAppMessageFragment$Listener;

.field private final handler:Landroid/os/Handler;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/push/iam/InAppMessageManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingMessageLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/urbanairship/PreferenceDataStore;Lcom/urbanairship/ActivityMonitor;)V
    .registers 5
    .param p1, "dataStore"    # Lcom/urbanairship/PreferenceDataStore;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "activityMonitor"    # Lcom/urbanairship/ActivityMonitor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/urbanairship/AirshipComponent;-><init>()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->listeners:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->pendingMessageLock:Ljava/lang/Object;

    .line 91
    new-instance v0, Lcom/urbanairship/push/iam/InAppMessageManager$1;

    invoke-direct {v0, p0}, Lcom/urbanairship/push/iam/InAppMessageManager$1;-><init>(Lcom/urbanairship/push/iam/InAppMessageManager;)V

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->displayRunnable:Ljava/lang/Runnable;

    .line 576
    new-instance v0, Lcom/urbanairship/push/iam/InAppMessageManager$5;

    invoke-direct {v0, p0}, Lcom/urbanairship/push/iam/InAppMessageManager$5;-><init>(Lcom/urbanairship/push/iam/InAppMessageManager;)V

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->fragmentListener:Lcom/urbanairship/push/iam/InAppMessageFragment$Listener;

    .line 112
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->dataStore:Lcom/urbanairship/PreferenceDataStore;

    .line 113
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->autoDisplayDelayMs:J

    .line 114
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->handler:Landroid/os/Handler;

    .line 115
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/InAppMessageManager;->isDisplayAsapEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->autoDisplayPendingMessage:Z

    .line 116
    iput-object p2, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->activityMonitor:Lcom/urbanairship/ActivityMonitor;

    .line 118
    new-instance v0, Lcom/urbanairship/push/iam/InAppMessageManager$2;

    invoke-direct {v0, p0}, Lcom/urbanairship/push/iam/InAppMessageManager$2;-><init>(Lcom/urbanairship/push/iam/InAppMessageManager;)V

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->fragmentFactory:Lcom/urbanairship/push/iam/InAppMessageFragmentFactory;

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/push/iam/InAppMessageManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessageManager;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->autoDisplayPendingMessage:Z

    return v0
.end method

.method static synthetic access$002(Lcom/urbanairship/push/iam/InAppMessageManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessageManager;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->autoDisplayPendingMessage:Z

    return p1
.end method

.method static synthetic access$100(Lcom/urbanairship/push/iam/InAppMessageManager;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessageManager;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/urbanairship/push/iam/InAppMessageManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/urbanairship/push/iam/InAppMessageManager;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessageManager;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->listeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/urbanairship/push/iam/InAppMessageManager;)Lcom/urbanairship/push/iam/InAppMessageFragment;
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessageManager;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentFragment:Lcom/urbanairship/push/iam/InAppMessageFragment;

    return-object v0
.end method

.method static synthetic access$302(Lcom/urbanairship/push/iam/InAppMessageManager;Lcom/urbanairship/push/iam/InAppMessageFragment;)Lcom/urbanairship/push/iam/InAppMessageFragment;
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessageManager;
    .param p1, "x1"    # Lcom/urbanairship/push/iam/InAppMessageFragment;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentFragment:Lcom/urbanairship/push/iam/InAppMessageFragment;

    return-object p1
.end method

.method static synthetic access$400(Lcom/urbanairship/push/iam/InAppMessageManager;)Lcom/urbanairship/push/iam/InAppMessage;
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessageManager;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentMessage:Lcom/urbanairship/push/iam/InAppMessage;

    return-object v0
.end method

.method static synthetic access$402(Lcom/urbanairship/push/iam/InAppMessageManager;Lcom/urbanairship/push/iam/InAppMessage;)Lcom/urbanairship/push/iam/InAppMessage;
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessageManager;
    .param p1, "x1"    # Lcom/urbanairship/push/iam/InAppMessage;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentMessage:Lcom/urbanairship/push/iam/InAppMessage;

    return-object p1
.end method

.method static synthetic access$500(Lcom/urbanairship/push/iam/InAppMessageManager;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessageManager;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->pendingMessageLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/urbanairship/push/iam/InAppMessageManager;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessageManager;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->displayRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/urbanairship/push/iam/InAppMessageManager;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessageManager;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/urbanairship/push/iam/InAppMessageManager;)J
    .registers 3
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessageManager;

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->autoDisplayDelayMs:J

    return-wide v0
.end method

.method private getCurrentActivity()Landroid/app/Activity;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 517
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->activityReference:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_5
.end method


# virtual methods
.method public addListener(Lcom/urbanairship/push/iam/InAppMessageManager$Listener;)V
    .registers 4
    .param p1, "listener"    # Lcom/urbanairship/push/iam/InAppMessageManager$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 474
    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 475
    :try_start_3
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    monitor-exit v1

    .line 477
    return-void

    .line 476
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public getAutoDisplayDelay()J
    .registers 3

    .prologue
    .line 182
    iget-wide v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->autoDisplayDelayMs:J

    return-wide v0
.end method

.method public getCurrentMessage()Lcom/urbanairship/push/iam/InAppMessage;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 305
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentMessage:Lcom/urbanairship/push/iam/InAppMessage;

    return-object v0
.end method

.method public getFragmentFactory()Lcom/urbanairship/push/iam/InAppMessageFragmentFactory;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 507
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->fragmentFactory:Lcom/urbanairship/push/iam/InAppMessageFragmentFactory;

    return-object v0
.end method

.method public getPendingMessage()Lcom/urbanairship/push/iam/InAppMessage;
    .registers 8
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 282
    iget-object v3, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->pendingMessageLock:Ljava/lang/Object;

    monitor-enter v3

    .line 283
    :try_start_4
    iget-object v4, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->dataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v5, "com.urbanairship.push.iam.PENDING_IN_APP_MESSAGE"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_32

    move-result-object v1

    .line 284
    .local v1, "payload":Ljava/lang/String;
    if-eqz v1, :cond_30

    .line 286
    :try_start_f
    invoke-static {v1}, Lcom/urbanairship/push/iam/InAppMessage;->parseJson(Ljava/lang/String;)Lcom/urbanairship/push/iam/InAppMessage;
    :try_end_12
    .catch Lcom/urbanairship/json/JsonException; {:try_start_f .. :try_end_12} :catch_15
    .catchall {:try_start_f .. :try_end_12} :catchall_32

    move-result-object v2

    :try_start_13
    monitor-exit v3

    .line 293
    :goto_14
    return-object v2

    .line 287
    :catch_15
    move-exception v0

    .line 288
    .local v0, "e":Lcom/urbanairship/json/JsonException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InAppMessageManager - Failed to read pending in-app message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 289
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/urbanairship/push/iam/InAppMessageManager;->setPendingMessage(Lcom/urbanairship/push/iam/InAppMessage;)V

    .line 293
    .end local v0    # "e":Lcom/urbanairship/json/JsonException;
    :cond_30
    monitor-exit v3

    goto :goto_14

    .line 294
    .end local v1    # "payload":Ljava/lang/String;
    :catchall_32
    move-exception v2

    monitor-exit v3
    :try_end_34
    .catchall {:try_start_13 .. :try_end_34} :catchall_32

    throw v2
.end method

.method protected init()V
    .registers 5

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/InAppMessageManager;->getPendingMessage()Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v0

    .line 129
    .local v0, "pending":Lcom/urbanairship/push/iam/InAppMessage;
    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/urbanairship/push/iam/InAppMessage;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 130
    const-string v2, "InAppMessageManager - pending in-app message expired."

    invoke-static {v2}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 131
    invoke-static {v0}, Lcom/urbanairship/push/iam/ResolutionEvent;->createExpiredResolutionEvent(Lcom/urbanairship/push/iam/InAppMessage;)Lcom/urbanairship/push/iam/ResolutionEvent;

    move-result-object v1

    .line 132
    .local v1, "resolutionEvent":Lcom/urbanairship/push/iam/ResolutionEvent;
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/urbanairship/analytics/Analytics;->addEvent(Lcom/urbanairship/analytics/Event;)V

    .line 133
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/urbanairship/push/iam/InAppMessageManager;->setPendingMessage(Lcom/urbanairship/push/iam/InAppMessage;)V

    .line 136
    .end local v1    # "resolutionEvent":Lcom/urbanairship/push/iam/ResolutionEvent;
    :cond_24
    new-instance v2, Lcom/urbanairship/push/iam/InAppMessageManager$3;

    invoke-direct {v2, p0}, Lcom/urbanairship/push/iam/InAppMessageManager$3;-><init>(Lcom/urbanairship/push/iam/InAppMessageManager;)V

    sput-object v2, Lcom/urbanairship/push/iam/InAppMessageManager;->listener:Lcom/urbanairship/ActivityMonitor$Listener;

    .line 153
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->activityMonitor:Lcom/urbanairship/ActivityMonitor;

    sget-object v3, Lcom/urbanairship/push/iam/InAppMessageManager;->listener:Lcom/urbanairship/ActivityMonitor$Listener;

    invoke-virtual {v2, v3}, Lcom/urbanairship/ActivityMonitor;->addListener(Lcom/urbanairship/ActivityMonitor$Listener;)V

    .line 154
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->activityMonitor:Lcom/urbanairship/ActivityMonitor;

    invoke-virtual {v2}, Lcom/urbanairship/ActivityMonitor;->isAppForegrounded()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 155
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/InAppMessageManager;->onForeground()V

    .line 157
    :cond_3d
    return-void
.end method

.method public isAutoDisplayEnabled()Z
    .registers 4

    .prologue
    .line 228
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->dataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.iam.AUTO_DISPLAY_ENABLED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDisplayAsapEnabled()Z
    .registers 2

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->displayAsap:Z

    return v0
.end method

.method onActivityPaused(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InAppMessageManager - Activity paused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 550
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->activityReference:Ljava/lang/ref/WeakReference;

    .line 551
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->displayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 552
    return-void
.end method

.method onActivityResumed(Landroid/app/Activity;)V
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 560
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InAppMessageManager - Activity resumed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 562
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/util/ManifestUtils;->getActivityInfo(Ljava/lang/Class;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 563
    .local v0, "info":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_35

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_35

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.urbanairship.push.iam.EXCLUDE_FROM_AUTO_SHOW"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 564
    const-string v1, "InAppMessageManager - Activity contains metadata to exclude it from auto showing an in-app message"

    invoke-static {v1}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 574
    :cond_34
    :goto_34
    return-void

    .line 568
    :cond_35
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->activityReference:Ljava/lang/ref/WeakReference;

    .line 569
    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->displayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 571
    iget-boolean v1, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->autoDisplayPendingMessage:Z

    if-eqz v1, :cond_34

    .line 572
    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->displayRunnable:Ljava/lang/Runnable;

    iget-wide v4, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->autoDisplayDelayMs:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_34
.end method

.method onForeground()V
    .registers 7

    .prologue
    .line 526
    const-string v2, "InAppMessageManager - App foregrounded."

    invoke-static {v2}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 527
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/InAppMessageManager;->getPendingMessage()Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v0

    .line 528
    .local v0, "pending":Lcom/urbanairship/push/iam/InAppMessage;
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentMessage:Lcom/urbanairship/push/iam/InAppMessage;

    if-nez v2, :cond_f

    if-nez v0, :cond_19

    :cond_f
    if-eqz v0, :cond_44

    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentMessage:Lcom/urbanairship/push/iam/InAppMessage;

    invoke-virtual {v0, v2}, Lcom/urbanairship/push/iam/InAppMessage;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    .line 530
    :cond_19
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentMessage:Lcom/urbanairship/push/iam/InAppMessage;

    if-eqz v2, :cond_2e

    .line 532
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentMessage:Lcom/urbanairship/push/iam/InAppMessage;

    invoke-static {v2, v0}, Lcom/urbanairship/push/iam/ResolutionEvent;->createReplacedResolutionEvent(Lcom/urbanairship/push/iam/InAppMessage;Lcom/urbanairship/push/iam/InAppMessage;)Lcom/urbanairship/push/iam/ResolutionEvent;

    move-result-object v1

    .line 533
    .local v1, "resolutionEvent":Lcom/urbanairship/push/iam/ResolutionEvent;
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/urbanairship/analytics/Analytics;->addEvent(Lcom/urbanairship/analytics/Event;)V

    .line 536
    .end local v1    # "resolutionEvent":Lcom/urbanairship/push/iam/ResolutionEvent;
    :cond_2e
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentMessage:Lcom/urbanairship/push/iam/InAppMessage;

    .line 537
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->autoDisplayPendingMessage:Z

    .line 538
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->displayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 539
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->displayRunnable:Ljava/lang/Runnable;

    iget-wide v4, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->autoDisplayDelayMs:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 541
    :cond_44
    return-void
.end method

.method public removeListener(Lcom/urbanairship/push/iam/InAppMessageManager$Listener;)V
    .registers 4
    .param p1, "listener"    # Lcom/urbanairship/push/iam/InAppMessageManager$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 486
    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 487
    :try_start_3
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 488
    monitor-exit v1

    .line 489
    return-void

    .line 488
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public setAutoDisplayDelay(J)V
    .registers 4
    .param p1, "milliseconds"    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x7fffffffffffffffL
        .end annotation
    .end param

    .prologue
    .line 173
    iput-wide p1, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->autoDisplayDelayMs:J

    .line 174
    return-void
.end method

.method public setAutoDisplayEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 218
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->dataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.iam.AUTO_DISPLAY_ENABLED"

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Z)V

    .line 219
    return-void
.end method

.method public setDisplayAsapEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 194
    iput-boolean p1, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->displayAsap:Z

    .line 196
    if-eqz p1, :cond_7

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->autoDisplayPendingMessage:Z

    .line 199
    :cond_7
    return-void
.end method

.method public setFragmentFactory(Lcom/urbanairship/push/iam/InAppMessageFragmentFactory;)V
    .registers 2
    .param p1, "factory"    # Lcom/urbanairship/push/iam/InAppMessageFragmentFactory;

    .prologue
    .line 498
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->fragmentFactory:Lcom/urbanairship/push/iam/InAppMessageFragmentFactory;

    .line 499
    return-void
.end method

.method public setPendingMessage(Lcom/urbanairship/push/iam/InAppMessage;)V
    .registers 7
    .param p1, "message"    # Lcom/urbanairship/push/iam/InAppMessage;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 237
    iget-object v3, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->pendingMessageLock:Ljava/lang/Object;

    monitor-enter v3

    .line 238
    if-nez p1, :cond_e

    .line 239
    :try_start_5
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->dataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v4, "com.urbanairship.push.iam.PENDING_IN_APP_MESSAGE"

    invoke-virtual {v2, v4}, Lcom/urbanairship/PreferenceDataStore;->remove(Ljava/lang/String;)V

    .line 272
    :cond_c
    :goto_c
    monitor-exit v3

    .line 273
    :goto_d
    return-void

    .line 241
    :cond_e
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/InAppMessageManager;->getPendingMessage()Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v0

    .line 242
    .local v0, "previous":Lcom/urbanairship/push/iam/InAppMessage;
    invoke-virtual {p1, v0}, Lcom/urbanairship/push/iam/InAppMessage;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 243
    monitor-exit v3

    goto :goto_d

    .line 272
    .end local v0    # "previous":Lcom/urbanairship/push/iam/InAppMessage;
    :catchall_1a
    move-exception v2

    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1a

    throw v2

    .line 247
    .restart local v0    # "previous":Lcom/urbanairship/push/iam/InAppMessage;
    :cond_1d
    :try_start_1d
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/urbanairship/push/iam/InAppMessageManager$4;

    invoke-direct {v4, p0, p1}, Lcom/urbanairship/push/iam/InAppMessageManager$4;-><init>(Lcom/urbanairship/push/iam/InAppMessageManager;Lcom/urbanairship/push/iam/InAppMessage;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 258
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->dataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v4, "com.urbanairship.push.iam.PENDING_IN_APP_MESSAGE"

    invoke-virtual {v2, v4, p1}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Lcom/urbanairship/json/JsonSerializable;)V

    .line 260
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentMessage:Lcom/urbanairship/push/iam/InAppMessage;

    if-nez v2, :cond_48

    if-eqz v0, :cond_48

    .line 261
    const-string v2, "InAppMessageManager - pending in-app message replaced."

    invoke-static {v2}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 262
    invoke-static {v0, p1}, Lcom/urbanairship/push/iam/ResolutionEvent;->createReplacedResolutionEvent(Lcom/urbanairship/push/iam/InAppMessage;Lcom/urbanairship/push/iam/InAppMessage;)Lcom/urbanairship/push/iam/ResolutionEvent;

    move-result-object v1

    .line 263
    .local v1, "resolutionEvent":Lcom/urbanairship/push/iam/ResolutionEvent;
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/urbanairship/analytics/Analytics;->addEvent(Lcom/urbanairship/analytics/Event;)V

    .line 266
    .end local v1    # "resolutionEvent":Lcom/urbanairship/push/iam/ResolutionEvent;
    :cond_48
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/InAppMessageManager;->isDisplayAsapEnabled()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-direct {p0}, Lcom/urbanairship/push/iam/InAppMessageManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 267
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->autoDisplayPendingMessage:Z

    .line 268
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->displayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 269
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->displayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_65
    .catchall {:try_start_1d .. :try_end_65} :catchall_1a

    goto :goto_c
.end method

.method public showPendingMessage(Landroid/app/Activity;)Z
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 316
    const v0, 0x1020002

    invoke-virtual {p0, p1, v0}, Lcom/urbanairship/push/iam/InAppMessageManager;->showPendingMessage(Landroid/app/Activity;I)Z

    move-result v0

    return v0
.end method

.method public showPendingMessage(Landroid/app/Activity;I)Z
    .registers 9
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "containerId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 329
    iget-object v4, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->pendingMessageLock:Ljava/lang/Object;

    monitor-enter v4

    .line 330
    :try_start_3
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/InAppMessageManager;->getPendingMessage()Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v2

    .line 333
    .local v2, "pending":Lcom/urbanairship/push/iam/InAppMessage;
    if-eqz p1, :cond_b

    if-nez v2, :cond_e

    .line 334
    :cond_b
    const/4 v3, 0x0

    monitor-exit v4

    .line 346
    :goto_d
    return v3

    .line 338
    :cond_e
    invoke-virtual {v2}, Lcom/urbanairship/push/iam/InAppMessage;->getPosition()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_22

    .line 339
    sget v0, Lcom/urbanairship/R$animator;->ua_iam_slide_in_top:I

    .line 340
    .local v0, "enter":I
    sget v1, Lcom/urbanairship/R$animator;->ua_iam_slide_out_top:I

    .line 346
    .local v1, "exit":I
    :goto_19
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/urbanairship/push/iam/InAppMessageManager;->showPendingMessage(Landroid/app/Activity;III)Z

    move-result v3

    monitor-exit v4

    goto :goto_d

    .line 347
    .end local v0    # "enter":I
    .end local v1    # "exit":I
    .end local v2    # "pending":Lcom/urbanairship/push/iam/InAppMessage;
    :catchall_1f
    move-exception v3

    monitor-exit v4
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v3

    .line 342
    .restart local v2    # "pending":Lcom/urbanairship/push/iam/InAppMessage;
    :cond_22
    :try_start_22
    sget v0, Lcom/urbanairship/R$animator;->ua_iam_slide_in_bottom:I

    .line 343
    .restart local v0    # "enter":I
    sget v1, Lcom/urbanairship/R$animator;->ua_iam_slide_out_bottom:I
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_1f

    .restart local v1    # "exit":I
    goto :goto_19
.end method

.method public showPendingMessage(Landroid/app/Activity;III)Z
    .registers 16
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "containerId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p3, "enterAnimation"    # I
        .annotation build Landroid/support/annotation/AnimatorRes;
        .end annotation
    .end param
    .param p4, "exitAnimation"    # I
        .annotation build Landroid/support/annotation/AnimatorRes;
        .end annotation
    .end param

    .prologue
    .line 369
    iget-object v8, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->pendingMessageLock:Ljava/lang/Object;

    monitor-enter v8

    .line 370
    :try_start_3
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/InAppMessageManager;->getPendingMessage()Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v5

    .line 372
    .local v5, "pending":Lcom/urbanairship/push/iam/InAppMessage;
    if-eqz v5, :cond_2a

    invoke-virtual {v5}, Lcom/urbanairship/push/iam/InAppMessage;->isExpired()Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 373
    const-string v7, "InAppMessageManager - Unable to display pending in-app message. Message has expired."

    invoke-static {v7}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 374
    invoke-static {v5}, Lcom/urbanairship/push/iam/ResolutionEvent;->createExpiredResolutionEvent(Lcom/urbanairship/push/iam/InAppMessage;)Lcom/urbanairship/push/iam/ResolutionEvent;

    move-result-object v6

    .line 375
    .local v6, "resolutionEvent":Lcom/urbanairship/push/iam/ResolutionEvent;
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v7

    invoke-virtual {v7}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/urbanairship/analytics/Analytics;->addEvent(Lcom/urbanairship/analytics/Event;)V

    .line 376
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/urbanairship/push/iam/InAppMessageManager;->setPendingMessage(Lcom/urbanairship/push/iam/InAppMessage;)V

    .line 377
    const/4 v7, 0x0

    monitor-exit v8

    .line 462
    .end local v6    # "resolutionEvent":Lcom/urbanairship/push/iam/ResolutionEvent;
    :goto_29
    return v7

    .line 379
    :cond_2a
    monitor-exit v8

    .line 382
    if-eqz p1, :cond_2f

    if-nez v5, :cond_34

    .line 383
    :cond_2f
    const/4 v7, 0x0

    goto :goto_29

    .line 379
    .end local v5    # "pending":Lcom/urbanairship/push/iam/InAppMessage;
    :catchall_31
    move-exception v7

    monitor-exit v8
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v7

    .line 386
    .restart local v5    # "pending":Lcom/urbanairship/push/iam/InAppMessage;
    :cond_34
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v7

    if-eqz v7, :cond_41

    .line 387
    const-string v7, "InAppMessageManager - Unable to display in-app messages for an activity that is finishing."

    invoke-static {v7}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 388
    const/4 v7, 0x0

    goto :goto_29

    .line 391
    :cond_41
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v8

    if-eq v7, v8, :cond_52

    .line 392
    const-string v7, "InAppMessageManager - Show message must be called on the main thread."

    invoke-static {v7}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 393
    const/4 v7, 0x0

    goto :goto_29

    .line 396
    :cond_52
    iget-object v7, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentFragment:Lcom/urbanairship/push/iam/InAppMessageFragment;

    if-eqz v7, :cond_5d

    .line 397
    const-string v7, "InAppMessageManager - An in-app message is already displayed."

    invoke-static {v7}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 398
    const/4 v7, 0x0

    goto :goto_29

    .line 401
    :cond_5d
    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_7b

    .line 402
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "InAppMessageManager - Unable to display in-app message. Unable to find container: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 403
    const/4 v7, 0x0

    goto :goto_29

    .line 407
    :cond_7b
    invoke-virtual {v5}, Lcom/urbanairship/push/iam/InAppMessage;->getId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->dataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v9, "com.urbanairship.push.iam.LAST_DISPLAYED_ID"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/urbanairship/util/UAStringUtil;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_c5

    .line 408
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "InAppMessageManager - Displaying pending message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for first time."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 409
    new-instance v1, Lcom/urbanairship/push/iam/DisplayEvent;

    invoke-direct {v1, v5}, Lcom/urbanairship/push/iam/DisplayEvent;-><init>(Lcom/urbanairship/push/iam/InAppMessage;)V

    .line 410
    .local v1, "displayEvent":Lcom/urbanairship/push/iam/DisplayEvent;
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v7

    invoke-virtual {v7}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/urbanairship/analytics/Analytics;->addEvent(Lcom/urbanairship/analytics/Event;)V

    .line 411
    iget-object v7, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->dataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v8, "com.urbanairship.push.iam.LAST_DISPLAYED_ID"

    invoke-virtual {v5}, Lcom/urbanairship/push/iam/InAppMessage;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    .end local v1    # "displayEvent":Lcom/urbanairship/push/iam/DisplayEvent;
    :cond_c5
    iget-object v7, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentMessage:Lcom/urbanairship/push/iam/InAppMessage;

    if-eqz v7, :cond_e2

    iget-object v7, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentMessage:Lcom/urbanairship/push/iam/InAppMessage;

    invoke-virtual {v7, v5}, Lcom/urbanairship/push/iam/InAppMessage;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e2

    .line 416
    iget-object v7, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentMessage:Lcom/urbanairship/push/iam/InAppMessage;

    invoke-static {v7, v5}, Lcom/urbanairship/push/iam/ResolutionEvent;->createReplacedResolutionEvent(Lcom/urbanairship/push/iam/InAppMessage;Lcom/urbanairship/push/iam/InAppMessage;)Lcom/urbanairship/push/iam/ResolutionEvent;

    move-result-object v6

    .line 417
    .restart local v6    # "resolutionEvent":Lcom/urbanairship/push/iam/ResolutionEvent;
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v7

    invoke-virtual {v7}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/urbanairship/analytics/Analytics;->addEvent(Lcom/urbanairship/analytics/Event;)V

    .line 420
    .end local v6    # "resolutionEvent":Lcom/urbanairship/push/iam/ResolutionEvent;
    :cond_e2
    const-string v7, "InAppMessageManager - Displaying in-app message."

    invoke-static {v7}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 423
    :try_start_e7
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/InAppMessageManager;->getFragmentFactory()Lcom/urbanairship/push/iam/InAppMessageFragmentFactory;

    move-result-object v3

    .line 424
    .local v3, "factory":Lcom/urbanairship/push/iam/InAppMessageFragmentFactory;
    if-nez v3, :cond_f5

    .line 425
    const-string v7, "InAppMessageManager - InAppMessageFragmentFactory is null, unable to display an in-app message."

    invoke-static {v7}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 426
    const/4 v7, 0x0

    goto/16 :goto_29

    .line 429
    :cond_f5
    invoke-virtual {v3, v5}, Lcom/urbanairship/push/iam/InAppMessageFragmentFactory;->createFragment(Lcom/urbanairship/push/iam/InAppMessage;)Lcom/urbanairship/push/iam/InAppMessageFragment;

    move-result-object v7

    iput-object v7, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentFragment:Lcom/urbanairship/push/iam/InAppMessageFragment;

    .line 430
    iget-object v7, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentFragment:Lcom/urbanairship/push/iam/InAppMessageFragment;

    if-nez v7, :cond_107

    .line 431
    const-string v7, "InAppMessageManager - InAppMessageFragmentFactory returned a null fragment, unable to display an in-app message."

    invoke-static {v7}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 432
    const/4 v7, 0x0

    goto/16 :goto_29

    .line 437
    :cond_107
    invoke-static {v5, p4}, Lcom/urbanairship/push/iam/InAppMessageFragment;->createArgs(Lcom/urbanairship/push/iam/InAppMessage;I)Landroid/os/Bundle;

    move-result-object v0

    .line 438
    .local v0, "args":Landroid/os/Bundle;
    iget-object v7, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentFragment:Lcom/urbanairship/push/iam/InAppMessageFragment;

    invoke-virtual {v7}, Lcom/urbanairship/push/iam/InAppMessageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_11c

    .line 439
    iget-object v7, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentFragment:Lcom/urbanairship/push/iam/InAppMessageFragment;

    invoke-virtual {v7}, Lcom/urbanairship/push/iam/InAppMessageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 442
    :cond_11c
    iget-object v7, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentFragment:Lcom/urbanairship/push/iam/InAppMessageFragment;

    invoke-virtual {v7, v0}, Lcom/urbanairship/push/iam/InAppMessageFragment;->setArguments(Landroid/os/Bundle;)V

    .line 444
    iget-object v7, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentFragment:Lcom/urbanairship/push/iam/InAppMessageFragment;

    iget-object v8, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->fragmentListener:Lcom/urbanairship/push/iam/InAppMessageFragment$Listener;

    invoke-virtual {v7, v8}, Lcom/urbanairship/push/iam/InAppMessageFragment;->addListener(Lcom/urbanairship/push/iam/InAppMessageFragment$Listener;)V

    .line 445
    iget-object v7, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentFragment:Lcom/urbanairship/push/iam/InAppMessageFragment;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/urbanairship/push/iam/InAppMessageFragment;->setDismissOnRecreate(Z)V

    .line 446
    iput-object v5, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentMessage:Lcom/urbanairship/push/iam/InAppMessage;

    .line 448
    iget-object v8, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->listeners:Ljava/util/List;

    monitor-enter v8
    :try_end_133
    .catch Ljava/lang/IllegalStateException; {:try_start_e7 .. :try_end_133} :catch_14e

    .line 449
    :try_start_133
    iget-object v7, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->listeners:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_139
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_157

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/urbanairship/push/iam/InAppMessageManager$Listener;

    .line 450
    .local v4, "listener":Lcom/urbanairship/push/iam/InAppMessageManager$Listener;
    iget-object v9, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentFragment:Lcom/urbanairship/push/iam/InAppMessageFragment;

    invoke-interface {v4, v9, v5}, Lcom/urbanairship/push/iam/InAppMessageManager$Listener;->onDisplay(Lcom/urbanairship/push/iam/InAppMessageFragment;Lcom/urbanairship/push/iam/InAppMessage;)V

    goto :goto_139

    .line 452
    .end local v4    # "listener":Lcom/urbanairship/push/iam/InAppMessageManager$Listener;
    :catchall_14b
    move-exception v7

    monitor-exit v8
    :try_end_14d
    .catchall {:try_start_133 .. :try_end_14d} :catchall_14b

    :try_start_14d
    throw v7
    :try_end_14e
    .catch Ljava/lang/IllegalStateException; {:try_start_14d .. :try_end_14e} :catch_14e

    .line 460
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v3    # "factory":Lcom/urbanairship/push/iam/InAppMessageFragmentFactory;
    :catch_14e
    move-exception v2

    .line 461
    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string v7, "InAppMessageManager - Failed to display in-app message."

    invoke-static {v7, v2}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 462
    const/4 v7, 0x0

    goto/16 :goto_29

    .line 452
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    .restart local v0    # "args":Landroid/os/Bundle;
    .restart local v3    # "factory":Lcom/urbanairship/push/iam/InAppMessageFragmentFactory;
    :cond_157
    :try_start_157
    monitor-exit v8
    :try_end_158
    .catchall {:try_start_157 .. :try_end_158} :catchall_14b

    .line 454
    :try_start_158
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v7

    const/4 v8, 0x0

    .line 455
    invoke-virtual {v7, p3, v8}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    move-result-object v7

    iget-object v8, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentFragment:Lcom/urbanairship/push/iam/InAppMessageFragment;

    const-string v9, "com.urbanairship.in_app_fragment"

    .line 456
    invoke-virtual {v7, p2, v8, v9}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v7

    .line 457
    invoke-virtual {v7}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_170
    .catch Ljava/lang/IllegalStateException; {:try_start_158 .. :try_end_170} :catch_14e

    .line 459
    const/4 v7, 0x1

    goto/16 :goto_29
.end method

.method protected tearDown()V
    .registers 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->activityMonitor:Lcom/urbanairship/ActivityMonitor;

    sget-object v1, Lcom/urbanairship/push/iam/InAppMessageManager;->listener:Lcom/urbanairship/ActivityMonitor$Listener;

    invoke-virtual {v0, v1}, Lcom/urbanairship/ActivityMonitor;->removeListener(Lcom/urbanairship/ActivityMonitor$Listener;)V

    .line 163
    const/4 v0, 0x0

    sput-object v0, Lcom/urbanairship/push/iam/InAppMessageManager;->listener:Lcom/urbanairship/ActivityMonitor$Listener;

    .line 164
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->displayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 165
    return-void
.end method
