.class final Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$5;
.super Ljava/lang/Object;
.source "SpicyGlideUtils.java"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils;->loadImageStack(Ljava/util/Stack;Landroid/widget/ImageView;I)V
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
.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$images:Ljava/util/Stack;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Ljava/util/Stack;Landroid/widget/ImageView;I)V
    .registers 4

    .prologue
    .line 97
    iput-object p1, p0, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$5;->val$images:Ljava/util/Stack;

    iput-object p2, p0, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$5;->val$imageView:Landroid/widget/ImageView;

    iput p3, p0, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$5;->val$width:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onException(Ljava/lang/Exception;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .registers 6

    .prologue
    .line 97
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$5;->onException(Ljava/lang/Exception;Ljava/lang/String;Lcom/bumptech/glide/request/target/Target;Z)Z

    move-result v0

    return v0
.end method

.method public onException(Ljava/lang/Exception;Ljava/lang/String;Lcom/bumptech/glide/request/target/Target;Z)Z
    .registers 8
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
    .line 100
    .local p3, "target":Lcom/bumptech/glide/request/target/Target;, "Lcom/bumptech/glide/request/target/Target<Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;>;"
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$5;->val$images:Ljava/util/Stack;

    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$5;->val$imageView:Landroid/widget/ImageView;

    iget v2, p0, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$5;->val$width:I

    invoke-static {v0, v1, v2}, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils;->loadImageStack(Ljava/util/Stack;Landroid/widget/ImageView;I)V

    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public onResourceReady(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Ljava/lang/String;Lcom/bumptech/glide/request/target/Target;ZZ)Z
    .registers 7
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
    .line 106
    .local p3, "target":Lcom/bumptech/glide/request/target/Target;, "Lcom/bumptech/glide/request/target/Target<Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;ZZ)Z
    .registers 12

    .prologue
    .line 97
    move-object v1, p1

    check-cast v1, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$5;->onResourceReady(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Ljava/lang/String;Lcom/bumptech/glide/request/target/Target;ZZ)Z

    move-result v0

    return v0
.end method
