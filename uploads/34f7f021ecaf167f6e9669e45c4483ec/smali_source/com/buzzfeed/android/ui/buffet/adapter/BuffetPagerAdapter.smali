.class public Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "BuffetPagerAdapter.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field private final mActiveFragments:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentPageSelection:I

.field private mIsPrepared:Z

.field private mNavigationItem:Lcom/buzzfeed/android/navigation/NavigationItem;

.field private mPendingPageSelection:I

.field private final mRecycledViewPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, -0x2

    .line 46
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 26
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;->mActiveFragments:Landroid/util/SparseArray;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;->mIsPrepared:Z

    .line 38
    iput v1, p0, Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;->mCurrentPageSelection:I

    .line 43
    iput v1, p0, Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;->mPendingPageSelection:I

    .line 47
    iput-object p1, p0, Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;->mContext:Landroid/content/Context;

    .line 48
    new-instance v0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;->mRecycledViewPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    .line 49
    return-void
.end method

.method private updatePageSelectionIfNecessary()V
    .registers 3

    .prologue
    const/4 v1, -0x2

    .line 111
    iget v0, p0, Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;->mPendingPageSelection:I

    if-eq v0, v1, :cond_c

    .line 112
    iget v0, p0, Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;->mPendingPageSelection:I

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;->onPageSelected(I)V

    .line 113
    iput v1, p0, Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;->mPendingPageSelection:I

    .line 115
    :cond_c
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 5
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;->mActiveFragments:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 94
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentStatePagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 95
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .registers 3
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentStatePagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 104
    iget-boolean v0, p0, Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;->mIsPrepared:Z

    if-nez v0, :cond_d

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;->mIsPrepared:Z

    .line 106
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;->updatePageSelectionIfNecessary()V

    .line 108
    :cond_d
    return-void
.end method

.method public getActiveFragment(I)Landroid/support/v4/app/Fragment;
    .registers 4
    .param p1, "position"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;->mActiveFragments:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;->mNavigationItem:Lcom/buzzfeed/android/navigation/NavigationItem;

    if-nez v0, :cond_6

    .line 152
    const/4 v0, 0x0

    .line 158
    :goto_5
    return v0

    .line 155
    :cond_6
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;->mNavigationItem:Lcom/buzzfeed/android/navigation/NavigationItem;

    iget-object v0, v0, Lcom/buzzfeed/android/navigation/NavigationItem;->type:Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;

    invoke-virtual {v0}, Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;->isFeedContentSupported()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 156
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;->mNavigationItem:Lcom/buzzfeed/android/navigation/NavigationItem;

    iget-object v0, v0, Lcom/buzzfeed/android/navigation/NavigationItem;->feeds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_5

    .line 158
    :cond_19
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .registers 9
    .param p1, "position"    # I

    .prologue
    .line 58
    iget-object v5, p0, Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;->mActiveFragments:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 59
    .local v2, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v2, :cond_c

    move-object v3, v2

    .line 73
    .end local v2    # "fragment":Landroid/support/v4/app/Fragment;
    .local v3, "fragment":Landroid/support/v4/app/Fragment;
    :goto_b
    return-object v3

    .line 63
    .end local v3    # "fragment":Landroid/support/v4/app/Fragment;
    .restart local v2    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_c
    iget-object v5, p0, Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;->mNavigationItem:Lcom/buzzfeed/android/navigation/NavigationItem;

    iget-object v5, v5, Lcom/buzzfeed/android/navigation/NavigationItem;->type:Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;

    invoke-virtual {v5}, Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;->getClassToLaunch()Ljava/lang/Class;

    move-result-object v4

    .line 65
    .local v4, "fragmentToLaunch":Ljava/lang/Class;
    iget-object v5, p0, Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;->mNavigationItem:Lcom/buzzfeed/android/navigation/NavigationItem;

    iget-object v5, v5, Lcom/buzzfeed/android/navigation/NavigationItem;->type:Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;

    invoke-virtual {v5}, Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;->isFeedContentSupported()Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 66
    iget-object v5, p0, Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;->mNavigationItem:Lcom/buzzfeed/android/navigation/NavigationItem;

    iget-object v5, v5, Lcom/buzzfeed/android/navigation/NavigationItem;->feeds:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/android/data/Feed;

    .line 67
    .local v1, "feed":Lcom/buzzfeed/android/data/Feed;
    iget-object v5, p0, Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;->mNavigationItem:Lcom/buzzfeed/android/navigation/NavigationItem;

    iget-object v5, v5, Lcom/buzzfeed/android/navigation/NavigationItem;->type:Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;

    invoke-virtual {v5, v1}, Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;->buildFragmentArgsForFeed(Lcom/buzzfeed/android/data/Feed;)Landroid/os/Bundle;

    move-result-object v0

    .line 68
    .local v0, "args":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "feed":Lcom/buzzfeed/android/data/Feed;
    :goto_3a
    move-object v3, v2

    .line 73
    .end local v2    # "fragment":Landroid/support/v4/app/Fragment;
    .restart local v3    # "fragment":Landroid/support/v4/app/Fragment;
    goto :goto_b

    .line 70
    .end local v3    # "fragment":Landroid/support/v4/app/Fragment;
    .restart local v2    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_3c
    iget-object v5, p0, Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    goto :goto_3a
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 124
    const/4 v0, -0x2

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .registers 6
    .param p1, "position"    # I

    .prologue
    .line 129
    iget-object v2, p0, Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;->mNavigationItem:Lcom/buzzfeed/android/navigation/NavigationItem;

    if-nez v2, :cond_6

    .line 130
    const/4 v1, 0x0

    .line 146
    :goto_5
    return-object v1

    .line 135
    :cond_6
    iget-object v2, p0, Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;->mNavigationItem:Lcom/buzzfeed/android/navigation/NavigationItem;

    iget-object v2, v2, Lcom/buzzfeed/android/navigation/NavigationItem;->type:Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;

    invoke-virtual {v2}, Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;->isFeedContentSupported()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 136
    iget-object v2, p0, Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;->mNavigationItem:Lcom/buzzfeed/android/navigation/NavigationItem;

    iget-object v2, v2, Lcom/buzzfeed/android/navigation/NavigationItem;->feeds:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/data/Feed;

    .line 137
    .local v0, "selectedFeed":Lcom/buzzfeed/android/data/Feed;
    invoke-virtual {v0}, Lcom/buzzfeed/android/data/Feed;->getLocalizedNameResId()I

    move-result v2

    if-eqz v2, :cond_2b

    .line 138
    iget-object v2, p0, Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/buzzfeed/android/data/Feed;->getLocalizedNameResId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "title":Ljava/lang/String;
    goto :goto_5

    .line 140
    .end local v1    # "title":Ljava/lang/String;
    :cond_2b
    invoke-virtual {v0}, Lcom/buzzfeed/android/data/Feed;->getName()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "title":Ljava/lang/String;
    goto :goto_5

    .line 143
    .end local v0    # "selectedFeed":Lcom/buzzfeed/android/data/Feed;
    .end local v1    # "title":Ljava/lang/String;
    :cond_30
    iget-object v2, p0, Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;->mNavigationItem:Lcom/buzzfeed/android/navigation/NavigationItem;

    iget v3, v3, Lcom/buzzfeed/android/navigation/NavigationItem;->titleResId:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "title":Ljava/lang/String;
    goto :goto_5
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 6
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 81
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 83
    .local v0, "itemView":Landroid/support/v4/app/Fragment;
    instance-of v1, v0, Lcom/buzzfeed/android/ui/buffet/fragment/NavigationBuffetItem;

    if-eqz v1, :cond_12

    move-object v1, v0

    .line 84
    check-cast v1, Lcom/buzzfeed/android/ui/buffet/fragment/NavigationBuffetItem;

    iget-object v2, p0, Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;->mRecycledViewPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    invoke-interface {v1, v2}, Lcom/buzzfeed/android/ui/buffet/fragment/NavigationBuffetItem;->setBuffetRecycledViewPool(Landroid/support/v7/widget/RecyclerView$RecycledViewPool;)V

    .line 87
    :cond_12
    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;->mActiveFragments:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 88
    return-object v0
