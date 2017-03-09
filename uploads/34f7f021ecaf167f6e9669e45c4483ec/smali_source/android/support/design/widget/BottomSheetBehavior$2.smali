.class Landroid/support/design/widget/BottomSheetBehavior$2;
.super Landroid/support/v4/widget/ViewDragHelper$Callback;
.source "BottomSheetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/BottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/BottomSheetBehavior;


# direct methods
.method constructor <init>(Landroid/support/design/widget/BottomSheetBehavior;)V
    .registers 2
    .param p1, "this$0"    # Landroid/support/design/widget/BottomSheetBehavior;

    .prologue
    .line 638
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior$2;, "Landroid/support/design/widget/BottomSheetBehavior$2;"
    iput-object p1, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "dx"    # I

    .prologue
    .line 709
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior$2;, "Landroid/support/design/widget/BottomSheetBehavior$2;"
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    return v0
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "top"    # I
    .param p3, "dy"    # I

    .prologue
    .line 704
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior$2;, "Landroid/support/design/widget/BottomSheetBehavior$2;"
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v1, v0, Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget-boolean v0, v0, Landroid/support/design/widget/BottomSheetBehavior;->mHideable:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v0, v0, Landroid/support/design/widget/BottomSheetBehavior;->mParentHeight:I

    :goto_e
    invoke-static {p2, v1, v0}, Landroid/support/design/widget/MathUtils;->constrain(III)I

    move-result v0

    return v0

    :cond_13
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v0, v0, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    goto :goto_e
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 714
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior$2;, "Landroid/support/design/widget/BottomSheetBehavior$2;"
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget-boolean v0, v0, Landroid/support/design/widget/BottomSheetBehavior;->mHideable:Z

    if-eqz v0, :cond_10

    .line 715
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v0, v0, Landroid/support/design/widget/BottomSheetBehavior;->mParentHeight:I

    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v1, v1, Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I

    sub-int/2addr v0, v1

    .line 717
    :goto_f
    return v0

    :cond_10
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v0, v0, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v1, v1, Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I

    sub-int/2addr v0, v1

    goto :goto_f
.end method

.method public onViewDragStateChanged(I)V
    .registers 4
    .param p1, "state"    # I

    .prologue
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior$2;, "Landroid/support/design/widget/BottomSheetBehavior$2;"
    const/4 v1, 0x1

    .line 665
    if-ne p1, v1, :cond_8

    .line 666
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    .line 668
    :cond_8
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .registers 7
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I

    .prologue
    .line 660
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior$2;, "Landroid/support/design/widget/BottomSheetBehavior$2;"
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-virtual {v0, p3}, Landroid/support/design/widget/BottomSheetBehavior;->dispatchOnSlide(I)V

    .line 661
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .registers 9
    .param p1, "releasedChild"    # Landroid/view/View;
    .param p2, "xvel"    # F
    .param p3, "yvel"    # F

    .prologue
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior$2;, "Landroid/support/design/widget/BottomSheetBehavior$2;"
    const/4 v4, 0x0

    .line 674
    cmpg-float v3, p3, v4

    if-gez v3, :cond_29

    .line 675
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v2, v3, Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I

    .line 676
    .local v2, "top":I
    const/4 v1, 0x3

    .line 693
    .local v1, "targetState":I
    :goto_a
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget-object v3, v3, Landroid/support/design/widget/BottomSheetBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/support/v4/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 694
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    .line 695
    new-instance v3, Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;

    iget-object v4, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-direct {v3, v4, p1, v1}, Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;-><init>(Landroid/support/design/widget/BottomSheetBehavior;Landroid/view/View;I)V

    invoke-static {p1, v3}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 700
    :goto_28
    return-void

    .line 677
    .end local v1    # "targetState":I
    .end local v2    # "top":I
    :cond_29
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget-boolean v3, v3, Landroid/support/design/widget/BottomSheetBehavior;->mHideable:Z

    if-eqz v3, :cond_3d

    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-virtual {v3, p1, p3}, Landroid/support/design/widget/BottomSheetBehavior;->shouldHide(Landroid/view/View;F)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 678
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v2, v3, Landroid/support/design/widget/BottomSheetBehavior;->mParentHeight:I

    .line 679
    .restart local v2    # "top":I
    const/4 v1, 0x5

    .restart local v1    # "targetState":I
    goto :goto_a

    .line 680
    .end local v1    # "targetState":I
    .end local v2    # "top":I
    :cond_3d
    cmpl-float v3, p3, v4

    if-nez v3, :cond_67

    .line 681
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 682
    .local v0, "currentTop":I
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v3, v3, Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I

    sub-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget-object v4, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v4, v4, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    sub-int v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v3, v4, :cond_61

    .line 683
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v2, v3, Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I

    .line 684
    .restart local v2    # "top":I
    const/4 v1, 0x3

    .restart local v1    # "targetState":I
    goto :goto_a

    .line 686
    .end local v1    # "targetState":I
    .end local v2    # "top":I
    :cond_61
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v2, v3, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    .line 687
    .restart local v2    # "top":I
    const/4 v1, 0x4

    .restart local v1    # "targetState":I
    goto :goto_a

    .line 690
    .end local v0    # "currentTop":I
    .end local v1    # "targetState":I
    .end local v2    # "top":I
    :cond_67
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v2, v3, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    .line 691
    .restart local v2    # "top":I
    const/4 v1, 0x4

    .restart local v1    # "targetState":I
    goto :goto_a

    .line 698
    :cond_6d
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-virtual {v3, v1}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    goto :goto_28
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .registers 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    .prologue
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior$2;, "Landroid/support/design/widget/BottomSheetBehavior$2;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 642
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v3, v3, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    if-ne v3, v1, :cond_9

    .line 655
    :cond_8
    :goto_8
    return v2

    .line 645
    :cond_9
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget-boolean v3, v3, Landroid/support/design/widget/BottomSheetBehavior;->mTouchingScrollingChild:Z

    if-nez v3, :cond_8

    .line 648
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v3, v3, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2f

    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v3, v3, Landroid/support/design/widget/BottomSheetBehavior;->mActivePointerId:I

    if-ne v3, p2, :cond_2f

    .line 649
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget-object v3, v3, Landroid/support/design/widget/BottomSheetBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 650
    .local v0, "scroll":Landroid/view/View;
    if-eqz v0, :cond_2f

    const/4 v3, -0x1

    invoke-static {v0, v3}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v3

    if-nez v3, :cond_8

    .line 655
    .end local v0    # "scroll":Landroid/view/View;
    :cond_2f
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget-object v3, v3, Landroid/support/design/widget/BottomSheetBehavior;->mViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_41

    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget-object v3, v3, Landroid/support/design/widget/BottomSheetBehavior;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_41

    :goto_3f
    move v2, v1

    goto :goto_8

    :cond_41
    move v1, v2

    goto :goto_3f
.end method
