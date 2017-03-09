.class final Lcom/google/ads/interactivemedia/v3/a/c/k$a;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/a/c/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:[J

.field private c:[I

.field private d:[I

.field private e:[J

.field private f:[[B

.field private g:I

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 466
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->a:I

    .line 467
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->a:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->b:[J

    .line 468
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->a:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->e:[J

    .line 469
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->a:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->d:[I

    .line 470
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->a:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->c:[I

    .line 471
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->a:I

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->f:[[B

    .line 472
    return-void
.end method


# virtual methods
.method public declared-synchronized a(J)J
    .registers 12

    .prologue
    const/4 v5, -0x1

    const-wide/16 v0, -0x1

    .line 575
    monitor-enter p0

    :try_start_4
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->g:I

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->e:[J

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->i:I

    aget-wide v2, v2, v3
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_64

    cmp-long v2, p1, v2

    if-gez v2, :cond_14

    .line 609
    :cond_12
    :goto_12
    monitor-exit p0

    return-wide v0

    .line 579
    :cond_14
    :try_start_14
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->j:I

    if-nez v2, :cond_50

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->a:I

    :goto_1a
    add-int/lit8 v2, v2, -0x1

    .line 580
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->e:[J

    aget-wide v2, v3, v2

    .line 581
    cmp-long v2, p1, v2

    if-gtz v2, :cond_12

    .line 587
    const/4 v3, 0x0

    .line 589
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->i:I

    move v4, v2

    move v2, v5

    .line 590
    :goto_29
    iget v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->j:I

    if-eq v4, v6, :cond_35

    .line 591
    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->e:[J

    aget-wide v6, v6, v4

    cmp-long v6, v6, p1

    if-lez v6, :cond_53

    .line 602
    :cond_35
    if-eq v2, v5, :cond_12

    .line 606
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->g:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->g:I

    .line 607
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->i:I

    add-int/2addr v0, v2

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->a:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->i:I

    .line 608
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->h:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->h:I

    .line 609
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->b:[J

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->i:I

    aget-wide v0, v0, v1

    goto :goto_12

    .line 579
    :cond_50
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->j:I

    goto :goto_1a

    .line 594
    :cond_53
    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->d:[I

    aget v6, v6, v4

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_5c

    move v2, v3

    .line 598
    :cond_5c
    add-int/lit8 v4, v4, 0x1

    iget v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->a:I

    rem-int/2addr v4, v6
    :try_end_61
    .catchall {:try_start_14 .. :try_end_61} :catchall_64

    .line 599
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 575
    :catchall_64
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 480
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->h:I

    .line 481
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->i:I

    .line 482
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->j:I

    .line 483
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->g:I

    .line 484
    return-void
.end method

.method public declared-synchronized a(JIJI[B)V
    .registers 18

    .prologue
    .line 616
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->e:[J

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->j:I

    aput-wide p1, v0, v1

    .line 617
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->b:[J

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->j:I

    aput-wide p4, v0, v1

    .line 618
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->c:[I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->j:I

    aput p6, v0, v1

    .line 619
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->d:[I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->j:I

    aput p3, v0, v1

    .line 620
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->f:[[B

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->j:I

    aput-object p7, v0, v1

    .line 622
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->g:I

    .line 623
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->g:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->a:I

    if-ne v0, v1, :cond_9f

    .line 625
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->a:I

    add-int/lit16 v0, v0, 0x3e8

    .line 626
    new-array v1, v0, [J

    .line 627
    new-array v2, v0, [J

    .line 628
    new-array v3, v0, [I

    .line 629
    new-array v4, v0, [I

    .line 630
    new-array v5, v0, [[B

    .line 631
    iget v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->a:I

    iget v7, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->i:I

    sub-int/2addr v6, v7

    .line 632
    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->b:[J

    iget v8, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->i:I

    const/4 v9, 0x0

    invoke-static {v7, v8, v1, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 633
    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->e:[J

    iget v8, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->i:I

    const/4 v9, 0x0

    invoke-static {v7, v8, v2, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 634
    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->d:[I

    iget v8, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->i:I

    const/4 v9, 0x0

    invoke-static {v7, v8, v3, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 635
    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->c:[I

    iget v8, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->i:I

    const/4 v9, 0x0

    invoke-static {v7, v8, v4, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 636
    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->f:[[B

    iget v8, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->i:I

    const/4 v9, 0x0

    invoke-static {v7, v8, v5, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 637
    iget v7, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->i:I

    .line 638
    iget-object v8, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->b:[J

    const/4 v9, 0x0

    invoke-static {v8, v9, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 639
    iget-object v8, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->e:[J

    const/4 v9, 0x0

    invoke-static {v8, v9, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 640
    iget-object v8, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->d:[I

    const/4 v9, 0x0

    invoke-static {v8, v9, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 641
    iget-object v8, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->c:[I

    const/4 v9, 0x0

    invoke-static {v8, v9, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 642
    iget-object v8, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->f:[[B

    const/4 v9, 0x0

    invoke-static {v8, v9, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 643
    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->b:[J

    .line 644
    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->e:[J

    .line 645
    iput-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->d:[I

    .line 646
    iput-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->c:[I

    .line 647
    iput-object v5, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->f:[[B

    .line 648
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->i:I

    .line 649
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->a:I

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->j:I

    .line 650
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->a:I

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->g:I

    .line 651
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->a:I
    :try_end_9d
    .catchall {:try_start_1 .. :try_end_9d} :catchall_af

    .line 659
    :cond_9d
    :goto_9d
    monitor-exit p0

    return-void

    .line 653
    :cond_9f
    :try_start_9f
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->j:I

    .line 654
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->j:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->a:I

    if-ne v0, v1, :cond_9d

    .line 656
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->j:I
    :try_end_ae
    .catchall {:try_start_9f .. :try_end_ae} :catchall_af

    goto :goto_9d

    .line 616
    :catchall_af
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/ads/interactivemedia/v3/a/s;Lcom/google/ads/interactivemedia/v3/a/c/k$b;)Z
    .registers 5

    .prologue
    .line 539
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->g:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_32

    if-nez v0, :cond_8

    .line 540
    const/4 v0, 0x0

    .line 547
    :goto_6
    monitor-exit p0

    return v0

    .line 542
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->e:[J

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->i:I

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lcom/google/ads/interactivemedia/v3/a/s;->e:J

    .line 543
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->c:[I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->i:I

    aget v0, v0, v1

    iput v0, p1, Lcom/google/ads/interactivemedia/v3/a/s;->c:I

    .line 544
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->d:[I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->i:I

    aget v0, v0, v1

    iput v0, p1, Lcom/google/ads/interactivemedia/v3/a/s;->d:I

    .line 545
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->b:[J

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->i:I

    aget-wide v0, v0, v1

    iput-wide v0, p2, Lcom/google/ads/interactivemedia/v3/a/c/k$b;->a:J

    .line 546
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->f:[[B

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->i:I

    aget-object v0, v0, v1

    iput-object v0, p2, Lcom/google/ads/interactivemedia/v3/a/c/k$b;->b:[B
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_32

    .line 547
    const/4 v0, 0x1

    goto :goto_6

    .line 539
    :catchall_32
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()J
    .registers 5

    .prologue
    .line 557
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->g:I

    .line 558
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->i:I

    .line 559
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->h:I

    .line 560
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->i:I

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->a:I

    if-ne v1, v2, :cond_1c

    .line 562
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->i:I

    .line 564
    :cond_1c
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->g:I

    if-lez v1, :cond_28

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->b:[J

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->i:I

    aget-wide v0, v0, v1
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_33

    :goto_26
    monitor-exit p0

    return-wide v0

    .line 565
    :cond_28
    :try_start_28
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->c:[I

    aget v1, v1, v0

    int-to-long v2, v1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->b:[J

    aget-wide v0, v1, v0
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_33

    add-long/2addr v0, v2

    goto :goto_26

    .line 557
    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0
.end method
