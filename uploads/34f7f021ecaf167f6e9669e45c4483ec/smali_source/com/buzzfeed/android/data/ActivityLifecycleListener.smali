.class public Lcom/buzzfeed/android/data/ActivityLifecycleListener;
.super Ljava/lang/Object;
.source "ActivityLifecycleListener.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static final AB_EXPERIMENT_JSON:Ljava/lang/String; = "ab_experiments.json"

.field static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-class v0, Lcom/buzzfeed/android/data/ActivityLifecycleListener;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/data/ActivityLifecycleListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static initializeExperimentManager(Landroid/app/Activity;)V
    .registers 11
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 70
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/buzzfeed/android/data/ActivityLifecycleListener;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".initializeExperimentManager"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "TAG":Ljava/lang/String;
    new-instance v6, Lcom/buzzfeed/androidabframework/util/CodeTimer;

    invoke-direct {v6}, Lcom/buzzfeed/androidabframework/util/CodeTimer;-><init>()V

    invoke-virtual {v6}, Lcom/buzzfeed/androidabframework/util/CodeTimer;->start()Lcom/buzzfeed/androidabframework/util/CodeTimer;

    move-result-object v1

    .line 72
    .local v1, "codeTimer":Lcom/buzzfeed/androidabframework/util/CodeTimer;
    new-instance v6, Lcom/buzzfeed/toolkit/doorbell/Doorbell;

    invoke-direct {v6, p0}, Lcom/buzzfeed/toolkit/doorbell/Doorbell;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Lcom/buzzfeed/toolkit/doorbell/Doorbell;->getUserIdentifier()Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, "userId":Ljava/lang/String;
    invoke-static {}, Lcom/buzzfeed/android/data/EnvironmentConfig;->isProductionBuild()Z

    move-result v6

    if-eqz v6, :cond_78

    sget-object v2, Lcom/buzzfeed/androidabframework/util/Environment;->Production:Lcom/buzzfeed/androidabframework/util/Environment;

    .line 78
    .local v2, "environment":Lcom/buzzfeed/androidabframework/util/Environment;
    :goto_2f
    invoke-static {}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->getInstance()Lcom/buzzfeed/androidabframework/controller/ExperimentManager;

    move-result-object v6

    invoke-virtual {v6, p0, v2}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->setEnvironment(Landroid/content/Context;Lcom/buzzfeed/androidabframework/util/Environment;)V

    .line 81
    invoke-static {}, Lcom/buzzfeed/android/data/EnvironmentConfig;->isProductionBuild()Z

    move-result v6

    if-eqz v6, :cond_82

    sget-object v6, Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference$TimeOut;->ONE_HOUR:Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference$TimeOut;

    .line 82
    invoke-virtual {v6}, Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference$TimeOut;->milliseconds()J

    move-result-wide v4

    .line 84
    .local v4, "timeOut":J
    :goto_42
    invoke-static {}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->getInstance()Lcom/buzzfeed/androidabframework/controller/ExperimentManager;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->setCacheTTL(J)V

    .line 86
    invoke-static {}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->getInstance()Lcom/buzzfeed/androidabframework/controller/ExperimentManager;

    move-result-object v6

    const-string v7, "ab_experiments.json"

    new-instance v8, Lcom/buzzfeed/android/data/ActivityLifecycleListener$1;

    invoke-direct {v8, v0, v1}, Lcom/buzzfeed/android/data/ActivityLifecycleListener$1;-><init>(Ljava/lang/String;Lcom/buzzfeed/androidabframework/util/CodeTimer;)V

    invoke-virtual {v6, p0, v7, v3, v8}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/buzzfeed/androidabframework/controller/ExperimentManager$CallbackInterface;)Lcom/buzzfeed/androidabframework/util/ReturnCode;

    .line 96
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Finished synchronous A/B Experiments initialization (in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/buzzfeed/androidabframework/util/CodeTimer;->getElapsedSeconds()D

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " secs)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void

    .line 75
    .end local v2    # "environment":Lcom/buzzfeed/androidabframework/util/Environment;
    .end local v4    # "timeOut":J
    :cond_78
    new-instance v6, Lcom/buzzfeed/android/data/preferences/ABExperimentServerPreference;

    invoke-direct {v6, p0}, Lcom/buzzfeed/android/data/preferences/ABExperimentServerPreference;-><init>(Landroid/content/Context;)V

    .line 77
    invoke-virtual {v6}, Lcom/buzzfeed/android/data/preferences/ABExperimentServerPreference;->getValue()Lcom/buzzfeed/androidabframework/util/Environment;

    move-result-object v2

    goto :goto_2f

    .line 82
    .restart local v2    # "environment":Lcom/buzzfeed/androidabframework/util/Environment;
    :cond_82
    new-instance v6, Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference;

    invoke-direct {v6, p0}, Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference;-><init>(Landroid/content/Context;)V

    .line 83
    invoke-virtual {v6}, Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference;->getValue()Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference$TimeOut;

    move-result-object v6

    invoke-virtual {v6}, Lcom/buzzfeed/android/data/preferences/ABCacheTimeoutPreference$TimeOut;->milliseconds()J

    move-result-wide v4

    goto :goto_42
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-static {}, Lcom/buzzfeed/android/util/DiscriminatingTracker;->getInstance()Lcom/buzzfeed/android/util/DiscriminatingTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/buzzfeed/android/util/DiscriminatingTracker;->enable()V

    .line 31
    invoke-static {p1}, Lcom/buzzfeed/android/data/ActivityLifecycleListener;->initializeExperimentManager(Landroid/app/Activity;)V

    .line 33
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 64
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 48
    invoke-static {}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->onActivityPause()V

    .line 49
    invoke-static {}, Lcom/buzzfeed/analytics/client/DustbusterClient;->getInstance()Lcom/buzzfeed/analytics/client/DustbusterClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/buzzfeed/analytics/client/DustbusterClient;->pauseSession()V

    .line 50
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 42
    invoke-static {}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->onActivityResume()V

    .line 43
    invoke-static {}, Lcom/buzzfeed/analytics/client/DustbusterClient;->getInstance()Lcom/buzzfeed/analytics/client/DustbusterClient;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/analytics/client/DustbusterClient;->resumeSession(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 60
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 37
    invoke-static {p1}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->onActivityStart(Landroid/app/Activity;)V

    .line 38
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 54
    invoke-static {p1}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->onActivityStop(Landroid/app/Activity;)V

    .line 55
    invoke-static {}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->getInstance()Lcom/buzzfeed/androidabframework/controller/ExperimentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->onStop(Landroid/content/Context;)V

    .line 56
    return-void
.end method
