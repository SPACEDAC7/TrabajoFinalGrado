.class Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$InternalScrollListener;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "AutoFocusController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;


# direct methods
.method private constructor <init>(Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;)V
    .registers 2

    .prologue
    .line 435
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$InternalScrollListener;->this$0:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;
    .param p2, "x1"    # Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$1;

    .prologue
    .line 435
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$InternalScrollListener;-><init>(Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;)V

    return-void
.end method

.method private autoFocusOnScrolled(I)V
    .registers 6
    .param p1, "dy"    # I

    .prologue
    const/high16 v3, 0x42c80000

    .line 481
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$InternalScrollListener;->this$0:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    iget-object v1, v1, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getScrollState()I

    move-result v0

    .line 482
    .local v0, "scrollState":I
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$InternalScrollListener;->this$0:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    iput p1, v1, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mLastDy:I

    .line 483
    packed-switch v0, :pswitch_data_50

    .line 500
    :cond_11
    :goto_11
    return-void

    .line 486
    :pswitch_12
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$InternalScrollListener;->this$0:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    iget-object v2, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$InternalScrollListener;->this$0:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    # getter for: Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mTotalDragDisplacement:I
    invoke-static {v2}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->access$600(Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;)I

    move-result v2

    add-int/2addr v2, p1

    # setter for: Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mTotalDragDisplacement:I
    invoke-static {v1, v2}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->access$602(Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;I)I

    .line 487
    int-to-float v1, p1

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_11

    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$InternalScrollListener;->this$0:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    .line 488
    # getter for: Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mTotalDragDisplacement:I
    invoke-static {v1}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->access$600(Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v1, v3

    if-gez v1, :cond_38

    .line 489
    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$InternalScrollListener;->isCurrentViewStillVisible()Z

    move-result v1

    if-nez v1, :cond_11

    .line 490
    :cond_38
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$InternalScrollListener;->this$0:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    # invokes: Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->postAutoFocus()V
    invoke-static {v1}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->access$700(Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;)V

    goto :goto_11

    .line 495
    :pswitch_3e
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$InternalScrollListener;->this$0:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    iget-boolean v1, v1, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mNeedFocusOnIdle:Z

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$InternalScrollListener;->this$0:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    iget-object v1, v1, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mCurrentViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v1, :cond_11

    .line 496
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$InternalScrollListener;->this$0:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mNeedFocusOnIdle:Z

    goto :goto_11

    .line 483
    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_12
        :pswitch_3e
    .end packed-switch
.end method

.method private isCurrentViewStillVisible()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 503
    iget-object v3, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$InternalScrollListener;->this$0:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    iget-object v3, v3, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mCurrentViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v3, :cond_8

    .line 511
    :cond_7
    :goto_7
    return v2

    .line 505
    :cond_8
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 506
    .local v0, "hitBox":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$InternalScrollListener;->this$0:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    iget-object v3, v3, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mCurrentViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 507
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$InternalScrollListener;->this$0:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    iget-object v4, v4, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mCurrentViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 508
    .local v1, "ratio":F
    const/high16 v3, 0x3f400000

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_7

    const/4 v2, 0x1

    goto :goto_7
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .registers 7
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    const/4 v3, 0x1

    .line 439
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$InternalScrollListener;->this$0:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    # getter for: Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mIsStarted:Z
    invoke-static {v1}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->access$200(Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 468
    :cond_9
    :goto_9
    return-void

    .line 441
    :cond_a
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getScrollState()I

    move-result v0

    .line 442
    .local v0, "state":I
    packed-switch v0, :pswitch_data_66

    .line 466
    # getter for: Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid scroll state changed , state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 444
    :pswitch_2c
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$InternalScrollListener;->this$0:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    iget-object v1, v1, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$InternalScrollListener;->this$0:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    iget v2, v2, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mLastDy:I

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 445
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$InternalScrollListener;->this$0:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    invoke-virtual {v1}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->clearPendingEvents()V

    .line 446
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$InternalScrollListener;->this$0:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    iput-boolean v3, v1, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mNeedFocusOnIdle:Z

    goto :goto_9

    .line 451
    :pswitch_44
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$InternalScrollListener;->this$0:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    invoke-virtual {v1}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->clearPendingEvents()V

    .line 452
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$InternalScrollListener;->this$0:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    iput-boolean v3, v1, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mNeedFocusOnIdle:Z

    goto :goto_9

    .line 459
    :pswitch_4e
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$InternalScrollListener;->this$0:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    iget-boolean v1, v1, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mNeedFocusOnIdle:Z

    if-eqz v1, :cond_5f

    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$InternalScrollListener;->this$0:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    iget v1, v1, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mLastDy:I

    if-eqz v1, :cond_5f

    .line 460
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$InternalScrollListener;->this$0:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    # invokes: Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->findNextViewToFocus()V
    invoke-static {v1}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->access$300(Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;)V

    .line 462
    :cond_5f
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$InternalScrollListener;->this$0:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mNeedFocusOnIdle:Z

    goto :goto_9

    .line 442
    nop

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_4e
        :pswitch_44
        :pswitch_2c
    .end packed-switch
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .registers 5
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 473
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$InternalScrollListener;->this$0:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    # invokes: Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->clearFocusIfOffscreen()V
    invoke-static {v0}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->access$500(Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;)V

    .line 475
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$InternalScrollListener;->this$0:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    # getter for: Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mIsStarted:Z
    invoke-static {v0}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->access$200(Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 476
    invoke-direct {p0, p3}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$InternalScrollListener;->autoFocusOnScrolled(I)V

    .line 478
    :cond_10
    return-void
.end method
