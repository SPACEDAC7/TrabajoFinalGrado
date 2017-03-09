.class public abstract Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;
.super Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;
.source "VCRTextureViewPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter$SurfaceTextureListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mListener:Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter$SurfaceTextureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter",
            "<TT;>.SurfaceTexture",
            "Listener;"
        }
    .end annotation
.end field

.field protected mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected mTargetView:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected mTextureView:Landroid/view/TextureView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;, "Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter<TT;>;"
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v0, Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter$SurfaceTextureListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter$SurfaceTextureListener;-><init>(Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter$1;)V

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;->mListener:Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter$SurfaceTextureListener;

    .line 35
    return-void
.end method

.method private isReadyForSurfaceTextureAttach()Z
    .registers 2

    .prologue
    .line 126
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;, "Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter<TT;>;"
    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/buzzfeed/toolkit/util/VersionUtil;->hasJellyBeanMR2()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method protected clearSurfaceTextureListener()V
    .registers 3

    .prologue
    .line 99
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;, "Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter<TT;>;"
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;->mTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_a

    .line 100
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;->mTextureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 102
    :cond_a
    return-void
.end method

.method public getTargetView()Landroid/view/View;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;, "Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter<TT;>;"
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;->mTargetView:Landroid/view/View;

    return-object v0
.end method

.method public isReadyToPlay()Z
    .registers 2

    .prologue
    .line 88
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;, "Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter<TT;>;"
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;->mPlayWhenReady:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method protected abstract onBindTextureView(Landroid/view/View;)Landroid/view/TextureView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/view/TextureView;"
        }
    .end annotation
.end method

.method protected onPlayerReleased(J)V
    .registers 4
    .param p1, "playbackPostion"    # J

    .prologue
    .line 114
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;, "Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter<TT;>;"
    invoke-super {p0, p1, p2}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->onPlayerReleased(J)V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 116
    return-void
.end method

.method protected onSurfaceTextureRestored()V
    .registers 1

    .prologue
    .line 110
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;, "Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter<TT;>;"
    return-void
.end method

.method public setTargetView(Landroid/view/View;)V
    .registers 5
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;, "Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter<TT;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;->mTargetView:Landroid/view/View;

    if-ne v1, p1, :cond_5

    .line 73
    :cond_4
    :goto_4
    return-void

    .line 49
    :cond_5
    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;->clearSurfaceTextureListener()V

    .line 51
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;->mTargetView:Landroid/view/View;

    .line 53
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;->mTargetView:Landroid/view/View;

    if-eqz v1, :cond_62

    .line 54
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;->mTargetView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;->onBindTextureView(Landroid/view/View;)Landroid/view/TextureView;

    move-result-object v1

    iput-object v1, p0, Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;->mTextureView:Landroid/view/TextureView;

    .line 55
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;->mTextureView:Landroid/view/TextureView;

    const-string v2, "TextureView must not be null."

    invoke-static {v1, v2}, Lcom/buzzfeed/toolkit/util/EZUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;->mTextureView:Landroid/view/TextureView;

    iget-object v2, p0, Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;->mListener:Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter$SurfaceTextureListener;

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 59
    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;->isReadyForSurfaceTextureAttach()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 60
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;->mTextureView:Landroid/view/TextureView;

    .line 61
    invoke-virtual {v2}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    .line 60
    invoke-static {v1, v2}, Lcom/google/android/exoplayer/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 62
    .local v0, "areSameSurfaces":Z
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_4

    if-nez v0, :cond_4

    .line 63
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;->mTextureView:Landroid/view/TextureView;

    iget-object v2, p0, Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 64
    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;->onSurfaceTextureRestored()V

    goto :goto_4

    .line 66
    .end local v0    # "areSameSurfaces":Z
    :cond_47
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 67
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iput-object v1, p0, Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 68
    new-instance v1, Landroid/view/Surface;

    iget-object v2, p0, Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;->setSurface(Landroid/view/Surface;)V

    goto :goto_4

    .line 71
    :cond_62
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;->mTextureView:Landroid/view/TextureView;

    goto :goto_4
.end method
