.class public Lcom/buzzfeed/buffet/ui/itemdecoration/BuffetItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "BuffetItemDecoration.java"


# instance fields
.field private final mGutter:I

.field private final mMargin:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "gutter"    # I
    .param p2, "margin"    # I

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 14
    iput p1, p0, Lcom/buzzfeed/buffet/ui/itemdecoration/BuffetItemDecoration;->mGutter:I

    .line 15
    iput p2, p0, Lcom/buzzfeed/buffet/ui/itemdecoration/BuffetItemDecoration;->mMargin:I

    .line 16
    return-void
.end method

.method private isHalfSizeCard(Landroid/support/v7/widget/RecyclerView;I)Z
    .registers 5
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "position"    # I

    .prologue
    const/4 v0, 0x1

    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/buzzfeed/buffet/ui/itemdecoration/BuffetItemDecoration;->getItemSpanSize(Landroid/support/v7/widget/RecyclerView;I)I

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .registers 14
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 21
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 22
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    .line 23
    .local v0, "position":I
    invoke-virtual {p0, p3, v0}, Lcom/buzzfeed/buffet/ui/itemdecoration/BuffetItemDecoration;->getItemSpanSize(Landroid/support/v7/widget/RecyclerView;I)I

    move-result v2

    .line 24
    .local v2, "spanSize":I
    invoke-virtual {p0, p3, v0}, Lcom/buzzfeed/buffet/ui/itemdecoration/BuffetItemDecoration;->getItemSpanIndex(Landroid/support/v7/widget/RecyclerView;I)I

    move-result v1

    .line 27
    .local v1, "spanIndex":I
    iget v3, p0, Lcom/buzzfeed/buffet/ui/itemdecoration/BuffetItemDecoration;->mMargin:I

    iget v4, p0, Lcom/buzzfeed/buffet/ui/itemdecoration/BuffetItemDecoration;->mGutter:I

    iget v5, p0, Lcom/buzzfeed/buffet/ui/itemdecoration/BuffetItemDecoration;->mMargin:I

    iget v6, p0, Lcom/buzzfeed/buffet/ui/itemdecoration/BuffetItemDecoration;->mGutter:I

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 28
    if-ne v2, v7, :cond_50

    .line 29
    if-ne v1, v7, :cond_45

    .line 31
    iget v3, p0, Lcom/buzzfeed/buffet/ui/itemdecoration/BuffetItemDecoration;->mMargin:I

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 32
    iget v3, p0, Lcom/buzzfeed/buffet/ui/itemdecoration/BuffetItemDecoration;->mGutter:I

    div-int/lit8 v3, v3, 0x2

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 48
    :goto_2a
    iput v8, p1, Landroid/graphics/Rect;->top:I

    .line 49
    if-nez v0, :cond_32

    .line 51
    iget v3, p0, Lcom/buzzfeed/buffet/ui/itemdecoration/BuffetItemDecoration;->mGutter:I

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 53
    :cond_32
    if-ne v0, v7, :cond_44

    .line 55
    invoke-direct {p0, p3, v8}, Lcom/buzzfeed/buffet/ui/itemdecoration/BuffetItemDecoration;->isHalfSizeCard(Landroid/support/v7/widget/RecyclerView;I)Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-direct {p0, p3, v7}, Lcom/buzzfeed/buffet/ui/itemdecoration/BuffetItemDecoration;->isHalfSizeCard(Landroid/support/v7/widget/RecyclerView;I)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 56
    iget v3, p0, Lcom/buzzfeed/buffet/ui/itemdecoration/BuffetItemDecoration;->mGutter:I

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 59
    :cond_44
    return-void

    .line 35
    :cond_45
    iget v3, p0, Lcom/buzzfeed/buffet/ui/itemdecoration/BuffetItemDecoration;->mGutter:I

    div-int/lit8 v3, v3, 0x2

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 36
    iget v3, p0, Lcom/buzzfeed/buffet/ui/itemdecoration/BuffetItemDecoration;->mMargin:I

    iput v3, p1, Landroid/graphics/Rect;->left:I

    goto :goto_2a

    .line 40
    :cond_50
    if-nez v0, :cond_57

    .line 41
    iget v3, p0, Lcom/buzzfeed/buffet/ui/itemdecoration/BuffetItemDecoration;->mGutter:I

    iput v3, p1, Landroid/graphics/Rect;->top:I

    goto :goto_2a

    .line 43
    :cond_57
    iput v8, p1, Landroid/graphics/Rect;->top:I

    goto :goto_2a
.end method

.method protected getItemSpanIndex(Landroid/support/v7/widget/RecyclerView;I)I
    .registers 6
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "childIndex"    # I

    .prologue
    .line 71
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    .line 72
    .local v0, "layoutManager":Landroid/support/v7/widget/GridLayoutManager;
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanSizeLookup()Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, p2, v2}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result v1

    return v1
.end method

.method protected getItemSpanSize(Landroid/support/v7/widget/RecyclerView;I)I
    .registers 5
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "childIndex"    # I

    .prologue
    .line 66
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    .line 67
    .local v0, "layoutManager":Landroid/support/v7/widget/GridLayoutManager;
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanSizeLookup()Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v1

    return v1
.end method
