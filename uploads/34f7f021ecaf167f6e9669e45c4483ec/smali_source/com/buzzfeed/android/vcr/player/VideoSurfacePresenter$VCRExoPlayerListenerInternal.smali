.class Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$VCRExoPlayerListenerInternal;
.super Ljava/lang/Object;
.source "VideoSurfacePresenter.java"

# interfaces
.implements Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VCRExoPlayerListenerInternal"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;


# direct methods
.method private constructor <init>(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;)V
    .registers 2

    .prologue
    .line 484
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$VCRExoPlayerListenerInternal;, "Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter<TT;>.VCRExoPlayerListenerInternal;"
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$VCRExoPlayerListenerInternal;->this$0:Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;
    .param p2, "x1"    # Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$1;

    .prologue
    .line 484
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$VCRExoPlayerListenerInternal;, "Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter<TT;>.VCRExoPlayerListenerInternal;"
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$VCRExoPlayerListenerInternal;-><init>(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .registers 3
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 493
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$VCRExoPlayerListenerInternal;, "Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter<TT;>.VCRExoPlayerListenerInternal;"
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$VCRExoPlayerListenerInternal;->this$0:Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->onPlayerOnError(Ljava/lang/Exception;)V

    .line 494
    return-void
.end method

.method public onStateChanged(ZI)V
    .registers 4
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackState"    # I

    .prologue
    .line 488
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$VCRExoPlayerListenerInternal;, "Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter<TT;>.VCRExoPlayerListenerInternal;"
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$VCRExoPlayerListenerInternal;->this$0:Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;

    invoke-virtual {v0, p1, p2}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->onPlayerStateChanged(ZI)V

    .line 489
    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "unappliedRotationDegrees"    # I
    .param p4, "pixelWidthHeightRatio"    # F

    .prologue
    .line 498
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$VCRExoPlayerListenerInternal;, "Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter<TT;>.VCRExoPlayerListenerInternal;"
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$VCRExoPlayerListenerInternal;->this$0:Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->onVideoSizeChanged(IIIF)V

    .line 499
    return-void
.end method
