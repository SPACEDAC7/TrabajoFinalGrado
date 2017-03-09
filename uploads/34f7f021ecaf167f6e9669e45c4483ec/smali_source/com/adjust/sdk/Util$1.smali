.class final Lcom/adjust/sdk/Util$1;
.super Landroid/os/AsyncTask;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/Util;->getGoogleAdId(Landroid/content/Context;Lcom/adjust/sdk/OnDeviceIdsRead;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$onDeviceIdRead:Lcom/adjust/sdk/OnDeviceIdsRead;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/OnDeviceIdsRead;)V
    .registers 2

    .prologue
    .line 107
    iput-object p1, p0, Lcom/adjust/sdk/Util$1;->val$onDeviceIdRead:Lcom/adjust/sdk/OnDeviceIdsRead;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 107
    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/adjust/sdk/Util$1;->doInBackground([Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/Context;)Ljava/lang/String;
    .registers 8
    .param p1, "params"    # [Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 110
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v2

    .line 111
    .local v2, "logger":Lcom/adjust/sdk/ILogger;
    aget-object v0, p1, v5

    .line 112
    .local v0, "innerContext":Landroid/content/Context;
    invoke-static {v0}, Lcom/adjust/sdk/Util;->getPlayAdId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "innerResult":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GoogleAdId read "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 107
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/adjust/sdk/Util$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 4
    .param p1, "playAdiId"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    .line 120
    .local v0, "logger":Lcom/adjust/sdk/ILogger;
    iget-object v1, p0, Lcom/adjust/sdk/Util$1;->val$onDeviceIdRead:Lcom/adjust/sdk/OnDeviceIdsRead;

    invoke-interface {v1, p1}, Lcom/adjust/sdk/OnDeviceIdsRead;->onGoogleAdIdRead(Ljava/lang/String;)V

    .line 121
    return-void
.end method
