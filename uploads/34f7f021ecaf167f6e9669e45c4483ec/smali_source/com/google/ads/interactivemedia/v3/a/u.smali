.class public abstract Lcom/google/ads/interactivemedia/v3/a/u;
.super Lcom/google/ads/interactivemedia/v3/a/w;
.source "IMASDK"


# instance fields
.field private final a:[Lcom/google/ads/interactivemedia/v3/a/t$a;

.field private b:[I

.field private c:[I

.field private d:Lcom/google/ads/interactivemedia/v3/a/t$a;

.field private e:I

.field private f:J


# direct methods
.method public varargs constructor <init>([Lcom/google/ads/interactivemedia/v3/a/t;)V
    .registers 5

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/w;-><init>()V

    .line 43
    array-length v0, p1

    new-array v0, v0, [Lcom/google/ads/interactivemedia/v3/a/t$a;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/u;->a:[Lcom/google/ads/interactivemedia/v3/a/t$a;

    .line 44
    const/4 v0, 0x0

    :goto_9
    array-length v1, p1

    if-ge v0, v1, :cond_19

    .line 45
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/u;->a:[Lcom/google/ads/interactivemedia/v3/a/t$a;

    aget-object v2, p1, v0

    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/a/t;->a()Lcom/google/ads/interactivemedia/v3/a/t$a;

    move-result-object v2

    aput-object v2, v1, v0

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 47
    :cond_19
    return-void
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/a/t$a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation

    .prologue
    .line 260
    :try_start_0
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/a/t$a;->b()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    .line 264
    return-void

    .line 261
    :catch_4
    move-exception v0

    .line 262
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/f;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/f;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private b(J)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/u;->d:Lcom/google/ads/interactivemedia/v3/a/t$a;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/u;->e:I

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/t$a;->b(I)J

    move-result-wide v0

    .line 251
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_12

    .line 252
    invoke-virtual {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/a/u;->a(J)V

    move-wide p1, v0

    .line 255
    :cond_12
    return-wide p1
.end method


# virtual methods
.method protected final a(JLcom/google/ads/interactivemedia/v3/a/q;Lcom/google/ads/interactivemedia/v3/a/s;)I
    .registers 12

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/u;->d:Lcom/google/ads/interactivemedia/v3/a/t$a;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/u;->e:I

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/a/t$a;->a(IJLcom/google/ads/interactivemedia/v3/a/q;Lcom/google/ads/interactivemedia/v3/a/s;)I

    move-result v0

    return v0
.end method

.method protected a(IJZ)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p0, p2, p3}, Lcom/google/ads/interactivemedia/v3/a/u;->e(J)J

    move-result-wide v0

    .line 109
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/u;->a:[Lcom/google/ads/interactivemedia/v3/a/t$a;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/u;->b:[I

    aget v3, v3, p1

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/u;->d:Lcom/google/ads/interactivemedia/v3/a/t$a;

    .line 110
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/u;->c:[I

    aget v2, v2, p1

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/u;->e:I

    .line 111
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/u;->d:Lcom/google/ads/interactivemedia/v3/a/t$a;

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/u;->e:I

    invoke-interface {v2, v3, v0, v1}, Lcom/google/ads/interactivemedia/v3/a/t$a;->a(IJ)V

    .line 112
    invoke-virtual {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/a/u;->a(J)V

    .line 113
    return-void
.end method

.method protected abstract a(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation
.end method

.method protected final a(JJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation

    .prologue
    .line 125
    invoke-virtual {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/a/u;->e(J)J

    move-result-wide v0

    .line 126
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/u;->d:Lcom/google/ads/interactivemedia/v3/a/t$a;

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/u;->e:I

    invoke-interface {v2, v3, v0, v1}, Lcom/google/ads/interactivemedia/v3/a/t$a;->b(IJ)Z

    move-result v6

    .line 127
    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/a/u;->b(J)J

    move-result-wide v2

    move-object v1, p0

    move-wide v4, p3

    .line 128
    invoke-virtual/range {v1 .. v6}, Lcom/google/ads/interactivemedia/v3/a/u;->a(JJZ)V

    .line 129
    return-void
.end method

.method protected abstract a(JJZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation
.end method

.method protected abstract a(Lcom/google/ads/interactivemedia/v3/a/p;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/n$b;
        }
    .end annotation
.end method

.method protected final b(I)Lcom/google/ads/interactivemedia/v3/a/p;
    .registers 4

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/u;->a:[Lcom/google/ads/interactivemedia/v3/a/t$a;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/u;->b:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    .line 175
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/u;->c:[I

    aget v1, v1, p1

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/t$a;->a(I)Lcom/google/ads/interactivemedia/v3/a/p;

    move-result-object v0

    return-object v0
.end method

.method protected final c(J)Z
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation

    .prologue
    .line 51
    const/4 v3, 0x1

    .line 52
    const/4 v2, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/a/u;->a:[Lcom/google/ads/interactivemedia/v3/a/t$a;

    array-length v4, v4

    if-ge v2, v4, :cond_19

    .line 53
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/a/u;->a:[Lcom/google/ads/interactivemedia/v3/a/t$a;

    aget-object v4, v4, v2

    move-wide/from16 v0, p1

    invoke-interface {v4, v0, v1}, Lcom/google/ads/interactivemedia/v3/a/t$a;->a(J)Z

    move-result v4

    and-int/2addr v3, v4

    .line 52
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 55
    :cond_19
    if-nez v3, :cond_1d

    .line 56
    const/4 v2, 0x0

    .line 102
    :goto_1c
    return v2

    .line 59
    :cond_1d
    const/4 v3, 0x0

    .line 60
    const/4 v2, 0x0

    :goto_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/a/u;->a:[Lcom/google/ads/interactivemedia/v3/a/t$a;

    array-length v4, v4

    if-ge v2, v4, :cond_34

    .line 61
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/a/u;->a:[Lcom/google/ads/interactivemedia/v3/a/t$a;

    aget-object v4, v4, v2

    invoke-interface {v4}, Lcom/google/ads/interactivemedia/v3/a/t$a;->c()I

    move-result v4

    add-int/2addr v3, v4

    .line 60
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 63
    :cond_34
    const-wide/16 v6, 0x0

    .line 64
    const/4 v4, 0x0

    .line 65
    new-array v8, v3, [I

    .line 66
    new-array v9, v3, [I

    .line 67
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/a/u;->a:[Lcom/google/ads/interactivemedia/v3/a/t$a;

    array-length v10, v2

    .line 68
    const/4 v2, 0x0

    move v3, v4

    move-wide v4, v6

    move v6, v2

    :goto_44
    if-ge v6, v10, :cond_95

    .line 69
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/a/u;->a:[Lcom/google/ads/interactivemedia/v3/a/t$a;

    aget-object v7, v2, v6

    .line 70
    invoke-interface {v7}, Lcom/google/ads/interactivemedia/v3/a/t$a;->c()I

    move-result v11

    .line 71
    const/4 v2, 0x0

    move/from16 v16, v2

    move v2, v3

    move/from16 v3, v16

    :goto_56
    if-ge v3, v11, :cond_90

    .line 72
    invoke-interface {v7, v3}, Lcom/google/ads/interactivemedia/v3/a/t$a;->a(I)Lcom/google/ads/interactivemedia/v3/a/p;

    move-result-object v12

    .line 75
    :try_start_5c
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/ads/interactivemedia/v3/a/u;->a(Lcom/google/ads/interactivemedia/v3/a/p;)Z
    :try_end_61
    .catch Lcom/google/ads/interactivemedia/v3/a/n$b; {:try_start_5c .. :try_end_61} :catch_73

    move-result v13

    .line 79
    if-eqz v13, :cond_70

    .line 80
    aput v6, v8, v2

    .line 81
    aput v3, v9, v2

    .line 82
    add-int/lit8 v2, v2, 0x1

    .line 83
    const-wide/16 v14, -0x1

    cmp-long v13, v4, v14

    if-nez v13, :cond_7a

    .line 71
    :cond_70
    :goto_70
    add-int/lit8 v3, v3, 0x1

    goto :goto_56

    .line 76
    :catch_73
    move-exception v2

    .line 77
    new-instance v3, Lcom/google/ads/interactivemedia/v3/a/f;

    invoke-direct {v3, v2}, Lcom/google/ads/interactivemedia/v3/a/f;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 87
    :cond_7a
    iget-wide v12, v12, Lcom/google/ads/interactivemedia/v3/a/p;->e:J

    .line 88
    const-wide/16 v14, -0x1

    cmp-long v14, v12, v14

    if-nez v14, :cond_85

    .line 89
    const-wide/16 v4, -0x1

    goto :goto_70

    .line 90
    :cond_85
    const-wide/16 v14, -0x2

    cmp-long v14, v12, v14

    if-eqz v14, :cond_70

    .line 93
    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    goto :goto_70

    .line 68
    :cond_90
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move v3, v2

    goto :goto_44

    .line 99
    :cond_95
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/google/ads/interactivemedia/v3/a/u;->f:J

    .line 100
    invoke-static {v8, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/ads/interactivemedia/v3/a/u;->b:[I

    .line 101
    invoke-static {v9, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/ads/interactivemedia/v3/a/u;->c:[I

    .line 102
    const/4 v2, 0x1

    goto/16 :goto_1c
.end method

.method protected d(J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation

    .prologue
    .line 117
    invoke-virtual {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/a/u;->e(J)J

    move-result-wide v0

    .line 118
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/u;->d:Lcom/google/ads/interactivemedia/v3/a/t$a;

    invoke-interface {v2, v0, v1}, Lcom/google/ads/interactivemedia/v3/a/t$a;->b(J)V

    .line 119
    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/a/u;->b(J)J

    .line 120
    return-void
.end method

.method protected e(J)J
    .registers 4

    .prologue
    .line 189
    return-wide p1
.end method

.method protected g()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/u;->d:Lcom/google/ads/interactivemedia/v3/a/t$a;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/u;->e:I

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/t$a;->c(I)V

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/u;->d:Lcom/google/ads/interactivemedia/v3/a/t$a;

    .line 157
    return-void
.end method

.method protected q()J
    .registers 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/u;->d:Lcom/google/ads/interactivemedia/v3/a/t$a;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/a/t$a;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method protected r()J
    .registers 3

    .prologue
    .line 138
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/u;->f:J

    return-wide v0
.end method

.method protected s()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/u;->d:Lcom/google/ads/interactivemedia/v3/a/t$a;

    if-eqz v0, :cond_a

    .line 144
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/u;->d:Lcom/google/ads/interactivemedia/v3/a/t$a;

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/u;->a(Lcom/google/ads/interactivemedia/v3/a/t$a;)V

    .line 151
    :cond_9
    return-void

    .line 146
    :cond_a
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/u;->a:[Lcom/google/ads/interactivemedia/v3/a/t$a;

    array-length v1, v0

    .line 147
    const/4 v0, 0x0

    :goto_e
    if-ge v0, v1, :cond_9

    .line 148
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/u;->a:[Lcom/google/ads/interactivemedia/v3/a/t$a;

    aget-object v2, v2, v0

    invoke-direct {p0, v2}, Lcom/google/ads/interactivemedia/v3/a/u;->a(Lcom/google/ads/interactivemedia/v3/a/t$a;)V

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_e
.end method

.method protected t()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/u;->a:[Lcom/google/ads/interactivemedia/v3/a/t$a;

    array-length v1, v0

    .line 162
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v1, :cond_10

    .line 163
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/u;->a:[Lcom/google/ads/interactivemedia/v3/a/t$a;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/a/t$a;->e()V

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 165
    :cond_10
    return-void
.end method

.method protected final u()I
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/u;->c:[I

    array-length v0, v0

    return v0
.end method
