.class final Lcom/google/ads/interactivemedia/v3/a/c/g/d;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/a/f/m;

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f/m;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/d;->a:Lcom/google/ads/interactivemedia/v3/a/f/m;

    .line 40
    return-void
.end method

.method private b(Lcom/google/ads/interactivemedia/v3/a/c/f;)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 92
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/d;->a:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    invoke-interface {p1, v1, v0, v5}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c([BII)V

    .line 93
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/d;->a:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    aget-byte v1, v1, v0

    and-int/lit16 v4, v1, 0xff

    .line 94
    if-nez v4, :cond_16

    .line 95
    const-wide/high16 v0, -0x8000000000000000L

    .line 110
    :goto_15
    return-wide v0

    .line 97
    :cond_16
    const/16 v1, 0x80

    move v2, v0

    .line 99
    :goto_19
    and-int v3, v4, v1

    if-nez v3, :cond_24

    .line 100
    shr-int/lit8 v3, v1, 0x1

    .line 101
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_19

    .line 103
    :cond_24
    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v1, v4

    .line 104
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/d;->a:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    invoke-interface {p1, v3, v5, v2}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c([BII)V

    .line 105
    :goto_2e
    if-ge v0, v2, :cond_40

    .line 106
    shl-int/lit8 v1, v1, 0x8

    .line 107
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/d;->a:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v1, v3

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 109
    :cond_40
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/d;->b:I

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/d;->b:I

    .line 110
    int-to-long v0, v1

    goto :goto_15
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/a/c/f;)Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v12, -0x1

    const-wide/high16 v10, -0x8000000000000000L

    const/4 v7, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 46
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->d()J

    move-result-wide v2

    .line 47
    cmp-long v0, v2, v12

    if-eqz v0, :cond_15

    const-wide/16 v0, 0x400

    cmp-long v0, v2, v0

    if-lez v0, :cond_37

    .line 48
    :cond_15
    const-wide/16 v0, 0x400

    :goto_17
    long-to-int v6, v0

    .line 50
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/d;->a:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    invoke-interface {p1, v0, v5, v7}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c([BII)V

    .line 51
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/d;->a:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->k()J

    move-result-wide v0

    .line 52
    iput v7, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/d;->b:I

    .line 53
    :goto_27
    const-wide/32 v8, 0x1a45dfa3

    cmp-long v7, v0, v8

    if-eqz v7, :cond_51

    .line 54
    iget v7, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/d;->b:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/d;->b:I

    if-ne v7, v6, :cond_39

    .line 85
    :cond_36
    :goto_36
    return v5

    :cond_37
    move-wide v0, v2

    .line 48
    goto :goto_17

    .line 57
    :cond_39
    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/d;->a:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v7, v7, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    invoke-interface {p1, v7, v5, v4}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c([BII)V

    .line 58
    const/16 v7, 0x8

    shl-long/2addr v0, v7

    const-wide/16 v8, -0x100

    and-long/2addr v0, v8

    .line 59
    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/d;->a:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v7, v7, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    aget-byte v7, v7, v5

    and-int/lit16 v7, v7, 0xff

    int-to-long v8, v7

    or-long/2addr v0, v8

    goto :goto_27

    .line 63
    :cond_51
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/a/c/g/d;->b(Lcom/google/ads/interactivemedia/v3/a/c/f;)J

    move-result-wide v0

    .line 64
    iget v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/d;->b:I

    int-to-long v6, v6

    .line 65
    cmp-long v8, v0, v10

    if-eqz v8, :cond_36

    cmp-long v8, v2, v12

    if-eqz v8, :cond_66

    add-long v8, v6, v0

    cmp-long v2, v8, v2

    if-gez v2, :cond_36

    .line 71
    :cond_66
    :goto_66
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/d;->b:I

    int-to-long v2, v2

    add-long v8, v6, v0

    cmp-long v2, v2, v8

    if-gez v2, :cond_9a

    .line 72
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/a/c/g/d;->b(Lcom/google/ads/interactivemedia/v3/a/c/f;)J

    move-result-wide v2

    .line 73
    cmp-long v2, v2, v10

    if-eqz v2, :cond_36

    .line 76
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/a/c/g/d;->b(Lcom/google/ads/interactivemedia/v3/a/c/f;)J

    move-result-wide v2

    .line 77
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-ltz v8, :cond_36

    const-wide/32 v8, 0x7fffffff

    cmp-long v8, v2, v8

    if-gtz v8, :cond_36

    .line 80
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-eqz v8, :cond_66

    .line 81
    long-to-int v8, v2

    invoke-interface {p1, v8}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c(I)V

    .line 82
    iget v8, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/d;->b:I

    int-to-long v8, v8

    add-long/2addr v2, v8

    long-to-int v2, v2

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/d;->b:I

    goto :goto_66

    .line 85
    :cond_9a
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/d;->b:I

    int-to-long v2, v2

    add-long/2addr v0, v6

    cmp-long v0, v2, v0

    if-nez v0, :cond_a5

    move v0, v4

    :goto_a3
    move v5, v0

    goto :goto_36

    :cond_a5
    move v0, v5

    goto :goto_a3
.end method
