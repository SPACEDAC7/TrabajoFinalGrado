.class public Lcom/urbanairship/automation/Automation;
.super Lcom/urbanairship/AirshipComponent;
.source "Automation.java"


# static fields
.field private static final AUTOMATION_ENABLED_KEY:Ljava/lang/String; = "com.urbanairship.automation.AUTOMATION_ENABLED"

.field private static final KEY_PREFIX:Ljava/lang/String; = "com.urbanairship.automation"

.field public static final SCHEDULES_LIMIT:J = 0x3e8L


# instance fields
.field private final activityMonitor:Lcom/urbanairship/ActivityMonitor;

.field private final analytics:Lcom/urbanairship/analytics/Analytics;

.field private analyticsListener:Lcom/urbanairship/analytics/AnalyticsListener;

.field private automationEnabled:Z

.field private final dataManager:Lcom/urbanairship/automation/AutomationDataManager;

.field private final dbRequestProcessingExecutor:Ljava/util/concurrent/Executor;

.field private final eventProcessingExecutor:Ljava/util/concurrent/Executor;

.field private final listener:Lcom/urbanairship/ActivityMonitor$Listener;

.field private final preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/urbanairship/AirshipConfigOptions;Lcom/urbanairship/analytics/Analytics;Lcom/urbanairship/PreferenceDataStore;Lcom/urbanairship/ActivityMonitor;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "configOptions"    # Lcom/urbanairship/AirshipConfigOptions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "analytics"    # Lcom/urbanairship/analytics/Analytics;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "preferenceDataStore"    # Lcom/urbanairship/PreferenceDataStore;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "activityMonitor"    # Lcom/urbanairship/ActivityMonitor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 78
    new-instance v0, Lcom/urbanairship/automation/AutomationDataManager;

    invoke-virtual {p2}, Lcom/urbanairship/AirshipConfigOptions;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/urbanairship/automation/AutomationDataManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, p3, v0, p4, p5}, Lcom/urbanairship/automation/Automation;-><init>(Lcom/urbanairship/analytics/Analytics;Lcom/urbanairship/automation/AutomationDataManager;Lcom/urbanairship/PreferenceDataStore;Lcom/urbanairship/ActivityMonitor;)V

    .line 79
    return-void
.end method

.method constructor <init>(Lcom/urbanairship/analytics/Analytics;Lcom/urbanairship/automation/AutomationDataManager;Lcom/urbanairship/PreferenceDataStore;Lcom/urbanairship/ActivityMonitor;)V
    .registers 6
    .param p1, "analytics"    # Lcom/urbanairship/analytics/Analytics;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "dataManager"    # Lcom/urbanairship/automation/AutomationDataManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "preferenceDataStore"    # Lcom/urbanairship/PreferenceDataStore;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "activityMonitor"    # Lcom/urbanairship/ActivityMonitor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/urbanairship/AirshipComponent;-><init>()V

    .line 51
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/automation/Automation;->eventProcessingExecutor:Ljava/util/concurrent/Executor;

    .line 52
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/automation/Automation;->dbRequestProcessingExecutor:Ljava/util/concurrent/Executor;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/automation/Automation;->automationEnabled:Z

    .line 83
    iput-object p1, p0, Lcom/urbanairship/automation/Automation;->analytics:Lcom/urbanairship/analytics/Analytics;

    .line 84
    iput-object p2, p0, Lcom/urbanairship/automation/Automation;->dataManager:Lcom/urbanairship/automation/AutomationDataManager;

    .line 85
    iput-object p3, p0, Lcom/urbanairship/automation/Automation;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    .line 86
    new-instance v0, Lcom/urbanairship/automation/Automation$1;

    invoke-direct {v0, p0}, Lcom/urbanairship/automation/Automation$1;-><init>(Lcom/urbanairship/automation/Automation;)V

    iput-object v0, p0, Lcom/urbanairship/automation/Automation;->listener:Lcom/urbanairship/ActivityMonitor$Listener;

    .line 97
    iput-object p4, p0, Lcom/urbanairship/automation/Automation;->activityMonitor:Lcom/urbanairship/ActivityMonitor;

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/automation/Automation;Lcom/urbanairship/json/JsonSerializable;ID)V
    .registers 6
    .param p0, "x0"    # Lcom/urbanairship/automation/Automation;
    .param p1, "x1"    # Lcom/urbanairship/json/JsonSerializable;
    .param p2, "x2"    # I
    .param p3, "x3"    # D

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/urbanairship/automation/Automation;->onEventAdded(Lcom/urbanairship/json/JsonSerializable;ID)V

    return-void
