.class final Lcom/google/ads/interactivemedia/v3/a/i;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Landroid/os/HandlerThread;

.field private final c:Landroid/os/Handler;

.field private final d:Lcom/google/ads/interactivemedia/v3/a/v;

.field private final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/interactivemedia/v3/a/w;",
            ">;"
        }
    .end annotation
.end field

.field private final g:[[Lcom/google/ads/interactivemedia/v3/a/p;

.field private final h:[I

.field private final i:J

.field private final j:J

.field private k:[Lcom/google/ads/interactivemedia/v3/a/w;

.field private l:Lcom/google/ads/interactivemedia/v3/a/w;

.field private m:Lcom/google/ads/interactivemedia/v3/a/j;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:I

.field private r:I

.field private s:I

.field private t:J

.field private u:J

.field private volatile v:J

.field private volatile w:J

.field private volatile x:J


# direct methods
.method public constructor <init>(Landroid/os/Handler;Z[III)V
    .registers 12

    .prologue
    const-wide/16 v4, 0x3e8

    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->r:I

    .line 84
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->s:I

    .line 94
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/i;->c:Landroid/os/Handler;

    .line 95
    iput-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/a/i;->o:Z

    .line 96
    int-to-long v0, p4

    mul-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->i:J

    .line 97
    int-to-long v0, p5

    mul-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->j:J

    .line 98
    array-length v0, p3

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->h:[I

    .line 99
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->q:I

    .line 100
    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/i;->v:J

    .line 101
    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/i;->x:J

    .line 103
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/v;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/a/v;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->d:Lcom/google/ads/interactivemedia/v3/a/v;

    .line 104
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->f:Ljava/util/List;

    .line 106
    array-length v0, p3

    new-array v0, v0, [[Lcom/google/ads/interactivemedia/v3/a/p;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->g:[[Lcom/google/ads/interactivemedia/v3/a/p;

    .line 109
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f/o;

    const-string v1, "ExoPlayerImplInternal:Handler"

    const/16 v2, -0x10

    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/a/f/o;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->b:Landroid/os/HandlerThread;

    .line 111
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 112
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/i;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->a:Landroid/os/Handler;

    .line 113
    return-void
.end method

.method private a(I)V
    .registers 5

    .prologue
    .line 251
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->q:I

    if-eq v0, p1, :cond_11

    .line 252
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/a/i;->q:I

    .line 253
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->c:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 255
    :cond_11
    return-void
.end method

.method private a(II)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 602
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/i;->h:[I

    aget v2, v2, p1

    if-ne v2, p2, :cond_a

    .line 648
    :cond_9
    :goto_9
    return-void

    .line 606
    :cond_a
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/i;->h:[I

    aput p2, v2, p1

    .line 607
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/i;->q:I

    if-eq v2, v0, :cond_9

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/i;->q:I

    if-eq v2, v5, :cond_9

    .line 611
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/i;->k:[Lcom/google/ads/interactivemedia/v3/a/w;

    aget-object v4, v2, p1

    .line 612
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/a/w;->v()I

    move-result v2

    .line 613
    if-eqz v2, :cond_9

    const/4 v3, -0x1

    if-eq v2, v3, :cond_9

    .line 615
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/a/w;->u()I

    move-result v3

    if-eqz v3, :cond_9

    .line 619
    if-eq v2, v5, :cond_2e

    const/4 v3, 0x3

    if-ne v2, v3, :cond_73

    :cond_2e
    move v3, v0

    .line 621
    :goto_2f
    if-ltz p2, :cond_75

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/i;->g:[[Lcom/google/ads/interactivemedia/v3/a/p;

    aget-object v2, v2, p1

    array-length v2, v2

    if-ge p2, v2, :cond_75

    move v2, v0

    .line 623
    :goto_39
    if-eqz v3, :cond_54

    .line 627
    if-nez v2, :cond_4c

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/a/i;->l:Lcom/google/ads/interactivemedia/v3/a/w;

    if-ne v4, v5, :cond_4c

    .line 631
    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/a/i;->d:Lcom/google/ads/interactivemedia/v3/a/v;

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/a/i;->m:Lcom/google/ads/interactivemedia/v3/a/j;

    invoke-interface {v6}, Lcom/google/ads/interactivemedia/v3/a/j;->a()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/ads/interactivemedia/v3/a/v;->a(J)V

    .line 633
    :cond_4c
    invoke-direct {p0, v4}, Lcom/google/ads/interactivemedia/v3/a/i;->e(Lcom/google/ads/interactivemedia/v3/a/w;)V

    .line 634
    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/a/i;->f:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 637
    :cond_54
    if-eqz v2, :cond_9

    .line 639
    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/i;->o:Z

    if-eqz v2, :cond_77

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/i;->q:I

    const/4 v5, 0x4

    if-ne v2, v5, :cond_77

    move v2, v0

    .line 641
    :goto_60
    if-nez v3, :cond_79

    if-eqz v2, :cond_79

    .line 642
    :goto_64
    invoke-direct {p0, v4, p2, v0}, Lcom/google/ads/interactivemedia/v3/a/i;->a(Lcom/google/ads/interactivemedia/v3/a/w;IZ)V

    .line 643
    if-eqz v2, :cond_6c

    .line 644
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/a/w;->w()V

    .line 646
    :cond_6c
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->a:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_9

    :cond_73
    move v3, v1

    .line 619
    goto :goto_2f

    :cond_75
    move v2, v1

    .line 621
    goto :goto_39

    :cond_77
    move v2, v1

    .line 639
    goto :goto_60

    :cond_79
    move v0, v1

    .line 641
    goto :goto_64
.end method

.method private a(IJJ)V
    .registers 10

    .prologue
    .line 490
    add-long v0, p2, p4

    .line 491
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 492
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_13

    .line 493
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 497
    :goto_12
    return-void

    .line 495
    :cond_13
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/i;->a:Landroid/os/Handler;

    invoke-virtual {v2, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_12
.end method

.method private a(ILjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation

    .prologue
    .line 586
    :try_start_0
    check-cast p2, Landroid/util/Pair;

    .line 587
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/g$a;

    iget-object v1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Lcom/google/ads/interactivemedia/v3/a/g$a;->a(ILjava/lang/Object;)V

    .line 588
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->q:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1b

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->q:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1b

    .line 590
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->a:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_2a

    .line 593
    :cond_1b
    monitor-enter p0

    .line 594
    :try_start_1c
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->s:I

    .line 595
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 596
    monitor-exit p0

    .line 598
    return-void

    .line 596
    :catchall_27
    move-exception v0

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1c .. :try_end_29} :catchall_27

    throw v0

    .line 593
    :catchall_2a
    move-exception v0

    monitor-enter p0

    .line 594
    :try_start_2c
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/i;->s:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/i;->s:I

    .line 595
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 596
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_2c .. :try_end_36} :catchall_37

    throw v0

    :catchall_37
    move-exception v0

    :try_start_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v0
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/a/w;IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation

    .prologue
    .line 341
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->w:J

    invoke-virtual {p1, p2, v0, v1, p3}, Lcom/google/ads/interactivemedia/v3/a/w;->b(IJZ)V

    .line 342
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/w;->b()Lcom/google/ads/interactivemedia/v3/a/j;

    move-result-object v1

    .line 344
    if-eqz v1, :cond_1c

    .line 345
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->m:Lcom/google/ads/interactivemedia/v3/a/j;

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    :goto_15
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/b;->b(Z)V

    .line 346
    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/i;->m:Lcom/google/ads/interactivemedia/v3/a/j;

    .line 347
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/i;->l:Lcom/google/ads/interactivemedia/v3/a/w;

    .line 349
    :cond_1c
    return-void

    .line 345
    :cond_1d
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/a/w;)Z
    .registers 14

    .prologue
    const-wide/16 v10, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 352
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/w;->e()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 364
    :cond_a
    :goto_a
    return v1

    .line 355
    :cond_b
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/w;->f()Z

    move-result v2

    if-nez v2, :cond_13

    move v1, v0

    .line 356
    goto :goto_a

    .line 358
    :cond_13
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/i;->q:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_a

    .line 361
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/w;->r()J

    move-result-wide v4

    .line 362
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/w;->q()J

    move-result-wide v6

    .line 363
    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/i;->p:Z

    if-eqz v2, :cond_4e

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/i;->j:J

    .line 364
    :goto_26
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_4b

    cmp-long v8, v6, v10

    if-eqz v8, :cond_4b

    const-wide/16 v8, -0x3

    cmp-long v8, v6, v8

    if-eqz v8, :cond_4b

    iget-wide v8, p0, Lcom/google/ads/interactivemedia/v3/a/i;->w:J

    add-long/2addr v2, v8

    cmp-long v2, v6, v2

    if-gez v2, :cond_4b

    cmp-long v2, v4, v10

    if-eqz v2, :cond_4c

    const-wide/16 v2, -0x2

    cmp-long v2, v4, v2

    if-eqz v2, :cond_4c

    cmp-long v2, v6, v4

    if-ltz v2, :cond_4c

    :cond_4b
    move v0, v1

    :cond_4c
    move v1, v0

    goto :goto_a

    .line 363
    :cond_4e
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/i;->i:J

    goto :goto_26
.end method

.method private b(J)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v0, 0x0

    .line 501
    :try_start_3
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/i;->w:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_62

    cmp-long v1, p1, v2

    if-nez v1, :cond_12

    .line 521
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 523
    :goto_11
    return-void

    .line 506
    :cond_12
    const/4 v1, 0x0

    :try_start_13
    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/a/i;->p:Z

    .line 507
    mul-long v2, p1, v6

    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/i;->w:J

    .line 508
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/i;->d:Lcom/google/ads/interactivemedia/v3/a/v;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/a/v;->c()V

    .line 509
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/i;->d:Lcom/google/ads/interactivemedia/v3/a/v;

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/i;->w:J

    invoke-virtual {v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/a/v;->a(J)V

    .line 510
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/i;->q:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2f

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/i;->q:I
    :try_end_2c
    .catchall {:try_start_13 .. :try_end_2c} :catchall_62

    const/4 v2, 0x2

    if-ne v1, v2, :cond_35

    .line 521
    :cond_2f
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_11

    :cond_35
    move v1, v0

    .line 513
    :goto_36
    :try_start_36
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_52

    .line 514
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/w;

    .line 515
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/i;->d(Lcom/google/ads/interactivemedia/v3/a/w;)V

    .line 516
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/i;->w:J

    invoke-virtual {v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/a/w;->d(J)V

    .line 513
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_36

    .line 518
    :cond_52
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/i;->a(I)V

    .line 519
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->a:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_5c
    .catchall {:try_start_36 .. :try_end_5c} :catchall_62

    .line 521
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_11

    :catchall_62
    move-exception v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/i;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    throw v0
.end method

.method private b(Lcom/google/ads/interactivemedia/v3/a/w;)V
    .registers 5

    .prologue
    .line 560
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/a/i;->e(Lcom/google/ads/interactivemedia/v3/a/w;)V
    :try_end_3
    .catch Lcom/google/ads/interactivemedia/v3/a/f; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_d

    .line 568
    :goto_3
    return-void

    .line 561
    :catch_4
    move-exception v0

    .line 563
    const-string v1, "ExoPlayerImplInternal"

    const-string v2, "Stop failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 564
    :catch_d
    move-exception v0

    .line 566
    const-string v1, "ExoPlayerImplInternal"

    const-string v2, "Stop failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private b(Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    .line 375
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->p:Z

    .line 376
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/a/i;->o:Z

    .line 377
    if-nez p1, :cond_18

    .line 378
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/i;->g()V

    .line 379
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/i;->h()V
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_27

    .line 389
    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->c:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 391
    return-void

    .line 381
    :cond_18
    :try_start_18
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->q:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_32

    .line 382
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/i;->f()V

    .line 383
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->a:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_27

    goto :goto_e

    .line 389
    :catchall_27
    move-exception v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/i;->c:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    throw v0

    .line 384
    :cond_32
    :try_start_32
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->q:I

    if-ne v0, v2, :cond_e

    .line 385
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->a:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_27

    goto :goto_e
.end method

.method private b([Lcom/google/ads/interactivemedia/v3/a/w;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/i;->l()V

    .line 259
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/i;->k:[Lcom/google/ads/interactivemedia/v3/a/w;

    .line 260
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->g:[[Lcom/google/ads/interactivemedia/v3/a/p;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 261
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/i;->a(I)V

    .line 262
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/i;->e()V

    .line 263
    return-void
.end method

.method private c(Lcom/google/ads/interactivemedia/v3/a/w;)V
    .registers 5

    .prologue
    .line 572
    :try_start_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/w;->z()V
    :try_end_3
    .catch Lcom/google/ads/interactivemedia/v3/a/f; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_d

    .line 580
    :goto_3
    return-void

    .line 573
    :catch_4
    move-exception v0

    .line 575
    const-string v1, "ExoPlayerImplInternal"

    const-string v2, "Release failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 576
    :catch_d
    move-exception v0

    .line 578
    const-string v1, "ExoPlayerImplInternal"

    const-string v2, "Release failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private d(Lcom/google/ads/interactivemedia/v3/a/w;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation

    .prologue
    .line 651
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/w;->v()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    .line 652
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/w;->x()V

    .line 654
    :cond_a
    return-void
.end method

.method private e()V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation

    .prologue
    .line 266
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 267
    const/4 v1, 0x1

    .line 268
    const/4 v0, 0x0

    :goto_6
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/i;->k:[Lcom/google/ads/interactivemedia/v3/a/w;

    array-length v4, v4

    if-ge v0, v4, :cond_24

    .line 269
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/i;->k:[Lcom/google/ads/interactivemedia/v3/a/w;

    aget-object v4, v4, v0

    .line 270
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/a/w;->v()I

    move-result v5

    if-nez v5, :cond_21

    .line 271
    iget-wide v6, p0, Lcom/google/ads/interactivemedia/v3/a/i;->w:J

    invoke-virtual {v4, v6, v7}, Lcom/google/ads/interactivemedia/v3/a/w;->f(J)I

    move-result v5

    .line 272
    if-nez v5, :cond_21

    .line 273
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/a/w;->s()V

    .line 274
    const/4 v1, 0x0

    .line 268
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 279
    :cond_24
    if-nez v1, :cond_2e

    .line 281
    const/4 v1, 0x2

    const-wide/16 v4, 0xa

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/a/i;->a(IJJ)V

    .line 337
    :goto_2d
    return-void

    .line 285
    :cond_2e
    const-wide/16 v2, 0x0

    .line 286
    const/4 v4, 0x1

    .line 287
    const/4 v1, 0x1

    .line 288
    const/4 v0, 0x0

    :goto_33
    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/a/i;->k:[Lcom/google/ads/interactivemedia/v3/a/w;

    array-length v5, v5

    if-ge v0, v5, :cond_98

    .line 289
    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/a/i;->k:[Lcom/google/ads/interactivemedia/v3/a/w;

    aget-object v6, v5, v0

    .line 290
    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/a/w;->u()I

    move-result v7

    .line 291
    new-array v8, v7, [Lcom/google/ads/interactivemedia/v3/a/p;

    .line 292
    const/4 v5, 0x0

    :goto_43
    if-ge v5, v7, :cond_4e

    .line 293
    invoke-virtual {v6, v5}, Lcom/google/ads/interactivemedia/v3/a/w;->b(I)Lcom/google/ads/interactivemedia/v3/a/p;

    move-result-object v9

    aput-object v9, v8, v5

    .line 292
    add-int/lit8 v5, v5, 0x1

    goto :goto_43

    .line 295
    :cond_4e
    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/a/i;->g:[[Lcom/google/ads/interactivemedia/v3/a/p;

    aput-object v8, v5, v0

    .line 296
    if-lez v7, :cond_79

    .line 297
    const-wide/16 v10, -0x1

    cmp-long v5, v2, v10

    if-nez v5, :cond_7c

    .line 310
    :cond_5a
    :goto_5a
    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/a/i;->h:[I

    aget v5, v5, v0

    .line 311
    if-ltz v5, :cond_79

    array-length v7, v8

    if-ge v5, v7, :cond_79

    .line 312
    const/4 v7, 0x0

    invoke-direct {p0, v6, v5, v7}, Lcom/google/ads/interactivemedia/v3/a/i;->a(Lcom/google/ads/interactivemedia/v3/a/w;IZ)V

    .line 313
    if-eqz v4, :cond_94

    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/a/w;->e()Z

    move-result v4

    if-eqz v4, :cond_94

    const/4 v4, 0x1

    .line 314
    :goto_70
    if-eqz v1, :cond_96

    invoke-direct {p0, v6}, Lcom/google/ads/interactivemedia/v3/a/i;->a(Lcom/google/ads/interactivemedia/v3/a/w;)Z

    move-result v1

    if-eqz v1, :cond_96

    const/4 v1, 0x1

    .line 288
    :cond_79
    :goto_79
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 301
    :cond_7c
    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/a/w;->r()J

    move-result-wide v10

    .line 302
    const-wide/16 v12, -0x1

    cmp-long v5, v10, v12

    if-nez v5, :cond_89

    .line 303
    const-wide/16 v2, -0x1

    goto :goto_5a

    .line 304
    :cond_89
    const-wide/16 v12, -0x2

    cmp-long v5, v10, v12

    if-eqz v5, :cond_5a

    .line 307
    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_5a

    .line 313
    :cond_94
    const/4 v4, 0x0

    goto :goto_70

    .line 314
    :cond_96
    const/4 v1, 0x0

    goto :goto_79

    .line 318
    :cond_98
    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/i;->v:J

    .line 320
    if-eqz v4, :cond_ce

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_a8

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/i;->w:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_ce

    .line 323
    :cond_a8
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->q:I

    .line 330
    :goto_ab
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->c:Landroid/os/Handler;

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/i;->q:I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/i;->g:[[Lcom/google/ads/interactivemedia/v3/a/p;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 333
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->o:Z

    if-eqz v0, :cond_c6

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->q:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c6

    .line 334
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/i;->f()V

    .line 336
    :cond_c6
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->a:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2d

    .line 325
    :cond_ce
    if-eqz v1, :cond_d4

    const/4 v0, 0x4

    :goto_d1
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->q:I

    goto :goto_ab

    :cond_d4
    const/4 v0, 0x3

    goto :goto_d1
.end method

.method private e(Lcom/google/ads/interactivemedia/v3/a/w;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 657
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/a/i;->d(Lcom/google/ads/interactivemedia/v3/a/w;)V

    .line 658
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/w;->v()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    .line 659
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/w;->y()V

    .line 660
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->l:Lcom/google/ads/interactivemedia/v3/a/w;

    if-ne p1, v0, :cond_16

    .line 661
    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/i;->m:Lcom/google/ads/interactivemedia/v3/a/j;

    .line 662
    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/i;->l:Lcom/google/ads/interactivemedia/v3/a/w;

    .line 665
    :cond_16
    return-void
.end method

.method private f()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 394
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->p:Z

    .line 395
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/i;->d:Lcom/google/ads/interactivemedia/v3/a/v;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/a/v;->b()V

    move v1, v0

    .line 396
    :goto_9
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_20

    .line 397
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/w;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/w;->w()V

    .line 396
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    .line 399
    :cond_20
    return-void
.end method

.method private g()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation

    .prologue
    .line 402
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->d:Lcom/google/ads/interactivemedia/v3/a/v;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/v;->c()V

    .line 403
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1e

    .line 404
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/w;

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/i;->d(Lcom/google/ads/interactivemedia/v3/a/w;)V

    .line 403
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 406
    :cond_1e
    return-void
.end method

.method private h()V
    .registers 5

    .prologue
    .line 409
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->m:Lcom/google/ads/interactivemedia/v3/a/j;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->f:Ljava/util/List;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/i;->l:Lcom/google/ads/interactivemedia/v3/a/w;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->l:Lcom/google/ads/interactivemedia/v3/a/w;

    .line 410
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/w;->e()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 411
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->m:Lcom/google/ads/interactivemedia/v3/a/j;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/a/j;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->w:J

    .line 412
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->d:Lcom/google/ads/interactivemedia/v3/a/v;

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/i;->w:J

    invoke-virtual {v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/a/v;->a(J)V

    .line 416
    :goto_25
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->u:J

    .line 417
    return-void

    .line 414
    :cond_2f
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->d:Lcom/google/ads/interactivemedia/v3/a/v;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/v;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->w:J

    goto :goto_25
.end method

.method private i()V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation

    .prologue
    .line 420
    const-string v0, "doSomeWork"

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/p;->a(Ljava/lang/String;)V

    .line 421
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 422
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->v:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_56

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->v:J

    .line 424
    :goto_13
    const/4 v6, 0x1

    .line 425
    const/4 v5, 0x1

    .line 426
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/i;->h()V

    .line 427
    const/4 v4, 0x0

    move v14, v4

    move v4, v5

    move v5, v6

    move-wide v6, v0

    move v1, v14

    :goto_1e
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_8c

    .line 428
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/w;

    .line 432
    iget-wide v8, p0, Lcom/google/ads/interactivemedia/v3/a/i;->w:J

    iget-wide v10, p0, Lcom/google/ads/interactivemedia/v3/a/i;->u:J

    invoke-virtual {v0, v8, v9, v10, v11}, Lcom/google/ads/interactivemedia/v3/a/w;->a(JJ)V

    .line 433
    if-eqz v5, :cond_5c

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/w;->e()Z

    move-result v5

    if-eqz v5, :cond_5c

    const/4 v5, 0x1

    .line 437
    :goto_3e
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/i;->a(Lcom/google/ads/interactivemedia/v3/a/w;)Z

    move-result v8

    .line 438
    if-nez v8, :cond_47

    .line 439
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/w;->s()V

    .line 441
    :cond_47
    if-eqz v4, :cond_5e

    if-eqz v8, :cond_5e

    const/4 v4, 0x1

    .line 443
    :goto_4c
    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-nez v8, :cond_60

    .line 427
    :cond_52
    :goto_52
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1e

    .line 423
    :cond_56
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_13

    .line 433
    :cond_5c
    const/4 v5, 0x0

    goto :goto_3e

    .line 441
    :cond_5e
    const/4 v4, 0x0

    goto :goto_4c

    .line 447
    :cond_60
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/w;->r()J

    move-result-wide v8

    .line 448
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/w;->q()J

    move-result-wide v10

    .line 449
    const-wide/16 v12, -0x1

    cmp-long v0, v10, v12

    if-nez v0, :cond_71

    .line 450
    const-wide/16 v6, -0x1

    goto :goto_52

    .line 451
    :cond_71
    const-wide/16 v12, -0x3

    cmp-long v0, v10, v12

    if-eqz v0, :cond_52

    const-wide/16 v12, -0x1

    cmp-long v0, v8, v12

    if-eqz v0, :cond_87

    const-wide/16 v12, -0x2

    cmp-long v0, v8, v12

    if-eqz v0, :cond_87

    cmp-long v0, v10, v8

    if-gez v0, :cond_52

    .line 457
    :cond_87
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    goto :goto_52

    .line 461
    :cond_8c
    iput-wide v6, p0, Lcom/google/ads/interactivemedia/v3/a/i;->x:J

    .line 463
    if-eqz v5, :cond_c6

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->v:J

    const-wide/16 v6, -0x1

    cmp-long v0, v0, v6

    if-eqz v0, :cond_a0

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->v:J

    iget-wide v6, p0, Lcom/google/ads/interactivemedia/v3/a/i;->w:J

    cmp-long v0, v0, v6

    if-gtz v0, :cond_c6

    .line 465
    :cond_a0
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/i;->a(I)V

    .line 466
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/i;->g()V

    .line 478
    :cond_a7
    :goto_a7
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->a:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 479
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->o:Z

    if-eqz v0, :cond_b6

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->q:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_bb

    :cond_b6
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->q:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_ec

    .line 480
    :cond_bb
    const/4 v1, 0x7

    const-wide/16 v4, 0xa

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/a/i;->a(IJJ)V

    .line 485
    :cond_c2
    :goto_c2
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/a/f/p;->a()V

    .line 486
    return-void

    .line 467
    :cond_c6
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->q:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d9

    if-eqz v4, :cond_d9

    .line 468
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/i;->a(I)V

    .line 469
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->o:Z

    if-eqz v0, :cond_a7

    .line 470
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/i;->f()V

    goto :goto_a7

    .line 472
    :cond_d9
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->q:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a7

    if-nez v4, :cond_a7

    .line 473
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->o:Z

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->p:Z

    .line 474
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/i;->a(I)V

    .line 475
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/i;->g()V

    goto :goto_a7

    .line 481
    :cond_ec
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c2

    .line 482
    const/4 v1, 0x7

    const-wide/16 v4, 0x3e8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/a/i;->a(IJJ)V

    goto :goto_c2
.end method

.method private j()V
    .registers 2

    .prologue
    .line 526
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/i;->l()V

    .line 527
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/i;->a(I)V

    .line 528
    return-void
.end method

.method private k()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 531
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/i;->l()V

    .line 532
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/i;->a(I)V

    .line 533
    monitor-enter p0

    .line 534
    const/4 v0, 0x1

    :try_start_9
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->n:Z

    .line 535
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 536
    monitor-exit p0

    .line 537
    return-void

    .line 536
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_10

    throw v0
.end method

.method private l()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 540
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/i;->a:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 541
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/i;->a:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 542
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->p:Z

    .line 543
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/i;->d:Lcom/google/ads/interactivemedia/v3/a/v;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/a/v;->c()V

    .line 544
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/i;->k:[Lcom/google/ads/interactivemedia/v3/a/w;

    if-nez v1, :cond_1a

    .line 556
    :goto_19
    return-void

    .line 547
    :cond_1a
    :goto_1a
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/i;->k:[Lcom/google/ads/interactivemedia/v3/a/w;

    array-length v1, v1

    if-ge v0, v1, :cond_2c

    .line 548
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/i;->k:[Lcom/google/ads/interactivemedia/v3/a/w;

    aget-object v1, v1, v0

    .line 549
    invoke-direct {p0, v1}, Lcom/google/ads/interactivemedia/v3/a/i;->b(Lcom/google/ads/interactivemedia/v3/a/w;)V

    .line 550
    invoke-direct {p0, v1}, Lcom/google/ads/interactivemedia/v3/a/i;->c(Lcom/google/ads/interactivemedia/v3/a/w;)V

    .line 547
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 552
    :cond_2c
    iput-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/i;->k:[Lcom/google/ads/interactivemedia/v3/a/w;

    .line 553
    iput-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/i;->m:Lcom/google/ads/interactivemedia/v3/a/j;

    .line 554
    iput-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/i;->l:Lcom/google/ads/interactivemedia/v3/a/w;

    .line 555
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_19
.end method


# virtual methods
.method public a()J
    .registers 5

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_b

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->t:J

    :goto_a
    return-wide v0

    :cond_b
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->w:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    goto :goto_a
.end method

.method public a(J)V
    .registers 8

    .prologue
    .line 142
    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/a/i;->t:J

    .line 143
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 144
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->a:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-static {p1, p2}, Lcom/google/ads/interactivemedia/v3/a/f/q;->a(J)I

    move-result v2

    .line 145
    invoke-static {p1, p2}, Lcom/google/ads/interactivemedia/v3/a/f/q;->b(J)I

    move-result v3

    .line 144
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 146
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/a/g$a;ILjava/lang/Object;)V
    .registers 8

    .prologue
    .line 158
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->r:I

    .line 159
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->a:Landroid/os/Handler;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-static {p1, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 160
    return-void
.end method

.method public a(Z)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 138
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/i;->a:Landroid/os/Handler;

    const/4 v3, 0x3

    if-eqz p1, :cond_f

    const/4 v0, 0x1

    :goto_7
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 139
    return-void

    :cond_f
    move v0, v1

    .line 138
    goto :goto_7
.end method

.method public varargs a([Lcom/google/ads/interactivemedia/v3/a/w;)V
    .registers 4

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 135
    return-void
.end method

.method public b()J
    .registers 5

    .prologue
    const-wide/16 v0, -0x1

    .line 129
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/i;->v:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_9

    :goto_8
    return-wide v0

    .line 130
    :cond_9
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->v:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    goto :goto_8
.end method

.method public declared-synchronized b(Lcom/google/ads/interactivemedia/v3/a/g$a;ILjava/lang/Object;)V
    .registers 9

    .prologue
    .line 164
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->n:Z

    if-eqz v0, :cond_27

    .line 165
    const-string v0, "ExoPlayerImplInternal"

    const/16 v1, 0x39

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Sent message("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") after release. Message ignored."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_4e

    .line 177
    :cond_25
    monitor-exit p0

    return-void

    .line 168
    :cond_27
    :try_start_27
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->r:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/i;->r:I

    .line 169
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/i;->a:Landroid/os/Handler;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-static {p1, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v1, v2, p2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 170
    :goto_3d
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/i;->s:I
    :try_end_3f
    .catchall {:try_start_27 .. :try_end_3f} :catchall_4e

    if-gt v1, v0, :cond_25

    .line 172
    :try_start_41
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_44
    .catch Ljava/lang/InterruptedException; {:try_start_41 .. :try_end_44} :catch_45
    .catchall {:try_start_41 .. :try_end_44} :catchall_4e

    goto :goto_3d

    .line 173
    :catch_45
    move-exception v1

    .line 174
    :try_start_46
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_4d
    .catchall {:try_start_46 .. :try_end_4d} :catchall_4e

    goto :goto_3d

    .line 164
    :catchall_4e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()V
    .registers 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->a:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 150
    return-void
.end method

.method public declared-synchronized d()V
    .registers 3

    .prologue
    .line 180
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->n:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1e

    if-eqz v0, :cond_7

    .line 192
    :goto_5
    monitor-exit p0

    return-void

    .line 183
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->a:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 184
    :goto_d
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->n:Z
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_1e

    if-nez v0, :cond_21

    .line 186
    :try_start_11
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_14} :catch_15
    .catchall {:try_start_11 .. :try_end_14} :catchall_1e

    goto :goto_d

    .line 187
    :catch_15
    move-exception v0

    .line 188
    :try_start_16
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_1e

    goto :goto_d

    .line 180
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 191
    :cond_21
    :try_start_21
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_1e

    goto :goto_5
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 7

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 197
    :try_start_3
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_80

    .line 246
    :goto_8
    return v0

    .line 199
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Lcom/google/ads/interactivemedia/v3/a/w;

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/i;->b([Lcom/google/ads/interactivemedia/v3/a/w;)V

    move v0, v1

    .line 200
    goto :goto_8

    .line 203
    :pswitch_12
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/i;->e()V

    move v0, v1

    .line 204
    goto :goto_8

    .line 207
    :pswitch_17
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_1c

    move v0, v1

    :cond_1c
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/i;->b(Z)V

    move v0, v1

    .line 208
    goto :goto_8

    .line 211
    :pswitch_21
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/i;->i()V

    move v0, v1

    .line 212
    goto :goto_8

    .line 215
    :pswitch_26
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v2}, Lcom/google/ads/interactivemedia/v3/a/f/q;->b(II)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/ads/interactivemedia/v3/a/i;->b(J)V

    move v0, v1

    .line 216
    goto :goto_8

    .line 219
    :pswitch_33
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/i;->j()V

    move v0, v1

    .line 220
    goto :goto_8

    .line 223
    :pswitch_38
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/i;->k()V

    move v0, v1

    .line 224
    goto :goto_8

    .line 227
    :pswitch_3d
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0, v2}, Lcom/google/ads/interactivemedia/v3/a/i;->a(ILjava/lang/Object;)V

    move v0, v1

    .line 228
    goto :goto_8

    .line 231
    :pswitch_46
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v2}, Lcom/google/ads/interactivemedia/v3/a/i;->a(II)V
    :try_end_4d
    .catch Lcom/google/ads/interactivemedia/v3/a/f; {:try_start_3 .. :try_end_4d} :catch_4f
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_4d} :catch_65

    move v0, v1

    .line 232
    goto :goto_8

    .line 237
    :catch_4f
    move-exception v0

    .line 238
    const-string v2, "ExoPlayerImplInternal"

    const-string v3, "Internal track renderer error."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/i;->c:Landroid/os/Handler;

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 240
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/i;->j()V

    move v0, v1

    .line 241
    goto :goto_8

    .line 242
    :catch_65
    move-exception v0

    .line 243
    const-string v2, "ExoPlayerImplInternal"

    const-string v3, "Internal runtime error."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 244
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/i;->c:Landroid/os/Handler;

    new-instance v3, Lcom/google/ads/interactivemedia/v3/a/f;

    invoke-direct {v3, v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f;-><init>(Ljava/lang/Throwable;Z)V

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 245
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/i;->j()V

    move v0, v1

    .line 246
    goto :goto_8

    .line 197
    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_9
        :pswitch_12
        :pswitch_17
        :pswitch_33
        :pswitch_38
        :pswitch_26
        :pswitch_21
        :pswitch_46
        :pswitch_3d
    .end packed-switch
.end method
