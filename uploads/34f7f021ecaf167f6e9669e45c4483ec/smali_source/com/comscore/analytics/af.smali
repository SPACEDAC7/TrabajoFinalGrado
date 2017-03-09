.class Lcom/comscore/analytics/af;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/comscore/analytics/ApplicationState;

.field final synthetic b:Lcom/comscore/analytics/ApplicationState;

.field final synthetic c:Lcom/comscore/analytics/SessionState;

.field final synthetic d:Lcom/comscore/analytics/SessionState;

.field final synthetic e:Lcom/comscore/analytics/Core;


# direct methods
.method constructor <init>(Lcom/comscore/analytics/Core;Lcom/comscore/analytics/ApplicationState;Lcom/comscore/analytics/ApplicationState;Lcom/comscore/analytics/SessionState;Lcom/comscore/analytics/SessionState;)V
    .registers 6

    iput-object p1, p0, Lcom/comscore/analytics/af;->e:Lcom/comscore/analytics/Core;

    iput-object p2, p0, Lcom/comscore/analytics/af;->a:Lcom/comscore/analytics/ApplicationState;

    iput-object p3, p0, Lcom/comscore/analytics/af;->b:Lcom/comscore/analytics/ApplicationState;

    iput-object p4, p0, Lcom/comscore/analytics/af;->c:Lcom/comscore/analytics/SessionState;

    iput-object p5, p0, Lcom/comscore/analytics/af;->d:Lcom/comscore/analytics/SessionState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/comscore/analytics/af;->a:Lcom/comscore/analytics/ApplicationState;

    iget-object v3, p0, Lcom/comscore/analytics/af;->b:Lcom/comscore/analytics/ApplicationState;

    if-eq v0, v3, :cond_62

    iget-object v0, p0, Lcom/comscore/analytics/af;->e:Lcom/comscore/analytics/Core;

    iget-object v3, p0, Lcom/comscore/analytics/af;->e:Lcom/comscore/analytics/Core;

    iget-object v3, v3, Lcom/comscore/analytics/Core;->y:Lcom/comscore/analytics/ApplicationState;

    invoke-virtual {v0, v3}, Lcom/comscore/analytics/Core;->a(Lcom/comscore/analytics/ApplicationState;)V

    iget-object v0, p0, Lcom/comscore/analytics/af;->e:Lcom/comscore/analytics/Core;

    iget-object v3, p0, Lcom/comscore/analytics/af;->b:Lcom/comscore/analytics/ApplicationState;

    invoke-virtual {v0, v3}, Lcom/comscore/analytics/Core;->b(Lcom/comscore/analytics/ApplicationState;)V

    iget-object v0, p0, Lcom/comscore/analytics/af;->e:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->s()V

    iget-object v0, p0, Lcom/comscore/analytics/af;->e:Lcom/comscore/analytics/Core;

    iget-object v3, p0, Lcom/comscore/analytics/af;->b:Lcom/comscore/analytics/ApplicationState;

    iput-object v3, v0, Lcom/comscore/analytics/Core;->y:Lcom/comscore/analytics/ApplicationState;

    move v0, v1

    :goto_24
    iget-object v3, p0, Lcom/comscore/analytics/af;->c:Lcom/comscore/analytics/SessionState;

    iget-object v4, p0, Lcom/comscore/analytics/af;->d:Lcom/comscore/analytics/SessionState;

    if-eq v3, v4, :cond_60

    iget-object v2, p0, Lcom/comscore/analytics/af;->e:Lcom/comscore/analytics/Core;

    iget-object v3, p0, Lcom/comscore/analytics/af;->e:Lcom/comscore/analytics/Core;

    iget-object v3, v3, Lcom/comscore/analytics/Core;->L:Lcom/comscore/analytics/SessionState;

    invoke-virtual {v2, v3}, Lcom/comscore/analytics/Core;->a(Lcom/comscore/analytics/SessionState;)V

    iget-object v2, p0, Lcom/comscore/analytics/af;->e:Lcom/comscore/analytics/Core;

    iget-object v3, p0, Lcom/comscore/analytics/af;->d:Lcom/comscore/analytics/SessionState;

    invoke-virtual {v2, v3}, Lcom/comscore/analytics/Core;->b(Lcom/comscore/analytics/SessionState;)V

    iget-object v2, p0, Lcom/comscore/analytics/af;->e:Lcom/comscore/analytics/Core;

    invoke-virtual {v2}, Lcom/comscore/analytics/Core;->t()V

    iget-object v2, p0, Lcom/comscore/analytics/af;->e:Lcom/comscore/analytics/Core;

    iget-object v3, p0, Lcom/comscore/analytics/af;->d:Lcom/comscore/analytics/SessionState;

    iput-object v3, v2, Lcom/comscore/analytics/Core;->L:Lcom/comscore/analytics/SessionState;

    :goto_45
    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/comscore/analytics/af;->e:Lcom/comscore/analytics/Core;

    iget-object v2, p0, Lcom/comscore/analytics/af;->a:Lcom/comscore/analytics/ApplicationState;

    iget-object v3, p0, Lcom/comscore/analytics/af;->e:Lcom/comscore/analytics/Core;

    iget-object v3, v3, Lcom/comscore/analytics/Core;->y:Lcom/comscore/analytics/ApplicationState;

    invoke-virtual {v0, v2, v3}, Lcom/comscore/analytics/Core;->a(Lcom/comscore/analytics/ApplicationState;Lcom/comscore/analytics/ApplicationState;)V

    :cond_52
    if-eqz v1, :cond_5f

    iget-object v0, p0, Lcom/comscore/analytics/af;->e:Lcom/comscore/analytics/Core;

    iget-object v1, p0, Lcom/comscore/analytics/af;->c:Lcom/comscore/analytics/SessionState;

    iget-object v2, p0, Lcom/comscore/analytics/af;->e:Lcom/comscore/analytics/Core;

    iget-object v2, v2, Lcom/comscore/analytics/Core;->L:Lcom/comscore/analytics/SessionState;

    invoke-virtual {v0, v1, v2}, Lcom/comscore/analytics/Core;->a(Lcom/comscore/analytics/SessionState;Lcom/comscore/analytics/SessionState;)V

    :cond_5f
    return-void

    :cond_60
    move v1, v2

    goto :goto_45

    :cond_62
    move v0, v2

    goto :goto_24
.end method
