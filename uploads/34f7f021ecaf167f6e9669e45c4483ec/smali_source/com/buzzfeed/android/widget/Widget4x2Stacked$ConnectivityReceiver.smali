.class public Lcom/buzzfeed/android/widget/Widget4x2Stacked$ConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Widget4x2Stacked.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/widget/Widget4x2Stacked;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectivityReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 150
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 153
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_20

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 155
    invoke-static {p1}, Lcom/buzzfeed/toolkit/util/NetworkUtil;->isConnectedToNetwork(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 156
    # getter for: Lcom/buzzfeed/android/widget/Widget4x2Stacked;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/buzzfeed/android/widget/Widget4x2Stacked;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Connected to network. Refreshing stack widgets"

    invoke-static {v1, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-static {p1}, Lcom/buzzfeed/android/widget/Widget4x2Stacked;->update(Landroid/content/Context;)V

    .line 160
    :cond_20
    return-void
.end method
