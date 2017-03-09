.class public Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;
.super Ljava/lang/Object;
.source "AutoFocusController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$AutoFocusStrategy;,
        Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$OnFocusChangeListener;,
        Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$InternalOnChildAttachStateChangeListener;,
        Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$InternalScrollListener;
    }
.end annotation


# static fields
.field private static final DRAG_DELTA_THRESHOLD:F = 100.0f

.field private static final DRAG_DISPLACEMENT_THRESHOLD:F = 100.0f

.field private static final MESSAGE_AUTO_FOCUS:I = 0x1

.field private static final MESSAGE_AUTO_FOCUS_DELAY:I = 0x2bc

.field private static final TAG:Ljava/lang/String;

.field protected static final VISIBILITY_PERCENTAGE:F = 0.75f


# instance fields
.field protected mAutoFocusHelper:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusHelper;

.field private mAutoFocusStrategy:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$AutoFocusStrategy;

.field protected mCurrentViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field private mFocusChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$OnFocusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mHandler:Landroid/os/Handler;

.field private mIsAttached:Z

.field private mIsStarted:Z

.field protected mLastDy:I

.field protected mNeedFocusOnIdle:Z

.field protected mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mTimeStampOfLastAutoFocus:J

.field private mTotalDragDisplacement:I

.field private onChildAttachStateChangeListener:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$InternalOnChildAttachStateChangeListener;

