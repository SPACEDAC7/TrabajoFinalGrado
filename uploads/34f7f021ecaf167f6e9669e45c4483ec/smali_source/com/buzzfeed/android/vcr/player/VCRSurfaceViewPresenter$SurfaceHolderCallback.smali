.class Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter$SurfaceHolderCallback;
.super Ljava/lang/Object;
.source "VCRSurfaceViewPresenter.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceHolderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter;


# direct methods
.method private constructor <init>(Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter;)V
    .registers 2

    .prologue
    .line 76
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter$SurfaceHolderCallback;, "Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter<TT;>.SurfaceHolderCallback;"
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter$SurfaceHolderCallback;->this$0:Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter;Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter;
    .param p2, "x1"    # Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter$1;

    .prologue
    .line 76
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter$SurfaceHolderCallback;, "Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter<TT;>.SurfaceHolderCallback;"
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter$SurfaceHolderCallback;-><init>(Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter;)V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 86
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter$SurfaceHolderCallback;, "Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter<TT;>.SurfaceHolderCallback;"
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 80
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter$SurfaceHolderCallback;, "Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter<TT;>.SurfaceHolderCallback;"
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter$SurfaceHolderCallback;->this$0:Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter;->setSurface(Landroid/view/Surface;)V

    .line 81
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 90
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter$SurfaceHolderCallback;, "Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter<TT;>.SurfaceHolderCallback;"
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter$SurfaceHolderCallback;->this$0:Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/player/VCRSurfaceViewPresenter;->blockingClearSurface()V

    .line 91
    return-void
.end method
