.class public Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "BuzzFeedAppBarLayoutController.java"


# instance fields
.field private mAppBarLayout:Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayout;

.field private mBehavior:Lcom/buzzfeed/toolkit/ui/appbarlayout/DummyBehavior;

.field private mCurrentTranslationOffset:I

.field private mIsAttached:Z

.field private mLastY:I

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mScrollFlagHelper:Lcom/buzzfeed/toolkit/ui/appbarlayout/ScrollFlagHelper;

.field private mStatusBarHeight:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->mIsAttached:Z

    return-void
.end method

.method private dispatchUpdateCurrentTranslation(I)V
    .registers 3
    .param p1, "dy"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->updateCurrentTranslation(I)V

    .line 93
    iget v0, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->mCurrentTranslationOffset:I

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->dispatchOffsetUpdates(I)V

    .line 94
    return-void
.end method

.method private getExitUntilCollapsedOffset(I)I
    .registers 6
    .param p1, "minOffset"    # I

    .prologue
    .line 142
    iget-object v2, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 144
    .local v1, "pos":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_b

    .line 145
    const/4 p1, 0x0

    .line 150
    .end local p1    # "minOffset":I
    :cond_a
    :goto_a
    return p1

    .line 146
    .restart local p1    # "minOffset":I
    :cond_b
    if-nez v1, :cond_a

    .line 147
    iget-object v2, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 148
    .local v0, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v2, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v2

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_a
.end method

.method private getMinHeight(Landroid/support/design/widget/AppBarLayout;Z)I
    .registers 5
    .param p1, "layout"    # Landroid/support/design/widget/AppBarLayout;
    .param p2, "forceQuickReturn"    # Z

    .prologue
    .line 177
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    .line 178
    .local v0, "minHeight":I
    iget-object v1, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->mScrollFlagHelper:Lcom/buzzfeed/toolkit/ui/appbarlayout/ScrollFlagHelper;

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/ui/appbarlayout/ScrollFlagHelper;->isFlagExitUntilCollapsedEnabled()Z

    move-result v1

    if-nez v1, :cond_18

    if-lez v0, :cond_16

    iget-object v1, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->mScrollFlagHelper:Lcom/buzzfeed/toolkit/ui/appbarlayout/ScrollFlagHelper;

    .line 179
    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/ui/appbarlayout/ScrollFlagHelper;->isQuickReturnEnabled()Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_16
    if-eqz p2, :cond_26

    .line 180
    :cond_18
    if-lez v0, :cond_1b

    .line 182
    .end local v0    # "minHeight":I
    :goto_1a
    return v0

    .line 180
    .restart local v0    # "minHeight":I
    :cond_1b
    iget-object v1, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->mScrollFlagHelper:Lcom/buzzfeed/toolkit/ui/appbarlayout/ScrollFlagHelper;

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/ui/appbarlayout/ScrollFlagHelper;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    goto :goto_1a

    .line 182
    :cond_26
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method private getMinOffset(Landroid/support/design/widget/AppBarLayout;)I
    .registers 6
    .param p1, "layout"    # Landroid/support/design/widget/AppBarLayout;

    .prologue
    const/4 v3, 0x0

    .line 160
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getMeasuredHeight()I

    move-result v0

    .line 162
    .local v0, "minOffset":I
    iget-object v1, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->mScrollFlagHelper:Lcom/buzzfeed/toolkit/ui/appbarlayout/ScrollFlagHelper;

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/ui/appbarlayout/ScrollFlagHelper;->isFlagScrollEnabled()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 163
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0, p1, v3}, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->getMinHeight(Landroid/support/design/widget/AppBarLayout;Z)I

    move-result v2

    sub-int v0, v1, v2

    .line 166
    :cond_17
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 167
    iget v1, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->mStatusBarHeight:I

    if-nez v1, :cond_2b

    .line 168
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/buzzfeed/toolkit/util/UIUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->mStatusBarHeight:I

    .line 170
    :cond_2b
    iget v1, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->mStatusBarHeight:I

    sub-int/2addr v0, v1

    .line 173
    :cond_2e
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    neg-int v1, v1

    return v1
.end method

