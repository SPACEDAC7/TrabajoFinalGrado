.class Lcom/ngb/wpsconnect/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ngb/wpsconnect/MainActivity;->showNetworkOptionsDialog(Lcom/ngb/wpsconnect/Network;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ngb/wpsconnect/MainActivity;

.field private final synthetic val$BSSID:Ljava/lang/String;

.field private final synthetic val$charSeq:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ngb/wpsconnect/MainActivity;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ngb/wpsconnect/MainActivity$6;->this$0:Lcom/ngb/wpsconnect/MainActivity;

    iput-object p2, p0, Lcom/ngb/wpsconnect/MainActivity$6;->val$BSSID:Ljava/lang/String;

    iput-object p3, p0, Lcom/ngb/wpsconnect/MainActivity$6;->val$charSeq:[Ljava/lang/String;

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x0

    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ngb/wpsconnect/MainActivity$6;->this$0:Lcom/ngb/wpsconnect/MainActivity;

    iget-object v2, v2, Lcom/ngb/wpsconnect/MainActivity;->wpa_cli:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " IFNAME=wlan0 wps_reg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ngb/wpsconnect/MainActivity$6;->val$BSSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ngb/wpsconnect/MainActivity$6;->val$charSeq:[Ljava/lang/String;

    iget-object v3, p0, Lcom/ngb/wpsconnect/MainActivity$6;->this$0:Lcom/ngb/wpsconnect/MainActivity;

    iget-object v3, v3, Lcom/ngb/wpsconnect/MainActivity;->intent:Landroid/content/Intent;

    const-string v4, "List_Position"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, "cmd":Ljava/lang/String;
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 406
    new-instance v1, Lcom/ngb/wpsconnect/MainActivity$CallSU;

    iget-object v2, p0, Lcom/ngb/wpsconnect/MainActivity$6;->this$0:Lcom/ngb/wpsconnect/MainActivity;

    iget-object v3, p0, Lcom/ngb/wpsconnect/MainActivity$6;->val$BSSID:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3}, Lcom/ngb/wpsconnect/MainActivity$CallSU;-><init>(Lcom/ngb/wpsconnect/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    new-array v2, v5, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/ngb/wpsconnect/MainActivity$CallSU;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 407
    return-void
.end method
