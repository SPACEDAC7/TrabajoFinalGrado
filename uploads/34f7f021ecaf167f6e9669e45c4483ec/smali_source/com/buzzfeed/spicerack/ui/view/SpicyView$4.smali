.class Lcom/buzzfeed/spicerack/ui/view/SpicyView$4;
.super Ljava/lang/Object;
.source "SpicyView.java"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/spicerack/ui/view/SpicyView;->populateHeader(Lcom/buzzfeed/toolkit/content/PostContent;Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionSender;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyView;


# direct methods
.method constructor <init>(Lcom/buzzfeed/spicerack/ui/view/SpicyView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView$4;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onException(Ljava/lang/Exception;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .registers 6

    .prologue
    .line 332
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/buzzfeed/spicerack/ui/view/SpicyView$4;->onException(Ljava/lang/Exception;Ljava/lang/String;Lcom/bumptech/glide/request/target/Target;Z)Z

    move-result v0

    return v0
.end method

.method public onException(Ljava/lang/Exception;Ljava/lang/String;Lcom/bumptech/glide/request/target/Target;Z)Z
    .registers 7
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
    .line 335
    .local p3, "target":Lcom/bumptech/glide/request/target/Target;, "Lcom/bumptech/glide/request/target/Target<Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;>;"
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView$4;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    iget-object v0, v0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mRecyclerView:Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;

    new-instance v1, Lcom/buzzfeed/spicerack/ui/view/SpicyView$4$1;

    invoke-direct {v1, p0}, Lcom/buzzfeed/spicerack/ui/view/SpicyView$4$1;-><init>(Lcom/buzzfeed/spicerack/ui/view/SpicyView$4;)V

    invoke-virtual {v0, v1}, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 352
    const/4 v0, 0x0

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
    .line 358
    .local p3, "target":Lcom/bumptech/glide/request/target/Target;, "Lcom/bumptech/glide/request/target/Target<Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;>;"
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView$4;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    invoke-virtual {v0}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->dismissLoading()V

    .line 359
    invoke-static {}, Lcom/buzzfeed/toolkit/util/VersionUtil;->hasLollipop()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 360
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView$4;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    # getter for: Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mSpicyTransitionStartListener:Lcom/buzzfeed/spicerack/ui/protocol/SpicyTransitionStartListener;
    invoke-static {v0}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->access$300(Lcom/buzzfeed/spicerack/ui/view/SpicyView;)Lcom/buzzfeed/spicerack/ui/protocol/SpicyTransitionStartListener;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 361
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView$4;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    # getter for: Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mSpicyTransitionStartListener:Lcom/buzzfeed/spicerack/ui/protocol/SpicyTransitionStartListener;
    invoke-static {v0}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->access$300(Lcom/buzzfeed/spicerack/ui/view/SpicyView;)Lcom/buzzfeed/spicerack/ui/protocol/SpicyTransitionStartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/buzzfeed/spicerack/ui/protocol/SpicyTransitionStartListener;->start()Z

    move-result v0

    if-nez v0, :cond_24

    .line 362
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView$4;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    invoke-virtual {v0}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->onSharedElementTransitionEnd()V

    .line 375
    :cond_24
    :goto_24
    const/4 v0, 0x0

    return v0

    .line 365
    :cond_26
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView$4;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    iget-object v0, v0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mSpicyHeaderImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 366
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView$4;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    invoke-virtual {v0}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->onSharedElementTransitionEnd()V

    goto :goto_24

    .line 368
    :cond_33
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView$4;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    iget-object v0, v0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mTransitionSender:Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionSender;

    if-eqz v0, :cond_46

    .line 369
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView$4;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    iget-object v0, v0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mSpicyHeaderFakeImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 370
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView$4;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    # invokes: Lcom/buzzfeed/spicerack/ui/view/SpicyView;->runTransition()V
    invoke-static {v0}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->access$400(Lcom/buzzfeed/spicerack/ui/view/SpicyView;)V

    goto :goto_24

    .line 372
    :cond_46
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView$4;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    invoke-virtual {v0}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->onSharedElementTransitionEnd()V

    goto :goto_24
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;ZZ)Z
    .registers 12

    .prologue
    .line 332
    move-object v1, p1

    check-cast v1, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/spicerack/ui/view/SpicyView$4;->onResourceReady(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Ljava/lang/String;Lcom/bumptech/glide/request/target/Target;ZZ)Z

    move-result v0

    return v0
.end method
