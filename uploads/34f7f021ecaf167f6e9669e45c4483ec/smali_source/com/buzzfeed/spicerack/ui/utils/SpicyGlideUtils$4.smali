.class final Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$4;
.super Ljava/lang/Object;
.source "SpicyGlideUtils.java"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils;->loadSpiceHeader(Ljava/util/Stack;IILandroid/widget/ImageView;Lcom/bumptech/glide/request/RequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/RequestListener",
        "<",
        "Ljava/lang/String;",
        "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$height:I

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$images:Ljava/util/Stack;

.field final synthetic val$requestListener:Lcom/bumptech/glide/request/RequestListener;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Ljava/util/Stack;Lcom/bumptech/glide/request/RequestListener;IILandroid/widget/ImageView;)V
    .registers 6

    .prologue
    .line 71
    iput-object p1, p0, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$4;->val$images:Ljava/util/Stack;

    iput-object p2, p0, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$4;->val$requestListener:Lcom/bumptech/glide/request/RequestListener;

    iput p3, p0, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$4;->val$width:I

    iput p4, p0, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$4;->val$height:I

    iput-object p5, p0, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$4;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onException(Ljava/lang/Exception;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .registers 6

    .prologue
    .line 71
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$4;->onException(Ljava/lang/Exception;Ljava/lang/String;Lcom/bumptech/glide/request/target/Target;Z)Z

    move-result v0

    return v0
.end method

.method public onException(Ljava/lang/Exception;Ljava/lang/String;Lcom/bumptech/glide/request/target/Target;Z)Z
    .registers 10
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "model"    # Ljava/lang/String;
    .param p4, "isFirstResource"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/request/target/Target",
            "<",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 74
    .local p3, "target":Lcom/bumptech/glide/request/target/Target;, "Lcom/bumptech/glide/request/target/Target<Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;>;"
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$4;->val$images:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-gtz v0, :cond_f

    .line 75
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$4;->val$requestListener:Lcom/bumptech/glide/request/RequestListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bumptech/glide/request/RequestListener;->onException(Ljava/lang/Exception;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z

    move-result v0

    .line 79
    :goto_e
    return v0

    .line 78
    :cond_f
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$4;->val$images:Ljava/util/Stack;

    iget v1, p0, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$4;->val$width:I

    iget v2, p0, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$4;->val$height:I

    iget-object v3, p0, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$4;->val$imageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$4;->val$requestListener:Lcom/bumptech/glide/request/RequestListener;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils;->loadSpiceHeader(Ljava/util/Stack;IILandroid/widget/ImageView;Lcom/bumptech/glide/request/RequestListener;)V

    .line 79
    const/4 v0, 0x1

    goto :goto_e
.end method

.method public onResourceReady(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Ljava/lang/String;Lcom/bumptech/glide/request/target/Target;ZZ)Z
    .registers 12
    .param p1, "resource"    # Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
    .param p2, "model"    # Ljava/lang/String;
    .param p4, "isFromMemoryCache"    # Z
    .param p5, "isFirstResource"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/request/target/Target",
            "<",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;ZZ)Z"
        }
    .end annotation

    .prologue
    .line 84
    .local p3, "target":Lcom/bumptech/glide/request/target/Target;, "Lcom/bumptech/glide/request/target/Target<Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;>;"
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$4;->val$requestListener:Lcom/bumptech/glide/request/RequestListener;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/request/RequestListener;->onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;ZZ)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;ZZ)Z
    .registers 12

    .prologue
    .line 71
    move-object v1, p1

    check-cast v1, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$4;->onResourceReady(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Ljava/lang/String;Lcom/bumptech/glide/request/target/Target;ZZ)Z

    move-result v0

    return v0
.end method
