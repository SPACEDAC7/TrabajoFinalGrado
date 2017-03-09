.class public final Lcom/google/ads/interactivemedia/v3/b/o;
.super Lcom/google/ads/interactivemedia/v3/b/l;
.source "IMASDK"


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/b/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/b/b/g",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/b/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/l;-><init>()V

    .line 33
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/b/g;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/b/b/g;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/o;->a:Lcom/google/ads/interactivemedia/v3/b/b/g;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/b/l;)V
    .registers 4

    .prologue
    .line 54
    if-nez p2, :cond_4

    .line 55
    sget-object p2, Lcom/google/ads/interactivemedia/v3/b/n;->a:Lcom/google/ads/interactivemedia/v3/b/n;

    .line 57
    :cond_4
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/o;->a:Lcom/google/ads/interactivemedia/v3/b/b/g;

    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/b/b/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 196
    if-eq p1, p0, :cond_12

    instance-of v0, p1, Lcom/google/ads/interactivemedia/v3/b/o;

    if-eqz v0, :cond_14

    check-cast p1, Lcom/google/ads/interactivemedia/v3/b/o;

    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/b/o;->a:Lcom/google/ads/interactivemedia/v3/b/b/g;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/o;->a:Lcom/google/ads/interactivemedia/v3/b/b/g;

    .line 197
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/b/g;->equals(Ljava/lang/Object;)Z

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

.method public hashCode()I
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/o;->a:Lcom/google/ads/interactivemedia/v3/b/b/g;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/b/b/g;->hashCode()I

    move-result v0

    return v0
.end method

.method public o()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/b/l;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/o;->a:Lcom/google/ads/interactivemedia/v3/b/b/g;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/b/b/g;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
