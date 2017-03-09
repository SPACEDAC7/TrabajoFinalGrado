.class final Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/a/c/g/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:I

.field public e:Z

.field public f:[B

.field public g:[B

.field public h:[B

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:[B

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:J

.field public t:J

.field public u:Lcom/google/ads/interactivemedia/v3/a/c/m;

.field public v:I

.field private w:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, -0x1

    .line 1284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1299
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->i:I

    .line 1300
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->j:I

    .line 1301
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->k:I

    .line 1302
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->l:I

    .line 1303
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->m:I

    .line 1304
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->n:[B

    .line 1305
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->o:I

    .line 1308
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->p:I

    .line 1309
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->q:I

    .line 1310
    const/16 v0, 0x1f40

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->r:I

    .line 1311
    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->s:J

    .line 1312
    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->t:J

    .line 1315
    const-string v0, "eng"

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->w:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/a/c/g/f$1;)V
    .registers 2

    .prologue
    .line 1284
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 1284
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->w:Ljava/lang/String;

    return-object p1
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/a/f/m;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/a/f/m;",
            ")",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/r;
        }
    .end annotation

    .prologue
    .line 1484
    const/16 v0, 0x10

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 1485
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->l()J

    move-result-wide v0

    .line 1486
    const-wide/32 v2, 0x31435657

    cmp-long v2, v0, v2

    if-eqz v2, :cond_34

    .line 1487
    new-instance v2, Lcom/google/ads/interactivemedia/v3/a/r;

    const/16 v3, 0x39

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unsupported FourCC compression type: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2b} :catch_2b

    .line 1504
    :catch_2b
    move-exception v0

    .line 1505
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    const-string v1, "Error parsing FourCC VC1 codec private"

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1492
    :cond_34
    :try_start_34
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d()I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    .line 1493
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    .line 1494
    :goto_3c
    array-length v2, v1

    add-int/lit8 v2, v2, -0x4

    if-ge v0, v2, :cond_67

    .line 1495
    aget-byte v2, v1, v0

    if-nez v2, :cond_64

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, v1, v2

    if-nez v2, :cond_64

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, v1, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_64

    add-int/lit8 v2, v0, 0x3

    aget-byte v2, v1, v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_64

    .line 1498
    array-length v2, v1

    invoke-static {v1, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 1499
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1494
    :cond_64
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 1503
    :cond_67
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    const-string v1, "Failed to find FourCC VC1 initialization data"

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_34 .. :try_end_6f} :catch_2b
.end method

.method private static a([B)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/r;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v0, 0x0

    .line 1601
    const/4 v1, 0x0

    :try_start_5
    aget-byte v1, p0, v1

    if-eq v1, v2, :cond_1a

    .line 1602
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    const-string v1, "Error parsing vorbis codec private"

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_11} :catch_11

    .line 1638
    :catch_11
    move-exception v0

    .line 1639
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    const-string v1, "Error parsing vorbis codec private"

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    move v2, v0

    move v3, v4

    .line 1606
    :goto_1c
    :try_start_1c
    aget-byte v1, p0, v3

    if-ne v1, v5, :cond_27

    .line 1607
    add-int/lit16 v1, v2, 0xff

    .line 1608
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    goto :goto_1c

    .line 1610
    :cond_27
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, p0, v3

    add-int/2addr v2, v3

    .line 1613
    :goto_2c
    aget-byte v3, p0, v1

    if-ne v3, v5, :cond_35

    .line 1614
    add-int/lit16 v0, v0, 0xff

    .line 1615
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 1617
    :cond_35
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, p0, v1

    add-int/2addr v0, v1

    .line 1619
    aget-byte v1, p0, v3

    if-eq v1, v4, :cond_46

    .line 1620
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    const-string v1, "Error parsing vorbis codec private"

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1622
    :cond_46
    new-array v1, v2, [B

    .line 1623
    const/4 v4, 0x0

    invoke-static {p0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1624
    add-int/2addr v2, v3

    .line 1625
    aget-byte v3, p0, v2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_5a

    .line 1626
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    const-string v1, "Error parsing vorbis codec private"

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1628
    :cond_5a
    add-int/2addr v0, v2

    .line 1629
    aget-byte v2, p0, v0

    const/4 v3, 0x5

    if-eq v2, v3, :cond_68

    .line 1630
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    const-string v1, "Error parsing vorbis codec private"

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1632
    :cond_68
    array-length v2, p0

    sub-int/2addr v2, v0

    new-array v2, v2, [B

    .line 1633
    const/4 v3, 0x0

    array-length v4, p0

    sub-int/2addr v4, v0

    invoke-static {p0, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1634
    new-instance v0, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1635
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1636
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7e
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1c .. :try_end_7e} :catch_11

    .line 1637
    return-object v0
.end method

.method private static b(Lcom/google/ads/interactivemedia/v3/a/f/m;)Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/a/f/m;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/r;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1519
    const/4 v1, 0x4

    :try_start_2
    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 1520
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    add-int/lit8 v2, v1, 0x1

    .line 1521
    const/4 v1, 0x3

    if-ne v2, v1, :cond_1f

    .line 1522
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>()V

    throw v0
    :try_end_16
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_16} :catch_16

    .line 1534
    :catch_16
    move-exception v0

    .line 1535
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    const-string v1, "Error parsing AVC codec private"

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1524
    :cond_1f
    :try_start_1f
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1525
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v1

    and-int/lit8 v4, v1, 0x1f

    move v1, v0

    .line 1526
    :goto_2b
    if-ge v1, v4, :cond_37

    .line 1527
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/a/f/k;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;)[B

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1526
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 1529
    :cond_37
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v1

    .line 1530
    :goto_3b
    if-ge v0, v1, :cond_47

    .line 1531
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/a/f/k;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;)[B

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1530
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 1533
    :cond_47
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_4e
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1f .. :try_end_4e} :catch_16

    move-result-object v0

    return-object v0
.end method

.method private static c(Lcom/google/ads/interactivemedia/v3/a/f/m;)Landroid/util/Pair;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/a/f/m;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/r;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1549
    const/16 v0, 0x15

    :try_start_3
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 1550
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v0

    and-int/lit8 v5, v0, 0x3

    .line 1553
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v6

    .line 1555
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d()I

    move-result v7

    move v3, v1

    move v4, v1

    .line 1556
    :goto_16
    if-ge v3, v6, :cond_36

    .line 1557
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 1558
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->g()I

    move-result v8

    move v0, v1

    move v2, v4

    .line 1559
    :goto_22
    if-ge v0, v8, :cond_31

    .line 1560
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->g()I

    move-result v4

    .line 1561
    add-int/lit8 v9, v4, 0x4

    add-int/2addr v2, v9

    .line 1562
    invoke-virtual {p0, v4}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 1559
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 1556
    :cond_31
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v4, v2

    goto :goto_16

    .line 1567
    :cond_36
    invoke-virtual {p0, v7}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 1568
    new-array v7, v4, [B

    move v3, v1

    move v0, v1

    .line 1570
    :goto_3d
    if-ge v3, v6, :cond_71

    .line 1571
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 1572
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->g()I

    move-result v8

    move v2, v0

    move v0, v1

    .line 1573
    :goto_49
    if-ge v0, v8, :cond_6c

    .line 1574
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->g()I

    move-result v9

    .line 1575
    sget-object v10, Lcom/google/ads/interactivemedia/v3/a/f/k;->a:[B

    const/4 v11, 0x0

    sget-object v12, Lcom/google/ads/interactivemedia/v3/a/f/k;->a:[B

    array-length v12, v12

    invoke-static {v10, v11, v7, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1577
    sget-object v10, Lcom/google/ads/interactivemedia/v3/a/f/k;->a:[B

    array-length v10, v10

    add-int/2addr v2, v10

    .line 1578
    iget-object v10, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d()I

    move-result v11

    invoke-static {v10, v11, v7, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1580
    add-int/2addr v2, v9

    .line 1581
    invoke-virtual {p0, v9}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 1573
    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    .line 1570
    :cond_6c
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v2

    goto :goto_3d

    .line 1585
    :cond_71
    if-nez v4, :cond_7f

    const/4 v0, 0x0

    .line 1586
    :goto_74
    add-int/lit8 v1, v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 1585
    :cond_7f
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;
    :try_end_82
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_82} :catch_84

    move-result-object v0

    goto :goto_74

    .line 1587
    :catch_84
    move-exception v0

    .line 1588
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    const-string v1, "Error parsing HEVC codec private"

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static d(Lcom/google/ads/interactivemedia/v3/a/f/m;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/r;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1651
    :try_start_2
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->h()I

    move-result v2

    .line 1652
    if-ne v2, v0, :cond_9

    .line 1659
    :cond_8
    :goto_8
    return v0

    .line 1654
    :cond_9
    const v3, 0xfffe

    if-ne v2, v3, :cond_35

    .line 1655
    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 1656
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->o()J

    move-result-wide v2

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->a()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_33

    .line 1657
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->o()J

    move-result-wide v2

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->a()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->getLeastSignificantBits()J
    :try_end_2e
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2e} :catch_37

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_8

    :cond_33
    move v0, v1

    goto :goto_8

    :cond_35
    move v0, v1

    .line 1659
    goto :goto_8

    .line 1661
    :catch_37
    move-exception v0

    .line 1662
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    const-string v1, "Error parsing MS/ACM codec private"

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/a/c/g;IJ)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/r;
        }
    .end annotation

    .prologue
    .line 1327
    const/4 v3, -0x1

    .line 1328
    const/4 v10, -0x1

    .line 1329
    const/4 v0, 0x0

    .line 1330
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->a:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_35c

    :cond_d
    :goto_d
    packed-switch v1, :pswitch_data_3c2

    .line 1436
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    const-string v1, "Unrecognized codec identifier."

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1330
    :sswitch_18
    const-string v4, "V_VP8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v1, 0x0

    goto :goto_d

    :sswitch_22
    const-string v4, "V_VP9"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v1, 0x1

    goto :goto_d

    :sswitch_2c
    const-string v4, "V_MPEG2"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v1, 0x2

    goto :goto_d

    :sswitch_36
    const-string v4, "V_MPEG4/ISO/SP"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v1, 0x3

    goto :goto_d

    :sswitch_40
    const-string v4, "V_MPEG4/ISO/ASP"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v1, 0x4

    goto :goto_d

    :sswitch_4a
    const-string v4, "V_MPEG4/ISO/AP"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v1, 0x5

    goto :goto_d

    :sswitch_54
    const-string v4, "V_MPEG4/ISO/AVC"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v1, 0x6

    goto :goto_d

    :sswitch_5e
    const-string v4, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v1, 0x7

    goto :goto_d

    :sswitch_68
    const-string v4, "V_MS/VFW/FOURCC"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/16 v1, 0x8

    goto :goto_d

    :sswitch_73
    const-string v4, "A_VORBIS"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/16 v1, 0x9

    goto :goto_d

    :sswitch_7e
    const-string v4, "A_OPUS"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/16 v1, 0xa

    goto :goto_d

    :sswitch_89
    const-string v4, "A_AAC"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/16 v1, 0xb

    goto/16 :goto_d

    :sswitch_95
    const-string v4, "A_MPEG/L3"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/16 v1, 0xc

    goto/16 :goto_d

    :sswitch_a1
    const-string v4, "A_AC3"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/16 v1, 0xd

    goto/16 :goto_d

    :sswitch_ad
    const-string v4, "A_EAC3"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/16 v1, 0xe

    goto/16 :goto_d

    :sswitch_b9
    const-string v4, "A_TRUEHD"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/16 v1, 0xf

    goto/16 :goto_d

    :sswitch_c5
    const-string v4, "A_DTS"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/16 v1, 0x10

    goto/16 :goto_d

    :sswitch_d1
    const-string v4, "A_DTS/EXPRESS"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/16 v1, 0x11

    goto/16 :goto_d

    :sswitch_dd
    const-string v4, "A_DTS/LOSSLESS"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/16 v1, 0x12

    goto/16 :goto_d

    :sswitch_e9
    const-string v4, "A_FLAC"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/16 v1, 0x13

    goto/16 :goto_d

    :sswitch_f5
    const-string v4, "A_MS/ACM"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/16 v1, 0x14

    goto/16 :goto_d

    :sswitch_101
    const-string v4, "A_PCM/INT/LIT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/16 v1, 0x15

    goto/16 :goto_d

    :sswitch_10d
    const-string v4, "S_TEXT/UTF8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/16 v1, 0x16

    goto/16 :goto_d

    :sswitch_119
    const-string v4, "S_VOBSUB"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/16 v1, 0x17

    goto/16 :goto_d

    :sswitch_125
    const-string v4, "S_HDMV/PGS"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/16 v1, 0x18

    goto/16 :goto_d

    .line 1332
    :pswitch_131
    const-string/jumbo v1, "video/x-vnd.on2.vp8"

    move-object v8, v0

    .line 1442
    :goto_135
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/a/f/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c7

    .line 1443
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    iget v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->p:I

    iget v7, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->r:I

    iget-object v9, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->w:Ljava/lang/String;

    move-wide/from16 v4, p3

    invoke-static/range {v0 .. v10}, Lcom/google/ads/interactivemedia/v3/a/p;->a(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;I)Lcom/google/ads/interactivemedia/v3/a/p;

    move-result-object v0

    .line 1469
    :goto_14c
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->b:I

    invoke-interface {p1, v1}, Lcom/google/ads/interactivemedia/v3/a/c/g;->d(I)Lcom/google/ads/interactivemedia/v3/a/c/m;

    move-result-object v1

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->u:Lcom/google/ads/interactivemedia/v3/a/c/m;

    .line 1470
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->u:Lcom/google/ads/interactivemedia/v3/a/c/m;

    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(Lcom/google/ads/interactivemedia/v3/a/p;)V

    .line 1471
    return-void

    .line 1335
    :pswitch_15a
    const-string/jumbo v1, "video/x-vnd.on2.vp9"

    move-object v8, v0

    .line 1336
    goto :goto_135

    .line 1338
    :pswitch_15f
    const-string/jumbo v1, "video/mpeg2"

    move-object v8, v0

    .line 1339
    goto :goto_135

    .line 1343
    :pswitch_164
    const-string/jumbo v1, "video/mp4v-es"

    .line 1344
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->h:[B

    if-nez v0, :cond_16e

    .line 1345
    const/4 v0, 0x0

    :goto_16c
    move-object v8, v0

    .line 1346
    goto :goto_135

    .line 1345
    :cond_16e
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->h:[B

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_16c

    .line 1348
    :pswitch_175
    const-string/jumbo v2, "video/avc"

    .line 1349
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->h:[B

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;-><init>([B)V

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->b(Lcom/google/ads/interactivemedia/v3/a/f/m;)Landroid/util/Pair;

    move-result-object v1

    .line 1351
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 1352
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->v:I

    move-object v1, v2

    move-object v8, v0

    .line 1353
    goto :goto_135

    .line 1355
    :pswitch_194
    const-string/jumbo v2, "video/hevc"

    .line 1356
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->h:[B

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;-><init>([B)V

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->c(Lcom/google/ads/interactivemedia/v3/a/f/m;)Landroid/util/Pair;

    move-result-object v1

    .line 1358
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 1359
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->v:I

    move-object v1, v2

    move-object v8, v0

    .line 1360
    goto :goto_135

    .line 1362
    :pswitch_1b3
    const-string/jumbo v1, "video/wvc1"

    .line 1363
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->h:[B

    invoke-direct {v0, v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;-><init>([B)V

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;)Ljava/util/List;

    move-result-object v0

    move-object v8, v0

    .line 1364
    goto/16 :goto_135

    .line 1366
    :pswitch_1c4
    const-string v1, "audio/vorbis"

    .line 1367
    const/16 v3, 0x2000

    .line 1368
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->h:[B

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->a([B)Ljava/util/List;

    move-result-object v0

    move-object v8, v0

    .line 1369
    goto/16 :goto_135

    .line 1371
    :pswitch_1d1
    const-string v1, "audio/opus"

    .line 1372
    const/16 v3, 0x1680

    .line 1373
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1374
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->h:[B

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1375
    const/16 v2, 0x8

    .line 1376
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->s:J

    invoke-virtual {v2, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 1375
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1377
    const/16 v2, 0x8

    .line 1378
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->t:J

    invoke-virtual {v2, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 1377
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v8, v0

    .line 1379
    goto/16 :goto_135

    .line 1381
    :pswitch_219
    const-string v1, "audio/mp4a-latm"

    .line 1382
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->h:[B

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v8, v0

    .line 1383
    goto/16 :goto_135

    .line 1385
    :pswitch_224
    const-string v1, "audio/mpeg"

    .line 1386
    const/16 v3, 0x1000

    move-object v8, v0

    .line 1387
    goto/16 :goto_135

    .line 1389
    :pswitch_22b
    const-string v1, "audio/ac3"

    move-object v8, v0

    .line 1390
    goto/16 :goto_135

    .line 1392
    :pswitch_230
    const-string v1, "audio/eac3"

    move-object v8, v0

    .line 1393
    goto/16 :goto_135

    .line 1395
    :pswitch_235
    const-string v1, "audio/true-hd"

    move-object v8, v0

    .line 1396
    goto/16 :goto_135

    .line 1399
    :pswitch_23a
    const-string v1, "audio/vnd.dts"

    move-object v8, v0

    .line 1400
    goto/16 :goto_135

    .line 1402
    :pswitch_23f
    const-string v1, "audio/vnd.dts.hd"

    move-object v8, v0

    .line 1403
    goto/16 :goto_135

    .line 1405
    :pswitch_244
    const-string v1, "audio/x-flac"

    .line 1406
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->h:[B

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v8, v0

    .line 1407
    goto/16 :goto_135

    .line 1409
    :pswitch_24f
    const-string v1, "audio/raw"

    .line 1410
    new-instance v2, Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->h:[B

    invoke-direct {v2, v4}, Lcom/google/ads/interactivemedia/v3/a/f/m;-><init>([B)V

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->d(Lcom/google/ads/interactivemedia/v3/a/f/m;)Z

    move-result v2

    if-nez v2, :cond_266

    .line 1411
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    const-string v1, "Non-PCM MS/ACM is unsupported"

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1413
    :cond_266
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->q:I

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/a/f/q;->a(I)I

    move-result v10

    .line 1414
    if-nez v10, :cond_358

    .line 1415
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->q:I

    const/16 v2, 0x26

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unsupported PCM bit depth: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1419
    :pswitch_28b
    const-string v1, "audio/raw"

    .line 1420
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->q:I

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/a/f/q;->a(I)I

    move-result v10

    .line 1421
    if-nez v10, :cond_358

    .line 1422
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->q:I

    const/16 v2, 0x26

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unsupported PCM bit depth: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1426
    :pswitch_2b2
    const-string v1, "application/x-subrip"

    move-object v8, v0

    .line 1427
    goto/16 :goto_135

    .line 1429
    :pswitch_2b7
    const-string v1, "application/vobsub"

    .line 1430
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->h:[B

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v8, v0

    .line 1431
    goto/16 :goto_135

    .line 1433
    :pswitch_2c2
    const-string v1, "application/pgs"

    move-object v8, v0

    .line 1434
    goto/16 :goto_135

    .line 1446
    :cond_2c7
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/a/f/i;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_319

    .line 1447
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->m:I

    if-nez v0, :cond_2e3

    .line 1448
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->k:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_313

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->i:I

    :goto_2d8
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->k:I

    .line 1449
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->l:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_316

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->j:I

    :goto_2e1
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->l:I

    .line 1451
    :cond_2e3
    const/high16 v10, -0x40800000

    .line 1452
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->k:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2fd

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->l:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2fd

    .line 1453
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->j:I

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->k:I

    mul-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->i:I

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->l:I

    mul-int/2addr v2, v4

    int-to-float v2, v2

    div-float v10, v0, v2

    .line 1455
    :cond_2fd
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    iget v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->i:I

    iget v7, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->j:I

    const/4 v9, -0x1

    iget-object v11, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->n:[B

    iget v12, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->o:I

    move-wide/from16 v4, p3

    invoke-static/range {v0 .. v12}, Lcom/google/ads/interactivemedia/v3/a/p;->a(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;IF[BI)Lcom/google/ads/interactivemedia/v3/a/p;

    move-result-object v0

    goto/16 :goto_14c

    .line 1448
    :cond_313
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->k:I

    goto :goto_2d8

    .line 1449
    :cond_316
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->l:I

    goto :goto_2e1

    .line 1458
    :cond_319
    const-string v0, "application/x-subrip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_330

    .line 1459
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->w:Ljava/lang/String;

    move-wide/from16 v3, p3

    invoke-static/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/a/p;->a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)Lcom/google/ads/interactivemedia/v3/a/p;

    move-result-object v0

    goto/16 :goto_14c

    .line 1461
    :cond_330
    const-string v0, "application/vobsub"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_340

    const-string v0, "application/pgs"

    .line 1462
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_350

    .line 1463
    :cond_340
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->w:Ljava/lang/String;

    move-wide/from16 v3, p3

    move-object v5, v8

    invoke-static/range {v0 .. v6}, Lcom/google/ads/interactivemedia/v3/a/p;->a(Ljava/lang/String;Ljava/lang/String;IJLjava/util/List;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/a/p;

    move-result-object v0

    goto/16 :goto_14c

    .line 1466
    :cond_350
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    const-string v1, "Unexpected MIME type."

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_358
    move-object v8, v0

    goto/16 :goto_135

    .line 1330
    nop

    :sswitch_data_35c
    .sparse-switch
        -0x7ce7f5de -> :sswitch_4a
        -0x7ce7f3b0 -> :sswitch_36
        -0x76567dc0 -> :sswitch_f5
        -0x6a615338 -> :sswitch_b9
        -0x672350af -> :sswitch_73
        -0x585f4fcd -> :sswitch_95
        -0x51dc40b2 -> :sswitch_68
        -0x2016c535 -> :sswitch_40
        -0x2016c4e5 -> :sswitch_54
        -0x19552dbd -> :sswitch_119
        -0x1538b2ba -> :sswitch_dd
        0x3c02325 -> :sswitch_89
        0x3c02353 -> :sswitch_a1
        0x3c030c5 -> :sswitch_c5
        0x4e86155 -> :sswitch_18
        0x4e86156 -> :sswitch_22
        0x5e8da3e -> :sswitch_125
        0x2056f406 -> :sswitch_d1
        0x2b453ce4 -> :sswitch_101
        0x32fdf009 -> :sswitch_5e
        0x54c61e47 -> :sswitch_10d
        0x6bd6c624 -> :sswitch_2c
        0x7446132a -> :sswitch_ad
        0x7446b0a6 -> :sswitch_e9
        0x744ad97d -> :sswitch_7e
    .end sparse-switch

    :pswitch_data_3c2
    .packed-switch 0x0
        :pswitch_131
        :pswitch_15a
        :pswitch_15f
        :pswitch_164
        :pswitch_164
        :pswitch_164
        :pswitch_175
        :pswitch_194
        :pswitch_1b3
        :pswitch_1c4
        :pswitch_1d1
        :pswitch_219
        :pswitch_224
        :pswitch_22b
        :pswitch_230
        :pswitch_235
        :pswitch_23a
        :pswitch_23a
        :pswitch_23f
        :pswitch_244
        :pswitch_24f
        :pswitch_28b
        :pswitch_2b2
        :pswitch_2b7
        :pswitch_2c2
    .end packed-switch
.end method
