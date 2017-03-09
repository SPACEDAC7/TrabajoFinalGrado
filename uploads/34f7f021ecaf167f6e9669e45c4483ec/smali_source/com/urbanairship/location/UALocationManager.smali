.class public Lcom/urbanairship/location/UALocationManager;
.super Lcom/urbanairship/AirshipComponent;
.source "UALocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/location/UALocationManager$SingleLocationRequest;,
        Lcom/urbanairship/location/UALocationManager$IncomingHandler;
    }
.end annotation


# static fields
.field private static final BACKGROUND_UPDATES_ALLOWED_KEY:Ljava/lang/String; = "com.urbanairship.location.BACKGROUND_UPDATES_ALLOWED"

.field private static final LAST_REQUESTED_LOCATION_OPTIONS_KEY:Ljava/lang/String; = "com.urbanairship.location.LAST_REQUESTED_LOCATION_OPTIONS"

.field private static final LOCATION_OPTIONS_KEY:Ljava/lang/String; = "com.urbanairship.location.LOCATION_OPTIONS"

.field private static final LOCATION_UPDATES_ENABLED_KEY:Ljava/lang/String; = "com.urbanairship.location.LOCATION_UPDATES_ENABLED"


# instance fields
.field private final activityMonitor:Lcom/urbanairship/ActivityMonitor;

.field private final context:Landroid/content/Context;

.field private isBound:Z

.field private isSubscribed:Z

.field private final listener:Lcom/urbanairship/ActivityMonitor$Listener;

.field private final locationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/location/LocationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final messenger:Landroid/os/Messenger;

.field private nextSingleLocationRequestId:I

.field private final preferenceChangeListener:Lcom/urbanairship/PreferenceDataStore$PreferenceChangeListener;

.field private final preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

.field private final serviceConnection:Landroid/content/ServiceConnection;

.field private serviceMessenger:Landroid/os/Messenger;

