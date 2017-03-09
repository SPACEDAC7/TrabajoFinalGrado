.class public Lcom/comscore/utils/ConnectivityChangeReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field protected a:Z

.field protected b:Z

.field protected c:J

.field protected d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/Runnable;

.field private final f:Lcom/comscore/analytics/Core;


# direct methods
.method public constructor <init>(Lcom/comscore/analytics/Core;)V
    .registers 5

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object v2, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->e:Ljava/lang/Runnable;

    iput-boolean v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->a:Z

    iput-boolean v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->b:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->c:J

    iput-object v2, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->d:Ljava/util/HashSet;

    iput-object p1, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->f:Lcom/comscore/analytics/Core;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->d:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->f:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    const-string v0, "onConnectedWifi()"

    invoke-static {p0, v0}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->f:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comscore/utils/ConnectivityChangeReceiver;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comscore/utils/ConnectivityChangeReceiver;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->f:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getOfflineTransmissionMode()Lcom/comscore/utils/TransmissionMode;

    move-result-object v0

    sget-object v1, Lcom/comscore/utils/TransmissionMode;->NEVER:Lcom/comscore/utils/TransmissionMode;

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->f:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getOfflineTransmissionMode()Lcom/comscore/utils/TransmissionMode;

    move-result-object v0

    sget-object v1, Lcom/comscore/utils/TransmissionMode;->DISABLED:Lcom/comscore/utils/TransmissionMode;

    if-eq v0, v1, :cond_8

    iget-boolean v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->a:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->a:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/comscore/utils/ConnectivityChangeReceiver;->a(Z)V

    goto :goto_8
.end method

.method protected a(J)V
    .registers 6

    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->f:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    new-instance v0, Lcom/comscore/utils/a;

    invoke-direct {v0, p0}, Lcom/comscore/utils/a;-><init>(Lcom/comscore/utils/ConnectivityChangeReceiver;)V

    iput-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->e:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->f:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getTaskExecutor()Lcom/comscore/utils/task/TaskExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Lcom/comscore/utils/task/TaskExecutor;->execute(Ljava/lang/Runnable;J)Z

    goto :goto_8
.end method

.method protected a(Landroid/content/Context;)V
    .registers 4

    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->f:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    const-string v0, "onConnectedMobile()"

    invoke-static {p0, v0}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "|||cs_3g|||"

    invoke-virtual {p0, v0}, Lcom/comscore/utils/ConnectivityChangeReceiver;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->f:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getOfflineTransmissionMode()Lcom/comscore/utils/TransmissionMode;

    move-result-object v0

    sget-object v1, Lcom/comscore/utils/TransmissionMode;->DEFAULT:Lcom/comscore/utils/TransmissionMode;

    if-eq v0, v1, :cond_2e

    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->f:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getOfflineTransmissionMode()Lcom/comscore/utils/TransmissionMode;

    move-result-object v0

    sget-object v1, Lcom/comscore/utils/TransmissionMode;->PIGGYBACK:Lcom/comscore/utils/TransmissionMode;

    if-ne v0, v1, :cond_8

    invoke-static {p1}, Lcom/comscore/utils/Connectivity;->isDataConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_2e
    iget-boolean v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->a:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->a:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/comscore/utils/ConnectivityChangeReceiver;->a(Z)V

    goto :goto_8
.end method

.method protected a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->f:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-static {p1}, Lcom/comscore/utils/Utils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->d:Ljava/util/HashSet;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->d:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lcom/comscore/utils/ConnectivityChangeReceiver;->d()V

    :cond_26
    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_8
.end method

.method protected a(Z)V
    .registers 10

    const-wide/16 v6, 0x7530

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->f:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    iget-boolean v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->b:Z

    if-eqz v0, :cond_55

    invoke-virtual {p0}, Lcom/comscore/utils/ConnectivityChangeReceiver;->c()V

    iget-wide v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->c:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_26

    iget-wide v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->c:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_26

    if-nez p1, :cond_2d

    :cond_26
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->c:J

    :cond_2d
    iget-wide v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->c:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/comscore/utils/ConnectivityChangeReceiver;->a(J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scheduleFlushTask(): Flushing in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->c:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_c

    :cond_55
    iget-wide v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->c:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_c

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->c:J

    goto :goto_c
.end method

.method protected b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/comscore/utils/Connectivity;->getCurrentSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b()V
    .registers 3

    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->f:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    const-string v0, "onDisconnected()"

    invoke-static {p0, v0}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/comscore/utils/ConnectivityChangeReceiver;->c()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->a:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->c:J

    goto :goto_8
.end method

.method protected declared-synchronized b(Z)V
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string v0, "flushing"

    invoke-static {p0, v0}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->f:Lcom/comscore/analytics/Core;

    invoke-virtual {v0, p1}, Lcom/comscore/analytics/Core;->flush(Z)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->c:J
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected c()V
    .registers 3

    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_17

    const-string v0, "cancelFlushTask()"

    invoke-static {p0, v0}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->f:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getTaskExecutor()Lcom/comscore/utils/task/TaskExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/comscore/utils/task/TaskExecutor;->removeEnqueuedTask(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->e:Ljava/lang/Runnable;

    :cond_17
    return-void
.end method

.method protected d()V
    .registers 5

    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->f:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->f:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getKeepAlive()Lcom/comscore/applications/KeepAlive;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Lcom/comscore/applications/KeepAlive;->reset(J)V

    goto :goto_8
.end method

.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-static {p1}, Lcom/comscore/utils/Connectivity;->isConnectedWiFi(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/comscore/utils/ConnectivityChangeReceiver;->a()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_1c

    :cond_10
    :goto_10
    monitor-exit p0

    return-void

    :cond_12
    :try_start_12
    invoke-static {p1}, Lcom/comscore/utils/Connectivity;->isConnectedMobile(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0, p1}, Lcom/comscore/utils/ConnectivityChangeReceiver;->a(Landroid/content/Context;)V
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1c

    goto :goto_10

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1f
    :try_start_1f
    invoke-virtual {p0}, Lcom/comscore/utils/ConnectivityChangeReceiver;->b()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_1c

    goto :goto_10
.end method

.method public declared-synchronized start()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->f:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1f

    move-result v0

    if-nez v0, :cond_b

    :cond_9
    :goto_9
    monitor-exit p0

    return-void

    :cond_b
    const/4 v0, 0x1

    :try_start_c
    iput-boolean v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->b:Z

    iget-boolean v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->a:Z

    if-eqz v0, :cond_9

    iget-wide v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_9

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/comscore/utils/ConnectivityChangeReceiver;->a(Z)V
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_1f

    goto :goto_9

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->b:Z

    invoke-virtual {p0}, Lcom/comscore/utils/ConnectivityChangeReceiver;->c()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
