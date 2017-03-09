.class public Lcom/urbanairship/ActivityMonitor;
.super Ljava/lang/Object;
.source "ActivityMonitor.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/ActivityMonitor$Listener;
    }
.end annotation


# static fields
.field private static final BACKGROUND_DELAY_MS:J = 0x1f4L

.field private static singleton:Lcom/urbanairship/ActivityMonitor;


# instance fields
.field private final backgroundRunnable:Ljava/lang/Runnable;

.field private final handler:Landroid/os/Handler;

.field private isForeground:Z

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/ActivityMonitor$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private startedActivities:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/ActivityMonitor;->listeners:Ljava/util/List;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/urbanairship/ActivityMonitor;->startedActivities:I

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/urbanairship/ActivityMonitor;->handler:Landroid/os/Handler;

    .line 35
    new-instance v0, Lcom/urbanairship/ActivityMonitor$1;

    invoke-direct {v0, p0}, Lcom/urbanairship/ActivityMonitor$1;-><init>(Lcom/urbanairship/ActivityMonitor;)V

    iput-object v0, p0, Lcom/urbanairship/ActivityMonitor;->backgroundRunnable:Ljava/lang/Runnable;

    .line 45
    return-void
.end method

.method static synthetic access$002(Lcom/urbanairship/ActivityMonitor;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/ActivityMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/urbanairship/ActivityMonitor;->isForeground:Z

    return p1
.end method

.method static synthetic access$100(Lcom/urbanairship/ActivityMonitor;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/ActivityMonitor;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/urbanairship/ActivityMonitor;->listeners:Ljava/util/List;

    return-object v0
.end method

.method public static shared(Landroid/content/Context;)Lcom/urbanairship/ActivityMonitor;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 54
    sget-object v0, Lcom/urbanairship/ActivityMonitor;->singleton:Lcom/urbanairship/ActivityMonitor;

    if-eqz v0, :cond_7

    .line 55
    sget-object v0, Lcom/urbanairship/ActivityMonitor;->singleton:Lcom/urbanairship/ActivityMonitor;

    .line 60
    :goto_6
    return-object v0

    .line 58
    :cond_7
    new-instance v0, Lcom/urbanairship/ActivityMonitor;

    invoke-direct {v0}, Lcom/urbanairship/ActivityMonitor;-><init>()V

    sput-object v0, Lcom/urbanairship/ActivityMonitor;->singleton:Lcom/urbanairship/ActivityMonitor;

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    sget-object v1, Lcom/urbanairship/ActivityMonitor;->singleton:Lcom/urbanairship/ActivityMonitor;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 60
    sget-object v0, Lcom/urbanairship/ActivityMonitor;->singleton:Lcom/urbanairship/ActivityMonitor;

    goto :goto_6
.end method


# virtual methods
.method public addListener(Lcom/urbanairship/ActivityMonitor$Listener;)V
    .registers 4
    .param p1, "listener"    # Lcom/urbanairship/ActivityMonitor$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 69
    iget-object v1, p0, Lcom/urbanairship/ActivityMonitor;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 70
    :try_start_3
    iget-object v0, p0, Lcom/urbanairship/ActivityMonitor;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    monitor-exit v1

    .line 72
    return-void

    .line 71
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public isAppForegrounded()Z
    .registers 2

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/urbanairship/ActivityMonitor;->isForeground:Z

    return v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 96
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 142
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 122
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/urbanairship/ActivityMonitor;->listeners:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/ActivityMonitor$Listener;

    .line 123
    .local v0, "listener":Lcom/urbanairship/ActivityMonitor$Listener;
    invoke-virtual {v0, p1}, Lcom/urbanairship/ActivityMonitor$Listener;->onActivityPaused(Landroid/app/Activity;)V

    goto :goto_b

    .line 125
    .end local v0    # "listener":Lcom/urbanairship/ActivityMonitor$Listener;
    :cond_1b
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 115
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/urbanairship/ActivityMonitor;->listeners:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/ActivityMonitor$Listener;

    .line 116
    .local v0, "listener":Lcom/urbanairship/ActivityMonitor$Listener;
    invoke-virtual {v0, p1}, Lcom/urbanairship/ActivityMonitor$Listener;->onActivityResumed(Landroid/app/Activity;)V

    goto :goto_b

    .line 118
    .end local v0    # "listener":Lcom/urbanairship/ActivityMonitor$Listener;
    :cond_1b
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 139
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 100
    iget-object v1, p0, Lcom/urbanairship/ActivityMonitor;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/urbanairship/ActivityMonitor;->backgroundRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 101
    iget v1, p0, Lcom/urbanairship/ActivityMonitor;->startedActivities:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/urbanairship/ActivityMonitor;->startedActivities:I

    .line 102
    iget-boolean v1, p0, Lcom/urbanairship/ActivityMonitor;->isForeground:Z

    if-nez v1, :cond_35

    .line 103
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/urbanairship/ActivityMonitor;->isForeground:Z

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 105
    .local v2, "timeStamp":J
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/urbanairship/ActivityMonitor;->listeners:Ljava/util/List;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_23
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/ActivityMonitor$Listener;

    .line 106
    .local v0, "listener":Lcom/urbanairship/ActivityMonitor$Listener;
    if-eqz v0, :cond_23

    .line 107
    invoke-virtual {v0, v2, v3}, Lcom/urbanairship/ActivityMonitor$Listener;->onForeground(J)V

    goto :goto_23

    .line 111
    .end local v0    # "listener":Lcom/urbanairship/ActivityMonitor$Listener;
    .end local v2    # "timeStamp":J
    :cond_35
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 129
    iget v0, p0, Lcom/urbanairship/ActivityMonitor;->startedActivities:I

    if-lez v0, :cond_a

    .line 130
    iget v0, p0, Lcom/urbanairship/ActivityMonitor;->startedActivities:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/urbanairship/ActivityMonitor;->startedActivities:I

    .line 133
    :cond_a
    iget v0, p0, Lcom/urbanairship/ActivityMonitor;->startedActivities:I

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/urbanairship/ActivityMonitor;->isForeground:Z

    if-eqz v0, :cond_1b

    .line 134
    iget-object v0, p0, Lcom/urbanairship/ActivityMonitor;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/urbanairship/ActivityMonitor;->backgroundRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 136
    :cond_1b
    return-void
.end method

.method public removeListener(Lcom/urbanairship/ActivityMonitor$Listener;)V
    .registers 4
    .param p1, "listener"    # Lcom/urbanairship/ActivityMonitor$Listener;

    .prologue
    .line 80
    iget-object v1, p0, Lcom/urbanairship/ActivityMonitor;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 81
    :try_start_3
    iget-object v0, p0, Lcom/urbanairship/ActivityMonitor;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 82
    monitor-exit v1

    .line 83
    return-void

    .line 82
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method
