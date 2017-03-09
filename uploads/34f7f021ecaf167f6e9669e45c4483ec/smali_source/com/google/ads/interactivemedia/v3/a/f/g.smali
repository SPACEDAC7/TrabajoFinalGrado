.class public final Lcom/google/ads/interactivemedia/v3/a/f/g;
.super Ljava/lang/Object;
.source "IMASDK"


# direct methods
.method public static a(Lcom/google/ads/interactivemedia/v3/a/f/f;Lcom/google/ads/interactivemedia/v3/a/f/m;)J
    .registers 6

    .prologue
    .line 42
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 43
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->w()J

    move-result-wide v0

    .line 44
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/f/f;->a:I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/f/f;->b:I

    if-ne v2, v3, :cond_12

    .line 46
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/f/f;->a:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    .line 48
    :cond_12
    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/f/f;->e:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method
