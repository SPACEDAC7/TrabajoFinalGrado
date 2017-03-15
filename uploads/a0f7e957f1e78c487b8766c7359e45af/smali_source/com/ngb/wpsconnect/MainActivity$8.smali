.class Lcom/ngb/wpsconnect/MainActivity$8;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ngb/wpsconnect/MainActivity;->showCustomPINDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ngb/wpsconnect/MainActivity;

.field private final synthetic val$BSSID:Ljava/lang/String;

.field private final synthetic val$custompin:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/ngb/wpsconnect/MainActivity;Ljava/lang/String;Landroid/widget/EditText;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ngb/wpsconnect/MainActivity$8;->this$0:Lcom/ngb/wpsconnect/MainActivity;

    iput-object p2, p0, Lcom/ngb/wpsconnect/MainActivity$8;->val$BSSID:Ljava/lang/String;

    iput-object p3, p0, Lcom/ngb/wpsconnect/MainActivity$8;->val$custompin:Landroid/widget/EditText;

    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 443
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ngb/wpsconnect/MainActivity$8;->this$0:Lcom/ngb/wpsconnect/MainActivity;

    iget-object v2, v2, Lcom/ngb/wpsconnect/MainActivity;->wpa_cli:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " IFNAME=wlan0 wps_reg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ngb/wpsconnect/MainActivity$8;->val$BSSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ngb/wpsconnect/MainActivity$8;->val$custompin:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, "cmd":Ljava/lang/String;
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 446
    new-instance v1, Lcom/ngb/wpsconnect/MainActivity$CallSU;

    iget-object v2, p0, Lcom/ngb/wpsconnect/MainActivity$8;->this$0:Lcom/ngb/wpsconnect/MainActivity;

    iget-object v3, p0, Lcom/ngb/wpsconnect/MainActivity$8;->val$BSSID:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3}, Lcom/ngb/wpsconnect/MainActivity$CallSU;-><init>(Lcom/ngb/wpsconnect/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/ngb/wpsconnect/MainActivity$CallSU;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 448
    return-void
.end method
