.class public Lcom/bumptech/glide/request/animation/NoAnimation$NoAnimationFactory;
.super Ljava/lang/Object;
.source "NoAnimation.java"

# interfaces
.implements Lcom/bumptech/glide/request/animation/GlideAnimationFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/request/animation/NoAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoAnimationFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/animation/GlideAnimationFactory",
        "<TR;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    .local p0, "this":Lcom/bumptech/glide/request/animation/NoAnimation$NoAnimationFactory;, "Lcom/bumptech/glide/request/animation/NoAnimation$NoAnimationFactory<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(ZZ)Lcom/bumptech/glide/request/animation/GlideAnimation;
    .registers 4
    .param p1, "isFromMemoryCache"    # Z
    .param p2, "isFirstResource"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lcom/bumptech/glide/request/animation/GlideAnimation",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "this":Lcom/bumptech/glide/request/animation/NoAnimation$NoAnimationFactory;, "Lcom/bumptech/glide/request/animation/NoAnimation$NoAnimationFactory<TR;>;"
    # getter for: Lcom/bumptech/glide/request/animation/NoAnimation;->NO_ANIMATION:Lcom/bumptech/glide/request/animation/NoAnimation;
    invoke-static {}, Lcom/bumptech/glide/request/animation/NoAnimation;->access$000()Lcom/bumptech/glide/request/animation/NoAnimation;

    move-result-object v0

    return-object v0
.end method
