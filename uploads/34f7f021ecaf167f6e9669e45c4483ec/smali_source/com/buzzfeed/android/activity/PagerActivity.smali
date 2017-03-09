.class public Lcom/buzzfeed/android/activity/PagerActivity;
.super Lcom/buzzfeed/android/activity/MenuActivity;
.source "PagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/android/activity/PagerActivity$InternalNavigationItemSelectedListener;
    }
.end annotation


# static fields
.field private static final KEY_VERTICAL:Ljava/lang/String; = "KEY_VERTICAL"

.field private static final STATE_KEY_DEEP_LINK_HANDLED:Ljava/lang/String; = "STATE_KEY_DEEP_LINK_HANDLED"

.field private static final STATE_KEY_POSITION_BOTTOM_MENU:Ljava/lang/String; = "STATE_KEY_POSITION_BOTTOM_MENU"

.field private static final STATE_KEY_POSITION_VIEWPAGER:Ljava/lang/String; = "STATE_KEY_POSITION_VIEWPAGER"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

.field private mBottomNavItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/android/navigation/NavigationItem;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomNavigationView:Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView;

.field private mFeedListProvider:Lcom/buzzfeed/android/navigation/FeedListProvider;

.field private mIsDeepLinkHandled:Z

.field private mPagerAdapter:Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;

.field private mSelectedBottomMenuPosition:I

.field private mSelectedViewPagerPosition:I

.field private mTabLayout:Landroid/support/design/widget/TabLayout;

.field private mViewPager:Lcom/buzzfeed/android/ui/buffet/view/BuffetViewPager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    const-class v0, Lcom/buzzfeed/android/activity/PagerActivity;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/activity/PagerActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/MenuActivity;-><init>()V

    .line 68
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mBottomNavItems:Ljava/util/List;

    .line 70
    iput v1, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mSelectedBottomMenuPosition:I

    .line 71
    iput v1, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mSelectedViewPagerPosition:I

    .line 76
    iput-boolean v1, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mIsDeepLinkHandled:Z

    return-void
.end method

