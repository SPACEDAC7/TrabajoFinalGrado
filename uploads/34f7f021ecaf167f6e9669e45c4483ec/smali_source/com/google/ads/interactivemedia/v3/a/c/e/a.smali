.class final Lcom/google/ads/interactivemedia/v3/a/c/e/a;
.super Lcom/google/ads/interactivemedia/v3/a/c/e/e;
.source "IMASDK"


# instance fields
.field private final b:Z

.field private final c:Lcom/google/ads/interactivemedia/v3/a/f/l;

.field private final d:Lcom/google/ads/interactivemedia/v3/a/f/m;

.field private e:I

.field private f:I

.field private g:Z

.field private h:J

.field private i:Lcom/google/ads/interactivemedia/v3/a/p;

.field private j:I

.field private k:J


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/a/c/m;Z)V
    .registers 5

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/a/c/e/e;-><init>(Lcom/google/ads/interactivemedia/v3/a/c/m;)V

    .line 63
    iput-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->b:Z

    .line 64
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f/l;

    const/16 v1, 0x8

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/l;-><init>([B)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    .line 65
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/a/f/l;->a:[B

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;-><init>([B)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->d:Lcom/google/ads/interactivemedia/v3/a/f/m;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->e:I

    .line 67
    return-void
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/a/f/m;[BI)Z
    .registers 6

    .prologue
    .line 130
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b()I

    move-result v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->f:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 131
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->f:I

    invoke-virtual {p1, p2, v1, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->a([BII)V

    .line 132
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->f:I

    .line 133
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->f:I

    if-ne v0, p3, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private b(Lcom/google/ads/interactivemedia/v3/a/f/m;)Z
    .registers 7

    .prologue
    const/16 v4, 0xb

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 144
    :goto_4
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b()I

    move-result v0

    if-lez v0, :cond_2d

    .line 145
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->g:Z

    if-nez v0, :cond_1a

    .line 146
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v0

    if-ne v0, v4, :cond_18

    move v0, v1

    :goto_15
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->g:Z

    goto :goto_4

    :cond_18
    move v0, v2

    goto :goto_15

    .line 149
    :cond_1a
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v0

    .line 150
    const/16 v3, 0x77

    if-ne v0, v3, :cond_25

    .line 151
    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->g:Z

    .line 157
    :goto_24
    return v1

    .line 154
    :cond_25
    if-ne v0, v4, :cond_2b

    move v0, v1

    :goto_28
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->g:Z

    goto :goto_4

    :cond_2b
    move v0, v2

    goto :goto_28

    :cond_2d
    move v1, v2

    .line 157
    goto :goto_24
.end method

.method private c()V
    .registers 5

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 164
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->i:Lcom/google/ads/interactivemedia/v3/a/p;

    if-nez v0, :cond_1a

    .line 165
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->b:Z

    if-eqz v0, :cond_44

    .line 166
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-static {v0, v1, v2, v3, v1}, Lcom/google/ads/interactivemedia/v3/a/f/a;->b(Lcom/google/ads/interactivemedia/v3/a/f/l;Ljava/lang/String;JLjava/lang/String;)Lcom/google/ads/interactivemedia/v3/a/p;

    move-result-object v0

    .line 167
    :goto_11
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->i:Lcom/google/ads/interactivemedia/v3/a/p;

    .line 168
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->a:Lcom/google/ads/interactivemedia/v3/a/c/m;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->i:Lcom/google/ads/interactivemedia/v3/a/p;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(Lcom/google/ads/interactivemedia/v3/a/p;)V

    .line 170
    :cond_1a
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->b:Z

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/f/l;->a:[B

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/a;->b([B)I

    move-result v0

    .line 171
    :goto_26
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->j:I

    .line 172
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->b:Z

    if-eqz v0, :cond_54

    .line 173
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/f/l;->a:[B

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/a;->c([B)I

    move-result v0

    .line 177
    :goto_34
    const-wide/32 v2, 0xf4240

    int-to-long v0, v0

    mul-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->i:Lcom/google/ads/interactivemedia/v3/a/p;

    iget v2, v2, Lcom/google/ads/interactivemedia/v3/a/p;->q:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->h:J

    .line 179
    return-void

    .line 167
    :cond_44
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-static {v0, v1, v2, v3, v1}, Lcom/google/ads/interactivemedia/v3/a/f/a;->a(Lcom/google/ads/interactivemedia/v3/a/f/l;Ljava/lang/String;JLjava/lang/String;)Lcom/google/ads/interactivemedia/v3/a/p;

    move-result-object v0

    goto :goto_11

    .line 171
    :cond_4b
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/f/l;->a:[B

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/a;->a([B)I

    move-result v0

    goto :goto_26

    .line 174
    :cond_54
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/a/f/a;->a()I

    move-result v0

    goto :goto_34
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->e:I

    .line 72
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->f:I

    .line 73
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->g:Z

    .line 74
    return-void
.end method

.method public a(JZ)V
    .registers 5

    .prologue
    .line 78
    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->k:J

    .line 79
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/a/f/m;)V
    .registers 12

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 83
    :cond_5
    :goto_5
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b()I

    move-result v0

    if-lez v0, :cond_79

    .line 84
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->e:I

    packed-switch v0, :pswitch_data_7a

    goto :goto_5

    .line 86
    :pswitch_11
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->b(Lcom/google/ads/interactivemedia/v3/a/f/m;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 87
    iput v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->e:I

    .line 88
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->d:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    const/16 v1, 0xb

    aput-byte v1, v0, v6

    .line 89
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->d:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    const/16 v1, 0x77

    aput-byte v1, v0, v4

    .line 90
    iput v8, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->f:I

    goto :goto_5

    .line 94
    :pswitch_2c
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->d:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    invoke-direct {p0, p1, v0, v9}, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;[BI)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 95
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->c()V

    .line 96
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->d:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0, v6}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 97
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->a:Lcom/google/ads/interactivemedia/v3/a/c/m;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->d:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-interface {v0, v1, v9}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;I)V

    .line 98
    iput v8, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->e:I

    goto :goto_5

    .line 102
    :pswitch_48
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b()I

    move-result v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->j:I

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->f:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 103
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->a:Lcom/google/ads/interactivemedia/v3/a/c/m;

    invoke-interface {v1, p1, v0}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;I)V

    .line 104
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->f:I

    .line 105
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->f:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->j:I

    if-ne v0, v1, :cond_5

    .line 106
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->a:Lcom/google/ads/interactivemedia/v3/a/c/m;

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->k:J

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->j:I

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(JIII[B)V

    .line 107
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->k:J

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->h:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->k:J

    .line 108
    iput v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/a;->e:I

    goto :goto_5

    .line 113
    :cond_79
    return-void

    .line 84
    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_11
        :pswitch_2c
        :pswitch_48
    .end packed-switch
.end method

.method public b()V
    .registers 1

    .prologue
    .line 118
    return-void
.end method
