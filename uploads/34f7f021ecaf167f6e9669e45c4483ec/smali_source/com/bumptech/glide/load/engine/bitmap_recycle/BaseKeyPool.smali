.class abstract Lcom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool;
.super Ljava/lang/Object;
.source "BaseKeyPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final MAX_SIZE:I = 0x14


# instance fields
.field private final keyPool:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 7
    .local p0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool;, "Lcom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->createQueue(I)Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool;->keyPool:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method protected abstract create()Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected get()Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 12
    .local p0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool;, "Lcom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool<TT;>;"
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool;->keyPool:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;

    .line 13
    .local v0, "result":Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;, "TT;"
    if-nez v0, :cond_e

    .line 14
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool;->create()Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;

    move-result-object v0

    .line 16
    :cond_e
    return-object v0
.end method

.method public offer(Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool;, "Lcom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool<TT;>;"
    .local p1, "key":Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;, "TT;"
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool;->keyPool:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_f

    .line 21
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool;->keyPool:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 23
    :cond_f
    return-void
.end method
