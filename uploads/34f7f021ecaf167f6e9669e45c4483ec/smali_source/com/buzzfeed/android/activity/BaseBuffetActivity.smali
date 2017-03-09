.class public abstract Lcom/buzzfeed/android/activity/BaseBuffetActivity;
.super Lcom/buzzfeed/android/activity/MenuActivity;
.source "BaseBuffetActivity.java"


# static fields
.field public static final KEY_BADGE:Ljava/lang/String; = "KEY_BADGE"

.field public static final KEY_CURRENT_FEED:Ljava/lang/String; = "KEY_CURRENT_FEED"

.field public static final KEY_FEED:Ljava/lang/String; = "KEY_FEED"

.field public static final KEY_VERTICAL:Ljava/lang/String; = "KEY_VERTICAL"

.field public static final KEY_WIDGET_BUZZ_URL:Ljava/lang/String; = "KEY_WIDGET_BUZZ_URL"

.field public static final KEY_WIDGET_FEED_NAME:Ljava/lang/String; = "KEY_WIDGET_FEED_NAME"

.field public static final REQUEST_CODE_LOGIN:I


# instance fields
.field protected mBuffetTracker:Lcom/buzzfeed/android/data/tracking/BuffetTracker;

.field protected mFeedListProvider:Lcom/buzzfeed/android/navigation/FeedListProvider;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/MenuActivity;-><init>()V

    return-void
.end method

.method private refreshBookmarks()V
    .registers 3

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BaseBuffetActivity;->getCurrentFeed()Lcom/buzzfeed/android/data/Feed;

    move-result-object v1

    invoke-static {v1}, Lcom/buzzfeed/android/util/FeedUtils;->isBookmarkFeed(Lcom/buzzfeed/android/data/Feed;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 79
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BaseBuffetActivity;->getCurrentBuffetFragment()Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    move-result-object v0

    .line 81
    .local v0, "fragment":Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;
    if-eqz v0, :cond_13

    .line 82
    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->reloadFeed()V

    .line 85
    .end local v0    # "fragment":Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;
    :cond_13
    return-void
.end method


# virtual methods
.method protected abstract getContentViewId()I
.end method

.method protected abstract getCurrentBuffetFragment()Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/buzzfeed/android/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BaseBuffetActivity;->getContentViewId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/activity/BaseBuffetActivity;->setContentView(I)V

    .line 48
    invoke-static {p0}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getEdition(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "edition":Ljava/lang/String;
    invoke-static {v0}, Lcom/buzzfeed/android/navigation/FeedListProvider;->getInstance(Ljava/lang/String;)Lcom/buzzfeed/android/navigation/FeedListProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/buzzfeed/android/activity/BaseBuffetActivity;->mFeedListProvider:Lcom/buzzfeed/android/navigation/FeedListProvider;

    .line 50
    new-instance v1, Lcom/buzzfeed/android/data/tracking/BuffetTracker;

    invoke-static {}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->getInstance()Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    move-result-object v2

    .line 51
    invoke-static {}, Lcom/buzzfeed/analytics/client/DustbusterClient;->getInstance()Lcom/buzzfeed/analytics/client/DustbusterClient;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;-><init>(Landroid/content/Context;Lcom/buzzfeed/analytics/client/BuzzFeedTracker;Lcom/buzzfeed/analytics/client/DustbusterClient;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/buzzfeed/android/activity/BaseBuffetActivity;->mBuffetTracker:Lcom/buzzfeed/android/data/tracking/BuffetTracker;

    .line 52
    return-void
.end method

.method public bridge synthetic onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/buzzfeed/android/activity/MenuActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onMenuOpened(ILandroid/view/Menu;)Z
    .registers 4

    .prologue
    .line 21
    invoke-super {p0, p1, p2}, Lcom/buzzfeed/android/activity/MenuActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected abstract onNavigationContentLoaded(Lcom/buzzfeed/android/navigation/NavigationModel;)V
    .param p1    # Lcom/buzzfeed/android/navigation/NavigationModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method protected onNetworkChange(Landroid/net/NetworkInfo;)V
    .registers 4
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 98
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BaseBuffetActivity;->onNetworkConnected()V

    .line 100
    :cond_b
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BaseBuffetActivity;->getCurrentBuffetFragment()Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    move-result-object v0

    .line 102
    .local v0, "fragment":Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;
    if-eqz v0, :cond_18

    .line 103
    invoke-static {p0}, Lcom/buzzfeed/toolkit/util/VideoSettings;->isInAutoplayMode(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->toggleAutoplay(Z)V

    .line 105
    :cond_18
    return-void
.end method

.method protected abstract onNetworkConnected()V
.end method

.method public bridge synthetic onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    .prologue
    .line 21
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
    .line 56
    invoke-super {p0, p1}, Lcom/buzzfeed/android/activity/MenuActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 57
    iget-object v1, p0, Lcom/buzzfeed/android/activity/BaseBuffetActivity;->mFeedListProvider:Lcom/buzzfeed/android/navigation/FeedListProvider;

    invoke-virtual {v1}, Lcom/buzzfeed/android/navigation/FeedListProvider;->getNavigationModel()Lcom/buzzfeed/android/navigation/NavigationModel;

    move-result-object v0

    .line 58
    .local v0, "navigationModel":Lcom/buzzfeed/android/navigation/NavigationModel;
    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/activity/BaseBuffetActivity;->onNavigationContentLoaded(Lcom/buzzfeed/android/navigation/NavigationModel;)V

    .line 59
    return-void
.end method

.method public bridge synthetic onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/buzzfeed/android/activity/MenuActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 63
    invoke-super {p0}, Lcom/buzzfeed/android/activity/MenuActivity;->onResume()V

    .line 64
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BaseBuffetActivity;->mBookmarkManager:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;

    invoke-virtual {v0}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->isSynced()Z

    move-result v0

    if-nez v0, :cond_e

    .line 65
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/BaseBuffetActivity;->refreshBookmarks()V

    .line 67
    :cond_e
    return-void
.end method

.method protected onUserLoginStatusChanged()V
    .registers 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/BaseBuffetActivity;->refreshBookmarks()V

    .line 75
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 90
    const-string v0, "android.intent.action.SEARCH"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 91
    const-string v0, "KEY_CURRENT_FEED"

    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BaseBuffetActivity;->getCurrentFeed()Lcom/buzzfeed/android/data/Feed;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 93
    :cond_15
    invoke-super {p0, p1}, Lcom/buzzfeed/android/activity/MenuActivity;->startActivity(Landroid/content/Intent;)V

    .line 94
    return-void
.end method

.method protected abstract switchFeed(Lcom/buzzfeed/android/data/Feed;)V
    .param p1    # Lcom/buzzfeed/android/data/Feed;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
