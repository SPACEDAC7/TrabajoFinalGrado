.class public Lcom/comscore/utils/task/TaskExecutor;
.super Ljava/lang/Object;


# static fields
.field private static final b:J = 0xc350L


# instance fields
.field a:Lcom/comscore/analytics/Core;

.field private c:Lcom/comscore/utils/task/TaskThread;

.field private d:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/comscore/utils/task/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/comscore/analytics/Core;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/comscore/utils/task/TaskExecutor;->a:Lcom/comscore/analytics/Core;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/comscore/utils/task/TaskExecutor;->d:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Lcom/comscore/utils/task/TaskThread;

    invoke-direct {v0, p0}, Lcom/comscore/utils/task/TaskThread;-><init>(Lcom/comscore/utils/task/TaskExecutor;)V

    iput-object v0, p0, Lcom/comscore/utils/task/TaskExecutor;->c:Lcom/comscore/utils/task/TaskThread;

    iget-object v0, p0, Lcom/comscore/utils/task/TaskExecutor;->c:Lcom/comscore/utils/task/TaskThread;

    invoke-virtual {v0}, Lcom/comscore/utils/task/TaskThread;->start()V

    return-void
.end method


# virtual methods
.method a()J
    .registers 6

    const-wide/32 v0, 0xc350

    iget-object v2, p0, Lcom/comscore/utils/task/TaskExecutor;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comscore/utils/task/a;

    invoke-virtual {v0}, Lcom/comscore/utils/task/a;->a()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    move-wide v2, v0

    goto :goto_a

    :cond_20
    return-wide v2
.end method

.method a(Lcom/comscore/utils/task/a;)V
    .registers 3

    iget-object v0, p0, Lcom/comscore/utils/task/TaskExecutor;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method b()Lcom/comscore/utils/task/a;
    .registers 7

    iget-object v0, p0, Lcom/comscore/utils/task/TaskExecutor;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comscore/utils/task/a;

    invoke-virtual {v0}, Lcom/comscore/utils/task/a;->f()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_6

    :goto_1e
    return-object v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public containsTask(Ljava/lang/Runnable;)Z
    .registers 5

    iget-object v0, p0, Lcom/comscore/utils/task/TaskExecutor;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comscore/utils/task/a;

    invoke-virtual {v0}, Lcom/comscore/utils/task/a;->i()Ljava/lang/Runnable;

    move-result-object v2

    if-eq v2, p1, :cond_1e

    instance-of v2, p1, Lcom/comscore/utils/task/a;

    if-eqz v2, :cond_6

    if-ne v0, p1, :cond_6

    :cond_1e
    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public execute(Ljava/lang/Runnable;J)Z
    .registers 12

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/comscore/utils/task/TaskExecutor;->execute(Ljava/lang/Runnable;JZJ)Z

    move-result v0

    return v0
.end method

.method public execute(Ljava/lang/Runnable;JZJ)Z
    .registers 16

    iget-object v0, p0, Lcom/comscore/utils/task/TaskExecutor;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comscore/utils/task/a;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/comscore/utils/task/a;->i()Ljava/lang/Runnable;

    move-result-object v0

    if-ne v0, p1, :cond_6

    const/4 v0, 0x0

    :goto_1b
    return v0

    :cond_1c
    iget-object v8, p0, Lcom/comscore/utils/task/TaskExecutor;->d:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Lcom/comscore/utils/task/a;

    iget-object v2, p0, Lcom/comscore/utils/task/TaskExecutor;->a:Lcom/comscore/analytics/Core;

    move-object v1, p1

    move-wide v3, p2

    move v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/comscore/utils/task/a;-><init>(Ljava/lang/Runnable;Lcom/comscore/analytics/Core;JZJ)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/comscore/utils/task/TaskExecutor;->c:Lcom/comscore/utils/task/TaskThread;

    invoke-virtual {v0}, Lcom/comscore/utils/task/TaskThread;->c()V

    const/4 v0, 0x1

    goto :goto_1b
