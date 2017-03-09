.class public Lcom/adjust/sdk/TimerOnce;
.super Ljava/lang/Object;
.source "TimerOnce.java"


# instance fields
.field private command:Ljava/lang/Runnable;

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
.method public constructor <init>(Lcom/adjust/sdk/CustomScheduledExecutor;Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 5
    .param p1, "scheduler"    # Lcom/adjust/sdk/CustomScheduledExecutor;
    .param p2, "command"    # Ljava/lang/Runnable;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p3, p0, Lcom/adjust/sdk/TimerOnce;->name:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adjust/sdk/TimerOnce;->scheduledExecutorWeakRef:Ljava/lang/ref/WeakReference;

    .line 20
    iput-object p2, p0, Lcom/adjust/sdk/TimerOnce;->command:Ljava/lang/Runnable;

    .line 21
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/TimerOnce;->logger:Lcom/adjust/sdk/ILogger;

    .line 22
    return-void
.end method

.method static synthetic access$000(Lcom/adjust/sdk/TimerOnce;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/adjust/sdk/TimerOnce;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/adjust/sdk/TimerOnce;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adjust/sdk/TimerOnce;)Lcom/adjust/sdk/ILogger;
    .registers 2
    .param p0, "x0"    # Lcom/adjust/sdk/TimerOnce;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/adjust/sdk/TimerOnce;->logger:Lcom/adjust/sdk/ILogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/adjust/sdk/TimerOnce;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/adjust/sdk/TimerOnce;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/adjust/sdk/TimerOnce;->command:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$302(Lcom/adjust/sdk/TimerOnce;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .registers 2
    .param p0, "x0"    # Lcom/adjust/sdk/TimerOnce;
    .param p1, "x1"    # Ljava/util/concurrent/ScheduledFuture;

    .prologue
    .line 10
    iput-object p1, p0, Lcom/adjust/sdk/TimerOnce;->waitingTask:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method private cancel(Z)V
    .registers 7
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .line 55
    iget-object v0, p0, Lcom/adjust/sdk/TimerOnce;->waitingTask:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_9

    .line 56
    iget-object v0, p0, Lcom/adjust/sdk/TimerOnce;->waitingTask:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 58
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adjust/sdk/TimerOnce;->waitingTask:Ljava/util/concurrent/ScheduledFuture;

    .line 60
    iget-object v0, p0, Lcom/adjust/sdk/TimerOnce;->logger:Lcom/adjust/sdk/ILogger;

    const-string v1, "%s canceled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/adjust/sdk/TimerOnce;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/adjust/sdk/TimerOnce;->cancel(Z)V

    .line 65
    return-void
.end method

.method public getFireIn()J
    .registers 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/adjust/sdk/TimerOnce;->waitingTask:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_7

    .line 49
    const-wide/16 v0, 0x0

    .line 51
    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Lcom/adjust/sdk/TimerOnce;->waitingTask:Ljava/util/concurrent/ScheduledFuture;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    goto :goto_6
.end method

.method public startIn(J)V
    .registers 12
    .param p1, "fireIn"    # J

    .prologue
    const/4 v8, 0x0

    .line 26
    invoke-direct {p0, v8}, Lcom/adjust/sdk/TimerOnce;->cancel(Z)V

    .line 28
    iget-object v2, p0, Lcom/adjust/sdk/TimerOnce;->scheduledExecutorWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adjust/sdk/CustomScheduledExecutor;

    .line 29
    .local v1, "scheduledExecutor":Lcom/adjust/sdk/CustomScheduledExecutor;
    if-nez v1, :cond_f

    .line 45
    :goto_e
    return-void

    .line 33
    :cond_f
    sget-object v2, Lcom/adjust/sdk/Util;->SecondsDisplayFormat:Ljava/text/DecimalFormat;

    long-to-double v4, p1

    const-wide v6, 0x408f400000000000L

    div-double/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "fireInSeconds":Ljava/lang/String;
    iget-object v2, p0, Lcom/adjust/sdk/TimerOnce;->logger:Lcom/adjust/sdk/ILogger;

    const-string v3, "%s starting. Launching in %s seconds"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/adjust/sdk/TimerOnce;->name:Ljava/lang/String;

    aput-object v5, v4, v8

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    new-instance v2, Lcom/adjust/sdk/TimerOnce$1;

    invoke-direct {v2, p0}, Lcom/adjust/sdk/TimerOnce$1;-><init>(Lcom/adjust/sdk/TimerOnce;)V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, p1, p2, v3}, Lcom/adjust/sdk/CustomScheduledExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    iput-object v2, p0, Lcom/adjust/sdk/TimerOnce;->waitingTask:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_e
.end method

.method public teardown()V
    .registers 2

    .prologue
    .line 68
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/adjust/sdk/TimerOnce;->cancel(Z)V

    .line 69
    iget-object v0, p0, Lcom/adjust/sdk/TimerOnce;->scheduledExecutorWeakRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_d

    .line 70
    iget-object v0, p0, Lcom/adjust/sdk/TimerOnce;->scheduledExecutorWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 72
    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adjust/sdk/TimerOnce;->scheduledExecutorWeakRef:Ljava/lang/ref/WeakReference;

    .line 73
    return-void
.end method