.method private getQuickReturnOffset(IIIIZ)I
    .registers 10
    .param p1, "y"    # I
    .param p2, "dy"    # I
    .param p3, "originalDy"    # I
    .param p4, "minOffset"    # I
    .param p5, "accuracy"    # Z

    .prologue
    .line 127
    iget v2, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->mCurrentTranslationOffset:I

    sub-int/2addr v2, p2

    invoke-static {p4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 128
    .local v1, "offset":I
    iget-object v2, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->mAppBarLayout:Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayout;

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->getMinHeight(Landroid/support/design/widget/AppBarLayout;Z)I

    move-result v2

    add-int v0, p4, v2

    .line 130
    .local v0, "breakPoint":I
    if-gtz p2, :cond_23

    if-eqz p5, :cond_1f

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le p1, v2, :cond_23

    .line 131
    :cond_1f
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 134
    :cond_23
    if-nez p5, :cond_2c

    if-nez p3, :cond_2c

    iget v2, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->mCurrentTranslationOffset:I

    if-ne v2, p4, :cond_2c

    .end local p4    # "minOffset":I
    :goto_2b
    return p4

    .restart local p4    # "minOffset":I
    :cond_2c
    move p4, v1

    goto :goto_2b
.end method

.method private updateCurrentTranslation(I)V
    .registers 9
    .param p1, "dy"    # I

    .prologue
    const/4 v0, 0x0

    .line 97
    iget-object v2, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v1

    .line 99
    .local v1, "y":I
    iget v2, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->mLastY:I

    if-ne v1, v2, :cond_c

    .line 121
    :goto_b
    return-void

    .line 103
    :cond_c
    iput v1, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->mLastY:I

    .line 105
    iget-object v2, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3c

    const/4 v5, 0x1

    .line 106
    .local v5, "accuracy":Z
    :goto_17
    move v3, p1

    .line 107
    .local v3, "originalDy":I
    iget-object v2, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->mAppBarLayout:Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayout;

    invoke-direct {p0, v2}, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->getMinOffset(Landroid/support/design/widget/AppBarLayout;)I

    move-result v4

    .line 108
    .local v4, "minOffset":I
    if-eqz v5, :cond_3e

    neg-int v2, v1

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 110
    .local v6, "translationOffset":I
    :goto_29
    if-eqz p1, :cond_40

    .line 112
    :goto_2b
    iget-object v2, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->mScrollFlagHelper:Lcom/buzzfeed/toolkit/ui/appbarlayout/ScrollFlagHelper;

    invoke-virtual {v2}, Lcom/buzzfeed/toolkit/ui/appbarlayout/ScrollFlagHelper;->isQuickReturnEnabled()Z

    move-result v2

    if-eqz v2, :cond_45

    move-object v0, p0

    move v2, p1

    .line 113
    invoke-direct/range {v0 .. v5}, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->getQuickReturnOffset(IIIIZ)I

    move-result v6

    .line 120
    :cond_39
    :goto_39
    iput v6, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->mCurrentTranslationOffset:I

    goto :goto_b

    .end local v3    # "originalDy":I
    .end local v4    # "minOffset":I
    .end local v5    # "accuracy":Z
    .end local v6    # "translationOffset":I
    :cond_3c
    move v5, v0

    .line 105
    goto :goto_17

    .restart local v3    # "originalDy":I
    .restart local v4    # "minOffset":I
    .restart local v5    # "accuracy":Z
    :cond_3e
    move v6, v4

    .line 108
    goto :goto_29

    .line 110
    .restart local v6    # "translationOffset":I
    :cond_40
    iget v2, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->mCurrentTranslationOffset:I

    add-int p1, v1, v2

    goto :goto_2b

    .line 114
    :cond_45
    iget-object v2, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->mScrollFlagHelper:Lcom/buzzfeed/toolkit/ui/appbarlayout/ScrollFlagHelper;

    invoke-virtual {v2}, Lcom/buzzfeed/toolkit/ui/appbarlayout/ScrollFlagHelper;->isFlagEnterAlwaysEnabled()Z

    move-result v2

    if-eqz v2, :cond_59

    .line 115
    iget v2, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->mCurrentTranslationOffset:I

    sub-int/2addr v2, p1

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_39

    .line 116
    :cond_59
    iget-object v0, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->mScrollFlagHelper:Lcom/buzzfeed/toolkit/ui/appbarlayout/ScrollFlagHelper;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/ui/appbarlayout/ScrollFlagHelper;->isFlagExitUntilCollapsedEnabled()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 117
    invoke-direct {p0, v4}, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->getExitUntilCollapsedOffset(I)I

    move-result v6

    goto :goto_39
.end method


# virtual methods
.method public attachView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/LinearLayoutManager;Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayout;)V
    .registers 7
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "linearLayoutManager"    # Landroid/support/v7/widget/LinearLayoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "appBarLayout"    # Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 41
    const-string v1, "RecyclerView can\'t be null."

    invoke-static {p1, v1}, Lcom/buzzfeed/toolkit/util/EZUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 42
    const-string v1, "LinearLayoutManager can\'t be null."

    invoke-static {p2, v1}, Lcom/buzzfeed/toolkit/util/EZUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/LinearLayoutManager;

    iput-object v1, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 43
    const-string v1, "AppBarLayout can\'t be null."

    invoke-static {p3, v1}, Lcom/buzzfeed/toolkit/util/EZUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayout;

    iput-object v1, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->mAppBarLayout:Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayout;

    .line 45
    new-instance v1, Lcom/buzzfeed/toolkit/ui/appbarlayout/ScrollFlagHelper;

    iget-object v2, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->mAppBarLayout:Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayout;

    invoke-direct {v1, v2}, Lcom/buzzfeed/toolkit/ui/appbarlayout/ScrollFlagHelper;-><init>(Landroid/support/design/widget/AppBarLayout;)V

    iput-object v1, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->mScrollFlagHelper:Lcom/buzzfeed/toolkit/ui/appbarlayout/ScrollFlagHelper;

    .line 46
    iget-object v1, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p0}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 48
    new-instance v1, Lcom/buzzfeed/toolkit/ui/appbarlayout/DummyBehavior;

    invoke-direct {v1}, Lcom/buzzfeed/toolkit/ui/appbarlayout/DummyBehavior;-><init>()V

    iput-object v1, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->mBehavior:Lcom/buzzfeed/toolkit/ui/appbarlayout/DummyBehavior;

    .line 50
    invoke-virtual {p3}, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 51
    .local v0, "layoutParams":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    iget-object v1, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->mBehavior:Lcom/buzzfeed/toolkit/ui/appbarlayout/DummyBehavior;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroid/support/design/widget/CoordinatorLayout$Behavior;)V

    .line 53
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->mIsAttached:Z

    .line 54
    return-void
