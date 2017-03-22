.class Lhecticman/jsterm/Term$5;
.super Ljava/lang/Thread;
.source "Term.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhecticman/jsterm/Term;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhecticman/jsterm/Term;

.field private final synthetic val$token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lhecticman/jsterm/Term;Landroid/os/IBinder;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lhecticman/jsterm/Term$5;->this$0:Lhecticman/jsterm/Term;

    iput-object p2, p0, Lhecticman/jsterm/Term$5;->val$token:Landroid/os/IBinder;

    .line 581
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 584
    iget-object v1, p0, Lhecticman/jsterm/Term$5;->this$0:Lhecticman/jsterm/Term;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lhecticman/jsterm/Term;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 585
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lhecticman/jsterm/Term$5;->val$token:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 586
    return-void
.end method
