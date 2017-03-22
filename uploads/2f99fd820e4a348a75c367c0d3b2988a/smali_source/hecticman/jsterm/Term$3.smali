.class Lhecticman/jsterm/Term$3;
.super Ljava/lang/Object;
.source "Term.java"

# interfaces
.implements Lhecticman/jsterm/compat/ActionBarCompat$OnNavigationListener;


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
    iput-object p1, p0, Lhecticman/jsterm/Term$3;->this$0:Lhecticman/jsterm/Term;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(IJ)Z
    .registers 7
    .param p1, "position"    # I
    .param p2, "id"    # J

    .prologue
    .line 214
    iget-object v1, p0, Lhecticman/jsterm/Term$3;->this$0:Lhecticman/jsterm/Term;

    # getter for: Lhecticman/jsterm/Term;->mViewFlipper:Lhecticman/jsterm/TermViewFlipper;
    invoke-static {v1}, Lhecticman/jsterm/Term;->access$8(Lhecticman/jsterm/Term;)Lhecticman/jsterm/TermViewFlipper;

    move-result-object v1

    invoke-virtual {v1}, Lhecticman/jsterm/TermViewFlipper;->getDisplayedChild()I

    move-result v0

    .line 215
    .local v0, "oldPosition":I
    if-eq p1, v0, :cond_27

    .line 216
    iget-object v1, p0, Lhecticman/jsterm/Term$3;->this$0:Lhecticman/jsterm/Term;

    # getter for: Lhecticman/jsterm/Term;->mViewFlipper:Lhecticman/jsterm/TermViewFlipper;
    invoke-static {v1}, Lhecticman/jsterm/Term;->access$8(Lhecticman/jsterm/Term;)Lhecticman/jsterm/TermViewFlipper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lhecticman/jsterm/TermViewFlipper;->setDisplayedChild(I)V

    .line 217
    iget-object v1, p0, Lhecticman/jsterm/Term$3;->this$0:Lhecticman/jsterm/Term;

    # getter for: Lhecticman/jsterm/Term;->mActionBarMode:I
    invoke-static {v1}, Lhecticman/jsterm/Term;->access$9(Lhecticman/jsterm/Term;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_27

    .line 218
    iget-object v1, p0, Lhecticman/jsterm/Term$3;->this$0:Lhecticman/jsterm/Term;

    # getter for: Lhecticman/jsterm/Term;->mActionBar:Lhecticman/jsterm/compat/ActionBarCompat;
    invoke-static {v1}, Lhecticman/jsterm/Term;->access$10(Lhecticman/jsterm/Term;)Lhecticman/jsterm/compat/ActionBarCompat;

    move-result-object v1

    invoke-virtual {v1}, Lhecticman/jsterm/compat/ActionBarCompat;->hide()V

    .line 221
    :cond_27
    const/4 v1, 0x1

    return v1
.end method