.end method

.method public detachView()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 60
    iget-boolean v0, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->mIsAttached:Z

    if-nez v0, :cond_7

    .line 72
    :goto_6
    return-void

    .line 64
    :cond_7
    iput-boolean v2, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->mIsAttached:Z

    .line 65
    iget-object v0, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 66
    iput-object v1, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 67
    iput-object v1, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 68
    iput-object v1, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->mAppBarLayout:Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayout;

    .line 69
    iput-object v1, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->mBehavior:Lcom/buzzfeed/toolkit/ui/appbarlayout/DummyBehavior;

    .line 70
    iput-object v1, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->mScrollFlagHelper:Lcom/buzzfeed/toolkit/ui/appbarlayout/ScrollFlagHelper;

    .line 71
    iput v2, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->mCurrentTranslationOffset:I

    goto :goto_6
.end method

.method dispatchOffsetUpdates(I)V
    .registers 3
    .param p1, "offset"    # I

    .prologue
    .line 155
    iget-object v0, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->mBehavior:Lcom/buzzfeed/toolkit/ui/appbarlayout/DummyBehavior;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/toolkit/ui/appbarlayout/DummyBehavior;->setTopAndBottomOffset(I)Z

    .line 156
    iget-object v0, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->mAppBarLayout:Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayout;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayout;->notifyOnOffsetChanged(I)V

    .line 157
    return-void
.end method

.method public getTranslationOffset()I
    .registers 2

    .prologue
    .line 88
    iget v0, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->mCurrentTranslationOffset:I

    return v0
.end method

.method isAttached()Z
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->mIsAttached:Z

    return v0
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .registers 4
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 76
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 77
    if-eqz p3, :cond_8

    .line 78
    invoke-direct {p0, p3}, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->dispatchUpdateCurrentTranslation(I)V

    .line 80
    :cond_8
    return-void
.end method

.method public setTranslationOffset(I)V
    .registers 3
    .param p1, "offset"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->mCurrentTranslationOffset:I

    .line 84
    iget v0, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->mCurrentTranslationOffset:I

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayoutController;->dispatchOffsetUpdates(I)V

    .line 85
    return-void
.end method