.field private final singleLocationRequests:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/urbanairship/location/UALocationManager$SingleLocationRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;Lcom/urbanairship/ActivityMonitor;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "preferenceDataStore"    # Lcom/urbanairship/PreferenceDataStore;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "activityMonitor"    # Lcom/urbanairship/ActivityMonitor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/urbanairship/AirshipComponent;-><init>()V

    .line 52
    const/4 v0, 0x1

    iput v0, p0, Lcom/urbanairship/location/UALocationManager;->nextSingleLocationRequestId:I

    .line 53
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/location/UALocationManager;->singleLocationRequests:Landroid/util/SparseArray;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/location/UALocationManager;->locationListeners:Ljava/util/List;

    .line 66
    new-instance v0, Lcom/urbanairship/location/UALocationManager$1;

    invoke-direct {v0, p0}, Lcom/urbanairship/location/UALocationManager$1;-><init>(Lcom/urbanairship/location/UALocationManager;)V

    iput-object v0, p0, Lcom/urbanairship/location/UALocationManager;->serviceConnection:Landroid/content/ServiceConnection;

    .line 87
    new-instance v0, Lcom/urbanairship/location/UALocationManager$2;

    invoke-direct {v0, p0}, Lcom/urbanairship/location/UALocationManager$2;-><init>(Lcom/urbanairship/location/UALocationManager;)V

    iput-object v0, p0, Lcom/urbanairship/location/UALocationManager;->preferenceChangeListener:Lcom/urbanairship/PreferenceDataStore$PreferenceChangeListener;

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/location/UALocationManager;->context:Landroid/content/Context;

    .line 111
    iput-object p2, p0, Lcom/urbanairship/location/UALocationManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    .line 112
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/urbanairship/location/UALocationManager$IncomingHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/urbanairship/location/UALocationManager$IncomingHandler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/urbanairship/location/UALocationManager;->messenger:Landroid/os/Messenger;

    .line 113
    new-instance v0, Lcom/urbanairship/location/UALocationManager$3;

    invoke-direct {v0, p0}, Lcom/urbanairship/location/UALocationManager$3;-><init>(Lcom/urbanairship/location/UALocationManager;)V

    iput-object v0, p0, Lcom/urbanairship/location/UALocationManager;->listener:Lcom/urbanairship/ActivityMonitor$Listener;

    .line 124
    iput-object p3, p0, Lcom/urbanairship/location/UALocationManager;->activityMonitor:Lcom/urbanairship/ActivityMonitor;

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/location/UALocationManager;Landroid/os/IBinder;)V
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/location/UALocationManager;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/urbanairship/location/UALocationManager;->onServiceConnected(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$100(Lcom/urbanairship/location/UALocationManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/urbanairship/location/UALocationManager;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/urbanairship/location/UALocationManager;->onServiceDisconnected()V

    return-void
.end method

.method static synthetic access$200(Lcom/urbanairship/location/UALocationManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/urbanairship/location/UALocationManager;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/urbanairship/location/UALocationManager;->updateServiceConnection()V

    return-void
.end method

.method static synthetic access$300(Lcom/urbanairship/location/UALocationManager;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/location/UALocationManager;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager;->locationListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/urbanairship/location/UALocationManager;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/location/UALocationManager;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager;->singleLocationRequests:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$500(Lcom/urbanairship/location/UALocationManager;IILandroid/os/Bundle;)Z
    .registers 5
    .param p0, "x0"    # Lcom/urbanairship/location/UALocationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/urbanairship/location/UALocationManager;->sendMessage(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized bindService()V
    .registers 5

    .prologue
    .line 401
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lcom/urbanairship/location/UALocationManager;->isBound:Z

    if-nez v1, :cond_21

    .line 402
    const-string v1, "UALocationManager - Binding to location service."

    invoke-static {v1}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 404
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/urbanairship/location/UALocationManager;->context:Landroid/content/Context;

    const-class v2, Lcom/urbanairship/location/LocationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 405
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/urbanairship/location/UALocationManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/urbanairship/location/UALocationManager;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 406
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/urbanairship/location/UALocationManager;->isBound:Z
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_29

    .line 411
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_21
    :goto_21
    monitor-exit p0

    return-void

    .line 408
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_23
    :try_start_23
    const-string v1, "Unable to bind to location service. Check that the location service is added to the manifest."

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_29

    goto :goto_21

    .line 401
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_29
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized onServiceConnected(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "service"    # Landroid/os/IBinder;

    .prologue
    .line 450
    monitor-enter p0

    :try_start_1
    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p1}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/urbanairship/location/UALocationManager;->serviceMessenger:Landroid/os/Messenger;

    .line 453
    iget-object v2, p0, Lcom/urbanairship/location/UALocationManager;->singleLocationRequests:Landroid/util/SparseArray;

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_2b

    .line 454
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    :try_start_c
    iget-object v1, p0, Lcom/urbanairship/location/UALocationManager;->singleLocationRequests:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_22

    .line 455
    iget-object v1, p0, Lcom/urbanairship/location/UALocationManager;->singleLocationRequests:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/urbanairship/location/UALocationManager$SingleLocationRequest;

    invoke-virtual {v1}, Lcom/urbanairship/location/UALocationManager$SingleLocationRequest;->sendLocationRequest()V

    .line 454
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 457
    :cond_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_28

    .line 458
    :try_start_23
    invoke-direct {p0}, Lcom/urbanairship/location/UALocationManager;->updateServiceConnection()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_2b

    .line 459
    monitor-exit p0

    return-void

    .line 457
    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    :try_start_2a
    throw v1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_2b

    .line 450
    .end local v0    # "i":I
    :catchall_2b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized onServiceDisconnected()V
    .registers 2

    .prologue
    .line 462
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/urbanairship/location/UALocationManager;->serviceMessenger:Landroid/os/Messenger;

    .line 463
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/location/UALocationManager;->isSubscribed:Z
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 464
    monitor-exit p0

    return-void

    .line 462
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private sendMessage(IILandroid/os/Bundle;)Z
    .registers 8
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "data"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 477
    iget-object v3, p0, Lcom/urbanairship/location/UALocationManager;->serviceMessenger:Landroid/os/Messenger;

    if-nez v3, :cond_6

    .line 494
    :goto_5
    return v2

    .line 481
    :cond_6
    const/4 v3, 0x0

    invoke-static {v3, p1, p2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    .line 482
    .local v1, "message":Landroid/os/Message;
    if-eqz p3, :cond_10

    .line 483
    invoke-virtual {v1, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 486
    :cond_10
    iget-object v3, p0, Lcom/urbanairship/location/UALocationManager;->messenger:Landroid/os/Messenger;

    iput-object v3, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 489
    :try_start_14
    iget-object v3, p0, Lcom/urbanairship/location/UALocationManager;->serviceMessenger:Landroid/os/Messenger;

    invoke-virtual {v3, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_19} :catch_1b

    .line 490
    const/4 v2, 0x1

    goto :goto_5

    .line 491
    :catch_1b
    move-exception v0

    .line 492
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "UALocationManager - Remote exception when sending message to location service"

    invoke-static {v3}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    goto :goto_5
.end method

.method private declared-synchronized subscribeUpdates()V
    .registers 4

    .prologue
    .line 417
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/urbanairship/location/UALocationManager;->isSubscribed:Z

    if-nez v0, :cond_16

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/urbanairship/location/UALocationManager;->sendMessage(IILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 418
    const-string v0, "Subscribing to continuous location updates."

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 419
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/urbanairship/location/UALocationManager;->isSubscribed:Z
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 421
    :cond_16
    monitor-exit p0

    return-void

    .line 417
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized unbindService()V
    .registers 3

    .prologue
    .line 441
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/urbanairship/location/UALocationManager;->isBound:Z

    if-eqz v0, :cond_14

    .line 442
    const-string v0, "UALocationManager - Unbinding to location service."

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/urbanairship/location/UALocationManager;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 445
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/location/UALocationManager;->isBound:Z
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 447
    :cond_14
    monitor-exit p0

    return-void

    .line 441
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized unsubscribeUpdates()V
    .registers 4

    .prologue
    .line 427
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/urbanairship/location/UALocationManager;->isSubscribed:Z

    if-eqz v0, :cond_13

    .line 428
    const-string v0, "Unsubscribing from continuous location updates."

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 429
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/urbanairship/location/UALocationManager;->sendMessage(IILandroid/os/Bundle;)Z

    .line 430
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/location/UALocationManager;->isSubscribed:Z
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 432
    :cond_13
    monitor-exit p0

    return-void

    .line 427
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateServiceConnection()V
    .registers 5

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/urbanairship/location/UALocationManager;->isLocationPermitted()Z

    move-result v1

    if-nez v1, :cond_7

    .line 395
    :cond_6
    :goto_6
    return-void

    .line 367
    :cond_7
    invoke-virtual {p0}, Lcom/urbanairship/location/UALocationManager;->isContinuousLocationUpdatesAllowed()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 368
    iget-object v2, p0, Lcom/urbanairship/location/UALocationManager;->locationListeners:Ljava/util/List;

    monitor-enter v2

    .line 369
    :try_start_10
    iget-object v1, p0, Lcom/urbanairship/location/UALocationManager;->locationListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 370
    iget-boolean v1, p0, Lcom/urbanairship/location/UALocationManager;->isBound:Z

    if-eqz v1, :cond_3d

    .line 371
    invoke-direct {p0}, Lcom/urbanairship/location/UALocationManager;->subscribeUpdates()V

    .line 378
    :cond_1f
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_10 .. :try_end_20} :catchall_42

    .line 389
    :goto_20
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/urbanairship/location/UALocationManager;->context:Landroid/content/Context;

    const-class v3, Lcom/urbanairship/location/LocationService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.urbanairship.location.ACTION_CHECK_LOCATION_UPDATES"

    .line 390
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 392
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/urbanairship/location/UALocationManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_6

    .line 393
    const-string v1, "Unable to start location service. Check that the location service is added to the manifest."

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_6

    .line 374
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3d
    :try_start_3d
    invoke-direct {p0}, Lcom/urbanairship/location/UALocationManager;->bindService()V

    .line 375
    monitor-exit v2

    goto :goto_6

    .line 378
    :catchall_42
    move-exception v1

    monitor-exit v2
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_42

    throw v1

    .line 380
    :cond_45
    invoke-direct {p0}, Lcom/urbanairship/location/UALocationManager;->unsubscribeUpdates()V

    .line 381
    iget-object v2, p0, Lcom/urbanairship/location/UALocationManager;->singleLocationRequests:Landroid/util/SparseArray;

    monitor-enter v2

    .line 383
    :try_start_4b
    iget-object v1, p0, Lcom/urbanairship/location/UALocationManager;->singleLocationRequests:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_56

    .line 384
    invoke-direct {p0}, Lcom/urbanairship/location/UALocationManager;->unbindService()V

    .line 386
    :cond_56
    monitor-exit v2

    goto :goto_20

    :catchall_58
    move-exception v1

    monitor-exit v2
    :try_end_5a
    .catchall {:try_start_4b .. :try_end_5a} :catchall_58

    throw v1
.end method


# virtual methods
.method public addLocationListener(Lcom/urbanairship/location/LocationListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/urbanairship/location/LocationListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 263
    iget-object v1, p0, Lcom/urbanairship/location/UALocationManager;->locationListeners:Ljava/util/List;

    monitor-enter v1

    .line 264
    :try_start_3
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager;->locationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    invoke-direct {p0}, Lcom/urbanairship/location/UALocationManager;->updateServiceConnection()V

    .line 266
    monitor-exit v1

    .line 267
    return-void

    .line 266
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method getLastUpdateOptions()Lcom/urbanairship/location/LocationRequestOptions;
    .registers 7
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 240
    iget-object v3, p0, Lcom/urbanairship/location/UALocationManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v4, "com.urbanairship.location.LAST_REQUESTED_LOCATION_OPTIONS"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, "jsonString":Ljava/lang/String;
    const/4 v2, 0x0

    .line 243
    .local v2, "lastUpdateOptions":Lcom/urbanairship/location/LocationRequestOptions;
    if-eqz v1, :cond_10

    .line 245
    :try_start_c
    invoke-static {v1}, Lcom/urbanairship/location/LocationRequestOptions;->parseJson(Ljava/lang/String;)Lcom/urbanairship/location/LocationRequestOptions;
    :try_end_f
    .catch Lcom/urbanairship/json/JsonException; {:try_start_c .. :try_end_f} :catch_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_f} :catch_2d

    move-result-object v2

    .line 253
    :cond_10
    :goto_10
    return-object v2

    .line 246
    :catch_11
    move-exception v0

    .line 247
    .local v0, "e":Lcom/urbanairship/json/JsonException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UALocationManager - Failed parsing LocationRequestOptions from JSON: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_10

    .line 248
    .end local v0    # "e":Lcom/urbanairship/json/JsonException;
    :catch_2d
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UALocationManager - Invalid LocationRequestOptions from JSON: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_10
.end method

.method public getLocationRequestOptions()Lcom/urbanairship/location/LocationRequestOptions;
    .registers 7
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 204
    const/4 v2, 0x0

    .line 206
    .local v2, "options":Lcom/urbanairship/location/LocationRequestOptions;
    iget-object v3, p0, Lcom/urbanairship/location/UALocationManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v4, "com.urbanairship.location.LOCATION_OPTIONS"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, "jsonString":Ljava/lang/String;
    if-eqz v1, :cond_10

    .line 209
    :try_start_c
    invoke-static {v1}, Lcom/urbanairship/location/LocationRequestOptions;->parseJson(Ljava/lang/String;)Lcom/urbanairship/location/LocationRequestOptions;
    :try_end_f
    .catch Lcom/urbanairship/json/JsonException; {:try_start_c .. :try_end_f} :catch_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_f} :catch_38

    move-result-object v2

    .line 217
    :cond_10
    :goto_10
    if-nez v2, :cond_1b

    .line 218
    new-instance v3, Lcom/urbanairship/location/LocationRequestOptions$Builder;

    invoke-direct {v3}, Lcom/urbanairship/location/LocationRequestOptions$Builder;-><init>()V

    invoke-virtual {v3}, Lcom/urbanairship/location/LocationRequestOptions$Builder;->create()Lcom/urbanairship/location/LocationRequestOptions;

    move-result-object v2

    .line 221
    :cond_1b
    return-object v2

    .line 210
    :catch_1c
    move-exception v0

    .line 211
    .local v0, "e":Lcom/urbanairship/json/JsonException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UALocationManager - Failed parsing LocationRequestOptions from JSON: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_10

    .line 212
    .end local v0    # "e":Lcom/urbanairship/json/JsonException;
    :catch_38
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UALocationManager - Invalid LocationRequestOptions from JSON: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_10
.end method

.method protected init()V
    .registers 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    iget-object v1, p0, Lcom/urbanairship/location/UALocationManager;->preferenceChangeListener:Lcom/urbanairship/PreferenceDataStore$PreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/urbanairship/PreferenceDataStore;->addListener(Lcom/urbanairship/PreferenceDataStore$PreferenceChangeListener;)V

    .line 130
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager;->activityMonitor:Lcom/urbanairship/ActivityMonitor;

    iget-object v1, p0, Lcom/urbanairship/location/UALocationManager;->listener:Lcom/urbanairship/ActivityMonitor$Listener;

    invoke-virtual {v0, v1}, Lcom/urbanairship/ActivityMonitor;->addListener(Lcom/urbanairship/ActivityMonitor$Listener;)V

    .line 131
    invoke-direct {p0}, Lcom/urbanairship/location/UALocationManager;->updateServiceConnection()V

    .line 132
    return-void
.end method

.method public isBackgroundLocationAllowed()Z
    .registers 4

    .prologue
    .line 173
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.location.BACKGROUND_UPDATES_ALLOWED"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isContinuousLocationUpdatesAllowed()Z
    .registers 2

    .prologue
    .line 596
    invoke-virtual {p0}, Lcom/urbanairship/location/UALocationManager;->isLocationUpdatesEnabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/urbanairship/location/UALocationManager;->isBackgroundLocationAllowed()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/analytics/Analytics;->isAppInForeground()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method isLocationPermitted()Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 607
    :try_start_1
    iget-object v4, p0, Lcom/urbanairship/location/UALocationManager;->context:Landroid/content/Context;

    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 608
    .local v2, "fineLocationPermissionCheck":I
    iget-object v4, p0, Lcom/urbanairship/location/UALocationManager;->context:Landroid/content/Context;

    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_10} :catch_17

    move-result v0

    .line 609
    .local v0, "coarseLocationPermissionCheck":I
    if-eqz v2, :cond_15

    if-nez v0, :cond_16

    :cond_15
    const/4 v3, 0x1

    .line 612
    .end local v0    # "coarseLocationPermissionCheck":I
    .end local v2    # "fineLocationPermissionCheck":I
    :cond_16
    :goto_16
    return v3

    .line 610
    :catch_17
    move-exception v1

    .line 611
    .local v1, "e":Ljava/lang/RuntimeException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UALocationManager - Unable to retrieve location permissions: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_16
.end method

.method public isLocationUpdatesEnabled()Z
    .registers 4

    .prologue
    .line 150
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.location.LOCATION_UPDATES_ENABLED"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public removeLocationListener(Lcom/urbanairship/location/LocationListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/urbanairship/location/LocationListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 275
    iget-object v1, p0, Lcom/urbanairship/location/UALocationManager;->locationListeners:Ljava/util/List;

    monitor-enter v1

    .line 276
    :try_start_3
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager;->locationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 277
    invoke-direct {p0}, Lcom/urbanairship/location/UALocationManager;->updateServiceConnection()V

    .line 278
    monitor-exit v1

    .line 279
    return-void

    .line 278
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public requestSingleLocation()Lcom/urbanairship/Cancelable;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 291
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/urbanairship/location/UALocationManager;->getLocationRequestOptions()Lcom/urbanairship/location/LocationRequestOptions;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/location/UALocationManager;->requestSingleLocation(Lcom/urbanairship/location/LocationCallback;Lcom/urbanairship/location/LocationRequestOptions;)Lcom/urbanairship/Cancelable;

    move-result-object v0

    return-object v0
.end method

.method public requestSingleLocation(Lcom/urbanairship/location/LocationCallback;)Lcom/urbanairship/Cancelable;
    .registers 3
    .param p1, "locationCallback"    # Lcom/urbanairship/location/LocationCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/urbanairship/location/UALocationManager;->getLocationRequestOptions()Lcom/urbanairship/location/LocationRequestOptions;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/urbanairship/location/UALocationManager;->requestSingleLocation(Lcom/urbanairship/location/LocationCallback;Lcom/urbanairship/location/LocationRequestOptions;)Lcom/urbanairship/Cancelable;

    move-result-object v0

    return-object v0
.end method

.method public requestSingleLocation(Lcom/urbanairship/location/LocationCallback;Lcom/urbanairship/location/LocationRequestOptions;)Lcom/urbanairship/Cancelable;
    .registers 7
    .param p1, "locationCallback"    # Lcom/urbanairship/location/LocationCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "requestOptions"    # Lcom/urbanairship/location/LocationRequestOptions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 319
    if-nez p2, :cond_a

    .line 320
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Location request options cannot be null or invalid"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 323
    :cond_a
    invoke-virtual {p0}, Lcom/urbanairship/location/UALocationManager;->isLocationPermitted()Z

    move-result v2

    if-nez v2, :cond_16

    .line 324
    new-instance v1, Lcom/urbanairship/location/UALocationManager$4;

    invoke-direct {v1, p0}, Lcom/urbanairship/location/UALocationManager$4;-><init>(Lcom/urbanairship/location/UALocationManager;)V

    .line 355
    :goto_15
    return-object v1

    .line 341
    :cond_16
    iget-object v3, p0, Lcom/urbanairship/location/UALocationManager;->singleLocationRequests:Landroid/util/SparseArray;

    monitor-enter v3

    .line 342
    :try_start_19
    iget v0, p0, Lcom/urbanairship/location/UALocationManager;->nextSingleLocationRequestId:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/urbanairship/location/UALocationManager;->nextSingleLocationRequestId:I

    .line 343
    .local v0, "id":I
    new-instance v1, Lcom/urbanairship/location/UALocationManager$SingleLocationRequest;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/urbanairship/location/UALocationManager$SingleLocationRequest;-><init>(Lcom/urbanairship/location/UALocationManager;Lcom/urbanairship/location/LocationCallback;ILcom/urbanairship/location/LocationRequestOptions;)V

    .line 344
    .local v1, "request":Lcom/urbanairship/location/UALocationManager$SingleLocationRequest;
    iget-object v2, p0, Lcom/urbanairship/location/UALocationManager;->singleLocationRequests:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 345
    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_37

    .line 347
    monitor-enter p0

    .line 348
    :try_start_2b
    iget-boolean v2, p0, Lcom/urbanairship/location/UALocationManager;->isBound:Z

    if-nez v2, :cond_3a

    .line 349
    invoke-direct {p0}, Lcom/urbanairship/location/UALocationManager;->bindService()V

    .line 353
    :goto_32
    monitor-exit p0

    goto :goto_15

    :catchall_34
    move-exception v2

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_2b .. :try_end_36} :catchall_34

    throw v2

    .line 345
    .end local v0    # "id":I
    .end local v1    # "request":Lcom/urbanairship/location/UALocationManager$SingleLocationRequest;
    :catchall_37
    move-exception v2

    :try_start_38
    monitor-exit v3
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v2

    .line 351
    .restart local v0    # "id":I
    .restart local v1    # "request":Lcom/urbanairship/location/UALocationManager$SingleLocationRequest;
    :cond_3a
    :try_start_3a
    invoke-virtual {v1}, Lcom/urbanairship/location/UALocationManager$SingleLocationRequest;->sendLocationRequest()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_34

    goto :goto_32
.end method

.method public setBackgroundLocationAllowed(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 183
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.location.BACKGROUND_UPDATES_ALLOWED"

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Z)V

    .line 184
    return-void
.end method

.method setLastUpdateOptions(Lcom/urbanairship/location/LocationRequestOptions;)V
    .registers 4
    .param p1, "lastUpdateOptions"    # Lcom/urbanairship/location/LocationRequestOptions;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 230
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.location.LAST_REQUESTED_LOCATION_OPTIONS"

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Lcom/urbanairship/json/JsonSerializable;)V

    .line 231
    return-void
.end method

.method public setLocationRequestOptions(Lcom/urbanairship/location/LocationRequestOptions;)V
    .registers 4
    .param p1, "options"    # Lcom/urbanairship/location/LocationRequestOptions;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 193
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.location.LOCATION_OPTIONS"

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Lcom/urbanairship/json/JsonSerializable;)V

    .line 194
    return-void
.end method

.method public setLocationUpdatesEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 162
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.location.LOCATION_UPDATES_ENABLED"

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Z)V

    .line 163
    return-void
.end method

.method protected tearDown()V
    .registers 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager;->activityMonitor:Lcom/urbanairship/ActivityMonitor;

    iget-object v1, p0, Lcom/urbanairship/location/UALocationManager;->listener:Lcom/urbanairship/ActivityMonitor$Listener;

    invoke-virtual {v0, v1}, Lcom/urbanairship/ActivityMonitor;->removeListener(Lcom/urbanairship/ActivityMonitor$Listener;)V

    .line 137
    return-void
.end method
