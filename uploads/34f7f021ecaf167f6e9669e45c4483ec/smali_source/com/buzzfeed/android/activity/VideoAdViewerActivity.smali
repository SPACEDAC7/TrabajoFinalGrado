.class public Lcom/buzzfeed/android/activity/VideoAdViewerActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "VideoAdViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/android/activity/VideoAdViewerActivity$IntentBuilder;
    }
.end annotation


# static fields
.field private static final FRAGMENT_TAG:Ljava/lang/String; = "FRAGMENT_TAG"

.field private static final SPONSORED:Ljava/lang/String; = "sponsored"


# instance fields
.field private mScreenshotDetector:Lcom/buzzfeed/analytics/util/ScreenshotDetector;

.field private mVideoAdViewerFragment:Lcom/buzzfeed/android/ui/ads/VideoAdViewerFragment;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 28
    new-instance v0, Lcom/buzzfeed/analytics/util/ScreenshotDetector;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/buzzfeed/analytics/util/ScreenshotDetector;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/buzzfeed/android/activity/VideoAdViewerActivity;->mScreenshotDetector:Lcom/buzzfeed/analytics/util/ScreenshotDetector;

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 2

    .prologue
    .line 50
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    .line 51
    iget-object v0, p0, Lcom/buzzfeed/android/activity/VideoAdViewerActivity;->mVideoAdViewerFragment:Lcom/buzzfeed/android/ui/ads/VideoAdViewerFragment;

    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/ads/VideoAdViewerFragment;->onBackPressed()V

    .line 52
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v1, 0x7f03002a

    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/activity/VideoAdViewerActivity;->setContentView(I)V

    .line 35
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/VideoAdViewerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "FRAGMENT_TAG"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/ui/ads/VideoAdViewerFragment;

    .line 36
    .local v0, "fragment":Lcom/buzzfeed/android/ui/ads/VideoAdViewerFragment;
    if-nez v0, :cond_3b

    .line 37
    new-instance v0, Lcom/buzzfeed/android/ui/ads/VideoAdViewerFragment;

    .end local v0    # "fragment":Lcom/buzzfeed/android/ui/ads/VideoAdViewerFragment;
    invoke-direct {v0}, Lcom/buzzfeed/android/ui/ads/VideoAdViewerFragment;-><init>()V

    .line 38
    .restart local v0    # "fragment":Lcom/buzzfeed/android/ui/ads/VideoAdViewerFragment;
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/VideoAdViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/buzzfeed/toolkit/util/IntentUtils;->createBundleFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/ui/ads/VideoAdViewerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/VideoAdViewerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f1100ab

    const-string v3, "FRAGMENT_TAG"

    .line 40
    invoke-virtual {v1, v2, v0, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 41
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 44
    :cond_3b
    iput-object v0, p0, Lcom/buzzfeed/android/activity/VideoAdViewerActivity;->mVideoAdViewerFragment:Lcom/buzzfeed/android/ui/ads/VideoAdViewerFragment;

    .line 45
    iget-object v1, p0, Lcom/buzzfeed/android/activity/VideoAdViewerActivity;->mVideoAdViewerFragment:Lcom/buzzfeed/android/ui/ads/VideoAdViewerFragment;

    invoke-static {}, Lcom/buzzfeed/analytics/client/VideoTracker;->getInstance()Lcom/buzzfeed/analytics/client/VideoTracker;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/buzzfeed/android/ui/ads/VideoAdViewerFragment;->setVideoTracker(Lcom/buzzfeed/analytics/client/VideoTracker;)V

    .line 46
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 62
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 63
    iget-object v0, p0, Lcom/buzzfeed/android/activity/VideoAdViewerActivity;->mScreenshotDetector:Lcom/buzzfeed/analytics/util/ScreenshotDetector;

    invoke-virtual {v0}, Lcom/buzzfeed/analytics/util/ScreenshotDetector;->endDetection()V

    .line 64
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 56
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 57
    iget-object v0, p0, Lcom/buzzfeed/android/activity/VideoAdViewerActivity;->mScreenshotDetector:Lcom/buzzfeed/analytics/util/ScreenshotDetector;

    invoke-virtual {v0}, Lcom/buzzfeed/analytics/util/ScreenshotDetector;->beginDetection()V

    .line 58
    return-void
.end method
