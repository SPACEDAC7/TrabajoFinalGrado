.class public Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;
.super Ljava/lang/Object;
.source "ImmersiveModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$ImmersiveTransitionCallback;,
        Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$SelectionChangeListener;,
        Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$InternalScrollListener;,
        Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$InternalOnItemTouchListener;,
        Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$InternalChildDrawingOrderCallback;,
        Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;
    }
.end annotation


# static fields
.field public static final DEFAULT_ANIMATION_DURATION:J = 0x1f4L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimatorSet:Landroid/animation/AnimatorSet;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mChildDrawingOrderCallback:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$InternalChildDrawingOrderCallback;

.field private mCurState:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;

.field private final mEnterAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private final mExitAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mImmersiveTransitionCallback:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$ImmersiveTransitionCallback;

.field private mMaskItemDecoration:Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;

.field private mOnItemTouchListener:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$InternalOnItemTouchListener;

.field private mOnScrollListener:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$InternalScrollListener;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mSelectedIndex:I

.field private mSelectedView:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mSelectionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$SelectionChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetTranslation:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const-class v0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    sget-object v0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;->NORMAL:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mCurState:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;

    .line 66
    new-instance v0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$InternalChildDrawingOrderCallback;

    invoke-direct {v0, p0, v1}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$InternalChildDrawingOrderCallback;-><init>(Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$1;)V

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mChildDrawingOrderCallback:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$InternalChildDrawingOrderCallback;

    .line 67
    new-instance v0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$InternalOnItemTouchListener;

    invoke-direct {v0, p0, v1}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$InternalOnItemTouchListener;-><init>(Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$1;)V

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mOnItemTouchListener:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$InternalOnItemTouchListener;

    .line 68
    new-instance v0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$InternalScrollListener;

    invoke-direct {v0, p0, v1}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$InternalScrollListener;-><init>(Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$1;)V

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mOnScrollListener:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$InternalScrollListener;

    .line 79
    new-instance v0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$1;

    invoke-direct {v0, p0}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$1;-><init>(Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;)V

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mEnterAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 90
    new-instance v0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$2;

    invoke-direct {v0, p0}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$2;-><init>(Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;)V

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mExitAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 104
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mSelectionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method static synthetic access$1000(Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;Landroid/view/View;IZ)V
    .registers 4
    .param p0, "x0"    # Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->onViewSelectionChanged(Landroid/view/View;IZ)V

    return-void
.end method

