.class Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter$SurfaceTextureListener;
.super Ljava/lang/Object;
.source "VCRTextureViewPresenter.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceTextureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;


# direct methods
.method private constructor <init>(Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;)V
    .registers 2

    .prologue
    .line 137
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter$SurfaceTextureListener;, "Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter<TT;>.SurfaceTextureListener;"
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter$SurfaceTextureListener;->this$0:Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;
    .param p2, "x1"    # Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter$1;

    .prologue
    .line 137
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter$SurfaceTextureListener;, "Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter<TT;>.SurfaceTextureListener;"
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter$SurfaceTextureListener;-><init>(Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;)V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 7
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 141
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter$SurfaceTextureListener;, "Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter<TT;>.SurfaceTextureListener;"
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter$SurfaceTextureListener;->this$0:Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;

    iput-object p1, v0, Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 142
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter$SurfaceTextureListener;->this$0:Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;

    new-instance v1, Landroid/view/Surface;

    iget-object v2, p0, Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter$SurfaceTextureListener;->this$0:Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;

    iget-object v2, v2, Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;->setSurface(Landroid/view/Surface;)V

    .line 143
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 3
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 152
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter$SurfaceTextureListener;, "Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter<TT;>.SurfaceTextureListener;"
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter$SurfaceTextureListener;->this$0:Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter;->blockingClearSurface()V

    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 4
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 148
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter$SurfaceTextureListener;, "Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter<TT;>.SurfaceTextureListener;"
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 159
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter$SurfaceTextureListener;, "Lcom/buzzfeed/android/vcr/player/VCRTextureViewPresenter<TT;>.SurfaceTextureListener;"
    return-void
.end method
