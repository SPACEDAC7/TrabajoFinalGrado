.class public Lcom/buzzfeed/spicerack/ui/view/SpicyLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "SpicyLayoutManager.java"


# instance fields
.field private mScrollEnabled:Z

.field private mSpicyWebView:Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyLayoutManager;->mScrollEnabled:Z

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orientation"    # I
    .param p3, "reverseLayout"    # Z

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyLayoutManager;->mScrollEnabled:Z

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyLayoutManager;->mScrollEnabled:Z

    .line 25
    return-void
.end method

.method private setSpicyWebView()V
    .registers 4

    .prologue
    .line 67
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/buzzfeed/spicerack/ui/view/SpicyLayoutManager;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_16

    .line 68
    invoke-virtual {p0, v0}, Lcom/buzzfeed/spicerack/ui/view/SpicyLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 69
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    if-eqz v2, :cond_13

    .line 70
    check-cast v1, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    .end local v1    # "view":Landroid/view/View;
    iput-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyLayoutManager;->mSpicyWebView:Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    .line 67
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 73
    :cond_16
    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .registers 2

    .prologue
    .line 85
    invoke-super {p0}, Landroid/support/v7/widget/LinearLayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyLayoutManager;->mScrollEnabled:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getFallbackViewTop()Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyLayoutManager;->mSpicyWebView:Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    if-eqz v0, :cond_7

    .line 77
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyLayoutManager;->mSpicyWebView:Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    .line 80
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .registers 7
    .param p1, "dy"    # I
    .param p2, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    const/4 v2, 0x0

    .line 33
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyLayoutManager;->mSpicyWebView:Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    if-nez v1, :cond_8

    .line 34
    invoke-direct {p0}, Lcom/buzzfeed/spicerack/ui/view/SpicyLayoutManager;->setSpicyWebView()V

    .line 37
    :cond_8
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyLayoutManager;->mSpicyWebView:Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    if-eqz v1, :cond_14

    .line 38
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyLayoutManager;->mSpicyWebView:Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    invoke-virtual {v1}, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->getTop()I

    move-result v0

    .line 39
    .local v0, "fallbackTop":I
    if-lez v0, :cond_19

    .line 63
    .end local v0    # "fallbackTop":I
    :cond_14
    :goto_14
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v1

    return v1

    .line 45
    .restart local v0    # "fallbackTop":I
    :cond_19
    if-lez p1, :cond_21

    .line 47
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyLayoutManager;->mSpicyWebView:Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    invoke-virtual {v1, v2, p1}, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->scrollBy(II)V

    goto :goto_14

    .line 52
    :cond_21
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyLayoutManager;->mSpicyWebView:Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    invoke-virtual {v1}, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->getScrollY()I

    move-result v1

    if-lez v1, :cond_14

    .line 56
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyLayoutManager;->mSpicyWebView:Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    invoke-virtual {v1, v2, p1}, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->scrollBy(II)V

    .line 57
    const/4 p1, 0x0

    goto :goto_14
.end method

.method public setScrollEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyLayoutManager;->mScrollEnabled:Z

    .line 29
    return-void
.end method
