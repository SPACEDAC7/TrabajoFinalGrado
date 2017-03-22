.class Lhecticman/jsterm/Term$4;
.super Ljava/lang/Object;
.source "Term.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhecticman/jsterm/Term;
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
    iput-object p1, p0, Lhecticman/jsterm/Term$4;->this$0:Lhecticman/jsterm/Term;

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 260
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1f

    iget-object v0, p0, Lhecticman/jsterm/Term$4;->this$0:Lhecticman/jsterm/Term;

    # getter for: Lhecticman/jsterm/Term;->mActionBarMode:I
    invoke-static {v0}, Lhecticman/jsterm/Term;->access$9(Lhecticman/jsterm/Term;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1f

    iget-object v0, p0, Lhecticman/jsterm/Term$4;->this$0:Lhecticman/jsterm/Term;

    # getter for: Lhecticman/jsterm/Term;->mActionBar:Lhecticman/jsterm/compat/ActionBarCompat;
    invoke-static {v0}, Lhecticman/jsterm/Term;->access$10(Lhecticman/jsterm/Term;)Lhecticman/jsterm/compat/ActionBarCompat;

    move-result-object v0

    invoke-virtual {v0}, Lhecticman/jsterm/compat/ActionBarCompat;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 263
    iget-object v0, p0, Lhecticman/jsterm/Term$4;->this$0:Lhecticman/jsterm/Term;

    invoke-virtual {v0, p2, p3}, Lhecticman/jsterm/Term;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 264
    const/4 v0, 0x1

    .line 266
    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method
