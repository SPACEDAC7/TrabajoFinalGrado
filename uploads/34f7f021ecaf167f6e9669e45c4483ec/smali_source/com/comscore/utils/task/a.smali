.class Lcom/comscore/utils/task/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private c:Ljava/lang/Runnable;

.field private d:Lcom/comscore/analytics/Core;

.field private e:J

.field private f:J

.field private g:J

.field private h:Z

.field private i:Z


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Lcom/comscore/analytics/Core;)V
    .registers 5

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/comscore/utils/task/a;-><init>(Ljava/lang/Runnable;Lcom/comscore/analytics/Core;J)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Runnable;Lcom/comscore/analytics/Core;J)V
    .registers 14

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/comscore/utils/task/a;-><init>(Ljava/lang/Runnable;Lcom/comscore/analytics/Core;JZJ)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Runnable;Lcom/comscore/analytics/Core;JZJ)V
    .registers 17

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/comscore/utils/task/a;->c:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/comscore/utils/task/a;->d:Lcom/comscore/analytics/Core;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v0, p3, v2

    if-lez v0, :cond_40

    move-wide v0, p3

    :goto_13
    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/comscore/utils/task/a;->e:J

    cmp-long v0, p3, v2

    if-lez v0, :cond_42

    const/4 v0, 0x1

    :goto_1b
    iput-boolean v0, p0, Lcom/comscore/utils/task/a;->i:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/utils/task/a;->f:J

    iput-boolean p5, p0, Lcom/comscore/utils/task/a;->h:Z

    iput-wide p6, p0, Lcom/comscore/utils/task/a;->g:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/comscore/utils/task/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/comscore/utils/task/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v0, p0, Lcom/comscore/utils/task/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/comscore/utils/task/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_40
    move-wide v0, v2

    goto :goto_13

    :cond_42
    move v0, v4

    goto :goto_1b
.end method


# virtual methods
.method a()J
    .registers 7

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/comscore/utils/task/a;->e:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_e

    :goto_d
    return-wide v0

    :cond_e
    move-wide v0, v2

    goto :goto_d
.end method

.method b()J
    .registers 3

    iget-wide v0, p0, Lcom/comscore/utils/task/a;->f:J

    return-wide v0
.end method

.method c()Z
    .registers 2

    iget-object v0, p0, Lcom/comscore/utils/task/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/comscore/utils/task/a;->i:Z

    return v0
.end method

.method e()Z
    .registers 2

    iget-object v0, p0, Lcom/comscore/utils/task/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method f()J
    .registers 3

    iget-wide v0, p0, Lcom/comscore/utils/task/a;->e:J

    return-wide v0
.end method

.method g()Z
    .registers 2

    iget-boolean v0, p0, Lcom/comscore/utils/task/a;->h:Z

    return v0
.end method

.method h()J
    .registers 3

    iget-wide v0, p0, Lcom/comscore/utils/task/a;->g:J

    return-wide v0
.end method

.method i()Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/comscore/utils/task/a;->c:Ljava/lang/Runnable;

    return-object v0
.end method

.method public run()V
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/comscore/utils/task/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :try_start_7
    iget-object v0, p0, Lcom/comscore/utils/task/a;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_17

    :goto_c
    iget-object v0, p0, Lcom/comscore/utils/task/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/comscore/utils/task/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catch_17
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Unexpected error running asynchronous task: "

    invoke-static {v1, v2}, Lcom/comscore/utils/CSLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/comscore/utils/CSLog;->printStackTrace(Ljava/lang/Exception;)V

    iget-object v0, p0, Lcom/comscore/utils/task/a;->d:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getStorage()Lcom/comscore/utils/Storage;

    move-result-object v0

    const-string v1, "exception_ocurrences"

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/comscore/utils/Storage;->add(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/comscore/utils/task/a;->d:Lcom/comscore/analytics/Core;

    invoke-virtual {v0, v4}, Lcom/comscore/analytics/Core;->setEnabled(Z)V

    goto :goto_c
.end method
