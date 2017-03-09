.class public Lcom/buzzfeed/android/vcr/player/VCRSharedSurfaceTexturePresenter;
.super Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;
.source "VCRSharedSurfaceTexturePresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter",
        "<",
        "Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mSharedSurfaceTexture:Lcom/buzzfeed/android/vcr/view/SharedSurfaceTexture;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected mSurfaceTextureLayout:Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const-class v0, Lcom/buzzfeed/android/vcr/player/VCRSharedSurfaceTexturePresenter;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/vcr/player/VCRSharedSurfaceTexturePresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-static {}, Lcom/buzzfeed/android/vcr/VCRConfig;->getInstance()Lcom/buzzfeed/android/vcr/VCRConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/VCRConfig;->getGlobalPositionCache()Lcom/buzzfeed/android/vcr/toolbox/PositionCache;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/vcr/player/VCRSharedSurfaceTexturePresenter;->setPositionCache(Lcom/buzzfeed/android/vcr/toolbox/PositionCache;)V

    .line 24
    return-void
.end method


# virtual methods
.method public detachSharedSurfaceTexture()V
    .registers 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRSharedSurfaceTexturePresenter;->mSurfaceTextureLayout:Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;

    if-eqz v0, :cond_2d

    .line 51
    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/player/VCRSharedSurfaceTexturePresenter;->isReady()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/buzzfeed/android/vcr/player/VCRSharedSurfaceTexturePresenter;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".detachSharedSurfaceTexture"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "surface is being detached"

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRSharedSurfaceTexturePresenter;->mSurfaceTextureLayout:Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;->detachSurfaceTexture()Lcom/buzzfeed/android/vcr/view/SharedSurfaceTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRSharedSurfaceTexturePresenter;->mSharedSurfaceTexture:Lcom/buzzfeed/android/vcr/view/SharedSurfaceTexture;

    .line 56
    :cond_2d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRSharedSurfaceTexturePresenter;->mSurfaceTextureLayout:Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;

    .line 57
    return-void
.end method

.method public getTargetView()Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRSharedSurfaceTexturePresenter;->mSurfaceTextureLayout:Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;

    return-object v0
.end method

.method protected onPlayerReleased(J)V
    .registers 4
    .param p1, "playbackPosition"    # J

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-super {p0, p1, p2}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->onPlayerReleased(J)V

    .line 88
    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/vcr/player/VCRSharedSurfaceTexturePresenter;->setSurface(Landroid/view/Surface;)V

    .line 89
    iput-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRSharedSurfaceTexturePresenter;->mSharedSurfaceTexture:Lcom/buzzfeed/android/vcr/view/SharedSurfaceTexture;

    .line 90
    return-void
.end method

.method protected onSurfaceTextureRestored()V
    .registers 1

    .prologue
    .line 83
    return-void
.end method

.method public play()V
    .registers 3

    .prologue
    .line 61
    invoke-super {p0}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->play()V

    .line 62
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRSharedSurfaceTexturePresenter;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRSharedSurfaceTexturePresenter;->mSurfaceTextureLayout:Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;

    if-eqz v0, :cond_19

    .line 63
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/VCRSharedSurfaceTexturePresenter;->mSurfaceTextureLayout:Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;

    invoke-virtual {v1}, Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;->getSurfaceTexture()Lcom/buzzfeed/android/vcr/view/SharedSurfaceTexture;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/vcr/player/VCRSharedSurfaceTexturePresenter;->setSurface(Landroid/view/Surface;)V

    .line 65
    :cond_19
    return-void
.end method

.method public bridge synthetic setTargetView(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 15
    check-cast p1, Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;

    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/vcr/player/VCRSharedSurfaceTexturePresenter;->setTargetView(Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;)V

    return-void
.end method

.method public setTargetView(Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;)V
    .registers 5
    .param p1, "view"    # Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;

    .prologue
    .line 28
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/VCRSharedSurfaceTexturePresenter;->mSurfaceTextureLayout:Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;

    if-ne v1, p1, :cond_5

    .line 47
    :cond_4
    :goto_4
    return-void

    .line 32
    :cond_5
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/player/VCRSharedSurfaceTexturePresenter;->mSurfaceTextureLayout:Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;

    .line 34
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/VCRSharedSurfaceTexturePresenter;->mSurfaceTextureLayout:Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;

    if-eqz v1, :cond_4

    .line 36
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/VCRSharedSurfaceTexturePresenter;->mSharedSurfaceTexture:Lcom/buzzfeed/android/vcr/view/SharedSurfaceTexture;

    if-eqz v1, :cond_49

    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/player/VCRSharedSurfaceTexturePresenter;->isReady()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 37
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/VCRSharedSurfaceTexturePresenter;->mSharedSurfaceTexture:Lcom/buzzfeed/android/vcr/view/SharedSurfaceTexture;

    iget-object v2, p0, Lcom/buzzfeed/android/vcr/player/VCRSharedSurfaceTexturePresenter;->mSurfaceTextureLayout:Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;

    invoke-virtual {v2}, Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;->getSurfaceTexture()Lcom/buzzfeed/android/vcr/view/SharedSurfaceTexture;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/exoplayer/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 38
    .local v0, "areSameSurfaces":Z
    if-nez v0, :cond_4

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/buzzfeed/android/vcr/player/VCRSharedSurfaceTexturePresenter;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".setTargetView"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "surface is being re attached "

    invoke-static {v1, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/VCRSharedSurfaceTexturePresenter;->mSurfaceTextureLayout:Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;

    iget-object v2, p0, Lcom/buzzfeed/android/vcr/player/VCRSharedSurfaceTexturePresenter;->mSharedSurfaceTexture:Lcom/buzzfeed/android/vcr/view/SharedSurfaceTexture;

    invoke-virtual {v1, v2}, Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;->setSurfaceTexture(Lcom/buzzfeed/android/vcr/view/SharedSurfaceTexture;)V

    .line 41
    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/player/VCRSharedSurfaceTexturePresenter;->onSurfaceTextureRestored()V

    goto :goto_4

    .line 44
    .end local v0    # "areSameSurfaces":Z
    :cond_49
    new-instance v1, Landroid/view/Surface;

    iget-object v2, p0, Lcom/buzzfeed/android/vcr/player/VCRSharedSurfaceTexturePresenter;->mSurfaceTextureLayout:Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;

    invoke-virtual {v2}, Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;->getSurfaceTexture()Lcom/buzzfeed/android/vcr/view/SharedSurfaceTexture;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/vcr/player/VCRSharedSurfaceTexturePresenter;->setSurface(Landroid/view/Surface;)V

    goto :goto_4
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 69
    invoke-super {p0}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->stop()V

    .line 70
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/vcr/player/VCRSharedSurfaceTexturePresenter;->setSurface(Landroid/view/Surface;)V

    .line 71
    return-void
.end method
