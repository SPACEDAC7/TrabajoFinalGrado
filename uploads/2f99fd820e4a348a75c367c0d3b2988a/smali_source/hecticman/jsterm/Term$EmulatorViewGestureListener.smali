.class Lhecticman/jsterm/Term$EmulatorViewGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "Term.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhecticman/jsterm/Term;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmulatorViewGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lhecticman/jsterm/Term;

.field private view:Lhecticman/jsterm/emulatorview/EmulatorView;


# direct methods
.method public constructor <init>(Lhecticman/jsterm/Term;Lhecticman/jsterm/emulatorview/EmulatorView;)V
    .registers 3
    .param p2, "view"    # Lhecticman/jsterm/emulatorview/EmulatorView;

    .prologue
    .line 230
    iput-object p1, p0, Lhecticman/jsterm/Term$EmulatorViewGestureListener;->this$0:Lhecticman/jsterm/Term;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 231
    iput-object p2, p0, Lhecticman/jsterm/Term$EmulatorViewGestureListener;->view:Lhecticman/jsterm/emulatorview/EmulatorView;

    .line 232
    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 8
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 242
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_29

    .line 244
    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_1f

    .line 246
    iget-object v0, p0, Lhecticman/jsterm/Term$EmulatorViewGestureListener;->this$0:Lhecticman/jsterm/Term;

    # getter for: Lhecticman/jsterm/Term;->mViewFlipper:Lhecticman/jsterm/TermViewFlipper;
    invoke-static {v0}, Lhecticman/jsterm/Term;->access$8(Lhecticman/jsterm/Term;)Lhecticman/jsterm/TermViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lhecticman/jsterm/TermViewFlipper;->showPrevious()V

    .line 251
    :goto_1d
    const/4 v0, 0x1

    .line 253
    :goto_1e
    return v0

    .line 249
    :cond_1f
    iget-object v0, p0, Lhecticman/jsterm/Term$EmulatorViewGestureListener;->this$0:Lhecticman/jsterm/Term;

    # getter for: Lhecticman/jsterm/Term;->mViewFlipper:Lhecticman/jsterm/TermViewFlipper;
    invoke-static {v0}, Lhecticman/jsterm/Term;->access$8(Lhecticman/jsterm/Term;)Lhecticman/jsterm/TermViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lhecticman/jsterm/TermViewFlipper;->showNext()V

    goto :goto_1d

    .line 253
    :cond_29
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 236
    iget-object v0, p0, Lhecticman/jsterm/Term$EmulatorViewGestureListener;->this$0:Lhecticman/jsterm/Term;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lhecticman/jsterm/Term$EmulatorViewGestureListener;->view:Lhecticman/jsterm/emulatorview/EmulatorView;

    invoke-virtual {v3}, Lhecticman/jsterm/emulatorview/EmulatorView;->getVisibleWidth()I

    move-result v3

    iget-object v4, p0, Lhecticman/jsterm/Term$EmulatorViewGestureListener;->view:Lhecticman/jsterm/emulatorview/EmulatorView;

    invoke-virtual {v4}, Lhecticman/jsterm/emulatorview/EmulatorView;->getVisibleHeight()I

    move-result v4

    # invokes: Lhecticman/jsterm/Term;->doUIToggle(IIII)V
    invoke-static {v0, v1, v2, v3, v4}, Lhecticman/jsterm/Term;->access$11(Lhecticman/jsterm/Term;IIII)V

    .line 237
    const/4 v0, 0x1

    return v0
.end method
