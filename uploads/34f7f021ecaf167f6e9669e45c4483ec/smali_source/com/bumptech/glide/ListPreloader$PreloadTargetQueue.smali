.class final Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;
.super Ljava/lang/Object;
.source "ListPreloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/ListPreloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PreloadTargetQueue"
.end annotation


# instance fields
.field private final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/bumptech/glide/ListPreloader$PreloadTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 6
    .param p1, "size"    # I

    .prologue
    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    invoke-static {p1}, Lcom/bumptech/glide/util/Util;->createQueue(I)Ljava/util/Queue;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;->queue:Ljava/util/Queue;

    .line 287
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    if-ge v0, p1, :cond_1a

    .line 288
    iget-object v1, p0, Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;->queue:Ljava/util/Queue;

    new-instance v2, Lcom/bumptech/glide/ListPreloader$PreloadTarget;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/bumptech/glide/ListPreloader$PreloadTarget;-><init>(Lcom/bumptech/glide/ListPreloader$1;)V

    invoke-interface {v1, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 290
    :cond_1a
    return-void
.end method


# virtual methods
.method public next(II)Lcom/bumptech/glide/ListPreloader$PreloadTarget;
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 293
    iget-object v1, p0, Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;->queue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/ListPreloader$PreloadTarget;

    .line 294
    .local v0, "result":Lcom/bumptech/glide/ListPreloader$PreloadTarget;
    iget-object v1, p0, Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;->queue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 295
    # setter for: Lcom/bumptech/glide/ListPreloader$PreloadTarget;->photoWidth:I
    invoke-static {v0, p1}, Lcom/bumptech/glide/ListPreloader$PreloadTarget;->access$102(Lcom/bumptech/glide/ListPreloader$PreloadTarget;I)I

    .line 296
    # setter for: Lcom/bumptech/glide/ListPreloader$PreloadTarget;->photoHeight:I
    invoke-static {v0, p2}, Lcom/bumptech/glide/ListPreloader$PreloadTarget;->access$202(Lcom/bumptech/glide/ListPreloader$PreloadTarget;I)I

    .line 297
    return-object v0
.end method
