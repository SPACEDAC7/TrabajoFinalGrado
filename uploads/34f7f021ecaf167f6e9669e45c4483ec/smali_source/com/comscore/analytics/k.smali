.class Lcom/comscore/analytics/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/comscore/analytics/Core;


# direct methods
.method constructor <init>(Lcom/comscore/analytics/Core;Z)V
    .registers 3

    iput-object p1, p0, Lcom/comscore/analytics/k;->b:Lcom/comscore/analytics/Core;

    iput-boolean p2, p0, Lcom/comscore/analytics/k;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/comscore/analytics/k;->b:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isSecure()Z

    move-result v0

    iget-boolean v1, p0, Lcom/comscore/analytics/k;->a:Z

    if-eq v0, v1, :cond_10

    iget-object v0, p0, Lcom/comscore/analytics/k;->b:Lcom/comscore/analytics/Core;

    iget-boolean v1, p0, Lcom/comscore/analytics/k;->a:Z

    iput-boolean v1, v0, Lcom/comscore/analytics/Core;->ai:Z

    :cond_10
    return-void
.end method
