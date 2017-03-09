.class final Lcom/google/ads/interactivemedia/v3/b/b/a/n$2;
.super Lcom/google/ads/interactivemedia/v3/b/v;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/b/b/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/ads/interactivemedia/v3/b/v",
        "<",
        "Ljava/util/concurrent/atomic/AtomicIntegerArray;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/v;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/b/d/a;)Ljava/util/concurrent/atomic/AtomicIntegerArray;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 285
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->a()V

    .line 286
    :goto_8
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->e()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 288
    :try_start_e
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->m()I

    move-result v0

    .line 289
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_19} :catch_1a

    goto :goto_8

    .line 290
    :catch_1a
    move-exception v0

    .line 291
    new-instance v1, Lcom/google/ads/interactivemedia/v3/b/t;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/b/t;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 294
    :cond_21
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->b()V

    .line 295
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 296
    new-instance v4, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicIntegerArray;-><init>(I)V

    .line 297
    const/4 v0, 0x0

    move v1, v0

    :goto_2f
    if-ge v1, v3, :cond_42

    .line 298
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->set(II)V

    .line 297
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2f

    .line 300
    :cond_42
    return-object v4
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/b/d/c;Ljava/util/concurrent/atomic/AtomicIntegerArray;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 303
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/c;->b()Lcom/google/ads/interactivemedia/v3/b/d/c;

    .line 304
    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->length()I

    move-result v1

    :goto_8
    if-ge v0, v1, :cond_15

    .line 305
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Lcom/google/ads/interactivemedia/v3/b/d/c;->a(J)Lcom/google/ads/interactivemedia/v3/b/d/c;

    .line 304
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 307
    :cond_15
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/c;->c()Lcom/google/ads/interactivemedia/v3/b/d/c;

    .line 308
    return-void
.end method

.method public synthetic read(Lcom/google/ads/interactivemedia/v3/b/d/a;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/b/b/a/n$2;->a(Lcom/google/ads/interactivemedia/v3/b/d/a;)Ljava/util/concurrent/atomic/AtomicIntegerArray;

    move-result-object v0

    return-object v0
.end method

.method public synthetic write(Lcom/google/ads/interactivemedia/v3/b/d/c;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    check-cast p2, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/b/b/a/n$2;->a(Lcom/google/ads/interactivemedia/v3/b/d/c;Ljava/util/concurrent/atomic/AtomicIntegerArray;)V

    return-void
.end method
