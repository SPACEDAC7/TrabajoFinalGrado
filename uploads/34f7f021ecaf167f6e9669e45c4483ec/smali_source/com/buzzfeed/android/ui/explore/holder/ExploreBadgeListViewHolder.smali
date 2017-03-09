.class public Lcom/buzzfeed/android/ui/explore/holder/ExploreBadgeListViewHolder;
.super Lcom/buzzfeed/android/ui/explore/holder/ExploreItemViewHolder;
.source "ExploreBadgeListViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/buzzfeed/android/ui/explore/holder/ExploreItemViewHolder",
        "<",
        "Lcom/buzzfeed/android/ui/explore/adapter/ExploreBadgeListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBadgeListRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 4
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/ui/explore/holder/ExploreItemViewHolder;-><init>(Landroid/view/View;)V

    .line 21
    const v0, 0x7f110158

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/buzzfeed/android/ui/explore/holder/ExploreBadgeListViewHolder;->mBadgeListRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 22
    iget-object v0, p0, Lcom/buzzfeed/android/ui/explore/holder/ExploreBadgeListViewHolder;->mBadgeListRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 23
    return-void
.end method


# virtual methods
.method public onViewHolderRecycled()V
    .registers 3

    .prologue
    .line 32
    iget-object v0, p0, Lcom/buzzfeed/android/ui/explore/holder/ExploreBadgeListViewHolder;->mBadgeListRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 33
    return-void
.end method

.method public populateFrom(Lcom/buzzfeed/android/ui/explore/adapter/ExploreBadgeListAdapter;)V
    .registers 3
    .param p1, "adapter"    # Lcom/buzzfeed/android/ui/explore/adapter/ExploreBadgeListAdapter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 27
    iget-object v0, p0, Lcom/buzzfeed/android/ui/explore/holder/ExploreBadgeListViewHolder;->mBadgeListRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 28
    return-void
.end method

.method public bridge synthetic populateFrom(Ljava/lang/Object;)V
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 15
    check-cast p1, Lcom/buzzfeed/android/ui/explore/adapter/ExploreBadgeListAdapter;

    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/ui/explore/holder/ExploreBadgeListViewHolder;->populateFrom(Lcom/buzzfeed/android/ui/explore/adapter/ExploreBadgeListAdapter;)V

    return-void
.end method
