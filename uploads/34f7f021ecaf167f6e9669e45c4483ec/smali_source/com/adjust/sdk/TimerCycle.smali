.class public Lcom/adjust/sdk/TimerCycle;
.super Ljava/lang/Object;
.source "TimerCycle.java"


# instance fields
.field private command:Ljava/lang/Runnable;

.field private cycleDelay:J

.field private initialDelay:J

.field private isPaused:Z

.field private logger:Lcom/adjust/sdk/ILogger;

.field private name:Ljava/lang/String;

.field private scheduledExecutorWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/adjust/sdk/CustomScheduledExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private waitingTask:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/CustomScheduledExecutor;Ljava/lang/Runnable;JJLjava/lang/String;)V
    .registers 19
    .param p1, "scheduler"    # Lcom/adjust/sdk/CustomScheduledExecutor;
    .param p2, "command"    # Ljava/lang/Runnable;
    .param p3, "initialDelay"    # J
    .param p5, "cycleDelay"    # J
    .param p7, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/adjust/sdk/TimerCycle;->scheduledExecutorWeakRef:Ljava/lang/ref/WeakReference;

    .line 23
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/adjust/sdk/TimerCycle;->name:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/adjust/sdk/TimerCycle;->command:Ljava/lang/Runnable;

    .line 25
    iput-wide p3, p0, Lcom/adjust/sdk/TimerCycle;->initialDelay:J

    .line 26
    move-wide/from16 v0, p5

    iput-wide v0, p0, Lcom/adjust/sdk/TimerCycle;->cycleDelay:J

    .line 27
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/adjust/sdk/TimerCycle;->isPaused:Z

    .line 28
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v4

    iput-object v4, p0, Lcom/adjust/sdk/TimerCycle;->logger:Lcom/adjust/sdk/ILogger;

    .line 30
    sget-object v4, Lcom/adjust/sdk/Util;->SecondsDisplayFormat:Ljava/text/DecimalFormat;

    move-wide/from16 v0, p5

    long-to-double v6, v0

    const-wide v8, 0x408f400000000000L

    div-double/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    .line 32
    .local v2, "cycleDelaySecondsString":Ljava/lang/String;
    sget-object v4, Lcom/adjust/sdk/Util;->SecondsDisplayFormat:Ljava/text/DecimalFormat;

    long-to-double v6, p3

    const-wide v8, 0x408f400000000000L

    div-double/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    .line 34
    .local v3, "initialDelaySecondsString":Ljava/lang/String;
    iget-object v4, p0, Lcom/adjust/sdk/TimerCycle;->logger:Lcom/adjust/sdk/ILogger;

    const-string v5, "%s configured to fire after %s seconds of starting and cycles every %s seconds"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p7, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    const/4 v7, 0x2

    aput-object v2, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/adjust/sdk/TimerCycle;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/adjust/sdk/TimerCycle;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/adjust/sdk/TimerCycle;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adjust/sdk/TimerCycle;)Lcom/adjust/sdk/ILogger;
    .registers 2
    .param p0, "x0"    # Lcom/adjust/sdk/TimerCycle;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/adjust/sdk/TimerCycle;->logger:Lcom/adjust/sdk/ILogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/adjust/sdk/TimerCycle;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/adjust/sdk/TimerCycle;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/adjust/sdk/TimerCycle;->command:Ljava/lang/Runnable;

    return-object v0
.end method

.method private cancel(Z)V
    .registers 3
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .line 84
    iget-object v0, p0, Lcom/adjust/sdk/TimerCycle;->waitingTask:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_9

    .line 85
    iget-object v0, p0, Lcom/adjust/sdk/TimerCycle;->waitingTask:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 88
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adjust/sdk/TimerCycle;->waitingTask:Ljava/util/concurrent/ScheduledFuture;

    .line 89
    return-void
.end method


