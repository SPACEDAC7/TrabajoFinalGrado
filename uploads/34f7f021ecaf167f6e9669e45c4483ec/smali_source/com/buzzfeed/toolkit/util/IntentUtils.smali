.class public Lcom/buzzfeed/toolkit/util/IntentUtils;
.super Ljava/lang/Object;
.source "IntentUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBundleFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;
    .registers 4
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 10
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 11
    .local v0, "arguments":Landroid/os/Bundle;
    if-nez p0, :cond_8

    .line 20
    :cond_7
    :goto_7
    return-object v0

    .line 15
    :cond_8
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 16
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_7

    .line 17
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_7
.end method
