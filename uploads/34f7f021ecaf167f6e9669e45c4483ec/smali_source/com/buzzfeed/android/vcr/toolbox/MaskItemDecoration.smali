.class public Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "MaskItemDecoration.java"


# static fields
.field private static final DEFAULT_ALPHA_ANIMATION_DURATION:J = 0x1f4L

.field public static final DEFAULT_VISIBLE_MASK_ALPHA:I = 0xff


# instance fields
.field protected mAlphaValueAnimator:Landroid/animation/ValueAnimator;

.field protected mPaint:Landroid/graphics/Paint;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mTargetAlpha:I

.field private mVisibleChild:Landroid/view/View;

.field private mVisibleMaskAlpha:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 30
    const/16 v0, 0xff

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;-><init>(IZ)V

    .line 31
    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 5
    .param p1, "visibleMaskAlpha"    # I
    .param p2, "isMaskVisible"    # Z

    .prologue
    const/16 v1, 0xff

    .line 39
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 27
    iput v1, p0, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;->mVisibleMaskAlpha:I

    .line 40
    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;->initialize()V

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;->mVisibleMaskAlpha:I

    .line 42
    if-eqz p2, :cond_1c

    .line 43
    iput p1, p0, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;->mTargetAlpha:I

    .line 44
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;->mTargetAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 46
    :cond_1c
    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;)Landroid/support/v7/widget/RecyclerView;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method private animateMask(I)V
    .registers 3
    .param p1, "targetAlpha"    # I

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;->setupAnimator(I)Landroid/animation/Animator;

    .line 138
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;->mAlphaValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 139
    return-void
.end method

.method private clamp(III)I
    .registers 5
    .param p1, "val"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I

    .prologue
    .line 49
    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public animateMaskIn()V
    .registers 2

    .prologue
    .line 126
    iget v0, p0, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;->mVisibleMaskAlpha:I

    invoke-direct {p0, v0}, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;->animateMask(I)V

    .line 127
    return-void
.end method

.method public animateMaskOut()V
    .registers 2

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;->animateMask(I)V

    .line 134
    return-void
.end method

.method public cancelAnimation()V
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;->mAlphaValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 166
    return-void
.end method

.method protected initialize()V
    .registers 5

    .prologue
    .line 53
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;->mPaint:Landroid/graphics/Paint;

    .line 54
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 57
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;->mAlphaValueAnimator:Landroid/animation/ValueAnimator;

    .line 58
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;->mAlphaValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration$1;

    invoke-direct {v1, p0}, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration$1;-><init>(Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 67
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;->mAlphaValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 68
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .registers 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 110
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 112
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;->mVisibleChild:Landroid/view/View;

    if-eqz v0, :cond_2f

    .line 113
    iget-object v7, p0, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;->mVisibleChild:Landroid/view/View;

    .line 114
    .local v7, "view":Landroid/view/View;
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-lez v0, :cond_2f

    .line 115
    invoke-static {v7}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v6

    .line 117
    .local v6, "tY":F
    const/4 v1, 0x0

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    add-float v2, v0, v6

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    add-float v4, v0, v6

    iget-object v5, p0, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 120
    .end local v6    # "tY":F
    .end local v7    # "view":Landroid/view/View;
    :cond_2f
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .registers 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 92
    iput-object p2, p0, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 94
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;->mVisibleChild:Landroid/view/View;

    if-eqz v0, :cond_3b

    .line 96
    iget-object v7, p0, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;->mVisibleChild:Landroid/view/View;

    .line 97
    .local v7, "view":Landroid/view/View;
    invoke-static {v7}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v6

    .line 99
    .local v6, "tY":F
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    add-float v4, v0, v6

    iget-object v5, p0, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 101
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    add-float v2, v0, v6

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 106
    .end local v6    # "tY":F
    .end local v7    # "view":Landroid/view/View;
    :goto_3a
    return-void

    .line 104
    :cond_3b
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_3a
.end method

.method public setAnimationDuration(J)V
    .registers 4
    .param p1, "duration"    # J

    .prologue
    .line 85
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;->mAlphaValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 86
    return-void
.end method

.method public setVisibleChild(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;->mVisibleChild:Landroid/view/View;

    .line 77
    return-void
.end method

.method public setupAnimator(I)Landroid/animation/Animator;
    .registers 7
    .param p1, "targetAlpha"    # I

    .prologue
    .line 148
    iget v1, p0, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;->mTargetAlpha:I

    if-eq v1, p1, :cond_35

    .line 149
    iput p1, p0, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;->mTargetAlpha:I

    .line 150
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;->mAlphaValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;->mAlphaValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 151
    :cond_16
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;->mAlphaValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 153
    :cond_1b
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 154
    .local v0, "currAlpha":I
    iget v1, p0, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;->mTargetAlpha:I

    if-eq v0, v1, :cond_35

    .line 155
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;->mAlphaValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;->mTargetAlpha:I

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 158
    .end local v0    # "currAlpha":I
    :cond_35
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;->mAlphaValueAnimator:Landroid/animation/ValueAnimator;

    return-object v1
.end method
