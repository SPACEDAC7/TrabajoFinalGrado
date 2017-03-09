.class public final Lcom/google/ads/interactivemedia/v3/b/i;
.super Lcom/google/ads/interactivemedia/v3/b/l;
.source "IMASDK"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/ads/interactivemedia/v3/b/l;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/google/ads/interactivemedia/v3/b/l;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/interactivemedia/v3/b/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/l;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/i;->a:Ljava/util/List;

    .line 41
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Number;
    .registers 3

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 197
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/i;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/b/l;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/b/l;->a()Ljava/lang/Number;

    move-result-object v0

    return-object v0

    .line 199
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/b/l;)V
    .registers 3

    .prologue
    .line 94
    if-nez p1, :cond_4

    .line 95
    sget-object p1, Lcom/google/ads/interactivemedia/v3/b/n;->a:Lcom/google/ads/interactivemedia/v3/b/n;

    .line 97
    :cond_4
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/i;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 3

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 213
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/i;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/b/l;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/b/l;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 215
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public c()D
    .registers 3

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 229
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/i;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/b/l;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/b/l;->c()D

    move-result-wide v0

    return-wide v0

    .line 231
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public d()J
    .registers 3

    .prologue
    .line 294
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 295
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/i;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/b/l;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/b/l;->d()J

    move-result-wide v0

    return-wide v0

    .line 297
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public e()I
    .registers 3

    .prologue
    .line 310
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 311
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/i;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/b/l;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/b/l;->e()I

    move-result v0

    return v0

    .line 313
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 366
    if-eq p1, p0, :cond_12

    instance-of v0, p1, Lcom/google/ads/interactivemedia/v3/b/i;

    if-eqz v0, :cond_14

    check-cast p1, Lcom/google/ads/interactivemedia/v3/b/i;

    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/b/i;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/i;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public f()Z
    .registers 3

    .prologue
    .line 358
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 359
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/i;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/b/l;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/b/l;->f()Z

    move-result v0

    return v0

    .line 361
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/ads/interactivemedia/v3/b/l;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
