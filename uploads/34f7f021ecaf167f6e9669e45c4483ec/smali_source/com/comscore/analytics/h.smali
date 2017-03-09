.class Lcom/comscore/analytics/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/comscore/analytics/Core;


# direct methods
.method constructor <init>(Lcom/comscore/analytics/Core;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/comscore/analytics/h;->b:Lcom/comscore/analytics/Core;

    iput-object p2, p0, Lcom/comscore/analytics/h;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/comscore/analytics/h;->b:Lcom/comscore/analytics/Core;

    iget-object v1, p0, Lcom/comscore/analytics/h;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/comscore/analytics/Core;->c(Lcom/comscore/analytics/Core;Ljava/lang/String;)V

    return-void
.end method
