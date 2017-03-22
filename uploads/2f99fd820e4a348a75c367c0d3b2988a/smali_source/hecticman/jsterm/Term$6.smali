.class Lhecticman/jsterm/Term$6;
.super Ljava/lang/Object;
.source "Term.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhecticman/jsterm/Term;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhecticman/jsterm/Term;


# direct methods
.method constructor <init>(Lhecticman/jsterm/Term;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lhecticman/jsterm/Term$6;->this$0:Lhecticman/jsterm/Term;

    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x0

    .line 638
    iget-object v1, p0, Lhecticman/jsterm/Term$6;->this$0:Lhecticman/jsterm/Term;

    # invokes: Lhecticman/jsterm/Term;->doResetTerminal()V
    invoke-static {v1}, Lhecticman/jsterm/Term;->access$12(Lhecticman/jsterm/Term;)V

    .line 639
    iget-object v1, p0, Lhecticman/jsterm/Term$6;->this$0:Lhecticman/jsterm/Term;

    const v2, 0x7f070021

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 640
    .local v0, "toast":Landroid/widget/Toast;
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 641
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 642
    return-void
.end method
