.class public Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;
.super Ljava/lang/Object;
.source "ConnectivityMonitorFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;)Lcom/bumptech/glide/manager/ConnectivityMonitor;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;

    .prologue
    .line 13
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    .line 14
    .local v1, "res":I
    if-nez v1, :cond_11

    const/4 v0, 0x1

    .line 15
    .local v0, "hasPermission":Z
    :goto_9
    if-eqz v0, :cond_13

    .line 16
    new-instance v2, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;

    invoke-direct {v2, p1, p2}, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;-><init>(Landroid/content/Context;Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;)V

    .line 18
    :goto_10
    return-object v2

    .line 14
    .end local v0    # "hasPermission":Z
    :cond_11
    const/4 v0, 0x0

    goto :goto_9

    .line 18
    .restart local v0    # "hasPermission":Z
    :cond_13
    new-instance v2, Lcom/bumptech/glide/manager/NullConnectivityMonitor;

    invoke-direct {v2}, Lcom/bumptech/glide/manager/NullConnectivityMonitor;-><init>()V

    goto :goto_10
.end method
