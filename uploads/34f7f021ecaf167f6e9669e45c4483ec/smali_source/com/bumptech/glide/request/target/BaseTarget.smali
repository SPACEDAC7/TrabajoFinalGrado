.class public abstract Lcom/bumptech/glide/request/target/BaseTarget;
.super Ljava/lang/Object;
.source "BaseTarget.java"

# interfaces
.implements Lcom/bumptech/glide/request/target/Target;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/target/Target",
        "<TZ;>;"
    }
.end annotation


# instance fields
.field private request:Lcom/bumptech/glide/request/Request;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    .local p0, "this":Lcom/bumptech/glide/request/target/BaseTarget;, "Lcom/bumptech/glide/request/target/BaseTarget<TZ;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRequest()Lcom/bumptech/glide/request/Request;
    .registers 2

    .prologue
    .line 42
    .local p0, "this":Lcom/bumptech/glide/request/target/BaseTarget;, "Lcom/bumptech/glide/request/target/BaseTarget<TZ;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/target/BaseTarget;->request:Lcom/bumptech/glide/request/Request;

    return-object v0
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 91
    .local p0, "this":Lcom/bumptech/glide/request/target/BaseTarget;, "Lcom/bumptech/glide/request/target/BaseTarget<TZ;>;"
    return-void
.end method

.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "placeholder"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 51
    .local p0, "this":Lcom/bumptech/glide/request/target/BaseTarget;, "Lcom/bumptech/glide/request/target/BaseTarget<TZ;>;"
    return-void
.end method

.method public onLoadFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "errorDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 67
    .local p0, "this":Lcom/bumptech/glide/request/target/BaseTarget;, "Lcom/bumptech/glide/request/target/BaseTarget<TZ;>;"
    return-void
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "placeholder"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 59
    .local p0, "this":Lcom/bumptech/glide/request/target/BaseTarget;, "Lcom/bumptech/glide/request/target/BaseTarget<TZ;>;"
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 75
    .local p0, "this":Lcom/bumptech/glide/request/target/BaseTarget;, "Lcom/bumptech/glide/request/target/BaseTarget<TZ;>;"
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 83
    .local p0, "this":Lcom/bumptech/glide/request/target/BaseTarget;, "Lcom/bumptech/glide/request/target/BaseTarget<TZ;>;"
    return-void
.end method

.method public setRequest(Lcom/bumptech/glide/request/Request;)V
    .registers 2
    .param p1, "request"    # Lcom/bumptech/glide/request/Request;

    .prologue
    .line 34
    .local p0, "this":Lcom/bumptech/glide/request/target/BaseTarget;, "Lcom/bumptech/glide/request/target/BaseTarget<TZ;>;"
    iput-object p1, p0, Lcom/bumptech/glide/request/target/BaseTarget;->request:Lcom/bumptech/glide/request/Request;

    .line 35
    return-void
.end method
