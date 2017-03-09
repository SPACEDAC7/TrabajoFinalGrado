.class public Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "SpicyRecyclerView.java"

# interfaces
.implements Lcom/buzzfeed/spicerack/ui/view/SpicyWebView$SpicyWebViewScrollListener;


# instance fields
.field private mAttachedListener:Z

.field private mFallbackView:Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

.field private mFlingDistance:I

.field private mHeaderViewHolder:Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;

.field private requiredFlingY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->requiredFlingY:I

    .line 26
    invoke-direct {p0}, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->init()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->requiredFlingY:I

    .line 31
    invoke-direct {p0}, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->init()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->requiredFlingY:I

    .line 36
    invoke-direct {p0}, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->init()V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;)Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->mFallbackView:Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;)I
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->getFallbackTop()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;)Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->getFallback()Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;)I
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;

    .prologue
    .line 16
    iget v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->requiredFlingY:I

    return v0
.end method

.method static synthetic access$400(Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;)I
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;

    .prologue
    .line 16
    iget v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->mFlingDistance:I

    return v0
.end method

.method static synthetic access$402(Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;
    .param p1, "x1"    # I

    .prologue
    .line 16
    iput p1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->mFlingDistance:I

    return p1
.end method

.method private getFallback()Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;
    .registers 3

    .prologue
    .line 78
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->mFallbackView:Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    if-eqz v1, :cond_7

    .line 79
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->mFallbackView:Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    .line 88
    :goto_6
    return-object v1

    .line 82
    :cond_7
    invoke-virtual {p0}, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/spicerack/ui/view/SpicyLayoutManager;

    .line 83
    .local v0, "manager":Lcom/buzzfeed/spicerack/ui/view/SpicyLayoutManager;
    invoke-virtual {v0}, Lcom/buzzfeed/spicerack/ui/view/SpicyLayoutManager;->getFallbackViewTop()Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    move-result-object v1

    iput-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->mFallbackView:Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    .line 84
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->mFallbackView:Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    if-eqz v1, :cond_1c

    .line 85
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->mFallbackView:Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    invoke-virtual {v1, p0}, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->setSpicyScrollListener(Lcom/buzzfeed/spicerack/ui/view/SpicyWebView$SpicyWebViewScrollListener;)V

    .line 88
    :cond_1c
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->mFallbackView:Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    goto :goto_6
.end method

.method private getFallbackTop()I
    .registers 3

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->getFallback()Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    move-result-object v0

    .line 93
    .local v0, "fallback":Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;
    if-eqz v0, :cond_b

    .line 94
    invoke-virtual {v0}, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->getTop()I

    move-result v1

    .line 97
    :goto_a
    return v1

    :cond_b
    const v1, 0x7fffffff

    goto :goto_a
.end method

.method private init()V
    .registers 3

    .prologue
    .line 40
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->setOverScrollMode(I)V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->mAttachedListener:Z

    .line 42
    invoke-static {}, Lcom/buzzfeed/toolkit/util/VersionUtil;->hasLollipop()Z

    move-result v0

    if-nez v0, :cond_20

    .line 44
    invoke-virtual {p0}, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->getActionBarHeight(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/buzzfeed/toolkit/util/UIUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->requiredFlingY:I

    .line 46
    :cond_20
    return-void
.end method

.method private onFling(I)Z
    .registers 6
    .param p1, "velocityY"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 119
    div-int/lit8 v3, p1, 0x2

    iput v3, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->mFlingDistance:I

    .line 121
    invoke-direct {p0}, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->getFallbackTop()I

    move-result v0

    .line 122
    .local v0, "fallbackTop":I
    if-lez v0, :cond_d

    .line 144
    :cond_c
    :goto_c
    return v1

    .line 128
    :cond_d
    iget v3, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->mFlingDistance:I

    if-lez v3, :cond_18

    .line 130
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->mFallbackView:Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    invoke-virtual {v1, v2, p1}, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->flingScroll(II)V

    move v1, v2

    .line 131
    goto :goto_c

    .line 134
    :cond_18
    iget-object v3, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->mFallbackView:Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    invoke-virtual {v3}, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->getScrollY()I

    move-result v3

    if-lez v3, :cond_c

    .line 137
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->mFallbackView:Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    invoke-virtual {v1}, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->getScrollY()I

    move-result v1

    iget v3, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->mFlingDistance:I

    add-int/2addr v1, v3

    if-gez v1, :cond_38

    .line 140
    invoke-direct {p0}, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->getFallback()Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->getScrollY()I

    move-result v1

    iget v3, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->mFlingDistance:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->mFlingDistance:I

    .line 143
    :cond_38
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->mFallbackView:Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    invoke-virtual {v1, v2, p1}, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->flingScroll(II)V

    move v1, v2

    .line 144
    goto :goto_c
.end method


# virtual methods
.method public attachScrollListener()V
    .registers 2

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->mAttachedListener:Z

    if-nez v0, :cond_f

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->mAttachedListener:Z

    .line 51
    new-instance v0, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView$1;

    invoke-direct {v0, p0}, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView$1;-><init>(Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 75
    :cond_f
    return-void
.end method

.method public fling(II)Z
    .registers 5
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->getFallback()Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    move-result-object v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->mFallbackView:Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    if-nez v1, :cond_f

    .line 104
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->fling(II)Z

    move-result v1

    .line 112
    :goto_e
    return v1

    .line 107
    :cond_f
    invoke-direct {p0, p2}, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->onFling(I)Z

    move-result v0

    .line 108
    .local v0, "shouldFling":Z
    if-eqz v0, :cond_1a

    .line 109
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->fling(II)Z

    move-result v1

    goto :goto_e

    .line 112
    :cond_1a
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public getHeaderViewHolder()Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->mHeaderViewHolder:Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;

    if-nez v0, :cond_d

    .line 179
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->getViewHolder(I)Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;

    iput-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->mHeaderViewHolder:Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;

    .line 182
    :cond_d
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->mHeaderViewHolder:Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;

    return-object v0
.end method

.method public getLoadingViewHolder()Lcom/buzzfeed/spicerack/ui/holder/LoadingSpiceViewHolder;
    .registers 2

    .prologue
    .line 186
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->getViewHolder(I)Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/spicerack/ui/holder/LoadingSpiceViewHolder;

    return-object v0
.end method

.method public getViewHolder(I)Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;
    .registers 4
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 168
    invoke-virtual {p0}, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 169
    .local v0, "headerView":Landroid/view/View;
    if-eqz v0, :cond_1d

    invoke-virtual {p0, v0}, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 170
    invoke-virtual {p0, v0}, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;

    .line 174
    .end local v0    # "headerView":Landroid/view/View;
    :goto_1c
    return-object v1

    :cond_1d
    const/4 v1, 0x0

    goto :goto_1c
.end method

.method public onWebViewScrolled(I)V
    .registers 4
    .param p1, "scrollY"    # I

    .prologue
    const/4 v1, 0x0

    .line 159
    if-nez p1, :cond_e

    iget v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->mFlingDistance:I

    if-gez v0, :cond_e

    .line 160
    iget v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->mFlingDistance:I

    invoke-virtual {p0, v1, v0}, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->fling(II)Z

    .line 161
    iput v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->mFlingDistance:I

    .line 163
    :cond_e
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 153
    instance-of v0, p2, Landroid/webkit/WebView;

    if-eqz v0, :cond_5

    .line 155
    :goto_4
    return-void

    .line 154
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    goto :goto_4
.end method
