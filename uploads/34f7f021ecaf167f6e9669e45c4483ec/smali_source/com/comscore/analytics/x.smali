.class Lcom/comscore/analytics/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Lcom/comscore/analytics/Core;


# direct methods
.method constructor <init>(Lcom/comscore/analytics/Core;IZ)V
    .registers 4

    iput-object p1, p0, Lcom/comscore/analytics/x;->c:Lcom/comscore/analytics/Core;

    iput p2, p0, Lcom/comscore/analytics/x;->a:I

    iput-boolean p3, p0, Lcom/comscore/analytics/x;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/comscore/analytics/x;->c:Lcom/comscore/analytics/Core;

    iget v1, p0, Lcom/comscore/analytics/x;->a:I

    iget-boolean v2, p0, Lcom/comscore/analytics/x;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/comscore/analytics/Core;->a(IZ)V

    return-void
.end method