.method static synthetic access$100(Lcom/buzzfeed/android/activity/PagerActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/buzzfeed/android/activity/PagerActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/PagerActivity;->refreshBookmarks()V

    return-void
.end method

.method static synthetic access$200(Lcom/buzzfeed/android/activity/PagerActivity;)Landroid/support/design/widget/TabLayout;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/activity/PagerActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/buzzfeed/android/activity/PagerActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/activity/PagerActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/PagerActivity;->shouldShowTabs()Z

    move-result v0

    return v0
.end method

.method static synthetic access$402(Lcom/buzzfeed/android/activity/PagerActivity;I)I
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/activity/PagerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mSelectedViewPagerPosition:I

    return p1
.end method

.method static synthetic access$500(Lcom/buzzfeed/android/activity/PagerActivity;)Landroid/support/design/widget/AppBarLayout;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/activity/PagerActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/buzzfeed/android/activity/PagerActivity;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/buzzfeed/android/activity/PagerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/activity/PagerActivity;->handleBottomNavigationAction(I)Z

    move-result v0

    return v0
.end method

.method private configureAppBarForNavigation(Lcom/buzzfeed/android/navigation/NavigationItem;)V
    .registers 8
    .param p1, "item"    # Lcom/buzzfeed/android/navigation/NavigationItem;

    .prologue
    .line 451
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/PagerActivity;->shouldShowTabs()Z

    move-result v1

    .line 452
    .local v1, "tabsEnabled":Z
    iget-object v5, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    if-eqz v1, :cond_33

    const/4 v4, 0x0

    :goto_9
    invoke-virtual {v5, v4}, Landroid/support/design/widget/TabLayout;->setVisibility(I)V

    .line 453
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/PagerActivity;->dismissSearchViewIfNecessary()V

    .line 455
    iget-object v4, p1, Lcom/buzzfeed/android/navigation/NavigationItem;->feeds:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_36

    iget v4, p1, Lcom/buzzfeed/android/navigation/NavigationItem;->titleResId:I

    invoke-virtual {p0, v4}, Lcom/buzzfeed/android/activity/PagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 457
    .local v3, "title":Ljava/lang/String;
    :goto_1e
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/PagerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 458
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_32

    .line 459
    if-nez v1, :cond_2c

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 460
    :cond_2c
    const v4, 0x7f03001a

    invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->setCustomView(I)V

    .line 467
    :cond_32
    :goto_32
    return-void

    .line 452
    .end local v0    # "actionBar":Landroid/support/v7/app/ActionBar;
    .end local v3    # "title":Ljava/lang/String;
    :cond_33
    const/16 v4, 0x8

    goto :goto_9

    .line 455
    :cond_36
    const/4 v3, 0x0

    goto :goto_1e

    .line 462
    .restart local v0    # "actionBar":Landroid/support/v7/app/ActionBar;
    .restart local v3    # "title":Ljava/lang/String;
    :cond_38
    const v4, 0x7f03001c

    invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->setCustomView(I)V

    .line 463
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f11008b

    invoke-static {v4, v5}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 464
    .local v2, "textView":Landroid/widget/TextView;
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_32
.end method

.method private configureBottomNavigationClearance()V
    .registers 4

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/PagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 291
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mViewPager:Lcom/buzzfeed/android/ui/buffet/view/BuffetViewPager;

    .line 292
    invoke-virtual {v2}, Lcom/buzzfeed/android/ui/buffet/view/BuffetViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 293
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    const v2, 0x7f0b0079

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 294
    return-void
.end method

.method private handleBottomNavigationAction(I)Z
    .registers 9
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 488
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/buzzfeed/android/activity/PagerActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".handleBottomNavigationAction"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 489
    .local v0, "TAG":Ljava/lang/String;
    iget-object v5, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mBottomNavItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_27

    iget-object v5, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mBottomNavItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt p1, v5, :cond_3f

    .line 490
    :cond_27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to handle selection action. position="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 507
    :goto_3e
    return v3

    .line 494
    :cond_3f
    iget v5, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mSelectedBottomMenuPosition:I

    if-eq v5, p1, :cond_65

    .line 495
    iget-object v5, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mBottomNavItems:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/buzzfeed/android/navigation/NavigationItem;

    .line 496
    .local v2, "selectedItem":Lcom/buzzfeed/android/navigation/NavigationItem;
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/PagerActivity;->getCurrentScreen()Ljava/lang/String;

    move-result-object v1

    .line 497
    .local v1, "currentScreen":Ljava/lang/String;
    iget-object v5, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mBuffetTracker:Lcom/buzzfeed/android/data/tracking/BuffetTracker;

    iget-object v6, v2, Lcom/buzzfeed/android/navigation/NavigationItem;->id:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->trackTabClicked(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    invoke-direct {p0, v2, p1, v4}, Lcom/buzzfeed/android/activity/PagerActivity;->setNavigationUiConfiguration(Lcom/buzzfeed/android/navigation/NavigationItem;II)V

    .line 500
    iput p1, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mSelectedBottomMenuPosition:I

    .line 505
    .end local v1    # "currentScreen":Ljava/lang/String;
    .end local v2    # "selectedItem":Lcom/buzzfeed/android/navigation/NavigationItem;
    :goto_5f
    iget-object v4, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v4, v3}, Landroid/support/design/widget/AppBarLayout;->setExpanded(Z)V

    goto :goto_3e

    .line 502
    :cond_65
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/PagerActivity;->scrollNavigationItemToTop()V

    goto :goto_5f
.end method

.method private handleDeepLink(Landroid/content/Intent;)Z
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 160
    iget-boolean v3, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mIsDeepLinkHandled:Z

    if-eqz v3, :cond_7

    .line 178
    :cond_6
    :goto_6
    return v1

    .line 164
    :cond_7
    iget-object v3, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mFeedListProvider:Lcom/buzzfeed/android/navigation/FeedListProvider;

    invoke-virtual {v3, p1}, Lcom/buzzfeed/android/navigation/FeedListProvider;->getDeepLinkedFeed(Landroid/content/Intent;)Lcom/buzzfeed/android/data/Feed;

    move-result-object v0

    .line 165
    .local v0, "deepLinkFeed":Lcom/buzzfeed/android/data/Feed;
    if-eqz v0, :cond_6

    .line 169
    iput-boolean v2, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mIsDeepLinkHandled:Z

    .line 171
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/PagerActivity;->isPagerAdapterConfigured()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-direct {p0, v0}, Lcom/buzzfeed/android/activity/PagerActivity;->isCurrentFeedSelected(Lcom/buzzfeed/android/data/Feed;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 172
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/PagerActivity;->scrollNavigationItemToTop()V

    .line 173
    iget-object v1, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/AppBarLayout;->setExpanded(Z)V

    :goto_25
    move v1, v2

    .line 178
    goto :goto_6

    .line 175
    :cond_27
    invoke-direct {p0, v0}, Lcom/buzzfeed/android/activity/PagerActivity;->handleInternalFeedSelection(Lcom/buzzfeed/android/data/Feed;)V

    goto :goto_25
.end method

.method private handleInternalFeedSelection(Lcom/buzzfeed/android/data/Feed;)V
    .registers 11
    .param p1, "selectedFeed"    # Lcom/buzzfeed/android/data/Feed;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 186
    const/4 v4, 0x0

    .line 187
    .local v4, "itemIndex":I
    iget-object v5, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mBottomNavItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_39

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/buzzfeed/android/navigation/NavigationItem;

    .line 188
    .local v3, "item":Lcom/buzzfeed/android/navigation/NavigationItem;
    iget-object v2, v3, Lcom/buzzfeed/android/navigation/NavigationItem;->feeds:Ljava/util/List;

    .line 189
    .local v2, "feedList":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/android/data/Feed;>;"
    const/4 v1, 0x0

    .line 190
    .local v1, "feedIndex":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/data/Feed;

    .line 191
    .local v0, "feed":Lcom/buzzfeed/android/data/Feed;
    invoke-virtual {v0}, Lcom/buzzfeed/android/data/Feed;->getTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/buzzfeed/android/data/Feed;->getTag()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3a

    .line 192
    invoke-direct {p0, v3, v4, v1}, Lcom/buzzfeed/android/activity/PagerActivity;->setNavigationUiConfiguration(Lcom/buzzfeed/android/navigation/NavigationItem;II)V

    .line 193
    iput v4, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mSelectedBottomMenuPosition:I

    .line 200
    .end local v0    # "feed":Lcom/buzzfeed/android/data/Feed;
    .end local v1    # "feedIndex":I
    .end local v2    # "feedList":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/android/data/Feed;>;"
    .end local v3    # "item":Lcom/buzzfeed/android/navigation/NavigationItem;
    :cond_39
    return-void

    .line 196
    .restart local v0    # "feed":Lcom/buzzfeed/android/data/Feed;
    .restart local v1    # "feedIndex":I
    .restart local v2    # "feedList":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/android/data/Feed;>;"
    .restart local v3    # "item":Lcom/buzzfeed/android/navigation/NavigationItem;
    :cond_3a
    add-int/lit8 v1, v1, 0x1

    .line 197
    goto :goto_1a

    .line 198
    .end local v0    # "feed":Lcom/buzzfeed/android/data/Feed;
    :cond_3d
    add-int/lit8 v4, v4, 0x1

    .line 199
    goto :goto_7
.end method

.method private isCurrentFeedSelected(Lcom/buzzfeed/android/data/Feed;)Z
    .registers 5
    .param p1, "feedToMatch"    # Lcom/buzzfeed/android/data/Feed;

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/PagerActivity;->getCurrentFeed()Lcom/buzzfeed/android/data/Feed;

    move-result-object v0

    .line 214
    .local v0, "currentFeed":Lcom/buzzfeed/android/data/Feed;
    if-eqz v0, :cond_18

    if-eqz p1, :cond_18

    .line 215
    invoke-virtual {v0}, Lcom/buzzfeed/android/data/Feed;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/buzzfeed/android/data/Feed;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    :goto_17
    return v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_17
.end method

.method private isPagerAdapterConfigured()Z
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mPagerAdapter:Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mPagerAdapter:Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;

    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private refreshBookmarks()V
    .registers 3

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/PagerActivity;->getCurrentFeed()Lcom/buzzfeed/android/data/Feed;

    move-result-object v1

    invoke-static {v1}, Lcom/buzzfeed/android/util/FeedUtils;->isBookmarkFeed(Lcom/buzzfeed/android/data/Feed;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 250
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/PagerActivity;->getNavigationItemView()Lcom/buzzfeed/android/ui/buffet/fragment/NavigationItemView;

    move-result-object v0

    .line 252
    .local v0, "fragment":Lcom/buzzfeed/android/ui/buffet/fragment/NavigationItemView;
    instance-of v1, v0, Lcom/buzzfeed/android/ui/buffet/fragment/NavigationBuffetItem;

    if-eqz v1, :cond_17

    .line 253
    check-cast v0, Lcom/buzzfeed/android/ui/buffet/fragment/NavigationBuffetItem;

    .end local v0    # "fragment":Lcom/buzzfeed/android/ui/buffet/fragment/NavigationItemView;
    invoke-interface {v0}, Lcom/buzzfeed/android/ui/buffet/fragment/NavigationBuffetItem;->reloadFeed()V

    .line 256
    :cond_17
    return-void
.end method

.method private scrollNavigationItemToTop()V
    .registers 2

    .prologue
    .line 524
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/PagerActivity;->getNavigationItemView()Lcom/buzzfeed/android/ui/buffet/fragment/NavigationItemView;

    move-result-object v0

    .line 526
    .local v0, "navigationItemView":Lcom/buzzfeed/android/ui/buffet/fragment/NavigationItemView;
    if-eqz v0, :cond_9

    .line 527
    invoke-interface {v0}, Lcom/buzzfeed/android/ui/buffet/fragment/NavigationItemView;->scrollToTop()V

    .line 529
    :cond_9
    return-void
.end method

.method private setNavigationUiConfiguration(Lcom/buzzfeed/android/navigation/NavigationItem;II)V
    .registers 5
    .param p1, "item"    # Lcom/buzzfeed/android/navigation/NavigationItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "bottomMenuPosition"    # I
    .param p3, "viewPagerPosition"    # I

    .prologue
    .line 517
    iget-object v0, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mPagerAdapter:Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;->setNavigationItem(Lcom/buzzfeed/android/navigation/NavigationItem;)V

    .line 518
    iget-object v0, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mViewPager:Lcom/buzzfeed/android/ui/buffet/view/BuffetViewPager;

    invoke-virtual {v0, p3}, Lcom/buzzfeed/android/ui/buffet/view/BuffetViewPager;->setInitialPosition(I)V

    .line 519
    iget-object v0, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mBottomNavigationView:Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView;

    invoke-virtual {v0, p2}, Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView;->setSelected(I)V

    .line 520
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/activity/PagerActivity;->configureAppBarForNavigation(Lcom/buzzfeed/android/navigation/NavigationItem;)V

    .line 521
    return-void
.end method

.method private setupBottomNavigationMenu()V
    .registers 10

    .prologue
    const/16 v8, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 263
    const v5, 0x7f110092

    invoke-static {p0, v5}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v1

    .line 264
    .local v1, "bottomNavigationShadow":Landroid/view/View;
    iget-object v5, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mBottomNavItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v6, :cond_54

    .line 265
    iget-object v5, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mBottomNavigationView:Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView;

    invoke-virtual {v5}, Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 266
    .local v0, "bottomMenu":Landroid/view/Menu;
    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 268
    const/4 v4, 0x0

    .line 269
    .local v4, "position":I
    iget-object v5, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mBottomNavItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_23
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_48

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/buzzfeed/android/navigation/NavigationItem;

    .line 270
    .local v2, "item":Lcom/buzzfeed/android/navigation/NavigationItem;
    iget v5, v2, Lcom/buzzfeed/android/navigation/NavigationItem;->titleResId:I

    invoke-interface {v0, v7, v4, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 271
    .local v3, "menuItem":Landroid/view/MenuItem;
    iget v5, v2, Lcom/buzzfeed/android/navigation/NavigationItem;->iconResId:I

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 272
    if-nez v4, :cond_46

    move v5, v6

    :goto_3d
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 273
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 274
    add-int/lit8 v4, v4, 0x1

    .line 275
    goto :goto_23

    :cond_46
    move v5, v7

    .line 272
    goto :goto_3d

    .line 276
    .end local v2    # "item":Lcom/buzzfeed/android/navigation/NavigationItem;
    .end local v3    # "menuItem":Landroid/view/MenuItem;
    :cond_48
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/PagerActivity;->configureBottomNavigationClearance()V

    .line 277
    iget-object v5, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mBottomNavigationView:Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView;

    invoke-virtual {v5, v7}, Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView;->setVisibility(I)V

    .line 278
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 283
    .end local v0    # "bottomMenu":Landroid/view/Menu;
    .end local v4    # "position":I
    :goto_53
    return-void

    .line 280
    :cond_54
    iget-object v5, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mBottomNavigationView:Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView;

    invoke-virtual {v5, v8}, Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView;->setVisibility(I)V

    .line 281
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_53
.end method

.method private setupTabLayout()V
    .registers 3

    .prologue
    .line 392
    const v0, 0x7f110090

    invoke-static {p0, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    .line 393
    iget-object v0, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mViewPager:Lcom/buzzfeed/android/ui/buffet/view/BuffetViewPager;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 394
    iget-object v0, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    const-string v1, "fonts/ProximaNova-Sbold.otf"

    invoke-static {v0, v1}, Lcom/buzzfeed/android/util/BuzzUtils;->changeFont(Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 396
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/PagerActivity;->shouldShowTabs()Z

    move-result v0

    if-nez v0, :cond_26

    .line 397
    iget-object v0, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setVisibility(I)V

    .line 399
    :cond_26
    return-void
.end method

.method private setupViewPager()V
    .registers 3

    .prologue
    .line 368
    new-instance v0, Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;

    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/PagerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mPagerAdapter:Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;

    .line 369
    iget-object v0, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mViewPager:Lcom/buzzfeed/android/ui/buffet/view/BuffetViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/ui/buffet/view/BuffetViewPager;->setOffscreenPageLimit(I)V

    .line 370
    iget-object v0, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mViewPager:Lcom/buzzfeed/android/ui/buffet/view/BuffetViewPager;

    iget-object v1, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mPagerAdapter:Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/ui/buffet/view/BuffetViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 371
    iget-object v0, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mViewPager:Lcom/buzzfeed/android/ui/buffet/view/BuffetViewPager;

    iget-object v1, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mPagerAdapter:Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/ui/buffet/view/BuffetViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 372
    iget-object v0, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mViewPager:Lcom/buzzfeed/android/ui/buffet/view/BuffetViewPager;

    new-instance v1, Lcom/buzzfeed/android/activity/PagerActivity$3;

    invoke-direct {v1, p0}, Lcom/buzzfeed/android/activity/PagerActivity$3;-><init>(Lcom/buzzfeed/android/activity/PagerActivity;)V

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/ui/buffet/view/BuffetViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 389
    return-void
.end method

.method private shouldShowTabs()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 442
    iget-object v1, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mPagerAdapter:Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mPagerAdapter:Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;

    invoke-virtual {v1}, Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;->getCount()I

    move-result v1

    if-le v1, v0, :cond_e

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static startIntent(Landroid/app/Activity;)V
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 82
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/buzzfeed/android/activity/PagerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 85
    return-void
.end method

.method public static startIntent(Landroid/app/Activity;Lcom/buzzfeed/android/data/Feed;)V
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "feed"    # Lcom/buzzfeed/android/data/Feed;

    .prologue
    .line 88
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/buzzfeed/android/activity/PagerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 90
    const-string v1, "KEY_VERTICAL"

    invoke-virtual {p1}, Lcom/buzzfeed/android/data/Feed;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 92
    return-void
.end method


# virtual methods
.method protected dismissSearchViewIfNecessary()V
    .registers 2

    .prologue
    .line 474
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/PagerActivity;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    .line 475
    .local v0, "toolbar":Landroid/support/v7/widget/Toolbar;
    if-eqz v0, :cond_9

    .line 476
    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->collapseActionView()V

    .line 478
    :cond_9
    return-void
.end method

.method public getCurrentFeed()Lcom/buzzfeed/android/data/Feed;
    .registers 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 424
    iget-object v2, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mViewPager:Lcom/buzzfeed/android/ui/buffet/view/BuffetViewPager;

    invoke-virtual {v2}, Lcom/buzzfeed/android/ui/buffet/view/BuffetViewPager;->getCurrentItem()I

    move-result v0

    .line 425
    .local v0, "currentItem":I
    iget-object v2, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mBottomNavItems:Ljava/util/List;

    iget v3, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mSelectedBottomMenuPosition:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/buzzfeed/android/navigation/NavigationItem;

    iget-object v1, v2, Lcom/buzzfeed/android/navigation/NavigationItem;->feeds:Ljava/util/List;

    .line 427
    .local v1, "feedList":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/android/data/Feed;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_25

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_25

    .line 428
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/buzzfeed/android/data/Feed;

    .line 430
    :goto_24
    return-object v2

    :cond_25
    const/4 v2, 0x0

    goto :goto_24
.end method

.method protected getCurrentScreen()Ljava/lang/String;
    .registers 4

    .prologue
    .line 436
    iget-object v1, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mBottomNavItems:Ljava/util/List;

    iget v2, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mSelectedBottomMenuPosition:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/navigation/NavigationItem;

    .line 438
    .local v0, "item":Lcom/buzzfeed/android/navigation/NavigationItem;
    invoke-static {p0}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getEdition(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mViewPager:Lcom/buzzfeed/android/ui/buffet/view/BuffetViewPager;

    invoke-virtual {v2}, Lcom/buzzfeed/android/ui/buffet/view/BuffetViewPager;->getCurrentItem()I

    move-result v2

    .line 437
    invoke-static {v0, v1, v2}, Lcom/buzzfeed/android/util/AnalyticsUtils;->buildScreenNameFromNavigationItem(Lcom/buzzfeed/android/navigation/NavigationItem;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getNavigationItemView()Lcom/buzzfeed/android/ui/buffet/fragment/NavigationItemView;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 408
    iget-object v2, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mPagerAdapter:Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;

    if-nez v2, :cond_a

    .line 409
    :cond_8
    const/4 v0, 0x0

    .line 415
    :goto_9
    return-object v0

    .line 412
    :cond_a
    iget-object v2, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v1

    .line 413
    .local v1, "position":I
    iget-object v2, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mPagerAdapter:Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;

    invoke-virtual {v2, v1}, Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;->getActiveFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 415
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    check-cast v0, Lcom/buzzfeed/android/ui/buffet/fragment/NavigationItemView;

    goto :goto_9
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 96
    invoke-super {p0, p1}, Lcom/buzzfeed/android/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    const v0, 0x7f03001e

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/activity/PagerActivity;->setContentView(I)V

    .line 99
    invoke-static {p0}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getEdition(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/buzzfeed/android/navigation/FeedListProvider;->getInstance(Ljava/lang/String;)Lcom/buzzfeed/android/navigation/FeedListProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mFeedListProvider:Lcom/buzzfeed/android/navigation/FeedListProvider;

    .line 101
    const v0, 0x7f110090

    invoke-static {p0, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    .line 102
    const v0, 0x7f110091

    invoke-static {p0, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/ui/buffet/view/BuffetViewPager;

    iput-object v0, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mViewPager:Lcom/buzzfeed/android/ui/buffet/view/BuffetViewPager;

    .line 103
    const v0, 0x7f11008f

    invoke-static {p0, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    iput-object v0, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    .line 104
    const v0, 0x7f110093

    invoke-static {p0, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView;

    iput-object v0, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mBottomNavigationView:Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView;

    .line 105
    iget-object v0, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mBottomNavigationView:Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView;

    new-instance v1, Lcom/buzzfeed/android/activity/PagerActivity$InternalNavigationItemSelectedListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/buzzfeed/android/activity/PagerActivity$InternalNavigationItemSelectedListener;-><init>(Lcom/buzzfeed/android/activity/PagerActivity;Lcom/buzzfeed/android/activity/PagerActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView;->setOnNavigationItemSelectedListener(Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView$OnNavigationItemSelectedListener;)V

    .line 107
    if-eqz p1, :cond_65

    .line 108
    const-string v0, "STATE_KEY_POSITION_BOTTOM_MENU"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mSelectedBottomMenuPosition:I

    .line 109
    const-string v0, "STATE_KEY_POSITION_VIEWPAGER"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mSelectedViewPagerPosition:I

    .line 110
    const-string v0, "STATE_KEY_DEEP_LINK_HANDLED"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mIsDeepLinkHandled:Z

    .line 112
    :cond_65
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 321
    invoke-super {p0, p1}, Lcom/buzzfeed/android/activity/MenuActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 322
    const v1, 0x7f110233

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 323
    .local v0, "searchMenuItem":Landroid/view/MenuItem;
    new-instance v1, Lcom/buzzfeed/android/activity/PagerActivity$2;

    invoke-direct {v1, p0}, Lcom/buzzfeed/android/activity/PagerActivity$2;-><init>(Lcom/buzzfeed/android/activity/PagerActivity;)V

    invoke-static {v0, v1}, Landroid/support/v4/view/MenuItemCompat;->setOnActionExpandListener(Landroid/view/MenuItem;Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 336
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 314
    iget-object v0, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mViewPager:Lcom/buzzfeed/android/ui/buffet/view/BuffetViewPager;

    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/buffet/view/BuffetViewPager;->clearOnPageChangeListeners()V

    .line 315
    iget-object v0, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mBottomNavigationView:Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView;->setOnNavigationItemSelectedListener(Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView$OnNavigationItemSelectedListener;)V

    .line 316
    invoke-super {p0}, Lcom/buzzfeed/android/activity/MenuActivity;->onDestroy()V

    .line 317
    return-void
.end method

.method public bridge synthetic onMenuOpened(ILandroid/view/Menu;)Z
    .registers 4

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lcom/buzzfeed/android/activity/MenuActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onNavigationContentLoaded(Lcom/buzzfeed/android/navigation/NavigationModel;)V
    .registers 6
    .param p1, "data"    # Lcom/buzzfeed/android/navigation/NavigationModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 127
    invoke-virtual {p1}, Lcom/buzzfeed/android/navigation/NavigationModel;->getNavigationItems()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mBottomNavItems:Ljava/util/List;

    .line 128
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/PagerActivity;->setupBottomNavigationMenu()V

    .line 129
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/PagerActivity;->setupViewPager()V

    .line 130
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/PagerActivity;->setupTabLayout()V

    .line 132
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/PagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/buzzfeed/android/activity/PagerActivity;->handleDeepLink(Landroid/content/Intent;)Z

    move-result v0

    .line 134
    .local v0, "isDeepLink":Z
    if-nez v0, :cond_2a

    .line 135
    iget-object v2, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mBottomNavItems:Ljava/util/List;

    iget v3, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mSelectedBottomMenuPosition:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/android/navigation/NavigationItem;

    .line 136
    .local v1, "item":Lcom/buzzfeed/android/navigation/NavigationItem;
    iget v2, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mSelectedBottomMenuPosition:I

    iget v3, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mSelectedViewPagerPosition:I

    invoke-direct {p0, v1, v2, v3}, Lcom/buzzfeed/android/activity/PagerActivity;->setNavigationUiConfiguration(Lcom/buzzfeed/android/navigation/NavigationItem;II)V

    .line 138
    .end local v1    # "item":Lcom/buzzfeed/android/navigation/NavigationItem;
    :cond_2a
    return-void
.end method

.method protected onNetworkChange(Landroid/net/NetworkInfo;)V
    .registers 3
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 349
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 350
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/PagerActivity;->onNetworkConnected()V

    .line 352
    :cond_b
    return-void
.end method

.method protected onNetworkConnected()V
    .registers 4

    .prologue
    .line 355
    iget-object v2, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mPagerAdapter:Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;

    if-nez v2, :cond_5

    .line 365
    :cond_4
    return-void

    .line 359
    :cond_5
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mPagerAdapter:Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;

    invoke-virtual {v2}, Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 360
    iget-object v2, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mPagerAdapter:Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;

    invoke-virtual {v2, v1}, Lcom/buzzfeed/android/ui/buffet/adapter/BuffetPagerAdapter;->getActiveFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 361
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    instance-of v2, v0, Lcom/buzzfeed/android/ui/buffet/fragment/NavigationBuffetItem;

    if-eqz v2, :cond_1d

    .line 362
    check-cast v0, Lcom/buzzfeed/android/ui/buffet/fragment/NavigationBuffetItem;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-interface {v0}, Lcom/buzzfeed/android/ui/buffet/fragment/NavigationBuffetItem;->retryFeedLoad()V

    .line 359
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mIsDeepLinkHandled:Z

    .line 143
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/activity/PagerActivity;->handleDeepLink(Landroid/content/Intent;)Z

    .line 144
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 341
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f110233

    if-ne v0, v1, :cond_10

    .line 342
    iget-object v0, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setVisibility(I)V

    .line 344
    :cond_10
    invoke-super {p0, p1}, Lcom/buzzfeed/android/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/buzzfeed/android/activity/MenuActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 119
    sget-boolean v1, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->hasPromptedToSignInHomeFeed:Z

    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/activity/PagerActivity;->promptUserToLoginToSaveBookmarks(Z)V

    .line 120
    const/4 v1, 0x1

    sput-boolean v1, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->hasPromptedToSignInHomeFeed:Z

    .line 122
    iget-object v1, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mFeedListProvider:Lcom/buzzfeed/android/navigation/FeedListProvider;

    invoke-virtual {v1}, Lcom/buzzfeed/android/navigation/FeedListProvider;->getNavigationModel()Lcom/buzzfeed/android/navigation/NavigationModel;

    move-result-object v0

    .line 123
    .local v0, "navigationModel":Lcom/buzzfeed/android/navigation/NavigationModel;
    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/activity/PagerActivity;->onNavigationContentLoaded(Lcom/buzzfeed/android/navigation/NavigationModel;)V

    .line 124
    return-void
.end method

.method public bridge synthetic onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/buzzfeed/android/activity/MenuActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 298
    invoke-super {p0}, Lcom/buzzfeed/android/activity/MenuActivity;->onResume()V

    .line 299
    iget-object v0, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    if-eqz v0, :cond_13

    invoke-direct {p0}, Lcom/buzzfeed/android/activity/PagerActivity;->shouldShowTabs()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 300
    iget-object v0, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setVisibility(I)V

    .line 302
    :cond_13
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 306
    invoke-super {p0, p1}, Lcom/buzzfeed/android/activity/MenuActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 307
    const-string v0, "STATE_KEY_POSITION_BOTTOM_MENU"

    iget v1, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mSelectedBottomMenuPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 308
    const-string v0, "STATE_KEY_POSITION_VIEWPAGER"

    iget v1, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mSelectedViewPagerPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 309
    const-string v0, "STATE_KEY_DEEP_LINK_HANDLED"

    iget-boolean v1, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mIsDeepLinkHandled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 310
    return-void
.end method

.method protected promptUserToLoginToSaveBookmarks(Z)V
    .registers 4
    .param p1, "hasPromptedUser"    # Z

    .prologue
    .line 225
    if-nez p1, :cond_c

    .line 226
    iget-object v0, p0, Lcom/buzzfeed/android/activity/PagerActivity;->mBookmarkManager:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;

    new-instance v1, Lcom/buzzfeed/android/activity/PagerActivity$1;

    invoke-direct {v1, p0}, Lcom/buzzfeed/android/activity/PagerActivity$1;-><init>(Lcom/buzzfeed/android/activity/PagerActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->promptLoginNotice(Landroid/app/Activity;Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$BookmarkChangeListener;)V

    .line 246
    :cond_c
    return-void
.end method
