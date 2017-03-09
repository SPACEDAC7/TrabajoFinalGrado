.class public Lcom/buzzfeed/buffet/ui/itemdecoration/ShowsItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "ShowsItemDecoration.java"


# instance fields
.field private mColumnCount:I

.field private mMargin:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "columnCount"    # I
    .param p2, "margin"    # I

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 12
    iput p1, p0, Lcom/buzzfeed/buffet/ui/itemdecoration/ShowsItemDecoration;->mColumnCount:I

    .line 13
    iput p2, p0, Lcom/buzzfeed/buffet/ui/itemdecoration/ShowsItemDecoration;->mMargin:I

    .line 14
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .registers 11
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 18
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 20
    iget v4, p0, Lcom/buzzfeed/buffet/ui/itemdecoration/ShowsItemDecoration;->mMargin:I

    div-int/lit8 v0, v4, 0x2

    .line 21
    .local v0, "halfMargin":I
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 22
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v2

    .line 23
    .local v2, "position":I
    invoke-virtual {p0, p3, v2}, Lcom/buzzfeed/buffet/ui/itemdecoration/ShowsItemDecoration;->getItemSpanIndex(Landroid/support/v7/widget/RecyclerView;I)I

    move-result v3

    .line 24
    .local v3, "spanIndex":I
    if-nez v3, :cond_35

    .line 26
    iget v4, p0, Lcom/buzzfeed/buffet/ui/itemdecoration/ShowsItemDecoration;->mMargin:I

    iput v4, p1, Landroid/graphics/Rect;->left:I

    .line 34
    :cond_18
    :goto_18
    iget v4, p0, Lcom/buzzfeed/buffet/ui/itemdecoration/ShowsItemDecoration;->mColumnCount:I

    if-ge v2, v4, :cond_20

    .line 35
    iget v4, p0, Lcom/buzzfeed/buffet/ui/itemdecoration/ShowsItemDecoration;->mMargin:I

    iput v4, p1, Landroid/graphics/Rect;->top:I

    .line 37
    :cond_20
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    iget v5, p0, Lcom/buzzfeed/buffet/ui/itemdecoration/ShowsItemDecoration;->mColumnCount:I

    sub-int/2addr v4, v5

    if-lt v2, v4, :cond_40

    const/4 v1, 0x1

    .line 38
    .local v1, "isLastRow":Z
    :goto_2e
    if-eqz v1, :cond_34

    .line 39
    iget v4, p0, Lcom/buzzfeed/buffet/ui/itemdecoration/ShowsItemDecoration;->mMargin:I

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 41
    :cond_34
    return-void

    .line 28
    .end local v1    # "isLastRow":Z
    :cond_35
    iget v4, p0, Lcom/buzzfeed/buffet/ui/itemdecoration/ShowsItemDecoration;->mColumnCount:I

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_18

    .line 30
    iget v4, p0, Lcom/buzzfeed/buffet/ui/itemdecoration/ShowsItemDecoration;->mMargin:I

    iput v4, p1, Landroid/graphics/Rect;->right:I

    goto :goto_18

    .line 37
    :cond_40
    const/4 v1, 0x0

    goto :goto_2e
.end method

.method protected getItemSpanIndex(Landroid/support/v7/widget/RecyclerView;I)I
    .registers 6
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "childIndex"    # I

    .prologue
    .line 44
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    .line 45
    .local v0, "layoutManager":Landroid/support/v7/widget/GridLayoutManager;
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanSizeLookup()Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v1

    iget v2, p0, Lcom/buzzfeed/buffet/ui/itemdecoration/ShowsItemDecoration;->mColumnCount:I

    invoke-virtual {v1, p2, v2}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result v1

    return v1
.end method
