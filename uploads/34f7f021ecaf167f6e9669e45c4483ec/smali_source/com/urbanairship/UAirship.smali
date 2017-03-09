.class public Lcom/urbanairship/UAirship;
.super Ljava/lang/Object;
.source "UAirship.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/UAirship$OnReadyCallback;,
        Lcom/urbanairship/UAirship$Platform;
    }
.end annotation


# static fields
.field public static final ACTION_AIRSHIP_READY:Ljava/lang/String; = "com.urbanairship.AIRSHIP_READY"

.field public static final AMAZON_PLATFORM:I = 0x1

.field public static final ANDROID_PLATFORM:I = 0x2

.field private static final LIBRARY_VERSION_KEY:Ljava/lang/String; = "com.urbanairship.application.device.LIBRARY_VERSION"

.field public static LOG_TAKE_OFF_STACKTRACE:Z = false

.field private static final PLATFORM_KEY:Ljava/lang/String; = "com.urbanairship.application.device.PLATFORM"

.field private static final airshipLock:Ljava/lang/Object;

.field static application:Landroid/app/Application;

.field static volatile isFlying:Z

.field static volatile isMainProcess:Z

.field static volatile isTakingOff:Z

.field private static final pendingAirshipRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/CancelableOperation;",
            ">;"
        }
    .end annotation
.end field

.field private static queuePendingAirshipRequests:Z

.field static sharedAirship:Lcom/urbanairship/UAirship;


# instance fields
.field actionRegistry:Lcom/urbanairship/actions/ActionRegistry;

.field airshipConfigOptions:Lcom/urbanairship/AirshipConfigOptions;

.field analytics:Lcom/urbanairship/analytics/Analytics;

.field applicationMetrics:Lcom/urbanairship/ApplicationMetrics;

.field automation:Lcom/urbanairship/automation/Automation;

.field channelCapture:Lcom/urbanairship/ChannelCapture;

.field components:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/AirshipComponent;",
            ">;"
        }
    .end annotation
.end field

.field inAppMessageManager:Lcom/urbanairship/push/iam/InAppMessageManager;

.field inbox:Lcom/urbanairship/richpush/RichPushInbox;

.field locationManager:Lcom/urbanairship/location/UALocationManager;

.field messageCenter:Lcom/urbanairship/messagecenter/MessageCenter;

.field namedUser:Lcom/urbanairship/push/NamedUser;

.field preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

.field pushManager:Lcom/urbanairship/push/PushManager;

.field whitelist:Lcom/urbanairship/js/Whitelist;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/urbanairship/UAirship;->airshipLock:Ljava/lang/Object;

    .line 75
    sput-boolean v1, Lcom/urbanairship/UAirship;->isFlying:Z

    .line 76
    sput-boolean v1, Lcom/urbanairship/UAirship;->isTakingOff:Z

    .line 77
    sput-boolean v1, Lcom/urbanairship/UAirship;->isMainProcess:Z

    .line 86
    sput-boolean v1, Lcom/urbanairship/UAirship;->LOG_TAKE_OFF_STACKTRACE:Z

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/urbanairship/UAirship;->pendingAirshipRequests:Ljava/util/List;

    .line 89
    const/4 v0, 0x1

    sput-boolean v0, Lcom/urbanairship/UAirship;->queuePendingAirshipRequests:Z

    return-void
.end method

.method constructor <init>(Lcom/urbanairship/AirshipConfigOptions;)V
    .registers 2
    .param p1, "airshipConfigOptions"    # Lcom/urbanairship/AirshipConfigOptions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/urbanairship/UAirship;->airshipConfigOptions:Lcom/urbanairship/AirshipConfigOptions;

    .line 115
    return-void
.end method

.method static synthetic access$000(Landroid/app/Application;Lcom/urbanairship/AirshipConfigOptions;Lcom/urbanairship/UAirship$OnReadyCallback;)V
    .registers 3
    .param p0, "x0"    # Landroid/app/Application;
    .param p1, "x1"    # Lcom/urbanairship/AirshipConfigOptions;
    .param p2, "x2"    # Lcom/urbanairship/UAirship$OnReadyCallback;

    .prologue
    .line 43
    invoke-static {p0, p1, p2}, Lcom/urbanairship/UAirship;->executeTakeOff(Landroid/app/Application;Lcom/urbanairship/AirshipConfigOptions;Lcom/urbanairship/UAirship$OnReadyCallback;)V

    return-void
.end method

