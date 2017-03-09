.class public Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;
.super Ljava/lang/Object;
.source "VideoContainerAnimationHelper.java"


# static fields
.field private static final DEFAULT_ALPHA_DURATION:J = 0x1f4L

.field private static final DEFAULT_TRANSLATION_DURATION:J = 0x1f4L


# instance fields
.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mAspectRatio:F

.field private mCloseButton:Landroid/view/View;

.field private mControllerView:Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

.field private mFitSystemContainer:Landroid/widget/RelativeLayout;

.field private mHeaderView:Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;

.field private mIsShowing:Z

.field private mRootContainer:Landroid/widget/RelativeLayout;

.field private mRootOverlayContainer:Landroid/widget/RelativeLayout;

.field private mVideoFooterView:Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;

.field private mVideoOverlayContainer:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;)V
    .registers 3
    .param p1, "videoContainerView"    # Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mIsShowing:Z

    .line 42
    iput-object p1, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mRootContainer:Landroid/widget/RelativeLayout;

    .line 43
    invoke-virtual {p1}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->getRootOverlayContainer()Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mRootOverlayContainer:Landroid/widget/RelativeLayout;

    .line 44
    invoke-virtual {p1}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->getFitSystemContainer()Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mFitSystemContainer:Landroid/widget/RelativeLayout;

    .line 45
    invoke-virtual {p1}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->getVideoOverlayContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mVideoOverlayContainer:Landroid/widget/FrameLayout;

    .line 46
    invoke-virtual {p1}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->getCloseButton()Landroid/widget/ImageButton;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mCloseButton:Landroid/view/View;

    .line 47
    invoke-virtual {p1}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->getControllerView()Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mControllerView:Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    .line 48
    invoke-virtual {p1}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->getHeaderView()Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mHeaderView:Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;

    .line 49
    invoke-virtual {p1}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->getControllerView()Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mControllerView:Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    .line 50
    invoke-virtual {p1}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->getVideoFooterView()Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mVideoFooterView:Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mCloseButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;)Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mHeaderView:Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;)Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mVideoFooterView:Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;)Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mControllerView:Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;)Landroid/widget/FrameLayout;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mVideoOverlayContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$502(Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mIsShowing:Z

    return p1
.end method

.method private cancelAnimationIfNeeded()V
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 171
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 172
    :cond_14
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 174
    :cond_19
    return-void
.end method

.method private createAlphaAnimator(Landroid/view/View;FF)Landroid/animation/Animator;
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "startAlpha"    # F
    .param p3, "targetAlpha"    # F

    .prologue
    .line 201
    const-string v0, "alpha"

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v2, 0x1

    aput p3, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    .line 202
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private createAlphaTransitionAnimator(Landroid/view/View;)Landroid/animation/Animator;
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 116
    const-string v0, "alpha"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_14

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    .line 117
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0

    .line 116
    nop

    :array_14
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method

.method private createTranslationAnimator(Landroid/view/View;FF)Landroid/animation/Animator;
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "startY"    # F
    .param p3, "targetY"    # F

    .prologue
    .line 121
    const-string/jumbo v0, "translationY"

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v2, 0x1

    aput p3, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    .line 122
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private setupAlphaAnimator(Ljava/util/List;FF)Ljava/util/List;
    .registers 7
    .param p2, "startAlpha"    # F
    .param p3, "targetAlpha"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;FF)",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mFitSystemContainer:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1, p2, p3}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->createAlphaAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v0

    .line 178
    .local v0, "animator":Landroid/animation/Animator;
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mVideoOverlayContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1a

    .line 181
    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mVideoOverlayContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, v1, p2, p3}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->createAlphaAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v0

    .line 182
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_1a
    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mRootOverlayContainer:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1, p2, p3}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->createAlphaAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mHeaderView:Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;

    invoke-virtual {v1}, Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mRootContainer:Landroid/widget/RelativeLayout;

    if-ne v1, v2, :cond_36

    .line 188
    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mHeaderView:Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;

    invoke-direct {p0, v1, p2, p3}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->createAlphaAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v0

    .line 189
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_36
    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mVideoFooterView:Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;

    invoke-virtual {v1}, Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mRootContainer:Landroid/widget/RelativeLayout;

    if-ne v1, v2, :cond_49

    .line 193
    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mVideoFooterView:Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;

    invoke-direct {p0, v1, p2, p3}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->createAlphaAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v0

    .line 194
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    :cond_49
    return-object p1
.end method


