.class Lcom/bumptech/glide/RequestManager$RequestManagerConnectivityListener;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/RequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestManagerConnectivityListener"
.end annotation


# instance fields
.field private final requestTracker:Lcom/bumptech/glide/manager/RequestTracker;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/manager/RequestTracker;)V
    .registers 2
    .param p1, "requestTracker"    # Lcom/bumptech/glide/manager/RequestTracker;

    .prologue
    .line 792
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 793
    iput-object p1, p0, Lcom/bumptech/glide/RequestManager$RequestManagerConnectivityListener;->requestTracker:Lcom/bumptech/glide/manager/RequestTracker;

    .line 794
    return-void
.end method


# virtual methods
.method public onConnectivityChanged(Z)V
    .registers 3
    .param p1, "isConnected"    # Z

    .prologue
    .line 798
    if-eqz p1, :cond_7

    .line 799
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager$RequestManagerConnectivityListener;->requestTracker:Lcom/bumptech/glide/manager/RequestTracker;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/RequestTracker;->restartRequests()V

    .line 801
    :cond_7
    return-void
.end method
