.class final Lcom/google/ads/interactivemedia/v3/a/c/f/b;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private g:J

.field private h:J


# direct methods
.method public constructor <init>(IIIIII)V
    .registers 7

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/f/b;->a:I

    .line 49
    iput p2, p0, Lcom/google/ads/interactivemedia/v3/a/c/f/b;->b:I

    .line 50
    iput p3, p0, Lcom/google/ads/interactivemedia/v3/a/c/f/b;->c:I

    .line 51
    iput p4, p0, Lcom/google/ads/interactivemedia/v3/a/c/f/b;->d:I

    .line 52
    iput p5, p0, Lcom/google/ads/interactivemedia/v3/a/c/f/b;->e:I

    .line 53
    iput p6, p0, Lcom/google/ads/interactivemedia/v3/a/c/f/b;->f:I

    .line 54
    return-void
.end method


# virtual methods
.method public a()J
    .registers 5

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/f/b;->h:J

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/f/b;->d:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    .line 59
    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/f/b;->b:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public a(J)J
    .registers 8

    .prologue
    .line 84
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/f/b;->c:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 86
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/f/b;->d:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/f/b;->d:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/f/b;->g:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public a(JJ)V
    .registers 6

    .prologue
    .line 101
    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/f/b;->g:J

    .line 102
    iput-wide p3, p0, Lcom/google/ads/interactivemedia/v3/a/c/f/b;->h:J

    .line 103
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 64
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/f/b;->d:I

    return v0
.end method

.method public b(J)J
    .registers 8

    .prologue
    .line 91
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p1

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/f/b;->c:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public c()I
    .registers 3

    .prologue
    .line 69
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/f/b;->b:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/f/b;->e:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/f/b;->a:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 74
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/f/b;->b:I

    return v0
.end method

.method public e()I
    .registers 2

    .prologue
    .line 79
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/f/b;->a:I

    return v0
.end method

.method public f()Z
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 96
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/f/b;->g:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/f/b;->h:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public g()I
    .registers 2

    .prologue
    .line 107
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/f/b;->f:I

    return v0
.end method
