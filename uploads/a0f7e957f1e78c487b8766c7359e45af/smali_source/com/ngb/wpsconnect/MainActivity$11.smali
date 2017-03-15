.class Lcom/ngb/wpsconnect/MainActivity$11;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ngb/wpsconnect/MainActivity;->showSuccessDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ngb/wpsconnect/MainActivity;


# direct methods
.method constructor <init>(Lcom/ngb/wpsconnect/MainActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ngb/wpsconnect/MainActivity$11;->this$0:Lcom/ngb/wpsconnect/MainActivity;

    .line 612
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

    .line 616
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 617
    iget-object v3, p0, Lcom/ngb/wpsconnect/MainActivity$11;->this$0:Lcom/ngb/wpsconnect/MainActivity;

    iget-object v3, v3, Lcom/ngb/wpsconnect/MainActivity;->intent:Landroid/content/Intent;

    const-string v4, "PSK"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 618
    .local v2, "psk":Ljava/lang/String;
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    .line 620
    iget-object v3, p0, Lcom/ngb/wpsconnect/MainActivity$11;->this$0:Lcom/ngb/wpsconnect/MainActivity;

    const-string v4, "clipboard"

    invoke-virtual {v3, v4}, Lcom/ngb/wpsconnect/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 621
    .local v1, "clipboard":Landroid/content/ClipboardManager;
    const-string v3, ""

    invoke-static {v3, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 622
    .local v0, "clip":Landroid/content/ClipData;
    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 624
    iget-object v3, p0, Lcom/ngb/wpsconnect/MainActivity$11;->this$0:Lcom/ngb/wpsconnect/MainActivity;

    invoke-virtual {v3}, Lcom/ngb/wpsconnect/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060011

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 628
    .end local v0    # "clip":Landroid/content/ClipData;
    .end local v1    # "clipboard":Landroid/content/ClipboardManager;
    :goto_39
    return-void

    .line 626
    :cond_3a
    iget-object v3, p0, Lcom/ngb/wpsconnect/MainActivity$11;->this$0:Lcom/ngb/wpsconnect/MainActivity;

    invoke-virtual {v3}, Lcom/ngb/wpsconnect/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060013

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_39
.end method
