.class final Lcom/google/ads/interactivemedia/v3/b/b/a/n$16;
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
        "Ljava/net/InetAddress;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 540
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/v;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/b/d/a;)Ljava/net/InetAddress;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 543
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->f()Lcom/google/ads/interactivemedia/v3/b/d/b;

    move-result-object v0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/b/d/b;->i:Lcom/google/ads/interactivemedia/v3/b/d/b;

    if-ne v0, v1, :cond_d

    .line 544
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->j()V

    .line 545
    const/4 v0, 0x0

    .line 548
    :goto_c
    return-object v0

    :cond_d
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_c
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/b/d/c;Ljava/net/InetAddress;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 552
    if-nez p2, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/b/d/c;->b(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/b/d/c;

    .line 553
    return-void

    .line 552
    :cond_7
    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public synthetic read(Lcom/google/ads/interactivemedia/v3/b/d/a;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 540
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/b/b/a/n$16;->a(Lcom/google/ads/interactivemedia/v3/b/d/a;)Ljava/net/InetAddress;

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
    .line 540
    check-cast p2, Ljava/net/InetAddress;

    invoke-virtual {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/b/b/a/n$16;->a(Lcom/google/ads/interactivemedia/v3/b/d/c;Ljava/net/InetAddress;)V

    return-void
.end method