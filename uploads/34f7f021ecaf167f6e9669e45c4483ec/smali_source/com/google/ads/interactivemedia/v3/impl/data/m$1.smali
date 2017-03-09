.class final Lcom/google/ads/interactivemedia/v3/impl/data/m$1;
.super Lcom/google/ads/interactivemedia/v3/b/v;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/impl/data/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/ads/interactivemedia/v3/b/v",
        "<",
        "Lcom/google/ads/interactivemedia/v3/impl/data/m;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/v;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/google/ads/interactivemedia/v3/b/d/a;)Lcom/google/ads/interactivemedia/v3/impl/data/m;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->f()Lcom/google/ads/interactivemedia/v3/b/d/b;

    move-result-object v0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/b/d/b;->i:Lcom/google/ads/interactivemedia/v3/b/d/b;

    if-ne v0, v1, :cond_d

    .line 33
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->j()V

    .line 34
    const/4 v0, 0x0

    .line 36
    :goto_c
    return-object v0

    :cond_d
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/data/m;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/m;-><init>(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public bridge synthetic read(Lcom/google/ads/interactivemedia/v3/b/d/a;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/data/m$1;->read(Lcom/google/ads/interactivemedia/v3/b/d/a;)Lcom/google/ads/interactivemedia/v3/impl/data/m;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/google/ads/interactivemedia/v3/b/d/c;Lcom/google/ads/interactivemedia/v3/impl/data/m;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    if-nez p2, :cond_6

    .line 24
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/c;->f()Lcom/google/ads/interactivemedia/v3/b/d/c;

    .line 28
    :goto_5
    return-void

    .line 27
    :cond_6
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/impl/data/m;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/b/d/c;->b(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/b/d/c;

    goto :goto_5
.end method

.method public bridge synthetic write(Lcom/google/ads/interactivemedia/v3/b/d/c;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20
    check-cast p2, Lcom/google/ads/interactivemedia/v3/impl/data/m;

    invoke-virtual {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/impl/data/m$1;->write(Lcom/google/ads/interactivemedia/v3/b/d/c;Lcom/google/ads/interactivemedia/v3/impl/data/m;)V

    return-void
.end method
