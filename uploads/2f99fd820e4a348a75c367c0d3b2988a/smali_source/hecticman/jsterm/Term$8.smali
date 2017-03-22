.class Lhecticman/jsterm/Term$8;
.super Ljava/lang/Object;
.source "Term.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhecticman/jsterm/Term;->confirmCloseWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhecticman/jsterm/Term;

.field private final synthetic val$closeWindow:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lhecticman/jsterm/Term;Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lhecticman/jsterm/Term$8;->this$0:Lhecticman/jsterm/Term;

    iput-object p2, p0, Lhecticman/jsterm/Term$8;->val$closeWindow:Ljava/lang/Runnable;

    .line 697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 699
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 700
    iget-object v0, p0, Lhecticman/jsterm/Term$8;->this$0:Lhecticman/jsterm/Term;

    # getter for: Lhecticman/jsterm/Term;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lhecticman/jsterm/Term;->access$14(Lhecticman/jsterm/Term;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lhecticman/jsterm/Term$8;->val$closeWindow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 701
    return-void
.end method
