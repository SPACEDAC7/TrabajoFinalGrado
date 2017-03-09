.class public La/a/a/a/a/a;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput v0, p0, La/a/a/a/a/a;->a:I

    .line 113
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 1011
    iget v0, p0, La/a/a/a/a/a;->a:I

    return v0
.end method

.method public a(BB)La/a/a/a/a/a;
    .registers 4

    .prologue
    .line 535
    iget v0, p0, La/a/a/a/a/a;->a:I

    if-eqz v0, :cond_5

    .line 539
    :goto_4
    return-object p0

    .line 538
    :cond_5
    if-ge p1, p2, :cond_b

    const/4 v0, -0x1

    :goto_8
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_4

    :cond_b
    if-le p1, p2, :cond_f

    const/4 v0, 0x1

    goto :goto_8

    :cond_f
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public a(CC)La/a/a/a/a/a;
    .registers 4

    .prologue
    .line 519
    iget v0, p0, La/a/a/a/a/a;->a:I

    if-eqz v0, :cond_5

    .line 523
    :goto_4
    return-object p0

    .line 522
    :cond_5
    if-ge p1, p2, :cond_b

    const/4 v0, -0x1

    :goto_8
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_4

    :cond_b
    if-le p1, p2, :cond_f

    const/4 v0, 0x1

    goto :goto_8

    :cond_f
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public a(DD)La/a/a/a/a/a;
    .registers 6

    .prologue
    .line 556
    iget v0, p0, La/a/a/a/a/a;->a:I

    if-eqz v0, :cond_5

    .line 560
    :goto_4
    return-object p0

    .line 559
    :cond_5
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_4
.end method

.method public a(FF)La/a/a/a/a/a;
    .registers 4

    .prologue
    .line 577
    iget v0, p0, La/a/a/a/a/a;->a:I

    if-eqz v0, :cond_5

    .line 581
    :goto_4
    return-object p0

    .line 580
    :cond_5
    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_4
.end method