.method private static executeTakeOff(Landroid/app/Application;Lcom/urbanairship/AirshipConfigOptions;Lcom/urbanairship/UAirship$OnReadyCallback;)V
    .registers 9
    .param p0, "application"    # Landroid/app/Application;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "options"    # Lcom/urbanairship/AirshipConfigOptions;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "readyCallback"    # Lcom/urbanairship/UAirship$OnReadyCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 335
    if-nez p1, :cond_13

    .line 336
    new-instance v2, Lcom/urbanairship/AirshipConfigOptions$Builder;

    invoke-direct {v2}, Lcom/urbanairship/AirshipConfigOptions$Builder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/urbanairship/AirshipConfigOptions$Builder;->applyDefaultProperties(Landroid/content/Context;)Lcom/urbanairship/AirshipConfigOptions$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/AirshipConfigOptions$Builder;->build()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object p1

    .line 340
    :cond_13
    invoke-virtual {p1}, Lcom/urbanairship/AirshipConfigOptions;->getLoggerLevel()I

    move-result v2

    sput v2, Lcom/urbanairship/Logger;->logLevel:I

    .line 341
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/urbanairship/UAirship;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - UALib"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/urbanairship/Logger;->TAG:Ljava/lang/String;

    .line 343
    const-string v2, "Airship taking off!"

    invoke-static {v2}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 344
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Airship log level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/urbanairship/Logger;->logLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UA Version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/urbanairship/UAirship;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / App key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/urbanairship/AirshipConfigOptions;->getAppKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Production = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p1, Lcom/urbanairship/AirshipConfigOptions;->inProduction:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 347
    new-instance v2, Lcom/urbanairship/UAirship;

    invoke-direct {v2, p1}, Lcom/urbanairship/UAirship;-><init>(Lcom/urbanairship/AirshipConfigOptions;)V

    sput-object v2, Lcom/urbanairship/UAirship;->sharedAirship:Lcom/urbanairship/UAirship;

    .line 349
    sget-object v3, Lcom/urbanairship/UAirship;->airshipLock:Ljava/lang/Object;

    monitor-enter v3

    .line 353
    const/4 v2, 0x1

    :try_start_8e
    sput-boolean v2, Lcom/urbanairship/UAirship;->isFlying:Z

    .line 354
    const/4 v2, 0x0

    sput-boolean v2, Lcom/urbanairship/UAirship;->isTakingOff:Z

    .line 357
    sget-object v2, Lcom/urbanairship/UAirship;->sharedAirship:Lcom/urbanairship/UAirship;

    invoke-direct {v2}, Lcom/urbanairship/UAirship;->init()V

    .line 360
    iget-boolean v2, p1, Lcom/urbanairship/AirshipConfigOptions;->inProduction:Z

    if-nez v2, :cond_9f

    .line 361
    invoke-static {}, Lcom/urbanairship/util/ManifestUtils;->validateManifest()V

    .line 364
    :cond_9f
    const-string v2, "Airship ready!"

    invoke-static {v2}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 367
    if-eqz p2, :cond_ab

    .line 368
    sget-object v2, Lcom/urbanairship/UAirship;->sharedAirship:Lcom/urbanairship/UAirship;

    invoke-interface {p2, v2}, Lcom/urbanairship/UAirship$OnReadyCallback;->onAirshipReady(Lcom/urbanairship/UAirship;)V

    .line 372
    :cond_ab
    sget-object v4, Lcom/urbanairship/UAirship;->pendingAirshipRequests:Ljava/util/List;

    monitor-enter v4
    :try_end_ae
    .catchall {:try_start_8e .. :try_end_ae} :catchall_ca

    .line 373
    const/4 v2, 0x0

    :try_start_af
    sput-boolean v2, Lcom/urbanairship/UAirship;->queuePendingAirshipRequests:Z

    .line 374
    sget-object v2, Lcom/urbanairship/UAirship;->pendingAirshipRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_cd

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 375
    .local v0, "pendingRequest":Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_b7

    .line 378
    .end local v0    # "pendingRequest":Ljava/lang/Runnable;
    :catchall_c7
    move-exception v2

    monitor-exit v4
    :try_end_c9
    .catchall {:try_start_af .. :try_end_c9} :catchall_c7

    :try_start_c9
    throw v2

    .line 389
    :catchall_ca
    move-exception v2

    monitor-exit v3
    :try_end_cc
    .catchall {:try_start_c9 .. :try_end_cc} :catchall_ca

    throw v2

    .line 377
    :cond_cd
    :try_start_cd
    sget-object v2, Lcom/urbanairship/UAirship;->pendingAirshipRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 378
    monitor-exit v4
    :try_end_d3
    .catchall {:try_start_cd .. :try_end_d3} :catchall_c7

    .line 381
    :try_start_d3
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.urbanairship.AIRSHIP_READY"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 382
    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 383
    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 385
    .local v1, "readyIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/urbanairship/UAirship;->getUrbanAirshipPermission()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 388
    sget-object v2, Lcom/urbanairship/UAirship;->airshipLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 389
    monitor-exit v3
    :try_end_f7
    .catchall {:try_start_d3 .. :try_end_f7} :catchall_ca

    .line 390
    return-void
.end method

.method public static getAppIcon()I
    .registers 2

    .prologue
    .line 495
    invoke-static {}, Lcom/urbanairship/UAirship;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 496
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_9

    .line 497
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 499
    :goto_8
    return v1

    :cond_9
    const/4 v1, -0x1

    goto :goto_8
.end method

