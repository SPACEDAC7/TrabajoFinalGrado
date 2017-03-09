.class public abstract Lcom/google/ads/interactivemedia/v3/a/w;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/a/g$a;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(IJZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation

    .prologue
    .line 176
    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation

    .prologue
    .line 369
    return-void
.end method

.method protected abstract a(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation
.end method

.method protected b()Lcom/google/ads/interactivemedia/v3/a/j;
    .registers 2

    .prologue
    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract b(I)Lcom/google/ads/interactivemedia/v3/a/p;
.end method

.method final b(IJZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 158
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/w;->a:I

    if-ne v1, v0, :cond_f

    :goto_5
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/b;->b(Z)V

    .line 159
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/w;->a:I

    .line 160
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/ads/interactivemedia/v3/a/w;->a(IJZ)V

    .line 161
    return-void

    .line 158
    :cond_f
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected c()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation

    .prologue
    .line 199
    return-void
.end method

.method protected abstract c(J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation
.end method

.method protected d()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation

    .prologue
    .line 221
    return-void
.end method

.method protected abstract d(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation
.end method

.method protected abstract e()Z
.end method

.method final f(J)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 109
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/w;->a:I

    if-nez v0, :cond_15

    move v0, v1

    :goto_7
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/b;->b(Z)V

    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/a/w;->c(J)Z

    move-result v0

    if-eqz v0, :cond_17

    :goto_10
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/w;->a:I

    .line 111
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/w;->a:I

    return v0

    :cond_15
    move v0, v2

    .line 109
    goto :goto_7

    :cond_17
    move v1, v2

    .line 110
    goto :goto_10
.end method

.method protected abstract f()Z
.end method

.method protected g()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation

    .prologue
    .line 243
    return-void
.end method

.method protected abstract q()J
.end method

.method protected abstract r()J
.end method

.method protected abstract s()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation
.end method

.method protected t()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation

    .prologue
    .line 267
    return-void
.end method

.method protected abstract u()I
.end method

.method protected final v()I
    .registers 2

    .prologue
    .line 97
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/w;->a:I

    return v0
.end method

.method final w()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation

    .prologue
    .line 185
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/w;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_6
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/b;->b(Z)V

    .line 186
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/w;->a:I

    .line 187
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/w;->c()V

    .line 188
    return-void

    .line 185
    :cond_10
    const/4 v0, 0x0

    goto :goto_6
.end method

.method final x()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation

    .prologue
    .line 207
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/w;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_6
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/b;->b(Z)V

    .line 208
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/w;->a:I

    .line 209
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/w;->d()V

    .line 210
    return-void

    .line 207
    :cond_10
    const/4 v0, 0x0

    goto :goto_6
.end method

.method final y()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 229
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/w;->a:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_10

    move v0, v1

    :goto_7
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/b;->b(Z)V

    .line 230
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/w;->a:I

    .line 231
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/w;->g()V

    .line 232
    return-void

    .line 229
    :cond_10
    const/4 v0, 0x0

    goto :goto_7
.end method

.method final z()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 251
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/w;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_19

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/w;->a:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_19

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/w;->a:I

    if-eq v0, v2, :cond_19

    const/4 v0, 0x1

    :goto_10
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/b;->b(Z)V

    .line 254
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/w;->a:I

    .line 255
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/w;->t()V

    .line 256
    return-void

    .line 251
    :cond_19
    const/4 v0, 0x0

    goto :goto_10
.end method