.end method

.method static synthetic access$100(Lcom/urbanairship/automation/Automation;Lcom/urbanairship/PendingResult$ResultCallback;Ljava/lang/Object;Landroid/os/Looper;)V
    .registers 4
    .param p0, "x0"    # Lcom/urbanairship/automation/Automation;
    .param p1, "x1"    # Lcom/urbanairship/PendingResult$ResultCallback;
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # Landroid/os/Looper;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/urbanairship/automation/Automation;->runCallback(Lcom/urbanairship/PendingResult$ResultCallback;Ljava/lang/Object;Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$200(Lcom/urbanairship/automation/Automation;)Lcom/urbanairship/automation/AutomationDataManager;
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/automation/Automation;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/urbanairship/automation/Automation;->dataManager:Lcom/urbanairship/automation/AutomationDataManager;

    return-object v0
.end method

.method private onEventAdded(Lcom/urbanairship/json/JsonSerializable;ID)V
    .registers 12
    .param p1, "json"    # Lcom/urbanairship/json/JsonSerializable;
    .param p2, "type"    # I
    .param p3, "value"    # D

    .prologue
    .line 543
    invoke-static {}, Lcom/urbanairship/UAirship;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_c

    .line 544
    const-string v0, "Automation - Cannot access the Automation API outside of the main process, canceling operation."

    invoke-static {v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    .line 642
    :cond_b
    :goto_b
    return-void

    .line 548
    :cond_c
    iget-boolean v0, p0, Lcom/urbanairship/automation/Automation;->automationEnabled:Z

    if-eqz v0, :cond_b

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Automation - updating triggers with type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 554
    iget-object v6, p0, Lcom/urbanairship/automation/Automation;->eventProcessingExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/urbanairship/automation/Automation$12;

    move-object v1, p0

    move v2, p2

    move-object v3, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/urbanairship/automation/Automation$12;-><init>(Lcom/urbanairship/automation/Automation;ILcom/urbanairship/json/JsonSerializable;D)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_b
.end method

.method private runCallback(Lcom/urbanairship/PendingResult$ResultCallback;Ljava/lang/Object;Landroid/os/Looper;)V
    .registers 6
    .param p1    # Lcom/urbanairship/PendingResult$ResultCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/urbanairship/PendingResult$ResultCallback",
            "<TT;>;TT;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .prologue
    .line 654
    .local p1, "callback":Lcom/urbanairship/PendingResult$ResultCallback;, "Lcom/urbanairship/PendingResult$ResultCallback<TT;>;"
    .local p2, "result":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_f

    .line 655
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 656
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/urbanairship/automation/Automation$13;

    invoke-direct {v1, p0, p1, p2}, Lcom/urbanairship/automation/Automation$13;-><init>(Lcom/urbanairship/automation/Automation;Lcom/urbanairship/PendingResult$ResultCallback;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 663
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_f
    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/String;)V
    .registers 3
    .param p1, "id"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 282
    invoke-static {}, Lcom/urbanairship/UAirship;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_c

    .line 283
    const-string v0, "Automation - Cannot access the Automation API outside of the main process, canceling operation."

    invoke-static {v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    .line 288
    :goto_b
    return-void

    .line 287
    :cond_c
    iget-object v0, p0, Lcom/urbanairship/automation/Automation;->dataManager:Lcom/urbanairship/automation/AutomationDataManager;

    invoke-virtual {v0, p1}, Lcom/urbanairship/automation/AutomationDataManager;->deleteSchedule(Ljava/lang/String;)V

    goto :goto_b
.end method

.method public cancel(Ljava/util/List;)V
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 316
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/urbanairship/UAirship;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_c

    .line 317
    const-string v0, "Automation - Cannot access the Automation API outside of the main process, canceling operation."

    invoke-static {v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    .line 322
    :goto_b
    return-void

    .line 321
    :cond_c
    iget-object v0, p0, Lcom/urbanairship/automation/Automation;->dataManager:Lcom/urbanairship/automation/AutomationDataManager;

    invoke-virtual {v0, p1}, Lcom/urbanairship/automation/AutomationDataManager;->bulkDeleteSchedules(Ljava/util/List;)V

    goto :goto_b
.end method

.method public cancelAll()V
    .registers 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 382
    invoke-static {}, Lcom/urbanairship/UAirship;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_c

    .line 383
    const-string v0, "Automation - Cannot access the Automation API outside of the main process, canceling operation."

    invoke-static {v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    .line 388
    :goto_b
    return-void

    .line 387
    :cond_c
    iget-object v0, p0, Lcom/urbanairship/automation/Automation;->dataManager:Lcom/urbanairship/automation/AutomationDataManager;

    invoke-virtual {v0}, Lcom/urbanairship/automation/AutomationDataManager;->deleteSchedules()V

    goto :goto_b
.end method

.method public cancelAllAsync()V
    .registers 3

    .prologue
    .line 394
    invoke-static {}, Lcom/urbanairship/UAirship;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_c

    .line 395
    const-string v0, "Automation - Cannot access the Automation API outside of the main process, canceling operation."

    invoke-static {v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    .line 405
    :goto_b
    return-void

    .line 399
    :cond_c
    iget-object v0, p0, Lcom/urbanairship/automation/Automation;->dbRequestProcessingExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/urbanairship/automation/Automation$8;

    invoke-direct {v1, p0}, Lcom/urbanairship/automation/Automation$8;-><init>(Lcom/urbanairship/automation/Automation;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_b
.end method

.method public cancelAsync(Ljava/lang/String;)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 296
    invoke-static {}, Lcom/urbanairship/UAirship;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_c

    .line 297
    const-string v0, "Automation - Cannot access the Automation API outside of the main process, canceling operation."

    invoke-static {v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    .line 307
    :goto_b
    return-void

    .line 301
    :cond_c
    iget-object v0, p0, Lcom/urbanairship/automation/Automation;->dbRequestProcessingExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/urbanairship/automation/Automation$5;

    invoke-direct {v1, p0, p1}, Lcom/urbanairship/automation/Automation$5;-><init>(Lcom/urbanairship/automation/Automation;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_b
.end method

.method public cancelAsync(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 330
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/urbanairship/UAirship;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_c

    .line 331
    const-string v0, "Automation - Cannot access the Automation API outside of the main process, canceling operation."

    invoke-static {v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    .line 341
    :goto_b
    return-void

    .line 335
    :cond_c
    iget-object v0, p0, Lcom/urbanairship/automation/Automation;->dbRequestProcessingExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/urbanairship/automation/Automation$6;

    invoke-direct {v1, p0, p1}, Lcom/urbanairship/automation/Automation$6;-><init>(Lcom/urbanairship/automation/Automation;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_b
.end method

.method public cancelGroup(Ljava/lang/String;)V
    .registers 3
    .param p1, "group"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 350
    invoke-static {}, Lcom/urbanairship/UAirship;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_c

    .line 351
    const-string v0, "Automation - Cannot access the Automation API outside of the main process, canceling operation."

    invoke-static {v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    .line 356
    :goto_b
    return-void

    .line 355
    :cond_c
    iget-object v0, p0, Lcom/urbanairship/automation/Automation;->dataManager:Lcom/urbanairship/automation/AutomationDataManager;

    invoke-virtual {v0, p1}, Lcom/urbanairship/automation/AutomationDataManager;->deleteSchedules(Ljava/lang/String;)V

    goto :goto_b
.end method

.method public cancelGroupAsync(Ljava/lang/String;)V
    .registers 4
    .param p1, "group"    # Ljava/lang/String;

    .prologue
    .line 364
    invoke-static {}, Lcom/urbanairship/UAirship;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_c

    .line 365
    const-string v0, "Automation - Cannot access the Automation API outside of the main process, canceling operation."

    invoke-static {v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    .line 375
    :goto_b
    return-void

    .line 369
    :cond_c
    iget-object v0, p0, Lcom/urbanairship/automation/Automation;->dbRequestProcessingExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/urbanairship/automation/Automation$7;

    invoke-direct {v1, p0, p1}, Lcom/urbanairship/automation/Automation$7;-><init>(Lcom/urbanairship/automation/Automation;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_b
.end method

.method public getSchedule(Ljava/lang/String;)Lcom/urbanairship/automation/ActionSchedule;
    .registers 3
    .param p1, "id"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 417
    invoke-static {}, Lcom/urbanairship/UAirship;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_d

    .line 418
    const-string v0, "Automation - Cannot access the Automation API outside of the main process, canceling operation."

    invoke-static {v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    .line 419
    const/4 v0, 0x0

    .line 422
    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/urbanairship/automation/Automation;->dataManager:Lcom/urbanairship/automation/AutomationDataManager;

    invoke-virtual {v0, p1}, Lcom/urbanairship/automation/AutomationDataManager;->getSchedule(Ljava/lang/String;)Lcom/urbanairship/automation/ActionSchedule;

    move-result-object v0

    goto :goto_c
.end method

.method public getScheduleAsync(Ljava/lang/String;Lcom/urbanairship/PendingResult$ResultCallback;)V
    .registers 6
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/urbanairship/PendingResult$ResultCallback",
            "<",
            "Lcom/urbanairship/automation/ActionSchedule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 434
    .local p2, "callback":Lcom/urbanairship/PendingResult$ResultCallback;, "Lcom/urbanairship/PendingResult$ResultCallback<Lcom/urbanairship/automation/ActionSchedule;>;"
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 436
    .local v0, "looper":Landroid/os/Looper;
    :goto_a
    invoke-static {}, Lcom/urbanairship/UAirship;->isMainProcess()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 437
    const-string v1, "Automation - Cannot access the Automation API outside of the main process, canceling operation and executing callback."

    invoke-static {v1}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    .line 438
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1, v0}, Lcom/urbanairship/automation/Automation;->runCallback(Lcom/urbanairship/PendingResult$ResultCallback;Ljava/lang/Object;Landroid/os/Looper;)V

    .line 449
    :goto_19
    return-void

    .line 434
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_1a
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_a

    .line 442
    .restart local v0    # "looper":Landroid/os/Looper;
    :cond_1f
    iget-object v1, p0, Lcom/urbanairship/automation/Automation;->dbRequestProcessingExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/urbanairship/automation/Automation$9;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/urbanairship/automation/Automation$9;-><init>(Lcom/urbanairship/automation/Automation;Ljava/lang/String;Lcom/urbanairship/PendingResult$ResultCallback;Landroid/os/Looper;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_19
.end method

.method public getSchedules()Ljava/util/List;
    .registers 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/automation/ActionSchedule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 458
    invoke-static {}, Lcom/urbanairship/UAirship;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_10

    .line 459
    const-string v0, "Automation - Cannot access the Automation API outside of the main process, canceling operation."

    invoke-static {v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    .line 460
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 463
    :goto_f
    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/urbanairship/automation/Automation;->dataManager:Lcom/urbanairship/automation/AutomationDataManager;

    invoke-virtual {v0}, Lcom/urbanairship/automation/AutomationDataManager;->getSchedules()Ljava/util/List;

    move-result-object v0

    goto :goto_f
.end method

.method public getSchedules(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "group"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/automation/ActionSchedule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 499
    invoke-static {}, Lcom/urbanairship/UAirship;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_10

    .line 500
    const-string v0, "Automation - Cannot access the Automation API outside of the main process, canceling operation."

    invoke-static {v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    .line 501
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 504
    :goto_f
    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/urbanairship/automation/Automation;->dataManager:Lcom/urbanairship/automation/AutomationDataManager;

    invoke-virtual {v0, p1}, Lcom/urbanairship/automation/AutomationDataManager;->getSchedules(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_f
.end method

.method public getSchedulesAsync(Lcom/urbanairship/PendingResult$ResultCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/urbanairship/PendingResult$ResultCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/automation/ActionSchedule;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 474
    .local p1, "callback":Lcom/urbanairship/PendingResult$ResultCallback;, "Lcom/urbanairship/PendingResult$ResultCallback<Ljava/util/List<Lcom/urbanairship/automation/ActionSchedule;>;>;"
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 476
    .local v0, "looper":Landroid/os/Looper;
    :goto_a
    invoke-static {}, Lcom/urbanairship/UAirship;->isMainProcess()Z

    move-result v1

    if-nez v1, :cond_22

    .line 477
    const-string v1, "Automation - Cannot access the Automation API outside of the main process, canceling operation and executing callback."

    invoke-static {v1}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    .line 478
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1, v1, v0}, Lcom/urbanairship/automation/Automation;->runCallback(Lcom/urbanairship/PendingResult$ResultCallback;Ljava/lang/Object;Landroid/os/Looper;)V

    .line 489
    :goto_1c
    return-void

    .line 474
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_1d
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_a

    .line 482
    .restart local v0    # "looper":Landroid/os/Looper;
    :cond_22
    iget-object v1, p0, Lcom/urbanairship/automation/Automation;->dbRequestProcessingExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/urbanairship/automation/Automation$10;

    invoke-direct {v2, p0, p1, v0}, Lcom/urbanairship/automation/Automation$10;-><init>(Lcom/urbanairship/automation/Automation;Lcom/urbanairship/PendingResult$ResultCallback;Landroid/os/Looper;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1c
.end method

.method public getSchedulesAsync(Ljava/lang/String;Lcom/urbanairship/PendingResult$ResultCallback;)V
    .registers 6
    .param p1, "group"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/urbanairship/PendingResult$ResultCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/automation/ActionSchedule;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 516
    .local p2, "callback":Lcom/urbanairship/PendingResult$ResultCallback;, "Lcom/urbanairship/PendingResult$ResultCallback<Ljava/util/List<Lcom/urbanairship/automation/ActionSchedule;>;>;"
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 518
    .local v0, "looper":Landroid/os/Looper;
    :goto_a
    invoke-static {}, Lcom/urbanairship/UAirship;->isMainProcess()Z

    move-result v1

    if-nez v1, :cond_22

    .line 519
    const-string v1, "Automation - Cannot access the Automation API outside of the main process, canceling operation and executing callback."

    invoke-static {v1}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    .line 520
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p2, v1, v0}, Lcom/urbanairship/automation/Automation;->runCallback(Lcom/urbanairship/PendingResult$ResultCallback;Ljava/lang/Object;Landroid/os/Looper;)V

    .line 531
    :goto_1c
    return-void

    .line 516
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_1d
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_a

    .line 524
    .restart local v0    # "looper":Landroid/os/Looper;
    :cond_22
    iget-object v1, p0, Lcom/urbanairship/automation/Automation;->dbRequestProcessingExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/urbanairship/automation/Automation$11;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/urbanairship/automation/Automation$11;-><init>(Lcom/urbanairship/automation/Automation;Ljava/lang/String;Lcom/urbanairship/PendingResult$ResultCallback;Landroid/os/Looper;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1c
.end method

.method protected init()V
    .registers 4

    .prologue
    .line 102
    invoke-static {}, Lcom/urbanairship/UAirship;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_c

    .line 103
    const-string v0, "Automation - Cannot access the Automation API outside of the main process, canceling operation."

    invoke-static {v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    .line 135
    :goto_b
    return-void

    .line 107
    :cond_c
    iget-object v0, p0, Lcom/urbanairship/automation/Automation;->analyticsListener:Lcom/urbanairship/analytics/AnalyticsListener;

    if-nez v0, :cond_17

    .line 108
    new-instance v0, Lcom/urbanairship/automation/Automation$2;

    invoke-direct {v0, p0}, Lcom/urbanairship/automation/Automation$2;-><init>(Lcom/urbanairship/automation/Automation;)V

    iput-object v0, p0, Lcom/urbanairship/automation/Automation;->analyticsListener:Lcom/urbanairship/analytics/AnalyticsListener;

    .line 132
    :cond_17
    iget-object v0, p0, Lcom/urbanairship/automation/Automation;->activityMonitor:Lcom/urbanairship/ActivityMonitor;

    iget-object v1, p0, Lcom/urbanairship/automation/Automation;->listener:Lcom/urbanairship/ActivityMonitor$Listener;

    invoke-virtual {v0, v1}, Lcom/urbanairship/ActivityMonitor;->addListener(Lcom/urbanairship/ActivityMonitor$Listener;)V

    .line 133
    iget-object v0, p0, Lcom/urbanairship/automation/Automation;->analytics:Lcom/urbanairship/analytics/Analytics;

    iget-object v1, p0, Lcom/urbanairship/automation/Automation;->analyticsListener:Lcom/urbanairship/analytics/AnalyticsListener;

    invoke-virtual {v0, v1}, Lcom/urbanairship/analytics/Analytics;->addAnalyticsListener(Lcom/urbanairship/analytics/AnalyticsListener;)V

    .line 134
    iget-object v0, p0, Lcom/urbanairship/automation/Automation;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.automation.AUTOMATION_ENABLED"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/urbanairship/automation/Automation;->automationEnabled:Z

    goto :goto_b
.end method

.method public schedule(Lcom/urbanairship/automation/ActionScheduleInfo;)Lcom/urbanairship/automation/ActionSchedule;
    .registers 9
    .param p1, "scheduleInfo"    # Lcom/urbanairship/automation/ActionScheduleInfo;
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 158
    invoke-static {}, Lcom/urbanairship/UAirship;->isMainProcess()Z

    move-result v2

    if-nez v2, :cond_e

    .line 159
    const-string v2, "Automation - Cannot access the Automation API outside of the main process, canceling operation."

    invoke-static {v2}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    .line 183
    :cond_d
    :goto_d
    return-object v1

    .line 163
    :cond_e
    iget-object v2, p0, Lcom/urbanairship/automation/Automation;->dataManager:Lcom/urbanairship/automation/AutomationDataManager;

    invoke-virtual {v2}, Lcom/urbanairship/automation/AutomationDataManager;->getScheduleCount()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_20

    .line 164
    const-string v2, "AutomationDataManager - unable to insert schedule due to exceeded schedule limit."

    invoke-static {v2}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_d

    .line 168
    :cond_20
    iget-object v2, p0, Lcom/urbanairship/automation/Automation;->dataManager:Lcom/urbanairship/automation/AutomationDataManager;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/urbanairship/automation/AutomationDataManager;->insertSchedules(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 170
    .local v0, "insertSchedules":Ljava/util/List;, "Ljava/util/List<Lcom/urbanairship/automation/ActionSchedule;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    .line 174
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/urbanairship/automation/ActionSchedule;

    .line 176
    .local v1, "insertedSchedule":Lcom/urbanairship/automation/ActionSchedule;
    iget-boolean v2, p0, Lcom/urbanairship/automation/Automation;->automationEnabled:Z

    if-nez v2, :cond_44

    .line 177
    iput-boolean v6, p0, Lcom/urbanairship/automation/Automation;->automationEnabled:Z

    .line 178
    iget-object v2, p0, Lcom/urbanairship/automation/Automation;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v3, "com.urbanairship.automation.AUTOMATION_ENABLED"

    invoke-virtual {v2, v3, v6}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Z)V

    .line 181
    :cond_44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Automation - action schedule inserted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    goto :goto_d
.end method

.method public schedule(Ljava/util/List;)Ljava/util/List;
    .registers 9
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/automation/ActionScheduleInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/automation/ActionSchedule;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "scheduleInfos":Ljava/util/List;, "Ljava/util/List<Lcom/urbanairship/automation/ActionScheduleInfo;>;"
    const/4 v6, 0x1

    .line 224
    invoke-static {}, Lcom/urbanairship/UAirship;->isMainProcess()Z

    move-result v1

    if-nez v1, :cond_11

    .line 225
    const-string v1, "Automation - Cannot access the Automation API outside of the main process, canceling operation."

    invoke-static {v1}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    .line 226
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 244
    :cond_10
    :goto_10
    return-object v0

    .line 229
    :cond_11
    iget-object v1, p0, Lcom/urbanairship/automation/Automation;->dataManager:Lcom/urbanairship/automation/AutomationDataManager;

    invoke-virtual {v1}, Lcom/urbanairship/automation/AutomationDataManager;->getScheduleCount()J

    move-result-wide v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v1, v2, v4

    if-ltz v1, :cond_2d

    .line 230
    const-string v1, "AutomationDataManager - unable to insert schedule due to schedule exceeded limit."

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 231
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_10

    .line 234
    :cond_2d
    iget-object v1, p0, Lcom/urbanairship/automation/Automation;->dataManager:Lcom/urbanairship/automation/AutomationDataManager;

    invoke-virtual {v1, p1}, Lcom/urbanairship/automation/AutomationDataManager;->insertSchedules(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 235
    .local v0, "actionSchedules":Ljava/util/List;, "Ljava/util/List<Lcom/urbanairship/automation/ActionSchedule;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    .line 236
    iget-boolean v1, p0, Lcom/urbanairship/automation/Automation;->automationEnabled:Z

    if-nez v1, :cond_46

    .line 237
    iput-boolean v6, p0, Lcom/urbanairship/automation/Automation;->automationEnabled:Z

    .line 238
    iget-object v1, p0, Lcom/urbanairship/automation/Automation;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v2, "com.urbanairship.automation.AUTOMATION_ENABLED"

    invoke-virtual {v1, v2, v6}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Z)V

    .line 241
    :cond_46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Automation - action schedule inserted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    goto :goto_10
.end method

.method public scheduleAsync(Lcom/urbanairship/automation/ActionScheduleInfo;Lcom/urbanairship/PendingResult$ResultCallback;)V
    .registers 6
    .param p1, "scheduleInfo"    # Lcom/urbanairship/automation/ActionScheduleInfo;
    .param p2    # Lcom/urbanairship/PendingResult$ResultCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/urbanairship/automation/ActionScheduleInfo;",
            "Lcom/urbanairship/PendingResult$ResultCallback",
            "<",
            "Lcom/urbanairship/automation/ActionSchedule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p2, "callback":Lcom/urbanairship/PendingResult$ResultCallback;, "Lcom/urbanairship/PendingResult$ResultCallback<Lcom/urbanairship/automation/ActionSchedule;>;"
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 198
    .local v0, "looper":Landroid/os/Looper;
    :goto_a
    invoke-static {}, Lcom/urbanairship/UAirship;->isMainProcess()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 199
    const-string v1, "Automation - Cannot access the Automation API outside of the main process, canceling operation and executing callback."

    invoke-static {v1}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    .line 200
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1, v0}, Lcom/urbanairship/automation/Automation;->runCallback(Lcom/urbanairship/PendingResult$ResultCallback;Ljava/lang/Object;Landroid/os/Looper;)V

    .line 211
    :goto_19
    return-void

    .line 196
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_1a
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_a

    .line 204
    .restart local v0    # "looper":Landroid/os/Looper;
    :cond_1f
    iget-object v1, p0, Lcom/urbanairship/automation/Automation;->dbRequestProcessingExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/urbanairship/automation/Automation$3;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/urbanairship/automation/Automation$3;-><init>(Lcom/urbanairship/automation/Automation;Lcom/urbanairship/automation/ActionScheduleInfo;Lcom/urbanairship/PendingResult$ResultCallback;Landroid/os/Looper;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_19
.end method

.method public scheduleAsync(Ljava/util/List;Lcom/urbanairship/PendingResult$ResultCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/automation/ActionScheduleInfo;",
            ">;",
            "Lcom/urbanairship/PendingResult$ResultCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/automation/ActionSchedule;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 258
    .local p1, "scheduleInfos":Ljava/util/List;, "Ljava/util/List<Lcom/urbanairship/automation/ActionScheduleInfo;>;"
    .local p2, "callback":Lcom/urbanairship/PendingResult$ResultCallback;, "Lcom/urbanairship/PendingResult$ResultCallback<Ljava/util/List<Lcom/urbanairship/automation/ActionSchedule;>;>;"
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 260
    .local v0, "looper":Landroid/os/Looper;
    :goto_a
    invoke-static {}, Lcom/urbanairship/UAirship;->isMainProcess()Z

    move-result v1

    if-nez v1, :cond_22

    .line 261
    const-string v1, "Automation - Cannot access the Automation API outside of the main process, canceling operation and executing callback."

    invoke-static {v1}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    .line 262
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p2, v1, v0}, Lcom/urbanairship/automation/Automation;->runCallback(Lcom/urbanairship/PendingResult$ResultCallback;Ljava/lang/Object;Landroid/os/Looper;)V

    .line 273
    :goto_1c
    return-void

    .line 258
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_1d
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_a

    .line 266
    .restart local v0    # "looper":Landroid/os/Looper;
    :cond_22
    iget-object v1, p0, Lcom/urbanairship/automation/Automation;->dbRequestProcessingExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/urbanairship/automation/Automation$4;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/urbanairship/automation/Automation$4;-><init>(Lcom/urbanairship/automation/Automation;Ljava/util/List;Lcom/urbanairship/PendingResult$ResultCallback;Landroid/os/Looper;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1c
.end method

.method protected tearDown()V
    .registers 3

    .prologue
    .line 139
    invoke-static {}, Lcom/urbanairship/UAirship;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_c

    .line 140
    const-string v0, "Automation - Cannot access the Automation API outside of the main process, canceling operation."

    invoke-static {v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    .line 145
    :goto_b
    return-void

    .line 144
    :cond_c
    iget-object v0, p0, Lcom/urbanairship/automation/Automation;->activityMonitor:Lcom/urbanairship/ActivityMonitor;

    iget-object v1, p0, Lcom/urbanairship/automation/Automation;->listener:Lcom/urbanairship/ActivityMonitor$Listener;

    invoke-virtual {v0, v1}, Lcom/urbanairship/ActivityMonitor;->removeListener(Lcom/urbanairship/ActivityMonitor$Listener;)V

    goto :goto_b
.end method