.method public static getAppInfo()Landroid/content/pm/ApplicationInfo;
    .registers 1

    .prologue
    .line 468
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getAppName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 479
    invoke-static {}, Lcom/urbanairship/UAirship;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 480
    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/urbanairship/UAirship;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 482
    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 510
    sget-object v0, Lcom/urbanairship/UAirship;->application:Landroid/app/Application;

    if-nez v0, :cond_c

    .line 511
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TakeOff must be called first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 514
    :cond_c
    sget-object v0, Lcom/urbanairship/UAirship;->application:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageInfo()Landroid/content/pm/PackageInfo;
    .registers 4

    .prologue
    .line 453
    :try_start_0
    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_c} :catch_e

    move-result-object v1

    .line 456
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_d
    return-object v1

    .line 454
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_e
    move-exception v0

    .line 455
    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "UAirship - Unable to get package info."

    invoke-static {v1, v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 456
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public static getPackageManager()Landroid/content/pm/PackageManager;
    .registers 1

    .prologue
    .line 442
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageName()Ljava/lang/String;
    .registers 1

    .prologue
    .line 422
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUrbanAirshipPermission()Ljava/lang/String;
    .registers 2

    .prologue
    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".permission.UA_DATA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .registers 1

    .prologue
    .line 550
    const-string v0, "8.2.5"

    return-object v0
.end method

.method private init()V
    .registers 10

    .prologue
    .line 558
    new-instance v0, Lcom/urbanairship/PreferenceDataStore;

    sget-object v1, Lcom/urbanairship/UAirship;->application:Landroid/app/Application;

    invoke-direct {v0, v1}, Lcom/urbanairship/PreferenceDataStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/urbanairship/UAirship;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    .line 559
    iget-object v0, p0, Lcom/urbanairship/UAirship;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    invoke-virtual {v0}, Lcom/urbanairship/PreferenceDataStore;->init()V

    .line 562
    new-instance v0, Lcom/urbanairship/analytics/Analytics;

    sget-object v1, Lcom/urbanairship/UAirship;->application:Landroid/app/Application;

    iget-object v2, p0, Lcom/urbanairship/UAirship;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    iget-object v3, p0, Lcom/urbanairship/UAirship;->airshipConfigOptions:Lcom/urbanairship/AirshipConfigOptions;

    invoke-virtual {p0}, Lcom/urbanairship/UAirship;->getPlatformType()I

    move-result v4

    sget-object v5, Lcom/urbanairship/UAirship;->application:Landroid/app/Application;

    invoke-static {v5}, Lcom/urbanairship/ActivityMonitor;->shared(Landroid/content/Context;)Lcom/urbanairship/ActivityMonitor;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/urbanairship/analytics/Analytics;-><init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;Lcom/urbanairship/AirshipConfigOptions;ILcom/urbanairship/ActivityMonitor;)V

    iput-object v0, p0, Lcom/urbanairship/UAirship;->analytics:Lcom/urbanairship/analytics/Analytics;

    .line 563
    new-instance v0, Lcom/urbanairship/ApplicationMetrics;

    sget-object v1, Lcom/urbanairship/UAirship;->application:Landroid/app/Application;

    iget-object v2, p0, Lcom/urbanairship/UAirship;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    sget-object v3, Lcom/urbanairship/UAirship;->application:Landroid/app/Application;

    invoke-static {v3}, Lcom/urbanairship/ActivityMonitor;->shared(Landroid/content/Context;)Lcom/urbanairship/ActivityMonitor;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/urbanairship/ApplicationMetrics;-><init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;Lcom/urbanairship/ActivityMonitor;)V

    iput-object v0, p0, Lcom/urbanairship/UAirship;->applicationMetrics:Lcom/urbanairship/ApplicationMetrics;

    .line 564
    new-instance v0, Lcom/urbanairship/richpush/RichPushInbox;

    sget-object v1, Lcom/urbanairship/UAirship;->application:Landroid/app/Application;

    iget-object v2, p0, Lcom/urbanairship/UAirship;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    sget-object v3, Lcom/urbanairship/UAirship;->application:Landroid/app/Application;

    invoke-static {v3}, Lcom/urbanairship/ActivityMonitor;->shared(Landroid/content/Context;)Lcom/urbanairship/ActivityMonitor;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/urbanairship/richpush/RichPushInbox;-><init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;Lcom/urbanairship/ActivityMonitor;)V

    iput-object v0, p0, Lcom/urbanairship/UAirship;->inbox:Lcom/urbanairship/richpush/RichPushInbox;

    .line 565
    new-instance v0, Lcom/urbanairship/location/UALocationManager;

    sget-object v1, Lcom/urbanairship/UAirship;->application:Landroid/app/Application;

    iget-object v2, p0, Lcom/urbanairship/UAirship;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    sget-object v3, Lcom/urbanairship/UAirship;->application:Landroid/app/Application;

    invoke-static {v3}, Lcom/urbanairship/ActivityMonitor;->shared(Landroid/content/Context;)Lcom/urbanairship/ActivityMonitor;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/urbanairship/location/UALocationManager;-><init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;Lcom/urbanairship/ActivityMonitor;)V

    iput-object v0, p0, Lcom/urbanairship/UAirship;->locationManager:Lcom/urbanairship/location/UALocationManager;

    .line 566
    new-instance v0, Lcom/urbanairship/push/iam/InAppMessageManager;

    iget-object v1, p0, Lcom/urbanairship/UAirship;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    sget-object v2, Lcom/urbanairship/UAirship;->application:Landroid/app/Application;

    invoke-static {v2}, Lcom/urbanairship/ActivityMonitor;->shared(Landroid/content/Context;)Lcom/urbanairship/ActivityMonitor;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/urbanairship/push/iam/InAppMessageManager;-><init>(Lcom/urbanairship/PreferenceDataStore;Lcom/urbanairship/ActivityMonitor;)V

    iput-object v0, p0, Lcom/urbanairship/UAirship;->inAppMessageManager:Lcom/urbanairship/push/iam/InAppMessageManager;

    .line 567
    new-instance v0, Lcom/urbanairship/push/PushManager;

    sget-object v1, Lcom/urbanairship/UAirship;->application:Landroid/app/Application;

    iget-object v2, p0, Lcom/urbanairship/UAirship;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    iget-object v3, p0, Lcom/urbanairship/UAirship;->airshipConfigOptions:Lcom/urbanairship/AirshipConfigOptions;

    invoke-direct {v0, v1, v2, v3}, Lcom/urbanairship/push/PushManager;-><init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;Lcom/urbanairship/AirshipConfigOptions;)V

    iput-object v0, p0, Lcom/urbanairship/UAirship;->pushManager:Lcom/urbanairship/push/PushManager;

    .line 568
    new-instance v0, Lcom/urbanairship/push/NamedUser;

    sget-object v1, Lcom/urbanairship/UAirship;->application:Landroid/app/Application;

    iget-object v2, p0, Lcom/urbanairship/UAirship;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    invoke-direct {v0, v1, v2}, Lcom/urbanairship/push/NamedUser;-><init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;)V

    iput-object v0, p0, Lcom/urbanairship/UAirship;->namedUser:Lcom/urbanairship/push/NamedUser;

    .line 569
    new-instance v0, Lcom/urbanairship/ChannelCapture;

    sget-object v1, Lcom/urbanairship/UAirship;->application:Landroid/app/Application;

    iget-object v2, p0, Lcom/urbanairship/UAirship;->airshipConfigOptions:Lcom/urbanairship/AirshipConfigOptions;

    iget-object v3, p0, Lcom/urbanairship/UAirship;->pushManager:Lcom/urbanairship/push/PushManager;

    sget-object v4, Lcom/urbanairship/UAirship;->application:Landroid/app/Application;

    invoke-static {v4}, Lcom/urbanairship/ActivityMonitor;->shared(Landroid/content/Context;)Lcom/urbanairship/ActivityMonitor;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/urbanairship/ChannelCapture;-><init>(Landroid/content/Context;Lcom/urbanairship/AirshipConfigOptions;Lcom/urbanairship/push/PushManager;Lcom/urbanairship/ActivityMonitor;)V

    iput-object v0, p0, Lcom/urbanairship/UAirship;->channelCapture:Lcom/urbanairship/ChannelCapture;

    .line 570
    iget-object v0, p0, Lcom/urbanairship/UAirship;->airshipConfigOptions:Lcom/urbanairship/AirshipConfigOptions;

    invoke-static {v0}, Lcom/urbanairship/js/Whitelist;->createDefaultWhitelist(Lcom/urbanairship/AirshipConfigOptions;)Lcom/urbanairship/js/Whitelist;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/UAirship;->whitelist:Lcom/urbanairship/js/Whitelist;

    .line 571
    new-instance v0, Lcom/urbanairship/actions/ActionRegistry;

    invoke-direct {v0}, Lcom/urbanairship/actions/ActionRegistry;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/UAirship;->actionRegistry:Lcom/urbanairship/actions/ActionRegistry;

    .line 572
    iget-object v0, p0, Lcom/urbanairship/UAirship;->actionRegistry:Lcom/urbanairship/actions/ActionRegistry;

    invoke-virtual {v0}, Lcom/urbanairship/actions/ActionRegistry;->registerDefaultActions()V

    .line 573
    new-instance v0, Lcom/urbanairship/messagecenter/MessageCenter;

    invoke-direct {v0}, Lcom/urbanairship/messagecenter/MessageCenter;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/UAirship;->messageCenter:Lcom/urbanairship/messagecenter/MessageCenter;

    .line 574
    new-instance v0, Lcom/urbanairship/automation/Automation;

    sget-object v1, Lcom/urbanairship/UAirship;->application:Landroid/app/Application;

    iget-object v2, p0, Lcom/urbanairship/UAirship;->airshipConfigOptions:Lcom/urbanairship/AirshipConfigOptions;

    iget-object v3, p0, Lcom/urbanairship/UAirship;->analytics:Lcom/urbanairship/analytics/Analytics;

    iget-object v4, p0, Lcom/urbanairship/UAirship;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    sget-object v5, Lcom/urbanairship/UAirship;->application:Landroid/app/Application;

    invoke-static {v5}, Lcom/urbanairship/ActivityMonitor;->shared(Landroid/content/Context;)Lcom/urbanairship/ActivityMonitor;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/urbanairship/automation/Automation;-><init>(Landroid/content/Context;Lcom/urbanairship/AirshipConfigOptions;Lcom/urbanairship/analytics/Analytics;Lcom/urbanairship/PreferenceDataStore;Lcom/urbanairship/ActivityMonitor;)V

    iput-object v0, p0, Lcom/urbanairship/UAirship;->automation:Lcom/urbanairship/automation/Automation;

    .line 576
    invoke-virtual {p0}, Lcom/urbanairship/UAirship;->getComponents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_ca
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_da

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/urbanairship/AirshipComponent;

    .line 577
    .local v6, "component":Lcom/urbanairship/AirshipComponent;
    invoke-virtual {v6}, Lcom/urbanairship/AirshipComponent;->init()V

    goto :goto_ca

    .line 581
    .end local v6    # "component":Lcom/urbanairship/AirshipComponent;
    :cond_da
    invoke-static {}, Lcom/urbanairship/UAirship;->getVersion()Ljava/lang/String;

    move-result-object v7

    .line 582
    .local v7, "currentVersion":Ljava/lang/String;
    iget-object v0, p0, Lcom/urbanairship/UAirship;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.application.device.LIBRARY_VERSION"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 584
    .local v8, "previousVersion":Ljava/lang/String;
    if-eqz v8, :cond_115

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_115

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Urban Airship library changed from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 590
    :cond_115
    iget-object v0, p0, Lcom/urbanairship/UAirship;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.application.device.LIBRARY_VERSION"

    invoke-static {}, Lcom/urbanairship/UAirship;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    return-void
