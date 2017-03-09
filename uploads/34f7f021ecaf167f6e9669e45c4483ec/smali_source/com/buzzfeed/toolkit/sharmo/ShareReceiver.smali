.class public Lcom/buzzfeed/toolkit/sharmo/ShareReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ShareReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 17
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 18
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_b

    .line 19
    invoke-static {v3}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->sendShareApp(Ljava/lang/String;)V

    .line 30
    :goto_a
    return-void

    .line 23
    :cond_b
    const-string v2, "android.intent.extra.CHOSEN_COMPONENT"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 24
    .local v1, "componentName":Landroid/content/ComponentName;
    if-nez v1, :cond_19

    .line 25
    invoke-static {v3}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->sendShareApp(Ljava/lang/String;)V

    goto :goto_a

    .line 29
    :cond_19
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->sendShareApp(Ljava/lang/String;)V

    goto :goto_a
.end method
