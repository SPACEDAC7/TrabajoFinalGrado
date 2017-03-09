.class Lcom/comscore/analytics/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/comscore/analytics/Core;


# direct methods
.method constructor <init>(Lcom/comscore/analytics/Core;)V
    .registers 2

    iput-object p1, p0, Lcom/comscore/analytics/a;->a:Lcom/comscore/analytics/Core;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/comscore/analytics/a;->a:Lcom/comscore/analytics/Core;

    invoke-static {v0}, Lcom/comscore/analytics/Core;->a(Lcom/comscore/analytics/Core;)Lcom/comscore/utils/id/IdHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comscore/utils/id/IdHelper;->resetVisitorId()V

    return-void
.end method
