.class Lcom/comscore/analytics/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/comscore/analytics/Core;


# direct methods
.method constructor <init>(Lcom/comscore/analytics/Core;)V
    .registers 2

    iput-object p1, p0, Lcom/comscore/analytics/l;->a:Lcom/comscore/analytics/Core;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/comscore/analytics/l;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->z()Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/comscore/analytics/l;->a:Lcom/comscore/analytics/Core;

    iget v0, v0, Lcom/comscore/analytics/Core;->Q:I

    if-gez v0, :cond_14

    iget-object v0, p0, Lcom/comscore/analytics/l;->a:Lcom/comscore/analytics/Core;

    const/4 v1, 0x0

    iput v1, v0, Lcom/comscore/analytics/Core;->Q:I

    :cond_14
    iget-object v0, p0, Lcom/comscore/analytics/l;->a:Lcom/comscore/analytics/Core;

    iget-object v0, v0, Lcom/comscore/analytics/Core;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    iget-object v0, p0, Lcom/comscore/analytics/l;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->n()V

    goto :goto_8
.end method
