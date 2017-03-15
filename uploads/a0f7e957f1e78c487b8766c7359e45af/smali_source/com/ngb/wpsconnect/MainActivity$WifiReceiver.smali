.class Lcom/ngb/wpsconnect/MainActivity$WifiReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ngb/wpsconnect/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ngb/wpsconnect/MainActivity;


# direct methods
.method private constructor <init>(Lcom/ngb/wpsconnect/MainActivity;)V
    .registers 2

    .prologue
    .line 178
    iput-object p1, p0, Lcom/ngb/wpsconnect/MainActivity$WifiReceiver;->this$0:Lcom/ngb/wpsconnect/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ngb/wpsconnect/MainActivity;Lcom/ngb/wpsconnect/MainActivity$WifiReceiver;)V
    .registers 3

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/ngb/wpsconnect/MainActivity$WifiReceiver;-><init>(Lcom/ngb/wpsconnect/MainActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/ngb/wpsconnect/MainActivity$WifiReceiver;->this$0:Lcom/ngb/wpsconnect/MainActivity;

    iget-boolean v0, v0, Lcom/ngb/wpsconnect/MainActivity;->autoScan:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/ngb/wpsconnect/MainActivity$WifiReceiver;->this$0:Lcom/ngb/wpsconnect/MainActivity;

    iget-boolean v0, v0, Lcom/ngb/wpsconnect/MainActivity;->receiverControl:Z

    if-eqz v0, :cond_19

    :cond_c
    iget-object v0, p0, Lcom/ngb/wpsconnect/MainActivity$WifiReceiver;->this$0:Lcom/ngb/wpsconnect/MainActivity;

    iget-object v1, p0, Lcom/ngb/wpsconnect/MainActivity$WifiReceiver;->this$0:Lcom/ngb/wpsconnect/MainActivity;

    iget-object v1, v1, Lcom/ngb/wpsconnect/MainActivity;->wifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ngb/wpsconnect/MainActivity;->NetInfo(Ljava/util/List;)V

    .line 182
    :cond_19
    return-void
.end method