.end method

.method public static isFlying()Z
    .registers 1

    .prologue
    .line 523
    sget-boolean v0, Lcom/urbanairship/UAirship;->isFlying:Z

    return v0
.end method

.method public static isMainProcess()Z
    .registers 1

    .prologue
    .line 541
    sget-boolean v0, Lcom/urbanairship/UAirship;->isMainProcess:Z

    return v0
.end method

.method public static isTakingOff()Z
    .registers 1

    .prologue
    .line 532
    sget-boolean v0, Lcom/urbanairship/UAirship;->isTakingOff:Z

    return v0
.end method

.method public static land()V
    .registers 4

    .prologue
    .line 396
    sget-object v2, Lcom/urbanairship/UAirship;->airshipLock:Ljava/lang/Object;

    monitor-enter v2

    .line 397
    :try_start_3
    sget-boolean v1, Lcom/urbanairship/UAirship;->isTakingOff:Z

    if-nez v1, :cond_d

    sget-boolean v1, Lcom/urbanairship/UAirship;->isFlying:Z

    if-nez v1, :cond_d

    .line 398
    monitor-exit v2

    .line 413
    .local v0, "airship":Lcom/urbanairship/UAirship;
    :goto_c
    return-void

    .line 401
    .end local v0    # "airship":Lcom/urbanairship/UAirship;
    :cond_d
    sget-object v1, Lcom/urbanairship/UAirship;->application:Landroid/app/Application;

    sget-object v3, Lcom/urbanairship/UAirship;->application:Landroid/app/Application;

    invoke-static {v3}, Lcom/urbanairship/ActivityMonitor;->shared(Landroid/content/Context;)Lcom/urbanairship/ActivityMonitor;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 404
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    .line 406
    .restart local v0    # "airship":Lcom/urbanairship/UAirship;
    invoke-direct {v0}, Lcom/urbanairship/UAirship;->tearDown()V

    .line 408
    const/4 v1, 0x0

    sput-boolean v1, Lcom/urbanairship/UAirship;->isFlying:Z

    .line 409
    const/4 v1, 0x0

    sput-boolean v1, Lcom/urbanairship/UAirship;->isTakingOff:Z

    .line 410
    const/4 v1, 0x0

    sput-object v1, Lcom/urbanairship/UAirship;->sharedAirship:Lcom/urbanairship/UAirship;

    .line 411
    const/4 v1, 0x0

    sput-object v1, Lcom/urbanairship/UAirship;->application:Landroid/app/Application;

    .line 412
    monitor-exit v2

    goto :goto_c

    :catchall_2d
    move-exception v1

    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public static shared(Lcom/urbanairship/UAirship$OnReadyCallback;)Lcom/urbanairship/Cancelable;
    .registers 2
    .param p0, "callback"    # Lcom/urbanairship/UAirship$OnReadyCallback;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/urbanairship/UAirship;->shared(Lcom/urbanairship/UAirship$OnReadyCallback;Landroid/os/Looper;)Lcom/urbanairship/Cancelable;

    move-result-object v0

    return-object v0
