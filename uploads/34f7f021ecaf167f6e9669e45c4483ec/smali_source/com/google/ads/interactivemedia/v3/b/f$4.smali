.class final Lcom/google/ads/interactivemedia/v3/b/f$4;
.super Lcom/google/ads/interactivemedia/v3/b/v;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/b/f;->a(Lcom/google/ads/interactivemedia/v3/b/u;)Lcom/google/ads/interactivemedia/v3/b/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/ads/interactivemedia/v3/b/v",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 334
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/v;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/b/d/a;)Ljava/lang/Number;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 336
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->f()Lcom/google/ads/interactivemedia/v3/b/d/b;

    move-result-object v0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/b/d/b;->i:Lcom/google/ads/interactivemedia/v3/b/d/b;

    if-ne v0, v1, :cond_d

    .line 337
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->j()V

    .line 338
    const/4 v0, 0x0

    .line 340
    :goto_c
    return-object v0

    :cond_d
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->l()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_c
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/b/d/c;Ljava/lang/Number;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 343
    if-nez p2, :cond_6

    .line 344
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/c;->f()Lcom/google/ads/interactivemedia/v3/b/d/c;

    .line 348
    :goto_5
    return-void

    .line 347
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/b/d/c;->b(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/b/d/c;

    goto :goto_5
.end method

.method public synthetic read(Lcom/google/ads/interactivemedia/v3/b/d/a;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 334
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/b/f$4;->a(Lcom/google/ads/interactivemedia/v3/b/d/a;)Ljava/lang/Number;

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
    .line 334
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/b/f$4;->a(Lcom/google/ads/interactivemedia/v3/b/d/c;Ljava/lang/Number;)V

    return-void
.end method
