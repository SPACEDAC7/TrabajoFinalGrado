.class final Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$7;
.super Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;
.source "SpicyGlideUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils;->loadWithColor(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;IILcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$GlideFailureListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$GlideFailureListener;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$GlideFailureListener;)V
    .registers 3
    .param p1, "x0"    # Landroid/widget/ImageView;

    .prologue
    .line 155
    iput-object p2, p0, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$7;->val$listener:Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$GlideFailureListener;

    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;-><init>(Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "errorDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 163
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->onLoadFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V

    .line 164
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$7;->val$listener:Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$GlideFailureListener;

    if-eqz v0, :cond_c

    .line 165
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$7;->val$listener:Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$GlideFailureListener;

    invoke-interface {v0}, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$GlideFailureListener;->onLoadFailed()V

    .line 167
    :cond_c
    return-void
.end method

.method public onResourceReady(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .registers 3
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
    .line 158
    .local p2, "animation":Lcom/bumptech/glide/request/animation/GlideAnimation;, "Lcom/bumptech/glide/request/animation/GlideAnimation<-Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;>;"
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->onResourceReady(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Lcom/bumptech/glide/request/animation/GlideAnimation;)V

    .line 159
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .registers 3

    .prologue
    .line 155
    check-cast p1, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {p0, p1, p2}, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$7;->onResourceReady(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Lcom/bumptech/glide/request/animation/GlideAnimation;)V

    return-void
.end method
