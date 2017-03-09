.class public Lcom/buzzfeed/android/ui/explore/ExploreFragment;
.super Landroid/support/v4/app/Fragment;
.source "ExploreFragment.java"

# interfaces
.implements Lcom/buzzfeed/android/ui/buffet/fragment/NavigationItemView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/android/ui/explore/ExploreFragment$InternalExploreUserActionListener;
    }
.end annotation


# static fields
.field private static final SCROLL_DIRECTION_DOWN:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mFeedListProvider:Lcom/buzzfeed/android/navigation/FeedListProvider;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mTracker:Lcom/buzzfeed/android/data/tracking/ExploreTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const-class v0, Lcom/buzzfeed/android/ui/explore/ExploreFragment;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/ui/explore/ExploreFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/buzzfeed/android/ui/explore/ExploreFragment;)Landroid/support/v7/widget/RecyclerView;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/explore/ExploreFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/buzzfeed/android/ui/explore/ExploreFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/buzzfeed/android/ui/explore/ExploreFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/buzzfeed/android/ui/explore/ExploreFragment;)Lcom/buzzfeed/android/data/tracking/ExploreTracker;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/explore/ExploreFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/buzzfeed/android/ui/explore/ExploreFragment;->mTracker:Lcom/buzzfeed/android/data/tracking/ExploreTracker;

    return-object v0
.end method

.method private displayData(Ljava/util/List;)V
    .registers 8
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
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
    .local p1, "feedList":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/android/data/Feed;>;"
    const/4 v5, 0x0

    .line 72
    new-instance v0, Lcom/buzzfeed/android/ui/explore/adapter/ExploreAdapter;

    .line 73
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/explore/ExploreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/buzzfeed/android/ui/explore/ExploreFragment$InternalExploreUserActionListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/buzzfeed/android/ui/explore/ExploreFragment$InternalExploreUserActionListener;-><init>(Lcom/buzzfeed/android/ui/explore/ExploreFragment;Lcom/buzzfeed/android/ui/explore/ExploreFragment$1;)V

    invoke-direct {v0, v2, p1, v3}, Lcom/buzzfeed/android/ui/explore/adapter/ExploreAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/buzzfeed/android/ui/explore/listener/ExploreUserActionListener;)V

    .line 74
    .local v0, "adapter":Lcom/buzzfeed/android/ui/explore/adapter/ExploreAdapter;
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/explore/ExploreFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00ed

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 75
    .local v1, "topPadding":I
    iget-object v2, p0, Lcom/buzzfeed/android/ui/explore/ExploreFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Lcom/buzzfeed/toolkit/ui/itemdecoration/SpacingItemDecoration;

    invoke-direct {v3, v5, v5, v1, v5}, Lcom/buzzfeed/toolkit/ui/itemdecoration/SpacingItemDecoration;-><init>(IIIZ)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 76
    iget-object v2, p0, Lcom/buzzfeed/android/ui/explore/ExploreFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 77
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/explore/ExploreFragment;->updateRecyclerViewForContentChange()V

    .line 78
    return-void
.end method

.method private updateRecyclerViewForContentChange()V
    .registers 5

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/explore/ExploreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/buzzfeed/toolkit/util/UIUtil;->getActionBarHeight(Landroid/content/Context;)I

    move-result v1

    .line 86
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/explore/ExploreFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0073

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int v0, v1, v2

    .line 88
    .local v0, "topPadding":I
    iget-object v1, p0, Lcom/buzzfeed/android/ui/explore/ExploreFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/buzzfeed/android/ui/explore/ExploreFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/buzzfeed/android/ui/explore/ExploreFragment$1;-><init>(Lcom/buzzfeed/android/ui/explore/ExploreFragment;I)V

    invoke-static {v1, v2}, Lcom/buzzfeed/toolkit/util/UIUtil;->runAfterLayout(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 106
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/explore/ExploreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getEdition(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "edition":Ljava/lang/String;
    invoke-static {v0}, Lcom/buzzfeed/android/navigation/FeedListProvider;->getInstance(Ljava/lang/String;)Lcom/buzzfeed/android/navigation/FeedListProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/buzzfeed/android/ui/explore/ExploreFragment;->mFeedListProvider:Lcom/buzzfeed/android/navigation/FeedListProvider;

    .line 54
    new-instance v1, Lcom/buzzfeed/android/data/tracking/ExploreTracker;

    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/explore/ExploreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 55
    invoke-static {}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->getInstance()Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    move-result-object v3

    invoke-static {}, Lcom/buzzfeed/analytics/client/DustbusterClient;->getInstance()Lcom/buzzfeed/analytics/client/DustbusterClient;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/buzzfeed/android/data/tracking/ExploreTracker;-><init>(Landroid/content/Context;Lcom/buzzfeed/analytics/client/BuzzFeedTracker;Lcom/buzzfeed/analytics/client/DustbusterClient;)V

    iput-object v1, p0, Lcom/buzzfeed/android/ui/explore/ExploreFragment;->mTracker:Lcom/buzzfeed/android/data/tracking/ExploreTracker;

    .line 56
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 61
    const v2, 0x7f030068

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 63
    .local v1, "rootView":Landroid/view/View;
    const v2, 0x7f110156

    invoke-static {v1, v2}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    iput-object v2, p0, Lcom/buzzfeed/android/ui/explore/ExploreFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 65
    iget-object v2, p0, Lcom/buzzfeed/android/ui/explore/ExploreFragment;->mFeedListProvider:Lcom/buzzfeed/android/navigation/FeedListProvider;

    invoke-virtual {v2}, Lcom/buzzfeed/android/navigation/FeedListProvider;->getNavigationModel()Lcom/buzzfeed/android/navigation/NavigationModel;

    move-result-object v0

    .line 66
    .local v0, "navigationModel":Lcom/buzzfeed/android/navigation/NavigationModel;
    invoke-virtual {v0}, Lcom/buzzfeed/android/navigation/NavigationModel;->getExploreFeeds()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/buzzfeed/android/ui/explore/ExploreFragment;->displayData(Ljava/util/List;)V

    .line 68
    return-object v1
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 115
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 116
    iget-object v0, p0, Lcom/buzzfeed/android/ui/explore/ExploreFragment;->mTracker:Lcom/buzzfeed/android/data/tracking/ExploreTracker;

    invoke-virtual {v0}, Lcom/buzzfeed/android/data/tracking/ExploreTracker;->trackScreenView()V

    .line 117
    return-void
.end method

.method public scrollToTop()V
    .registers 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/buzzfeed/android/ui/explore/ExploreFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 111
    return-void
.end method
