.class public interface abstract Lcom/buzzfeed/android/vcr/view/TransitionCoordinator$SharedPlayerHost;
.super Ljava/lang/Object;
.source "TransitionCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/vcr/view/TransitionCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SharedPlayerHost"
.end annotation


# virtual methods
.method public abstract getSharedElementView()Landroid/view/View;
.end method

.method public abstract getSharedSurfaceTexturePresenter()Lcom/buzzfeed/android/vcr/player/VCRSharedSurfaceTexturePresenter;
.end method

.method public abstract getSurfaceTextureLayout()Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;
.end method

.method public abstract onSharedPresenterOwnershipGained(Lcom/buzzfeed/android/vcr/player/VCRSharedSurfaceTexturePresenter;)V
.end method

.method public abstract onSharedPresenterOwnershipLoss(Lcom/buzzfeed/android/vcr/player/VCRSharedSurfaceTexturePresenter;)V
.end method
