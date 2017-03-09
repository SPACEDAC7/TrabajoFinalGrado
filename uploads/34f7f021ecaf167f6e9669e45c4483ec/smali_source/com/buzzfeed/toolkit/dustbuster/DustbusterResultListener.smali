.class public Lcom/buzzfeed/toolkit/dustbuster/DustbusterResultListener;
.super Landroid/content/BroadcastReceiver;
.source "DustbusterResultListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/toolkit/dustbuster/DustbusterResultListener$DustbusterResultCallback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/buzzfeed/toolkit/dustbuster/DustbusterResultListener$DustbusterResultCallback;

.field private mIsRegistered:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/buzzfeed/toolkit/dustbuster/DustbusterResultListener$DustbusterResultCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/buzzfeed/toolkit/dustbuster/DustbusterResultListener$DustbusterResultCallback;

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterResultListener;->mCallback:Lcom/buzzfeed/toolkit/dustbuster/DustbusterResultListener$DustbusterResultCallback;

    .line 19
    return-void
.end method

.method private static getIntentFilter()Landroid/content/IntentFilter;
    .registers 2

    .prologue
    .line 38
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.buzzfeed.dustbuster.result"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 39
    .local v0, "filter":Landroid/content/IntentFilter;
    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 44
    if-eqz p2, :cond_c

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterResultListener;->mCallback:Lcom/buzzfeed/toolkit/dustbuster/DustbusterResultListener$DustbusterResultCallback;

    if-nez v0, :cond_d

    .line 50
    :cond_c
    :goto_c
    return-void

    .line 46
    :cond_d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.buzzfeed.dustbuster.result"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 47
    iget-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterResultListener;->mCallback:Lcom/buzzfeed/toolkit/dustbuster/DustbusterResultListener$DustbusterResultCallback;

    const-string v1, "is_success"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "response_message"

    .line 48
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "keys_sent"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 47
    invoke-interface {v0, v1, v2, v3}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterResultListener$DustbusterResultCallback;->onEventsProcessed(ZLjava/lang/String;Ljava/util/List;)V

    goto :goto_c
.end method

.method public register(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterResultListener;->mIsRegistered:Z

    if-eqz v0, :cond_5

    .line 28
    :goto_4
    return-void

    .line 26
    :cond_5
    invoke-static {}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterResultListener;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterResultListener;->mIsRegistered:Z

    goto :goto_4
.end method

.method public unregister(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterResultListener;->mIsRegistered:Z

    if-nez v0, :cond_5

    .line 35
    :goto_4
    return-void

    .line 33
    :cond_5
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterResultListener;->mIsRegistered:Z

    goto :goto_4
.end method