# virtual methods
.method public start()V
    .registers 9

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 38
    iget-boolean v1, p0, Lcom/adjust/sdk/TimerCycle;->isPaused:Z

    if-nez v1, :cond_14

    .line 39
    iget-object v1, p0, Lcom/adjust/sdk/TimerCycle;->logger:Lcom/adjust/sdk/ILogger;

    const-string v2, "%s is already started"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/adjust/sdk/TimerCycle;->name:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    :cond_13
    :goto_13
    return-void

    .line 43
    :cond_14
    iget-object v1, p0, Lcom/adjust/sdk/TimerCycle;->scheduledExecutorWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adjust/sdk/CustomScheduledExecutor;

    .line 44
    .local v0, "scheduledExecutor":Lcom/adjust/sdk/CustomScheduledExecutor;
    if-eqz v0, :cond_13

    .line 51
    iget-object v1, p0, Lcom/adjust/sdk/TimerCycle;->logger:Lcom/adjust/sdk/ILogger;

    const-string v2, "%s starting"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/adjust/sdk/TimerCycle;->name:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    new-instance v1, Lcom/adjust/sdk/TimerCycle$1;

    invoke-direct {v1, p0}, Lcom/adjust/sdk/TimerCycle$1;-><init>(Lcom/adjust/sdk/TimerCycle;)V

    iget-wide v2, p0, Lcom/adjust/sdk/TimerCycle;->initialDelay:J

    iget-wide v4, p0, Lcom/adjust/sdk/TimerCycle;->cycleDelay:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Lcom/adjust/sdk/CustomScheduledExecutor;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    iput-object v1, p0, Lcom/adjust/sdk/TimerCycle;->waitingTask:Ljava/util/concurrent/ScheduledFuture;

    .line 61
    iput-boolean v7, p0, Lcom/adjust/sdk/TimerCycle;->isPaused:Z

    goto :goto_13
.end method

.method public suspend()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 65
    iget-boolean v1, p0, Lcom/adjust/sdk/TimerCycle;->isPaused:Z

    if-eqz v1, :cond_14

    .line 66
    iget-object v1, p0, Lcom/adjust/sdk/TimerCycle;->logger:Lcom/adjust/sdk/ILogger;

    const-string v2, "%s is already suspended"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/adjust/sdk/TimerCycle;->name:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    :goto_13
    return-void

    .line 71
    :cond_14
    iget-object v1, p0, Lcom/adjust/sdk/TimerCycle;->waitingTask:Ljava/util/concurrent/ScheduledFuture;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/adjust/sdk/TimerCycle;->initialDelay:J

    .line 74
    iget-object v1, p0, Lcom/adjust/sdk/TimerCycle;->waitingTask:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1, v6}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 76
    sget-object v1, Lcom/adjust/sdk/Util;->SecondsDisplayFormat:Ljava/text/DecimalFormat;

    iget-wide v2, p0, Lcom/adjust/sdk/TimerCycle;->initialDelay:J

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "initialDelaySeconds":Ljava/lang/String;
    iget-object v1, p0, Lcom/adjust/sdk/TimerCycle;->logger:Lcom/adjust/sdk/ILogger;

    const-string v2, "%s suspended with %s seconds left"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/adjust/sdk/TimerCycle;->name:Ljava/lang/String;

    aput-object v4, v3, v6

    aput-object v0, v3, v7

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    iput-boolean v7, p0, Lcom/adjust/sdk/TimerCycle;->isPaused:Z

    goto :goto_13
.end method

.method public teardown()V
    .registers 2

    .prologue
    .line 92
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/adjust/sdk/TimerCycle;->cancel(Z)V

    .line 93
    iget-object v0, p0, Lcom/adjust/sdk/TimerCycle;->scheduledExecutorWeakRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_d

    .line 94
    iget-object v0, p0, Lcom/adjust/sdk/TimerCycle;->scheduledExecutorWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 96
    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adjust/sdk/TimerCycle;->scheduledExecutorWeakRef:Ljava/lang/ref/WeakReference;

    .line 97
    return-void
.end method
