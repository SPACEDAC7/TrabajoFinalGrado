.class public Lcom/buzzfeed/android/activity/BuzzCatActivity;
.super Lcom/buzzfeed/android/activity/BaseActivity;
.source "BuzzCatActivity.java"

# interfaces
.implements Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment$CatStyleParent;
.implements Lcom/buzzfeed/buzzcat/SnakeGameController$SnakeControllerParent;


# instance fields
.field private mResumeGameAlertDialog:Landroid/support/v7/app/AlertDialog;

.field private mStartDialog:Landroid/support/v7/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/android/activity/BuzzCatActivity;)Landroid/support/v7/app/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/activity/BuzzCatActivity;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzCatActivity;->mStartDialog:Landroid/support/v7/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/buzzfeed/android/activity/BuzzCatActivity;)Landroid/support/v7/app/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/activity/BuzzCatActivity;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzCatActivity;->mResumeGameAlertDialog:Landroid/support/v7/app/AlertDialog;

    return-object v0
.end method


# virtual methods
.method protected configureToolbar(Landroid/support/v7/widget/Toolbar;)V
    .registers 5
    .param p1, "toolbar"    # Landroid/support/v7/widget/Toolbar;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/buzzfeed/android/activity/BaseActivity;->configureToolbar(Landroid/support/v7/widget/Toolbar;)V

    .line 42
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BuzzCatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 43
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BuzzCatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 44
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BuzzCatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const v2, 0x7f03001c

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setCustomView(I)V

    .line 45
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BuzzCatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f11008b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 46
    .local v0, "textView":Landroid/widget/TextView;
    const v1, 0x7f090182

    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/activity/BuzzCatActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/buzzfeed/android/activity/BaseActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getTopBarColorResource()I
    .registers 2

    .prologue
    .line 57
    const v0, 0x7f100025

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/buzzfeed/android/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v1, 0x7f03001f

    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/activity/BuzzCatActivity;->setContentView(I)V

    .line 28
    new-instance v0, Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;

    invoke-direct {v0}, Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;-><init>()V

    .line 29
    .local v0, "fragment":Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BuzzCatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f110094

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 30
    invoke-static {}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->getInstance()Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    move-result-object v1

    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BuzzCatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901eb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackPageView(Ljava/lang/String;Ljava/util/Map;)V

    .line 31
    new-instance v1, Lcom/buzzfeed/android/activity/BuzzCatActivity$1;

    invoke-direct {v1, p0}, Lcom/buzzfeed/android/activity/BuzzCatActivity$1;-><init>(Lcom/buzzfeed/android/activity/BuzzCatActivity;)V

    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/activity/BuzzCatActivity;->setToolBarAsUp(Landroid/view/View$OnClickListener;)V

    .line 37
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzCatActivity;->mResumeGameAlertDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_9

    .line 109
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzCatActivity;->mResumeGameAlertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 111
    :cond_9
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzCatActivity;->mStartDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_12

    .line 112
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzCatActivity;->mStartDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 114
    :cond_12
    invoke-super {p0}, Lcom/buzzfeed/android/activity/BaseActivity;->onDestroy()V

    .line 115
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 102
    invoke-super {p0}, Lcom/buzzfeed/android/activity/BaseActivity;->onPause()V

    .line 103
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzCatActivity;->mResumeGameAlertDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzCatActivity;->mResumeGameAlertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 104
    :cond_c
    return-void
.end method

.method public quit()V
    .registers 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BuzzCatActivity;->finish()V

    .line 120
    return-void
.end method

.method public showListDialog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .registers 8
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "options"    # [Ljava/lang/String;
    .param p4, "callback"    # Landroid/widget/AdapterView$OnItemClickListener;
    .param p5, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 62
    new-instance v0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 63
    .local v0, "builder":Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;
    invoke-virtual {v0, p2}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    .line 64
    new-instance v1, Lcom/buzzfeed/android/activity/BuzzCatActivity$2;

    invoke-direct {v1, p0, p1, p4}, Lcom/buzzfeed/android/activity/BuzzCatActivity$2;-><init>(Lcom/buzzfeed/android/activity/BuzzCatActivity;Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v0, p3, v1}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setStackedListItems([Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    .line 73
    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/buzzfeed/android/activity/BuzzCatActivity;->mStartDialog:Landroid/support/v7/app/AlertDialog;

    .line 74
    iget-object v1, p0, Lcom/buzzfeed/android/activity/BuzzCatActivity;->mStartDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1, p5}, Landroid/support/v7/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 75
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BuzzCatActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_26

    .line 76
    iget-object v1, p0, Lcom/buzzfeed/android/activity/BuzzCatActivity;->mStartDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 78
    :cond_26
    return-void
.end method

.method public showSingleButtonDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .registers 7
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "positiveButton"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 82
    new-instance v0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 83
    .local v0, "builder":Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;
    invoke-virtual {v0, p1}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    .line 84
    new-instance v1, Lcom/buzzfeed/android/activity/BuzzCatActivity$3;

    invoke-direct {v1, p0, p3}, Lcom/buzzfeed/android/activity/BuzzCatActivity$3;-><init>(Lcom/buzzfeed/android/activity/BuzzCatActivity;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, p2, v1}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    .line 93
    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/buzzfeed/android/activity/BuzzCatActivity;->mResumeGameAlertDialog:Landroid/support/v7/app/AlertDialog;

    .line 94
    iget-object v1, p0, Lcom/buzzfeed/android/activity/BuzzCatActivity;->mResumeGameAlertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1, p4}, Landroid/support/v7/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 95
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BuzzCatActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_26

    .line 96
    iget-object v1, p0, Lcom/buzzfeed/android/activity/BuzzCatActivity;->mResumeGameAlertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 98
    :cond_26
    return-void
.end method
