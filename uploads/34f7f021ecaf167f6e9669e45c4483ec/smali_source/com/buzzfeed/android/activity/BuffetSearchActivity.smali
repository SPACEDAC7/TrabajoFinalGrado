.class public Lcom/buzzfeed/android/activity/BuffetSearchActivity;
.super Lcom/buzzfeed/android/activity/MenuActivity;
.source "BuffetSearchActivity.java"


# instance fields
.field private mBuffetFragment:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

.field private mCurrentFeed:Lcom/buzzfeed/android/data/Feed;

.field private mSuggester:Landroid/provider/SearchRecentSuggestions;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/MenuActivity;-><init>()V

    return-void
.end method

.method private getSearchFeed(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed;
    .registers 5
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 89
    new-instance v1, Lcom/buzzfeed/toolkit/networking/helpers/LegacyFeedServiceHelper$SearchParamsBuilder;

    invoke-direct {v1}, Lcom/buzzfeed/toolkit/networking/helpers/LegacyFeedServiceHelper$SearchParamsBuilder;-><init>()V

    .line 90
    invoke-virtual {v1, p1}, Lcom/buzzfeed/toolkit/networking/helpers/LegacyFeedServiceHelper$SearchParamsBuilder;->query(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/LegacyFeedServiceHelper$SearchParamsBuilder;

    move-result-object v1

    .line 91
    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/networking/helpers/LegacyFeedServiceHelper$SearchParamsBuilder;->build()Ljava/util/Map;

    move-result-object v0

    .line 92
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lcom/buzzfeed/android/data/Feed$Builder;

    const-string v2, "search"

    invoke-direct {v1, v2}, Lcom/buzzfeed/android/data/Feed$Builder;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v1, v0}, Lcom/buzzfeed/android/data/Feed$Builder;->withSearchParams(Ljava/util/Map;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v1

    .line 94
    invoke-virtual {v1}, Lcom/buzzfeed/android/data/Feed$Builder;->build()Lcom/buzzfeed/android/data/Feed;

    move-result-object v1

    return-object v1
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 62
    if-eqz p1, :cond_6a

    const-string v2, "android.intent.action.SEARCH"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 63
    const-string v2, "query"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "query":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/buzzfeed/android/activity/BuffetSearchActivity;->getSearchFeed(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed;

    move-result-object v2

    iput-object v2, p0, Lcom/buzzfeed/android/activity/BuffetSearchActivity;->mCurrentFeed:Lcom/buzzfeed/android/data/Feed;

    .line 65
    iget-object v2, p0, Lcom/buzzfeed/android/activity/BuffetSearchActivity;->mBuffetFragment:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    if-nez v2, :cond_6b

    .line 66
    iget-object v2, p0, Lcom/buzzfeed/android/activity/BuffetSearchActivity;->mCurrentFeed:Lcom/buzzfeed/android/data/Feed;

    invoke-static {v2}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->newInstance(Lcom/buzzfeed/android/data/Feed;)Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/buzzfeed/android/activity/BuffetSearchActivity;->mBuffetFragment:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    .line 67
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BuffetSearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f11008c

    iget-object v4, p0, Lcom/buzzfeed/android/activity/BuffetSearchActivity;->mBuffetFragment:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 71
    :goto_3a
    iget-object v2, p0, Lcom/buzzfeed/android/activity/BuffetSearchActivity;->mBuffetTracker:Lcom/buzzfeed/android/data/tracking/BuffetTracker;

    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BuffetSearchActivity;->getCurrentScreen()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->trackSearchQuery(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v2, p0, Lcom/buzzfeed/android/activity/BuffetSearchActivity;->mSuggester:Landroid/provider/SearchRecentSuggestions;

    if-eqz v2, :cond_4d

    iget-object v2, p0, Lcom/buzzfeed/android/activity/BuffetSearchActivity;->mSuggester:Landroid/provider/SearchRecentSuggestions;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/provider/SearchRecentSuggestions;->saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_4d
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BuffetSearchActivity;->supportInvalidateOptionsMenu()V

    .line 74
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BuffetSearchActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_6a

    .line 75
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BuffetSearchActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f11008b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 76
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    .end local v0    # "query":Ljava/lang/String;
    .end local v1    # "textView":Landroid/widget/TextView;
    :cond_6a
    return-void

    .line 69
    .restart local v0    # "query":Ljava/lang/String;
    :cond_6b
    iget-object v2, p0, Lcom/buzzfeed/android/activity/BuffetSearchActivity;->mBuffetFragment:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    iget-object v3, p0, Lcom/buzzfeed/android/activity/BuffetSearchActivity;->mCurrentFeed:Lcom/buzzfeed/android/data/Feed;

    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->switchFeed(Lcom/buzzfeed/android/data/Feed;)V

    goto :goto_3a
.end method


# virtual methods
.method protected configureToolbar(Landroid/support/v7/widget/Toolbar;)V
    .registers 4
    .param p1, "toolbar"    # Landroid/support/v7/widget/Toolbar;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BuffetSearchActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 52
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BuffetSearchActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 53
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BuffetSearchActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const v1, 0x7f03001c

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setCustomView(I)V

    .line 54
    return-void
.end method

.method protected getCurrentFeed()Lcom/buzzfeed/android/data/Feed;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuffetSearchActivity;->mCurrentFeed:Lcom/buzzfeed/android/data/Feed;

    return-object v0
.end method

.method protected getCurrentScreen()Ljava/lang/String;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuffetSearchActivity;->mCurrentFeed:Lcom/buzzfeed/android/data/Feed;

    invoke-static {p0}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getEdition(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/android/util/AnalyticsUtils;->buildScreenNameFromFeed(Lcom/buzzfeed/android/data/Feed;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuffetSearchActivity;->mBuffetTracker:Lcom/buzzfeed/android/data/tracking/BuffetTracker;

    invoke-virtual {v0}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->trackBackSearchFeed()V

    .line 111
    invoke-super {p0}, Lcom/buzzfeed/android/activity/MenuActivity;->onBackPressed()V

    .line 112
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/buzzfeed/android/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/activity/BuffetSearchActivity;->setContentView(I)V

    .line 38
    new-instance v0, Lcom/buzzfeed/android/activity/BuffetSearchActivity$1;

    invoke-direct {v0, p0}, Lcom/buzzfeed/android/activity/BuffetSearchActivity$1;-><init>(Lcom/buzzfeed/android/activity/BuffetSearchActivity;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/activity/BuffetSearchActivity;->setToolBarAsUp(Landroid/view/View$OnClickListener;)V

    .line 45
    new-instance v0, Landroid/provider/SearchRecentSuggestions;

    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BuffetSearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.buzzfeed.android.data.SearchSuggester"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/buzzfeed/android/activity/BuffetSearchActivity;->mSuggester:Landroid/provider/SearchRecentSuggestions;

    .line 46
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BuffetSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/buzzfeed/android/activity/BuffetSearchActivity;->handleIntent(Landroid/content/Intent;)V

    .line 47
    return-void
.end method

.method public bridge synthetic onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/buzzfeed/android/activity/MenuActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onMenuOpened(ILandroid/view/Menu;)Z
    .registers 4

    .prologue
    .line 28
    invoke-super {p0, p1, p2}, Lcom/buzzfeed/android/activity/MenuActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/activity/BuffetSearchActivity;->handleIntent(Landroid/content/Intent;)V

    .line 59
    return-void
.end method

.method public bridge synthetic onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/buzzfeed/android/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-super {p0}, Lcom/buzzfeed/android/activity/MenuActivity;->onPause()V

    .line 84
    invoke-virtual {p0, v0, v0}, Lcom/buzzfeed/android/activity/BuffetSearchActivity;->overridePendingTransition(II)V

    .line 85
    return-void
.end method

.method public bridge synthetic onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/buzzfeed/android/activity/MenuActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
