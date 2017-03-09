.class Lcom/comscore/analytics/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/comscore/analytics/Core;


# direct methods
.method constructor <init>(Lcom/comscore/analytics/Core;Z)V
    .registers 3

    iput-object p1, p0, Lcom/comscore/analytics/n;->b:Lcom/comscore/analytics/Core;

    iput-boolean p2, p0, Lcom/comscore/analytics/n;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/comscore/analytics/n;->b:Lcom/comscore/analytics/Core;

    iget-boolean v1, p0, Lcom/comscore/analytics/n;->a:Z

    iput-boolean v1, v0, Lcom/comscore/analytics/Core;->v:Z

    return-void
.end method