.end method

.method public static shared(Lcom/urbanairship/UAirship$OnReadyCallback;Landroid/os/Looper;)Lcom/urbanairship/Cancelable;
    .registers 5
    .param p0, "callback"    # Lcom/urbanairship/UAirship$OnReadyCallback;
    .param p1, "looper"    # Landroid/os/Looper;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 200
    new-instance v0, Lcom/urbanairship/UAirship$1;

    invoke-direct {v0, p1, p0}, Lcom/urbanairship/UAirship$1;-><init>(Landroid/os/Looper;Lcom/urbanairship/UAirship$OnReadyCallback;)V

    .line 209
    .local v0, "cancelableOperation":Lcom/urbanairship/CancelableOperation;
    sget-object v2, Lcom/urbanairship/UAirship;->pendingAirshipRequests:Ljava/util/List;

    monitor-enter v2

    .line 210
    :try_start_8
    sget-boolean v1, Lcom/urbanairship/UAirship;->queuePendingAirshipRequests:Z

    if-eqz v1, :cond_13

    .line 211
    sget-object v1, Lcom/urbanairship/UAirship;->pendingAirshipRequests:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    :goto_11
    monitor-exit v2

    .line 217
    return-object v0

    .line 213
    :cond_13
    invoke-virtual {v0}, Lcom/urbanairship/CancelableOperation;->run()V

    goto :goto_11

    .line 215
    :catchall_17
    move-exception v1

    monitor-exit v2
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public static shared()Lcom/urbanairship/UAirship;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 126
    sget-object v1, Lcom/urbanairship/UAirship;->airshipLock:Ljava/lang/Object;

    monitor-enter v1

    .line 127
    :try_start_3
    sget-boolean v0, Lcom/urbanairship/UAirship;->isTakingOff:Z

    if-nez v0, :cond_16

    sget-boolean v0, Lcom/urbanairship/UAirship;->isFlying:Z

    if-nez v0, :cond_16

    .line 128
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Take off must be called before shared()"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0

    .line 131
    :cond_16
    const-wide/16 v2, 0x0

    :try_start_18
    invoke-static {v2, v3}, Lcom/urbanairship/UAirship;->waitForTakeOff(J)Lcom/urbanairship/UAirship;

    move-result-object v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_13

    return-object v0
.end method

