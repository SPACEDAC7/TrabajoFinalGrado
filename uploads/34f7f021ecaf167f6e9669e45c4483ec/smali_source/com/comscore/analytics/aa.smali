.class Lcom/comscore/analytics/aa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/comscore/analytics/Core;


# direct methods
.method constructor <init>(Lcom/comscore/analytics/Core;Z)V
    .registers 3

    iput-object p1, p0, Lcom/comscore/analytics/aa;->b:Lcom/comscore/analytics/Core;

    iput-boolean p2, p0, Lcom/comscore/analytics/aa;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-boolean v0, p0, Lcom/comscore/analytics/aa;->a:Z

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/comscore/analytics/aa;->b:Lcom/comscore/analytics/Core;

    invoke-static {v0}, Lcom/comscore/analytics/Core;->b(Lcom/comscore/analytics/Core;)Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/comscore/analytics/aa;->b:Lcom/comscore/analytics/Core;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/comscore/analytics/Core;->a(Lcom/comscore/analytics/Core;Z)Z

    iget-object v0, p0, Lcom/comscore/analytics/aa;->b:Lcom/comscore/analytics/Core;

    iget-object v1, p0, Lcom/comscore/analytics/aa;->b:Lcom/comscore/analytics/Core;

    invoke-static {v1}, Lcom/comscore/analytics/Core;->c(Lcom/comscore/analytics/Core;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/comscore/analytics/Core;->setErrorHandlingEnabled(Z)V

    iget-object v0, p0, Lcom/comscore/analytics/aa;->b:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->reset()V

    iget-object v0, p0, Lcom/comscore/analytics/aa;->b:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getConnectivityReceiver()Lcom/comscore/utils/ConnectivityChangeReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comscore/utils/ConnectivityChangeReceiver;->start()V

    iget-object v0, p0, Lcom/comscore/analytics/aa;->b:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getKeepAlive()Lcom/comscore/applications/KeepAlive;

    move-result-object v0

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/comscore/applications/KeepAlive;->start(I)V

    :cond_36
    :goto_36
    return-void

    :cond_37
    iget-boolean v0, p0, Lcom/comscore/analytics/aa;->a:Z

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/comscore/analytics/aa;->b:Lcom/comscore/analytics/Core;

    invoke-static {v0}, Lcom/comscore/analytics/Core;->b(Lcom/comscore/analytics/Core;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/comscore/analytics/aa;->b:Lcom/comscore/analytics/Core;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/comscore/analytics/Core;->a(Lcom/comscore/analytics/Core;Z)Z

    iget-object v0, p0, Lcom/comscore/analytics/aa;->b:Lcom/comscore/analytics/Core;

    iget-object v1, p0, Lcom/comscore/analytics/aa;->b:Lcom/comscore/analytics/Core;

    iget-boolean v1, v1, Lcom/comscore/analytics/Core;->ag:Z

    invoke-static {v0, v1}, Lcom/comscore/analytics/Core;->b(Lcom/comscore/analytics/Core;Z)Z

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/analytics/aa;->b:Lcom/comscore/analytics/Core;

    iget-object v1, v1, Lcom/comscore/analytics/Core;->ah:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eq v0, v1, :cond_63

    iget-object v0, p0, Lcom/comscore/analytics/aa;->b:Lcom/comscore/analytics/Core;

    iget-object v0, v0, Lcom/comscore/analytics/Core;->ah:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_63
    iget-object v0, p0, Lcom/comscore/analytics/aa;->b:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getConnectivityReceiver()Lcom/comscore/utils/ConnectivityChangeReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comscore/utils/ConnectivityChangeReceiver;->stop()V

    iget-object v0, p0, Lcom/comscore/analytics/aa;->b:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getKeepAlive()Lcom/comscore/applications/KeepAlive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comscore/applications/KeepAlive;->stop()V

    iget-object v0, p0, Lcom/comscore/analytics/aa;->b:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getOfflineCache()Lcom/comscore/utils/OfflineMeasurementsCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comscore/utils/OfflineMeasurementsCache;->clear()V

    iget-object v0, p0, Lcom/comscore/analytics/aa;->b:Lcom/comscore/analytics/Core;

    iget-object v0, v0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    invoke-virtual {v0}, Lcom/comscore/utils/task/TaskExecutor;->removeAllEnqueuedTasks()V

    goto :goto_36
.end method
