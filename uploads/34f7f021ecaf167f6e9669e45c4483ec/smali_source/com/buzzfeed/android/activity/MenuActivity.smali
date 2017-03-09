.class abstract Lcom/buzzfeed/android/activity/MenuActivity;
.super Lcom/buzzfeed/android/activity/BaseActivity;
.source "MenuActivity.java"


# static fields
.field public static final REQUEST_CODE_LOGIN:I


# instance fields
.field protected mBookmarkManager:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;

.field protected mBuffetTracker:Lcom/buzzfeed/android/data/tracking/BuffetTracker;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/android/activity/MenuActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/buzzfeed/android/activity/MenuActivity;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/MenuActivity;->logout()V

    return-void
.end method

.method private gotoDebugSettings()V
    .registers 1

    .prologue
    .line 197
    invoke-static {p0}, Lcom/buzzfeed/android/activity/DebugSettingsActivity;->startIntent(Landroid/app/Activity;)V

    .line 198
    return-void
.end method

.method private gotoFeedback()V
    .registers 3

    .prologue
    .line 204
    iget-object v0, p0, Lcom/buzzfeed/android/activity/MenuActivity;->mBuffetTracker:Lcom/buzzfeed/android/data/tracking/BuffetTracker;

    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/MenuActivity;->getCurrentScreen()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->trackFeedbackClicked(Ljava/lang/String;)V

    .line 205
    invoke-static {p0}, Lcom/buzzfeed/android/util/BuzzUtils;->openFeedback(Landroid/app/Activity;)V

    .line 206
    return-void
.end method

.method private gotoRate()V
    .registers 3

    .prologue
    .line 212
    iget-object v0, p0, Lcom/buzzfeed/android/activity/MenuActivity;->mBuffetTracker:Lcom/buzzfeed/android/data/tracking/BuffetTracker;

    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/MenuActivity;->getCurrentScreen()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->trackRateUsClicked(Ljava/lang/String;)V

    .line 213
    invoke-static {p0}, Lcom/buzzfeed/android/util/BFRateMeUtils;->openRateApplication(Landroid/app/Activity;)V

    .line 214
    return-void
.end method

.method private gotoSettings()V
    .registers 3

    .prologue
    .line 189
    iget-object v0, p0, Lcom/buzzfeed/android/activity/MenuActivity;->mBuffetTracker:Lcom/buzzfeed/android/data/tracking/BuffetTracker;

    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/MenuActivity;->getCurrentScreen()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->trackSettingsClicked(Ljava/lang/String;)V

    .line 190
    invoke-static {p0}, Lcom/buzzfeed/android/activity/SettingsActivity;->startIntent(Landroid/app/Activity;)V

    .line 191
    return-void
.end method

.method private handleUserLoginMenuSelection(Lcom/buzzfeed/android/data/BuzzUser;)V
    .registers 4
    .param p1, "user"    # Lcom/buzzfeed/android/data/BuzzUser;

    .prologue
    .line 146
    invoke-virtual {p1}, Lcom/buzzfeed/android/data/BuzzUser;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 147
    iget-object v0, p0, Lcom/buzzfeed/android/activity/MenuActivity;->mBuffetTracker:Lcom/buzzfeed/android/data/tracking/BuffetTracker;

    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/MenuActivity;->getCurrentScreen()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->trackSignOutClicked(Ljava/lang/String;)V

    .line 148
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/MenuActivity;->showSignOutDialog()V

    .line 153
    :goto_12
    return-void

    .line 150
    :cond_13
    iget-object v0, p0, Lcom/buzzfeed/android/activity/MenuActivity;->mBuffetTracker:Lcom/buzzfeed/android/data/tracking/BuffetTracker;

    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/MenuActivity;->getCurrentScreen()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->trackSignInClicked(Ljava/lang/String;)V

    .line 151
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/MenuActivity;->login()V

    goto :goto_12
.end method