.method public a(II)La/a/a/a/a/a;
    .registers 4

    .prologue
    .line 487
    iget v0, p0, La/a/a/a/a/a;->a:I

    if-eqz v0, :cond_5

    .line 491
    :goto_4
    return-object p0

    .line 490
    :cond_5
    if-ge p1, p2, :cond_b

    const/4 v0, -0x1

    :goto_8
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_4

    :cond_b
    if-le p1, p2, :cond_f

    const/4 v0, 0x1

    goto :goto_8

    :cond_f
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public a(JJ)La/a/a/a/a/a;
    .registers 6

    .prologue
    .line 471
    iget v0, p0, La/a/a/a/a/a;->a:I

    if-eqz v0, :cond_5

    .line 475
    :goto_4
    return-object p0

    .line 474
    :cond_5
    cmp-long v0, p1, p3

    if-gez v0, :cond_d

    const/4 v0, -0x1

    :goto_a
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_4

    :cond_d
    cmp-long v0, p1, p3

    if-lez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_a

    :cond_13
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)La/a/a/a/a/a;
    .registers 4

    .prologue
    .line 378
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, La/a/a/a/a/a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)La/a/a/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)La/a/a/a/a/a;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator",
            "<*>;)",
            "La/a/a/a/a/a;"
        }
    .end annotation

    .prologue
    .line 407
    iget v0, p0, La/a/a/a/a/a;->a:I

    if-eqz v0, :cond_5

    .line 458
    :cond_4
    :goto_4
    return-object p0

    .line 410
    :cond_5
    if-eq p1, p2, :cond_4

    .line 413
    if-nez p1, :cond_d

    .line 414
    const/4 v0, -0x1

    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_4

    .line 417
    :cond_d
    if-nez p2, :cond_13

    .line 418
    const/4 v0, 0x1

    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_4

    .line 421
    :cond_13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 425
    instance-of v0, p1, [J

    if-eqz v0, :cond_2d

    .line 426
    check-cast p1, [J

    check-cast p1, [J

    check-cast p2, [J

    check-cast p2, [J

    invoke-virtual {p0, p1, p2}, La/a/a/a/a/a;->a([J[J)La/a/a/a/a/a;

    goto :goto_4

    .line 427
    :cond_2d
    instance-of v0, p1, [I

    if-eqz v0, :cond_3d

    .line 428
    check-cast p1, [I

    check-cast p1, [I

    check-cast p2, [I

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, La/a/a/a/a/a;->a([I[I)La/a/a/a/a/a;

    goto :goto_4

    .line 429
    :cond_3d
    instance-of v0, p1, [S

    if-eqz v0, :cond_4d

    .line 430
    check-cast p1, [S

    check-cast p1, [S

    check-cast p2, [S

    check-cast p2, [S

    invoke-virtual {p0, p1, p2}, La/a/a/a/a/a;->a([S[S)La/a/a/a/a/a;

    goto :goto_4

    .line 431
    :cond_4d
    instance-of v0, p1, [C

    if-eqz v0, :cond_5d

    .line 432
    check-cast p1, [C

    check-cast p1, [C

    check-cast p2, [C

    check-cast p2, [C

    invoke-virtual {p0, p1, p2}, La/a/a/a/a/a;->a([C[C)La/a/a/a/a/a;

    goto :goto_4

    .line 433
    :cond_5d
    instance-of v0, p1, [B

    if-eqz v0, :cond_6d

    .line 434
    check-cast p1, [B

    check-cast p1, [B

    check-cast p2, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, La/a/a/a/a/a;->a([B[B)La/a/a/a/a/a;

    goto :goto_4

    .line 435
    :cond_6d
    instance-of v0, p1, [D

    if-eqz v0, :cond_7d

    .line 436
    check-cast p1, [D

    check-cast p1, [D

    check-cast p2, [D

    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, La/a/a/a/a/a;->a([D[D)La/a/a/a/a/a;

    goto :goto_4

    .line 437
    :cond_7d
    instance-of v0, p1, [F

    if-eqz v0, :cond_8e

    .line 438
    check-cast p1, [F

    check-cast p1, [F

    check-cast p2, [F

    check-cast p2, [F

    invoke-virtual {p0, p1, p2}, La/a/a/a/a/a;->a([F[F)La/a/a/a/a/a;

    goto/16 :goto_4

    .line 439
    :cond_8e
    instance-of v0, p1, [Z

    if-eqz v0, :cond_9f

    .line 440
    check-cast p1, [Z

    check-cast p1, [Z

    check-cast p2, [Z

    check-cast p2, [Z

    invoke-virtual {p0, p1, p2}, La/a/a/a/a/a;->a([Z[Z)La/a/a/a/a/a;

    goto/16 :goto_4

    .line 444
    :cond_9f
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, La/a/a/a/a/a;->a([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)La/a/a/a/a/a;

    goto/16 :goto_4

    .line 448
    :cond_ac
    if-nez p3, :cond_b8

    .line 450
    check-cast p1, Ljava/lang/Comparable;

    .line 451
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, La/a/a/a/a/a;->a:I

    goto/16 :goto_4

    .line 455
    :cond_b8
    invoke-interface {p3, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, La/a/a/a/a/a;->a:I

    goto/16 :goto_4
.end method

.method public a(SS)La/a/a/a/a/a;
    .registers 4

    .prologue
    .line 503
    iget v0, p0, La/a/a/a/a/a;->a:I

    if-eqz v0, :cond_5

    .line 507
    :goto_4
    return-object p0

    .line 506
    :cond_5
    if-ge p1, p2, :cond_b

    const/4 v0, -0x1

    :goto_8
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_4

    :cond_b
    if-le p1, p2, :cond_f

    const/4 v0, 0x1

    goto :goto_8

    :cond_f
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public a(ZZ)La/a/a/a/a/a;
    .registers 4

    .prologue
    .line 593
    iget v0, p0, La/a/a/a/a/a;->a:I

    if-eqz v0, :cond_5

    .line 604
    :cond_4
    :goto_4
    return-object p0

    .line 596
    :cond_5
    if-eq p1, p2, :cond_4

    .line 599
    if-nez p1, :cond_d

    .line 600
    const/4 v0, -0x1

    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_4

    .line 602
    :cond_d
    const/4 v0, 0x1

    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_4
.end method

.method public a([B[B)La/a/a/a/a/a;
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 856
    iget v2, p0, La/a/a/a/a/a;->a:I

    if-eqz v2, :cond_7

    .line 877
    :cond_6
    :goto_6
    return-object p0

    .line 859
    :cond_7
    if-eq p1, p2, :cond_6

    .line 862
    if-nez p1, :cond_e

    .line 863
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_6

    .line 866
    :cond_e
    if-nez p2, :cond_13

    .line 867
    iput v1, p0, La/a/a/a/a/a;->a:I

    goto :goto_6

    .line 870
    :cond_13
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_20

    .line 871
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_1e

    :goto_1b
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_6

    :cond_1e
    move v0, v1

    goto :goto_1b

    .line 874
    :cond_20
    const/4 v0, 0x0

    :goto_21
    array-length v1, p1

    if-ge v0, v1, :cond_6

    iget v1, p0, La/a/a/a/a/a;->a:I

    if-nez v1, :cond_6

    .line 875
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    invoke-virtual {p0, v1, v2}, La/a/a/a/a/a;->a(BB)La/a/a/a/a/a;

    .line 874
    add-int/lit8 v0, v0, 0x1

    goto :goto_21
.end method

.method public a([C[C)La/a/a/a/a/a;
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 816
    iget v2, p0, La/a/a/a/a/a;->a:I

    if-eqz v2, :cond_7

    .line 837
    :cond_6
    :goto_6
    return-object p0

    .line 819
    :cond_7
    if-eq p1, p2, :cond_6

    .line 822
    if-nez p1, :cond_e

    .line 823
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_6

    .line 826
    :cond_e
    if-nez p2, :cond_13

    .line 827
    iput v1, p0, La/a/a/a/a/a;->a:I

    goto :goto_6

    .line 830
    :cond_13
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_20

    .line 831
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_1e

    :goto_1b
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_6

    :cond_1e
    move v0, v1

    goto :goto_1b

    .line 834
    :cond_20
    const/4 v0, 0x0

    :goto_21
    array-length v1, p1

    if-ge v0, v1, :cond_6

    iget v1, p0, La/a/a/a/a/a;->a:I

    if-nez v1, :cond_6

    .line 835
    aget-char v1, p1, v0

    aget-char v2, p2, v0

    invoke-virtual {p0, v1, v2}, La/a/a/a/a/a;->a(CC)La/a/a/a/a/a;

    .line 834
    add-int/lit8 v0, v0, 0x1

    goto :goto_21
.end method

.method public a([D[D)La/a/a/a/a/a;
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 896
    iget v2, p0, La/a/a/a/a/a;->a:I

    if-eqz v2, :cond_7

    .line 917
    :cond_6
    :goto_6
    return-object p0

    .line 899
    :cond_7
    if-eq p1, p2, :cond_6

    .line 902
    if-nez p1, :cond_e

    .line 903
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_6

    .line 906
    :cond_e
    if-nez p2, :cond_13

    .line 907
    iput v1, p0, La/a/a/a/a/a;->a:I

    goto :goto_6

    .line 910
    :cond_13
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_20

    .line 911
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_1e

    :goto_1b
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_6

    :cond_1e
    move v0, v1

    goto :goto_1b

    .line 914
    :cond_20
    const/4 v0, 0x0

    :goto_21
    array-length v1, p1

    if-ge v0, v1, :cond_6

    iget v1, p0, La/a/a/a/a/a;->a:I

    if-nez v1, :cond_6

    .line 915
    aget-wide v2, p1, v0

    aget-wide v4, p2, v0

    invoke-virtual {p0, v2, v3, v4, v5}, La/a/a/a/a/a;->a(DD)La/a/a/a/a/a;

    .line 914
    add-int/lit8 v0, v0, 0x1

    goto :goto_21
.end method

.method public a([F[F)La/a/a/a/a/a;
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 936
    iget v2, p0, La/a/a/a/a/a;->a:I

    if-eqz v2, :cond_7

    .line 957
    :cond_6
    :goto_6
    return-object p0

    .line 939
    :cond_7
    if-eq p1, p2, :cond_6

    .line 942
    if-nez p1, :cond_e

    .line 943
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_6

    .line 946
    :cond_e
    if-nez p2, :cond_13

    .line 947
    iput v1, p0, La/a/a/a/a/a;->a:I

    goto :goto_6

    .line 950
    :cond_13
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_20

    .line 951
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_1e

    :goto_1b
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_6

    :cond_1e
    move v0, v1

    goto :goto_1b

    .line 954
    :cond_20
    const/4 v0, 0x0

    :goto_21
    array-length v1, p1

    if-ge v0, v1, :cond_6

    iget v1, p0, La/a/a/a/a/a;->a:I

    if-nez v1, :cond_6

    .line 955
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, La/a/a/a/a/a;->a(FF)La/a/a/a/a/a;

    .line 954
    add-int/lit8 v0, v0, 0x1

    goto :goto_21
.end method

.method public a([I[I)La/a/a/a/a/a;
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 736
    iget v2, p0, La/a/a/a/a/a;->a:I

    if-eqz v2, :cond_7

    .line 757
    :cond_6
    :goto_6
    return-object p0

    .line 739
    :cond_7
    if-eq p1, p2, :cond_6

    .line 742
    if-nez p1, :cond_e

    .line 743
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_6

    .line 746
    :cond_e
    if-nez p2, :cond_13

    .line 747
    iput v1, p0, La/a/a/a/a/a;->a:I

    goto :goto_6

    .line 750
    :cond_13
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_20

    .line 751
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_1e

    :goto_1b
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_6

    :cond_1e
    move v0, v1

    goto :goto_1b

    .line 754
    :cond_20
    const/4 v0, 0x0

    :goto_21
    array-length v1, p1

    if-ge v0, v1, :cond_6

    iget v1, p0, La/a/a/a/a/a;->a:I

    if-nez v1, :cond_6

    .line 755
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, La/a/a/a/a/a;->a(II)La/a/a/a/a/a;

    .line 754
    add-int/lit8 v0, v0, 0x1

    goto :goto_21
.end method

.method public a([J[J)La/a/a/a/a/a;
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 696
    iget v2, p0, La/a/a/a/a/a;->a:I

    if-eqz v2, :cond_7

    .line 717
    :cond_6
    :goto_6
    return-object p0

    .line 699
    :cond_7
    if-eq p1, p2, :cond_6

    .line 702
    if-nez p1, :cond_e

    .line 703
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_6

    .line 706
    :cond_e
    if-nez p2, :cond_13

    .line 707
    iput v1, p0, La/a/a/a/a/a;->a:I

    goto :goto_6

    .line 710
    :cond_13
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_20

    .line 711
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_1e

    :goto_1b
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_6

    :cond_1e
    move v0, v1

    goto :goto_1b

    .line 714
    :cond_20
    const/4 v0, 0x0

    :goto_21
    array-length v1, p1

    if-ge v0, v1, :cond_6

    iget v1, p0, La/a/a/a/a/a;->a:I

    if-nez v1, :cond_6

    .line 715
    aget-wide v2, p1, v0

    aget-wide v4, p2, v0

    invoke-virtual {p0, v2, v3, v4, v5}, La/a/a/a/a/a;->a(JJ)La/a/a/a/a/a;

    .line 714
    add-int/lit8 v0, v0, 0x1

    goto :goto_21
.end method

.method public a([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)La/a/a/a/a/a;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator",
            "<*>;)",
            "La/a/a/a/a/a;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 656
    iget v2, p0, La/a/a/a/a/a;->a:I

    if-eqz v2, :cond_7

    .line 677
    :cond_6
    :goto_6
    return-object p0

    .line 659
    :cond_7
    if-eq p1, p2, :cond_6

    .line 662
    if-nez p1, :cond_e

    .line 663
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_6

    .line 666
    :cond_e
    if-nez p2, :cond_13

    .line 667
    iput v1, p0, La/a/a/a/a/a;->a:I

    goto :goto_6

    .line 670
    :cond_13
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_20

    .line 671
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_1e

    :goto_1b
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_6

    :cond_1e
    move v0, v1

    goto :goto_1b

    .line 674
    :cond_20
    const/4 v0, 0x0

    :goto_21
    array-length v1, p1

    if-ge v0, v1, :cond_6

    iget v1, p0, La/a/a/a/a/a;->a:I

    if-nez v1, :cond_6

    .line 675
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2, p3}, La/a/a/a/a/a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)La/a/a/a/a/a;

    .line 674
    add-int/lit8 v0, v0, 0x1

    goto :goto_21
.end method

.method public a([S[S)La/a/a/a/a/a;
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 776
    iget v2, p0, La/a/a/a/a/a;->a:I

    if-eqz v2, :cond_7

    .line 797
    :cond_6
    :goto_6
    return-object p0

    .line 779
    :cond_7
    if-eq p1, p2, :cond_6

    .line 782
    if-nez p1, :cond_e

    .line 783
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_6

    .line 786
    :cond_e
    if-nez p2, :cond_13

    .line 787
    iput v1, p0, La/a/a/a/a/a;->a:I

    goto :goto_6

    .line 790
    :cond_13
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_20

    .line 791
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_1e

    :goto_1b
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_6

    :cond_1e
    move v0, v1

    goto :goto_1b

    .line 794
    :cond_20
    const/4 v0, 0x0

    :goto_21
    array-length v1, p1

    if-ge v0, v1, :cond_6

    iget v1, p0, La/a/a/a/a/a;->a:I

    if-nez v1, :cond_6

    .line 795
    aget-short v1, p1, v0

    aget-short v2, p2, v0

    invoke-virtual {p0, v1, v2}, La/a/a/a/a/a;->a(SS)La/a/a/a/a/a;

    .line 794
    add-int/lit8 v0, v0, 0x1

    goto :goto_21
.end method

.method public a([Z[Z)La/a/a/a/a/a;
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 976
    iget v2, p0, La/a/a/a/a/a;->a:I

    if-eqz v2, :cond_7

    .line 997
    :cond_6
    :goto_6
    return-object p0

    .line 979
    :cond_7
    if-eq p1, p2, :cond_6

    .line 982
    if-nez p1, :cond_e

    .line 983
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_6

    .line 986
    :cond_e
    if-nez p2, :cond_13

    .line 987
    iput v1, p0, La/a/a/a/a/a;->a:I

    goto :goto_6

    .line 990
    :cond_13
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_20

    .line 991
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_1e

    :goto_1b
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_6

    :cond_1e
    move v0, v1

    goto :goto_1b

    .line 994
    :cond_20
    const/4 v0, 0x0

    :goto_21
    array-length v1, p1

    if-ge v0, v1, :cond_6

    iget v1, p0, La/a/a/a/a/a;->a:I

    if-nez v1, :cond_6

    .line 995
    aget-boolean v1, p1, v0

    aget-boolean v2, p2, v0

    invoke-virtual {p0, v1, v2}, La/a/a/a/a/a;->a(ZZ)La/a/a/a/a/a;

    .line 994
    add-int/lit8 v0, v0, 0x1

    goto :goto_21
.end method
