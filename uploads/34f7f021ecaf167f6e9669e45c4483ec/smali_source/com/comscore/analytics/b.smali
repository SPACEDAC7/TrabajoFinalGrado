.class Lcom/comscore/analytics/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/comscore/analytics/Core;


# direct methods
.method constructor <init>(Lcom/comscore/analytics/Core;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/comscore/analytics/b;->b:Lcom/comscore/analytics/Core;

    iput-object p2, p0, Lcom/comscore/analytics/b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/comscore/analytics/b;->b:Lcom/comscore/analytics/Core;

    iget-object v0, v0, Lcom/comscore/analytics/Core;->a:Lcom/comscore/utils/OfflineMeasurementsCache;

    iget-object v1, p0, Lcom/comscore/analytics/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/comscore/utils/OfflineMeasurementsCache;->setUrl(Ljava/lang/String;)V

    return-void
.end method
