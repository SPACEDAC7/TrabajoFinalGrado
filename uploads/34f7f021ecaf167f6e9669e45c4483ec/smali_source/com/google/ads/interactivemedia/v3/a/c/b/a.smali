.class final Lcom/google/ads/interactivemedia/v3/a/c/b/a;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/a/c/b/c$a;


# instance fields
.field private final a:J

.field private final b:I

.field private final c:J


# direct methods
.method public constructor <init>(JIJ)V
    .registers 10

    .prologue
    const-wide/16 v0, -0x1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/a;->a:J

    .line 33
    iput p3, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/a;->b:I

    .line 34
    cmp-long v2, p4, v0

    if-nez v2, :cond_10

    :goto_d
    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/a;->c:J

    .line 35
    return-void

    .line 34
    :cond_10
    invoke-virtual {p0, p4, p5}, Lcom/google/ads/interactivemedia/v3/a/c/b/a;->a(J)J

    move-result-wide v0

    goto :goto_d
.end method


# virtual methods
.method public a(J)J
    .registers 8

    .prologue
    .line 50
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/a;->a:J

    sub-long v2, p1, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x8

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/a;->b:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public a()Z
    .registers 5

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/a;->c:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public b()J
    .registers 3

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/a;->c:J

    return-wide v0
.end method

.method public b(J)J
    .registers 10

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/a;->c:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const-wide/16 v0, 0x0

    :goto_a
    return-wide v0

    .line 45
    :cond_b
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/a;->a:J

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/a;->b:I

    int-to-long v2, v2

    mul-long/2addr v2, p1

    const-wide/32 v4, 0x7a1200

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    goto :goto_a
.end method