.field private onScrollListener:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$InternalScrollListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const-class v0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput v2, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mTotalDragDisplacement:I

    .line 64
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mTimeStampOfLastAutoFocus:J

    .line 78
    new-instance v0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$InternalOnChildAttachStateChangeListener;

    invoke-direct {v0, p0, v3}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$InternalOnChildAttachStateChangeListener;-><init>(Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$1;)V

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->onChildAttachStateChangeListener:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$InternalOnChildAttachStateChangeListener;

    .line 79
    new-instance v0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$InternalScrollListener;

    invoke-direct {v0, p0, v3}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$InternalScrollListener;-><init>(Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$1;)V

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->onScrollListener:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$InternalScrollListener;

    .line 84
    iput-boolean v2, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mNeedFocusOnIdle:Z

    .line 110
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mFocusChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method static synthetic access$200(Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mIsStarted:Z

    return v0
.end method

.method static synthetic access$300(Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;)V
    .registers 1
    .param p0, "x0"    # Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->findNextViewToFocus()V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;)V
    .registers 1
    .param p0, "x0"    # Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->clearFocusIfOffscreen()V

    return-void
.end method

.method static synthetic access$600(Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;)I
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    .prologue
    .line 38
    iget v0, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mTotalDragDisplacement:I

    return v0
.end method

.method static synthetic access$602(Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;I)I
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mTotalDragDisplacement:I

    return p1
.end method

.method static synthetic access$700(Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;)V
    .registers 1
    .param p0, "x0"    # Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->postAutoFocus()V

    return-void
.end method

.method static synthetic access$800(Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;)V
    .registers 1
    .param p0, "x0"    # Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->clearFocusViewIfNeeded()V

    return-void
.end method

.method private clearFocusIfOffscreen()V
    .registers 4

    .prologue
    .line 342
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mCurrentViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v1, :cond_5

    .line 349
    :cond_4
    :goto_4
    return-void

    .line 344
    :cond_5
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mCurrentViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 345
    .local v0, "child":Landroid/view/View;
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mAutoFocusStrategy:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$AutoFocusStrategy;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mAutoFocusStrategy:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$AutoFocusStrategy;

    iget-object v2, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mCurrentViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-interface {v1, v2}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$AutoFocusStrategy;->isFocusable(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v1

    if-eqz v1, :cond_21

    :cond_17
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mAutoFocusHelper:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusHelper;

    iget v2, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mLastDy:I

    .line 346
    invoke-virtual {v1, v0, v2}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusHelper;->isViewCandidateForRemoval(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 347
    :cond_21
    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->clearFocusViewIfNeeded()V

    goto :goto_4
.end method

.method private clearFocusViewIfNeeded()V
    .registers 3

    .prologue
    .line 294
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mCurrentViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v1, :cond_5

    .line 298
    :goto_4
    return-void

    .line 295
    :cond_5
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mCurrentViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 296
    .local v0, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mCurrentViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 297
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->onFocusChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    goto :goto_4
.end method

.method private findNextViewToFocus()V
    .registers 7

    .prologue
    const/4 v4, -0x1

    .line 370
    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->getCurrentChildPosition()I

    move-result v1

    .line 377
    .local v1, "startIndex":I
    iget v3, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mLastDy:I

    if-gtz v3, :cond_51

    .line 378
    iget-object v3, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mCurrentViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v3, :cond_47

    .line 379
    if-eq v1, v4, :cond_3d

    .line 380
    add-int/lit8 v1, v1, -0x1

    .line 381
    const/4 v2, 0x0

    .line 405
    .local v2, "toIndex":I
    :goto_12
    iget-object v3, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mAutoFocusHelper:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusHelper;

    const/high16 v4, 0x3f400000

    iget-object v5, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mAutoFocusStrategy:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$AutoFocusStrategy;

    invoke-virtual {v3, v1, v2, v4, v5}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusHelper;->findViewHolderWithVisibilityRatio(IIFLcom/buzzfeed/android/vcr/toolbox/AutoFocusController$AutoFocusStrategy;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 406
    .local v0, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-nez v0, :cond_2a

    iget-object v3, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mCurrentViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v3, :cond_2a

    .line 407
    iget-object v3, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mAutoFocusHelper:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusHelper;

    iget-object v4, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mAutoFocusStrategy:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$AutoFocusStrategy;

    invoke-virtual {v3, v1, v2, v4}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusHelper;->findMostCenteredViewHolder(IILcom/buzzfeed/android/vcr/toolbox/AutoFocusController$AutoFocusStrategy;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 409
    :cond_2a
    iget-object v3, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mCurrentViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eq v3, v0, :cond_3c

    .line 410
    if-eqz v0, :cond_76

    .line 411
    invoke-direct {p0, v0}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->requestFocusInternal(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    .line 412
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mTimeStampOfLastAutoFocus:J

    .line 417
    :goto_39
    const/4 v3, 0x0

    iput v3, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mTotalDragDisplacement:I

    .line 419
    :cond_3c
    return-void

    .line 383
    .end local v0    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v2    # "toIndex":I
    :cond_3d
    const/4 v1, 0x0

    .line 384
    iget-object v3, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .restart local v2    # "toIndex":I
    goto :goto_12

    .line 387
    .end local v2    # "toIndex":I
    :cond_47
    const/4 v1, 0x0

    .line 388
    iget-object v3, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .restart local v2    # "toIndex":I
    goto :goto_12

    .line 391
    .end local v2    # "toIndex":I
    :cond_51
    iget-object v3, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mCurrentViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v3, :cond_6c

    .line 392
    if-eq v1, v4, :cond_62

    .line 393
    add-int/lit8 v1, v1, 0x1

    .line 394
    iget-object v3, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .restart local v2    # "toIndex":I
    goto :goto_12

    .line 396
    .end local v2    # "toIndex":I
    :cond_62
    iget-object v3, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 397
    const/4 v2, 0x0

    .restart local v2    # "toIndex":I
    goto :goto_12

    .line 400
    .end local v2    # "toIndex":I
    :cond_6c
    iget-object v3, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 401
    const/4 v2, 0x0

    .restart local v2    # "toIndex":I
    goto :goto_12

    .line 414
    .restart local v0    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_76
    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->clearFocusIfOffscreen()V

    goto :goto_39
.end method

.method private getCurrentChildPosition()I
    .registers 4

    .prologue
    .line 422
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mCurrentViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v1, :cond_1d

    .line 423
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 424
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mCurrentViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v2, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v1, v2, :cond_1a

    .line 429
    .end local v0    # "i":I
    :goto_19
    return v0

    .line 423
    .restart local v0    # "i":I
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 429
    .end local v0    # "i":I
    :cond_1d
    const/4 v0, -0x1

    goto :goto_19
.end method

.method private postAutoFocus()V
    .registers 11

    .prologue
    const-wide/16 v8, 0x2bc

    const/4 v6, 0x1

    .line 352
    iget-object v2, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 353
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mTimeStampOfLastAutoFocus:J

    sub-long v0, v2, v4

    .line 354
    .local v0, "deltaTime":J
    cmp-long v2, v0, v8

    if-ltz v2, :cond_1b

    .line 355
    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->findNextViewToFocus()V

    .line 362
    .end local v0    # "deltaTime":J
    :cond_1a
    :goto_1a
    return-void

    .line 358
    .restart local v0    # "deltaTime":J
    :cond_1b
    iget-object v2, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mHandler:Landroid/os/Handler;

    sub-long v4, v8, v0

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1a
.end method

.method private requestFocusInternal(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .registers 6
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v1, 0x1

    .line 276
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".requestFocusInternal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "TAG":Ljava/lang/String;
    if-eqz p1, :cond_34

    .line 278
    iget-object v2, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mAutoFocusStrategy:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$AutoFocusStrategy;

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mAutoFocusStrategy:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$AutoFocusStrategy;

    invoke-interface {v2, p1}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$AutoFocusStrategy;->isFocusable(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 279
    :cond_24
    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->clearFocusViewIfNeeded()V

    .line 280
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mCurrentViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 281
    invoke-virtual {p0, p1, v1}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->onFocusChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    .line 290
    :goto_2c
    return v1

    .line 284
    :cond_2d
    const-string v1, "ViewHolder is not focusable."

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :goto_32
    const/4 v1, 0x0

    goto :goto_2c

    .line 287
    :cond_34
    const-string v1, "ViewHolder was null."

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32
.end method


# virtual methods
.method public addOnFocusChangeListener(Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$OnFocusChangeListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$OnFocusChangeListener;

    .prologue
    .line 318
    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mFocusChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 319
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mFocusChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    :cond_f
    return-void
.end method

.method public attachView(Landroid/support/v7/widget/RecyclerView;)V
    .registers 6
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".attachView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "TAG":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mIsAttached:Z

    if-eqz v1, :cond_1f

    .line 135
    const-string v1, "AutoFocusController is already attached."

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :goto_1e
    return-void

    .line 138
    :cond_1f
    const-string v1, "RecyclerView cant be null"

    invoke-static {p1, v1}, Lcom/buzzfeed/toolkit/util/EZUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 140
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mIsAttached:Z

    .line 141
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->onScrollListener:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$InternalScrollListener;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 142
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->onChildAttachStateChangeListener:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$InternalOnChildAttachStateChangeListener;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 143
    new-instance v1, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusHelper;

    iget-object v2, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {v1, v2}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusHelper;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mAutoFocusHelper:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusHelper;

    .line 144
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$1;

    invoke-direct {v3, p0}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$1;-><init>(Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;)V

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mHandler:Landroid/os/Handler;

    goto :goto_1e
.end method

.method protected clearPendingEvents()V
    .registers 3

    .prologue
    .line 338
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 339
    return-void
.end method

.method public detachView()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 204
    iget-boolean v1, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mIsAttached:Z

    if-nez v1, :cond_20

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".detachView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "TAG":Ljava/lang/String;
    const-string v1, "AutoFocusController is not attached yet."

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .end local v0    # "TAG":Ljava/lang/String;
    :goto_1f
    return-void

    .line 209
    :cond_20
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mIsAttached:Z

    .line 210
    iget-boolean v1, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mIsStarted:Z

    if-eqz v1, :cond_2a

    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->stop()V

    .line 211
    :cond_2a
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->onScrollListener:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$InternalScrollListener;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 212
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->onChildAttachStateChangeListener:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$InternalOnChildAttachStateChangeListener;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->removeOnChildAttachStateChangeListener(Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 213
    iput-object v3, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mCurrentViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 214
    iput-object v3, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 215
    iput-object v3, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mAutoFocusHelper:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusHelper;

    goto :goto_1f
.end method

.method public getCurrentViewHolder()Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mCurrentViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)Z
    .registers 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 539
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".handleMessage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 540
    .local v0, "TAG":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mIsAttached:Z

    if-nez v2, :cond_39

    .line 541
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has been dropped. AutoFocusController is not attached"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    :goto_38
    return v1

    .line 546
    :cond_39
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_5c

    .line 553
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No case to handle message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    const/4 v1, 0x0

    goto :goto_38

    .line 549
    :pswitch_58
    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->findNextViewToFocus()V

    goto :goto_38

    .line 546
    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_58
    .end packed-switch
.end method

.method public isAttached()Z
    .registers 2

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mIsAttached:Z

    return v0
.end method

.method public isStarted()Z
    .registers 2

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mIsStarted:Z

    return v0
.end method

.method protected onFocusChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V
    .registers 6
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "focus"    # Z
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 308
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mFocusChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$OnFocusChangeListener;

    .line 309
    .local v0, "listener":Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$OnFocusChangeListener;
    invoke-interface {v0, p1, p2}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$OnFocusChangeListener;->onFocusChange(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    goto :goto_6

    .line 311
    .end local v0    # "listener":Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$OnFocusChangeListener;
    :cond_16
    return-void
.end method

.method public removeOnFocusChangeListener(Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$OnFocusChangeListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$OnFocusChangeListener;

    .prologue
    .line 324
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mFocusChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 325
    return-void
.end method

.method public requestFocus(I)Z
    .registers 7
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".requestFocus"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "TAG":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mIsAttached:Z

    if-nez v3, :cond_20

    .line 227
    const-string v3, "AutoFocusController is not attached yet."

    invoke-static {v0, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :goto_1f
    return v2

    .line 231
    :cond_20
    iget-object v3, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mCurrentViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v3, :cond_2c

    iget-object v3, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mCurrentViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    if-eq v3, p1, :cond_50

    .line 232
    :cond_2c
    iget-object v3, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 233
    .local v1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_39

    .line 234
    invoke-direct {p0, v1}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->requestFocusInternal(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v2

    goto :goto_1f

    .line 236
    :cond_39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ViewHolder is not attached yet for position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 240
    .end local v1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_50
    const-string v3, "ViewHolder already has focus."

    invoke-static {v0, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f
.end method

.method public requestFocus(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .registers 6
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v1, 0x0

    .line 251
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".requestFocus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "TAG":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mIsAttached:Z

    if-nez v2, :cond_20

    .line 253
    const-string v2, "AutoFocusController is not attached yet."

    invoke-static {v0, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :goto_1f
    return v1

    .line 257
    :cond_20
    if-nez p1, :cond_28

    .line 258
    const-string v2, "ViewHolder is null."

    invoke-static {v0, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 262
    :cond_28
    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eq v2, v3, :cond_38

    .line 263
    const-string v2, "ViewHolder is not a child of the attached RecyclerView."

    invoke-static {v0, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 267
    :cond_38
    iget-object v2, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mCurrentViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_44

    iget-object v2, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mCurrentViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v3, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eq v2, v3, :cond_49

    .line 268
    :cond_44
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->requestFocusInternal(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v1

    goto :goto_1f

    .line 270
    :cond_49
    const-string v2, "ViewHolder already has focus."

    invoke-static {v0, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f
.end method

.method public setAutoFocusStrategy(Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$AutoFocusStrategy;)V
    .registers 2
    .param p1, "strategy"    # Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$AutoFocusStrategy;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mAutoFocusStrategy:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$AutoFocusStrategy;

    .line 315
    return-void
.end method

.method public start()V
    .registers 2

    .prologue
    .line 153
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->start(Z)V

    .line 154
    return-void
.end method

.method public start(Z)V
    .registers 6
    .param p1, "initialFocus"    # Z

    .prologue
    const/4 v3, 0x1

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".start()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "TAG":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mIsAttached:Z

    if-nez v1, :cond_20

    .line 165
    const-string v1, "AutoFocusController is not attached yet."

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_1f
    :goto_1f
    return-void

    .line 169
    :cond_20
    iget-boolean v1, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mIsStarted:Z

    if-nez v1, :cond_32

    .line 170
    iput-boolean v3, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mIsStarted:Z

    .line 171
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mCurrentViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v1, :cond_1f

    if-eqz p1, :cond_1f

    .line 172
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1f

    .line 175
    :cond_32
    const-string v1, "AutoFocusController has already started"

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f
.end method

.method public stop()V
    .registers 4

    .prologue
    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".stop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "TAG":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mIsAttached:Z

    if-nez v1, :cond_1f

    .line 188
    const-string v1, "AutoFocusController is not attached yet."

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :goto_1e
    return-void

    .line 192
    :cond_1f
    iget-boolean v1, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mIsStarted:Z

    if-eqz v1, :cond_2a

    .line 193
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mIsStarted:Z

    .line 194
    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->clearPendingEvents()V

    goto :goto_1e

    .line 196
    :cond_2a
    const-string v1, "AutoFocusController is not started yet."

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e
.end method
