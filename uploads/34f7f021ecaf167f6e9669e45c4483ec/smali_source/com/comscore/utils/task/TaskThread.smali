.class public Lcom/comscore/utils/task/TaskThread;
.super Ljava/lang/Thread;


# instance fields
.field private a:Z

.field private b:Ljava/lang/Object;

.field private c:Lcom/comscore/utils/task/TaskExecutor;


# direct methods
.method constructor <init>(Lcom/comscore/utils/task/TaskExecutor;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/comscore/utils/task/TaskThread;->a:Z

    iput-object p1, p0, Lcom/comscore/utils/task/TaskThread;->c:Lcom/comscore/utils/task/TaskExecutor;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/comscore/utils/task/TaskThread;->b:Ljava/lang/Object;

    return-void
.end method

.method private a(J)V
    .registers 6

    iget-object v1, p0, Lcom/comscore/utils/task/TaskThread;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/comscore/utils/task/TaskThread;->b:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_8} :catch_a
    .catchall {:try_start_3 .. :try_end_8} :catchall_f

    :goto_8
    :try_start_8
    monitor-exit v1

    return-void

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_8

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_f

    throw v0
.end method


# virtual methods
.method a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/comscore/utils/task/TaskThread;->a:Z

    return v0
.end method

.method b()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/comscore/utils/task/TaskThread;->a:Z

    return-void
.end method

.method c()V
    .registers 3

    iget-object v1, p0, Lcom/comscore/utils/task/TaskThread;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/comscore/utils/task/TaskThread;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method d()V
    .registers 5

    iget-object v0, p0, Lcom/comscore/utils/task/TaskThread;->c:Lcom/comscore/utils/task/TaskExecutor;

    invoke-virtual {v0}, Lcom/comscore/utils/task/TaskExecutor;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_f

    invoke-direct {p0, v0, v1}, Lcom/comscore/utils/task/TaskThread;->a(J)V

    :cond_f
    return-void
.end method

.method public run()V
    .registers 8

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/comscore/utils/task/TaskThread;->a()Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/comscore/utils/task/TaskThread;->c:Lcom/comscore/utils/task/TaskExecutor;

    invoke-virtual {v0}, Lcom/comscore/utils/task/TaskExecutor;->b()Lcom/comscore/utils/task/a;

    move-result-object v5

    if-eqz v5, :cond_32

    invoke-virtual {v5}, Lcom/comscore/utils/task/a;->run()V

    iget-object v0, p0, Lcom/comscore/utils/task/TaskThread;->c:Lcom/comscore/utils/task/TaskExecutor;

    invoke-virtual {v0, v5}, Lcom/comscore/utils/task/TaskExecutor;->a(Lcom/comscore/utils/task/a;)V

    invoke-virtual {v5}, Lcom/comscore/utils/task/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/utils/task/TaskThread;->c:Lcom/comscore/utils/task/TaskExecutor;

    invoke-virtual {v5}, Lcom/comscore/utils/task/a;->i()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v5}, Lcom/comscore/utils/task/a;->h()J

    move-result-wide v2

    invoke-virtual {v5}, Lcom/comscore/utils/task/a;->g()Z

    move-result v4

    invoke-virtual {v5}, Lcom/comscore/utils/task/a;->h()J

    move-result-wide v5

    invoke-virtual/range {v0 .. v6}, Lcom/comscore/utils/task/TaskExecutor;->execute(Ljava/lang/Runnable;JZJ)Z

    goto :goto_0

    :cond_32
    invoke-virtual {p0}, Lcom/comscore/utils/task/TaskThread;->d()V

    goto :goto_0

    :cond_36
    return-void
.end method