.end method

.method public execute(Ljava/lang/Runnable;Z)Z
    .registers 7

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/comscore/utils/task/TaskExecutor;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v1}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_b

    const/4 v0, 0x0

    :goto_a
    return v0

    :cond_b
    if-nez p2, :cond_1f

    :try_start_d
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_a

    :catch_11
    move-exception v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "Unexpected error: "

    invoke-static {v2, v3}, Lcom/comscore/utils/CSLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/comscore/utils/CSLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_a

    :cond_1f
    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v2, v3}, Lcom/comscore/utils/task/TaskExecutor;->execute(Ljava/lang/Runnable;J)Z

    goto :goto_a
.end method

.method public removeAllEnqueuedTasks()V
    .registers 2

    iget-object v0, p0, Lcom/comscore/utils/task/TaskExecutor;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    return-void
.end method

.method public removeEnqueuedTask(Ljava/lang/Runnable;)V
    .registers 5

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/comscore/utils/task/TaskExecutor;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comscore/utils/task/a;

    invoke-virtual {v0}, Lcom/comscore/utils/task/a;->i()Ljava/lang/Runnable;

    move-result-object v2

    if-ne v2, p1, :cond_9

    iget-object v1, p0, Lcom/comscore/utils/task/TaskExecutor;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/comscore/utils/task/TaskExecutor;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    return v0
.end method

.method public waitForLastNonDelayedTaskToFinish()V
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/comscore/utils/task/TaskExecutor;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    new-array v2, v1, [Lcom/comscore/utils/task/a;

    iget-object v1, p0, Lcom/comscore/utils/task/TaskExecutor;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    array-length v1, v2

    add-int/lit8 v1, v1, -0x1

    :goto_11
    if-ltz v1, :cond_21

    aget-object v3, v2, v1

    if-eqz v3, :cond_27

    aget-object v3, v2, v1

    invoke-virtual {v3}, Lcom/comscore/utils/task/a;->d()Z

    move-result v3

    if-nez v3, :cond_27

    aget-object v0, v2, v1

    :cond_21
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/comscore/utils/task/TaskExecutor;->waitForTaskToFinish(Ljava/lang/Runnable;J)V

    return-void

    :cond_27
    add-int/lit8 v1, v1, -0x1

    goto :goto_11
.end method

.method public waitForTaskToFinish(Ljava/lang/Runnable;J)V
    .registers 12

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/comscore/utils/task/a;

    if-nez v1, :cond_20

    iget-object v1, p0, Lcom/comscore/utils/task/TaskExecutor;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comscore/utils/task/a;

    invoke-virtual {v0}, Lcom/comscore/utils/task/a;->i()Ljava/lang/Runnable;

    move-result-object v3

    if-ne v3, p1, :cond_c

    move-object v1, v0

    goto :goto_c

    :cond_20
    check-cast p1, Lcom/comscore/utils/task/a;

    move-object v1, p1

    :cond_23
    if-eqz v1, :cond_41

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :goto_29
    iget-object v0, p0, Lcom/comscore/utils/task/TaskExecutor;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    const-wide/16 v4, 0x0

    cmp-long v0, p2, v4

    if-lez v0, :cond_42

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long v6, v2, p2

    cmp-long v0, v4, v6

    if-ltz v0, :cond_42

    :cond_41
    return-void

    :cond_42
    const-wide/16 v4, 0x64

    :try_start_44
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_47
    .catch Ljava/lang/InterruptedException; {:try_start_44 .. :try_end_47} :catch_48

    goto :goto_29

    :catch_48
    move-exception v0

    goto :goto_29
.end method

.method public waitForTasks()V
    .registers 3

    :goto_0
    iget-object v0, p0, Lcom/comscore/utils/task/TaskExecutor;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const-wide/16 v0, 0x64

    :try_start_b
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_0

    :catch_f
    move-exception v0

    goto :goto_0
.end method
