.class public abstract Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter;
.super Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;
.source "VCRSurfaceViewPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter$SurfaceHolderCallback;
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
.field private mCallback:Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter$SurfaceHolderCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter",
            "<TT;>.SurfaceHolderCallback;"
        }
    .end annotation
.end field

.field protected mSurfaceView:Landroid/view/SurfaceView;
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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter;, "Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter<TT;>;"
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v0, Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter$SurfaceHolderCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter$SurfaceHolderCallback;-><init>(Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter;Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter$1;)V

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter;->mCallback:Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter$SurfaceHolderCallback;

    .line 31
    return-void
.end method


# virtual methods
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
    .line 65
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter;, "Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter<TT;>;"
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter;->mTargetView:Landroid/view/View;

    return-object v0
.end method

.method protected abstract onBindSurfaceView(Landroid/view/View;)Landroid/view/SurfaceView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/view/SurfaceView;"
        }
    .end annotation
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
    .line 41
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter;, "Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter<TT;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter;->mTargetView:Landroid/view/View;

    if-ne v1, p1, :cond_5

    .line 61
    :cond_4
    :goto_4
    return-void

    .line 43
    :cond_5
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v1, :cond_14

    .line 44
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter;->mCallback:Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter$SurfaceHolderCallback;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 47
    :cond_14
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter;->mTargetView:Landroid/view/View;

    .line 49
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter;->mTargetView:Landroid/view/View;

    if-eqz v1, :cond_42

    .line 50
    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter;->onBindSurfaceView(Landroid/view/View;)Landroid/view/SurfaceView;

    move-result-object v1

    iput-object v1, p0, Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter;->mSurfaceView:Landroid/view/SurfaceView;

    .line 51
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter;->mSurfaceView:Landroid/view/SurfaceView;

    const-string v2, "onBindSurfaceView must return a non null value."

    invoke-static {v1, v2}, Lcom/buzzfeed/toolkit/util/EZUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter;->mCallback:Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter$SurfaceHolderCallback;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 54
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 55
    .local v0, "surface":Landroid/view/Surface;
    if-eqz v0, :cond_4

    .line 56
    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter;->setSurface(Landroid/view/Surface;)V

    goto :goto_4

    .line 59
    .end local v0    # "surface":Landroid/view/Surface;
    :cond_42
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter;->mSurfaceView:Landroid/view/SurfaceView;

    goto :goto_4
.end method
