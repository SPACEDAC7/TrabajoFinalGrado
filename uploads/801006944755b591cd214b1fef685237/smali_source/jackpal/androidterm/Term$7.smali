.class Ljackpal/androidterm/Term$7;
.super Ljava/lang/Object;
.source "Term.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljackpal/androidterm/Term;->confirmCloseWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljackpal/androidterm/Term;

.field final synthetic val$closeWindow:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljackpal/androidterm/Term;Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 745
    iput-object p1, p0, Ljackpal/androidterm/Term$7;->this$0:Ljackpal/androidterm/Term;

    iput-object p2, p0, Ljackpal/androidterm/Term$7;->val$closeWindow:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 747
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 748
    iget-object v0, p0, Ljackpal/androidterm/Term$7;->this$0:Ljackpal/androidterm/Term;

    # getter for: Ljackpal/androidterm/Term;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Ljackpal/androidterm/Term;->access$1700(Ljackpal/androidterm/Term;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Ljackpal/androidterm/Term$7;->val$closeWindow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 749
    return-void
.end method
