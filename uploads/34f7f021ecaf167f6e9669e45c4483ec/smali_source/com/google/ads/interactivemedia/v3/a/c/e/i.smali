.class final Lcom/google/ads/interactivemedia/v3/a/c/e/i;
.super Lcom/google/ads/interactivemedia/v3/a/c/e/e;
.source "IMASDK"


# instance fields
.field private final b:Lcom/google/ads/interactivemedia/v3/a/f/m;

.field private c:Z

.field private d:J

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/a/c/m;)V
    .registers 4

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/a/c/e/e;-><init>(Lcom/google/ads/interactivemedia/v3/a/c/m;)V

    .line 45
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/a/p;->a()Lcom/google/ads/interactivemedia/v3/a/p;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(Lcom/google/ads/interactivemedia/v3/a/p;)V

    .line 46
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f/m;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/i;->b:Lcom/google/ads/interactivemedia/v3/a/f/m;

    .line 47
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/i;->c:Z

    .line 52
    return-void
.end method

.method public a(JZ)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 56
    if-nez p3, :cond_4

    .line 63
    :goto_3
    return-void

    .line 59
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/i;->c:Z

    .line 60
    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/i;->d:J

    .line 61
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/i;->e:I

    .line 62
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/i;->f:I

    goto :goto_3
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/a/f/m;)V
    .registers 10

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x0

    .line 67
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/i;->c:Z

    if-nez v0, :cond_8

    .line 93
    :goto_7
    return-void

    .line 70
    :cond_8
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b()I

    move-result v0

    .line 71
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/i;->f:I

    if-ge v1, v7, :cond_69

    .line 73
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/i;->f:I

    rsub-int/lit8 v1, v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 74
    iget-object v2, p1, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d()I

    move-result v3

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/i;->b:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v4, v4, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/i;->f:I

    invoke-static {v2, v3, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/i;->f:I

    add-int/2addr v1, v2

    if-ne v1, v7, :cond_69

    .line 78
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/i;->b:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v1, v6}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 79
    const/16 v1, 0x49

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/i;->b:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v2

    if-ne v1, v2, :cond_4f

    const/16 v1, 0x44

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/i;->b:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v2

    if-ne v1, v2, :cond_4f

    const/16 v1, 0x33

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/i;->b:Lcom/google/ads/interactivemedia/v3/a/f/m;

    .line 80
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v2

    if-eq v1, v2, :cond_59

    .line 81
    :cond_4f
    const-string v0, "Id3Reader"

    const-string v1, "Discarding invalid ID3 tag"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iput-boolean v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/i;->c:Z

    goto :goto_7

    .line 85
    :cond_59
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/i;->b:Lcom/google/ads/interactivemedia/v3/a/f/m;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 86
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/i;->b:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->r()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/i;->e:I

    .line 90
    :cond_69
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/i;->e:I

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/i;->f:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 91
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/i;->a:Lcom/google/ads/interactivemedia/v3/a/c/m;

    invoke-interface {v1, p1, v0}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;I)V

    .line 92
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/i;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/i;->f:I

    goto :goto_7
.end method

.method public b()V
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 97
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/i;->c:Z

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/i;->e:I

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/i;->f:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/i;->e:I

    if-eq v0, v1, :cond_10

    .line 102
    :cond_f
    :goto_f
    return-void

    .line 100
    :cond_10
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/i;->a:Lcom/google/ads/interactivemedia/v3/a/c/m;

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/i;->d:J

    const/4 v4, 0x1

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/i;->e:I

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(JIII[B)V

    .line 101
    iput-boolean v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/i;->c:Z

    goto :goto_f
.end method
