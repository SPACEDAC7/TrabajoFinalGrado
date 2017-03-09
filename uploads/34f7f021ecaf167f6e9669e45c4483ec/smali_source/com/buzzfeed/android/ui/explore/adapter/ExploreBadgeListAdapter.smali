.class public Lcom/buzzfeed/android/ui/explore/adapter/ExploreBadgeListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ExploreBadgeListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/buzzfeed/android/ui/explore/holder/ExploreBadgeItemViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBadgeFeedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/android/data/Feed;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mUserActionListener:Lcom/buzzfeed/android/ui/explore/listener/ExploreUserActionListener;


# direct methods
.method constructor <init>(Landroid/view/LayoutInflater;Ljava/util/List;Lcom/buzzfeed/android/ui/explore/listener/ExploreUserActionListener;)V
    .registers 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "listener"    # Lcom/buzzfeed/android/ui/explore/listener/ExploreUserActionListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/android/data/Feed;",
            ">;",
            "Lcom/buzzfeed/android/ui/explore/listener/ExploreUserActionListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "badgeFeedList":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/android/data/Feed;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 31
    invoke-static {p1}, Lcom/buzzfeed/toolkit/util/EZUtil;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/buzzfeed/android/ui/explore/adapter/ExploreBadgeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 32
    invoke-static {p2}, Lcom/buzzfeed/toolkit/util/EZUtil;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/buzzfeed/android/ui/explore/adapter/ExploreBadgeListAdapter;->mBadgeFeedList:Ljava/util/List;

    .line 33
    invoke-static {p3}, Lcom/buzzfeed/toolkit/util/EZUtil;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/ui/explore/listener/ExploreUserActionListener;

    iput-object v0, p0, Lcom/buzzfeed/android/ui/explore/adapter/ExploreBadgeListAdapter;->mUserActionListener:Lcom/buzzfeed/android/ui/explore/listener/ExploreUserActionListener;

    .line 34
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/buzzfeed/android/ui/explore/adapter/ExploreBadgeListAdapter;->mBadgeFeedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .prologue
    .line 21
    check-cast p1, Lcom/buzzfeed/android/ui/explore/holder/ExploreBadgeItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/buzzfeed/android/ui/explore/adapter/ExploreBadgeListAdapter;->onBindViewHolder(Lcom/buzzfeed/android/ui/explore/holder/ExploreBadgeItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/buzzfeed/android/ui/explore/holder/ExploreBadgeItemViewHolder;I)V
    .registers 4
    .param p1, "holder"    # Lcom/buzzfeed/android/ui/explore/holder/ExploreBadgeItemViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/buzzfeed/android/ui/explore/adapter/ExploreBadgeListAdapter;->mUserActionListener:Lcom/buzzfeed/android/ui/explore/listener/ExploreUserActionListener;

    invoke-virtual {p1, v0}, Lcom/buzzfeed/android/ui/explore/holder/ExploreBadgeItemViewHolder;->setUserActionListener(Lcom/buzzfeed/android/ui/explore/listener/ExploreUserActionListener;)V

    .line 45
    iget-object v0, p0, Lcom/buzzfeed/android/ui/explore/adapter/ExploreBadgeListAdapter;->mBadgeFeedList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/data/Feed;

    invoke-virtual {p1, v0}, Lcom/buzzfeed/android/ui/explore/holder/ExploreBadgeItemViewHolder;->populateFrom(Lcom/buzzfeed/android/data/Feed;)V

    .line 46
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/buzzfeed/android/ui/explore/adapter/ExploreBadgeListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/buzzfeed/android/ui/explore/holder/ExploreBadgeItemViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/buzzfeed/android/ui/explore/holder/ExploreBadgeItemViewHolder;
    .registers 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 38
    iget-object v1, p0, Lcom/buzzfeed/android/ui/explore/adapter/ExploreBadgeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030069

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 39
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/buzzfeed/android/ui/explore/holder/ExploreBadgeItemViewHolder;

    invoke-direct {v1, v0}, Lcom/buzzfeed/android/ui/explore/holder/ExploreBadgeItemViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 2

    .prologue
    .line 21
    check-cast p1, Lcom/buzzfeed/android/ui/explore/holder/ExploreBadgeItemViewHolder;

    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/ui/explore/adapter/ExploreBadgeListAdapter;->onViewRecycled(Lcom/buzzfeed/android/ui/explore/holder/ExploreBadgeItemViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/buzzfeed/android/ui/explore/holder/ExploreBadgeItemViewHolder;)V
    .registers 3
    .param p1, "holder"    # Lcom/buzzfeed/android/ui/explore/holder/ExploreBadgeItemViewHolder;

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/buzzfeed/android/ui/explore/holder/ExploreBadgeItemViewHolder;->setUserActionListener(Lcom/buzzfeed/android/ui/explore/listener/ExploreUserActionListener;)V

    .line 52
    invoke-virtual {p1}, Lcom/buzzfeed/android/ui/explore/holder/ExploreBadgeItemViewHolder;->onViewHolderRecycled()V

    .line 53
    return-void
.end method
