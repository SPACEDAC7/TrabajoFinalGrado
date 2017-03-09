.class public Lcom/adjust/sdk/CustomScheduledExecutor;
.super Ljava/lang/Object;
.source "CustomScheduledExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adjust/sdk/CustomScheduledExecutor$RunnableWrapper;
    }
.end annotation


# instance fields
.field private executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private source:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 7
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/adjust/sdk/CustomScheduledExecutor$1;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/CustomScheduledExecutor$1;-><init>(Lcom/adjust/sdk/CustomScheduledExecutor;Ljava/lang/String;)V

    new-instance v2, Lcom/adjust/sdk/CustomScheduledExecutor$2;

    invoke-direct {v2, p0, p1}, Lcom/adjust/sdk/CustomScheduledExecutor$2;-><init>(Lcom/adjust/sdk/CustomScheduledExecutor;Ljava/lang/String;)V

    invoke-direct {v0, v4, v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, p0, Lcom/adjust/sdk/CustomScheduledExecutor;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 46
    iput-object p1, p0, Lcom/adjust/sdk/CustomScheduledExecutor;->source:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/adjust/sdk/CustomScheduledExecutor;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/16 v2, 0xa

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    .line 48
    iget-object v0, p0, Lcom/adjust/sdk/CustomScheduledExecutor;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 49
    return-void
.end method


# virtual methods
.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .registers 7
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "delay"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/adjust/sdk/CustomScheduledExecutor;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/adjust/sdk/CustomScheduledExecutor$RunnableWrapper;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/CustomScheduledExecutor$RunnableWrapper;-><init>(Lcom/adjust/sdk/CustomScheduledExecutor;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, p2, p3, p4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .registers 15
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "initialDelay"    # J
    .param p4, "delay"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/adjust/sdk/CustomScheduledExecutor;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/adjust/sdk/CustomScheduledExecutor$RunnableWrapper;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/CustomScheduledExecutor$RunnableWrapper;-><init>(Lcom/adjust/sdk/CustomScheduledExecutor;Ljava/lang/Runnable;)V

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public shutdownNow()V
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/adjust/sdk/CustomScheduledExecutor;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 57
    return-void
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .registers 3
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/adjust/sdk/CustomScheduledExecutor;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
