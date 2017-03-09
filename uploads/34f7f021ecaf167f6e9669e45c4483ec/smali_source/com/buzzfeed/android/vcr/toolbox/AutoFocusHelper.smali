.class Lcom/buzzfeed/android/vcr/toolbox/AutoFocusHelper;
.super Ljava/lang/Object;
.source "AutoFocusHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/android/vcr/toolbox/AutoFocusHelper$ViewInfo;
    }
.end annotation


# instance fields
.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .registers 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "RecyclerView cant be null"

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/EZUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 20
    return-void
.end method

.method private findViewHolder(IIFZLcom/buzzfeed/android/vcr/toolbox/AutoFocusController$AutoFocusStrategy;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 24
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "targetRatio"    # F
    .param p4, "centered"    # Z
    .param p5, "strategy"    # Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$AutoFocusStrategy;

    .prologue
    .line 32
    new-instance v15, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusHelper$ViewInfo;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusHelper$ViewInfo;-><init>(Lcom/buzzfeed/android/vcr/toolbox/AutoFocusHelper;Lcom/buzzfeed/android/vcr/toolbox/AutoFocusHelper$1;)V

    .line 33
    .local v15, "viewInfo":Lcom/buzzfeed/android/vcr/toolbox/AutoFocusHelper$ViewInfo;
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 34
    .local v13, "recyclerViewRect":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 36
    .local v6, "childRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/support/v7/widget/RecyclerView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 37
    iget v0, v13, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    iget v0, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    div-int/lit8 v2, v16, 0x2

    .line 38
    .local v2, "centerY":I
    iget v14, v13, Landroid/graphics/Rect;->top:I

    .line 39
    .local v14, "start":I
    iget v8, v13, Landroid/graphics/Rect;->bottom:I

    .line 40
    .local v8, "end":I
    move/from16 v0, p2

    move/from16 v1, p1

    if-le v0, v1, :cond_53

    const/4 v11, 0x1

    .line 41
    .local v11, "next":I
    :goto_37
    add-int p2, p2, v11

    .line 42
    move/from16 v10, p1

    .local v10, "i":I
    :goto_3b
    move/from16 v0, p2

    if-eq v10, v0, :cond_d9

    .line 43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 44
    .local v3, "child":Landroid/view/View;
    if-nez v3, :cond_55

    .line 42
    :cond_51
    :goto_51
    add-int/2addr v10, v11

    goto :goto_3b

    .line 40
    .end local v3    # "child":Landroid/view/View;
    .end local v10    # "i":I
    .end local v11    # "next":I
    :cond_53
    const/4 v11, -0x1

    goto :goto_37

    .line 49
    .restart local v3    # "child":Landroid/view/View;
    .restart local v10    # "i":I
    .restart local v11    # "next":I
    :cond_55
    if-eqz p5, :cond_6b

    .line 50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v9

    .line 51
    .local v9, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    move-object/from16 v0, p5

    invoke-interface {v0, v9}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$AutoFocusStrategy;->isFocusable(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v16

    if-eqz v16, :cond_51

    .line 56
    .end local v9    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_6b
    invoke-virtual {v3, v6}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 57
    iget v7, v6, Landroid/graphics/Rect;->top:I

    .line 58
    .local v7, "childStart":I
    iget v5, v6, Landroid/graphics/Rect;->bottom:I

    .line 60
    .local v5, "childEnd":I
    if-ge v7, v8, :cond_51

    if-le v5, v14, :cond_51

    .line 61
    if-eqz p4, :cond_c2

    .line 62
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v16

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v17

    div-int/lit8 v17, v17, 0x2

    add-int v4, v16, v17

    .line 63
    .local v4, "childCenterY":I
    if-lez v11, :cond_95

    .line 64
    if-le v4, v2, :cond_a4

    .line 65
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v16

    .line 94
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childCenterY":I
    .end local v5    # "childEnd":I
    .end local v7    # "childStart":I
    :goto_94
    return-object v16

    .line 67
    .restart local v3    # "child":Landroid/view/View;
    .restart local v4    # "childCenterY":I
    .restart local v5    # "childEnd":I
    .restart local v7    # "childStart":I
    :cond_95
    if-gt v4, v2, :cond_a4

    .line 68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v16

    goto :goto_94

    .line 71
    :cond_a4
    sub-int v16, v4, v2

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 72
    .local v12, "offset":I
    iget-object v0, v15, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusHelper$ViewInfo;->view:Landroid/view/View;

    move-object/from16 v16, v0

    if-nez v16, :cond_b5

    .line 73
    iput-object v3, v15, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusHelper$ViewInfo;->view:Landroid/view/View;

    .line 74
    iput v12, v15, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusHelper$ViewInfo;->offset:I

    goto :goto_51

    .line 76
    :cond_b5
    iget v0, v15, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusHelper$ViewInfo;->offset:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v12, v0, :cond_51

    .line 77
    iput v12, v15, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusHelper$ViewInfo;->offset:I

    .line 78
    iput-object v3, v15, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusHelper$ViewInfo;->view:Landroid/view/View;

    goto :goto_51

    .line 83
    .end local v4    # "childCenterY":I
    .end local v12    # "offset":I
    :cond_c2
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v3, v1}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusHelper;->isViewWithinVisibleRatio(Landroid/view/View;F)Z

    move-result v16

    if-eqz v16, :cond_51

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v16

    goto :goto_94

    .line 90
    .end local v3    # "child":Landroid/view/View;
    .end local v5    # "childEnd":I
    .end local v7    # "childStart":I
    :cond_d9
    if-eqz p4, :cond_f0

    iget-object v0, v15, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusHelper$ViewInfo;->view:Landroid/view/View;

    move-object/from16 v16, v0

    if-eqz v16, :cond_f0

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v16, v0

    iget-object v0, v15, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusHelper$ViewInfo;->view:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v16

    goto :goto_94

    .line 94
    :cond_f0
    const/16 v16, 0x0

    goto :goto_94
.end method

.method private isViewWithinVisibleRatio(Landroid/view/View;F)Z
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "targetRatio"    # F

    .prologue
    .line 98
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 99
    .local v0, "childRect":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 100
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 101
    .local v1, "ratio":F
    cmpl-float v2, v1, p2

    if-ltz v2, :cond_1e

    const/4 v2, 0x1

    .line 104
    .end local v1    # "ratio":F
    :goto_1d
    return v2

    :cond_1e
    const/4 v2, 0x0

    goto :goto_1d
.end method


# virtual methods
.method public findMostCenteredViewHolder(IILcom/buzzfeed/android/vcr/toolbox/AutoFocusController$AutoFocusStrategy;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 10
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "strategy"    # Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$AutoFocusStrategy;

    .prologue
    .line 23
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusHelper;->findViewHolder(IIFZLcom/buzzfeed/android/vcr/toolbox/AutoFocusController$AutoFocusStrategy;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public findViewHolderWithVisibilityRatio(IIFLcom/buzzfeed/android/vcr/toolbox/AutoFocusController$AutoFocusStrategy;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 11
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "targetRatio"    # F
    .param p4, "strategy"    # Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$AutoFocusStrategy;

    .prologue
    .line 27
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusHelper;->findViewHolder(IIFZLcom/buzzfeed/android/vcr/toolbox/AutoFocusController$AutoFocusStrategy;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public isViewCandidateForRemoval(Landroid/view/View;I)Z
    .registers 10
    .param p1, "child"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 118
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v6}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v6

    if-nez v6, :cond_f

    if-nez p2, :cond_11

    :cond_f
    move v4, v5

    .line 127
    :cond_10
    :goto_10
    return v4

    .line 120
    :cond_11
    if-gtz p2, :cond_27

    .line 121
    iget-object v6, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v0

    .line 122
    .local v0, "childEnd":I
    iget-object v6, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->getTop()I

    move-result v3

    .line 123
    .local v3, "start":I
    if-lt v0, v3, :cond_10

    move v4, v5

    goto :goto_10

    .line 125
    .end local v0    # "childEnd":I
    .end local v3    # "start":I
    :cond_27
    iget-object v6, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v1

    .line 126
    .local v1, "childStart":I
    iget-object v6, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->getBottom()I

    move-result v2

    .line 127
    .local v2, "end":I
    if-gt v1, v2, :cond_10

    move v4, v5

    goto :goto_10
.end method
