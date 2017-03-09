.class final Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;
.super Ljava/lang/Object;
.source "ShowPageHeaderHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$InternalOffsetChangedListener;,
        Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;
    }
.end annotation


# static fields
.field private static final DEFAULT_ANIMATION_DURATION:J = 0x190L


# instance fields
.field private mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

.field private mCurrentToolbarState:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;

.field private mHeaderOverlay:Landroid/view/View;

.field private mIsOverlayShown:Z

.field private mOffsetChangedListener:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$InternalOffsetChangedListener;

.field private mOverlayAlpha:F

.field private mOverlayAnimator:Landroid/animation/ValueAnimator;

.field private mToolbar:Lcom/buzzfeed/showx/showpage/ui/view/ShowPageToolbar;

.field private mTopHeaderClearance:I


# direct methods
.method constructor <init>(Lcom/buzzfeed/showx/showpage/ui/view/ShowPageToolbar;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;)V
    .registers 8
    .param p1, "toolbar"    # Lcom/buzzfeed/showx/showpage/ui/view/ShowPageToolbar;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "appBarLayout"    # Landroid/support/design/widget/AppBarLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "headerOverlay"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v3, p0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->mOverlayAlpha:F

    .line 50
    const-string v1, "Toolbar must not be null"

    invoke-static {p1, v1}, Lcom/buzzfeed/toolkit/util/EZUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/showx/showpage/ui/view/ShowPageToolbar;

    iput-object v1, p0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->mToolbar:Lcom/buzzfeed/showx/showpage/ui/view/ShowPageToolbar;

    .line 51
    const-string v1, "AppBarLayout must not be null."

    invoke-static {p2, v1}, Lcom/buzzfeed/toolkit/util/EZUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/AppBarLayout;

    iput-object v1, p0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    .line 52
    const-string v1, "Header overlay must not be null."

    invoke-static {p3, v1}, Lcom/buzzfeed/toolkit/util/EZUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->mHeaderOverlay:Landroid/view/View;

    .line 54
    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/AppBarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 56
    .local v0, "context":Landroid/content/Context;
    invoke-direct {p0, v0}, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->calculateTopHeaderClearance(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->mTopHeaderClearance:I

    .line 57
    new-instance v1, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$InternalOffsetChangedListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$InternalOffsetChangedListener;-><init>(Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$1;)V

    iput-object v1, p0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->mOffsetChangedListener:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$InternalOffsetChangedListener;

    .line 58
    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    iget-object v2, p0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->mOffsetChangedListener:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$InternalOffsetChangedListener;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/AppBarLayout;->addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    .line 60
    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->mToolbar:Lcom/buzzfeed/showx/showpage/ui/view/ShowPageToolbar;

    invoke-virtual {v1, v3}, Lcom/buzzfeed/showx/showpage/ui/view/ShowPageToolbar;->setTitleTextAlpha(F)V

    .line 61
    return-void
.end method

.method static synthetic access$100(Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;F)V
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;
    .param p1, "x1"    # F

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->setOverlayAlpha(F)V

    return-void
.end method

.method static synthetic access$200(Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;)Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->mCurrentToolbarState:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;

    return-object v0
.end method

.method static synthetic access$202(Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;)Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;
    .param p1, "x1"    # Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->mCurrentToolbarState:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;

    return-object p1
.end method

.method static synthetic access$300(Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;)I
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;

    .prologue
    .line 19
    iget v0, p0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->mTopHeaderClearance:I

    return v0
.end method

.method static synthetic access$400(Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->setOverlayShown(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;ZZ)V
    .registers 3
    .param p0, "x0"    # Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->setOverlayShown(ZZ)V

    return-void
.end method

.method private animateOverlay(F)V
    .registers 6
    .param p1, "targetAlpha"    # F

    .prologue
    .line 92
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->mOverlayAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_32

    .line 93
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->mOverlayAnimator:Landroid/animation/ValueAnimator;

    .line 94
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->mOverlayAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 95
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->mOverlayAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$1;

    invoke-direct {v1, p0}, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$1;-><init>(Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 105
    :cond_1c
    :goto_1c
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->mOverlayAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->mOverlayAlpha:F

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 106
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->mOverlayAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 107
    return-void

    .line 101
    :cond_32
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->mOverlayAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 102
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->mOverlayAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_1c
.end method

.method private calculateTopHeaderClearance(Landroid/content/Context;)I
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-static {p1}, Lcom/buzzfeed/toolkit/util/UIUtil;->getActionBarHeight(Landroid/content/Context;)I

    move-result v1

    invoke-static {}, Lcom/buzzfeed/toolkit/util/VersionUtil;->hasLollipop()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {p1}, Lcom/buzzfeed/toolkit/util/UIUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    :goto_e
    add-int/2addr v0, v1

    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private setOverlayAlpha(F)V
    .registers 4
    .param p1, "targetAlpha"    # F

    .prologue
    .line 110
    iget v0, p0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->mOverlayAlpha:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_18

    .line 111
    iput p1, p0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->mOverlayAlpha:F

    .line 113
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->mHeaderOverlay:Landroid/view/View;

    iget v1, p0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->mOverlayAlpha:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 114
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->mToolbar:Lcom/buzzfeed/showx/showpage/ui/view/ShowPageToolbar;

    iget v1, p0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->mOverlayAlpha:F

    invoke-virtual {v0, v1}, Lcom/buzzfeed/showx/showpage/ui/view/ShowPageToolbar;->setTitleTextAlpha(F)V

    .line 116
    :cond_18
    return-void
.end method

.method private setOverlayShown(Z)V
    .registers 3
    .param p1, "shown"    # Z

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->setOverlayShown(ZZ)V

    .line 72
    return-void
.end method

.method private setOverlayShown(ZZ)V
    .registers 5
    .param p1, "shown"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 78
    iget-boolean v1, p0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->mIsOverlayShown:Z

    if-eq v1, p1, :cond_f

    .line 79
    if-eqz p1, :cond_10

    const/high16 v0, 0x3f800000

    .line 81
    .local v0, "targetAlpha":F
    :goto_8
    if-eqz p2, :cond_12

    .line 82
    invoke-direct {p0, v0}, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->animateOverlay(F)V

    .line 87
    :goto_d
    iput-boolean p1, p0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->mIsOverlayShown:Z

    .line 89
    .end local v0    # "targetAlpha":F
    :cond_f
    return-void

    .line 79
    :cond_10
    const/4 v0, 0x0

    goto :goto_8

    .line 84
    .restart local v0    # "targetAlpha":F
    :cond_12
    invoke-direct {p0, v0}, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->setOverlayAlpha(F)V

    goto :goto_d
.end method


# virtual methods
.method detach()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 123
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->mOverlayAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_c

    .line 124
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->mOverlayAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 125
    iput-object v2, p0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->mOverlayAnimator:Landroid/animation/ValueAnimator;

    .line 128
    :cond_c
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->mOffsetChangedListener:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$InternalOffsetChangedListener;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/AppBarLayout;->removeOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    .line 129
    iput-object v2, p0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    .line 130
    iput-object v2, p0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->mToolbar:Lcom/buzzfeed/showx/showpage/ui/view/ShowPageToolbar;

    .line 131
    iput-object v2, p0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->mHeaderOverlay:Landroid/view/View;

    .line 132
    iput-object v2, p0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->mOffsetChangedListener:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$InternalOffsetChangedListener;

    .line 133
    return-void
.end method

.method public getToolbarState()Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->mCurrentToolbarState:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;

    return-object v0
.end method

.method public setToolbarState(Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;)V
    .registers 5
    .param p1, "state"    # Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;

    .prologue
    const/4 v2, 0x0

    .line 136
    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->mCurrentToolbarState:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;

    if-ne v0, p1, :cond_8

    .line 154
    :cond_7
    :goto_7
    return-void

    .line 138
    :cond_8
    sget-object v0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$2;->$SwitchMap$com$buzzfeed$showx$showpage$ShowPageHeaderHelper$ToolbarState:[I

    invoke-virtual {p1}, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_24

    .line 153
    :goto_13
    iput-object p1, p0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->mCurrentToolbarState:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;

    goto :goto_7

    .line 141
    :pswitch_16
    invoke-direct {p0, v2, v2}, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->setOverlayShown(ZZ)V

    goto :goto_13

    .line 145
    :pswitch_1a
    const/4 v0, 0x1

    invoke-direct {p0, v0, v2}, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->setOverlayShown(ZZ)V

    goto :goto_13

    .line 149
    :pswitch_1f
    invoke-direct {p0, v2, v2}, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->setOverlayShown(ZZ)V

    goto :goto_13

    .line 138
    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_16
        :pswitch_1a
        :pswitch_1f
    .end packed-switch
.end method
