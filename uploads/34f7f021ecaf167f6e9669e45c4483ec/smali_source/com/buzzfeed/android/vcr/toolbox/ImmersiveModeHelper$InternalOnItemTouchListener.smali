.class Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$InternalOnItemTouchListener;
.super Ljava/lang/Object;
.source "ImmersiveModeHelper.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalOnItemTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;


# direct methods
.method private constructor <init>(Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;)V
    .registers 2

    .prologue
    .line 442
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$InternalOnItemTouchListener;->this$0:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;
    .param p2, "x1"    # Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$1;

    .prologue
    .line 442
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$InternalOnItemTouchListener;-><init>(Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;)V

    return-void
.end method

.method private isViewHit(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 460
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 461
    .local v2, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 462
    .local v3, "y":F
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v0

    .line 463
    .local v0, "translationX":F
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v1

    .line 464
    .local v1, "translationY":F
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v0

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_3a

    .line 465
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v0

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_3a

    .line 466
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v1

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_3a

    .line 467
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v1

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_3a

    .line 468
    const/4 v4, 0x1

    .line 471
    :goto_39
    return v4

    :cond_3a
    const/4 v4, 0x0

    goto :goto_39
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "rv"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 447
    iget-object v2, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$InternalOnItemTouchListener;->this$0:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;

    # getter for: Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mCurState:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;
    invoke-static {v2}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->access$400(Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;)Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;

    move-result-object v2

    sget-object v3, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;->NORMAL:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;

    if-eq v2, v3, :cond_22

    .line 448
    iget-object v2, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$InternalOnItemTouchListener;->this$0:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;

    # getter for: Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v2}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->access$800(Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    .line 449
    iget-object v2, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$InternalOnItemTouchListener;->this$0:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;

    # getter for: Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mSelectedView:Landroid/view/View;
    invoke-static {v2}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->access$500(Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$InternalOnItemTouchListener;->isViewHit(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 456
    :goto_21
    return v0

    .line 453
    :cond_22
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$InternalOnItemTouchListener;->this$0:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;

    # getter for: Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->access$800(Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    :cond_2b
    move v0, v1

    .line 456
    goto :goto_21
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .registers 2
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 483
    return-void
.end method

.method public onTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "rv"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 478
    return-void
.end method
