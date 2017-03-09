.class Lcom/comscore/streaming/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/comscore/streaming/StreamSense;


# direct methods
.method constructor <init>(Lcom/comscore/streaming/StreamSense;)V
    .registers 2

    iput-object p1, p0, Lcom/comscore/streaming/c;->a:Lcom/comscore/streaming/StreamSense;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/comscore/streaming/c;->a:Lcom/comscore/streaming/StreamSense;

    invoke-virtual {v0}, Lcom/comscore/streaming/StreamSense;->b()V

    return-void
.end method
