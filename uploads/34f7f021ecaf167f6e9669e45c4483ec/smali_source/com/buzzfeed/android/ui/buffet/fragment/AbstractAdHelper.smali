.class public abstract Lcom/buzzfeed/android/ui/buffet/fragment/AbstractAdHelper;
.super Ljava/lang/Object;
.source "AbstractAdHelper.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;


# instance fields
.field private mAdReadyMap:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .registers 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/AbstractAdHelper;->mAdReadyMap:Ljava/util/HashSet;

    .line 24
    invoke-static {p1}, Lcom/buzzfeed/toolkit/util/EZUtil;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iput-object p1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/AbstractAdHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 26
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/AbstractAdHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 27
    return-void
.end method

.method private loadAdForViewIfNeeded(Landroid/view/View;)V
    .registers 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 67
    iget-object v3, p0, Lcom/buzzfeed/android/ui/buffet/fragment/AbstractAdHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 68
    .local v2, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    instance-of v3, v2, Lcom/buzzfeed/buffet/ui/holder/BaseCard;

    if-eqz v3, :cond_32

    .line 69
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .local v0, "adapterPos":I
    move-object v1, v2

    .line 70
    check-cast v1, Lcom/buzzfeed/buffet/ui/holder/BaseCard;

    .line 74
    .local v1, "card":Lcom/buzzfeed/buffet/ui/holder/BaseCard;
    const/4 v3, -0x1

    if-eq v0, v3, :cond_32

    .line 75
    invoke-virtual {v1}, Lcom/buzzfeed/buffet/ui/holder/BaseCard;->isAd()Z

    move-result v3

    if-eqz v3, :cond_32

    iget-object v3, p0, Lcom/buzzfeed/android/ui/buffet/fragment/AbstractAdHelper;->mAdReadyMap:Ljava/util/HashSet;

    .line 76
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    .line 77
    iget-object v3, p0, Lcom/buzzfeed/android/ui/buffet/fragment/AbstractAdHelper;->mAdReadyMap:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/ui/buffet/fragment/AbstractAdHelper;->loadAdForViewHolder(Lcom/buzzfeed/buffet/ui/holder/BaseCard;)V

    .line 81
    .end local v0    # "adapterPos":I
    .end local v1    # "card":Lcom/buzzfeed/buffet/ui/holder/BaseCard;
    :cond_32
    return-void
.end method

.method private refreshCurrentAttachedAdCells()V
    .registers 6

    .prologue
    .line 58
    iget-object v4, p0, Lcom/buzzfeed/android/ui/buffet/fragment/AbstractAdHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v3

    .line 59
    .local v3, "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    .line 60
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_17

    .line 61
    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 62
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/buzzfeed/android/ui/buffet/fragment/AbstractAdHelper;->loadAdForViewIfNeeded(Landroid/view/View;)V

    .line 60
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 64
    .end local v0    # "child":Landroid/view/View;
    :cond_17
    return-void
.end method


# virtual methods
.method public abstract loadAdForViewHolder(Lcom/buzzfeed/buffet/ui/holder/BaseCard;)V
.end method

.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/ui/buffet/fragment/AbstractAdHelper;->loadAdForViewIfNeeded(Landroid/view/View;)V

    .line 32
    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 37
    return-void
.end method

.method public refreshAds()V
    .registers 2

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/AbstractAdHelper;->reset()V

    .line 44
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/AbstractAdHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 45
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/AbstractAdHelper;->refreshCurrentAttachedAdCells()V

    .line 47
    :cond_e
    return-void
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/AbstractAdHelper;->mAdReadyMap:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 55
    return-void
.end method
