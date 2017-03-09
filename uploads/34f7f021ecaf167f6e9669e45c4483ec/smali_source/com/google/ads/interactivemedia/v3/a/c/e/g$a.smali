.class final Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/a/c/e/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/a/c/e/g$a$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/a/c/m;

.field private final b:Z

.field private final c:Z

.field private final d:Lcom/google/ads/interactivemedia/v3/a/f/l;

.field private final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/ads/interactivemedia/v3/a/f/k$b;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/ads/interactivemedia/v3/a/f/k$a;",
            ">;"
        }
    .end annotation
.end field

.field private g:[B

.field private h:I

.field private i:I

.field private j:J

.field private k:Z

.field private l:J

.field private m:Lcom/google/ads/interactivemedia/v3/a/c/e/g$a$a;

.field private n:Lcom/google/ads/interactivemedia/v3/a/c/e/g$a$a;

.field private o:Z

.field private p:J

.field private q:J

.field private r:Z


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/a/c/m;ZZ)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->a:Lcom/google/ads/interactivemedia/v3/a/c/m;

    .line 247
    iput-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->b:Z

    .line 248
    iput-boolean p3, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->c:Z

    .line 249
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->e:Landroid/util/SparseArray;

    .line 250
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->f:Landroid/util/SparseArray;

    .line 251
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a$a;

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a$a;-><init>(Lcom/google/ads/interactivemedia/v3/a/c/e/g$1;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->m:Lcom/google/ads/interactivemedia/v3/a/c/e/g$a$a;

    .line 252
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a$a;

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a$a;-><init>(Lcom/google/ads/interactivemedia/v3/a/c/e/g$1;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->n:Lcom/google/ads/interactivemedia/v3/a/c/e/g$a$a;

    .line 253
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/a/f/l;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->d:Lcom/google/ads/interactivemedia/v3/a/f/l;

    .line 254
    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->g:[B

    .line 255
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->b()V

    .line 256
    return-void
.end method

.method private a(I)V
    .registers 10

    .prologue
    .line 433
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->r:Z

    if-eqz v0, :cond_15

    const/4 v4, 0x1

    .line 434
    :goto_5
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->j:J

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->p:J

    sub-long/2addr v0, v2

    long-to-int v5, v0

    .line 435
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->a:Lcom/google/ads/interactivemedia/v3/a/c/m;

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->q:J

    const/4 v7, 0x0

    move v6, p1

    invoke-interface/range {v1 .. v7}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(JIII[B)V

    .line 436
    return-void

    .line 433
    :cond_15
    const/4 v4, 0x0

    goto :goto_5
.end method


# virtual methods
.method public a(JI)V
    .registers 9

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 416
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->i:I

    const/16 v3, 0x9

    if-eq v2, v3, :cond_16

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->c:Z

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->n:Lcom/google/ads/interactivemedia/v3/a/c/e/g$a$a;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->m:Lcom/google/ads/interactivemedia/v3/a/c/e/g$a$a;

    .line 417
    invoke-static {v2, v3}, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a$a;->a(Lcom/google/ads/interactivemedia/v3/a/c/e/g$a$a;Lcom/google/ads/interactivemedia/v3/a/c/e/g$a$a;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 419
    :cond_16
    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->o:Z

    if-eqz v2, :cond_23

    .line 420
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->j:J

    sub-long v2, p1, v2

    long-to-int v2, v2

    .line 421
    add-int/2addr v2, p3

    invoke-direct {p0, v2}, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->a(I)V

    .line 423
    :cond_23
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->j:J

    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->p:J

    .line 424
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->l:J

    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->q:J

    .line 425
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->r:Z

    .line 426
    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->o:Z

    .line 428
    :cond_2f
    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->r:Z

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->i:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_46

    iget-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->b:Z

    if-eqz v3, :cond_47

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->i:I

    if-ne v3, v1, :cond_47

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->n:Lcom/google/ads/interactivemedia/v3/a/c/e/g$a$a;

    .line 429
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a$a;->b()Z

    move-result v3

    if-eqz v3, :cond_47

    :cond_46
    move v0, v1

    :cond_47
    or-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->r:Z

    .line 430
    return-void
.end method

.method public a(JIJ)V
    .registers 9

    .prologue
    const/4 v2, 0x1

    .line 277
    iput p3, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->i:I

    .line 278
    iput-wide p4, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->l:J

    .line 279
    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->j:J

    .line 280
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->b:Z

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->i:I

    if-eq v0, v2, :cond_21

    :cond_f
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->c:Z

    if-eqz v0, :cond_33

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->i:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_21

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->i:I

    if-eq v0, v2, :cond_21

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_33

    .line 285
    :cond_21
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->m:Lcom/google/ads/interactivemedia/v3/a/c/e/g$a$a;

    .line 286
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->n:Lcom/google/ads/interactivemedia/v3/a/c/e/g$a$a;

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->m:Lcom/google/ads/interactivemedia/v3/a/c/e/g$a$a;

    .line 287
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->n:Lcom/google/ads/interactivemedia/v3/a/c/e/g$a$a;

    .line 288
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->n:Lcom/google/ads/interactivemedia/v3/a/c/e/g$a$a;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a$a;->a()V

    .line 289
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->h:I

    .line 290
    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->k:Z

    .line 292
    :cond_33
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/a/f/k$a;)V
    .registers 4

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->f:Landroid/util/SparseArray;

    iget v1, p1, Lcom/google/ads/interactivemedia/v3/a/f/k$a;->a:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 268
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/a/f/k$b;)V
    .registers 4

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->e:Landroid/util/SparseArray;

    iget v1, p1, Lcom/google/ads/interactivemedia/v3/a/f/k$b;->a:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 264
    return-void
.end method

.method public a([BII)V
    .registers 23

    .prologue
    .line 302
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->k:Z

    if-nez v2, :cond_7

    .line 413
    :cond_6
    :goto_6
    return-void

    .line 305
    :cond_7
    sub-int v2, p3, p2

    .line 306
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->g:[B

    array-length v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->h:I

    add-int/2addr v4, v2

    if-ge v3, v4, :cond_28

    .line 307
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->g:[B

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->h:I

    add-int/2addr v4, v2

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->g:[B

    .line 309
    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->g:[B

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->h:I

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 310
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->h:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->h:I

    .line 312
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->d:Lcom/google/ads/interactivemedia/v3/a/f/l;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->g:[B

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->h:I

    invoke-virtual {v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/a/f/l;->a([BI)V

    .line 313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->d:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/a/f/l;->a()I

    move-result v2

    const/16 v3, 0x8

    if-lt v2, v3, :cond_6

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->d:Lcom/google/ads/interactivemedia/v3/a/f/l;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b(I)V

    .line 317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->d:Lcom/google/ads/interactivemedia/v3/a/f/l;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/a/f/l;->c(I)I

    move-result v4

    .line 318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->d:Lcom/google/ads/interactivemedia/v3/a/f/l;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b(I)V

    .line 322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->d:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/a/f/l;->c()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->d:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/a/f/l;->d()I

    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->d:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/a/f/l;->c()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->d:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/a/f/l;->d()I

    move-result v5

    .line 330
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->c:Z

    if-nez v2, :cond_ab

    .line 332
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->k:Z

    .line 333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->n:Lcom/google/ads/interactivemedia/v3/a/c/e/g$a$a;

    invoke-virtual {v2, v5}, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a$a;->a(I)V

    goto/16 :goto_6

    .line 336
    :cond_ab
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->d:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/a/f/l;->c()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->d:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/a/f/l;->d()I

    move-result v7

    .line 340
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->f:Landroid/util/SparseArray;

    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_ce

    .line 342
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->k:Z

    goto/16 :goto_6

    .line 345
    :cond_ce
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->f:Landroid/util/SparseArray;

    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/a/f/k$a;

    .line 346
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->e:Landroid/util/SparseArray;

    iget v6, v2, Lcom/google/ads/interactivemedia/v3/a/f/k$a;->b:I

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/ads/interactivemedia/v3/a/f/k$b;

    .line 347
    iget-boolean v6, v3, Lcom/google/ads/interactivemedia/v3/a/f/k$b;->e:Z

    if-eqz v6, :cond_fb

    .line 348
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->d:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/a/f/l;->a()I

    move-result v6

    const/4 v8, 0x2

    if-lt v6, v8, :cond_6

    .line 351
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->d:Lcom/google/ads/interactivemedia/v3/a/f/l;

    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b(I)V

    .line 353
    :cond_fb
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->d:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/a/f/l;->a()I

    move-result v6

    iget v8, v3, Lcom/google/ads/interactivemedia/v3/a/f/k$b;->g:I

    if-lt v6, v8, :cond_6

    .line 356
    const/4 v8, 0x0

    .line 357
    const/4 v9, 0x0

    .line 358
    const/4 v10, 0x0

    .line 359
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->d:Lcom/google/ads/interactivemedia/v3/a/f/l;

    iget v11, v3, Lcom/google/ads/interactivemedia/v3/a/f/k$b;->g:I

    invoke-virtual {v6, v11}, Lcom/google/ads/interactivemedia/v3/a/f/l;->c(I)I

    move-result v6

    .line 360
    iget-boolean v11, v3, Lcom/google/ads/interactivemedia/v3/a/f/k$b;->f:Z

    if-nez v11, :cond_141

    .line 361
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->d:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v8}, Lcom/google/ads/interactivemedia/v3/a/f/l;->a()I

    move-result v8

    const/4 v11, 0x1

    if-lt v8, v11, :cond_6

    .line 364
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->d:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v8}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b()Z

    move-result v8

    .line 365
    if-eqz v8, :cond_141

    .line 366
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->d:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v9}, Lcom/google/ads/interactivemedia/v3/a/f/l;->a()I

    move-result v9

    const/4 v10, 0x1

    if-lt v9, v10, :cond_6

    .line 369
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->d:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v9}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b()Z

    move-result v10

    .line 370
    const/4 v9, 0x1

    .line 373
    :cond_141
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->i:I

    const/4 v12, 0x5

    if-ne v11, v12, :cond_1ad

    const/4 v11, 0x1

    .line 374
    :goto_149
    const/4 v12, 0x0

    .line 375
    if-eqz v11, :cond_15e

    .line 376
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->d:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v12}, Lcom/google/ads/interactivemedia/v3/a/f/l;->c()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 379
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->d:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v12}, Lcom/google/ads/interactivemedia/v3/a/f/l;->d()I

    move-result v12

    .line 381
    :cond_15e
    const/4 v13, 0x0

    .line 382
    const/4 v14, 0x0

    .line 383
    const/4 v15, 0x0

    .line 384
    const/16 v16, 0x0

    .line 385
    iget v0, v3, Lcom/google/ads/interactivemedia/v3/a/f/k$b;->h:I

    move/from16 v17, v0

    if-nez v17, :cond_1af

    .line 386
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->d:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v13}, Lcom/google/ads/interactivemedia/v3/a/f/l;->a()I

    move-result v13

    iget v0, v3, Lcom/google/ads/interactivemedia/v3/a/f/k$b;->i:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v13, v0, :cond_6

    .line 389
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->d:Lcom/google/ads/interactivemedia/v3/a/f/l;

    iget v0, v3, Lcom/google/ads/interactivemedia/v3/a/f/k$b;->i:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/google/ads/interactivemedia/v3/a/f/l;->c(I)I

    move-result v13

    .line 390
    iget-boolean v2, v2, Lcom/google/ads/interactivemedia/v3/a/f/k$a;->c:Z

    if-eqz v2, :cond_19f

    if-nez v8, :cond_19f

    .line 391
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->d:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/a/f/l;->c()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 394
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->d:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/a/f/l;->e()I

    move-result v14

    .line 409
    :cond_19f
    :goto_19f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->n:Lcom/google/ads/interactivemedia/v3/a/c/e/g$a$a;

    invoke-virtual/range {v2 .. v16}, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a$a;->a(Lcom/google/ads/interactivemedia/v3/a/f/k$b;IIIIZZZZIIIII)V

    .line 412
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->k:Z

    goto/16 :goto_6

    .line 373
    :cond_1ad
    const/4 v11, 0x0

    goto :goto_149

    .line 396
    :cond_1af
    iget v0, v3, Lcom/google/ads/interactivemedia/v3/a/f/k$b;->h:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_19f

    iget-boolean v0, v3, Lcom/google/ads/interactivemedia/v3/a/f/k$b;->j:Z

    move/from16 v17, v0

    if-nez v17, :cond_19f

    .line 398
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->d:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v15}, Lcom/google/ads/interactivemedia/v3/a/f/l;->c()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 401
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->d:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v15}, Lcom/google/ads/interactivemedia/v3/a/f/l;->e()I

    move-result v15

    .line 402
    iget-boolean v2, v2, Lcom/google/ads/interactivemedia/v3/a/f/k$a;->c:Z

    if-eqz v2, :cond_19f

    if-nez v8, :cond_19f

    .line 403
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->d:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/a/f/l;->c()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->d:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/a/f/l;->e()I

    move-result v16

    goto :goto_19f
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->c:Z

    return v0
.end method

.method public b()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 271
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->k:Z

    .line 272
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->o:Z

    .line 273
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a;->n:Lcom/google/ads/interactivemedia/v3/a/c/e/g$a$a;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/c/e/g$a$a;->a()V

    .line 274
    return-void
.end method
