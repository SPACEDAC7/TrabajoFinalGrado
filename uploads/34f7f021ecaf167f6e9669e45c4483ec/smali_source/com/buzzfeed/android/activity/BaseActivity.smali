.class public abstract Lcom/buzzfeed/android/activity/BaseActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/android/activity/BaseActivity$NetworkChangeReceiver;
    }
.end annotation


# static fields
.field public static final INTENT_FILTER_NETWORK_CHANGE:Landroid/content/IntentFilter;


# instance fields
.field private mNetworkChangeReceiver:Lcom/buzzfeed/android/activity/BaseActivity$NetworkChangeReceiver;

.field private mScreenshotDetector:Lcom/buzzfeed/analytics/util/ScreenshotDetector;

.field private mToolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    new-instance v0, Lcom/buzzfeed/android/activity/BaseActivity$1;

    invoke-direct {v0}, Lcom/buzzfeed/android/activity/BaseActivity$1;-><init>()V

    sput-object v0, Lcom/buzzfeed/android/activity/BaseActivity;->INTENT_FILTER_NETWORK_CHANGE:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 35
    new-instance v0, Lcom/buzzfeed/android/activity/BaseActivity$NetworkChangeReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/buzzfeed/android/activity/BaseActivity$NetworkChangeReceiver;-><init>(Lcom/buzzfeed/android/activity/BaseActivity;Lcom/buzzfeed/android/activity/BaseActivity$1;)V

    iput-object v0, p0, Lcom/buzzfeed/android/activity/BaseActivity;->mNetworkChangeReceiver:Lcom/buzzfeed/android/activity/BaseActivity$NetworkChangeReceiver;

    .line 36
    new-instance v0, Lcom/buzzfeed/analytics/util/ScreenshotDetector;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/buzzfeed/analytics/util/ScreenshotDetector;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/buzzfeed/android/activity/BaseActivity;->mScreenshotDetector:Lcom/buzzfeed/analytics/util/ScreenshotDetector;

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .registers 3
    .param p1, "newBase"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/CalligraphyContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method protected configureToolbar(Landroid/support/v7/widget/Toolbar;)V
    .registers 4
    .param p1, "toolbar"    # Landroid/support/v7/widget/Toolbar;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 76
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 77
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const v1, 0x7f03001a

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setCustomView(I)V

    .line 78
    return-void
.end method

.method protected getToolbar()Landroid/support/v7/widget/Toolbar;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BaseActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method protected onNetworkChange(Landroid/net/NetworkInfo;)V
    .registers 2
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 129
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 113
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 114
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BaseActivity;->mScreenshotDetector:Lcom/buzzfeed/analytics/util/ScreenshotDetector;

    invoke-virtual {v0}, Lcom/buzzfeed/analytics/util/ScreenshotDetector;->endDetection()V

    .line 115
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 106
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 107
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BaseActivity;->mScreenshotDetector:Lcom/buzzfeed/analytics/util/ScreenshotDetector;

    invoke-virtual {v0}, Lcom/buzzfeed/analytics/util/ScreenshotDetector;->beginDetection()V

    .line 109
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 100
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 101
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BaseActivity;->mNetworkChangeReceiver:Lcom/buzzfeed/android/activity/BaseActivity$NetworkChangeReceiver;

    sget-object v1, Lcom/buzzfeed/android/activity/BaseActivity;->INTENT_FILTER_NETWORK_CHANGE:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/buzzfeed/android/activity/BaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 102
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 119
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 120
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BaseActivity;->mNetworkChangeReceiver:Lcom/buzzfeed/android/activity/BaseActivity$NetworkChangeReceiver;

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/activity/BaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 121
    return-void
.end method

.method public setContentView(I)V
    .registers 2
    .param p1, "layoutResID"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->setContentView(I)V

    .line 56
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BaseActivity;->setUpToolBar()V

    .line 57
    return-void
.end method

.method protected setToolBarAsUp(Landroid/view/View$OnClickListener;)V
    .registers 4
    .param p1, "clickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BaseActivity;->setUpToolBar()V

    .line 85
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BaseActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0200c3

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 86
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BaseActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method

.method protected setUpToolBar()V
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BaseActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-nez v0, :cond_1d

    .line 61
    const v0, 0x7f11008d

    invoke-static {p0, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/buzzfeed/android/activity/BaseActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 62
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BaseActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_1d

    .line 63
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BaseActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/activity/BaseActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 64
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BaseActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/activity/BaseActivity;->configureToolbar(Landroid/support/v7/widget/Toolbar;)V

    .line 67
    :cond_1d
    return-void
.end method