# virtual methods
.method public cancelHide()V
    .registers 2

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mIsShowing:Z

    if-nez v0, :cond_7

    .line 165
    invoke-direct {p0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->cancelAnimationIfNeeded()V

    .line 167
    :cond_7
    return-void
.end method

.method public hideOverlay()V
    .registers 4

    .prologue
    .line 145
    iget-boolean v1, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mIsShowing:Z

    if-nez v1, :cond_5

    .line 161
    :goto_4
    return-void

    .line 146
    :cond_5
    invoke-direct {p0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->cancelAnimationIfNeeded()V

    .line 148
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/high16 v1, 0x3f800000

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->setupAlphaAnimator(Ljava/util/List;FF)Ljava/util/List;

    .line 151
    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 152
    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper$3;

    invoke-direct {v2, p0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper$3;-><init>(Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 160
    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_4
.end method

.method public setAspectRatio(F)V
    .registers 3
    .param p1, "aspectRatio"    # F

    .prologue
    .line 54
    iget v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mAspectRatio:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_8

    .line 55
    iput p1, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mAspectRatio:F

    .line 57
    :cond_8
    return-void
.end method

.method public showOverlay()V
    .registers 4

    .prologue
    .line 126
    iget-boolean v1, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mIsShowing:Z

    if-eqz v1, :cond_5

    .line 142
    :goto_4
    return-void

    .line 127
    :cond_5
    invoke-direct {p0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->cancelAnimationIfNeeded()V

    .line 129
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000

    invoke-direct {p0, v0, v1, v2}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->setupAlphaAnimator(Ljava/util/List;FF)Ljava/util/List;

    .line 132
    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 133
    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper$2;

    invoke-direct {v2, p0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper$2;-><init>(Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 141
    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_4
.end method

.method public startTransition()V
    .registers 12

    .prologue
    const/high16 v10, 0x3f800000

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 60
    iget v5, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mAspectRatio:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_d1

    .line 61
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v1, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const-wide/16 v2, 0x12c

    .line 64
    .local v2, "alphaDelay":J
    const/high16 v4, 0x40400000

    .line 66
    .local v4, "slideFactor":F
    iget v5, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mAspectRatio:F

    const v6, 0x3f1020c5

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_d2

    .line 67
    iget-object v5, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mHeaderView:Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;

    invoke-direct {p0, v5}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->createAlphaTransitionAnimator(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v5, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mHeaderView:Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;

    iget-object v6, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mHeaderView:Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;

    invoke-virtual {v6}, Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v4

    invoke-direct {p0, v5, v6, v7}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->createTranslationAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v5, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mVideoFooterView:Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;

    invoke-direct {p0, v5}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->createAlphaTransitionAnimator(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v5, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mVideoFooterView:Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;

    iget-object v6, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mVideoFooterView:Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;

    invoke-virtual {v6}, Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;->getHeight()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    mul-float/2addr v6, v4

    invoke-direct {p0, v5, v6, v7}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->createTranslationAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v5, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mControllerView:Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    invoke-direct {p0, v5}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->createAlphaTransitionAnimator(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v5, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mControllerView:Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    iget-object v6, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mControllerView:Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    invoke-virtual {v6}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->getHeight()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    mul-float/2addr v6, v4

    invoke-direct {p0, v5, v6, v7}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->createTranslationAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    :goto_74
    iget-object v5, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mVideoOverlayContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 79
    iget-object v5, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mVideoOverlayContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, v5, v7, v10}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->createAlphaAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v0

    .line 80
    .local v0, "alphaAnimator":Landroid/animation/Animator;
    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 81
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v5, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mCloseButton:Landroid/view/View;

    if-eqz v5, :cond_9f

    .line 84
    iget-object v5, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mCloseButton:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setAlpha(F)V

    .line 85
    iget-object v5, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mCloseButton:Landroid/view/View;

    invoke-direct {p0, v5, v7, v10}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->createAlphaAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v0

    .line 86
    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 87
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v5, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mCloseButton:Landroid/view/View;

    invoke-virtual {v5, v8, v9}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 91
    :cond_9f
    iget-object v5, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mHeaderView:Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;

    invoke-virtual {v5, v8, v9}, Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 92
    iget-object v5, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mVideoFooterView:Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;

    invoke-virtual {v5, v8, v9}, Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 93
    iget-object v5, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mControllerView:Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    invoke-virtual {v5, v8, v9}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 94
    iget-object v5, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mVideoOverlayContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v8, v9}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 96
    iget-object v5, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 97
    iget-object v5, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6, v10}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 98
    iget-object v5, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 99
    iget-object v5, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v6, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper$1;

    invoke-direct {v6, p0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper$1;-><init>(Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 113
    .end local v0    # "alphaAnimator":Landroid/animation/Animator;
    .end local v1    # "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .end local v2    # "alphaDelay":J
    .end local v4    # "slideFactor":F
    :cond_d1
    return-void

    .line 74
    .restart local v1    # "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .restart local v2    # "alphaDelay":J
    .restart local v4    # "slideFactor":F
    :cond_d2
    iget-object v5, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mHeaderView:Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;

    iget-object v6, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mHeaderView:Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;

    invoke-virtual {v6}, Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;->getHeight()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    mul-float/2addr v6, v4

    invoke-direct {p0, v5, v6, v7}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->createTranslationAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v5, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mVideoFooterView:Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;

    iget-object v6, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mVideoFooterView:Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;

    invoke-virtual {v6}, Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v4

    invoke-direct {p0, v5, v6, v7}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->createTranslationAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_74
.end method
