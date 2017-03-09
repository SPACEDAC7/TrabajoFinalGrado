.class public Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;
.super Ljava/lang/Object;
.source "ProgressiveLoadingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager$ProgressiveLoadingListener;
    }
.end annotation


# static fields
.field private static final ITEMS_FROM_BOTTOM:I = 0xf


# instance fields
.field private mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field private mIsLoading:Z

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mListener:Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager$ProgressiveLoadingListener;

.field private mNeedReload:Z


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/LinearLayoutManager;Landroid/support/v7/widget/RecyclerView$Adapter;Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager$ProgressiveLoadingListener;)V
    .registers 6
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "layoutManager"    # Landroid/support/v7/widget/LinearLayoutManager;
    .param p3, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;
    .param p4, "listener"    # Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager$ProgressiveLoadingListener;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;->mNeedReload:Z

    .line 18
    iput-object p2, p0, Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 19
    iput-object p4, p0, Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;->mListener:Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager$ProgressiveLoadingListener;

    .line 20
    iput-object p3, p0, Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 21
    new-instance v0, Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager$1;

    invoke-direct {v0, p0}, Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager$1;-><init>(Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;
    .param p1, "x1"    # I

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;->handleScroll(I)V

    return-void
.end method

.method private handleScroll(I)V
    .registers 6
    .param p1, "dy"    # I

    .prologue
    .line 31
    if-lez p1, :cond_20

    iget-boolean v2, p0, Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;->mIsLoading:Z

    if-nez v2, :cond_20

    .line 32
    iget-object v2, p0, Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 33
    .local v0, "lastItem":I
    iget-object v2, p0, Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    .line 35
    .local v1, "totalCount":I
    sub-int v2, v1, v0

    const/16 v3, 0xf

    if-ge v2, v3, :cond_20

    .line 36
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;->mIsLoading:Z

    .line 37
    iget-object v2, p0, Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;->mListener:Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager$ProgressiveLoadingListener;

    invoke-interface {v2}, Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager$ProgressiveLoadingListener;->loadMore()V

    .line 40
    .end local v0    # "lastItem":I
    .end local v1    # "totalCount":I
    :cond_20
    return-void
.end method


# virtual methods
.method public reloadNeeded()Z
    .registers 2

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;->mNeedReload:Z

    return v0
.end method

.method public resetLoading()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;->mIsLoading:Z

    .line 44
    iput-boolean v0, p0, Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;->mNeedReload:Z

    .line 45
    return-void
.end method

.method public setNeedReload()V
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;->mNeedReload:Z

    .line 49
    return-void
.end method
