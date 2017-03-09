.class public Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;
.super Landroid/widget/FrameLayout;
.source "SurfaceTextureLayout.java"


# instance fields
.field private mImageView:Landroid/widget/ImageView;

.field private mSurfaceTextureListener:Lcom/buzzfeed/android/vcr/player/ClearSurfaceTextureListener;

.field private mTextureView:Landroid/view/TextureView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    new-instance v0, Lcom/buzzfeed/android/vcr/player/ClearSurfaceTextureListener;

    invoke-direct {v0}, Lcom/buzzfeed/android/vcr/player/ClearSurfaceTextureListener;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;->mSurfaceTextureListener:Lcom/buzzfeed/android/vcr/player/ClearSurfaceTextureListener;

    .line 34
    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;->initialize()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 22
    new-instance v0, Lcom/buzzfeed/android/vcr/player/ClearSurfaceTextureListener;

    invoke-direct {v0}, Lcom/buzzfeed/android/vcr/player/ClearSurfaceTextureListener;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;->mSurfaceTextureListener:Lcom/buzzfeed/android/vcr/player/ClearSurfaceTextureListener;

    .line 40
    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;->initialize()V

    .line 41
    return-void
.end method

.method private createTextureView()Landroid/view/TextureView;
    .registers 4

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 90
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/buzzfeed/android/vcr/view/SharedTextureView;

    invoke-direct {v1, v0}, Lcom/buzzfeed/android/vcr/view/SharedTextureView;-><init>(Landroid/content/Context;)V

    .line 91
    .local v1, "textureView":Landroid/view/TextureView;
    iget-object v2, p0, Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;->mSurfaceTextureListener:Lcom/buzzfeed/android/vcr/player/ClearSurfaceTextureListener;

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 92
    return-object v1
.end method

.method private initialize()V
    .registers 4

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 45
    .local v0, "context":Landroid/content/Context;
    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;->createTextureView()Landroid/view/TextureView;

    move-result-object v1

    iput-object v1, p0, Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;->mTextureView:Landroid/view/TextureView;

    .line 46
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;->addView(Landroid/view/View;)V

    .line 48
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;->mImageView:Landroid/widget/ImageView;

    .line 49
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;->mImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 50
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;->addView(Landroid/view/View;)V

    .line 51
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->bringToFront()V

    .line 52
    return-void
.end method


# virtual methods
.method public createBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public detachSurfaceTexture()Lcom/buzzfeed/android/vcr/view/SharedSurfaceTexture;
    .registers 3

    .prologue
    .line 60
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;->mTextureView:Landroid/view/TextureView;

    if-nez v1, :cond_6

    const/4 v0, 0x0

    .line 69
    :goto_5
    return-object v0

    .line 62
    :cond_6
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/vcr/view/SharedSurfaceTexture;

    .line 63
    .local v0, "surfaceTexture":Lcom/buzzfeed/android/vcr/view/SharedSurfaceTexture;
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 66
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;->removeView(Landroid/view/View;)V

    .line 67
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;->addView(Landroid/view/View;)V

    .line 68
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->bringToFront()V

    goto :goto_5
.end method

.method public getSurfaceTexture()Lcom/buzzfeed/android/vcr/view/SharedSurfaceTexture;
    .registers 3

    .prologue
    .line 101
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    instance-of v1, v1, Lcom/buzzfeed/android/vcr/view/SharedSurfaceTexture;

    if-eqz v1, :cond_13

    .line 102
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/vcr/view/SharedSurfaceTexture;

    .line 107
    .local v0, "surfaceTexture":Lcom/buzzfeed/android/vcr/view/SharedSurfaceTexture;
    :goto_12
    return-object v0

    .line 104
    .end local v0    # "surfaceTexture":Lcom/buzzfeed/android/vcr/view/SharedSurfaceTexture;
    :cond_13
    new-instance v0, Lcom/buzzfeed/android/vcr/view/SharedSurfaceTexture;

    invoke-direct {v0}, Lcom/buzzfeed/android/vcr/view/SharedSurfaceTexture;-><init>()V

    .line 105
    .restart local v0    # "surfaceTexture":Lcom/buzzfeed/android/vcr/view/SharedSurfaceTexture;
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    goto :goto_12
.end method

.method public isSurfaceTextureAvailable()Z
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method setBitmap(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 121
    if-eqz p1, :cond_12

    .line 122
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 125
    :cond_12
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->postInvalidateOnAnimation()V

    .line 126
    return-void
.end method

.method public setSurfaceTexture(Lcom/buzzfeed/android/vcr/view/SharedSurfaceTexture;)V
    .registers 4
    .param p1, "surfaceTexture"    # Lcom/buzzfeed/android/vcr/view/SharedSurfaceTexture;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;->mTextureView:Landroid/view/TextureView;

    if-nez v0, :cond_f

    .line 79
    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;->createTextureView()Landroid/view/TextureView;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;->mTextureView:Landroid/view/TextureView;

    .line 80
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;->addView(Landroid/view/View;)V

    .line 82
    :cond_f
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 83
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->invalidate()V

    .line 84
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 85
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->bringToFront()V

    .line 86
    return-void
.end method
