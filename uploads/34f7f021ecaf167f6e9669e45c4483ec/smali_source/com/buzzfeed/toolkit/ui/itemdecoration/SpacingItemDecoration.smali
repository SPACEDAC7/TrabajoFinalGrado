.class public Lcom/buzzfeed/toolkit/ui/itemdecoration/SpacingItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SpacingItemDecoration.java"


# instance fields
.field private final mExtraTopPadding:I

.field private final mGutter:I

.field private final mIsSubscriptionEnabled:Z

.field private final mMargin:I


# direct methods
.method public constructor <init>(IIIZ)V
    .registers 5
    .param p1, "gutter"    # I
    .param p2, "margin"    # I
    .param p3, "extraTopPadding"    # I
    .param p4, "isSubscriptionEnabled"    # Z

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 18
    iput p1, p0, Lcom/buzzfeed/toolkit/ui/itemdecoration/SpacingItemDecoration;->mGutter:I

    .line 19
    iput p2, p0, Lcom/buzzfeed/toolkit/ui/itemdecoration/SpacingItemDecoration;->mMargin:I

    .line 20
    iput p3, p0, Lcom/buzzfeed/toolkit/ui/itemdecoration/SpacingItemDecoration;->mExtraTopPadding:I

    .line 21
    iput-boolean p4, p0, Lcom/buzzfeed/toolkit/ui/itemdecoration/SpacingItemDecoration;->mIsSubscriptionEnabled:Z

    .line 22
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .registers 8
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    const/4 v2, 0x0

    .line 27
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    .line 29
    .local v0, "position":I
    iget-boolean v1, p0, Lcom/buzzfeed/toolkit/ui/itemdecoration/SpacingItemDecoration;->mIsSubscriptionEnabled:Z

    if-eqz v1, :cond_30

    move v1, v2

    :goto_a
    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 30
    iget-boolean v1, p0, Lcom/buzzfeed/toolkit/ui/itemdecoration/SpacingItemDecoration;->mIsSubscriptionEnabled:Z

    if-eqz v1, :cond_33

    move v1, v2

    :goto_11
    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 31
    iget v1, p0, Lcom/buzzfeed/toolkit/ui/itemdecoration/SpacingItemDecoration;->mGutter:I

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 33
    if-nez v0, :cond_39

    .line 34
    iget v1, p0, Lcom/buzzfeed/toolkit/ui/itemdecoration/SpacingItemDecoration;->mExtraTopPadding:I

    if-lez v1, :cond_36

    iget v1, p0, Lcom/buzzfeed/toolkit/ui/itemdecoration/SpacingItemDecoration;->mGutter:I

    iget v2, p0, Lcom/buzzfeed/toolkit/ui/itemdecoration/SpacingItemDecoration;->mExtraTopPadding:I

    add-int/2addr v1, v2

    :goto_22
    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 35
    iget-boolean v1, p0, Lcom/buzzfeed/toolkit/ui/itemdecoration/SpacingItemDecoration;->mIsSubscriptionEnabled:Z

    if-eqz v1, :cond_2f

    .line 36
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/buzzfeed/toolkit/ui/itemdecoration/SpacingItemDecoration;->mGutter:I

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 41
    :cond_2f
    :goto_2f
    return-void

    .line 29
    :cond_30
    iget v1, p0, Lcom/buzzfeed/toolkit/ui/itemdecoration/SpacingItemDecoration;->mMargin:I

    goto :goto_a

    .line 30
    :cond_33
    iget v1, p0, Lcom/buzzfeed/toolkit/ui/itemdecoration/SpacingItemDecoration;->mMargin:I

    goto :goto_11

    .line 34
    :cond_36
    iget v1, p0, Lcom/buzzfeed/toolkit/ui/itemdecoration/SpacingItemDecoration;->mGutter:I

    goto :goto_22

    .line 39
    :cond_39
    iput v2, p1, Landroid/graphics/Rect;->top:I

    goto :goto_2f
.end method
