.class public abstract Lcom/urbanairship/CancelableOperation;
.super Ljava/lang/Object;
.source "CancelableOperation.java"

# interfaces
.implements Lcom/urbanairship/Cancelable;
.implements Ljava/lang/Runnable;


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final internalRunnable:Ljava/lang/Runnable;

.field private isCanceled:Z

.field private isFinished:Z

.field private isRunning:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 5
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-boolean v1, p0, Lcom/urbanairship/CancelableOperation;->isFinished:Z

    .line 14
    iput-boolean v1, p0, Lcom/urbanairship/CancelableOperation;->isRunning:Z

    .line 15
    iput-boolean v1, p0, Lcom/urbanairship/CancelableOperation;->isCanceled:Z

    .line 27
    if-eqz p1, :cond_1b

    .line 28
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/urbanairship/CancelableOperation;->handler:Landroid/os/Handler;

    .line 34
    :goto_13
    new-instance v1, Lcom/urbanairship/CancelableOperation$1;

    invoke-direct {v1, p0}, Lcom/urbanairship/CancelableOperation$1;-><init>(Lcom/urbanairship/CancelableOperation;)V

    iput-object v1, p0, Lcom/urbanairship/CancelableOperation;->internalRunnable:Ljava/lang/Runnable;

    .line 47
    return-void

    .line 30
    :cond_1b
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 31
    .local v0, "myLooper":Landroid/os/Looper;
    if-eqz v0, :cond_29

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :goto_26
    iput-object v1, p0, Lcom/urbanairship/CancelableOperation;->handler:Landroid/os/Handler;

    goto :goto_13

    :cond_29
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_26
.end method

.method static synthetic access$002(Lcom/urbanairship/CancelableOperation;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/CancelableOperation;
    .param p1, "x1"    # Z

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/urbanairship/CancelableOperation;->isFinished:Z

    return p1
.end method


# virtual methods
.method public final cancel()V
    .registers 3

    .prologue
    .line 52
    monitor-enter p0

    .line 53
    :try_start_1
    invoke-virtual {p0}, Lcom/urbanairship/CancelableOperation;->isDone()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/urbanairship/CancelableOperation;->isCanceled:Z

    .line 55
    iget-object v0, p0, Lcom/urbanairship/CancelableOperation;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/urbanairship/CancelableOperation;->internalRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 57
    iget-object v0, p0, Lcom/urbanairship/CancelableOperation;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/urbanairship/CancelableOperation$2;

    invoke-direct {v1, p0}, Lcom/urbanairship/CancelableOperation$2;-><init>(Lcom/urbanairship/CancelableOperation;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 64
    :cond_1b
    monitor-exit p0

    .line 65
    return-void

    .line 64
    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public final isCanceled()Z
    .registers 2

    .prologue
    .line 88
    monitor-enter p0

    .line 89
    :try_start_1
    iget-boolean v0, p0, Lcom/urbanairship/CancelableOperation;->isCanceled:Z

    monitor-exit p0

    return v0

    .line 90
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public final isDone()Z
    .registers 2

    .prologue
    .line 81
    monitor-enter p0

    .line 82
    :try_start_1
    iget-boolean v0, p0, Lcom/urbanairship/CancelableOperation;->isFinished:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/urbanairship/CancelableOperation;->isCanceled:Z

    if-eqz v0, :cond_c

    :cond_9
    const/4 v0, 0x1

    :goto_a
    monitor-exit p0

    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    .line 83
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
.end method

.method protected onCancel()V
    .registers 1

    .prologue
    .line 96
    return-void
.end method

.method protected abstract onRun()V
.end method

.method public final run()V
    .registers 3

    .prologue
    .line 69
    monitor-enter p0

    .line 70
    :try_start_1
    invoke-virtual {p0}, Lcom/urbanairship/CancelableOperation;->isDone()Z

    move-result v0

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/urbanairship/CancelableOperation;->isRunning:Z

    if-eqz v0, :cond_d

    .line 71
    :cond_b
    monitor-exit p0

    .line 77
    :goto_c
    return-void

    .line 74
    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/urbanairship/CancelableOperation;->isRunning:Z

    .line 75
    iget-object v0, p0, Lcom/urbanairship/CancelableOperation;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/urbanairship/CancelableOperation;->internalRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 76
    monitor-exit p0

    goto :goto_c

    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_19

    throw v0
.end method
