.class public Lcom/buzzfeed/android/ui/explore/adapter/ExploreAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ExploreAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/buzzfeed/android/ui/explore/holder/ExploreItemViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final NUM_OF_HEADER_ITEMS:I = 0x1

.field private static final TYPE_EXPLORE_BADGE_LIST:I = 0x2

.field private static final TYPE_EXPLORE_BASIC:I = 0x1


# instance fields
.field private mBadgeListAdapter:Lcom/buzzfeed/android/ui/explore/adapter/ExploreBadgeListAdapter;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mOrderedBadgeFeedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/android/data/Feed;",
            ">;"
        }
    .end annotation
.end field

.field private final mOrderedBasicFeedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/android/data/Feed;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserActionListener:Lcom/buzzfeed/android/ui/explore/listener/ExploreUserActionListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Lcom/buzzfeed/android/ui/explore/listener/ExploreUserActionListener;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
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
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/android/data/Feed;",
            ">;",
            "Lcom/buzzfeed/android/ui/explore/listener/ExploreUserActionListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    .local p2, "feedList":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/android/data/Feed;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/android/ui/explore/adapter/ExploreAdapter;->mOrderedBasicFeedList:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/android/ui/explore/adapter/ExploreAdapter;->mOrderedBadgeFeedList:Ljava/util/List;

    .line 46
    invoke-static {p1}, Lcom/buzzfeed/toolkit/util/EZUtil;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/ui/explore/adapter/ExploreAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 47
    invoke-static {p3}, Lcom/buzzfeed/toolkit/util/EZUtil;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/ui/explore/listener/ExploreUserActionListener;

    iput-object v0, p0, Lcom/buzzfeed/android/ui/explore/adapter/ExploreAdapter;->mUserActionListener:Lcom/buzzfeed/android/ui/explore/listener/ExploreUserActionListener;

    .line 48
    invoke-direct {p0, p2}, Lcom/buzzfeed/android/ui/explore/adapter/ExploreAdapter;->processContent(Ljava/util/List;)V

    .line 49
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/explore/adapter/ExploreAdapter;->setupBadgeAdapter()V

    .line 50
    return-void
.end method

