.class public Lcom/comscore/analytics/Core$UserInteractionTask;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/comscore/analytics/Core;


# direct methods
.method public constructor <init>(Lcom/comscore/analytics/Core;)V
    .registers 2

    iput-object p1, p0, Lcom/comscore/analytics/Core$UserInteractionTask;->a:Lcom/comscore/analytics/Core;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/comscore/analytics/Core$UserInteractionTask;->a:Lcom/comscore/analytics/Core;

    invoke-static {v0}, Lcom/comscore/analytics/Core;->b(Lcom/comscore/analytics/Core;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/comscore/analytics/Core$UserInteractionTask;->a:Lcom/comscore/analytics/Core;

    iget-object v0, v0, Lcom/comscore/analytics/Core;->Y:Ljava/lang/Runnable;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/comscore/analytics/Core$UserInteractionTask;->a:Lcom/comscore/analytics/Core;

    iget-object v0, v0, Lcom/comscore/analytics/Core;->f:Lcom/comscore/utils/task/TaskExecutor;

    iget-object v1, p0, Lcom/comscore/analytics/Core$UserInteractionTask;->a:Lcom/comscore/analytics/Core;

    iget-object v1, v1, Lcom/comscore/analytics/Core;->Y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/comscore/utils/task/TaskExecutor;->removeEnqueuedTask(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/comscore/analytics/Core$UserInteractionTask;->a:Lcom/comscore/analytics/Core;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/comscore/analytics/Core;->Y:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/comscore/analytics/Core$UserInteractionTask;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->n()V

    goto :goto_8
.end method
