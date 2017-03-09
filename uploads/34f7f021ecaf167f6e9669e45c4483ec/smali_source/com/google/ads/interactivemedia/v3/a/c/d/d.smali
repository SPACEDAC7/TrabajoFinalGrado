.class final Lcom/google/ads/interactivemedia/v3/a/c/d/d;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;

.field private final b:Lcom/google/ads/interactivemedia/v3/a/f/m;

.field private c:J

.field private d:J


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/d;->a:Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;

    .line 32
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f/m;

    const/16 v1, 0x11a

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/d;->b:Lcom/google/ads/interactivemedia/v3/a/f/m;

    .line 33
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/d;->c:J

    return-void
.end method


# virtual methods
.method public a(JLcom/google/ads/interactivemedia/v3/a/c/f;)J
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v8, 0x0

    .line 64
    iget-wide v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/d;->c:J

    cmp-long v0, v6, v4

    if-eqz v0, :cond_4c

    iget-wide v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/d;->d:J

    cmp-long v0, v6, v8

    if-eqz v0, :cond_4c

    move v0, v1

    :goto_13
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/b;->b(Z)V

    .line 65
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/d;->a:Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/d;->b:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-static {p3, v0, v3, v2}, Lcom/google/ads/interactivemedia/v3/a/c/d/e;->a(Lcom/google/ads/interactivemedia/v3/a/c/f;Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;Lcom/google/ads/interactivemedia/v3/a/f/m;Z)Z

    .line 66
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/d;->a:Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;

    iget-wide v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;->c:J

    sub-long v2, p1, v2

    .line 67
    cmp-long v0, v2, v8

    if-lez v0, :cond_2e

    const-wide/32 v6, 0x11940

    cmp-long v0, v2, v6

    if-lez v0, :cond_4e

    .line 69
    :cond_2e
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/d;->a:Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;->i:I

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/d;->a:Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;

    iget v4, v4, Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;->h:I

    add-int/2addr v0, v4

    cmp-long v4, v2, v8

    if-gtz v4, :cond_3c

    .line 70
    const/4 v1, 0x2

    :cond_3c
    mul-int/2addr v0, v1

    int-to-long v0, v0

    .line 71
    invoke-interface {p3}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c()J

    move-result-wide v4

    sub-long v0, v4, v0

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/d;->c:J

    mul-long/2addr v2, v4

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/d;->d:J

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 75
    :goto_4b
    return-wide v0

    :cond_4c
    move v0, v2

    .line 64
    goto :goto_13

    .line 74
    :cond_4e
    invoke-interface {p3}, Lcom/google/ads/interactivemedia/v3/a/c/f;->a()V

    move-wide v0, v4

    .line 75
    goto :goto_4b
.end method

.method public a(JJ)V
    .registers 10

    .prologue
    const-wide/16 v2, 0x0

    .line 43
    cmp-long v0, p1, v2

    if-lez v0, :cond_13

    cmp-long v0, p3, v2

    if-lez v0, :cond_13

    const/4 v0, 0x1

    :goto_b
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/b;->a(Z)V

    .line 44
    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/d;->c:J

    .line 45
    iput-wide p3, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/d;->d:J

    .line 46
    return-void

    .line 43
    :cond_13
    const/4 v0, 0x0

    goto :goto_b
.end method
