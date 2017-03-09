.class public abstract Lcom/buzzfeed/showx/showpage/BaseShowPageActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BaseShowPageActivity.java"


# static fields
.field private static final SHOWPAGE_FRAGMENT_TAG:Ljava/lang/String; = "SHOWPAGE_FRAGMENT_TAG"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mScreenshotDetector:Lcom/buzzfeed/analytics/util/ScreenshotDetector;

.field protected mShowPageFragment:Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const-class v0, Lcom/buzzfeed/showx/showpage/BaseShowPageActivity;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/showx/showpage/BaseShowPageActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 32
    new-instance v0, Lcom/buzzfeed/analytics/util/ScreenshotDetector;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/buzzfeed/analytics/util/ScreenshotDetector;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageActivity;->mScreenshotDetector:Lcom/buzzfeed/analytics/util/ScreenshotDetector;

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .registers 3
    .param p1, "newBase"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/CalligraphyContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method protected abstract getUseShowSettingsActionForNetworkError()Z
.end method

.method protected abstract onBindShowId(Landroid/content/Intent;)Ljava/lang/String;
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 41
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/buzzfeed/showx/showpage/BaseShowPageActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".onCreate"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "TAG":Ljava/lang/String;
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    sget v5, Lcom/buzzfeed/showx/R$layout;->activity_video_show:I

    invoke-virtual {p0, v5}, Lcom/buzzfeed/showx/showpage/BaseShowPageActivity;->setContentView(I)V

    .line 44
    invoke-virtual {p0}, Lcom/buzzfeed/showx/showpage/BaseShowPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 45
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/buzzfeed/showx/showpage/BaseShowPageActivity;->onBindShowId(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    .line 47
    .local v4, "showId":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 48
    const-string v5, "Show ID is required to start this Activity. Finishing..."

    invoke-static {v0, v5}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/buzzfeed/showx/showpage/BaseShowPageActivity;->finish()V

    .line 71
    :goto_33
    return-void

    .line 53
    :cond_34
    invoke-virtual {p0}, Lcom/buzzfeed/showx/showpage/BaseShowPageActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "SHOWPAGE_FRAGMENT_TAG"

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;

    iput-object v5, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageActivity;->mShowPageFragment:Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;

    .line 55
    iget-object v5, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageActivity;->mShowPageFragment:Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;

    if-nez v5, :cond_68

    .line 56
    invoke-virtual {p0}, Lcom/buzzfeed/showx/showpage/BaseShowPageActivity;->onCreateShowPageFragment()Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;

    move-result-object v5

    iput-object v5, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageActivity;->mShowPageFragment:Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;

    .line 57
    invoke-virtual {p0}, Lcom/buzzfeed/showx/showpage/BaseShowPageActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    .line 58
    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v5

    sget v6, Lcom/buzzfeed/showx/R$id;->rootContainer:I

    iget-object v7, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageActivity;->mShowPageFragment:Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;

    const-string v8, "SHOWPAGE_FRAGMENT_TAG"

    .line 59
    invoke-virtual {v5, v6, v7, v8}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v5

    .line 60
    invoke-virtual {v5}, Landroid/app/FragmentTransaction;->commit()I

    .line 62
    invoke-virtual {p0}, Lcom/buzzfeed/showx/showpage/BaseShowPageActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 65
    :cond_68
    const-string v5, "SELECTED_SHOW_COVER_URI"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, "showCoverUri":Ljava/lang/String;
    new-instance v2, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    .line 68
    invoke-virtual {p0, v4}, Lcom/buzzfeed/showx/showpage/BaseShowPageActivity;->onCreateShowPageLoader(Ljava/lang/String;)Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;

    move-result-object v5

    .line 69
    invoke-virtual {p0}, Lcom/buzzfeed/showx/showpage/BaseShowPageActivity;->getUseShowSettingsActionForNetworkError()Z

    move-result v6

    invoke-direct {v2, p0, v3, v5, v6}, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;Z)V

    .line 70
    .local v2, "presenter":Lcom/buzzfeed/showx/showpage/ShowPagePresenter;
    iget-object v5, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageActivity;->mShowPageFragment:Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;

    invoke-virtual {v5, v2}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->setPresenter(Lcom/buzzfeed/showx/showpage/ShowPagePresenter;)V

    goto :goto_33
.end method

.method protected abstract onCreateShowPageFragment()Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;
.end method

.method protected abstract onCreateShowPageLoader(Ljava/lang/String;)Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 81
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 82
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageActivity;->mScreenshotDetector:Lcom/buzzfeed/analytics/util/ScreenshotDetector;

    invoke-virtual {v0}, Lcom/buzzfeed/analytics/util/ScreenshotDetector;->endDetection()V

    .line 83
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 75
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 76
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageActivity;->mScreenshotDetector:Lcom/buzzfeed/analytics/util/ScreenshotDetector;

    invoke-virtual {v0}, Lcom/buzzfeed/analytics/util/ScreenshotDetector;->beginDetection()V

    .line 77
    return-void
.end method
