.class public final Lcom/google/ads/interactivemedia/v3/a/c/f/a;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/a/c/e;
.implements Lcom/google/ads/interactivemedia/v3/a/c/l;


# instance fields
.field private a:Lcom/google/ads/interactivemedia/v3/a/c/g;

.field private b:Lcom/google/ads/interactivemedia/v3/a/c/m;

.field private c:Lcom/google/ads/interactivemedia/v3/a/c/f/b;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/a/c/f;Lcom/google/ads/interactivemedia/v3/a/c/j;)I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/f/a;->c:Lcom/google/ads/interactivemedia/v3/a/c/f/b;

    if-nez v0, :cond_1e

    .line 70
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/a/c/f/c;->a(Lcom/google/ads/interactivemedia/v3/a/c/f;)Lcom/google/ads/interactivemedia/v3/a/c/f/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/f/a;->c:Lcom/google/ads/interactivemedia/v3/a/c/f/b;

    .line 71
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/f/a;->c:Lcom/google/ads/interactivemedia/v3/a/c/f/b;

    if-nez v0, :cond_16

    .line 73
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    const-string v1, "Error initializing WavHeader. Did you sniff first?"

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_16
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/f/a;->c:Lcom/google/ads/interactivemedia/v3/a/c/f/b;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/c/f/b;->b()I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/f/a;->d:I

    .line 79
    :cond_1e
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/f/a;->c:Lcom/google/ads/interactivemedia/v3/a/c/f/b;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/c/f/b;->f()Z

    move-result v0

    if-nez v0, :cond_5f

    .line 80
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/f/a;->c:Lcom/google/ads/interactivemedia/v3/a/c/f/b;

    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/a/c/f/c;->a(Lcom/google/ads/interactivemedia/v3/a/c/f;Lcom/google/ads/interactivemedia/v3/a/c/f/b;)V

    .line 82
    iget-object v11, p0, Lcom/google/ads/interactivemedia/v3/a/c/f/a;->b:Lcom/google/ads/interactivemedia/v3/a/c/m;

    const/4 v0, 0x0

    const-string v1, "audio/raw"

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/f/a;->c:Lcom/google/ads/interactivemedia/v3/a/c/f/b;

    .line 86
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/a/c/f/b;->c()I

    move-result v2

    const v3, 0x8000

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/f/a;->c:Lcom/google/ads/interactivemedia/v3/a/c/f/b;

    .line 88
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/a/c/f/b;->a()J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/f/a;->c:Lcom/google/ads/interactivemedia/v3/a/c/f/b;

    .line 89
    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/a/c/f/b;->e()I

    move-result v6

    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/a/c/f/a;->c:Lcom/google/ads/interactivemedia/v3/a/c/f/b;

    .line 90
    invoke-virtual {v7}, Lcom/google/ads/interactivemedia/v3/a/c/f/b;->d()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/google/ads/interactivemedia/v3/a/c/f/a;->c:Lcom/google/ads/interactivemedia/v3/a/c/f/b;

    .line 93
    invoke-virtual {v10}, Lcom/google/ads/interactivemedia/v3/a/c/f/b;->g()I

    move-result v10

    .line 83
    invoke-static/range {v0 .. v10}, Lcom/google/ads/interactivemedia/v3/a/p;->a(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;I)Lcom/google/ads/interactivemedia/v3/a/p;

    move-result-object v0

    .line 82
    invoke-interface {v11, v0}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(Lcom/google/ads/interactivemedia/v3/a/p;)V

    .line 94
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/f/a;->a:Lcom/google/ads/interactivemedia/v3/a/c/g;

    invoke-interface {v0, p0}, Lcom/google/ads/interactivemedia/v3/a/c/g;->a(Lcom/google/ads/interactivemedia/v3/a/c/l;)V

    .line 97
    :cond_5f
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/f/a;->b:Lcom/google/ads/interactivemedia/v3/a/c/m;

    const v1, 0x8000

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/f/a;->e:I

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    invoke-interface {v0, p1, v1, v2}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(Lcom/google/ads/interactivemedia/v3/a/c/f;IZ)I

    move-result v0

    .line 99
    const/4 v1, -0x1

    if-eq v0, v1, :cond_74

    .line 100
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/f/a;->e:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/f/a;->e:I

    .line 104
    :cond_74
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/f/a;->e:I

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/f/a;->d:I

    div-int/2addr v1, v2

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/f/a;->d:I

    mul-int v5, v1, v2

    .line 105
    if-lez v5, :cond_9b

    .line 106
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c()J

    move-result-wide v2

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/f/a;->e:I

    int-to-long v6, v1

    sub-long/2addr v2, v6

    .line 107
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/f/a;->e:I

    sub-int/2addr v1, v5

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/f/a;->e:I

    .line 108
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/f/a;->b:Lcom/google/ads/interactivemedia/v3/a/c/m;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/f/a;->c:Lcom/google/ads/interactivemedia/v3/a/c/f/b;

    .line 109
    invoke-virtual {v4, v2, v3}, Lcom/google/ads/interactivemedia/v3/a/c/f/b;->b(J)J

    move-result-wide v2

    const/4 v4, 0x1

    iget v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/f/a;->e:I

    const/4 v7, 0x0

    .line 108
    invoke-interface/range {v1 .. v7}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(JIII[B)V

    .line 116
    :cond_9b
    const/4 v1, -0x1

    if-ne v0, v1, :cond_a0

    .line 117
    const/4 v0, -0x1

    .line 120
    :goto_9f
    return v0

    :cond_a0
    const/4 v0, 0x0

    goto :goto_9f
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/a/c/g;)V
    .registers 3

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/f/a;->a:Lcom/google/ads/interactivemedia/v3/a/c/g;

    .line 50
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/a/c/g;->d(I)Lcom/google/ads/interactivemedia/v3/a/c/m;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/f/a;->b:Lcom/google/ads/interactivemedia/v3/a/c/m;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/f/a;->c:Lcom/google/ads/interactivemedia/v3/a/c/f/b;

    .line 52
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/a/c/g;->f()V

    .line 53
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 127
    const/4 v0, 0x1

    return v0
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/a/c/f;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/a/c/f/c;->a(Lcom/google/ads/interactivemedia/v3/a/c/f;)Lcom/google/ads/interactivemedia/v3/a/c/f/b;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public b(J)J
    .registers 6

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/f/a;->c:Lcom/google/ads/interactivemedia/v3/a/c/f/b;

    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/a/c/f/b;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()V
    .registers 2

    .prologue
    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/f/a;->e:I

    .line 58
    return-void
.end method

.method public c()V
    .registers 1

    .prologue
    .line 63
    return-void
.end method
