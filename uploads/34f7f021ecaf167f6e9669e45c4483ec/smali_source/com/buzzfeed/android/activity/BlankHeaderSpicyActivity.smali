.class public Lcom/buzzfeed/android/activity/BlankHeaderSpicyActivity;
.super Lcom/buzzfeed/android/activity/SpicyActivity;
.source "BlankHeaderSpicyActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/SpicyActivity;-><init>()V

    return-void
.end method

.method public static startIntent(Landroid/app/Activity;Lcom/buzzfeed/toolkit/content/PostContent;Lcom/buzzfeed/android/data/Feed;)V
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/PostContent;
    .param p2, "feed"    # Lcom/buzzfeed/android/data/Feed;

    .prologue
    .line 19
    invoke-static {p0, p1, p2}, Lcom/buzzfeed/android/activity/BlankHeaderSpicyActivity;->getDefaultIntentBlankHeader(Landroid/app/Activity;Lcom/buzzfeed/toolkit/content/PostContent;Lcom/buzzfeed/android/data/Feed;)Landroid/content/Intent;

    move-result-object v0

    .line 20
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 21
    return-void
.end method


# virtual methods
.method protected createSpicyOptionsMenu(Landroid/view/Menu;)V
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BlankHeaderSpicyActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f120001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 36
    return-void
.end method

.method protected initLayout()V
    .registers 2

    .prologue
    .line 25
    const v0, 0x7f030026

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/activity/BlankHeaderSpicyActivity;->setContentView(I)V

    .line 26
    return-void
.end method

.method protected initSharedElementTransition()V
    .registers 1

    .prologue
    .line 31
    return-void
.end method

.method protected setUpToolBar()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    const v1, 0x7f11008d

    invoke-static {p0, v1}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 41
    .local v0, "toolbar":Landroid/support/v7/widget/Toolbar;
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 42
    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/activity/BlankHeaderSpicyActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 43
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BlankHeaderSpicyActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 44
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BlankHeaderSpicyActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 45
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BlankHeaderSpicyActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 46
    const v1, 0x7f1100a4

    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/activity/BlankHeaderSpicyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/android/ui/reactions/ReactionsView;

    iput-object v1, p0, Lcom/buzzfeed/android/activity/BlankHeaderSpicyActivity;->mReactionsView:Lcom/buzzfeed/android/ui/reactions/ReactionsView;

    .line 47
    return-void
.end method

.method protected updateBookmarkMenuButton()V
    .registers 4

    .prologue
    .line 51
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BlankHeaderSpicyActivity;->mHeaderContent:Lcom/buzzfeed/toolkit/content/PostContent;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/buzzfeed/android/activity/BlankHeaderSpicyActivity;->mHeaderContent:Lcom/buzzfeed/toolkit/content/PostContent;

    invoke-interface {v0}, Lcom/buzzfeed/toolkit/content/PostContent;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/buzzfeed/android/activity/BlankHeaderSpicyActivity;->mBookmarkMenuButton:Landroid/view/MenuItem;

    if-eqz v0, :cond_2c

    .line 52
    invoke-static {p0}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->getInstance(Landroid/content/Context;)Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/activity/BlankHeaderSpicyActivity;->mHeaderContent:Lcom/buzzfeed/toolkit/content/PostContent;

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->isBookmarked(Lcom/buzzfeed/toolkit/content/Content;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 53
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BlankHeaderSpicyActivity;->mBookmarkMenuButton:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BlankHeaderSpicyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020059

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 58
    :cond_2c
    :goto_2c
    return-void

    .line 55
    :cond_2d
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BlankHeaderSpicyActivity;->mBookmarkMenuButton:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BlankHeaderSpicyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02005b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_2c
.end method
