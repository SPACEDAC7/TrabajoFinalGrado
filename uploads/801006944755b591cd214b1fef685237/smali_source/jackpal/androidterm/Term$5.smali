.class Ljackpal/androidterm/Term$5;
.super Ljava/lang/Thread;
.source "Term.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljackpal/androidterm/Term;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljackpal/androidterm/Term;

.field final synthetic val$token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Ljackpal/androidterm/Term;Landroid/os/IBinder;)V
    .registers 3

    .prologue
    .line 618
    iput-object p1, p0, Ljackpal/androidterm/Term$5;->this$0:Ljackpal/androidterm/Term;

    iput-object p2, p0, Ljackpal/androidterm/Term$5;->val$token:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 621
    iget-object v1, p0, Ljackpal/androidterm/Term$5;->this$0:Ljackpal/androidterm/Term;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Ljackpal/androidterm/Term;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 622
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Ljackpal/androidterm/Term$5;->val$token:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 623
    return-void
.end method
