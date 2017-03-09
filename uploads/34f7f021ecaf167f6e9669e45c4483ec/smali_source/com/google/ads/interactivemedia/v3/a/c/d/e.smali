.class final Lcom/google/ads/interactivemedia/v3/a/c/d/e;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/a/c/d/e$a;,
        Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;
    }
.end annotation


# static fields
.field private static final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const-string v0, "OggS"

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/q;->c(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/ads/interactivemedia/v3/a/c/d/e;->a:I

    return-void
.end method

.method public static a(BII)I
    .registers 6

    .prologue
    .line 45
    shr-int v0, p0, p2

    const/16 v1, 0xff

    rsub-int/lit8 v2, p1, 0x8

    ushr-int/2addr v1, v2

    and-int/2addr v0, v1

    return v0
.end method

.method public static a(Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;ILcom/google/ads/interactivemedia/v3/a/c/d/e$a;)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 156
    iput v0, p2, Lcom/google/ads/interactivemedia/v3/a/c/d/e$a;->b:I

    .line 157
    iput v0, p2, Lcom/google/ads/interactivemedia/v3/a/c/d/e$a;->a:I

    .line 158
    :cond_5
    iget v0, p2, Lcom/google/ads/interactivemedia/v3/a/c/d/e$a;->b:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;->g:I

    if-ge v0, v1, :cond_20

    .line 159
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;->j:[I

    iget v1, p2, Lcom/google/ads/interactivemedia/v3/a/c/d/e$a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p2, Lcom/google/ads/interactivemedia/v3/a/c/d/e$a;->b:I

    add-int/2addr v1, p1

    aget v0, v0, v1

    .line 160
    iget v1, p2, Lcom/google/ads/interactivemedia/v3/a/c/d/e$a;->a:I

    add-int/2addr v1, v0

    iput v1, p2, Lcom/google/ads/interactivemedia/v3/a/c/d/e$a;->a:I

    .line 161
    const/16 v1, 0xff

    if-eq v0, v1, :cond_5

    .line 166
    :cond_20
    return-void
.end method

.method public static a(Lcom/google/ads/interactivemedia/v3/a/c/f;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x67

    const/4 v2, 0x0

    .line 58
    const/16 v0, 0x800

    new-array v3, v0, [B

    .line 59
    array-length v0, v3

    .line 61
    :goto_8
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/a/c/f;->d()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_33

    .line 62
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c()J

    move-result-wide v4

    int-to-long v6, v0

    add-long/2addr v4, v6

    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/a/c/f;->d()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-lez v1, :cond_33

    .line 64
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/a/c/f;->d()J

    move-result-wide v0

    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c()J

    move-result-wide v4

    sub-long/2addr v0, v4

    long-to-int v0, v0

    .line 65
    const/4 v1, 0x4

    if-ge v0, v1, :cond_33

    .line 67
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 70
    :cond_33
    invoke-interface {p0, v3, v2, v0, v2}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b([BIIZ)Z

    move v1, v2

    .line 71
    :goto_37
    add-int/lit8 v4, v0, -0x3

    if-ge v1, v4, :cond_5c

    .line 72
    aget-byte v4, v3, v1

    const/16 v5, 0x4f

    if-ne v4, v5, :cond_59

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, v3, v4

    if-ne v4, v8, :cond_59

    add-int/lit8 v4, v1, 0x2

    aget-byte v4, v3, v4

    if-ne v4, v8, :cond_59

    add-int/lit8 v4, v1, 0x3

    aget-byte v4, v3, v4

    const/16 v5, 0x53

    if-ne v4, v5, :cond_59

    .line 75
    invoke-interface {p0, v1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b(I)V

    .line 76
    return-void

    .line 71
    :cond_59
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 80
    :cond_5c
    add-int/lit8 v1, v0, -0x3

    invoke-interface {p0, v1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b(I)V

    goto :goto_8
.end method

.method public static a(Lcom/google/ads/interactivemedia/v3/a/c/f;Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;Lcom/google/ads/interactivemedia/v3/a/f/m;Z)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 101
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->a()V

    .line 102
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;->a()V

    .line 103
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/a/c/f;->d()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_21

    .line 104
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/a/c/f;->d()J

    move-result-wide v2

    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1b

    cmp-long v2, v2, v4

    if-ltz v2, :cond_31

    :cond_21
    move v2, v1

    .line 105
    :goto_22
    if-eqz v2, :cond_2e

    iget-object v2, p2, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    const/16 v3, 0x1b

    invoke-interface {p0, v2, v0, v3, v1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b([BIIZ)Z

    move-result v2

    if-nez v2, :cond_39

    .line 106
    :cond_2e
    if-eqz p3, :cond_33

    .line 144
    :cond_30
    :goto_30
    return v0

    :cond_31
    move v2, v0

    .line 104
    goto :goto_22

    .line 109
    :cond_33
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 112
    :cond_39
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->k()J

    move-result-wide v2

    sget v4, Lcom/google/ads/interactivemedia/v3/a/c/d/e;->a:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4e

    .line 113
    if-nez p3, :cond_30

    .line 116
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    const-string v1, "expected OggS capture pattern at begin of page"

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_4e
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v2

    iput v2, p1, Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;->a:I

    .line 121
    iget v2, p1, Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;->a:I

    if-eqz v2, :cond_63

    .line 122
    if-nez p3, :cond_30

    .line 125
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    const-string/jumbo v1, "unsupported bit stream revision"

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_63
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v2

    iput v2, p1, Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;->b:I

    .line 130
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->p()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;->c:J

    .line 131
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->l()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;->d:J

    .line 132
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->l()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;->e:J

    .line 133
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->l()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;->f:J

    .line 134
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v2

    iput v2, p1, Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;->g:I

    .line 136
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->a()V

    .line 138
    iget v2, p1, Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;->g:I

    add-int/lit8 v2, v2, 0x1b

    iput v2, p1, Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;->h:I

    .line 139
    iget-object v2, p2, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget v3, p1, Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;->g:I

    invoke-interface {p0, v2, v0, v3}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c([BII)V

    .line 140
    :goto_97
    iget v2, p1, Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;->g:I

    if-ge v0, v2, :cond_af

    .line 141
    iget-object v2, p1, Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;->j:[I

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v3

    aput v3, v2, v0

    .line 142
    iget v2, p1, Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;->i:I

    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;->j:[I

    aget v3, v3, v0

    add-int/2addr v2, v3

    iput v2, p1, Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;->i:I

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_97

    :cond_af
    move v0, v1

    .line 144
    goto :goto_30
.end method
