.class Lcom/crashlytics/android/answers/SessionAnalyticsManager;
.super Ljava/lang/Object;
.source "SessionAnalyticsManager.java"

# interfaces
.implements Lcom/crashlytics/android/answers/BackgroundManager$Listener;


# static fields
.field static final EXECUTOR_SERVICE:Ljava/lang/String; = "Answers Events Handler"

.field static final FIRST_LAUNCH_INTERVAL_IN_MS:J = 0x36ee80L

.field static final ON_CRASH_ERROR_MSG:Ljava/lang/String; = "onCrash called from main thread!!!"


# instance fields
.field final backgroundManager:Lcom/crashlytics/android/answers/BackgroundManager;

.field final eventsHandler:Lcom/crashlytics/android/answers/AnswersEventsHandler;

.field private final installedAt:J

.field final lifecycleManager:Lio/fabric/sdk/android/ActivityLifecycleManager;

.field final preferenceManager:Lcom/crashlytics/android/answers/AnswersPreferenceManager;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/answers/AnswersEventsHandler;Lio/fabric/sdk/android/ActivityLifecycleManager;Lcom/crashlytics/android/answers/BackgroundManager;Lcom/crashlytics/android/answers/AnswersPreferenceManager;J)V
    .registers 8
    .param p1, "eventsHandler"    # Lcom/crashlytics/android/answers/AnswersEventsHandler;
    .param p2, "lifecycleManager"    # Lio/fabric/sdk/android/ActivityLifecycleManager;
    .param p3, "backgroundManager"    # Lcom/crashlytics/android/answers/BackgroundManager;
    .param p4, "preferenceManager"    # Lcom/crashlytics/android/answers/AnswersPreferenceManager;
    .param p5, "installedAt"    # J

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->eventsHandler:Lcom/crashlytics/android/answers/AnswersEventsHandler;

    .line 61
    iput-object p2, p0, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->lifecycleManager:Lio/fabric/sdk/android/ActivityLifecycleManager;

    .line 62
    iput-object p3, p0, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->backgroundManager:Lcom/crashlytics/android/answers/BackgroundManager;

    .line 63
    iput-object p4, p0, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->preferenceManager:Lcom/crashlytics/android/answers/AnswersPreferenceManager;

    .line 64
    iput-wide p5, p0, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->installedAt:J

    .line 65
    return-void
.end method

