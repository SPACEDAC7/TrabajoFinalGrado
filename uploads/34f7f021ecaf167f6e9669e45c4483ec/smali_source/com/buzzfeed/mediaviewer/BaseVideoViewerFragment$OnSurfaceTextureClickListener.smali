.class Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$OnSurfaceTextureClickListener;
.super Ljava/lang/Object;
.source "BaseVideoViewerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnSurfaceTextureClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;


# direct methods
.method private constructor <init>(Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;)V
    .registers 2

    .prologue
    .line 458
    iput-object p1, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$OnSurfaceTextureClickListener;->this$0:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;
    .param p2, "x1"    # Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$1;

    .prologue
    .line 458
    invoke-direct {p0, p1}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$OnSurfaceTextureClickListener;-><init>(Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 462
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$OnSurfaceTextureClickListener;->this$0:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;

    invoke-virtual {v0}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->isSystemUiVisible()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 463
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$OnSurfaceTextureClickListener;->this$0:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;

    invoke-virtual {v0}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->hideSystemUi()V

    .line 471
    :goto_d
    return-void

    .line 465
    :cond_e
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$OnSurfaceTextureClickListener;->this$0:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;

    iget-object v0, v0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 466
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$OnSurfaceTextureClickListener;->this$0:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;

    invoke-virtual {v0}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->showWithDelayedHide()V

    goto :goto_d

    .line 468
    :cond_1e
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$OnSurfaceTextureClickListener;->this$0:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;

    invoke-virtual {v0}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->showSystemUi()V

    goto :goto_d
.end method
