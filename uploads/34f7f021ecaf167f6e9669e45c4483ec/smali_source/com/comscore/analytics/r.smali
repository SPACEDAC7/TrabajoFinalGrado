.class Lcom/comscore/analytics/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/comscore/analytics/Core;


# direct methods
.method constructor <init>(Lcom/comscore/analytics/Core;I)V
    .registers 3

    iput-object p1, p0, Lcom/comscore/analytics/r;->b:Lcom/comscore/analytics/Core;

    iput p2, p0, Lcom/comscore/analytics/r;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/comscore/analytics/r;->b:Lcom/comscore/analytics/Core;

    iget-object v0, v0, Lcom/comscore/analytics/Core;->a:Lcom/comscore/utils/OfflineMeasurementsCache;

    iget v1, p0, Lcom/comscore/analytics/r;->a:I

    invoke-virtual {v0, v1}, Lcom/comscore/utils/OfflineMeasurementsCache;->setCacheWaitMinutes(I)V

    return-void
.end method
