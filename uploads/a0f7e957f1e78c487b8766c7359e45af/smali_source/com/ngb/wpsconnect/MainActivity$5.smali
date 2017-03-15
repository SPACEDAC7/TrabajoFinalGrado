.class Lcom/ngb/wpsconnect/MainActivity$5;
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


# direct methods
.method constructor <init>(Lcom/ngb/wpsconnect/MainActivity;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ngb/wpsconnect/MainActivity$5;->this$0:Lcom/ngb/wpsconnect/MainActivity;

    iput-object p2, p0, Lcom/ngb/wpsconnect/MainActivity$5;->val$BSSID:Ljava/lang/String;

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 392
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 393
    iget-object v0, p0, Lcom/ngb/wpsconnect/MainActivity$5;->this$0:Lcom/ngb/wpsconnect/MainActivity;

    iget-object v1, p0, Lcom/ngb/wpsconnect/MainActivity$5;->val$BSSID:Ljava/lang/String;

    # invokes: Lcom/ngb/wpsconnect/MainActivity;->showCustomPINDialog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/ngb/wpsconnect/MainActivity;->access$4(Lcom/ngb/wpsconnect/MainActivity;Ljava/lang/String;)V

    .line 394
    return-void
.end method
