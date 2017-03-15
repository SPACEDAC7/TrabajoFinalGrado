.class Lcom/ngb/wpsconnect/MainActivity$CallSU;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ngb/wpsconnect/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallSU"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field static final CONNECTED:I = 0x1

.field static final NOROOTDEVICE:I = -0x1

.field static final NOT_CONNECTED:I


# instance fields
.field final BSSID:Ljava/lang/String;

.field final cmd:Ljava/lang/String;

.field final pDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/ngb/wpsconnect/MainActivity;


# direct methods
.method public constructor <init>(Lcom/ngb/wpsconnect/MainActivity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "BSSID"    # Ljava/lang/String;

    .prologue
    .line 465
    iput-object p1, p0, Lcom/ngb/wpsconnect/MainActivity$CallSU;->this$0:Lcom/ngb/wpsconnect/MainActivity;

    .line 464
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 466
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p1, Lcom/ngb/wpsconnect/MainActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ngb/wpsconnect/MainActivity$CallSU;->pDialog:Landroid/app/ProgressDialog;

    .line 467
    iput-object p2, p0, Lcom/ngb/wpsconnect/MainActivity$CallSU;->cmd:Ljava/lang/String;

    .line 468
    iput-object p3, p0, Lcom/ngb/wpsconnect/MainActivity$CallSU;->BSSID:Ljava/lang/String;

    .line 469
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .registers 14
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v6, 0x1

    .line 475
    iget-object v7, p0, Lcom/ngb/wpsconnect/MainActivity$CallSU;->this$0:Lcom/ngb/wpsconnect/MainActivity;

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Lcom/ngb/wpsconnect/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 476
    .local v0, "cManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 479
    .local v1, "mWifi":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_3b

    .line 482
    iget-object v7, p0, Lcom/ngb/wpsconnect/MainActivity$CallSU;->this$0:Lcom/ngb/wpsconnect/MainActivity;

    iget-object v7, v7, Lcom/ngb/wpsconnect/MainActivity;->wifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/ngb/wpsconnect/MainActivity$CallSU;->BSSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 522
    :goto_2d
    return-object v6

    .line 484
    :cond_2e
    iget-object v7, p0, Lcom/ngb/wpsconnect/MainActivity$CallSU;->this$0:Lcom/ngb/wpsconnect/MainActivity;

    iget-object v7, v7, Lcom/ngb/wpsconnect/MainActivity;->wifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 486
    :goto_35
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-nez v7, :cond_4f

    .line 497
    :cond_3b
    iget-object v7, p0, Lcom/ngb/wpsconnect/MainActivity$CallSU;->cmd:Ljava/lang/String;

    invoke-static {v7}, Lcom/ngb/wpsconnect/Function;->invokeSU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 499
    .local v3, "result":Ljava/lang/String;
    const-string v7, "norootdevice"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_54

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_2d

    .line 488
    .end local v3    # "result":Ljava/lang/String;
    :cond_4f
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    goto :goto_35

    .line 500
    .restart local v3    # "result":Ljava/lang/String;
    :cond_54
    const-string v7, "OK"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_69

    .line 502
    iget-object v7, p0, Lcom/ngb/wpsconnect/MainActivity$CallSU;->cmd:Ljava/lang/String;

    const-string v8, "IFNAME=wlan0 "

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ngb/wpsconnect/Function;->invokeSU(Ljava/lang/String;)Ljava/lang/String;

    .line 505
    :cond_69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 506
    .local v4, "time":J
    const/4 v2, 0x0

    .line 507
    .local v2, "out":Z
    :cond_6e
    :goto_6e
    if-nez v2, :cond_7b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x1f40

    add-long/2addr v10, v4

    cmp-long v7, v8, v10

    if-ltz v7, :cond_91

    .line 519
    :cond_7b
    const-string v7, "cat /data/misc/wifi/wpa_supplicant.conf"

    invoke-static {v7}, Lcom/ngb/wpsconnect/Function;->invokeSU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/ngb/wpsconnect/MainActivity$CallSU;->BSSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8a

    const/4 v2, 0x1

    .line 522
    :cond_8a
    if-eqz v2, :cond_b1

    :goto_8c
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_2d

    .line 509
    :cond_91
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 510
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_6e

    .line 513
    iget-object v7, p0, Lcom/ngb/wpsconnect/MainActivity$CallSU;->this$0:Lcom/ngb/wpsconnect/MainActivity;

    iget-object v7, v7, Lcom/ngb/wpsconnect/MainActivity;->wifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/ngb/wpsconnect/MainActivity$CallSU;->BSSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6e

    .line 515
    const/4 v2, 0x1

    goto :goto_6e

    .line 522
    :cond_b1
    const/4 v6, 0x0

    goto :goto_8c
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ngb/wpsconnect/MainActivity$CallSU;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .registers 3
    .param p1, "control"    # Ljava/lang/Integer;

    .prologue
    .line 545
    iget-object v0, p0, Lcom/ngb/wpsconnect/MainActivity$CallSU;->pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 546
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_24

    .line 551
    iget-object v0, p0, Lcom/ngb/wpsconnect/MainActivity$CallSU;->this$0:Lcom/ngb/wpsconnect/MainActivity;

    # invokes: Lcom/ngb/wpsconnect/MainActivity;->showFailDialog()V
    invoke-static {v0}, Lcom/ngb/wpsconnect/MainActivity;->access$1(Lcom/ngb/wpsconnect/MainActivity;)V

    .line 553
    :goto_11
    return-void

    .line 548
    :pswitch_12
    iget-object v0, p0, Lcom/ngb/wpsconnect/MainActivity$CallSU;->this$0:Lcom/ngb/wpsconnect/MainActivity;

    # invokes: Lcom/ngb/wpsconnect/MainActivity;->showNoRootDeviceDialog()V
    invoke-static {v0}, Lcom/ngb/wpsconnect/MainActivity;->access$0(Lcom/ngb/wpsconnect/MainActivity;)V

    goto :goto_11

    .line 549
    :pswitch_18
    iget-object v0, p0, Lcom/ngb/wpsconnect/MainActivity$CallSU;->this$0:Lcom/ngb/wpsconnect/MainActivity;

    # invokes: Lcom/ngb/wpsconnect/MainActivity;->showFailDialog()V
    invoke-static {v0}, Lcom/ngb/wpsconnect/MainActivity;->access$1(Lcom/ngb/wpsconnect/MainActivity;)V

    goto :goto_11

    .line 550
    :pswitch_1e
    iget-object v0, p0, Lcom/ngb/wpsconnect/MainActivity$CallSU;->this$0:Lcom/ngb/wpsconnect/MainActivity;

    # invokes: Lcom/ngb/wpsconnect/MainActivity;->showSuccessDialog()V
    invoke-static {v0}, Lcom/ngb/wpsconnect/MainActivity;->access$2(Lcom/ngb/wpsconnect/MainActivity;)V

    goto :goto_11

    .line 546
    :pswitch_data_24
    .packed-switch -0x1
        :pswitch_12
        :pswitch_18
        :pswitch_1e
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/ngb/wpsconnect/MainActivity$CallSU;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 534
    iget-object v0, p0, Lcom/ngb/wpsconnect/MainActivity$CallSU;->pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 535
    iget-object v0, p0, Lcom/ngb/wpsconnect/MainActivity$CallSU;->pDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/ngb/wpsconnect/MainActivity$CallSU;->this$0:Lcom/ngb/wpsconnect/MainActivity;

    invoke-virtual {v1}, Lcom/ngb/wpsconnect/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 536
    iget-object v0, p0, Lcom/ngb/wpsconnect/MainActivity$CallSU;->pDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 537
    iget-object v0, p0, Lcom/ngb/wpsconnect/MainActivity$CallSU;->pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 538
    iget-object v0, p0, Lcom/ngb/wpsconnect/MainActivity$CallSU;->pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 539
    iget-object v0, p0, Lcom/ngb/wpsconnect/MainActivity$CallSU;->pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 540
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .registers 4
    .param p1, "values"    # [Ljava/lang/Integer;

    .prologue
    .line 528
    iget-object v0, p0, Lcom/ngb/wpsconnect/MainActivity$CallSU;->pDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 529
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/ngb/wpsconnect/MainActivity$CallSU;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
