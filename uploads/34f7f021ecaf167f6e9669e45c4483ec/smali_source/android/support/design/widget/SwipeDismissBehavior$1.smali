.class Landroid/support/design/widget/SwipeDismissBehavior$1;
.super Landroid/support/v4/widget/ViewDragHelper$Callback;
.source "SwipeDismissBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/SwipeDismissBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final INVALID_POINTER_ID:I = -0x1


# instance fields
.field private mActivePointerId:I

.field private mOriginalCapturedViewLeft:I

.field final synthetic this$0:Landroid/support/design/widget/SwipeDismissBehavior;


# direct methods
.method constructor <init>(Landroid/support/design/widget/SwipeDismissBehavior;)V
    .registers 3
    .param p1, "this$0"    # Landroid/support/design/widget/SwipeDismissBehavior;

    .prologue
    .line 216
    .local p0, "this":Landroid/support/design/widget/SwipeDismissBehavior$1;, "Landroid/support/design/widget/SwipeDismissBehavior$1;"
    iput-object p1, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper$Callback;-><init>()V

    .line 220
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->mActivePointerId:I

    return-void
.end method

.method private shouldDismiss(Landroid/view/View;F)Z
    .registers 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "xvel"    # F

    .prologue
    .local p0, "this":Landroid/support/design/widget/SwipeDismissBehavior$1;, "Landroid/support/design/widget/SwipeDismissBehavior$1;"
    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 275
    cmpl-float v5, p2, v7

    if-eqz v5, :cond_40

    .line 276
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v5

    if-ne v5, v3, :cond_16

    move v1, v3

    .line 279
    .local v1, "isRtl":Z
    :goto_e
    iget-object v5, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    iget v5, v5, Landroid/support/design/widget/SwipeDismissBehavior;->mSwipeDirection:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_18

    .line 297
    .end local v1    # "isRtl":Z
    :cond_15
    :goto_15
    return v3

    :cond_16
    move v1, v4

    .line 276
    goto :goto_e

    .line 282
    .restart local v1    # "isRtl":Z
    :cond_18
    iget-object v5, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    iget v5, v5, Landroid/support/design/widget/SwipeDismissBehavior;->mSwipeDirection:I

    if-nez v5, :cond_2c

    .line 285
    if-eqz v1, :cond_26

    cmpg-float v5, p2, v7

    if-ltz v5, :cond_15

    move v3, v4

    goto :goto_15

    :cond_26
    cmpl-float v5, p2, v7

    if-gtz v5, :cond_15

    move v3, v4

    goto :goto_15

    .line 286
    :cond_2c
    iget-object v5, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    iget v5, v5, Landroid/support/design/widget/SwipeDismissBehavior;->mSwipeDirection:I

    if-ne v5, v3, :cond_5e

    .line 289
    if-eqz v1, :cond_3a

    cmpl-float v5, p2, v7

    if-gtz v5, :cond_15

    move v3, v4

    goto :goto_15

    :cond_3a
    cmpg-float v5, p2, v7

    if-ltz v5, :cond_15

    move v3, v4

    goto :goto_15

    .line 292
    .end local v1    # "isRtl":Z
    :cond_40
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v6, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    sub-int v0, v5, v6

    .line 293
    .local v0, "distance":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    iget v6, v6, Landroid/support/design/widget/SwipeDismissBehavior;->mDragDismissThreshold:F

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 294
    .local v2, "thresholdDistance":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v2, :cond_15

    move v3, v4

    goto :goto_15

    .end local v0    # "distance":I
    .end local v2    # "thresholdDistance":I
    .restart local v1    # "isRtl":Z
    :cond_5e
    move v3, v4

    .line 297
    goto :goto_15
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .registers 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "dx"    # I

    .prologue
    .local p0, "this":Landroid/support/design/widget/SwipeDismissBehavior$1;, "Landroid/support/design/widget/SwipeDismissBehavior$1;"
    const/4 v3, 0x1

    .line 307
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v4

    if-ne v4, v3, :cond_1f

    move v0, v3

    .line 311
    .local v0, "isRtl":Z
    :goto_8
    iget-object v4, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    iget v4, v4, Landroid/support/design/widget/SwipeDismissBehavior;->mSwipeDirection:I

    if-nez v4, :cond_2c

    .line 312
    if-eqz v0, :cond_21

    .line 313
    iget v3, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int v2, v3, v4

    .line 314
    .local v2, "min":I
    iget v1, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    .line 332
    .local v1, "max":I
    :goto_1a
    invoke-static {v2, p2, v1}, Landroid/support/design/widget/SwipeDismissBehavior;->clamp(III)I

    move-result v3

    return v3

    .line 307
    .end local v0    # "isRtl":Z
    .end local v1    # "max":I
    .end local v2    # "min":I
    :cond_1f
    const/4 v0, 0x0

    goto :goto_8

    .line 316
    .restart local v0    # "isRtl":Z
    :cond_21
    iget v2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    .line 317
    .restart local v2    # "min":I
    iget v3, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int v1, v3, v4

    .restart local v1    # "max":I
    goto :goto_1a

    .line 319
    .end local v1    # "max":I
    .end local v2    # "min":I
    :cond_2c
    iget-object v4, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    iget v4, v4, Landroid/support/design/widget/SwipeDismissBehavior;->mSwipeDirection:I

    if-ne v4, v3, :cond_4a

    .line 320
    if-eqz v0, :cond_3f

    .line 321
    iget v2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    .line 322
    .restart local v2    # "min":I
    iget v3, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int v1, v3, v4

    .restart local v1    # "max":I
    goto :goto_1a

    .line 324
    .end local v1    # "max":I
    .end local v2    # "min":I
    :cond_3f
    iget v3, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int v2, v3, v4

    .line 325
    .restart local v2    # "min":I
    iget v1, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    .restart local v1    # "max":I
    goto :goto_1a

    .line 328
    .end local v1    # "max":I
    .end local v2    # "min":I
    :cond_4a
    iget v3, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int v2, v3, v4

    .line 329
    .restart local v2    # "min":I
    iget v3, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int v1, v3, v4

    .restart local v1    # "max":I
    goto :goto_1a
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "top"    # I
    .param p3, "dy"    # I

    .prologue
    .line 337
    .local p0, "this":Landroid/support/design/widget/SwipeDismissBehavior$1;, "Landroid/support/design/widget/SwipeDismissBehavior$1;"
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 302
    .local p0, "this":Landroid/support/design/widget/SwipeDismissBehavior$1;, "Landroid/support/design/widget/SwipeDismissBehavior$1;"
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .registers 5
    .param p1, "capturedChild"    # Landroid/view/View;
    .param p2, "activePointerId"    # I

    .prologue
    .line 230
    .local p0, "this":Landroid/support/design/widget/SwipeDismissBehavior$1;, "Landroid/support/design/widget/SwipeDismissBehavior$1;"
    iput p2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->mActivePointerId:I

    .line 231
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    .line 235
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 236
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_12

    .line 237
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 239
    :cond_12
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .registers 3
    .param p1, "state"    # I

    .prologue
    .line 243
    .local p0, "this":Landroid/support/design/widget/SwipeDismissBehavior$1;, "Landroid/support/design/widget/SwipeDismissBehavior$1;"
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    iget-object v0, v0, Landroid/support/design/widget/SwipeDismissBehavior;->mListener:Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;

    if-eqz v0, :cond_d

    .line 244
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    iget-object v0, v0, Landroid/support/design/widget/SwipeDismissBehavior;->mListener:Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;->onDragStateChanged(I)V

    .line 246
    :cond_d
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .registers 14
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I

    .prologue
    .local p0, "this":Landroid/support/design/widget/SwipeDismissBehavior$1;, "Landroid/support/design/widget/SwipeDismissBehavior$1;"
    const/4 v7, 0x0

    const/high16 v6, 0x3f800000

    .line 342
    iget v3, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    int-to-float v3, v3

    .line 343
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    iget v5, v5, Landroid/support/design/widget/SwipeDismissBehavior;->mAlphaStartSwipeDistance:F

    mul-float/2addr v4, v5

    add-float v2, v3, v4

    .line 344
    .local v2, "startAlphaDistance":F
    iget v3, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    int-to-float v3, v3

    .line 345
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    iget v5, v5, Landroid/support/design/widget/SwipeDismissBehavior;->mAlphaEndSwipeDistance:F

    mul-float/2addr v4, v5

    add-float v1, v3, v4

    .line 347
    .local v1, "endAlphaDistance":F
    int-to-float v3, p2

    cmpg-float v3, v3, v2

    if-gtz v3, :cond_2a

    .line 348
    invoke-static {p1, v6}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 356
    :goto_29
    return-void

    .line 349
    :cond_2a
    int-to-float v3, p2

    cmpl-float v3, v3, v1

    if-ltz v3, :cond_33

    .line 350
    invoke-static {p1, v7}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    goto :goto_29

    .line 353
    :cond_33
    int-to-float v3, p2

    invoke-static {v2, v1, v3}, Landroid/support/design/widget/SwipeDismissBehavior;->fraction(FFF)F

    move-result v0

    .line 354
    .local v0, "distance":F
    sub-float v3, v6, v0

    invoke-static {v7, v3, v6}, Landroid/support/design/widget/SwipeDismissBehavior;->clamp(FFF)F

    move-result v3

    invoke-static {p1, v3}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    goto :goto_29
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .registers 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "xvel"    # F
    .param p3, "yvel"    # F

    .prologue
    .line 251
    .local p0, "this":Landroid/support/design/widget/SwipeDismissBehavior$1;, "Landroid/support/design/widget/SwipeDismissBehavior$1;"
    const/4 v3, -0x1

    iput v3, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->mActivePointerId:I

    .line 253
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 255
    .local v0, "childWidth":I
    const/4 v1, 0x0

    .line 257
    .local v1, "dismiss":Z
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/SwipeDismissBehavior$1;->shouldDismiss(Landroid/view/View;F)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 258
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v4, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    if-ge v3, v4, :cond_34

    iget v3, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    sub-int v2, v3, v0

    .line 261
    .local v2, "targetLeft":I
    :goto_1a
    const/4 v1, 0x1

    .line 267
    :goto_1b
    iget-object v3, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    iget-object v3, v3, Landroid/support/design/widget/SwipeDismissBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/support/v4/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 268
    new-instance v3, Landroid/support/design/widget/SwipeDismissBehavior$SettleRunnable;

    iget-object v4, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-direct {v3, v4, p1, v1}, Landroid/support/design/widget/SwipeDismissBehavior$SettleRunnable;-><init>(Landroid/support/design/widget/SwipeDismissBehavior;Landroid/view/View;Z)V

    invoke-static {p1, v3}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 272
    :cond_33
    :goto_33
    return-void

    .line 258
    .end local v2    # "targetLeft":I
    :cond_34
    iget v3, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    add-int v2, v3, v0

    goto :goto_1a

    .line 264
    :cond_39
    iget v2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    .restart local v2    # "targetLeft":I
    goto :goto_1b

    .line 269
    :cond_3c
    if-eqz v1, :cond_33

    iget-object v3, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    iget-object v3, v3, Landroid/support/design/widget/SwipeDismissBehavior;->mListener:Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;

    if-eqz v3, :cond_33

    .line 270
    iget-object v3, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    iget-object v3, v3, Landroid/support/design/widget/SwipeDismissBehavior;->mListener:Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;

    invoke-interface {v3, p1}, Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;->onDismiss(Landroid/view/View;)V

    goto :goto_33
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    .prologue
    .line 225
    .local p0, "this":Landroid/support/design/widget/SwipeDismissBehavior$1;, "Landroid/support/design/widget/SwipeDismissBehavior$1;"
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->mActivePointerId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/SwipeDismissBehavior;->canSwipeDismissView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method
