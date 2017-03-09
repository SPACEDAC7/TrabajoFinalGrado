.class final Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/a/c/e/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/a/c/m;

.field private b:J

.field private c:Z

.field private d:I

.field private e:J

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:J

.field private l:J

.field private m:Z


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/a/c/m;)V
    .registers 2

    .prologue
    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;->a:Lcom/google/ads/interactivemedia/v3/a/c/m;

    .line 408
    return-void
.end method

.method private a(I)V
    .registers 10

    .prologue
    .line 475
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;->m:Z

    if-eqz v0, :cond_15

    const/4 v4, 0x1

    .line 476
    :goto_5
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;->b:J

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;->k:J

    sub-long/2addr v0, v2

    long-to-int v5, v0

    .line 477
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;->a:Lcom/google/ads/interactivemedia/v3/a/c/m;

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;->l:J

    const/4 v7, 0x0

    move v6, p1

    invoke-interface/range {v1 .. v7}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(JIII[B)V

    .line 478
    return-void

    .line 475
    :cond_15
    const/4 v4, 0x0

    goto :goto_5
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 411
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;->f:Z

    .line 412
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;->g:Z

    .line 413
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;->h:Z

    .line 414
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;->i:Z

    .line 415
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;->j:Z

    .line 416
    return-void
.end method

.method public a(JI)V
    .registers 7

    .prologue
    .line 456
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;->j:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;->g:Z

    if-eqz v0, :cond_10

    .line 458
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;->c:Z

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;->m:Z

    .line 459
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;->j:Z

    .line 472
    :cond_f
    :goto_f
    return-void

    .line 460
    :cond_10
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;->h:Z

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;->g:Z

    if-eqz v0, :cond_f

    .line 462
    :cond_18
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;->i:Z

    if-eqz v0, :cond_25

    .line 464
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;->b:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    .line 465
    add-int/2addr v0, p3

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;->a(I)V

    .line 467
    :cond_25
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;->b:J

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;->k:J

    .line 468
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;->e:J

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;->l:J

    .line 469
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;->i:Z

    .line 470
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;->c:Z

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;->m:Z

    goto :goto_f
.end method

.method public a(JIIJ)V
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 419
    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;->g:Z

    .line 420
    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;->h:Z

    .line 421
    iput-wide p5, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;->e:J

    .line 422
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;->d:I

    .line 423
    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;->b:J

    .line 425
    const/16 v0, 0x20

    if-lt p4, v0, :cond_2a

    .line 426
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;->j:Z

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;->i:Z

    if-eqz v0, :cond_1d

    .line 428
    invoke-direct {p0, p3}, Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;->a(I)V

    .line 429
    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;->i:Z

    .line 431
    :cond_1d
    const/16 v0, 0x22

    if-gt p4, v0, :cond_2a

    .line 433
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;->j:Z

    if-nez v0, :cond_41

    move v0, v1

    :goto_26
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;->h:Z

    .line 434
    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;->j:Z

    .line 439
    :cond_2a
    const/16 v0, 0x10

    if-lt p4, v0, :cond_43

    const/16 v0, 0x15

    if-gt p4, v0, :cond_43

    move v0, v1

    :goto_33
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;->c:Z

    .line 440
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;->c:Z

    if-nez v0, :cond_3d

    const/16 v0, 0x9

    if-gt p4, v0, :cond_3e

    :cond_3d
    move v2, v1

    :cond_3e
    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;->f:Z

    .line 441
    return-void

    :cond_41
    move v0, v2

    .line 433
    goto :goto_26

    :cond_43
    move v0, v2

    .line 439
    goto :goto_33
.end method

.method public a([BII)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 444
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;->f:Z

    if-eqz v0, :cond_17

    .line 445
    add-int/lit8 v0, p2, 0x2

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;->d:I

    sub-int/2addr v0, v2

    .line 446
    if-ge v0, p3, :cond_1a

    .line 447
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_13
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;->g:Z

    .line 448
    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;->f:Z

    .line 453
    :cond_17
    :goto_17
    return-void

    :cond_18
    move v0, v1

    .line 447
    goto :goto_13

    .line 450
    :cond_1a
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;->d:I

    sub-int v1, p3, p2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;->d:I

    goto :goto_17
.end method
