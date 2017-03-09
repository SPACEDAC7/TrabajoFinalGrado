.class final Lcom/google/ads/interactivemedia/v3/a/c/e/l$a;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/a/c/e/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/a/c/e/e;

.field private final b:Lcom/google/ads/interactivemedia/v3/a/c/e/m;

.field private final c:Lcom/google/ads/interactivemedia/v3/a/f/l;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:I

.field private h:J


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/a/c/e/e;Lcom/google/ads/interactivemedia/v3/a/c/e/m;)V
    .registers 5

    .prologue
    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l$a;->a:Lcom/google/ads/interactivemedia/v3/a/c/e/e;

    .line 245
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l$a;->b:Lcom/google/ads/interactivemedia/v3/a/c/e/m;

    .line 246
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f/l;

    const/16 v1, 0x40

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/l;-><init>([B)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l$a;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    .line 247
    return-void
.end method

.method private b()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 285
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l$a;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b(I)V

    .line 286
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l$a;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l$a;->d:Z

    .line 287
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l$a;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l$a;->e:Z

    .line 290
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l$a;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b(I)V

    .line 291
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l$a;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/a/f/l;->c(I)I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l$a;->g:I

    .line 292
    return-void
.end method

.method private c()V
    .registers 10

    .prologue
    const/16 v8, 0x1e

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/16 v7, 0xf

    const/4 v6, 0x1

    .line 295
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l$a;->h:J

    .line 296
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l$a;->d:Z

    if-eqz v0, :cond_82

    .line 297
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l$a;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v0, v5}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b(I)V

    .line 298
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l$a;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v0, v4}, Lcom/google/ads/interactivemedia/v3/a/f/l;->c(I)I

    move-result v0

    int-to-long v0, v0

    shl-long/2addr v0, v8

    .line 299
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l$a;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v2, v6}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b(I)V

    .line 300
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l$a;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v2, v7}, Lcom/google/ads/interactivemedia/v3/a/f/l;->c(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0xf

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 301
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l$a;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v2, v6}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b(I)V

    .line 302
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l$a;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v2, v7}, Lcom/google/ads/interactivemedia/v3/a/f/l;->c(I)I

    move-result v2

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 303
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l$a;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v2, v6}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b(I)V

    .line 304
    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l$a;->f:Z

    if-nez v2, :cond_7a

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l$a;->e:Z

    if-eqz v2, :cond_7a

    .line 305
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l$a;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v2, v5}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b(I)V

    .line 306
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l$a;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v2, v4}, Lcom/google/ads/interactivemedia/v3/a/f/l;->c(I)I

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v8

    .line 307
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l$a;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v4, v6}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b(I)V

    .line 308
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l$a;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v4, v7}, Lcom/google/ads/interactivemedia/v3/a/f/l;->c(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0xf

    int-to-long v4, v4

    or-long/2addr v2, v4

    .line 309
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l$a;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v4, v6}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b(I)V

    .line 310
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l$a;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v4, v7}, Lcom/google/ads/interactivemedia/v3/a/f/l;->c(I)I

    move-result v4

    int-to-long v4, v4

    or-long/2addr v2, v4

    .line 311
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l$a;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v4, v6}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b(I)V

    .line 317
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l$a;->b:Lcom/google/ads/interactivemedia/v3/a/c/e/m;

    invoke-virtual {v4, v2, v3}, Lcom/google/ads/interactivemedia/v3/a/c/e/m;->a(J)J

    .line 318
    iput-boolean v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l$a;->f:Z

    .line 320
    :cond_7a
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l$a;->b:Lcom/google/ads/interactivemedia/v3/a/c/e/m;

    invoke-virtual {v2, v0, v1}, Lcom/google/ads/interactivemedia/v3/a/c/e/m;->a(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l$a;->h:J

    .line 322
    :cond_82
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 257
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l$a;->f:Z

    .line 258
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l$a;->a:Lcom/google/ads/interactivemedia/v3/a/c/e/e;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/c/e/e;->a()V

    .line 259
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/a/f/m;Lcom/google/ads/interactivemedia/v3/a/c/g;)V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 268
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l$a;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/f/l;->a:[B

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v2, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->a([BII)V

    .line 269
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l$a;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/a/f/l;->a(I)V

    .line 270
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/c/e/l$a;->b()V

    .line 271
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l$a;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/f/l;->a:[B

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l$a;->g:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->a([BII)V

    .line 272
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l$a;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/a/f/l;->a(I)V

    .line 273
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/c/e/l$a;->c()V

    .line 274
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l$a;->a:Lcom/google/ads/interactivemedia/v3/a/c/e/e;

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l$a;->h:J

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/ads/interactivemedia/v3/a/c/e/e;->a(JZ)V

    .line 275
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l$a;->a:Lcom/google/ads/interactivemedia/v3/a/c/e/e;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/a/c/e/e;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;)V

    .line 277
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/l$a;->a:Lcom/google/ads/interactivemedia/v3/a/c/e/e;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/c/e/e;->b()V

    .line 278
    return-void
.end method