.method public static build(Lio/fabric/sdk/android/Kit;Landroid/content/Context;Lio/fabric/sdk/android/services/common/IdManager;Ljava/lang/String;Ljava/lang/String;J)Lcom/crashlytics/android/answers/SessionAnalyticsManager;
    .registers 26
    .param p0, "kit"    # Lio/fabric/sdk/android/Kit;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "idManager"    # Lio/fabric/sdk/android/services/common/IdManager;
    .param p3, "versionCode"    # Ljava/lang/String;
    .param p4, "versionName"    # Ljava/lang/String;
    .param p5, "installedAt"    # J

    .prologue
    .line 38
    new-instance v8, Lcom/crashlytics/android/answers/SessionMetadataCollector;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v8, v0, v1, v2, v3}, Lcom/crashlytics/android/answers/SessionMetadataCollector;-><init>(Landroid/content/Context;Lio/fabric/sdk/android/services/common/IdManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .local v8, "metadataCollector":Lcom/crashlytics/android/answers/SessionMetadataCollector;
    new-instance v7, Lcom/crashlytics/android/answers/AnswersFilesManagerProvider;

    new-instance v5, Lio/fabric/sdk/android/services/persistence/FileStoreImpl;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lio/fabric/sdk/android/services/persistence/FileStoreImpl;-><init>(Lio/fabric/sdk/android/Kit;)V

    move-object/from16 v0, p1

    invoke-direct {v7, v0, v5}, Lcom/crashlytics/android/answers/AnswersFilesManagerProvider;-><init>(Landroid/content/Context;Lio/fabric/sdk/android/services/persistence/FileStore;)V

    .line 42
    .local v7, "filesManagerProvider":Lcom/crashlytics/android/answers/AnswersFilesManagerProvider;
    new-instance v9, Lio/fabric/sdk/android/services/network/DefaultHttpRequestFactory;

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v5

    invoke-direct {v9, v5}, Lio/fabric/sdk/android/services/network/DefaultHttpRequestFactory;-><init>(Lio/fabric/sdk/android/Logger;)V

    .line 44
    .local v9, "httpRequestFactory":Lio/fabric/sdk/android/services/network/DefaultHttpRequestFactory;
    new-instance v13, Lio/fabric/sdk/android/ActivityLifecycleManager;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lio/fabric/sdk/android/ActivityLifecycleManager;-><init>(Landroid/content/Context;)V

    .line 45
    .local v13, "lifecycleManager":Lio/fabric/sdk/android/ActivityLifecycleManager;
    const-string v5, "Answers Events Handler"

    invoke-static {v5}, Lio/fabric/sdk/android/services/common/ExecutorUtils;->buildSingleThreadScheduledExecutorService(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v10

    .line 47
    .local v10, "executorService":Ljava/util/concurrent/ScheduledExecutorService;
    new-instance v14, Lcom/crashlytics/android/answers/BackgroundManager;

    invoke-direct {v14, v10}, Lcom/crashlytics/android/answers/BackgroundManager;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 48
    .local v14, "backgroundManager":Lcom/crashlytics/android/answers/BackgroundManager;
    new-instance v4, Lcom/crashlytics/android/answers/AnswersEventsHandler;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v4 .. v10}, Lcom/crashlytics/android/answers/AnswersEventsHandler;-><init>(Lio/fabric/sdk/android/Kit;Landroid/content/Context;Lcom/crashlytics/android/answers/AnswersFilesManagerProvider;Lcom/crashlytics/android/answers/SessionMetadataCollector;Lio/fabric/sdk/android/services/network/HttpRequestFactory;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 50
    .local v4, "eventsHandler":Lcom/crashlytics/android/answers/AnswersEventsHandler;
    invoke-static/range {p1 .. p1}, Lcom/crashlytics/android/answers/AnswersPreferenceManager;->build(Landroid/content/Context;)Lcom/crashlytics/android/answers/AnswersPreferenceManager;

    move-result-object v15

    .line 51
    .local v15, "preferenceManager":Lcom/crashlytics/android/answers/AnswersPreferenceManager;
    new-instance v11, Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    move-object v12, v4

    move-wide/from16 v16, p5

    invoke-direct/range {v11 .. v17}, Lcom/crashlytics/android/answers/SessionAnalyticsManager;-><init>(Lcom/crashlytics/android/answers/AnswersEventsHandler;Lio/fabric/sdk/android/ActivityLifecycleManager;Lcom/crashlytics/android/answers/BackgroundManager;Lcom/crashlytics/android/answers/AnswersPreferenceManager;J)V

    return-object v11
.end method


# virtual methods
.method public disable()V
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->lifecycleManager:Lio/fabric/sdk/android/ActivityLifecycleManager;

    invoke-virtual {v0}, Lio/fabric/sdk/android/ActivityLifecycleManager;->resetCallbacks()V

    .line 86
    iget-object v0, p0, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->eventsHandler:Lcom/crashlytics/android/answers/AnswersEventsHandler;

    invoke-virtual {v0}, Lcom/crashlytics/android/answers/AnswersEventsHandler;->disable()V

    .line 87
    return-void
.end method

.method public enable()V
    .registers 4

    .prologue
    .line 71
    iget-object v0, p0, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->eventsHandler:Lcom/crashlytics/android/answers/AnswersEventsHandler;

    invoke-virtual {v0}, Lcom/crashlytics/android/answers/AnswersEventsHandler;->enable()V

    .line 72
    iget-object v0, p0, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->lifecycleManager:Lio/fabric/sdk/android/ActivityLifecycleManager;

    new-instance v1, Lcom/crashlytics/android/answers/AnswersLifecycleCallbacks;

    iget-object v2, p0, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->backgroundManager:Lcom/crashlytics/android/answers/BackgroundManager;

    invoke-direct {v1, p0, v2}, Lcom/crashlytics/android/answers/AnswersLifecycleCallbacks;-><init>(Lcom/crashlytics/android/answers/SessionAnalyticsManager;Lcom/crashlytics/android/answers/BackgroundManager;)V

    invoke-virtual {v0, v1}, Lio/fabric/sdk/android/ActivityLifecycleManager;->registerCallbacks(Lio/fabric/sdk/android/ActivityLifecycleManager$Callbacks;)Z

    .line 73
    iget-object v0, p0, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->backgroundManager:Lcom/crashlytics/android/answers/BackgroundManager;

    invoke-virtual {v0, p0}, Lcom/crashlytics/android/answers/BackgroundManager;->registerListener(Lcom/crashlytics/android/answers/BackgroundManager$Listener;)V

    .line 75
    iget-wide v0, p0, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->installedAt:J

    invoke-virtual {p0, v0, v1}, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->isFirstLaunch(J)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 76
    invoke-virtual {p0}, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->onInstall()V

    .line 77
    iget-object v0, p0, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->preferenceManager:Lcom/crashlytics/android/answers/AnswersPreferenceManager;

    invoke-virtual {v0}, Lcom/crashlytics/android/answers/AnswersPreferenceManager;->setAnalyticsLaunched()V

    .line 79
    :cond_26
    return-void
.end method

.method installedRecently(J)Z
    .registers 8
    .param p1, "installedAt"    # J

    .prologue
    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, p1

    .line 164
    .local v0, "timeDifferenceInMilliseconds":J
    const-wide/32 v2, 0x36ee80

    cmp-long v2, v0, v2

    if-gez v2, :cond_f

    const/4 v2, 0x1

    :goto_e
    return v2

    :cond_f
    const/4 v2, 0x0

    goto :goto_e
.end method

.method isFirstLaunch(J)Z
    .registers 4
    .param p1, "installedAt"    # J

    .prologue
    .line 153
    iget-object v0, p0, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->preferenceManager:Lcom/crashlytics/android/answers/AnswersPreferenceManager;

    invoke-virtual {v0}, Lcom/crashlytics/android/answers/AnswersPreferenceManager;->hasAnalyticsLaunched()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0, p1, p2}, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->installedRecently(J)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public onBackground()V
    .registers 4

    .prologue
    .line 133
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    const-string v1, "Answers"

    const-string v2, "Flush events when app is backgrounded"

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->eventsHandler:Lcom/crashlytics/android/answers/AnswersEventsHandler;

    invoke-virtual {v0}, Lcom/crashlytics/android/answers/AnswersEventsHandler;->flushEvents()V

    .line 135
    return-void
.end method

.method public onCrash(Ljava/lang/String;)V
    .registers 5
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_12

    .line 107
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onCrash called from main thread!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_12
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    const-string v1, "Answers"

    const-string v2, "Logged crash"

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->eventsHandler:Lcom/crashlytics/android/answers/AnswersEventsHandler;

    invoke-static {p1}, Lcom/crashlytics/android/answers/SessionEvent;->crashEventBuilder(Ljava/lang/String;)Lcom/crashlytics/android/answers/SessionEvent$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/AnswersEventsHandler;->processEventSync(Lcom/crashlytics/android/answers/SessionEvent$Builder;)V

    .line 115
    return-void
.end method

.method public onCustom(Lcom/crashlytics/android/answers/CustomEvent;)V
    .registers 6
    .param p1, "event"    # Lcom/crashlytics/android/answers/CustomEvent;

    .prologue
    .line 90
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    const-string v1, "Answers"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Logged custom event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->eventsHandler:Lcom/crashlytics/android/answers/AnswersEventsHandler;

    invoke-static {p1}, Lcom/crashlytics/android/answers/SessionEvent;->customEventBuilder(Lcom/crashlytics/android/answers/CustomEvent;)Lcom/crashlytics/android/answers/SessionEvent$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/AnswersEventsHandler;->processEventAsync(Lcom/crashlytics/android/answers/SessionEvent$Builder;)V

    .line 92
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .registers 2
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 119
    return-void
.end method

.method public onInstall()V
    .registers 4

    .prologue
    .line 122
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    const-string v1, "Answers"

    const-string v2, "Logged install"

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->eventsHandler:Lcom/crashlytics/android/answers/AnswersEventsHandler;

    invoke-static {}, Lcom/crashlytics/android/answers/SessionEvent;->installEventBuilder()Lcom/crashlytics/android/answers/SessionEvent$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/AnswersEventsHandler;->processEventAsyncAndFlush(Lcom/crashlytics/android/answers/SessionEvent$Builder;)V

    .line 124
    return-void
.end method

.method public onLifecycle(Landroid/app/Activity;Lcom/crashlytics/android/answers/SessionEvent$Type;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "type"    # Lcom/crashlytics/android/answers/SessionEvent$Type;

    .prologue
    .line 127
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    const-string v1, "Answers"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Logged lifecycle event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/crashlytics/android/answers/SessionEvent$Type;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->eventsHandler:Lcom/crashlytics/android/answers/AnswersEventsHandler;

    invoke-static {p2, p1}, Lcom/crashlytics/android/answers/SessionEvent;->lifecycleEventBuilder(Lcom/crashlytics/android/answers/SessionEvent$Type;Landroid/app/Activity;)Lcom/crashlytics/android/answers/SessionEvent$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/AnswersEventsHandler;->processEventAsync(Lcom/crashlytics/android/answers/SessionEvent$Builder;)V

    .line 129
    return-void
.end method

.method public onPredefined(Lcom/crashlytics/android/answers/PredefinedEvent;)V
    .registers 6
    .param p1, "event"    # Lcom/crashlytics/android/answers/PredefinedEvent;

    .prologue
    .line 95
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    const-string v1, "Answers"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Logged predefined event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->eventsHandler:Lcom/crashlytics/android/answers/AnswersEventsHandler;

    invoke-static {p1}, Lcom/crashlytics/android/answers/SessionEvent;->predefinedEventBuilder(Lcom/crashlytics/android/answers/PredefinedEvent;)Lcom/crashlytics/android/answers/SessionEvent$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/AnswersEventsHandler;->processEventAsync(Lcom/crashlytics/android/answers/SessionEvent$Builder;)V

    .line 97
    return-void
.end method

.method public setAnalyticsSettingsData(Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;Ljava/lang/String;)V
    .registers 5
    .param p1, "analyticsSettingsData"    # Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;
    .param p2, "protocolAndHostOverride"    # Ljava/lang/String;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->backgroundManager:Lcom/crashlytics/android/answers/BackgroundManager;

    iget-boolean v1, p1, Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;->flushOnBackground:Z

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/BackgroundManager;->setFlushOnBackground(Z)V

    .line 140
    iget-object v0, p0, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->eventsHandler:Lcom/crashlytics/android/answers/AnswersEventsHandler;

    invoke-virtual {v0, p1, p2}, Lcom/crashlytics/android/answers/AnswersEventsHandler;->setAnalyticsSettingsData(Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;Ljava/lang/String;)V

    .line 141
    return-void
.end method
