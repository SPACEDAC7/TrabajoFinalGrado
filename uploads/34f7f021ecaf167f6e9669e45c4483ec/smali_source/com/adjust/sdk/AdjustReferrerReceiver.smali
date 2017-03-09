.class public Lcom/adjust/sdk/AdjustReferrerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AdjustReferrerReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 20
    const-string v4, "referrer"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 21
    .local v2, "rawReferrer":Ljava/lang/String;
    if-nez v2, :cond_9

    .line 34
    :goto_8
    return-void

    .line 27
    :cond_9
    :try_start_9
    const-string v4, "UTF-8"

    invoke-static {v2, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_e} :catch_17

    move-result-object v3

    .line 32
    .local v3, "referrer":Ljava/lang/String;
    :goto_f
    invoke-static {}, Lcom/adjust/sdk/Adjust;->getDefaultInstance()Lcom/adjust/sdk/AdjustInstance;

    move-result-object v0

    .line 33
    .local v0, "adjust":Lcom/adjust/sdk/AdjustInstance;
    invoke-virtual {v0, v3}, Lcom/adjust/sdk/AdjustInstance;->sendReferrer(Ljava/lang/String;)V

    goto :goto_8

    .line 28
    .end local v0    # "adjust":Lcom/adjust/sdk/AdjustInstance;
    .end local v3    # "referrer":Ljava/lang/String;
    :catch_17
    move-exception v1

    .line 29
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v3, "malformed"

    .restart local v3    # "referrer":Ljava/lang/String;
    goto :goto_f
.end method
