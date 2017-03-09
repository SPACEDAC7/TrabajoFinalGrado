.class Ljackpal/androidterm/emulatorview/EmulatorView$MouseTrackingFlingRunner;
.super Ljava/lang/Object;
.source "EmulatorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljackpal/androidterm/emulatorview/EmulatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MouseTrackingFlingRunner"
.end annotation


# instance fields
.field private mLastY:I

.field private mMotionEvent:Landroid/view/MotionEvent;

.field private mScroller:Landroid/widget/Scroller;

.field final synthetic this$0:Ljackpal/androidterm/emulatorview/EmulatorView;


# direct methods
.method private constructor <init>(Ljackpal/androidterm/emulatorview/EmulatorView;)V
    .registers 2

    .prologue
    .line 425
    iput-object p1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$MouseTrackingFlingRunner;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljackpal/androidterm/emulatorview/EmulatorView;Ljackpal/androidterm/emulatorview/EmulatorView$1;)V
    .registers 3
    .param p1, "x0"    # Ljackpal/androidterm/emulatorview/EmulatorView;
    .param p2, "x1"    # Ljackpal/androidterm/emulatorview/EmulatorView$1;

    .prologue
    .line 425
    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/EmulatorView$MouseTrackingFlingRunner;-><init>(Ljackpal/androidterm/emulatorview/EmulatorView;)V

    return-void
.end method

.method static synthetic access$1402(Ljackpal/androidterm/emulatorview/EmulatorView$MouseTrackingFlingRunner;Landroid/widget/Scroller;)Landroid/widget/Scroller;
    .registers 2
    .param p0, "x0"    # Ljackpal/androidterm/emulatorview/EmulatorView$MouseTrackingFlingRunner;
    .param p1, "x1"    # Landroid/widget/Scroller;

    .prologue
    .line 425
    iput-object p1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$MouseTrackingFlingRunner;->mScroller:Landroid/widget/Scroller;

    return-object p1
.end method


# virtual methods
.method public fling(Landroid/view/MotionEvent;FF)V
    .registers 14
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .prologue
    const/4 v1, 0x0

    .line 431
    const v9, 0x3e19999a

    .line 432
    .local v9, "SCALE":F
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView$MouseTrackingFlingRunner;->mScroller:Landroid/widget/Scroller;

    mul-float v2, p2, v9

    float-to-int v2, v2

    neg-int v3, v2

    mul-float v2, p3, v9

    float-to-int v2, v2

    neg-int v4, v2

    const/16 v7, -0x64

    const/16 v8, 0x64

    move v2, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 435
    iput v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$MouseTrackingFlingRunner;->mLastY:I

    .line 436
    iput-object p1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$MouseTrackingFlingRunner;->mMotionEvent:Landroid/view/MotionEvent;

    .line 437
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView$MouseTrackingFlingRunner;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    invoke-virtual {v0, p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->post(Ljava/lang/Runnable;)Z

    .line 438
    return-void
.end method

.method public run()V
    .registers 6

    .prologue
    .line 441
    iget-object v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$MouseTrackingFlingRunner;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 461
    :cond_8
    :goto_8
    return-void

    .line 445
    :cond_9
    iget-object v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$MouseTrackingFlingRunner;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    invoke-virtual {v2}, Ljackpal/androidterm/emulatorview/EmulatorView;->isMouseTrackingActive()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 449
    iget-object v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$MouseTrackingFlingRunner;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    .line 450
    .local v0, "more":Z
    iget-object v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$MouseTrackingFlingRunner;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 451
    .local v1, "newY":I
    :goto_1d
    iget v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$MouseTrackingFlingRunner;->mLastY:I

    if-ge v2, v1, :cond_31

    .line 452
    iget-object v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$MouseTrackingFlingRunner;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    iget-object v3, p0, Ljackpal/androidterm/emulatorview/EmulatorView$MouseTrackingFlingRunner;->mMotionEvent:Landroid/view/MotionEvent;

    const/16 v4, 0x41

    # invokes: Ljackpal/androidterm/emulatorview/EmulatorView;->sendMouseEventCode(Landroid/view/MotionEvent;I)V
    invoke-static {v2, v3, v4}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$600(Ljackpal/androidterm/emulatorview/EmulatorView;Landroid/view/MotionEvent;I)V

    .line 451
    iget v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$MouseTrackingFlingRunner;->mLastY:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$MouseTrackingFlingRunner;->mLastY:I

    goto :goto_1d

    .line 454
    :cond_31
    :goto_31
    iget v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$MouseTrackingFlingRunner;->mLastY:I

    if-le v2, v1, :cond_45

    .line 455
    iget-object v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$MouseTrackingFlingRunner;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    iget-object v3, p0, Ljackpal/androidterm/emulatorview/EmulatorView$MouseTrackingFlingRunner;->mMotionEvent:Landroid/view/MotionEvent;

    const/16 v4, 0x40

    # invokes: Ljackpal/androidterm/emulatorview/EmulatorView;->sendMouseEventCode(Landroid/view/MotionEvent;I)V
    invoke-static {v2, v3, v4}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$600(Ljackpal/androidterm/emulatorview/EmulatorView;Landroid/view/MotionEvent;I)V

    .line 454
    iget v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$MouseTrackingFlingRunner;->mLastY:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$MouseTrackingFlingRunner;->mLastY:I

    goto :goto_31

    .line 458
    :cond_45
    if-eqz v0, :cond_8

    .line 459
    iget-object v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$MouseTrackingFlingRunner;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    invoke-virtual {v2, p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->post(Ljava/lang/Runnable;)Z

    goto :goto_8
.end method
