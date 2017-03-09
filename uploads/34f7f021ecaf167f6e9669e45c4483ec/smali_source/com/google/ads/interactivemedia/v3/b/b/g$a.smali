.class Lcom/google/ads/interactivemedia/v3/b/b/g$a;
.super Ljava/util/AbstractSet;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/b/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/b/b/g;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/b/b/g;)V
    .registers 2

    .prologue
    .line 560
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/b/g$a;->a:Lcom/google/ads/interactivemedia/v3/b/b/g;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 591
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/g$a;->a:Lcom/google/ads/interactivemedia/v3/b/b/g;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/b/b/g;->clear()V

    .line 592
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 574
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/g$a;->a:Lcom/google/ads/interactivemedia/v3/b/b/g;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/b/b/g;->a(Ljava/util/Map$Entry;)Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 566
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/b/g$a$1;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/b/b/g$a$1;-><init>(Lcom/google/ads/interactivemedia/v3/b/b/g$a;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 578
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-nez v2, :cond_7

    .line 587
    :cond_6
    :goto_6
    return v0

    .line 582
    :cond_7
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/b/g$a;->a:Lcom/google/ads/interactivemedia/v3/b/b/g;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v2, p1}, Lcom/google/ads/interactivemedia/v3/b/b/g;->a(Ljava/util/Map$Entry;)Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    move-result-object v2

    .line 583
    if-eqz v2, :cond_6

    .line 586
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/g$a;->a:Lcom/google/ads/interactivemedia/v3/b/b/g;

    invoke-virtual {v0, v2, v1}, Lcom/google/ads/interactivemedia/v3/b/b/g;->a(Lcom/google/ads/interactivemedia/v3/b/b/g$d;Z)V

    move v0, v1

    .line 587
    goto :goto_6
.end method

.method public size()I
    .registers 2

    .prologue
    .line 562
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/g$a;->a:Lcom/google/ads/interactivemedia/v3/b/b/g;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/b/b/g;->c:I

    return v0
.end method