.method private hasBadgeList()Z
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/buzzfeed/android/ui/explore/adapter/ExploreAdapter;->mOrderedBadgeFeedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private processContent(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/android/data/Feed;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "feedList":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/android/data/Feed;>;"
    iget-object v2, p0, Lcom/buzzfeed/android/ui/explore/adapter/ExploreAdapter;->mOrderedBasicFeedList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 113
    iget-object v2, p0, Lcom/buzzfeed/android/ui/explore/adapter/ExploreAdapter;->mOrderedBadgeFeedList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 117
    .local v0, "collectionToSort":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/android/data/Feed;>;"
    new-instance v2, Lcom/buzzfeed/android/ui/explore/adapter/ExploreAdapter$1;

    invoke-direct {v2, p0}, Lcom/buzzfeed/android/ui/explore/adapter/ExploreAdapter$1;-><init>(Lcom/buzzfeed/android/ui/explore/adapter/ExploreAdapter;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 130
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/android/data/Feed;

    .line 131
    .local v1, "feed":Lcom/buzzfeed/android/data/Feed;
    invoke-virtual {v1}, Lcom/buzzfeed/android/data/Feed;->isBadge()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 132
    iget-object v3, p0, Lcom/buzzfeed/android/ui/explore/adapter/ExploreAdapter;->mOrderedBadgeFeedList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 134
    :cond_33
    iget-object v3, p0, Lcom/buzzfeed/android/ui/explore/adapter/ExploreAdapter;->mOrderedBasicFeedList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 137
    .end local v1    # "feed":Lcom/buzzfeed/android/data/Feed;
    :cond_39
    return-void
.end method

.method private setupBadgeAdapter()V
    .registers 5

    .prologue
    .line 143
    new-instance v0, Lcom/buzzfeed/android/ui/explore/adapter/ExploreBadgeListAdapter;

    iget-object v1, p0, Lcom/buzzfeed/android/ui/explore/adapter/ExploreAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/buzzfeed/android/ui/explore/adapter/ExploreAdapter;->mOrderedBadgeFeedList:Ljava/util/List;

    iget-object v3, p0, Lcom/buzzfeed/android/ui/explore/adapter/ExploreAdapter;->mUserActionListener:Lcom/buzzfeed/android/ui/explore/listener/ExploreUserActionListener;

    invoke-direct {v0, v1, v2, v3}, Lcom/buzzfeed/android/ui/explore/adapter/ExploreBadgeListAdapter;-><init>(Landroid/view/LayoutInflater;Ljava/util/List;Lcom/buzzfeed/android/ui/explore/listener/ExploreUserActionListener;)V

    iput-object v0, p0, Lcom/buzzfeed/android/ui/explore/adapter/ExploreAdapter;->mBadgeListAdapter:Lcom/buzzfeed/android/ui/explore/adapter/ExploreBadgeListAdapter;

    .line 144
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/buzzfeed/android/ui/explore/adapter/ExploreAdapter;->mOrderedBasicFeedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0}, Lcom/buzzfeed/android/ui/explore/adapter/ExploreAdapter;->hasBadgeList()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_d
    add-int/2addr v0, v1

    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getItemViewType(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 92
    if-nez p1, :cond_a

    invoke-direct {p0}, Lcom/buzzfeed/android/ui/explore/adapter/ExploreAdapter;->hasBadgeList()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 93
    const/4 v0, 0x2

    .line 95
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .prologue
    .line 28
    check-cast p1, Lcom/buzzfeed/android/ui/explore/holder/ExploreItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/buzzfeed/android/ui/explore/adapter/ExploreAdapter;->onBindViewHolder(Lcom/buzzfeed/android/ui/explore/holder/ExploreItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/buzzfeed/android/ui/explore/holder/ExploreItemViewHolder;I)V
    .registers 5
    .param p1, "holder"    # Lcom/buzzfeed/android/ui/explore/holder/ExploreItemViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 70
    iget-object v1, p0, Lcom/buzzfeed/android/ui/explore/adapter/ExploreAdapter;->mUserActionListener:Lcom/buzzfeed/android/ui/explore/listener/ExploreUserActionListener;

    invoke-virtual {p1, v1}, Lcom/buzzfeed/android/ui/explore/holder/ExploreItemViewHolder;->setUserActionListener(Lcom/buzzfeed/android/ui/explore/listener/ExploreUserActionListener;)V

    .line 72
    invoke-virtual {p1}, Lcom/buzzfeed/android/ui/explore/holder/ExploreItemViewHolder;->getItemViewType()I

    move-result v1

    packed-switch v1, :pswitch_data_28

    .line 81
    :goto_c
    return-void

    .line 74
    :pswitch_d
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/explore/adapter/ExploreAdapter;->hasBadgeList()Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 v1, 0x1

    :goto_14
    sub-int v0, p2, v1

    .line 75
    .local v0, "itemPosition":I
    iget-object v1, p0, Lcom/buzzfeed/android/ui/explore/adapter/ExploreAdapter;->mOrderedBasicFeedList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/buzzfeed/android/ui/explore/holder/ExploreItemViewHolder;->populateFrom(Ljava/lang/Object;)V

    goto :goto_c

    .line 74
    .end local v0    # "itemPosition":I
    :cond_20
    const/4 v1, 0x0

    goto :goto_14

    .line 78
    :pswitch_22
    iget-object v1, p0, Lcom/buzzfeed/android/ui/explore/adapter/ExploreAdapter;->mBadgeListAdapter:Lcom/buzzfeed/android/ui/explore/adapter/ExploreBadgeListAdapter;

    invoke-virtual {p1, v1}, Lcom/buzzfeed/android/ui/explore/holder/ExploreItemViewHolder;->populateFrom(Ljava/lang/Object;)V

    goto :goto_c

    .line 72
    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_d
        :pswitch_22
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/buzzfeed/android/ui/explore/adapter/ExploreAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/buzzfeed/android/ui/explore/holder/ExploreItemViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/buzzfeed/android/ui/explore/holder/ExploreItemViewHolder;
    .registers 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v3, 0x0

    .line 55
    packed-switch p2, :pswitch_data_3c

    .line 63
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown view type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :pswitch_1d
    iget-object v1, p0, Lcom/buzzfeed/android/ui/explore/adapter/ExploreAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03006b

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/buzzfeed/android/ui/explore/holder/ExploreBasicItemViewHolder;

    invoke-direct {v1, v0}, Lcom/buzzfeed/android/ui/explore/holder/ExploreBasicItemViewHolder;-><init>(Landroid/view/View;)V

    .line 61
    :goto_2b
    return-object v1

    .line 60
    .end local v0    # "view":Landroid/view/View;
    :pswitch_2c
    iget-object v1, p0, Lcom/buzzfeed/android/ui/explore/adapter/ExploreAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03006a

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 61
    .restart local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/buzzfeed/android/ui/explore/holder/ExploreBadgeListViewHolder;

    invoke-direct {v1, v0}, Lcom/buzzfeed/android/ui/explore/holder/ExploreBadgeListViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_2b

    .line 55
    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_2c
    .end packed-switch
.end method

.method public bridge synthetic onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 2

    .prologue
    .line 28
    check-cast p1, Lcom/buzzfeed/android/ui/explore/holder/ExploreItemViewHolder;

    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/ui/explore/adapter/ExploreAdapter;->onViewRecycled(Lcom/buzzfeed/android/ui/explore/holder/ExploreItemViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/buzzfeed/android/ui/explore/holder/ExploreItemViewHolder;)V
    .registers 3
    .param p1, "holder"    # Lcom/buzzfeed/android/ui/explore/holder/ExploreItemViewHolder;

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 86
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/buzzfeed/android/ui/explore/holder/ExploreItemViewHolder;->setUserActionListener(Lcom/buzzfeed/android/ui/explore/listener/ExploreUserActionListener;)V

    .line 87
    invoke-virtual {p1}, Lcom/buzzfeed/android/ui/explore/holder/ExploreItemViewHolder;->onViewHolderRecycled()V

    .line 88
    return-void
.end method
