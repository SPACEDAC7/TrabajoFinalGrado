.class public final Lcom/google/ads/interactivemedia/v3/a/c/b/c;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/a/c/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/a/c/b/c$a;
    }
.end annotation


# static fields
.field private static final a:I

.field private static final b:I

.field private static final c:I


# instance fields
.field private final d:J

.field private final e:Lcom/google/ads/interactivemedia/v3/a/f/m;

.field private final f:Lcom/google/ads/interactivemedia/v3/a/f/j;

.field private g:Lcom/google/ads/interactivemedia/v3/a/c/g;

.field private h:Lcom/google/ads/interactivemedia/v3/a/c/m;

.field private i:I

.field private j:Lcom/google/ads/interactivemedia/v3/a/c/i;

.field private k:Lcom/google/ads/interactivemedia/v3/a/c/b/c$a;

.field private l:J

.field private m:J

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    const-string v0, "Xing"

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/q;->c(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->a:I

    .line 53
    const-string v0, "Info"

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/q;->c(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->b:I

    .line 54
    const-string v0, "VBRI"

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/q;->c(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->c:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 76
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/a/c/b/c;-><init>(J)V

    .line 77
    return-void
.end method

.method public constructor <init>(J)V
    .registers 6

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->d:J

    .line 87
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f/m;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->e:Lcom/google/ads/interactivemedia/v3/a/f/m;

    .line 88
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f/j;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/a/f/j;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->f:Lcom/google/ads/interactivemedia/v3/a/f/j;

    .line 89
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->l:J

    .line 90
    return-void
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/a/c/f;Z)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    const v9, -0x1f400

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 206
    .line 210
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->a()V

    .line 211
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c()J

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-nez v0, :cond_9e

    .line 212
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/a/c/b/b;->a(Lcom/google/ads/interactivemedia/v3/a/c/f;)Lcom/google/ads/interactivemedia/v3/a/c/i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->j:Lcom/google/ads/interactivemedia/v3/a/c/i;

    .line 213
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b()J

    move-result-wide v0

    long-to-int v0, v0

    .line 214
    if-nez p2, :cond_23

    .line 215
    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b(I)V

    :cond_23
    move v6, v0

    move v1, v2

    move v3, v2

    move v4, v2

    .line 219
    :goto_27
    if-eqz p2, :cond_2e

    const/16 v0, 0x1000

    if-ne v4, v0, :cond_2e

    .line 263
    :cond_2d
    :goto_2d
    return v2

    .line 222
    :cond_2e
    if-nez p2, :cond_3c

    const/high16 v0, 0x20000

    if-ne v4, v0, :cond_3c

    .line 223
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    const-string v1, "Searched too many bytes."

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_3c
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->e:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    invoke-interface {p1, v0, v2, v10, v5}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b([BIIZ)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 228
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->e:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 229
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->e:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v0

    .line 231
    if-eqz v1, :cond_59

    and-int v7, v0, v9

    and-int v8, v1, v9

    if-ne v7, v8, :cond_60

    .line 233
    :cond_59
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/j;->a(I)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_7a

    .line 237
    :cond_60
    add-int/lit8 v0, v4, 0x1

    .line 238
    if-eqz p2, :cond_73

    .line 239
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->a()V

    .line 240
    add-int v1, v6, v0

    invoke-interface {p1, v1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c(I)V

    move v1, v2

    move v3, v0

    move v0, v2

    :goto_6f
    move v4, v3

    move v3, v1

    move v1, v0

    .line 255
    goto :goto_27

    .line 242
    :cond_73
    invoke-interface {p1, v5}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b(I)V

    move v1, v2

    move v3, v0

    move v0, v2

    goto :goto_6f

    .line 246
    :cond_7a
    add-int/lit8 v3, v3, 0x1

    .line 247
    if-ne v3, v5, :cond_8b

    .line 248
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->f:Lcom/google/ads/interactivemedia/v3/a/f/j;

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/j;->a(ILcom/google/ads/interactivemedia/v3/a/f/j;)Z

    .line 253
    :goto_83
    add-int/lit8 v1, v7, -0x4

    invoke-interface {p1, v1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c(I)V

    move v1, v3

    move v3, v4

    goto :goto_6f

    .line 250
    :cond_8b
    if-ne v3, v10, :cond_9c

    .line 257
    if-eqz p2, :cond_98

    .line 258
    add-int v0, v6, v4

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b(I)V

    .line 262
    :goto_94
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->i:I

    move v2, v5

    .line 263
    goto :goto_2d

    .line 260
    :cond_98
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->a()V

    goto :goto_94

    :cond_9c
    move v0, v1

    goto :goto_83

    :cond_9e
    move v6, v2

    move v1, v2

    move v3, v2

    move v4, v2

    goto :goto_27
.end method

.method private b(Lcom/google/ads/interactivemedia/v3/a/c/f;)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, -0x1

    const/4 v4, 0x1

    const/4 v0, -0x1

    const/4 v6, 0x0

    .line 139
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->n:I

    if-nez v1, :cond_40

    .line 140
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->c(Lcom/google/ads/interactivemedia/v3/a/c/f;)Z

    move-result v1

    if-nez v1, :cond_11

    move v6, v0

    .line 164
    :cond_10
    :goto_10
    return v6

    .line 143
    :cond_11
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->l:J

    cmp-long v1, v2, v8

    if-nez v1, :cond_3a

    .line 144
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->k:Lcom/google/ads/interactivemedia/v3/a/c/b/c$a;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/a/c/b/c$a;->a(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->l:J

    .line 145
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->d:J

    cmp-long v1, v2, v8

    if-eqz v1, :cond_3a

    .line 146
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->k:Lcom/google/ads/interactivemedia/v3/a/c/b/c$a;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/a/c/b/c$a;->a(J)J

    move-result-wide v2

    .line 147
    iget-wide v8, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->l:J

    iget-wide v10, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->d:J

    sub-long v2, v10, v2

    add-long/2addr v2, v8

    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->l:J

    .line 150
    :cond_3a
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->f:Lcom/google/ads/interactivemedia/v3/a/f/j;

    iget v1, v1, Lcom/google/ads/interactivemedia/v3/a/f/j;->c:I

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->n:I

    .line 152
    :cond_40
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->h:Lcom/google/ads/interactivemedia/v3/a/c/m;

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->n:I

    invoke-interface {v1, p1, v2, v4}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(Lcom/google/ads/interactivemedia/v3/a/c/f;IZ)I

    move-result v1

    .line 153
    if-ne v1, v0, :cond_4c

    move v6, v0

    .line 154
    goto :goto_10

    .line 156
    :cond_4c
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->n:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->n:I

    .line 157
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->n:I

    if-gtz v0, :cond_10

    .line 160
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->l:J

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->m:J

    const-wide/32 v8, 0xf4240

    mul-long/2addr v2, v8

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->f:Lcom/google/ads/interactivemedia/v3/a/f/j;

    iget v5, v5, Lcom/google/ads/interactivemedia/v3/a/f/j;->d:I

    int-to-long v8, v5

    div-long/2addr v2, v8

    add-long/2addr v2, v0

    .line 161
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->h:Lcom/google/ads/interactivemedia/v3/a/c/m;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->f:Lcom/google/ads/interactivemedia/v3/a/f/j;

    iget v5, v0, Lcom/google/ads/interactivemedia/v3/a/f/j;->c:I

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(JIII[B)V

    .line 162
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->m:J

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->f:Lcom/google/ads/interactivemedia/v3/a/f/j;

    iget v2, v2, Lcom/google/ads/interactivemedia/v3/a/f/j;->g:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->m:J

    .line 163
    iput v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->n:I

    goto :goto_10
.end method

.method private c(Lcom/google/ads/interactivemedia/v3/a/c/f;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const v5, -0x1f400

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 172
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->a()V

    .line 173
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->e:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    const/4 v3, 0x4

    invoke-interface {p1, v2, v0, v3, v1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b([BIIZ)Z

    move-result v2

    if-nez v2, :cond_14

    .line 189
    :goto_13
    return v0

    .line 177
    :cond_14
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->e:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v2, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 178
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->e:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v2

    .line 179
    and-int v3, v2, v5

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->i:I

    and-int/2addr v4, v5

    if-ne v3, v4, :cond_34

    .line 180
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/a/f/j;->a(I)I

    move-result v3

    .line 181
    const/4 v4, -0x1

    if-eq v3, v4, :cond_34

    .line 182
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->f:Lcom/google/ads/interactivemedia/v3/a/f/j;

    invoke-static {v2, v0}, Lcom/google/ads/interactivemedia/v3/a/f/j;->a(ILcom/google/ads/interactivemedia/v3/a/f/j;)Z

    move v0, v1

    .line 183
    goto :goto_13

    .line 187
    :cond_34
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->i:I

    .line 188
    invoke-interface {p1, v1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b(I)V

    .line 189
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->d(Lcom/google/ads/interactivemedia/v3/a/c/f;)Z

    move-result v0

    goto :goto_13
.end method

.method private d(Lcom/google/ads/interactivemedia/v3/a/c/f;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 198
    const/4 v1, 0x0

    :try_start_2
    invoke-direct {p0, p1, v1}, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->a(Lcom/google/ads/interactivemedia/v3/a/c/f;Z)Z
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_5} :catch_7

    move-result v0

    .line 200
    :goto_6
    return v0

    .line 199
    :catch_7
    move-exception v1

    goto :goto_6
.end method

.method private e(Lcom/google/ads/interactivemedia/v3/a/c/f;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/16 v0, 0x24

    const/16 v6, 0x15

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 279
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->f:Lcom/google/ads/interactivemedia/v3/a/f/j;

    iget v2, v2, Lcom/google/ads/interactivemedia/v3/a/f/j;->c:I

    invoke-direct {v1, v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;-><init>(I)V

    .line 280
    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->f:Lcom/google/ads/interactivemedia/v3/a/f/j;

    iget v3, v3, Lcom/google/ads/interactivemedia/v3/a/f/j;->c:I

    invoke-interface {p1, v2, v8, v3}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c([BII)V

    .line 282
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c()J

    move-result-wide v2

    .line 283
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->d()J

    move-result-wide v4

    .line 287
    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->f:Lcom/google/ads/interactivemedia/v3/a/f/j;

    iget v7, v7, Lcom/google/ads/interactivemedia/v3/a/f/j;->a:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_ad

    .line 288
    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->f:Lcom/google/ads/interactivemedia/v3/a/f/j;

    iget v7, v7, Lcom/google/ads/interactivemedia/v3/a/f/j;->e:I

    if-eq v7, v9, :cond_2f

    move v6, v0

    .line 290
    :cond_2f
    :goto_2f
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c()I

    move-result v7

    add-int/lit8 v9, v6, 0x4

    if-lt v7, v9, :cond_da

    .line 291
    invoke-virtual {v1, v6}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 292
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v7

    .line 294
    :goto_3e
    sget v9, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->a:I

    if-eq v7, v9, :cond_46

    sget v9, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->b:I

    if-ne v7, v9, :cond_b7

    .line 295
    :cond_46
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->f:Lcom/google/ads/interactivemedia/v3/a/f/j;

    invoke-static/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/a/c/b/e;->a(Lcom/google/ads/interactivemedia/v3/a/f/j;Lcom/google/ads/interactivemedia/v3/a/f/m;JJ)Lcom/google/ads/interactivemedia/v3/a/c/b/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->k:Lcom/google/ads/interactivemedia/v3/a/c/b/c$a;

    .line 296
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->k:Lcom/google/ads/interactivemedia/v3/a/c/b/c$a;

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->j:Lcom/google/ads/interactivemedia/v3/a/c/i;

    if-nez v0, :cond_77

    .line 298
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->a()V

    .line 299
    add-int/lit16 v0, v6, 0x8d

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c(I)V

    .line 300
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->e:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    const/4 v1, 0x3

    invoke-interface {p1, v0, v8, v1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c([BII)V

    .line 301
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->e:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0, v8}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 302
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->e:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->j()I

    move-result v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/c/i;->a(I)Lcom/google/ads/interactivemedia/v3/a/c/i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->j:Lcom/google/ads/interactivemedia/v3/a/c/i;

    .line 304
    :cond_77
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->f:Lcom/google/ads/interactivemedia/v3/a/f/j;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/a/f/j;->c:I

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b(I)V

    .line 315
    :cond_7e
    :goto_7e
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->k:Lcom/google/ads/interactivemedia/v3/a/c/b/c$a;

    if-nez v0, :cond_ac

    .line 318
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->a()V

    .line 319
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->e:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    const/4 v1, 0x4

    invoke-interface {p1, v0, v8, v1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c([BII)V

    .line 320
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->e:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0, v8}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 321
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->e:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->f:Lcom/google/ads/interactivemedia/v3/a/f/j;

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/j;->a(ILcom/google/ads/interactivemedia/v3/a/f/j;)Z

    .line 322
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/c/b/a;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->f:Lcom/google/ads/interactivemedia/v3/a/f/j;

    iget v3, v3, Lcom/google/ads/interactivemedia/v3/a/f/j;->f:I

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/a/c/b/a;-><init>(JIJ)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->k:Lcom/google/ads/interactivemedia/v3/a/c/b/c$a;

    .line 324
    :cond_ac
    return-void

    .line 289
    :cond_ad
    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->f:Lcom/google/ads/interactivemedia/v3/a/f/j;

    iget v7, v7, Lcom/google/ads/interactivemedia/v3/a/f/j;->e:I

    if-ne v7, v9, :cond_2f

    const/16 v6, 0xd

    goto/16 :goto_2f

    .line 305
    :cond_b7
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c()I

    move-result v6

    const/16 v7, 0x28

    if-lt v6, v7, :cond_7e

    .line 307
    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 308
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v0

    .line 309
    sget v6, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->c:I

    if-ne v0, v6, :cond_7e

    .line 310
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->f:Lcom/google/ads/interactivemedia/v3/a/f/j;

    invoke-static/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/a/c/b/d;->a(Lcom/google/ads/interactivemedia/v3/a/f/j;Lcom/google/ads/interactivemedia/v3/a/f/m;JJ)Lcom/google/ads/interactivemedia/v3/a/c/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->k:Lcom/google/ads/interactivemedia/v3/a/c/b/c$a;

    .line 311
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->f:Lcom/google/ads/interactivemedia/v3/a/f/j;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/a/f/j;->c:I

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b(I)V

    goto :goto_7e

    :cond_da
    move v7, v8

    goto/16 :goto_3e
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/a/c/f;Lcom/google/ads/interactivemedia/v3/a/c/j;)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x0

    .line 120
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->i:I

    if-nez v1, :cond_d

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->d(Lcom/google/ads/interactivemedia/v3/a/c/f;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 135
    :goto_c
    return v2

    .line 123
    :cond_d
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->k:Lcom/google/ads/interactivemedia/v3/a/c/b/c$a;

    if-nez v1, :cond_4a

    .line 124
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->e(Lcom/google/ads/interactivemedia/v3/a/c/f;)V

    .line 125
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->g:Lcom/google/ads/interactivemedia/v3/a/c/g;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->k:Lcom/google/ads/interactivemedia/v3/a/c/b/c$a;

    invoke-interface {v1, v3}, Lcom/google/ads/interactivemedia/v3/a/c/g;->a(Lcom/google/ads/interactivemedia/v3/a/c/l;)V

    .line 126
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->f:Lcom/google/ads/interactivemedia/v3/a/f/j;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/a/f/j;->b:Ljava/lang/String;

    const/16 v3, 0x1000

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->k:Lcom/google/ads/interactivemedia/v3/a/c/b/c$a;

    .line 127
    invoke-interface {v4}, Lcom/google/ads/interactivemedia/v3/a/c/b/c$a;->b()J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->f:Lcom/google/ads/interactivemedia/v3/a/f/j;

    iget v6, v6, Lcom/google/ads/interactivemedia/v3/a/f/j;->e:I

    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->f:Lcom/google/ads/interactivemedia/v3/a/f/j;

    iget v7, v7, Lcom/google/ads/interactivemedia/v3/a/f/j;->d:I

    move-object v8, v0

    move-object v9, v0

    .line 126
    invoke-static/range {v0 .. v9}, Lcom/google/ads/interactivemedia/v3/a/p;->a(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/a/p;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->j:Lcom/google/ads/interactivemedia/v3/a/c/i;

    if-eqz v1, :cond_45

    .line 130
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->j:Lcom/google/ads/interactivemedia/v3/a/c/i;

    iget v1, v1, Lcom/google/ads/interactivemedia/v3/a/c/i;->a:I

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->j:Lcom/google/ads/interactivemedia/v3/a/c/i;

    iget v2, v2, Lcom/google/ads/interactivemedia/v3/a/c/i;->b:I

    .line 131
    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/a/p;->a(II)Lcom/google/ads/interactivemedia/v3/a/p;

    move-result-object v0

    .line 133
    :cond_45
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->h:Lcom/google/ads/interactivemedia/v3/a/c/m;

    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(Lcom/google/ads/interactivemedia/v3/a/p;)V

    .line 135
    :cond_4a
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->b(Lcom/google/ads/interactivemedia/v3/a/c/f;)I

    move-result v2

    goto :goto_c
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/a/c/g;)V
    .registers 3

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->g:Lcom/google/ads/interactivemedia/v3/a/c/g;

    .line 100
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/a/c/g;->d(I)Lcom/google/ads/interactivemedia/v3/a/c/m;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->h:Lcom/google/ads/interactivemedia/v3/a/c/m;

    .line 101
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/a/c/g;->f()V

    .line 102
    return-void
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
    .line 94
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->a(Lcom/google/ads/interactivemedia/v3/a/c/f;Z)Z

    move-result v0

    return v0
.end method

.method public b()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 106
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->i:I

    .line 107
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->m:J

    .line 108
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->l:J

    .line 109
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/b/c;->n:I

    .line 110
    return-void
.end method

.method public c()V
    .registers 1

    .prologue
    .line 115
    return-void
.end method
