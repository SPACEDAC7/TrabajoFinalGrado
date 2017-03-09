.class final Lcom/google/ads/interactivemedia/v3/b/b/g$b;
.super Ljava/util/AbstractSet;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/b/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/b/b/g;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/b/b/g;)V
    .registers 2

    .prologue
    .line 595
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/b/g$b;->a:Lcom/google/ads/interactivemedia/v3/b/b/g;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 617
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/g$b;->a:Lcom/google/ads/interactivemedia/v3/b/b/g;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/b/b/g;->clear()V

    .line 618
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 609
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/g$b;->a:Lcom/google/ads/interactivemedia/v3/b/b/g;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/b/b/g;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 601
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/b/g$b$1;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/b/b/g$b$1;-><init>(Lcom/google/ads/interactivemedia/v3/b/b/g$b;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 613
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/g$b;->a:Lcom/google/ads/interactivemedia/v3/b/b/g;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/b/b/g;->b(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public size()I
    .registers 2

    .prologue
    .line 597
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/g$b;->a:Lcom/google/ads/interactivemedia/v3/b/b/g;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/b/b/g;->c:I

    return v0
.end method
