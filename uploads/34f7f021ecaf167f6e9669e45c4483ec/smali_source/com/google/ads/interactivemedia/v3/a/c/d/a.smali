.class final Lcom/google/ads/interactivemedia/v3/a/c/d/a;
.super Lcom/google/ads/interactivemedia/v3/a/c/d/f;
.source "IMASDK"


# instance fields
.field private e:Lcom/google/ads/interactivemedia/v3/a/f/f;

.field private f:Lcom/google/ads/interactivemedia/v3/a/f/e;

.field private g:Z


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/c/d/f;-><init>()V

    return-void
.end method

.method static a(Lcom/google/ads/interactivemedia/v3/a/f/m;)Z
    .registers 5

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v0

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_15

    .line 50
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->k()J

    move-result-wide v0

    const-wide/32 v2, 0x464c4143

    cmp-long v0, v0, v2

    if-nez v0, :cond_15

    const/4 v0, 0x1

    .line 49
    :goto_14
    return v0

    .line 50
    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/a/c/f;Lcom/google/ads/interactivemedia/v3/a/c/j;)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v0, 0x0

    const/4 v10, 0x0

    .line 56
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c()J

    move-result-wide v6

    .line 58
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/a;->b:Lcom/google/ads/interactivemedia/v3/a/c/d/c;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/a;->a:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v1, p1, v2}, Lcom/google/ads/interactivemedia/v3/a/c/d/c;->a(Lcom/google/ads/interactivemedia/v3/a/c/f;Lcom/google/ads/interactivemedia/v3/a/f/m;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 96
    :goto_12
    return v3

    .line 62
    :cond_13
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/a;->a:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    .line 63
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/a;->e:Lcom/google/ads/interactivemedia/v3/a/f/f;

    if-nez v2, :cond_60

    .line 64
    new-instance v2, Lcom/google/ads/interactivemedia/v3/a/f/f;

    const/16 v4, 0x11

    invoke-direct {v2, v1, v4}, Lcom/google/ads/interactivemedia/v3/a/f/f;-><init>([BI)V

    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/a;->e:Lcom/google/ads/interactivemedia/v3/a/f/f;

    .line 66
    const/16 v2, 0x9

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/a;->a:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c()I

    move-result v4

    invoke-static {v1, v2, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 67
    const/4 v2, 0x4

    const/16 v4, -0x80

    aput-byte v4, v1, v2

    .line 68
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 70
    const-string v1, "audio/x-flac"

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/a;->e:Lcom/google/ads/interactivemedia/v3/a/f/f;

    .line 71
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/a/f/f;->a()I

    move-result v2

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/a;->e:Lcom/google/ads/interactivemedia/v3/a/f/f;

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/a/f/f;->b()J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/a;->e:Lcom/google/ads/interactivemedia/v3/a/f/f;

    iget v6, v6, Lcom/google/ads/interactivemedia/v3/a/f/f;->f:I

    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/a;->e:Lcom/google/ads/interactivemedia/v3/a/f/f;

    iget v7, v7, Lcom/google/ads/interactivemedia/v3/a/f/f;->e:I

    move-object v9, v0

    .line 70
    invoke-static/range {v0 .. v9}, Lcom/google/ads/interactivemedia/v3/a/p;->a(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/a/p;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/a;->c:Lcom/google/ads/interactivemedia/v3/a/c/m;

    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(Lcom/google/ads/interactivemedia/v3/a/p;)V

    .line 95
    :cond_59
    :goto_59
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/a;->a:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->a()V

    move v3, v10

    .line 96
    goto :goto_12

    .line 75
    :cond_60
    aget-byte v2, v1, v10

    if-ne v2, v3, :cond_b0

    .line 76
    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/a;->g:Z

    if-nez v1, :cond_80

    .line 77
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/a;->f:Lcom/google/ads/interactivemedia/v3/a/f/e;

    if-eqz v1, :cond_a8

    .line 78
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/a;->d:Lcom/google/ads/interactivemedia/v3/a/c/g;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/a;->f:Lcom/google/ads/interactivemedia/v3/a/f/e;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/a;->e:Lcom/google/ads/interactivemedia/v3/a/f/f;

    iget v3, v3, Lcom/google/ads/interactivemedia/v3/a/f/f;->e:I

    int-to-long v8, v3

    invoke-virtual {v2, v6, v7, v8, v9}, Lcom/google/ads/interactivemedia/v3/a/f/e;->a(JJ)Lcom/google/ads/interactivemedia/v3/a/c/l;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/ads/interactivemedia/v3/a/c/g;->a(Lcom/google/ads/interactivemedia/v3/a/c/l;)V

    .line 79
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/a;->f:Lcom/google/ads/interactivemedia/v3/a/f/e;

    .line 83
    :goto_7e
    iput-boolean v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/a;->g:Z

    .line 86
    :cond_80
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/a;->c:Lcom/google/ads/interactivemedia/v3/a/c/m;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/a;->a:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/a;->a:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;I)V

    .line 87
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/a;->a:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v1, v10}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 88
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/a;->e:Lcom/google/ads/interactivemedia/v3/a/f/f;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/a;->a:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-static {v1, v2}, Lcom/google/ads/interactivemedia/v3/a/f/g;->a(Lcom/google/ads/interactivemedia/v3/a/f/f;Lcom/google/ads/interactivemedia/v3/a/f/m;)J

    move-result-wide v2

    .line 89
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/a;->c:Lcom/google/ads/interactivemedia/v3/a/c/m;

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/a;->a:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c()I

    move-result v5

    move v6, v10

    move-object v7, v0

    invoke-interface/range {v1 .. v7}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(JIII[B)V

    goto :goto_59

    .line 81
    :cond_a8
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/a;->d:Lcom/google/ads/interactivemedia/v3/a/c/g;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/a/c/l;->f:Lcom/google/ads/interactivemedia/v3/a/c/l;

    invoke-interface {v1, v2}, Lcom/google/ads/interactivemedia/v3/a/c/g;->a(Lcom/google/ads/interactivemedia/v3/a/c/l;)V

    goto :goto_7e

    .line 91
    :cond_b0
    aget-byte v0, v1, v10

    and-int/lit8 v0, v0, 0x7f

    const/4 v1, 0x3

    if-ne v0, v1, :cond_59

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/a;->f:Lcom/google/ads/interactivemedia/v3/a/f/e;

    if-nez v0, :cond_59

    .line 92
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/a;->a:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/e;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;)Lcom/google/ads/interactivemedia/v3/a/f/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/a;->f:Lcom/google/ads/interactivemedia/v3/a/f/e;

    goto :goto_59
.end method
