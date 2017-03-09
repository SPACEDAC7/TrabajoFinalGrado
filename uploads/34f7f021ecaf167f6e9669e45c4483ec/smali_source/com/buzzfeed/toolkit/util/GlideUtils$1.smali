.class final Lcom/buzzfeed/toolkit/util/GlideUtils$1;
.super Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;
.source "GlideUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/toolkit/util/GlideUtils;->loadImageStackWithCustomPlaceholderColor(Landroid/content/Context;Landroid/widget/ImageView;Ljava/util/Stack;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$height:I

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$urls:Ljava/util/Stack;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Landroid/widget/ImageView;Landroid/widget/ImageView;Ljava/util/Stack;Landroid/content/Context;II)V
    .registers 7
    .param p1, "x0"    # Landroid/widget/ImageView;

    .prologue
    .line 85
    iput-object p2, p0, Lcom/buzzfeed/toolkit/util/GlideUtils$1;->val$imageView:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/buzzfeed/toolkit/util/GlideUtils$1;->val$urls:Ljava/util/Stack;

    iput-object p4, p0, Lcom/buzzfeed/toolkit/util/GlideUtils$1;->val$context:Landroid/content/Context;

    iput p5, p0, Lcom/buzzfeed/toolkit/util/GlideUtils$1;->val$width:I

    iput p6, p0, Lcom/buzzfeed/toolkit/util/GlideUtils$1;->val$height:I

    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;-><init>(Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
    .registers 8
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "errorDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 96
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->onLoadFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V

    .line 97
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/GlideUtils$1;->val$urls:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_18

    .line 98
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/GlideUtils$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/buzzfeed/toolkit/util/GlideUtils$1;->val$imageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/buzzfeed/toolkit/util/GlideUtils$1;->val$urls:Ljava/util/Stack;

    iget v3, p0, Lcom/buzzfeed/toolkit/util/GlideUtils$1;->val$width:I

    iget v4, p0, Lcom/buzzfeed/toolkit/util/GlideUtils$1;->val$height:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/buzzfeed/toolkit/util/GlideUtils;->loadImageStack(Landroid/content/Context;Landroid/widget/ImageView;Ljava/util/Stack;II)V

    .line 100
    :cond_18
    return-void
.end method

.method public onResourceReady(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .registers 6
    .param p1, "resource"    # Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            "Lcom/bumptech/glide/request/animation/GlideAnimation",
            "<-",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p2, "animation":Lcom/bumptech/glide/request/animation/GlideAnimation;, "Lcom/bumptech/glide/request/animation/GlideAnimation<-Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;>;"
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->onResourceReady(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Lcom/bumptech/glide/request/animation/GlideAnimation;)V

    .line 90
    invoke-interface {p2, p1, p0}, Lcom/bumptech/glide/request/animation/GlideAnimation;->animate(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;)Z

    .line 91
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/GlideUtils$1;->val$imageView:Landroid/widget/ImageView;

    # getter for: Lcom/buzzfeed/toolkit/util/GlideUtils;->IMAGE_LOADED_TAG_ID:I
    invoke-static {}, Lcom/buzzfeed/toolkit/util/GlideUtils;->access$000()I

    move-result v1

    const-string v2, "loaded"

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 92
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .registers 3

    .prologue
    .line 85
    check-cast p1, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {p0, p1, p2}, Lcom/buzzfeed/toolkit/util/GlideUtils$1;->onResourceReady(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Lcom/bumptech/glide/request/animation/GlideAnimation;)V

    return-void
.end method
