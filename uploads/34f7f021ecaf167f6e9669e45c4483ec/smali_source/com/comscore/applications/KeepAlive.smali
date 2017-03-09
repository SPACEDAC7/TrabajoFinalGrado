.class public Lcom/comscore/applications/KeepAlive;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected final a:J

.field protected b:J

.field protected c:J

.field private d:Lcom/comscore/analytics/Core;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/comscore/analytics/Core;J)V
    .registers 8

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/comscore/applications/KeepAlive;->b:J

    iput-boolean v2, p0, Lcom/comscore/applications/KeepAlive;->e:Z

    iput-boolean v2, p0, Lcom/comscore/applications/KeepAlive;->f:Z

    iput-wide p2, p0, Lcom/comscore/applications/KeepAlive;->a:J

    iget-wide v0, p0, Lcom/comscore/applications/KeepAlive;->a:J

    iput-wide v0, p0, Lcom/comscore/applications/KeepAlive;->c:J

    iput-object p1, p0, Lcom/comscore/applications/KeepAlive;->d:Lcom/comscore/analytics/Core;

    return-void
.end method

.method private a(Lcom/comscore/utils/Storage;)J
    .registers 6

    const-wide/16 v0, 0x0

    const-string v2, "lastMeasurementProcessedTimestamp"

    invoke-virtual {p1, v2}, Lcom/comscore/utils/Storage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_14

    :try_start_10
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_13} :catch_15

    move-result-wide v0

    :cond_14
    :goto_14
    return-wide v0

    :catch_15
    move-exception v2

    goto :goto_14
.end method


# virtual methods
.method protected a()V
    .registers 9

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/comscore/applications/KeepAlive;->d:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/comscore/applications/KeepAlive;->d:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getTaskExecutor()Lcom/comscore/utils/task/TaskExecutor;

    move-result-object v0

    iget-wide v2, p0, Lcom/comscore/applications/KeepAlive;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v2, v6

    iget-wide v5, p0, Lcom/comscore/applications/KeepAlive;->a:J

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/comscore/utils/task/TaskExecutor;->execute(Ljava/lang/Runnable;JZJ)Z

    iput-boolean v4, p0, Lcom/comscore/applications/KeepAlive;->f:Z

    goto :goto_9
.end method

.method public cancel()V
    .registers 3

    const-string v0, "KeepAlive"

    const-string v1, "cancel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/comscore/applications/KeepAlive;->d:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getTaskExecutor()Lcom/comscore/utils/task/TaskExecutor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/comscore/utils/task/TaskExecutor;->removeEnqueuedTask(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/comscore/applications/KeepAlive;->f:Z

    return-void
.end method

.method public processKeepAlive(Z)V
    .registers 13

    const/4 v10, 0x1

    iget-object v0, p0, Lcom/comscore/applications/KeepAlive;->d:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/comscore/applications/KeepAlive;->d:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isKeepAliveEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/comscore/applications/KeepAlive;->d:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getOfflineCache()Lcom/comscore/utils/OfflineMeasurementsCache;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/applications/KeepAlive;->d:Lcom/comscore/analytics/Core;

    invoke-virtual {v1}, Lcom/comscore/analytics/Core;->getStorage()Lcom/comscore/utils/Storage;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/comscore/applications/KeepAlive;->a(Lcom/comscore/utils/Storage;)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-string v1, "KeepAlive"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processKeepAlive("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") timeSinceLastTransmission="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " currentTimeout="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/comscore/applications/KeepAlive;->c:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-eqz v1, :cond_9

    iget-wide v2, p0, Lcom/comscore/applications/KeepAlive;->c:J

    const-wide/16 v6, 0x3e8

    sub-long/2addr v2, v6

    cmp-long v1, v4, v2

    if-lez v1, :cond_9

    const-string v1, "KeepAlive"

    const-string v2, "Sending Keep-alive"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_93

    iget-object v0, p0, Lcom/comscore/applications/KeepAlive;->d:Lcom/comscore/analytics/Core;

    sget-object v1, Lcom/comscore/applications/EventType;->KEEPALIVE:Lcom/comscore/applications/EventType;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1, v2, v10}, Lcom/comscore/analytics/Core;->notify(Lcom/comscore/applications/EventType;Ljava/util/HashMap;Z)V

    :goto_7e
    iget-object v0, p0, Lcom/comscore/applications/KeepAlive;->d:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getStorage()Lcom/comscore/utils/Storage;

    move-result-object v0

    const-string v1, "lastMeasurementProcessedTimestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_93
    sget-object v1, Lcom/comscore/applications/EventType;->KEEPALIVE:Lcom/comscore/applications/EventType;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v10}, Lcom/comscore/utils/OfflineMeasurementsCache;->saveApplicationMeasurement(Lcom/comscore/applications/EventType;Ljava/util/HashMap;Z)V

    goto :goto_7e
.end method

.method public reset()V
    .registers 3

    iget-wide v0, p0, Lcom/comscore/applications/KeepAlive;->a:J

    invoke-virtual {p0, v0, v1}, Lcom/comscore/applications/KeepAlive;->reset(J)V

    return-void
.end method

.method public reset(J)V
    .registers 6

    iget-object v0, p0, Lcom/comscore/applications/KeepAlive;->d:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-virtual {p0}, Lcom/comscore/applications/KeepAlive;->cancel()V

    const-string v0, "KeepAlive"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/comscore/applications/KeepAlive;->b:J

    iput-wide p1, p0, Lcom/comscore/applications/KeepAlive;->c:J

    iget-boolean v0, p0, Lcom/comscore/applications/KeepAlive;->e:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/comscore/applications/KeepAlive;->start(I)V

    goto :goto_8
.end method

.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/comscore/applications/KeepAlive;->d:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-boolean v0, p0, Lcom/comscore/applications/KeepAlive;->f:Z

    if-eqz v0, :cond_8

    const-string v0, "KeepAlive"

    const-string v1, "run()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/comscore/applications/KeepAlive;->sendKeepAlive()V

    goto :goto_8
.end method

.method public sendKeepAlive()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/comscore/applications/KeepAlive;->processKeepAlive(Z)V

    return-void
.end method

.method public start(I)V
    .registers 6

    iget-object v0, p0, Lcom/comscore/applications/KeepAlive;->d:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-virtual {p0}, Lcom/comscore/applications/KeepAlive;->cancel()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/comscore/applications/KeepAlive;->e:Z

    const-string v0, "KeepAlive"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/comscore/applications/KeepAlive;->d:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isKeepAliveEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/comscore/applications/KeepAlive;->b:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_43

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/comscore/applications/KeepAlive;->b:J

    :cond_43
    invoke-virtual {p0}, Lcom/comscore/applications/KeepAlive;->a()V

    goto :goto_8
.end method

.method public stop()V
    .registers 3

    const-string v0, "KeepAlive"

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/comscore/applications/KeepAlive;->e:Z

    invoke-virtual {p0}, Lcom/comscore/applications/KeepAlive;->cancel()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/comscore/applications/KeepAlive;->processKeepAlive(Z)V

    return-void
.end method
