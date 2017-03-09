.class public Lcom/buzzfeed/mediaviewer/VideoViewerFragmentActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "VideoViewerFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/mediaviewer/VideoViewerFragmentActivity$IntentBuilder;
    }
.end annotation


# static fields
.field private static final FRAGMENT_TAG:Ljava/lang/String; = "FRAGMENT_TAG"


# instance fields
.field private mScreenshotDetector:Lcom/buzzfeed/analytics/util/ScreenshotDetector;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 30
    new-instance v0, Lcom/buzzfeed/analytics/util/ScreenshotDetector;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/buzzfeed/analytics/util/ScreenshotDetector;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragmentActivity;->mScreenshotDetector:Lcom/buzzfeed/analytics/util/ScreenshotDetector;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    sget v1, Lcom/buzzfeed/mediaviewer/R$layout;->activity_video_viewer_fragment:I

    invoke-virtual {p0, v1}, Lcom/buzzfeed/mediaviewer/VideoViewerFragmentActivity;->setContentView(I)V

    .line 37
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/VideoViewerFragmentActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "FRAGMENT_TAG"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;

    .line 38
    .local v0, "fragment":Lcom/buzzfeed/mediaviewer/VideoViewerFragment;
    if-nez v0, :cond_40

    .line 39
    new-instance v0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;

    .end local v0    # "fragment":Lcom/buzzfeed/mediaviewer/VideoViewerFragment;
    invoke-direct {v0}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;-><init>()V

    .line 40
    .restart local v0    # "fragment":Lcom/buzzfeed/mediaviewer/VideoViewerFragment;
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/VideoViewerFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/buzzfeed/toolkit/util/IntentUtils;->createBundleFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/VideoViewerFragmentActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/buzzfeed/mediaviewer/R$id;->fragmentContainer:I

    const-string v3, "FRAGMENT_TAG"

    .line 42
    invoke-virtual {v1, v2, v0, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 43
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 45
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/VideoViewerFragmentActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 48
    :cond_40
    invoke-static {}, Lcom/buzzfeed/analytics/client/VideoTracker;->getInstance()Lcom/buzzfeed/analytics/client/VideoTracker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->setVideoTracker(Lcom/buzzfeed/analytics/client/VideoTracker;)V

    .line 49
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 59
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 60
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragmentActivity;->mScreenshotDetector:Lcom/buzzfeed/analytics/util/ScreenshotDetector;

    invoke-virtual {v0}, Lcom/buzzfeed/analytics/util/ScreenshotDetector;->endDetection()V

    .line 61
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 53
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 54
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragmentActivity;->mScreenshotDetector:Lcom/buzzfeed/analytics/util/ScreenshotDetector;

    invoke-virtual {v0}, Lcom/buzzfeed/analytics/util/ScreenshotDetector;->beginDetection()V

    .line 55
    return-void
.end method