.method private launchFeedFromTag(Ljava/lang/String;)V
    .registers 5
    .param p1, "feedTag"    # Ljava/lang/String;

    .prologue
    .line 220
    invoke-static {p0}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getEdition(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "edition":Ljava/lang/String;
    invoke-static {v0}, Lcom/buzzfeed/android/navigation/FeedListProvider;->getInstance(Ljava/lang/String;)Lcom/buzzfeed/android/navigation/FeedListProvider;

    move-result-object v1

    .line 222
    .local v1, "provider":Lcom/buzzfeed/android/navigation/FeedListProvider;
    invoke-virtual {v1, p1}, Lcom/buzzfeed/android/navigation/FeedListProvider;->getFeedFromTag(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/buzzfeed/android/activity/BuffetActivity;->startIntentWithFeed(Landroid/app/Activity;Lcom/buzzfeed/android/data/Feed;)V

    .line 223
    return-void
.end method

.method private login()V
    .registers 3

    .prologue
    .line 226
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 227
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/buzzfeed/android/activity/MenuActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 228
    return-void
.end method

.method private logout()V
    .registers 4

    .prologue
    .line 231
    invoke-static {p0}, Lcom/buzzfeed/android/data/BuzzUser;->getInstance(Landroid/content/Context;)Lcom/buzzfeed/android/data/BuzzUser;

    move-result-object v0

    .line 232
    .local v0, "buzzUser":Lcom/buzzfeed/android/data/BuzzUser;
    invoke-virtual {v0, p0}, Lcom/buzzfeed/android/data/BuzzUser;->logout(Landroid/app/Activity;)V

    .line 233
    const v1, 0x7f0900ef

    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/activity/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/buzzfeed/android/util/BuzzUtils;->showToastNotification(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 234
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/MenuActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/buzzfeed/android/pushnotifications/PushNotificationTagHelper;->initializePushNotifications(Landroid/content/Context;)V

    .line 235
    invoke-static {p0}, Lcom/buzzfeed/android/util/BuzzUtils;->clearSearchSuggestions(Landroid/content/Context;)V

    .line 236
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/MenuActivity;->onUserLoginStatusChanged()V

    .line 237
    return-void
.end method

.method private showSignOutDialog()V
    .registers 4

    .prologue
    .line 167
    new-instance v0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setIcon(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900b7

    .line 168
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900b6

    .line 169
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900f2

    new-instance v2, Lcom/buzzfeed/android/activity/MenuActivity$2;

    invoke-direct {v2, p0}, Lcom/buzzfeed/android/activity/MenuActivity$2;-><init>(Lcom/buzzfeed/android/activity/MenuActivity;)V

    .line 170
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900cb

    new-instance v2, Lcom/buzzfeed/android/activity/MenuActivity$1;

    invoke-direct {v2, p0}, Lcom/buzzfeed/android/activity/MenuActivity$1;-><init>(Lcom/buzzfeed/android/activity/MenuActivity;)V

    .line 177
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 183
    return-void
.end method

.method private updateLoginMenuTitleForStatus(Lcom/buzzfeed/android/data/BuzzUser;Landroid/view/MenuItem;)V
    .registers 4
    .param p1, "user"    # Lcom/buzzfeed/android/data/BuzzUser;
    .param p2, "loginMenuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 159
    invoke-virtual {p1}, Lcom/buzzfeed/android/data/BuzzUser;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 160
    const v0, 0x7f090264

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 164
    :goto_c
    return-void

    .line 162
    :cond_d
    const v0, 0x7f0900c0

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_c
.end method


# virtual methods
.method protected dismissSearchViewIfNecessary()V
    .registers 2

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/MenuActivity;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    .line 63
    .local v0, "toolbar":Landroid/support/v7/widget/Toolbar;
    if-eqz v0, :cond_9

    .line 64
    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->collapseActionView()V

    .line 66
    :cond_9
    return-void
.end method

.method protected abstract getCurrentFeed()Lcom/buzzfeed/android/data/Feed;
.end method

.method protected abstract getCurrentScreen()Ljava/lang/String;
.end method

.method protected launchBookmarksView()V
    .registers 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/buzzfeed/android/activity/MenuActivity;->mBuffetTracker:Lcom/buzzfeed/android/data/tracking/BuffetTracker;

    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/MenuActivity;->getCurrentScreen()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->trackBookmarksClicked(Ljava/lang/String;)V

    .line 139
    const-string v0, "bookmarks"

    invoke-direct {p0, v0}, Lcom/buzzfeed/android/activity/MenuActivity;->launchFeedFromTag(Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 248
    invoke-super {p0, p1, p2, p3}, Lcom/buzzfeed/android/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 249
    if-nez p1, :cond_8

    .line 250
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/MenuActivity;->onUserLoginStatusChanged()V

    .line 252
    :cond_8
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/buzzfeed/android/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    new-instance v0, Lcom/buzzfeed/android/data/tracking/BuffetTracker;

    invoke-static {}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->getInstance()Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    move-result-object v1

    .line 46
    invoke-static {}, Lcom/buzzfeed/analytics/client/DustbusterClient;->getInstance()Lcom/buzzfeed/analytics/client/DustbusterClient;

    move-result-object v2

    invoke-static {p0}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getEdition(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;-><init>(Landroid/content/Context;Lcom/buzzfeed/analytics/client/BuzzFeedTracker;Lcom/buzzfeed/analytics/client/DustbusterClient;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/buzzfeed/android/activity/MenuActivity;->mBuffetTracker:Lcom/buzzfeed/android/data/tracking/BuffetTracker;

    .line 48
    invoke-static {p0}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->getInstance(Landroid/content/Context;)Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/activity/MenuActivity;->mBookmarkManager:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;

    .line 49
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/buzzfeed/android/activity/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 71
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/MenuActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 72
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v3, 0x7f120003

    invoke-virtual {v0, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 75
    invoke-static {}, Lcom/buzzfeed/android/data/EnvironmentConfig;->isProductionBuild()Z

    move-result v3

    if-nez v3, :cond_19

    .line 76
    const v3, 0x7f120004

    invoke-virtual {v0, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 79
    :cond_19
    const-string v3, "search"

    invoke-virtual {p0, v3}, Lcom/buzzfeed/android/activity/MenuActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 80
    .local v1, "searchManager":Landroid/app/SearchManager;
    const v3, 0x7f110233

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/SearchView;

    .line 81
    .local v2, "searchView":Landroid/support/v7/widget/SearchView;
    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SearchView;->setMaxWidth(I)V

    .line 82
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/MenuActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 83
    const/4 v3, 0x1

    return v3
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .registers 5
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 95
    if-eqz p2, :cond_b

    iget-object v0, p0, Lcom/buzzfeed/android/activity/MenuActivity;->mBuffetTracker:Lcom/buzzfeed/android/data/tracking/BuffetTracker;

    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/MenuActivity;->getCurrentScreen()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->trackOverflowMenuOpened(Ljava/lang/String;)V

    .line 96
    :cond_b
    invoke-super {p0, p1, p2}, Lcom/buzzfeed/android/activity/BaseActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 101
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 102
    .local v0, "itemId":I
    packed-switch v0, :pswitch_data_42

    .line 133
    invoke-super {p0, p1}, Lcom/buzzfeed/android/activity/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_c
    return v2

    .line 104
    :pswitch_d
    iget-object v3, p0, Lcom/buzzfeed/android/activity/MenuActivity;->mBuffetTracker:Lcom/buzzfeed/android/data/tracking/BuffetTracker;

    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/MenuActivity;->getCurrentScreen()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->trackSearchClicked(Ljava/lang/String;)V

    goto :goto_c

    .line 107
    :pswitch_17
    invoke-static {p0}, Lcom/buzzfeed/android/data/BuzzUser;->getInstance(Landroid/content/Context;)Lcom/buzzfeed/android/data/BuzzUser;

    move-result-object v1

    .line 108
    .local v1, "user":Lcom/buzzfeed/android/data/BuzzUser;
    invoke-direct {p0, v1}, Lcom/buzzfeed/android/activity/MenuActivity;->handleUserLoginMenuSelection(Lcom/buzzfeed/android/data/BuzzUser;)V

    .line 109
    invoke-direct {p0, v1, p1}, Lcom/buzzfeed/android/activity/MenuActivity;->updateLoginMenuTitleForStatus(Lcom/buzzfeed/android/data/BuzzUser;Landroid/view/MenuItem;)V

    goto :goto_c

    .line 112
    .end local v1    # "user":Lcom/buzzfeed/android/data/BuzzUser;
    :pswitch_22
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/MenuActivity;->gotoSettings()V

    goto :goto_c

    .line 115
    :pswitch_26
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/MenuActivity;->gotoDebugSettings()V

    goto :goto_c

    .line 118
    :pswitch_2a
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/MenuActivity;->gotoFeedback()V

    goto :goto_c

    .line 121
    :pswitch_2e
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/MenuActivity;->gotoRate()V

    goto :goto_c

    .line 124
    :pswitch_32
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/MenuActivity;->launchBookmarksView()V

    goto :goto_c

    .line 127
    :pswitch_36
    const-string v3, "local_weaver"

    invoke-direct {p0, v3}, Lcom/buzzfeed/android/activity/MenuActivity;->launchFeedFromTag(Ljava/lang/String;)V

    goto :goto_c

    .line 130
    :pswitch_3c
    const-string v3, "local_spicerack"

    invoke-direct {p0, v3}, Lcom/buzzfeed/android/activity/MenuActivity;->launchFeedFromTag(Ljava/lang/String;)V

    goto :goto_c

    .line 102
    :pswitch_data_42
    .packed-switch 0x7f110233
        :pswitch_d
        :pswitch_17
        :pswitch_32
        :pswitch_22
        :pswitch_2a
        :pswitch_2e
        :pswitch_26
        :pswitch_36
        :pswitch_3c
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 88
    invoke-static {p0}, Lcom/buzzfeed/android/data/BuzzUser;->getInstance(Landroid/content/Context;)Lcom/buzzfeed/android/data/BuzzUser;

    move-result-object v0

    .line 89
    .local v0, "user":Lcom/buzzfeed/android/data/BuzzUser;
    const v1, 0x7f110234

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/buzzfeed/android/activity/MenuActivity;->updateLoginMenuTitleForStatus(Lcom/buzzfeed/android/data/BuzzUser;Landroid/view/MenuItem;)V

    .line 90
    invoke-super {p0, p1}, Lcom/buzzfeed/android/activity/BaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 53
    invoke-super {p0}, Lcom/buzzfeed/android/activity/BaseActivity;->onResume()V

    .line 54
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/MenuActivity;->dismissSearchViewIfNecessary()V

    .line 55
    return-void
.end method

.method protected onUserLoginStatusChanged()V
    .registers 1

    .prologue
    .line 244
    return-void
.end method