.end method

.method public notifyDataSetChanged()V
    .registers 2

    .prologue
    .line 184
    invoke-super {p0}, Landroid/support/v4/app/FragmentStatePagerAdapter;->notifyDataSetChanged()V

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;->mIsPrepared:Z

    .line 186
    const/4 v0, -0x2

    iput v0, p0, Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;->mCurrentPageSelection:I

    .line 187
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 218
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 223
    return-void
.end method

.method public onPageSelected(I)V
    .registers 7
    .param p1, "position"    # I

    .prologue
    .line 192
    iget v3, p0, Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;->mCurrentPageSelection:I

    if-ne v3, p1, :cond_5

    .line 213
    :cond_4
    :goto_4
    return-void

    .line 196
    :cond_5
    iget-boolean v3, p0, Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;->mIsPrepared:Z

    if-nez v3, :cond_c

    .line 199
    iput p1, p0, Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;->mPendingPageSelection:I

    goto :goto_4

    .line 203
    :cond_c
    iput p1, p0, Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;->mCurrentPageSelection:I

    .line 205
    iget-object v3, p0, Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;->mActiveFragments:Landroid/util/SparseArray;

    iget v4, p0, Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;->mCurrentPageSelection:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 207
    .local v2, "selectedFragment":Landroid/support/v4/app/Fragment;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    iget-object v3, p0, Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;->mActiveFragments:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 208
    iget-object v3, p0, Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;->mActiveFragments:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 209
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    instance-of v3, v0, Lcom/buzzfeed/android/ui/buffet/listener/OnPageChangeListener;

    if-eqz v3, :cond_32

    .line 210
    check-cast v0, Lcom/buzzfeed/android/ui/buffet/listener/OnPageChangeListener;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-interface {v0, v2}, Lcom/buzzfeed/android/ui/buffet/listener/OnPageChangeListener;->onPageSelected(Ljava/lang/Object;)V

    .line 207
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_19
.end method

.method public setNavigationItem(Lcom/buzzfeed/android/navigation/NavigationItem;)V
    .registers 3
    .param p1, "navigationItem"    # Lcom/buzzfeed/android/navigation/NavigationItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 174
    const-string v0, "Navigation content must not be null."

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/EZUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/navigation/NavigationItem;

    iput-object v0, p0, Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;->mNavigationItem:Lcom/buzzfeed/android/navigation/NavigationItem;

    .line 175
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;->notifyDataSetChanged()V

    .line 176
    return-void
.end method
