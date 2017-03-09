.class final Lcom/buzzfeed/toolkit/util/GlideUtils$3;
.super Lcom/bumptech/glide/request/target/BitmapImageViewTarget;
.source "GlideUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/toolkit/util/GlideUtils;->loadImageStackRounded(Landroid/content/Context;Landroid/widget/ImageView;Ljava/util/Stack;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$cornerRadius:F

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$urls:Ljava/util/Stack;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;Landroid/content/Context;FLandroid/widget/ImageView;Ljava/util/Stack;)V
    .registers 6
    .param p1, "x0"    # Landroid/widget/ImageView;

    .prologue
    .line 158
    iput-object p2, p0, Lcom/buzzfeed/toolkit/util/GlideUtils$3;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/buzzfeed/toolkit/util/GlideUtils$3;->val$cornerRadius:F

    iput-object p4, p0, Lcom/buzzfeed/toolkit/util/GlideUtils$3;->val$imageView:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/buzzfeed/toolkit/util/GlideUtils$3;->val$urls:Ljava/util/Stack;

    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/target/BitmapImageViewTarget;-><init>(Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
    .registers 7
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "errorDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 176
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/target/BitmapImageViewTarget;->onLoadFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V

    .line 177
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/GlideUtils$3;->val$urls:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 178
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/GlideUtils$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/buzzfeed/toolkit/util/GlideUtils$3;->val$imageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/buzzfeed/toolkit/util/GlideUtils$3;->val$urls:Ljava/util/Stack;

    iget v3, p0, Lcom/buzzfeed/toolkit/util/GlideUtils$3;->val$cornerRadius:F

    invoke-static {v0, v1, v2, v3}, Lcom/buzzfeed/toolkit/util/GlideUtils;->loadImageStackRounded(Landroid/content/Context;Landroid/widget/ImageView;Ljava/util/Stack;F)V

    .line 180
    :cond_16
    return-void
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .registers 3
    .param p1, "resource"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/request/animation/GlideAnimation",
            "<-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 170
    .local p2, "glideAnimation":Lcom/bumptech/glide/request/animation/GlideAnimation;, "Lcom/bumptech/glide/request/animation/GlideAnimation<-Landroid/graphics/Bitmap;>;"
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/target/BitmapImageViewTarget;->onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V

    .line 171
    invoke-interface {p2, p1, p0}, Lcom/bumptech/glide/request/animation/GlideAnimation;->animate(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;)Z

    .line 172
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .registers 3

    .prologue
    .line 158
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/buzzfeed/toolkit/util/GlideUtils$3;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/animation/GlideAnimation;)V

    return-void
.end method

.method protected setResource(Landroid/graphics/Bitmap;)V
    .registers 6
    .param p1, "resource"    # Landroid/graphics/Bitmap;

    .prologue
    .line 161
    iget-object v1, p0, Lcom/buzzfeed/toolkit/util/GlideUtils$3;->val$context:Landroid/content/Context;

    .line 162
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v0

    .line 163
    .local v0, "circularBitmapDrawable":Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
    const/4 v1, 0x1

    iget v2, p0, Lcom/buzzfeed/toolkit/util/GlideUtils$3;->val$cornerRadius:F

    iget-object v3, p0, Lcom/buzzfeed/toolkit/util/GlideUtils$3;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    .line 164
    iget-object v1, p0, Lcom/buzzfeed/toolkit/util/GlideUtils$3;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 165
    return-void
.end method

.method protected bridge synthetic setResource(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 158
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/buzzfeed/toolkit/util/GlideUtils$3;->setResource(Landroid/graphics/Bitmap;)V

    return-void
.end method
