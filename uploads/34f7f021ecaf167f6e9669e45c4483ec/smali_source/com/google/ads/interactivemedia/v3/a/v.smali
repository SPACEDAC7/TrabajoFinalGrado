.class final Lcom/google/ads/interactivemedia/v3/a/v;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/a/j;


# instance fields
.field private a:Z

.field private b:J

.field private c:J


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(J)J
    .registers 8

    .prologue
    .line 73
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    sub-long/2addr v0, p1

    return-wide v0
.end method


# virtual methods
.method public a()J
    .registers 3

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/v;->a:Z

    if-eqz v0, :cond_b

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/v;->c:J

    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/a/v;->b(J)J

    move-result-wide v0

    :goto_a
    return-wide v0

    :cond_b
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/v;->b:J

    goto :goto_a
.end method

.method public a(J)V
    .registers 6

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/a/v;->b:J

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/a/v;->b(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/v;->c:J

    .line 65
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/v;->a:Z

    if-nez v0, :cond_f

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/v;->a:Z

    .line 45
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/v;->b:J

    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/a/v;->b(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/v;->c:J

    .line 47
    :cond_f
    return-void
.end method

.method public c()V
    .registers 3

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/v;->a:Z

    if-eqz v0, :cond_f

    .line 54
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/v;->c:J

    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/a/v;->b(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/v;->b:J

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/v;->a:Z

    .line 57
    :cond_f
    return-void
.end method
