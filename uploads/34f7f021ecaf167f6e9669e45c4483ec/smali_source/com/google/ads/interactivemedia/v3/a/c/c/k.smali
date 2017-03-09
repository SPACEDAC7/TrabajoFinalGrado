.class final Lcom/google/ads/interactivemedia/v3/a/c/c/k;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field public a:Lcom/google/ads/interactivemedia/v3/a/c/c/c;

.field public b:J

.field public c:J

.field public d:I

.field public e:[I

.field public f:[I

.field public g:[J

.field public h:[Z

.field public i:Z

.field public j:[Z

.field public k:I

.field public l:Lcom/google/ads/interactivemedia/v3/a/f/m;

.field public m:Z

.field public n:Lcom/google/ads/interactivemedia/v3/a/c/c/j;

.field public o:J


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 100
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->d:I

    .line 101
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->o:J

    .line 102
    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->i:Z

    .line 103
    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->m:Z

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->n:Lcom/google/ads/interactivemedia/v3/a/c/c/j;

    .line 105
    return-void
.end method

.method public a(I)V
    .registers 4

    .prologue
    .line 116
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->d:I

    .line 117
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->e:[I

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->e:[I

    array-length v0, v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->d:I

    if-ge v0, v1, :cond_25

    .line 120
    :cond_d
    mul-int/lit8 v0, p1, 0x7d

    div-int/lit8 v0, v0, 0x64

    .line 121
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->e:[I

    .line 122
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->f:[I

    .line 123
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->g:[J

    .line 124
    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->h:[Z

    .line 125
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->j:[Z

    .line 127
    :cond_25
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/a/c/f;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 153
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->l:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->k:I

    invoke-interface {p1, v0, v2, v1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b([BII)V

    .line 154
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->l:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 155
    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->m:Z

    .line 156
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/a/f/m;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 164
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->l:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->k:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->a([BII)V

    .line 165
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->l:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 166
    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->m:Z

    .line 167
    return-void
.end method

.method public b(I)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 139
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->l:Lcom/google/ads/interactivemedia/v3/a/f/m;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->l:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c()I

    move-result v0

    if-ge v0, p1, :cond_14

    .line 140
    :cond_d
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->l:Lcom/google/ads/interactivemedia/v3/a/f/m;

    .line 142
    :cond_14
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->k:I

    .line 143
    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->i:Z

    .line 144
    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->m:Z

    .line 145
    return-void
.end method

.method public c(I)J
    .registers 6

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->g:[J

    aget-wide v0, v0, p1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->f:[I

    aget v2, v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method
