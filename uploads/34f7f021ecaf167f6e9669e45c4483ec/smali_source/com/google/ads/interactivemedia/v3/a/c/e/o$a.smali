.class Lcom/google/ads/interactivemedia/v3/a/c/e/o$a;
.super Lcom/google/ads/interactivemedia/v3/a/c/e/o$d;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/a/c/e/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/a/c/e/o;

.field private final b:Lcom/google/ads/interactivemedia/v3/a/f/m;

.field private final c:Lcom/google/ads/interactivemedia/v3/a/f/l;

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/a/c/e/o;)V
    .registers 4

    .prologue
    .line 278
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$a;->a:Lcom/google/ads/interactivemedia/v3/a/c/e/o;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/c/e/o$d;-><init>(Lcom/google/ads/interactivemedia/v3/a/c/e/o$1;)V

    .line 279
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$a;->b:Lcom/google/ads/interactivemedia/v3/a/f/m;

    .line 280
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f/l;

    const/4 v1, 0x4

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/l;-><init>([B)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$a;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    .line 281
    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 286
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/a/f/m;ZLcom/google/ads/interactivemedia/v3/a/c/g;)V
    .registers 12

    .prologue
    const/16 v7, 0xd

    const/16 v2, 0xc

    const/4 v6, 0x3

    const/4 v0, 0x0

    .line 292
    if-eqz p2, :cond_35

    .line 293
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v1

    .line 294
    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 298
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$a;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {p1, v1, v6}, Lcom/google/ads/interactivemedia/v3/a/f/m;->a(Lcom/google/ads/interactivemedia/v3/a/f/l;I)V

    .line 299
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$a;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b(I)V

    .line 300
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$a;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/a/f/l;->c(I)I

    move-result v1

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$a;->d:I

    .line 301
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$a;->e:I

    .line 302
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$a;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/a/f/l;->a:[B

    const/4 v2, -0x1

    invoke-static {v1, v0, v6, v2}, Lcom/google/ads/interactivemedia/v3/a/f/q;->a([BIII)I

    move-result v1

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$a;->f:I

    .line 304
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$a;->b:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$a;->d:I

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->a(I)V

    .line 307
    :cond_35
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b()I

    move-result v1

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$a;->d:I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$a;->e:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 308
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$a;->b:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$a;->e:I

    invoke-virtual {p1, v2, v3, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->a([BII)V

    .line 309
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$a;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$a;->e:I

    .line 310
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$a;->e:I

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$a;->d:I

    if-ge v1, v2, :cond_57

    .line 338
    :cond_56
    return-void

    .line 315
    :cond_57
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$a;->b:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$a;->d:I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$a;->f:I

    invoke-static {v1, v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/a/f/q;->a([BIII)I

    move-result v1

    if-nez v1, :cond_56

    .line 322
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$a;->b:Lcom/google/ads/interactivemedia/v3/a/f/m;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 324
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$a;->d:I

    add-int/lit8 v1, v1, -0x9

    div-int/lit8 v1, v1, 0x4

    .line 325
    :goto_71
    if-ge v0, v1, :cond_56

    .line 326
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$a;->b:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$a;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/a/f/m;->a(Lcom/google/ads/interactivemedia/v3/a/f/l;I)V

    .line 327
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$a;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/a/f/l;->c(I)I

    move-result v2

    .line 328
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$a;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v3, v6}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b(I)V

    .line 329
    if-nez v2, :cond_92

    .line 330
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$a;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v2, v7}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b(I)V

    .line 325
    :goto_8f
    add-int/lit8 v0, v0, 0x1

    goto :goto_71

    .line 332
    :cond_92
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$a;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v2, v7}, Lcom/google/ads/interactivemedia/v3/a/f/l;->c(I)I

    move-result v2

    .line 333
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$a;->a:Lcom/google/ads/interactivemedia/v3/a/c/e/o;

    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->a:Landroid/util/SparseArray;

    new-instance v4, Lcom/google/ads/interactivemedia/v3/a/c/e/o$c;

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$a;->a:Lcom/google/ads/interactivemedia/v3/a/c/e/o;

    invoke-direct {v4, v5, v2}, Lcom/google/ads/interactivemedia/v3/a/c/e/o$c;-><init>(Lcom/google/ads/interactivemedia/v3/a/c/e/o;I)V

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_8f
.end method
