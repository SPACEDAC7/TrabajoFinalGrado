.class Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "DefaultConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;)V
    .registers 2

    .prologue
    .line 17
    iput-object p1, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;->this$0:Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 20
    iget-object v1, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;->this$0:Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;

    # getter for: Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->isConnected:Z
    invoke-static {v1}, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->access$000(Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;)Z

    move-result v0

    .line 21
    .local v0, "wasConnected":Z
    iget-object v1, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;->this$0:Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;

    iget-object v2, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;->this$0:Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;

    # invokes: Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->isConnected(Landroid/content/Context;)Z
    invoke-static {v2, p1}, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->access$100(Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;Landroid/content/Context;)Z

    move-result v2

    # setter for: Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->isConnected:Z
    invoke-static {v1, v2}, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->access$002(Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;Z)Z

    .line 22
    iget-object v1, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;->this$0:Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;

    # getter for: Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->isConnected:Z
    invoke-static {v1}, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->access$000(Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;)Z

    move-result v1

    if-eq v0, v1, :cond_28

    .line 23
    iget-object v1, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;->this$0:Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;

    # getter for: Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->listener:Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;
    invoke-static {v1}, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->access$200(Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;)Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;->this$0:Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;

    # getter for: Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->isConnected:Z
    invoke-static {v2}, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->access$000(Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;)Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;->onConnectivityChanged(Z)V

    .line 25
    :cond_28
    return-void
.end method
