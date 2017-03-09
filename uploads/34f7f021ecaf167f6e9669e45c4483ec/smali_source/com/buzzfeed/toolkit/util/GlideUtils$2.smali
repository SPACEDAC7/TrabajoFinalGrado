.class final Lcom/buzzfeed/toolkit/util/GlideUtils$2;
.super Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;
.source "GlideUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/toolkit/util/GlideUtils;->loadImage(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ILcom/buzzfeed/toolkit/util/GlideUtils$GlideFailureListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$image:Landroid/widget/ImageView;

.field final synthetic val$listener:Lcom/buzzfeed/toolkit/util/GlideUtils$GlideFailureListener;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/buzzfeed/toolkit/util/GlideUtils$GlideFailureListener;)V
    .registers 4
    .param p1, "x0"    # Landroid/widget/ImageView;

    .prologue
    .line 127
    iput-object p2, p0, Lcom/buzzfeed/toolkit/util/GlideUtils$2;->val$image:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/buzzfeed/toolkit/util/GlideUtils$2;->val$listener:Lcom/buzzfeed/toolkit/util/GlideUtils$GlideFailureListener;

    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;-><init>(Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "errorDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 138
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->onLoadFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V

    .line 139
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/GlideUtils$2;->val$listener:Lcom/buzzfeed/toolkit/util/GlideUtils$GlideFailureListener;

    if-eqz v0, :cond_c

    .line 140
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/GlideUtils$2;->val$listener:Lcom/buzzfeed/toolkit/util/GlideUtils$GlideFailureListener;

    invoke-interface {v0}, Lcom/buzzfeed/toolkit/util/GlideUtils$GlideFailureListener;->onFailure()V

    .line 142
    :cond_c
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
    .line 131
    .local p2, "animation":Lcom/bumptech/glide/request/animation/GlideAnimation;, "Lcom/bumptech/glide/request/animation/GlideAnimation<-Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;>;"
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->onResourceReady(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Lcom/bumptech/glide/request/animation/GlideAnimation;)V

    .line 132
    invoke-interface {p2, p1, p0}, Lcom/bumptech/glide/request/animation/GlideAnimation;->animate(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;)Z

    .line 133
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/GlideUtils$2;->val$image:Landroid/widget/ImageView;

    # getter for: Lcom/buzzfeed/toolkit/util/GlideUtils;->IMAGE_LOADED_TAG_ID:I
    invoke-static {}, Lcom/buzzfeed/toolkit/util/GlideUtils;->access$000()I

    move-result v1

    const-string v2, "loaded"

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 134
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .registers 3

    .prologue
    .line 127
    check-cast p1, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {p0, p1, p2}, Lcom/buzzfeed/toolkit/util/GlideUtils$2;->onResourceReady(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Lcom/bumptech/glide/request/animation/GlideAnimation;)V

    return-void
.end method
