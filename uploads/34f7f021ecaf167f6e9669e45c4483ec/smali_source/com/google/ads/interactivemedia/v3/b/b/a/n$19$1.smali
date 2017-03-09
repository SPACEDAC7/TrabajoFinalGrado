.class Lcom/google/ads/interactivemedia/v3/b/b/a/n$19$1;
.super Lcom/google/ads/interactivemedia/v3/b/v;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/b/b/a/n$19;->a(Lcom/google/ads/interactivemedia/v3/b/f;Lcom/google/ads/interactivemedia/v3/b/c/a;)Lcom/google/ads/interactivemedia/v3/b/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/ads/interactivemedia/v3/b/v",
        "<",
        "Ljava/sql/Timestamp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/b/v;

.field final synthetic b:Lcom/google/ads/interactivemedia/v3/b/b/a/n$19;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/b/b/a/n$19;Lcom/google/ads/interactivemedia/v3/b/v;)V
    .registers 3

    .prologue
    .line 596
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/n$19$1;->b:Lcom/google/ads/interactivemedia/v3/b/b/a/n$19;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/n$19$1;->a:Lcom/google/ads/interactivemedia/v3/b/v;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/v;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/b/d/a;)Ljava/sql/Timestamp;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 598
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/n$19$1;->a:Lcom/google/ads/interactivemedia/v3/b/v;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/b/v;->read(Lcom/google/ads/interactivemedia/v3/b/d/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 599
    if-eqz v0, :cond_15

    new-instance v1, Ljava/sql/Timestamp;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    move-object v0, v1

    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/b/d/c;Ljava/sql/Timestamp;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 603
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/n$19$1;->a:Lcom/google/ads/interactivemedia/v3/b/v;

    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/b/v;->write(Lcom/google/ads/interactivemedia/v3/b/d/c;Ljava/lang/Object;)V

    .line 604
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
    .line 596
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/b/b/a/n$19$1;->a(Lcom/google/ads/interactivemedia/v3/b/d/a;)Ljava/sql/Timestamp;

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
    .line 596
    check-cast p2, Ljava/sql/Timestamp;

    invoke-virtual {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/b/b/a/n$19$1;->a(Lcom/google/ads/interactivemedia/v3/b/d/c;Ljava/sql/Timestamp;)V

    return-void
.end method
