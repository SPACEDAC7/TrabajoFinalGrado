.class final Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$NetworkChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BaseShowPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NetworkChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;


# direct methods
.method private constructor <init>(Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;)V
    .registers 2

    .prologue
    .line 883
    iput-object p1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$NetworkChangeReceiver;->this$0:Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;
    .param p2, "x1"    # Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$1;

    .prologue
    .line 883
    invoke-direct {p0, p1}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$NetworkChangeReceiver;-><init>(Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 887
    const-string v2, "connectivity"

    .line 888
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 889
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 890
    .local v1, "info":Landroid/net/NetworkInfo;
    iget-object v2, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$NetworkChangeReceiver;->this$0:Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;

    invoke-virtual {v2, v1}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->onNetworkChange(Landroid/net/NetworkInfo;)V

    .line 891
    return-void
.end method
