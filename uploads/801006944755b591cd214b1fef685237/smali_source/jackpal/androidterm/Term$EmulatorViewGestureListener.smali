.class Ljackpal/androidterm/Term$EmulatorViewGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "Term.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljackpal/androidterm/Term;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmulatorViewGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Ljackpal/androidterm/Term;

.field private view:Ljackpal/androidterm/emulatorview/EmulatorView;


# direct methods
.method public constructor <init>(Ljackpal/androidterm/Term;Ljackpal/androidterm/emulatorview/EmulatorView;)V
    .registers 3
    .param p2, "view"    # Ljackpal/androidterm/emulatorview/EmulatorView;

    .prologue
    .line 225
    iput-object p1, p0, Ljackpal/androidterm/Term$EmulatorViewGestureListener;->this$0:Ljackpal/androidterm/Term;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 226
    iput-object p2, p0, Ljackpal/androidterm/Term$EmulatorViewGestureListener;->view:Ljackpal/androidterm/emulatorview/EmulatorView;

    .line 227
    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 15
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 245
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 246
    .local v0, "absVelocityX":F
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 247
    .local v1, "absVelocityY":F
    float-to-double v2, v0

    const-wide v4, 0x408f400000000000L

    const-wide/high16 v6, 0x4000000000000000L

    float-to-double v8, v1

    mul-double/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_34

    .line 249
    const/4 v2, 0x0

    cmpl-float v2, p3, v2

    if-lez v2, :cond_2a

    .line 251
    iget-object v2, p0, Ljackpal/androidterm/Term$EmulatorViewGestureListener;->this$0:Ljackpal/androidterm/Term;

    # getter for: Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;
    invoke-static {v2}, Ljackpal/androidterm/Term;->access$600(Ljackpal/androidterm/Term;)Ljackpal/androidterm/TermViewFlipper;

    move-result-object v2

    invoke-virtual {v2}, Ljackpal/androidterm/TermViewFlipper;->showPrevious()V

    .line 256
    :goto_28
    const/4 v2, 0x1

    .line 258
    :goto_29
    return v2

    .line 254
    :cond_2a
    iget-object v2, p0, Ljackpal/androidterm/Term$EmulatorViewGestureListener;->this$0:Ljackpal/androidterm/Term;

    # getter for: Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;
    invoke-static {v2}, Ljackpal/androidterm/Term;->access$600(Ljackpal/androidterm/Term;)Ljackpal/androidterm/TermViewFlipper;

    move-result-object v2

    invoke-virtual {v2}, Ljackpal/androidterm/TermViewFlipper;->showNext()V

    goto :goto_28

    .line 258
    :cond_34
    const/4 v2, 0x0

    goto :goto_29
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 232
    iget-object v1, p0, Ljackpal/androidterm/Term$EmulatorViewGestureListener;->view:Ljackpal/androidterm/emulatorview/EmulatorView;

    invoke-virtual {v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->isMouseTrackingActive()Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    .line 240
    :goto_9
    return v1

    .line 235
    :cond_a
    iget-object v1, p0, Ljackpal/androidterm/Term$EmulatorViewGestureListener;->view:Ljackpal/androidterm/emulatorview/EmulatorView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljackpal/androidterm/emulatorview/EmulatorView;->getURLat(FF)Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "link":Ljava/lang/String;
    if-eqz v0, :cond_21

    .line 237
    iget-object v1, p0, Ljackpal/androidterm/Term$EmulatorViewGestureListener;->this$0:Ljackpal/androidterm/Term;

    # invokes: Ljackpal/androidterm/Term;->execURL(Ljava/lang/String;)V
    invoke-static {v1, v0}, Ljackpal/androidterm/Term;->access$1100(Ljackpal/androidterm/Term;Ljava/lang/String;)V

    .line 240
    :goto_1f
    const/4 v1, 0x1

    goto :goto_9

    .line 239
    :cond_21
    iget-object v1, p0, Ljackpal/androidterm/Term$EmulatorViewGestureListener;->this$0:Ljackpal/androidterm/Term;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Ljackpal/androidterm/Term$EmulatorViewGestureListener;->view:Ljackpal/androidterm/emulatorview/EmulatorView;

    invoke-virtual {v4}, Ljackpal/androidterm/emulatorview/EmulatorView;->getVisibleWidth()I

    move-result v4

    iget-object v5, p0, Ljackpal/androidterm/Term$EmulatorViewGestureListener;->view:Ljackpal/androidterm/emulatorview/EmulatorView;

    invoke-virtual {v5}, Ljackpal/androidterm/emulatorview/EmulatorView;->getVisibleHeight()I

    move-result v5

    # invokes: Ljackpal/androidterm/Term;->doUIToggle(IIII)V
    invoke-static {v1, v2, v3, v4, v5}, Ljackpal/androidterm/Term;->access$1200(Ljackpal/androidterm/Term;IIII)V

    goto :goto_1f
.end method
