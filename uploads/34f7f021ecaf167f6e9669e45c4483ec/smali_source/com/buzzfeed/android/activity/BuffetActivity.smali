.class public Lcom/buzzfeed/android/activity/BuffetActivity;
.super Lcom/buzzfeed/android/activity/BaseBuffetActivity;
.source "BuffetActivity.java"


# static fields
.field public static final KEY_VERTICAL:Ljava/lang/String; = "KEY_VERTICAL"

.field public static final KEY_WIDGET_BUZZ_URL:Ljava/lang/String; = "KEY_WIDGET_BUZZ_URL"

.field public static final KEY_WIDGET_FEED_NAME:Ljava/lang/String; = "KEY_WIDGET_FEED_NAME"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBuffetFragment:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const-class v0, Lcom/buzzfeed/android/activity/BuffetActivity;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/activity/BuffetActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/BaseBuffetActivity;-><init>()V

    return-void
.end method

.method public static startIntentWithFeed(Landroid/app/Activity;Lcom/buzzfeed/android/data/Feed;)V
    .registers 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "feed"    # Lcom/buzzfeed/android/data/Feed;

    .prologue
    .line 57
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/buzzfeed/android/activity/BuffetActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "KEY_FEED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 59
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 60
    return-void
.end method

.method public static startIntentWithFeedNewTask(Landroid/app/Activity;Lcom/buzzfeed/android/data/Feed;)V
    .registers 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "feed"    # Lcom/buzzfeed/android/data/Feed;

    .prologue
    .line 49
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/buzzfeed/android/activity/BuffetActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "KEY_FEED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 51
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 52
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 53
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 54
    return-void
.end method

