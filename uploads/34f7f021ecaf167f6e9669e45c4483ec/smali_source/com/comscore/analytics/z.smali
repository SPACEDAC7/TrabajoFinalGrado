.class Lcom/comscore/analytics/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/comscore/applications/EventType;

.field final synthetic b:Ljava/util/HashMap;

.field final synthetic c:Lcom/comscore/analytics/Core;


# direct methods
.method constructor <init>(Lcom/comscore/analytics/Core;Lcom/comscore/applications/EventType;Ljava/util/HashMap;)V
    .registers 4

    iput-object p1, p0, Lcom/comscore/analytics/z;->c:Lcom/comscore/analytics/Core;

    iput-object p2, p0, Lcom/comscore/analytics/z;->a:Lcom/comscore/applications/EventType;

    iput-object p3, p0, Lcom/comscore/analytics/z;->b:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/comscore/analytics/z;->c:Lcom/comscore/analytics/Core;

    iget-object v1, p0, Lcom/comscore/analytics/z;->a:Lcom/comscore/applications/EventType;

    iget-object v2, p0, Lcom/comscore/analytics/z;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/comscore/analytics/Core;->a(Lcom/comscore/applications/EventType;Ljava/util/HashMap;)V

    return-void
.end method
