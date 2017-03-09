.class public Lcom/comscore/utils/CacheFlusher;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected a:Lcom/comscore/analytics/Core;

.field protected b:Landroid/os/Handler;

.field protected c:Z

.field protected d:J


# direct methods
.method public constructor <init>(Lcom/comscore/analytics/Core;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/comscore/utils/CacheFlusher;->d:J

    iput-object p1, p0, Lcom/comscore/utils/CacheFlusher;->a:Lcom/comscore/analytics/Core;

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    iget-object v0, p0, Lcom/comscore/utils/CacheFlusher;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getStorage()Lcom/comscore/utils/Storage;

    move-result-object v0

    const-string v1, "plannedFlushTime"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/Storage;->has(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_26

    :try_start_12
    iget-object v0, p0, Lcom/comscore/utils/CacheFlusher;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getStorage()Lcom/comscore/utils/Storage;

    move-result-object v0

    const-string v1, "plannedFlushTime"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/Storage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/utils/CacheFlusher;->d:J
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_26} :catch_27

    :cond_26
    :goto_26
    return-void

    :catch_27
    move-exception v0

    goto :goto_26
.end method

.method protected a(J)V
    .registers 6

    iput-wide p1, p0, Lcom/comscore/utils/CacheFlusher;->d:J

    iget-object v0, p0, Lcom/comscore/utils/CacheFlusher;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getStorage()Lcom/comscore/utils/Storage;

    move-result-object v0

    const-string v1, "plannedFlushTime"

    const/16 v2, 0xa

    invoke-static {p1, p2, v2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected b()V
    .registers 7

    iget-wide v0, p0, Lcom/comscore/utils/CacheFlusher;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_19

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/comscore/utils/CacheFlusher;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v2}, Lcom/comscore/analytics/Core;->getCacheFlushingInterval()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/comscore/utils/CacheFlusher;->a(J)V

    :cond_19
    iget-object v0, p0, Lcom/comscore/utils/CacheFlusher;->b:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/comscore/utils/CacheFlusher;->d:J

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected declared-synchronized c()V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/comscore/utils/CacheFlusher;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getCacheFlushingInterval()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2c

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/comscore/utils/CacheFlusher;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v2}, Lcom/comscore/analytics/Core;->getCacheFlushingInterval()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    :goto_1b
    invoke-virtual {p0, v0, v1}, Lcom/comscore/utils/CacheFlusher;->a(J)V

    iget-object v0, p0, Lcom/comscore/utils/CacheFlusher;->b:Landroid/os/Handler;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/comscore/utils/CacheFlusher;->b:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/comscore/utils/CacheFlusher;->b()V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2f

    :cond_2a
    monitor-exit p0

    return-void

    :cond_2c
    const-wide/16 v0, -0x1

    goto :goto_1b

    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected d()V
    .registers 3

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CacheFlusher"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/comscore/utils/CacheFlusher;->b:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/comscore/utils/CacheFlusher;->a()V

    return-void
.end method

.method protected e()V
    .registers 2

    iget-object v0, p0, Lcom/comscore/utils/CacheFlusher;->b:Landroid/os/Handler;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/comscore/utils/CacheFlusher;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/comscore/utils/CacheFlusher;->b:Landroid/os/Handler;

    :cond_10
    return-void
.end method

.method public declared-synchronized run()V
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "run(): Flushing the cache"

    invoke-static {p0, v0}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/utils/CacheFlusher;->a:Lcom/comscore/analytics/Core;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/comscore/analytics/Core;->flush(Z)V

    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/comscore/utils/CacheFlusher;->a(J)V

    invoke-virtual {p0}, Lcom/comscore/utils/CacheFlusher;->b()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-void

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string v0, "start()"

    invoke-static {p0, v0}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/comscore/utils/CacheFlusher;->c:Z

    iget-object v0, p0, Lcom/comscore/utils/CacheFlusher;->b:Landroid/os/Handler;

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/comscore/utils/CacheFlusher;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getCacheFlushingInterval()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_27

    iget-object v0, p0, Lcom/comscore/utils/CacheFlusher;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getCustomerC2()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lcom/comscore/utils/CacheFlusher;->d()V

    invoke-virtual {p0}, Lcom/comscore/utils/CacheFlusher;->b()V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    :cond_27
    monitor-exit p0

    return-void

    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .registers 2

    monitor-enter p0

    :try_start_1
    const-string/jumbo v0, "stop()"

    invoke-static {p0, v0}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/comscore/utils/CacheFlusher;->c:Z

    invoke-virtual {p0}, Lcom/comscore/utils/CacheFlusher;->e()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized update()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/comscore/utils/CacheFlusher;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getCacheFlushingInterval()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_32

    iget-object v0, p0, Lcom/comscore/utils/CacheFlusher;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getCustomerC2()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/comscore/utils/CacheFlusher;->b:Landroid/os/Handler;

    if-nez v0, :cond_27

    iget-boolean v0, p0, Lcom/comscore/utils/CacheFlusher;->c:Z

    if-eqz v0, :cond_27

    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/comscore/utils/CacheFlusher;->a(J)V

    invoke-virtual {p0}, Lcom/comscore/utils/CacheFlusher;->start()V
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_2f

    :cond_25
    :goto_25
    monitor-exit p0

    return-void

    :cond_27
    :try_start_27
    iget-object v0, p0, Lcom/comscore/utils/CacheFlusher;->b:Landroid/os/Handler;

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/comscore/utils/CacheFlusher;->c()V
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_2f

    goto :goto_25

    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_32
    const-wide/16 v0, -0x1

    :try_start_34
    invoke-virtual {p0, v0, v1}, Lcom/comscore/utils/CacheFlusher;->a(J)V

    invoke-virtual {p0}, Lcom/comscore/utils/CacheFlusher;->e()V
    :try_end_3a
    .catchall {:try_start_34 .. :try_end_3a} :catchall_2f

    goto :goto_25
.end method