.method private updateToolbarTitle(Lcom/buzzfeed/android/data/Feed;)V
    .registers 8
    .param p1, "feed"    # Lcom/buzzfeed/android/data/Feed;

    .prologue
    .line 141
    invoke-static {p1}, Lcom/buzzfeed/android/util/FeedUtils;->isHomeFeed(Lcom/buzzfeed/android/data/Feed;)Z

    move-result v1

    .line 143
    .local v1, "isHomeFeed":Z
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BuffetActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 144
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_12

    .line 145
    if-eqz v1, :cond_27

    .line 146
    const v4, 0x7f03001a

    invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->setCustomView(I)V

    .line 160
    :cond_12
    :goto_12
    const v4, 0x7f110233

    invoke-virtual {p0, v4}, Lcom/buzzfeed/android/activity/BuffetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 161
    .local v2, "searchView":Landroid/view/View;
    if-eqz v2, :cond_26

    .line 162
    invoke-static {p1}, Lcom/buzzfeed/android/util/FeedUtils;->isBookmarkFeed(Lcom/buzzfeed/android/data/Feed;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 163
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 168
    :cond_26
    :goto_26
    return-void

    .line 148
    .end local v2    # "searchView":Landroid/view/View;
    :cond_27
    const v4, 0x7f03001c

    invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->setCustomView(I)V

    .line 149
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f11008b

    invoke-static {v4, v5}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 151
    .local v3, "textView":Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/buzzfeed/android/data/Feed;->getLocalizedNameResId()I

    move-result v4

    if-eqz v4, :cond_48

    .line 152
    invoke-virtual {p1}, Lcom/buzzfeed/android/data/Feed;->getLocalizedNameResId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_12

    .line 154
    :cond_48
    invoke-virtual {p1}, Lcom/buzzfeed/android/data/Feed;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_12

    .line 165
    .end local v3    # "textView":Landroid/widget/TextView;
    .restart local v2    # "searchView":Landroid/view/View;
    :cond_50
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_26
.end method


# virtual methods
.method protected configureToolbar(Landroid/support/v7/widget/Toolbar;)V
    .registers 5
    .param p1, "toolbar"    # Landroid/support/v7/widget/Toolbar;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    .line 82
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BuffetActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 83
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 84
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 85
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 86
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 87
    const v1, 0x7f03001a

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setCustomView(I)V

    .line 88
    return-void
.end method

.method protected getContentViewId()I
    .registers 2

    .prologue
    .line 64
    const v0, 0x7f03001d

    return v0
.end method

.method protected getCurrentBuffetFragment()Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuffetActivity;->mBuffetFragment:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    return-object v0
.end method

.method protected getCurrentFeed()Lcom/buzzfeed/android/data/Feed;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuffetActivity;->mBuffetFragment:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    if-eqz v0, :cond_b

    .line 124
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuffetActivity;->mBuffetFragment:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getCurrentFeed()Lcom/buzzfeed/android/data/Feed;

    move-result-object v0

    .line 126
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected getCurrentScreen()Ljava/lang/String;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BuffetActivity;->getCurrentFeed()Lcom/buzzfeed/android/data/Feed;

    move-result-object v0

    invoke-static {p0}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getEdition(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/android/util/AnalyticsUtils;->buildScreenNameFromFeed(Lcom/buzzfeed/android/data/Feed;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected launchBookmarksView()V
    .registers 2

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BuffetActivity;->getCurrentFeed()Lcom/buzzfeed/android/data/Feed;

    move-result-object v0

    invoke-static {v0}, Lcom/buzzfeed/android/util/FeedUtils;->isBookmarkFeed(Lcom/buzzfeed/android/data/Feed;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-super {p0}, Lcom/buzzfeed/android/activity/BaseBuffetActivity;->launchBookmarksView()V

    .line 107
    :cond_d
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-super {p0, p1}, Lcom/buzzfeed/android/activity/BaseBuffetActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0, v0, v0}, Lcom/buzzfeed/android/activity/BuffetActivity;->overridePendingTransition(II)V

    .line 71
    new-instance v0, Lcom/buzzfeed/android/activity/BuffetActivity$1;

    invoke-direct {v0, p0}, Lcom/buzzfeed/android/activity/BuffetActivity$1;-><init>(Lcom/buzzfeed/android/activity/BuffetActivity;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/activity/BuffetActivity;->setToolBarAsUp(Landroid/view/View$OnClickListener;)V

    .line 77
    return-void
.end method

.method protected onNavigationContentLoaded(Lcom/buzzfeed/android/navigation/NavigationModel;)V
    .registers 6
    .param p1, "data"    # Lcom/buzzfeed/android/navigation/NavigationModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 92
    invoke-virtual {p1}, Lcom/buzzfeed/android/navigation/NavigationModel;->getSupportedFeeds()Ljava/util/List;

    move-result-object v1

    .line 93
    .local v1, "feeds":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/android/data/Feed;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 95
    iget-object v2, p0, Lcom/buzzfeed/android/activity/BuffetActivity;->mFeedListProvider:Lcom/buzzfeed/android/navigation/FeedListProvider;

    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BuffetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/navigation/FeedListProvider;->getDeepLinkedFeed(Landroid/content/Intent;)Lcom/buzzfeed/android/data/Feed;

    move-result-object v0

    .line 96
    .local v0, "deepLinkedFeed":Lcom/buzzfeed/android/data/Feed;
    if-eqz v0, :cond_19

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/activity/BuffetActivity;->switchFeed(Lcom/buzzfeed/android/data/Feed;)V

    .line 101
    .end local v0    # "deepLinkedFeed":Lcom/buzzfeed/android/data/Feed;
    :cond_19
    :goto_19
    return-void

    .line 98
    :cond_1a
    iget-object v2, p0, Lcom/buzzfeed/android/activity/BuffetActivity;->mBuffetFragment:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    if-eqz v2, :cond_19

    .line 99
    iget-object v2, p0, Lcom/buzzfeed/android/activity/BuffetActivity;->mBuffetFragment:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    invoke-virtual {v2}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->showError()V

    goto :goto_19
.end method

.method protected onNetworkConnected()V
    .registers 2

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BuffetActivity;->getCurrentBuffetFragment()Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BuffetActivity;->getCurrentFeed()Lcom/buzzfeed/android/data/Feed;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 112
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BuffetActivity;->getCurrentBuffetFragment()Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->retryFeedLoad()V

    .line 113
    :cond_13
    return-void
.end method

.method protected switchFeed(Lcom/buzzfeed/android/data/Feed;)V
    .registers 7
    .param p1, "feed"    # Lcom/buzzfeed/android/data/Feed;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/buzzfeed/android/activity/BuffetActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".switchFeed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "TAG":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Switching to feed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v2, p0, Lcom/buzzfeed/android/activity/BuffetActivity;->mFeedListProvider:Lcom/buzzfeed/android/navigation/FeedListProvider;

    invoke-virtual {v2}, Lcom/buzzfeed/android/navigation/FeedListProvider;->getBottomMenuItems()Ljava/util/List;

    move-result-object v1

    .line 186
    .local v1, "menuItems":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/android/navigation/NavigationItem;>;"
    invoke-static {p1, v1}, Lcom/buzzfeed/android/util/FeedUtils;->hasMatchingBottomMenuFeed(Lcom/buzzfeed/android/data/Feed;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 187
    invoke-static {p0, p1}, Lcom/buzzfeed/android/activity/PagerActivity;->startIntent(Landroid/app/Activity;Lcom/buzzfeed/android/data/Feed;)V

    .line 188
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BuffetActivity;->finish()V

    .line 201
    :goto_3d
    return-void

    .line 190
    :cond_3e
    iget-object v2, p0, Lcom/buzzfeed/android/activity/BuffetActivity;->mBuffetFragment:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    if-nez v2, :cond_60

    .line 191
    invoke-static {p1}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->newInstance(Lcom/buzzfeed/android/data/Feed;)Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/buzzfeed/android/activity/BuffetActivity;->mBuffetFragment:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    .line 192
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BuffetActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 193
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f11008c

    iget-object v4, p0, Lcom/buzzfeed/android/activity/BuffetActivity;->mBuffetFragment:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    .line 194
    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 195
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 199
    :goto_5c
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/activity/BuffetActivity;->updateToolbarTitle(Lcom/buzzfeed/android/data/Feed;)V

    goto :goto_3d

    .line 197
    :cond_60
    iget-object v2, p0, Lcom/buzzfeed/android/activity/BuffetActivity;->mBuffetFragment:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    invoke-virtual {v2, p1}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->switchFeed(Lcom/buzzfeed/android/data/Feed;)V

    goto :goto_5c
.end method
