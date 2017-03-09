.class public final Lcom/google/ads/interactivemedia/v3/a/c/e/m;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:J

.field private b:J

.field private volatile c:J


# direct methods
.method public constructor <init>(J)V
    .registers 6

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/m;->a:J

    .line 51
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/m;->c:J

    .line 52
    return-void
.end method

.method public static b(J)J
    .registers 6

    .prologue
    .line 102
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p0

    const-wide/32 v2, 0x15f90

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public a(J)J
    .registers 14

    .prologue
    const-wide/high16 v8, -0x8000000000000000L

    const-wide v4, 0x200000000L

    .line 75
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/m;->c:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_55

    .line 78
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/m;->c:J

    const-wide v2, 0x100000000L

    add-long/2addr v0, v2

    div-long v2, v0, v4

    .line 79
    const-wide/16 v0, 0x1

    sub-long v0, v2, v0

    mul-long/2addr v0, v4

    add-long/2addr v0, p1

    .line 80
    mul-long/2addr v2, v4

    add-long/2addr v2, p1

    .line 81
    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/m;->c:J

    sub-long v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/m;->c:J

    sub-long v6, v2, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_53

    .line 85
    :goto_33
    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/c/e/m;->b(J)J

    move-result-wide v2

    .line 86
    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/m;->a:J

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4d

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/m;->c:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_4d

    .line 88
    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/m;->a:J

    sub-long/2addr v4, v2

    iput-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/m;->b:J

    .line 91
    :cond_4d
    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/m;->c:J

    .line 92
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/m;->b:J

    add-long/2addr v0, v2

    return-wide v0

    :cond_53
    move-wide v0, v2

    .line 82
    goto :goto_33

    :cond_55
    move-wide v0, p1

    goto :goto_33
.end method

.method public a()V
    .registers 3

    .prologue
    .line 58
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/m;->c:J

    .line 59
    return-void
.end method
