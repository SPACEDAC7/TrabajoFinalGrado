.class public Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;
.super Ljava/lang/Object;
.source "DrawableCrossFadeViewAnimation.java"

# interfaces
.implements Lcom/bumptech/glide/request/animation/GlideAnimation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/graphics/drawable/Drawable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/animation/GlideAnimation",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final defaultAnimation:Lcom/bumptech/glide/request/animation/GlideAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/animation/GlideAnimation",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final duration:I


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/request/animation/GlideAnimation;I)V
    .registers 3
    .param p2, "duration"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/animation/GlideAnimation",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;, "Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation<TT;>;"
    .local p1, "defaultAnimation":Lcom/bumptech/glide/request/animation/GlideAnimation;, "Lcom/bumptech/glide/request/animation/GlideAnimation<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;->defaultAnimation:Lcom/bumptech/glide/request/animation/GlideAnimation;

    .line 26
    iput p2, p0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;->duration:I

    .line 27
    return-void
.end method


# virtual methods
.method public animate(Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;)Z
    .registers 8
    .param p2, "adapter"    # Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;, "Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation<TT;>;"
    .local p1, "current":Landroid/graphics/drawable/Drawable;, "TT;"
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 44
    invoke-interface {p2}, Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 45
    .local v0, "previous":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_20

    .line 46
    new-instance v1, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v4, v3

    aput-object p1, v4, v2

    invoke-direct {v1, v4}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 47
    .local v1, "transitionDrawable":Landroid/graphics/drawable/TransitionDrawable;
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 48
    iget v3, p0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;->duration:I

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 49
    invoke-interface {p2, v1}, Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    .end local v1    # "transitionDrawable":Landroid/graphics/drawable/TransitionDrawable;
    :goto_1f
    return v2

    .line 52
    :cond_20
    iget-object v2, p0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;->defaultAnimation:Lcom/bumptech/glide/request/animation/GlideAnimation;

    invoke-interface {v2, p1, p2}, Lcom/bumptech/glide/request/animation/GlideAnimation;->animate(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;)Z

    move v2, v3

    .line 53
    goto :goto_1f
.end method

.method public bridge synthetic animate(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;)Z
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;

    .prologue
    .line 14
    .local p0, "this":Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;, "Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation<TT;>;"
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;->animate(Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;)Z

    move-result v0

    return v0
.end method
