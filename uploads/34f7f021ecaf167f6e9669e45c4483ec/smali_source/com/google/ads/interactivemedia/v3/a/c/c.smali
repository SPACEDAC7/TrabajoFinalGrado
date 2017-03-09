.class public Lcom/google/ads/interactivemedia/v3/a/c/c;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/a/c/m;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/a/c/k;

.field private final b:Lcom/google/ads/interactivemedia/v3/a/s;

.field private c:Z

.field private d:J

.field private e:J

.field private volatile f:J

.field private volatile g:Lcom/google/ads/interactivemedia/v3/a/p;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/a/e/b;)V
    .registers 6

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/c/k;

    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/a/c/k;-><init>(Lcom/google/ads/interactivemedia/v3/a/e/b;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c;->a:Lcom/google/ads/interactivemedia/v3/a/c/k;

    .line 50
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/s;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/s;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c;->b:Lcom/google/ads/interactivemedia/v3/a/s;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c;->c:Z

    .line 52
    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/c;->d:J

    .line 53
    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/c;->e:J

    .line 54
    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/c;->f:J

    .line 55
    return-void
.end method

.method private f()Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 211
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c;->a:Lcom/google/ads/interactivemedia/v3/a/c/k;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/c;->b:Lcom/google/ads/interactivemedia/v3/a/s;

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/a/c/k;->a(Lcom/google/ads/interactivemedia/v3/a/s;)Z

    move-result v1

    .line 212
    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/c;->c:Z

    if-eqz v2, :cond_25

    .line 213
    :goto_d
    if-eqz v1, :cond_25

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/c;->b:Lcom/google/ads/interactivemedia/v3/a/s;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/a/s;->c()Z

    move-result v2

    if-nez v2, :cond_25

    .line 214
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c;->a:Lcom/google/ads/interactivemedia/v3/a/c/k;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/a/c/k;->b()V

    .line 215
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c;->a:Lcom/google/ads/interactivemedia/v3/a/c/k;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/c;->b:Lcom/google/ads/interactivemedia/v3/a/s;

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/a/c/k;->a(Lcom/google/ads/interactivemedia/v3/a/s;)Z

    move-result v1

    goto :goto_d

    .line 218
    :cond_25
    if-nez v1, :cond_28

    .line 224
    :cond_27
    :goto_27
    return v0

    .line 221
    :cond_28
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/c;->e:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c;->b:Lcom/google/ads/interactivemedia/v3/a/s;

    iget-wide v2, v1, Lcom/google/ads/interactivemedia/v3/a/s;->e:J

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/c;->e:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_27

    .line 224
    :cond_3a
    const/4 v0, 0x1

    goto :goto_27
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/a/c/f;IZ)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c;->a:Lcom/google/ads/interactivemedia/v3/a/c/k;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/a/c/k;->a(Lcom/google/ads/interactivemedia/v3/a/c/f;IZ)I

    move-result v0

    return v0
.end method

.method public a()V
    .registers 5

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    .line 63
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c;->a:Lcom/google/ads/interactivemedia/v3/a/c/k;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/c/k;->a()V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c;->c:Z

    .line 65
    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/c;->d:J

    .line 66
    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/c;->e:J

    .line 67
    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/c;->f:J

    .line 68
    return-void
.end method

.method public a(J)V
    .registers 6

    .prologue
    .line 153
    :goto_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c;->a:Lcom/google/ads/interactivemedia/v3/a/c/k;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c;->b:Lcom/google/ads/interactivemedia/v3/a/s;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/c/k;->a(Lcom/google/ads/interactivemedia/v3/a/s;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c;->b:Lcom/google/ads/interactivemedia/v3/a/s;

    iget-wide v0, v0, Lcom/google/ads/interactivemedia/v3/a/s;->e:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_1b

    .line 154
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c;->a:Lcom/google/ads/interactivemedia/v3/a/c/k;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/c/k;->b()V

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c;->c:Z

    goto :goto_0

    .line 158
    :cond_1b
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c;->d:J

    .line 159
    return-void
.end method

.method public a(JIII[B)V
    .registers 16

    .prologue
    .line 265
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c;->f:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c;->f:J

    .line 266
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c;->a:Lcom/google/ads/interactivemedia/v3/a/c/k;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c;->a:Lcom/google/ads/interactivemedia/v3/a/c/k;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/a/c/k;->c()J

    move-result-wide v2

    int-to-long v4, p4

    sub-long/2addr v2, v4

    int-to-long v4, p5

    sub-long v4, v2, v4

    move-wide v1, p1

    move v3, p3

    move v6, p4

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/ads/interactivemedia/v3/a/c/k;->a(JIJI[B)V

    .line 268
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/a/f/m;I)V
    .registers 4

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c;->a:Lcom/google/ads/interactivemedia/v3/a/c/k;

    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/a/c/k;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;I)V

    .line 261
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/a/p;)V
    .registers 2

    .prologue
    .line 249
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c;->g:Lcom/google/ads/interactivemedia/v3/a/p;

    .line 250
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/a/s;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 136
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/c/c;->f()Z

    move-result v1

    .line 137
    if-nez v1, :cond_8

    .line 144
    :goto_7
    return v0

    .line 141
    :cond_8
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c;->a:Lcom/google/ads/interactivemedia/v3/a/c/k;

    invoke-virtual {v1, p1}, Lcom/google/ads/interactivemedia/v3/a/c/k;->b(Lcom/google/ads/interactivemedia/v3/a/s;)Z

    .line 142
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c;->c:Z

    .line 143
    iget-wide v0, p1, Lcom/google/ads/interactivemedia/v3/a/s;->e:J

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c;->d:J

    .line 144
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c;->g:Lcom/google/ads/interactivemedia/v3/a/p;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public b(J)Z
    .registers 4

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c;->a:Lcom/google/ads/interactivemedia/v3/a/c/k;

    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/a/c/k;->a(J)Z

    move-result v0

    return v0
.end method

.method public c()Lcom/google/ads/interactivemedia/v3/a/p;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c;->g:Lcom/google/ads/interactivemedia/v3/a/p;

    return-object v0
.end method

.method public d()J
    .registers 3

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c;->f:J

    return-wide v0
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/c/c;->f()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