.method public static takeOff(Landroid/app/Application;)V
    .registers 2
    .param p0, "application"    # Landroid/app/Application;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 228
    invoke-static {p0, v0, v0}, Lcom/urbanairship/UAirship;->takeOff(Landroid/app/Application;Lcom/urbanairship/AirshipConfigOptions;Lcom/urbanairship/UAirship$OnReadyCallback;)V

    .line 229
    return-void
.end method

.method public static takeOff(Landroid/app/Application;Lcom/urbanairship/AirshipConfigOptions;)V
    .registers 3
    .param p0, "application"    # Landroid/app/Application;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "options"    # Lcom/urbanairship/AirshipConfigOptions;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 256
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/urbanairship/UAirship;->takeOff(Landroid/app/Application;Lcom/urbanairship/AirshipConfigOptions;Lcom/urbanairship/UAirship$OnReadyCallback;)V

    .line 257
    return-void
.end method

.method public static takeOff(Landroid/app/Application;Lcom/urbanairship/AirshipConfigOptions;Lcom/urbanairship/UAirship$OnReadyCallback;)V
    .registers 11
    .param p0, "application"    # Landroid/app/Application;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "options"    # Lcom/urbanairship/AirshipConfigOptions;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "readyCallback"    # Lcom/urbanairship/UAirship$OnReadyCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 274
    if-nez p0, :cond_a

    .line 275
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Application argument must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 278
    :cond_a
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    if-eqz v4, :cond_1a

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    if-eq v4, v5, :cond_47

    .line 279
    :cond_1a
    const-string/jumbo v4, "takeOff() must be called on the main thread!"

    invoke-static {v4}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 291
    :cond_20
    :goto_20
    sget-boolean v4, Lcom/urbanairship/UAirship;->LOG_TAKE_OFF_STACKTRACE:Z

    if-eqz v4, :cond_76

    .line 292
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    .local v2, "sb":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    array-length v6, v5

    const/4 v4, 0x0

    :goto_34
    if-ge v4, v6, :cond_5a

    aget-object v1, v5, v4

    .line 294
    .local v1, "element":Ljava/lang/StackTraceElement;
    const-string v7, "\n\tat "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    .line 280
    .end local v1    # "element":Ljava/lang/StackTraceElement;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_47
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-ge v4, v5, :cond_20

    .line 283
    :try_start_4d
    const-string v4, "android.os.AsyncTask"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_52
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4d .. :try_end_52} :catch_53

    goto :goto_20

    .line 284
    :catch_53
    move-exception v0

    .line 285
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v4, "AsyncTask workaround failed."

    invoke-static {v4, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_20

    .line 298
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_5a
    sget-object v4, Lcom/urbanairship/Logger;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Takeoff stack trace: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_76
    sget-object v5, Lcom/urbanairship/UAirship;->airshipLock:Ljava/lang/Object;

    monitor-enter v5

    .line 303
    :try_start_79
    sget-boolean v4, Lcom/urbanairship/UAirship;->isFlying:Z

    if-nez v4, :cond_81

    sget-boolean v4, Lcom/urbanairship/UAirship;->isTakingOff:Z

    if-eqz v4, :cond_88

    .line 304
    :cond_81
    const-string v4, "You can only call takeOff() once."

    invoke-static {v4}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 305
    monitor-exit v5

    .line 323
    :goto_87
    return-void

    .line 308
    :cond_88
    const-string v4, "Airship taking off!"

    invoke-static {v4}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 310
    const/4 v4, 0x1

    sput-boolean v4, Lcom/urbanairship/UAirship;->isTakingOff:Z

    .line 312
    sput-object p0, Lcom/urbanairship/UAirship;->application:Landroid/app/Application;

    .line 314
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/urbanairship/UAirship$2;

    invoke-direct {v4, p0, p1, p2}, Lcom/urbanairship/UAirship$2;-><init>(Landroid/app/Application;Lcom/urbanairship/AirshipConfigOptions;Lcom/urbanairship/UAirship$OnReadyCallback;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 321
    .local v3, "thread":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 322
    monitor-exit v5

    goto :goto_87

    .end local v3    # "thread":Ljava/lang/Thread;
    :catchall_a1
    move-exception v4

    monitor-exit v5
    :try_end_a3
    .catchall {:try_start_79 .. :try_end_a3} :catchall_a1

    throw v4
.end method

.method public static takeOff(Landroid/app/Application;Lcom/urbanairship/UAirship$OnReadyCallback;)V
    .registers 3
    .param p0, "application"    # Landroid/app/Application;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "readyCallback"    # Lcom/urbanairship/UAirship$OnReadyCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 243
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/urbanairship/UAirship;->takeOff(Landroid/app/Application;Lcom/urbanairship/AirshipConfigOptions;Lcom/urbanairship/UAirship$OnReadyCallback;)V

    .line 244
    return-void
.end method

.method private tearDown()V
    .registers 4

    .prologue
    .line 597
    invoke-virtual {p0}, Lcom/urbanairship/UAirship;->getComponents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/AirshipComponent;

    .line 598
    .local v0, "component":Lcom/urbanairship/AirshipComponent;
    invoke-virtual {v0}, Lcom/urbanairship/AirshipComponent;->tearDown()V

    goto :goto_8

    .line 602
    .end local v0    # "component":Lcom/urbanairship/AirshipComponent;
    :cond_18
    iget-object v1, p0, Lcom/urbanairship/UAirship;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    invoke-virtual {v1}, Lcom/urbanairship/PreferenceDataStore;->tearDown()V

    .line 603
    return-void
.end method

.method public static waitForTakeOff(J)Lcom/urbanairship/UAirship;
    .registers 8
    .param p0, "millis"    # J

    .prologue
    .line 145
    sget-object v3, Lcom/urbanairship/UAirship;->airshipLock:Ljava/lang/Object;

    monitor-enter v3

    .line 146
    :try_start_3
    sget-boolean v2, Lcom/urbanairship/UAirship;->isFlying:Z

    if-eqz v2, :cond_b

    .line 147
    sget-object v2, Lcom/urbanairship/UAirship;->sharedAirship:Lcom/urbanairship/UAirship;

    monitor-exit v3
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_26

    .line 161
    :goto_a
    return-object v2

    .line 150
    :cond_b
    const/4 v1, 0x0

    .line 153
    .local v1, "interrupted":Z
    :goto_c
    :try_start_c
    sget-boolean v2, Lcom/urbanairship/UAirship;->isFlying:Z
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_29

    if-nez v2, :cond_19

    .line 155
    :try_start_10
    sget-object v2, Lcom/urbanairship/UAirship;->airshipLock:Ljava/lang/Object;

    invoke-virtual {v2, p0, p1}, Ljava/lang/Object;->wait(J)V
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_15} :catch_16
    .catchall {:try_start_10 .. :try_end_15} :catchall_29

    goto :goto_c

    .line 156
    :catch_16
    move-exception v0

    .line 157
    .local v0, "ignored":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    .line 158
    goto :goto_c

    .line 161
    .end local v0    # "ignored":Ljava/lang/InterruptedException;
    :cond_19
    :try_start_19
    sget-object v2, Lcom/urbanairship/UAirship;->sharedAirship:Lcom/urbanairship/UAirship;
    :try_end_1b
    .catchall {:try_start_19 .. :try_end_1b} :catchall_29

    .line 163
    if-eqz v1, :cond_24

    .line 165
    :try_start_1d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    :cond_24
    monitor-exit v3

    goto :goto_a

    .line 168
    .end local v1    # "interrupted":Z
    :catchall_26
    move-exception v2

    monitor-exit v3
    :try_end_28
    .catchall {:try_start_1d .. :try_end_28} :catchall_26

    throw v2

    .line 163
    .restart local v1    # "interrupted":Z
    :catchall_29
    move-exception v2

    if-eqz v1, :cond_33

    .line 165
    :try_start_2c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    :cond_33
    throw v2
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_26
.end method


# virtual methods
.method public getActionRegistry()Lcom/urbanairship/actions/ActionRegistry;
    .registers 2

    .prologue
    .line 690
    iget-object v0, p0, Lcom/urbanairship/UAirship;->actionRegistry:Lcom/urbanairship/actions/ActionRegistry;

    return-object v0
.end method

.method public getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;
    .registers 2

    .prologue
    .line 611
    iget-object v0, p0, Lcom/urbanairship/UAirship;->airshipConfigOptions:Lcom/urbanairship/AirshipConfigOptions;

    return-object v0
.end method

.method public getAnalytics()Lcom/urbanairship/analytics/Analytics;
    .registers 2

    .prologue
    .line 665
    iget-object v0, p0, Lcom/urbanairship/UAirship;->analytics:Lcom/urbanairship/analytics/Analytics;

    return-object v0
.end method

.method public getApplicationMetrics()Lcom/urbanairship/ApplicationMetrics;
    .registers 2

    .prologue
    .line 674
    iget-object v0, p0, Lcom/urbanairship/UAirship;->applicationMetrics:Lcom/urbanairship/ApplicationMetrics;

    return-object v0
.end method

.method public getAutomation()Lcom/urbanairship/automation/Automation;
    .registers 2

    .prologue
    .line 706
    iget-object v0, p0, Lcom/urbanairship/UAirship;->automation:Lcom/urbanairship/automation/Automation;

    return-object v0
.end method

.method getComponents()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/AirshipComponent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 760
    iget-object v0, p0, Lcom/urbanairship/UAirship;->components:Ljava/util/List;

    if-nez v0, :cond_51

    .line 762
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/UAirship;->components:Ljava/util/List;

    .line 763
    iget-object v0, p0, Lcom/urbanairship/UAirship;->components:Ljava/util/List;

    iget-object v1, p0, Lcom/urbanairship/UAirship;->inbox:Lcom/urbanairship/richpush/RichPushInbox;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 764
    iget-object v0, p0, Lcom/urbanairship/UAirship;->components:Ljava/util/List;

    iget-object v1, p0, Lcom/urbanairship/UAirship;->pushManager:Lcom/urbanairship/push/PushManager;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 765
    iget-object v0, p0, Lcom/urbanairship/UAirship;->components:Ljava/util/List;

    iget-object v1, p0, Lcom/urbanairship/UAirship;->locationManager:Lcom/urbanairship/location/UALocationManager;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 766
    iget-object v0, p0, Lcom/urbanairship/UAirship;->components:Ljava/util/List;

    iget-object v1, p0, Lcom/urbanairship/UAirship;->inAppMessageManager:Lcom/urbanairship/push/iam/InAppMessageManager;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 767
    iget-object v0, p0, Lcom/urbanairship/UAirship;->components:Ljava/util/List;

    iget-object v1, p0, Lcom/urbanairship/UAirship;->channelCapture:Lcom/urbanairship/ChannelCapture;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 768
    iget-object v0, p0, Lcom/urbanairship/UAirship;->components:Ljava/util/List;

    iget-object v1, p0, Lcom/urbanairship/UAirship;->applicationMetrics:Lcom/urbanairship/ApplicationMetrics;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 769
    iget-object v0, p0, Lcom/urbanairship/UAirship;->components:Ljava/util/List;

    iget-object v1, p0, Lcom/urbanairship/UAirship;->analytics:Lcom/urbanairship/analytics/Analytics;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 770
    iget-object v0, p0, Lcom/urbanairship/UAirship;->components:Ljava/util/List;

    iget-object v1, p0, Lcom/urbanairship/UAirship;->messageCenter:Lcom/urbanairship/messagecenter/MessageCenter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 771
    iget-object v0, p0, Lcom/urbanairship/UAirship;->components:Ljava/util/List;

    iget-object v1, p0, Lcom/urbanairship/UAirship;->namedUser:Lcom/urbanairship/push/NamedUser;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 772
    iget-object v0, p0, Lcom/urbanairship/UAirship;->components:Ljava/util/List;

    iget-object v1, p0, Lcom/urbanairship/UAirship;->automation:Lcom/urbanairship/automation/Automation;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 775
    :cond_51
    iget-object v0, p0, Lcom/urbanairship/UAirship;->components:Ljava/util/List;

    return-object v0
.end method

.method public getInAppMessageManager()Lcom/urbanairship/push/iam/InAppMessageManager;
    .registers 2

    .prologue
    .line 656
    iget-object v0, p0, Lcom/urbanairship/UAirship;->inAppMessageManager:Lcom/urbanairship/push/iam/InAppMessageManager;

    return-object v0
.end method

.method public getInbox()Lcom/urbanairship/richpush/RichPushInbox;
    .registers 2

    .prologue
    .line 638
    iget-object v0, p0, Lcom/urbanairship/UAirship;->inbox:Lcom/urbanairship/richpush/RichPushInbox;

    return-object v0
.end method

.method public getLocationManager()Lcom/urbanairship/location/UALocationManager;
    .registers 2

    .prologue
    .line 647
    iget-object v0, p0, Lcom/urbanairship/UAirship;->locationManager:Lcom/urbanairship/location/UALocationManager;

    return-object v0
.end method

.method public getMessageCenter()Lcom/urbanairship/messagecenter/MessageCenter;
    .registers 2

    .prologue
    .line 698
    iget-object v0, p0, Lcom/urbanairship/UAirship;->messageCenter:Lcom/urbanairship/messagecenter/MessageCenter;

    return-object v0
.end method

.method public getNamedUser()Lcom/urbanairship/push/NamedUser;
    .registers 2

    .prologue
    .line 620
    iget-object v0, p0, Lcom/urbanairship/UAirship;->namedUser:Lcom/urbanairship/push/NamedUser;

    return-object v0
.end method

.method public getPlatformType()I
    .registers 5

    .prologue
    .line 728
    iget-object v1, p0, Lcom/urbanairship/UAirship;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v2, "com.urbanairship.application.device.PLATFORM"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/urbanairship/PreferenceDataStore;->getInt(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_4e

    .line 738
    invoke-static {}, Lcom/urbanairship/amazon/AdmUtils;->isAdmAvailable()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 739
    const-string v1, "ADM available. Setting platform to Amazon."

    invoke-static {v1}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 740
    const/4 v0, 0x1

    .line 752
    .local v0, "platform":I
    :goto_18
    iget-object v1, p0, Lcom/urbanairship/UAirship;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v2, "com.urbanairship.application.device.PLATFORM"

    invoke-virtual {v1, v2, v0}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;I)V

    .line 756
    :goto_1f
    return v0

    .line 730
    .end local v0    # "platform":I
    :pswitch_20
    const/4 v0, 0x1

    .line 731
    .restart local v0    # "platform":I
    goto :goto_1f

    .line 734
    .end local v0    # "platform":I
    :pswitch_22
    const/4 v0, 0x2

    .line 735
    .restart local v0    # "platform":I
    goto :goto_1f

    .line 741
    .end local v0    # "platform":I
    :cond_24
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/google/PlayServicesUtils;->isGooglePlayStoreAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 742
    const-string v1, "Google Play Store available. Setting platform to Android."

    invoke-static {v1}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 743
    const/4 v0, 0x2

    .restart local v0    # "platform":I
    goto :goto_18

    .line 744
    .end local v0    # "platform":I
    :cond_35
    const-string v1, "amazon"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 745
    const-string v1, "Build.MANUFACTURER is AMAZON. Setting platform to Amazon."

    invoke-static {v1}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 746
    const/4 v0, 0x1

    .restart local v0    # "platform":I
    goto :goto_18

    .line 748
    .end local v0    # "platform":I
    :cond_46
    const-string v1, "Defaulting platform to Android."

    invoke-static {v1}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 749
    const/4 v0, 0x2

    .restart local v0    # "platform":I
    goto :goto_18

    .line 728
    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_20
        :pswitch_22
    .end packed-switch
.end method

.method public getPushManager()Lcom/urbanairship/push/PushManager;
    .registers 2

    .prologue
    .line 629
    iget-object v0, p0, Lcom/urbanairship/UAirship;->pushManager:Lcom/urbanairship/push/PushManager;

    return-object v0
.end method

.method public getWhitelist()Lcom/urbanairship/js/Whitelist;
    .registers 2

    .prologue
    .line 683
    iget-object v0, p0, Lcom/urbanairship/UAirship;->whitelist:Lcom/urbanairship/js/Whitelist;

    return-object v0
.end method
