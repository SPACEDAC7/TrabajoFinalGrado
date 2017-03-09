.class Ljackpal/androidterm/Term$4;
.super Ljava/lang/Object;
.source "Term.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljackpal/androidterm/Term;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljackpal/androidterm/Term;


# direct methods
.method constructor <init>(Ljackpal/androidterm/Term;)V
    .registers 2

    .prologue
    .line 271
    iput-object p1, p0, Ljackpal/androidterm/Term$4;->this$0:Ljackpal/androidterm/Term;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private backkeyInterceptor(ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 314
    const/4 v0, 0x4

    if-ne p1, v0, :cond_27

    iget-object v0, p0, Ljackpal/androidterm/Term$4;->this$0:Ljackpal/androidterm/Term;

    # getter for: Ljackpal/androidterm/Term;->mActionBarMode:I
    invoke-static {v0}, Ljackpal/androidterm/Term;->access$1000(Ljackpal/androidterm/Term;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Ljackpal/androidterm/Term$4;->this$0:Ljackpal/androidterm/Term;

    # getter for: Ljackpal/androidterm/Term;->mActionBar:Ljackpal/androidterm/compat/ActionBarCompat;
    invoke-static {v0}, Ljackpal/androidterm/Term;->access$700(Ljackpal/androidterm/Term;)Ljackpal/androidterm/compat/ActionBarCompat;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Ljackpal/androidterm/Term$4;->this$0:Ljackpal/androidterm/Term;

    # getter for: Ljackpal/androidterm/Term;->mActionBar:Ljackpal/androidterm/compat/ActionBarCompat;
    invoke-static {v0}, Ljackpal/androidterm/Term;->access$700(Ljackpal/androidterm/Term;)Ljackpal/androidterm/compat/ActionBarCompat;

    move-result-object v0

    invoke-virtual {v0}, Ljackpal/androidterm/compat/ActionBarCompat;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 317
    iget-object v0, p0, Ljackpal/androidterm/Term$4;->this$0:Ljackpal/androidterm/Term;

    invoke-virtual {v0, p1, p2}, Ljackpal/androidterm/Term;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 318
    const/4 v0, 0x1

    .line 320
    :goto_26
    return v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_26
.end method

.method private keyboardShortcuts(ILandroid/view/KeyEvent;)Z
    .registers 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 280
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-eqz v4, :cond_9

    .line 306
    :cond_8
    :goto_8
    return v3

    .line 283
    :cond_9
    iget-object v4, p0, Ljackpal/androidterm/Term$4;->this$0:Ljackpal/androidterm/Term;

    # getter for: Ljackpal/androidterm/Term;->mUseKeyboardShortcuts:Z
    invoke-static {v4}, Ljackpal/androidterm/Term;->access$1300(Ljackpal/androidterm/Term;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 286
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    and-int/lit16 v4, v4, 0x1000

    if-eqz v4, :cond_36

    move v0, v2

    .line 287
    .local v0, "isCtrlPressed":Z
    :goto_1a
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_38

    move v1, v2

    .line 289
    .local v1, "isShiftPressed":Z
    :goto_23
    const/16 v4, 0x3d

    if-ne p1, v4, :cond_44

    if-eqz v0, :cond_44

    .line 290
    if-eqz v1, :cond_3a

    .line 291
    iget-object v3, p0, Ljackpal/androidterm/Term$4;->this$0:Ljackpal/androidterm/Term;

    # getter for: Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;
    invoke-static {v3}, Ljackpal/androidterm/Term;->access$600(Ljackpal/androidterm/Term;)Ljackpal/androidterm/TermViewFlipper;

    move-result-object v3

    invoke-virtual {v3}, Ljackpal/androidterm/TermViewFlipper;->showPrevious()V

    :goto_34
    move v3, v2

    .line 296
    goto :goto_8

    .end local v0    # "isCtrlPressed":Z
    .end local v1    # "isShiftPressed":Z
    :cond_36
    move v0, v3

    .line 286
    goto :goto_1a

    .restart local v0    # "isCtrlPressed":Z
    :cond_38
    move v1, v3

    .line 287
    goto :goto_23

    .line 293
    .restart local v1    # "isShiftPressed":Z
    :cond_3a
    iget-object v3, p0, Ljackpal/androidterm/Term$4;->this$0:Ljackpal/androidterm/Term;

    # getter for: Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;
    invoke-static {v3}, Ljackpal/androidterm/Term;->access$600(Ljackpal/androidterm/Term;)Ljackpal/androidterm/TermViewFlipper;

    move-result-object v3

    invoke-virtual {v3}, Ljackpal/androidterm/TermViewFlipper;->showNext()V

    goto :goto_34

    .line 297
    :cond_44
    const/16 v4, 0x2a

    if-ne p1, v4, :cond_53

    if-eqz v0, :cond_53

    if-eqz v1, :cond_53

    .line 298
    iget-object v3, p0, Ljackpal/androidterm/Term$4;->this$0:Ljackpal/androidterm/Term;

    # invokes: Ljackpal/androidterm/Term;->doCreateNewWindow()V
    invoke-static {v3}, Ljackpal/androidterm/Term;->access$1400(Ljackpal/androidterm/Term;)V

    move v3, v2

    .line 300
    goto :goto_8

    .line 301
    :cond_53
    const/16 v4, 0x32

    if-ne p1, v4, :cond_8

    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    .line 302
    iget-object v3, p0, Ljackpal/androidterm/Term$4;->this$0:Ljackpal/androidterm/Term;

    # invokes: Ljackpal/androidterm/Term;->doPaste()V
    invoke-static {v3}, Ljackpal/androidterm/Term;->access$1500(Ljackpal/androidterm/Term;)V

    move v3, v2

    .line 304
    goto :goto_8
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 273
    invoke-direct {p0, p2, p3}, Ljackpal/androidterm/Term$4;->backkeyInterceptor(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0, p2, p3}, Ljackpal/androidterm/Term$4;->keyboardShortcuts(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
