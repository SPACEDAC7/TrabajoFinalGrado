.class Lcom/comscore/streaming/d;
.super Lcom/comscore/streaming/f;


# instance fields
.field final synthetic a:Lcom/comscore/streaming/StreamSenseState;

.field final synthetic b:Ljava/util/HashMap;

.field final synthetic c:Lcom/comscore/streaming/StreamSense;


# direct methods
.method constructor <init>(Lcom/comscore/streaming/StreamSense;Lcom/comscore/streaming/StreamSenseState;Ljava/util/HashMap;)V
    .registers 5

    iput-object p1, p0, Lcom/comscore/streaming/d;->c:Lcom/comscore/streaming/StreamSense;

    iput-object p2, p0, Lcom/comscore/streaming/d;->a:Lcom/comscore/streaming/StreamSenseState;

    iput-object p3, p0, Lcom/comscore/streaming/d;->b:Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/comscore/streaming/f;-><init>(Lcom/comscore/streaming/StreamSense;Lcom/comscore/streaming/a;)V

    return-void
.end method


# virtual methods
.method public getNextState()Lcom/comscore/streaming/StreamSenseState;
    .registers 2

    iget-object v0, p0, Lcom/comscore/streaming/d;->a:Lcom/comscore/streaming/StreamSenseState;

    return-object v0
.end method

.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/comscore/streaming/d;->c:Lcom/comscore/streaming/StreamSense;

    const-string v1, "Performing delayed transition"

    invoke-static {v0, v1}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/streaming/d;->c:Lcom/comscore/streaming/StreamSense;

    iget-object v1, p0, Lcom/comscore/streaming/d;->a:Lcom/comscore/streaming/StreamSenseState;

    iget-object v2, p0, Lcom/comscore/streaming/d;->b:Ljava/util/HashMap;

    invoke-static {v0, v1, v2}, Lcom/comscore/streaming/StreamSense;->a(Lcom/comscore/streaming/StreamSense;Lcom/comscore/streaming/StreamSenseState;Ljava/util/HashMap;)V

    return-void
.end method