.method static synthetic access$302(Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$400(Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;)Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mCurState:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;

    return-object v0
.end method

.method static synthetic access$402(Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;)Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;
    .param p1, "x1"    # Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mCurState:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;

    return-object p1
.end method

.method static synthetic access$500(Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mSelectedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$502(Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;Landroid/view/View;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mSelectedView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$600(Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;)I
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;

    .prologue
    .line 29
    iget v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mSelectedIndex:I

    return v0
.end method

.method static synthetic access$602(Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;I)I
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mSelectedIndex:I

    return p1
.end method

.method static synthetic access$700(Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;)Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mMaskItemDecoration:Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;

    return-object v0
.end method

.method static synthetic access$800(Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;)Landroid/support/v7/widget/RecyclerView;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;
    .param p1, "x1"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->restoreImmersiveWithViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method private animateSelectedView(ZFLandroid/animation/Animator$AnimatorListener;)V
    .registers 12
    .param p1, "selected"    # Z
    .param p2, "targetTranslationY"    # F
    .param p3, "animatorListener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    const/4 v2, 0x0

    .line 330
    iget-object v4, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mSelectedView:Landroid/view/View;

    if-nez v4, :cond_6

    .line 361
    :goto_5
    return-void

    .line 332
    :cond_6
    iget-object v4, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_f

    .line 333
    iget-object v4, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    .line 336
    :cond_f
    iput p2, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mTargetTranslation:F

    .line 338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .local v0, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v4, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mSelectedView:Landroid/view/View;

    const-string/jumbo v5, "translationY"

    const/4 v6, 0x2

    new-array v6, v6, [F

    iget-object v7, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mSelectedView:Landroid/view/View;

    .line 342
    invoke-virtual {v7}, Landroid/view/View;->getTranslationY()F

    move-result v7

    aput v7, v6, v2

    const/4 v7, 0x1

    aput p2, v6, v7

    .line 341
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 343
    .local v3, "translationAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 344
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    if-eqz p1, :cond_3e

    .line 348
    iget-object v4, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mMaskItemDecoration:Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;

    iget-object v5, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mSelectedView:Landroid/view/View;

    invoke-virtual {v4, v5}, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;->setVisibleChild(Landroid/view/View;)V

    .line 351
    :cond_3e
    if-eqz p1, :cond_42

    const/16 v2, 0xff

    .line 352
    .local v2, "targetAlpha":I
    :cond_42
    iget-object v4, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mMaskItemDecoration:Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;

    invoke-virtual {v4, v2}, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;->setupAnimator(I)Landroid/animation/Animator;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->getSelectedViewHolder()Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 355
    .local v1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, v1, p1, v0}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->onCreateAnimators(Landroid/support/v7/widget/RecyclerView$ViewHolder;ZLjava/util/List;)V

    .line 357
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 358
    iget-object v4, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 359
    iget-object v4, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, p3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 360
    iget-object v4, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_5
.end method

.method private animateSelectedViewToImmersiveMode()V
    .registers 4

    .prologue
    .line 283
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mSelectedView:Landroid/view/View;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mSelectedView:Landroid/view/View;

    .line 284
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 285
    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->isImmersiveMode()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 294
    :cond_12
    :goto_12
    return-void

    .line 289
    :cond_13
    sget-object v1, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;->ENTERING_IMMERSIVE_MODE:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;

    iput-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mCurState:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;

    .line 290
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mSelectedView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->calculateImmersiveTranslationY(Landroid/view/View;)F

    move-result v0

    .line 292
    .local v0, "targetTranslation":F
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mSelectedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 293
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mEnterAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-direct {p0, v1, v0, v2}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->animateSelectedView(ZFLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_12
.end method

.method private animateSelectedViewToNormalState()V
    .registers 4

    .prologue
    .line 317
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mSelectedView:Landroid/view/View;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mCurState:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;

    sget-object v1, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;->NORMAL:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;

    if-eq v0, v1, :cond_10

    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mCurState:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;

    sget-object v1, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;->EXITING_IMMERSIVE_MODE:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;

    if-ne v0, v1, :cond_11

    .line 325
    :cond_10
    :goto_10
    return-void

    .line 323
    :cond_11
    sget-object v0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;->EXITING_IMMERSIVE_MODE:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mCurState:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;

    .line 324
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mExitAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-direct {p0, v0, v1, v2}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->animateSelectedView(ZFLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_10
.end method

.method private notifyOnViewHolderSelectionChanged(Landroid/view/View;Z)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "selected"    # Z

    .prologue
    .line 392
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 393
    .local v0, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, v0, p2}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->onViewHolderSelectionChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    .line 394
    return-void
.end method

.method private onViewSelectionChanged(Landroid/view/View;IZ)V
    .registers 4
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "selectedIndex"    # I
    .param p3, "selected"    # Z

    .prologue
    .line 380
    if-eqz p3, :cond_d

    .line 381
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mSelectedView:Landroid/view/View;

    .line 382
    iput p2, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mSelectedIndex:I

    .line 383
    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->animateSelectedViewToImmersiveMode()V

    .line 388
    :goto_9
    invoke-direct {p0, p1, p3}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->notifyOnViewHolderSelectionChanged(Landroid/view/View;Z)V

    .line 389
    return-void

    .line 385
    :cond_d
    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->animateSelectedViewToNormalState()V

    goto :goto_9
.end method

.method private restoreImmersiveMode(I)V
    .registers 5
    .param p1, "adapterPosition"    # I

    .prologue
    .line 138
    iget-object v2, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_12

    .line 139
    iget-object v2, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 140
    .local v0, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-direct {p0, v0}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->restoreImmersiveWithViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 155
    .end local v0    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_11
    :goto_11
    return-void

    .line 143
    :cond_12
    iget-object v2, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 144
    .local v1, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 145
    new-instance v2, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$3;

    invoke-direct {v2, p0, p1}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$3;-><init>(Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_11
.end method

.method private restoreImmersiveWithViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 4
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 158
    if-eqz p1, :cond_6

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-nez v0, :cond_e

    .line 159
    :cond_6
    sget-object v0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->TAG:Ljava/lang/String;

    const-string v1, "Could not restore immersive mode, view was null."

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :goto_d
    return-void

    .line 163
    :cond_e
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mSelectedView:Landroid/view/View;

    .line 164
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mSelectedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mSelectedIndex:I

    .line 165
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mSelectedView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->calculateImmersiveTranslationY(Landroid/view/View;)F

    move-result v0

    iput v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mTargetTranslation:F

    .line 166
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mSelectedView:Landroid/view/View;

    iget v1, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mTargetTranslation:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 167
    sget-object v0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;->IMMERSIVE_MODE:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mCurState:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;

    .line 168
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mMaskItemDecoration:Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;

    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mSelectedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;->setVisibleChild(Landroid/view/View;)V

    .line 169
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mSelectedView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->notifyOnViewHolderSelectionChanged(Landroid/view/View;Z)V

    goto :goto_d
.end method


# virtual methods
.method public addSelectionChangeListener(Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$SelectionChangeListener;)V
    .registers 3
    .param p1, "selectionChangeListener"    # Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$SelectionChangeListener;

    .prologue
    .line 234
    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mSelectionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 235
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mSelectionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_f
    return-void
.end method

.method public attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .registers 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 112
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->attachToRecyclerViewImmersiveMode(Landroid/support/v7/widget/RecyclerView;I)V

    .line 113
    return-void
.end method

.method public attachToRecyclerViewImmersiveMode(Landroid/support/v7/widget/RecyclerView;I)V
    .registers 6
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "adapterPosition"    # I

    .prologue
    .line 122
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 123
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mChildDrawingOrderCallback:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$InternalChildDrawingOrderCallback;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setChildDrawingOrderCallback(Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;)V

    .line 124
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mOnItemTouchListener:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$InternalOnItemTouchListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 125
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mOnScrollListener:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$InternalScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 127
    const/4 v0, -0x1

    if-ne p2, v0, :cond_29

    .line 128
    new-instance v0, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;

    invoke-direct {v0}, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mMaskItemDecoration:Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;

    .line 129
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mMaskItemDecoration:Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 135
    :goto_28
    return-void

    .line 131
    :cond_29
    new-instance v0, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;

    const/16 v1, 0xff

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;-><init>(IZ)V

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mMaskItemDecoration:Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;

    .line 132
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mMaskItemDecoration:Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 133
    invoke-direct {p0, p2}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->restoreImmersiveMode(I)V

    goto :goto_28
.end method

.method protected calculateImmersiveTranslationY(Landroid/view/View;)F
    .registers 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/high16 v5, 0x40000000

    .line 304
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 305
    .local v2, "parent":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v3, v4, v5

    .line 306
    .local v3, "parentCenter":F
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v4, v5

    .line 307
    .local v1, "offset":F
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v1

    sub-float v0, v3, v4

    .line 309
    .local v0, "newTranslationY":F
    iget-object v4, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mImmersiveTransitionCallback:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$ImmersiveTransitionCallback;

    if-eqz v4, :cond_2c

    .line 310
    iget-object v4, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mImmersiveTransitionCallback:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$ImmersiveTransitionCallback;

    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->getSelectedViewHolder()Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$ImmersiveTransitionCallback;->onGetImmersiveTranslationY(Landroid/support/v7/widget/RecyclerView$ViewHolder;F)F

    move-result v0

    .line 313
    .end local v0    # "newTranslationY":F
    :cond_2c
    return v0
.end method

.method public detachFromRecyclerView()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 264
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_c

    .line 265
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 266
    iput-object v2, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 269
    :cond_c
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_2c

    .line 270
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setChildDrawingOrderCallback(Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;)V

    .line 271
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mMaskItemDecoration:Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 272
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mOnItemTouchListener:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$InternalOnItemTouchListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 273
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mOnScrollListener:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$InternalScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 274
    iput-object v2, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 277
    :cond_2c
    iput-object v2, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mSelectedView:Landroid/view/View;

    .line 278
    const/4 v0, -0x1

    iput v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mSelectedIndex:I

    .line 279
    iput-object v2, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mMaskItemDecoration:Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;

    .line 280
    return-void
.end method

.method public getSelectedViewHolder()Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mSelectedView:Landroid/view/View;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_11

    .line 228
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mSelectedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 230
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public isAnimating()Z
    .registers 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public isImmersiveMode()Z
    .registers 3

    .prologue
    .line 253
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mCurState:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;

    sget-object v1, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;->IMMERSIVE_MODE:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mCurState:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;

    sget-object v1, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;->ENTERING_IMMERSIVE_MODE:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected onCreateAnimators(Landroid/support/v7/widget/RecyclerView$ViewHolder;ZLjava/util/List;)V
    .registers 5
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "selected"    # Z
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "Z",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 374
    .local p3, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mImmersiveTransitionCallback:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$ImmersiveTransitionCallback;

    if-eqz v0, :cond_9

    .line 375
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mImmersiveTransitionCallback:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$ImmersiveTransitionCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$ImmersiveTransitionCallback;->onCreateAnimators(Landroid/support/v7/widget/RecyclerView$ViewHolder;ZLjava/util/List;)V

    .line 377
    :cond_9
    return-void
.end method

.method protected onViewHolderSelectionChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V
    .registers 6
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "selected"    # Z
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 404
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mSelectionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$SelectionChangeListener;

    .line 405
    .local v0, "selectionChangeListener":Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$SelectionChangeListener;
    invoke-interface {v0, p1, p2}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$SelectionChangeListener;->onViewHolderSelectionChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    goto :goto_6

    .line 407
    .end local v0    # "selectionChangeListener":Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$SelectionChangeListener;
    :cond_16
    return-void
.end method

.method public removeSelectionChangeListener(Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$SelectionChangeListener;)V
    .registers 3
    .param p1, "selectionChangeListener"    # Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$SelectionChangeListener;

    .prologue
    .line 240
    if-eqz p1, :cond_7

    .line 241
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mSelectionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 243
    :cond_7
    return-void
.end method

.method public selectPosition(I)V
    .registers 6
    .param p1, "position"    # I

    .prologue
    .line 209
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_c

    if-ltz p1, :cond_c

    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 210
    :cond_c
    sget-object v1, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not select position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :goto_24
    return-void

    .line 214
    :cond_25
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 215
    .local v0, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_37

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v1, :cond_37

    .line 216
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->selectView(Landroid/view/View;)V

    goto :goto_24

    .line 218
    :cond_37
    sget-object v1, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not select position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24
.end method

.method public selectView(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 181
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_c

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 182
    :cond_c
    sget-object v1, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->TAG:Ljava/lang/String;

    const-string v2, "Could not select view"

    invoke-static {v1, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_13
    :goto_13
    return-void

    .line 186
    :cond_14
    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->isImmersiveMode()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 187
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mSelectedView:Landroid/view/View;

    if-ne v1, p1, :cond_13

    .line 188
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mSelectedView:Landroid/view/View;

    iget v2, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mSelectedIndex:I

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->onViewSelectionChanged(Landroid/view/View;IZ)V

    goto :goto_13

    .line 191
    :cond_27
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 192
    .local v0, "indexOfView":I
    if-ltz v0, :cond_34

    .line 193
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->onViewSelectionChanged(Landroid/view/View;IZ)V

    goto :goto_13

    .line 195
    :cond_34
    sget-object v1, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->TAG:Ljava/lang/String;

    const-string v2, "Could not select view"

    invoke-static {v1, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method

.method public setImmersiveModeListener(Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$ImmersiveTransitionCallback;)V
    .registers 2
    .param p1, "listener"    # Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$ImmersiveTransitionCallback;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mImmersiveTransitionCallback:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$ImmersiveTransitionCallback;

    .line 247
    return-void
.end method
