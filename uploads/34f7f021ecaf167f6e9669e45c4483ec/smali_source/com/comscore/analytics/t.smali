.class Lcom/comscore/analytics/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/comscore/analytics/Core;


# direct methods
.method constructor <init>(Lcom/comscore/analytics/Core;J)V
    .registers 4

    iput-object p1, p0, Lcom/comscore/analytics/t;->b:Lcom/comscore/analytics/Core;

    iput-wide p2, p0, Lcom/comscore/analytics/t;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/comscore/analytics/t;->b:Lcom/comscore/analytics/Core;

    iget-wide v2, p0, Lcom/comscore/analytics/t;->a:J

    iput-wide v2, v0, Lcom/comscore/analytics/Core;->af:J

    iget-object v0, p0, Lcom/comscore/analytics/t;->b:Lcom/comscore/analytics/Core;

    iget-object v0, v0, Lcom/comscore/analytics/Core;->d:Lcom/comscore/utils/CacheFlusher;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/comscore/analytics/t;->b:Lcom/comscore/analytics/Core;

    iget-object v0, v0, Lcom/comscore/analytics/Core;->d:Lcom/comscore/utils/CacheFlusher;

    invoke-virtual {v0}, Lcom/comscore/utils/CacheFlusher;->update()V

    :cond_13
    return-void
.end method
