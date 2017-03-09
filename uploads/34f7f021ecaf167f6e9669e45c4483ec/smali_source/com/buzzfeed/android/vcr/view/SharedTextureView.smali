.class public Lcom/buzzfeed/android/vcr/view/SharedTextureView;
.super Landroid/view/TextureView;
.source "SharedTextureView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/view/SharedTextureView;->initialize()V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/view/SharedTextureView;->initialize()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/view/SharedTextureView;->initialize()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 32
    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/view/SharedTextureView;->initialize()V

    .line 33
    return-void
.end method


# virtual methods
.method protected initialize()V
    .registers 2

    .prologue
    .line 45
    new-instance v0, Lcom/buzzfeed/android/vcr/view/SharedSurfaceTexture;

    invoke-direct {v0}, Lcom/buzzfeed/android/vcr/view/SharedSurfaceTexture;-><init>()V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/vcr/view/SharedTextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 46
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/view/SharedTextureView;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_e

    .line 38
    new-instance v0, Lcom/buzzfeed/android/vcr/view/SharedSurfaceTexture;

    invoke-direct {v0}, Lcom/buzzfeed/android/vcr/view/SharedSurfaceTexture;-><init>()V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/vcr/view/SharedTextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 40
    :cond_e
    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    .line 42
    return-void
.end method
