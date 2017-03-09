.class public final Lcom/google/ads/interactivemedia/v3/a/c/a/b;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/a/c/e;
.implements Lcom/google/ads/interactivemedia/v3/a/c/l;


# static fields
.field private static final d:I


# instance fields
.field public a:I

.field public b:I

.field public c:J

.field private final e:Lcom/google/ads/interactivemedia/v3/a/f/m;

.field private final g:Lcom/google/ads/interactivemedia/v3/a/f/m;

.field private final h:Lcom/google/ads/interactivemedia/v3/a/f/m;

.field private final i:Lcom/google/ads/interactivemedia/v3/a/f/m;

.field private j:Lcom/google/ads/interactivemedia/v3/a/c/g;

.field private k:I

.field private l:I

.field private m:Lcom/google/ads/interactivemedia/v3/a/c/a/a;

.field private n:Lcom/google/ads/interactivemedia/v3/a/c/a/e;

.field private o:Lcom/google/ads/interactivemedia/v3/a/c/a/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    const-string v0, "FLV"

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/q;->c(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->d:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f/m;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->e:Lcom/google/ads/interactivemedia/v3/a/f/m;

    .line 74
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f/m;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->g:Lcom/google/ads/interactivemedia/v3/a/f/m;

    .line 75
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f/m;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->h:Lcom/google/ads/interactivemedia/v3/a/f/m;

    .line 76
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    .line 77
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->k:I

    .line 78
    return-void
.end method

.method private b(Lcom/google/ads/interactivemedia/v3/a/c/f;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x9

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 163
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->g:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    invoke-interface {p1, v2, v0, v5, v1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->a([BIIZ)Z

    move-result v2

    if-nez v2, :cond_f

    .line 188
    :goto_e
    return v0

    .line 168
    :cond_f
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->g:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v2, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 169
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->g:Lcom/google/ads/interactivemedia/v3/a/f/m;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 170
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->g:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v3

    .line 171
    and-int/lit8 v2, v3, 0x4

    if-eqz v2, :cond_79

    move v2, v1

    .line 172
    :goto_25
    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2a

    move v0, v1

    .line 173
    :cond_2a
    if-eqz v2, :cond_3f

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->m:Lcom/google/ads/interactivemedia/v3/a/c/a/a;

    if-nez v2, :cond_3f

    .line 174
    new-instance v2, Lcom/google/ads/interactivemedia/v3/a/c/a/a;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->j:Lcom/google/ads/interactivemedia/v3/a/c/g;

    const/16 v4, 0x8

    invoke-interface {v3, v4}, Lcom/google/ads/interactivemedia/v3/a/c/g;->d(I)Lcom/google/ads/interactivemedia/v3/a/c/m;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/ads/interactivemedia/v3/a/c/a/a;-><init>(Lcom/google/ads/interactivemedia/v3/a/c/m;)V

    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->m:Lcom/google/ads/interactivemedia/v3/a/c/a/a;

    .line 176
    :cond_3f
    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->n:Lcom/google/ads/interactivemedia/v3/a/c/a/e;

    if-nez v0, :cond_52

    .line 177
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/c/a/e;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->j:Lcom/google/ads/interactivemedia/v3/a/c/g;

    invoke-interface {v2, v5}, Lcom/google/ads/interactivemedia/v3/a/c/g;->d(I)Lcom/google/ads/interactivemedia/v3/a/c/m;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/ads/interactivemedia/v3/a/c/a/e;-><init>(Lcom/google/ads/interactivemedia/v3/a/c/m;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->n:Lcom/google/ads/interactivemedia/v3/a/c/a/e;

    .line 179
    :cond_52
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->o:Lcom/google/ads/interactivemedia/v3/a/c/a/c;

    if-nez v0, :cond_5e

    .line 180
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/c/a/c;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/google/ads/interactivemedia/v3/a/c/a/c;-><init>(Lcom/google/ads/interactivemedia/v3/a/c/m;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->o:Lcom/google/ads/interactivemedia/v3/a/c/a/c;

    .line 182
    :cond_5e
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->j:Lcom/google/ads/interactivemedia/v3/a/c/g;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/a/c/g;->f()V

    .line 183
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->j:Lcom/google/ads/interactivemedia/v3/a/c/g;

    invoke-interface {v0, p0}, Lcom/google/ads/interactivemedia/v3/a/c/g;->a(Lcom/google/ads/interactivemedia/v3/a/c/l;)V

    .line 186
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->g:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v0

    add-int/lit8 v0, v0, -0x9

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->l:I

    .line 187
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->k:I

    move v0, v1

    .line 188
    goto :goto_e

    :cond_79
    move v2, v0

    .line 171
    goto :goto_25
.end method

.method private c(Lcom/google/ads/interactivemedia/v3/a/c/f;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 199
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->l:I

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b(I)V

    .line 200
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->l:I

    .line 201
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->k:I

    .line 202
    return-void
.end method

.method private d(Lcom/google/ads/interactivemedia/v3/a/c/f;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 213
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->h:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    const/16 v3, 0xb

    invoke-interface {p1, v2, v0, v3, v1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->a([BIIZ)Z

    move-result v2

    if-nez v2, :cond_f

    .line 225
    :goto_e
    return v0

    .line 218
    :cond_f
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->h:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v2, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 219
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->h:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->a:I

    .line 220
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->h:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->j()I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->b:I

    .line 221
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->h:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->j()I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->c:J

    .line 222
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->h:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    int-to-long v2, v0

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->c:J

    or-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->c:J

    .line 223
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->h:Lcom/google/ads/interactivemedia/v3/a/f/m;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 224
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->k:I

    move v0, v1

    .line 225
    goto :goto_e
.end method

.method private e(Lcom/google/ads/interactivemedia/v3/a/c/f;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 237
    const/4 v0, 0x1

    .line 238
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->a:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1d

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->m:Lcom/google/ads/interactivemedia/v3/a/c/a/a;

    if-eqz v1, :cond_1d

    .line 239
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->m:Lcom/google/ads/interactivemedia/v3/a/c/a/a;

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->f(Lcom/google/ads/interactivemedia/v3/a/c/f;)Lcom/google/ads/interactivemedia/v3/a/f/m;

    move-result-object v2

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->c:J

    invoke-virtual {v1, v2, v4, v5}, Lcom/google/ads/interactivemedia/v3/a/c/a/a;->b(Lcom/google/ads/interactivemedia/v3/a/f/m;J)V

    .line 256
    :cond_16
    :goto_16
    const/4 v1, 0x4

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->l:I

    .line 257
    const/4 v1, 0x2

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->k:I

    .line 258
    return v0

    .line 240
    :cond_1d
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->a:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_33

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->n:Lcom/google/ads/interactivemedia/v3/a/c/a/e;

    if-eqz v1, :cond_33

    .line 241
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->n:Lcom/google/ads/interactivemedia/v3/a/c/a/e;

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->f(Lcom/google/ads/interactivemedia/v3/a/c/f;)Lcom/google/ads/interactivemedia/v3/a/f/m;

    move-result-object v2

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->c:J

    invoke-virtual {v1, v2, v4, v5}, Lcom/google/ads/interactivemedia/v3/a/c/a/e;->b(Lcom/google/ads/interactivemedia/v3/a/f/m;J)V

    goto :goto_16

    .line 242
    :cond_33
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->a:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_73

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->o:Lcom/google/ads/interactivemedia/v3/a/c/a/c;

    if-eqz v1, :cond_73

    .line 243
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->o:Lcom/google/ads/interactivemedia/v3/a/c/a/c;

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->f(Lcom/google/ads/interactivemedia/v3/a/c/f;)Lcom/google/ads/interactivemedia/v3/a/f/m;

    move-result-object v2

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->c:J

    invoke-virtual {v1, v2, v4, v5}, Lcom/google/ads/interactivemedia/v3/a/c/a/c;->b(Lcom/google/ads/interactivemedia/v3/a/f/m;J)V

    .line 244
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->o:Lcom/google/ads/interactivemedia/v3/a/c/a/c;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/a/c/a/c;->a()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_16

    .line 245
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->m:Lcom/google/ads/interactivemedia/v3/a/c/a/a;

    if-eqz v1, :cond_63

    .line 246
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->m:Lcom/google/ads/interactivemedia/v3/a/c/a/a;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->o:Lcom/google/ads/interactivemedia/v3/a/c/a/c;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/a/c/a/c;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/a/c/a/a;->a(J)V

    .line 248
    :cond_63
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->n:Lcom/google/ads/interactivemedia/v3/a/c/a/e;

    if-eqz v1, :cond_16

    .line 249
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->n:Lcom/google/ads/interactivemedia/v3/a/c/a/e;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->o:Lcom/google/ads/interactivemedia/v3/a/c/a/c;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/a/c/a/c;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/a/c/a/e;->a(J)V

    goto :goto_16

    .line 253
    :cond_73
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->b:I

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b(I)V

    .line 254
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private f(Lcom/google/ads/interactivemedia/v3/a/c/f;)Lcom/google/ads/interactivemedia/v3/a/f/m;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 263
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->b:I

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->e()I

    move-result v1

    if-le v0, v1, :cond_33

    .line 264
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->e()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->b:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1, v3}, Lcom/google/ads/interactivemedia/v3/a/f/m;->a([BI)V

    .line 268
    :goto_20
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->b:I

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b(I)V

    .line 269
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->b:I

    invoke-interface {p1, v0, v3, v1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b([BII)V

    .line 270
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    return-object v0

    .line 266
    :cond_33
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0, v3}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    goto :goto_20
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/a/c/f;Lcom/google/ads/interactivemedia/v3/a/c/j;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 131
    :cond_1
    :goto_1
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->k:I

    packed-switch v1, :pswitch_data_22

    goto :goto_1

    .line 133
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->b(Lcom/google/ads/interactivemedia/v3/a/c/f;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 147
    :goto_d
    return v0

    .line 138
    :pswitch_e
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->c(Lcom/google/ads/interactivemedia/v3/a/c/f;)V

    goto :goto_1

    .line 141
    :pswitch_12
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->d(Lcom/google/ads/interactivemedia/v3/a/c/f;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_d

    .line 146
    :pswitch_19
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->e(Lcom/google/ads/interactivemedia/v3/a/c/f;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    const/4 v0, 0x0

    goto :goto_d

    .line 131
    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_7
        :pswitch_e
        :pswitch_12
        :pswitch_19
    .end packed-switch
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/a/c/g;)V
    .registers 2

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->j:Lcom/google/ads/interactivemedia/v3/a/c/g;

    .line 114
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 277
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/a/c/f;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v0, 0x0

    .line 83
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->e:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    const/4 v2, 0x3

    invoke-interface {p1, v1, v0, v2}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c([BII)V

    .line 84
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->e:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 85
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->e:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->j()I

    move-result v1

    sget v2, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->d:I

    if-eq v1, v2, :cond_1a

    .line 108
    :cond_19
    :goto_19
    return v0

    .line 90
    :cond_1a
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->e:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    const/4 v2, 0x2

    invoke-interface {p1, v1, v0, v2}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c([BII)V

    .line 91
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->e:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 92
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->e:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->g()I

    move-result v1

    and-int/lit16 v1, v1, 0xfa

    if-nez v1, :cond_19

    .line 97
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->e:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    invoke-interface {p1, v1, v0, v3}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c([BII)V

    .line 98
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->e:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 99
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->e:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v1

    .line 101
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->a()V

    .line 102
    invoke-interface {p1, v1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c(I)V

    .line 105
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->e:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    invoke-interface {p1, v1, v0, v3}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c([BII)V

    .line 106
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->e:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 108
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->e:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v1

    if-nez v1, :cond_19

    const/4 v0, 0x1

    goto :goto_19
.end method

.method public b(J)J
    .registers 5

    .prologue
    .line 282
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public b()V
    .registers 2

    .prologue
    .line 118
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->k:I

    .line 119
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/b;->l:I

    .line 120
    return-void
.end method

.method public c()V
    .registers 1

    .prologue
    .line 125
    return-void
.end method
