.class Lcom/comscore/utils/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/comscore/utils/ConnectivityChangeReceiver;


# direct methods
.method constructor <init>(Lcom/comscore/utils/ConnectivityChangeReceiver;)V
    .registers 2

    iput-object p1, p0, Lcom/comscore/utils/a;->a:Lcom/comscore/utils/ConnectivityChangeReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/comscore/utils/a;->a:Lcom/comscore/utils/ConnectivityChangeReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/comscore/utils/ConnectivityChangeReceiver;->b(Z)V

    return-void
.end method
