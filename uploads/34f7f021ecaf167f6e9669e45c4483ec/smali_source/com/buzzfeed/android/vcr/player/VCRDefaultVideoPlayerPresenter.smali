.class public Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;
.super Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;
.source "VCRDefaultVideoPlayerPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter",
        "<",
        "Landroid/view/TextureView;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDummySurfaceTextureListener:Lcom/buzzfeed/android/vcr/player/ClearSurfaceTextureListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v0, Lcom/buzzfeed/android/vcr/player/ClearSurfaceTextureListener;

    invoke-direct {v0}, Lcom/buzzfeed/android/vcr/player/ClearSurfaceTextureListener;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->mDummySurfaceTextureListener:Lcom/buzzfeed/android/vcr/player/ClearSurfaceTextureListener;

    .line 20
    return-void
.end method


# virtual methods
.method protected clearSurfaceTextureListener()V
    .registers 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->mTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_b

    .line 42
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->mTextureView:Landroid/view/TextureView;

    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->mDummySurfaceTextureListener:Lcom/buzzfeed/android/vcr/player/ClearSurfaceTextureListener;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 44
    :cond_b
    return-void
.end method

.method protected onBindTextureView(Landroid/view/TextureView;)Landroid/view/TextureView;
    .registers 2
    .param p1, "view"    # Landroid/view/TextureView;

    .prologue
    .line 30
    return-object p1
.end method

.method protected bridge synthetic onBindTextureView(Landroid/view/View;)Landroid/view/TextureView;
    .registers 3

    .prologue
    .line 10
    check-cast p1, Landroid/view/TextureView;

    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->onBindTextureView(Landroid/view/TextureView;)Landroid/view/TextureView;

    move-result-object v0

    return-object v0
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->setSurface(Landroid/view/Surface;)V

    .line 25
    invoke-super {p0}, Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;->stop()V

    .line 26
    return-void
.end method
