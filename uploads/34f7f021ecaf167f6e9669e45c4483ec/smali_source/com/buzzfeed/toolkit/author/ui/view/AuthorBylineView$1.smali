.class Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView$1;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "AuthorBylineView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView;->populateFrom(Lcom/buzzfeed/toolkit/content/AuthorContent;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/SimpleTarget",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView;


# direct methods
.method constructor <init>(Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView;II)V
    .registers 4
    .param p1, "this$0"    # Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView;
    .param p2, "x0"    # I
    .param p3, "x1"    # I

    .prologue
    .line 80
    iput-object p1, p0, Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView$1;->this$0:Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView;

    invoke-direct {p0, p2, p3}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>(II)V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "errorDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 88
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/target/SimpleTarget;->onLoadFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V

    .line 89
    iget-object v0, p0, Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView$1;->this$0:Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView;

    # getter for: Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView;->mCircleImageView:Lcom/buzzfeed/toolkit/ui/view/CircularImageView;
    invoke-static {v0}, Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView;->access$000(Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView;)Lcom/buzzfeed/toolkit/ui/view/CircularImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView$1;->this$0:Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView;

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/buzzfeed/toolkit/R$drawable;->sidemenu_avatar_placeholder:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/ui/view/CircularImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    return-void
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .registers 4
    .param p1, "resource"    # Landroid/graphics/Bitmap;
    .param p2, "glideAnimation"    # Lcom/bumptech/glide/request/animation/GlideAnimation;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView$1;->this$0:Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView;

    # getter for: Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView;->mCircleImageView:Lcom/buzzfeed/toolkit/ui/view/CircularImageView;
    invoke-static {v0}, Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView;->access$000(Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView;)Lcom/buzzfeed/toolkit/ui/view/CircularImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/buzzfeed/toolkit/ui/view/CircularImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 84
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .registers 3

    .prologue
    .line 80
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView$1;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/animation/GlideAnimation;)V

    return-void
.end method
