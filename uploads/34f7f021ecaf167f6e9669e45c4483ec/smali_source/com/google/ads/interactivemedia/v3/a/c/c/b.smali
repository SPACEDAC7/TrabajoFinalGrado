.class final Lcom/google/ads/interactivemedia/v3/a/c/c/b;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/a/c/c/b$f;,
        Lcom/google/ads/interactivemedia/v3/a/c/c/b$e;,
        Lcom/google/ads/interactivemedia/v3/a/c/c/b$c;,
        Lcom/google/ads/interactivemedia/v3/a/c/c/b$a;,
        Lcom/google/ads/interactivemedia/v3/a/c/c/b$d;,
        Lcom/google/ads/interactivemedia/v3/a/c/c/b$g;,
        Lcom/google/ads/interactivemedia/v3/a/c/c/b$b;
    }
.end annotation


# static fields
.field private static final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const-string v0, "cenc"

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/q;->c(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/ads/interactivemedia/v3/a/c/c/b;->a:I

    return-void
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/a/f/m;II)I
    .registers 7

    .prologue
    .line 935
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d()I

    move-result v1

    .line 936
    :goto_4
    sub-int v0, v1, p1

    if-ge v0, p2, :cond_25

    .line 937
    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 938
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v2

    .line 939
    if-lez v2, :cond_21

    const/4 v0, 0x1

    :goto_12
    const-string v3, "childAtomSize should be positive"

    invoke-static {v0, v3}, Lcom/google/ads/interactivemedia/v3/a/f/b;->a(ZLjava/lang/Object;)V

    .line 940
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v0

    .line 941
    sget v3, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->I:I

    if-ne v0, v3, :cond_23

    move v0, v1

    .line 946
    :goto_20
    return v0

    .line 939
    :cond_21
    const/4 v0, 0x0

    goto :goto_12

    .line 944
    :cond_23
    add-int/2addr v1, v2

    .line 945
    goto :goto_4

    .line 946
    :cond_25
    const/4 v0, -0x1

    goto :goto_20
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/a/f/m;IILcom/google/ads/interactivemedia/v3/a/c/c/b$d;I)I
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 1031
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d()I

    move-result v0

    move v2, v0

    .line 1032
    :goto_6
    sub-int v0, v2, p1

    if-ge v0, p2, :cond_37

    .line 1033
    invoke-virtual {p0, v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 1034
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v3

    .line 1035
    if-lez v3, :cond_38

    const/4 v0, 0x1

    :goto_14
    const-string v4, "childAtomSize should be positive"

    invoke-static {v0, v4}, Lcom/google/ads/interactivemedia/v3/a/f/b;->a(ZLjava/lang/Object;)V

    .line 1036
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v0

    .line 1037
    sget v4, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->U:I

    if-ne v0, v4, :cond_3a

    .line 1038
    invoke-static {p0, v2, v3}, Lcom/google/ads/interactivemedia/v3/a/c/c/b;->b(Lcom/google/ads/interactivemedia/v3/a/f/m;II)Landroid/util/Pair;

    move-result-object v4

    .line 1040
    if-eqz v4, :cond_3a

    .line 1041
    iget-object v1, p3, Lcom/google/ads/interactivemedia/v3/a/c/c/b$d;->a:[Lcom/google/ads/interactivemedia/v3/a/c/c/j;

    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/c/c/j;

    aput-object v0, v1, p4

    .line 1042
    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1048
    :cond_37
    return v1

    :cond_38
    move v0, v1

    .line 1035
    goto :goto_14

    .line 1045
    :cond_3a
    add-int v0, v2, v3

    move v2, v0

    .line 1046
    goto :goto_6
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;)Landroid/util/Pair;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;",
            ")",
            "Landroid/util/Pair",
            "<[J[J>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x1

    .line 785
    if-eqz p0, :cond_c

    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->P:I

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->d(I)Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;

    move-result-object v0

    if-nez v0, :cond_11

    .line 786
    :cond_c
    invoke-static {v1, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 806
    :goto_10
    return-object v0

    .line 788
    :cond_11
    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;->aN:Lcom/google/ads/interactivemedia/v3/a/f/m;

    .line 789
    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 790
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v0

    .line 791
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->a(I)I

    move-result v4

    .line 792
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/a/f/m;->s()I

    move-result v5

    .line 793
    new-array v6, v5, [J

    .line 794
    new-array v7, v5, [J

    .line 795
    const/4 v0, 0x0

    move v2, v0

    :goto_2a
    if-ge v2, v5, :cond_5d

    .line 796
    if-ne v4, v8, :cond_4a

    .line 797
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/a/f/m;->u()J

    move-result-wide v0

    :goto_32
    aput-wide v0, v6, v2

    .line 798
    if-ne v4, v8, :cond_4f

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/a/f/m;->o()J

    move-result-wide v0

    :goto_3a
    aput-wide v0, v7, v2

    .line 799
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/a/f/m;->i()S

    move-result v0

    .line 800
    if-eq v0, v8, :cond_55

    .line 802
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported media rate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 797
    :cond_4a
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/a/f/m;->k()J

    move-result-wide v0

    goto :goto_32

    .line 798
    :cond_4f
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v0

    int-to-long v0, v0

    goto :goto_3a

    .line 804
    :cond_55
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 795
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2a

    .line 806
    :cond_5d
    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_10
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/a/f/m;I)Lcom/google/ads/interactivemedia/v3/a/c/c/b$a;
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 706
    add-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 708
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    add-int/lit8 v3, v0, 0x1

    .line 709
    const/4 v0, 0x3

    if-ne v3, v0, :cond_19

    .line 710
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 712
    :cond_19
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 713
    const/high16 v0, 0x3f800000

    .line 714
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v1

    and-int/lit8 v5, v1, 0x1f

    move v1, v2

    .line 715
    :goto_27
    if-ge v1, v5, :cond_33

    .line 716
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/a/f/k;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;)[B

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 715
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 718
    :cond_33
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v6

    move v1, v2

    .line 719
    :goto_38
    if-ge v1, v6, :cond_44

    .line 720
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/a/f/k;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;)[B

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 719
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 723
    :cond_44
    if-lez v5, :cond_5e

    .line 725
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/f/l;-><init>([B)V

    .line 727
    add-int/lit8 v0, v3, 0x1

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/f/l;->a(I)V

    .line 728
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/a/f/k;->a(Lcom/google/ads/interactivemedia/v3/a/f/l;)Lcom/google/ads/interactivemedia/v3/a/f/k$b;

    move-result-object v0

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/a/f/k$b;->d:F

    .line 731
    :cond_5e
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/c/c/b$a;

    invoke-direct {v1, v4, v3, v0}, Lcom/google/ads/interactivemedia/v3/a/c/c/b$a;-><init>(Ljava/util/List;IF)V

    return-object v1
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/a/f/m;IJILjava/lang/String;Z)Lcom/google/ads/interactivemedia/v3/a/c/c/b$d;
    .registers 33

    .prologue
    .line 567
    const/16 v2, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 568
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v24

    .line 569
    new-instance v11, Lcom/google/ads/interactivemedia/v3/a/c/c/b$d;

    move/from16 v0, v24

    invoke-direct {v11, v0}, Lcom/google/ads/interactivemedia/v3/a/c/c/b$d;-><init>(I)V

    .line 570
    const/4 v12, 0x0

    :goto_13
    move/from16 v0, v24

    if-ge v12, v0, :cond_109

    .line 571
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d()I

    move-result v5

    .line 572
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v6

    .line 573
    if-lez v6, :cond_64

    const/4 v2, 0x1

    :goto_22
    const-string v3, "childAtomSize should be positive"

    invoke-static {v2, v3}, Lcom/google/ads/interactivemedia/v3/a/f/b;->a(ZLjava/lang/Object;)V

    .line 574
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v4

    .line 575
    sget v2, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->b:I

    if-eq v4, v2, :cond_4f

    sget v2, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->c:I

    if-eq v4, v2, :cond_4f

    sget v2, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->Y:I

    if-eq v4, v2, :cond_4f

    sget v2, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->ak:I

    if-eq v4, v2, :cond_4f

    sget v2, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->d:I

    if-eq v4, v2, :cond_4f

    sget v2, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->e:I

    if-eq v4, v2, :cond_4f

    sget v2, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->f:I

    if-eq v4, v2, :cond_4f

    sget v2, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->aI:I

    if-eq v4, v2, :cond_4f

    sget v2, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->aJ:I

    if-ne v4, v2, :cond_66

    :cond_4f
    move-object/from16 v3, p0

    move/from16 v7, p1

    move-wide/from16 v8, p2

    move/from16 v10, p4

    .line 580
    invoke-static/range {v3 .. v12}, Lcom/google/ads/interactivemedia/v3/a/c/c/b;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;IIIIJILcom/google/ads/interactivemedia/v3/a/c/c/b$d;I)V

    .line 604
    :cond_5a
    :goto_5a
    add-int v2, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 570
    add-int/lit8 v12, v12, 0x1

    goto :goto_13

    .line 573
    :cond_64
    const/4 v2, 0x0

    goto :goto_22

    .line 582
    :cond_66
    sget v2, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->i:I

    if-eq v4, v2, :cond_96

    sget v2, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->Z:I

    if-eq v4, v2, :cond_96

    sget v2, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->m:I

    if-eq v4, v2, :cond_96

    sget v2, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->o:I

    if-eq v4, v2, :cond_96

    sget v2, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->q:I

    if-eq v4, v2, :cond_96

    sget v2, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->t:I

    if-eq v4, v2, :cond_96

    sget v2, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->r:I

    if-eq v4, v2, :cond_96

    sget v2, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->s:I

    if-eq v4, v2, :cond_96

    sget v2, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->aw:I

    if-eq v4, v2, :cond_96

    sget v2, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->ax:I

    if-eq v4, v2, :cond_96

    sget v2, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->k:I

    if-eq v4, v2, :cond_96

    sget v2, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->l:I

    if-ne v4, v2, :cond_ac

    :cond_96
    move-object/from16 v13, p0

    move v14, v4

    move v15, v5

    move/from16 v16, v6

    move/from16 v17, p1

    move-wide/from16 v18, p2

    move-object/from16 v20, p5

    move/from16 v21, p6

    move-object/from16 v22, v11

    move/from16 v23, v12

    .line 588
    invoke-static/range {v13 .. v23}, Lcom/google/ads/interactivemedia/v3/a/c/c/b;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;IIIIJLjava/lang/String;ZLcom/google/ads/interactivemedia/v3/a/c/c/b$d;I)V

    goto :goto_5a

    .line 590
    :cond_ac
    sget v2, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->ai:I

    if-ne v4, v2, :cond_c2

    .line 591
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "application/ttml+xml"

    const/4 v15, -0x1

    move-wide/from16 v16, p2

    move-object/from16 v18, p5

    invoke-static/range {v13 .. v18}, Lcom/google/ads/interactivemedia/v3/a/p;->a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)Lcom/google/ads/interactivemedia/v3/a/p;

    move-result-object v2

    iput-object v2, v11, Lcom/google/ads/interactivemedia/v3/a/c/c/b$d;->b:Lcom/google/ads/interactivemedia/v3/a/p;

    goto :goto_5a

    .line 593
    :cond_c2
    sget v2, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->at:I

    if-ne v4, v2, :cond_d8

    .line 594
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "application/x-quicktime-tx3g"

    const/4 v15, -0x1

    move-wide/from16 v16, p2

    move-object/from16 v18, p5

    invoke-static/range {v13 .. v18}, Lcom/google/ads/interactivemedia/v3/a/p;->a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)Lcom/google/ads/interactivemedia/v3/a/p;

    move-result-object v2

    iput-object v2, v11, Lcom/google/ads/interactivemedia/v3/a/c/c/b$d;->b:Lcom/google/ads/interactivemedia/v3/a/p;

    goto :goto_5a

    .line 596
    :cond_d8
    sget v2, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->au:I

    if-ne v4, v2, :cond_ef

    .line 597
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "application/x-mp4vtt"

    const/4 v15, -0x1

    move-wide/from16 v16, p2

    move-object/from16 v18, p5

    invoke-static/range {v13 .. v18}, Lcom/google/ads/interactivemedia/v3/a/p;->a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)Lcom/google/ads/interactivemedia/v3/a/p;

    move-result-object v2

    iput-object v2, v11, Lcom/google/ads/interactivemedia/v3/a/c/c/b$d;->b:Lcom/google/ads/interactivemedia/v3/a/p;

    goto/16 :goto_5a

    .line 599
    :cond_ef
    sget v2, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->av:I

    if-ne v4, v2, :cond_5a

    .line 600
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "application/ttml+xml"

    const/16 v16, -0x1

    const-wide/16 v20, 0x0

    move-wide/from16 v17, p2

    move-object/from16 v19, p5

    invoke-static/range {v14 .. v21}, Lcom/google/ads/interactivemedia/v3/a/p;->a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;J)Lcom/google/ads/interactivemedia/v3/a/p;

    move-result-object v2

    iput-object v2, v11, Lcom/google/ads/interactivemedia/v3/a/c/c/b$d;->b:Lcom/google/ads/interactivemedia/v3/a/p;

    goto/16 :goto_5a

    .line 606
    :cond_109
    return-object v11
.end method

.method public static a(Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;JZ)Lcom/google/ads/interactivemedia/v3/a/c/c/i;
    .registers 33

    .prologue
    .line 58
    sget v2, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->D:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->e(I)Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;

    move-result-object v8

    .line 59
    sget v2, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->R:I

    invoke-virtual {v8, v2}, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->d(I)Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;

    move-result-object v2

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;->aN:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/a/c/c/b;->e(Lcom/google/ads/interactivemedia/v3/a/f/m;)I

    move-result v15

    .line 60
    sget v2, Lcom/google/ads/interactivemedia/v3/a/c/c/i;->b:I

    if-eq v15, v2, :cond_2a

    sget v2, Lcom/google/ads/interactivemedia/v3/a/c/c/i;->a:I

    if-eq v15, v2, :cond_2a

    sget v2, Lcom/google/ads/interactivemedia/v3/a/c/c/i;->c:I

    if-eq v15, v2, :cond_2a

    sget v2, Lcom/google/ads/interactivemedia/v3/a/c/c/i;->d:I

    if-eq v15, v2, :cond_2a

    sget v2, Lcom/google/ads/interactivemedia/v3/a/c/c/i;->e:I

    if-eq v15, v2, :cond_2a

    .line 62
    const/4 v13, 0x0

    .line 83
    :goto_29
    return-object v13

    .line 65
    :cond_2a
    sget v2, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->N:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->d(I)Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;

    move-result-object v2

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;->aN:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/a/c/c/b;->d(Lcom/google/ads/interactivemedia/v3/a/f/m;)Lcom/google/ads/interactivemedia/v3/a/c/c/b$g;

    move-result-object v16

    .line 66
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-nez v2, :cond_cd

    .line 67
    invoke-static/range {v16 .. v16}, Lcom/google/ads/interactivemedia/v3/a/c/c/b$g;->a(Lcom/google/ads/interactivemedia/v3/a/c/c/b$g;)J

    move-result-wide v2

    .line 69
    :goto_42
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;->aN:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/a/c/c/b;->c(Lcom/google/ads/interactivemedia/v3/a/f/m;)J

    move-result-wide v6

    .line 71
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_96

    .line 72
    const-wide/16 v10, -0x1

    .line 76
    :goto_52
    sget v2, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->E:I

    invoke-virtual {v8, v2}, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->e(I)Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;

    move-result-object v2

    sget v3, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->F:I

    .line 77
    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->e(I)Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;

    move-result-object v2

    .line 79
    sget v3, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->Q:I

    invoke-virtual {v8, v3}, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->d(I)Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;

    move-result-object v3

    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;->aN:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/a/c/c/b;->f(Lcom/google/ads/interactivemedia/v3/a/f/m;)Landroid/util/Pair;

    move-result-object v3

    .line 80
    sget v4, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->S:I

    invoke-virtual {v2, v4}, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->d(I)Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;

    move-result-object v2

    iget-object v8, v2, Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;->aN:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-static/range {v16 .. v16}, Lcom/google/ads/interactivemedia/v3/a/c/c/b$g;->b(Lcom/google/ads/interactivemedia/v3/a/c/c/b$g;)I

    move-result v9

    .line 81
    invoke-static/range {v16 .. v16}, Lcom/google/ads/interactivemedia/v3/a/c/c/b$g;->c(Lcom/google/ads/interactivemedia/v3/a/c/c/b$g;)I

    move-result v12

    iget-object v13, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    move/from16 v14, p4

    .line 80
    invoke-static/range {v8 .. v14}, Lcom/google/ads/interactivemedia/v3/a/c/c/b;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;IJILjava/lang/String;Z)Lcom/google/ads/interactivemedia/v3/a/c/c/b$d;

    move-result-object v4

    .line 82
    sget v2, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->O:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->e(I)Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;

    move-result-object v2

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/a/c/c/b;->a(Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;)Landroid/util/Pair;

    move-result-object v5

    .line 83
    iget-object v2, v4, Lcom/google/ads/interactivemedia/v3/a/c/c/b$d;->b:Lcom/google/ads/interactivemedia/v3/a/p;

    if-nez v2, :cond_9e

    const/4 v13, 0x0

    goto :goto_29

    .line 74
    :cond_96
    const-wide/32 v4, 0xf4240

    invoke-static/range {v2 .. v7}, Lcom/google/ads/interactivemedia/v3/a/f/q;->a(JJJ)J

    move-result-wide v10

    goto :goto_52

    .line 84
    :cond_9e
    new-instance v13, Lcom/google/ads/interactivemedia/v3/a/c/c/i;

    invoke-static/range {v16 .. v16}, Lcom/google/ads/interactivemedia/v3/a/c/c/b$g;->b(Lcom/google/ads/interactivemedia/v3/a/c/c/b$g;)I

    move-result v14

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    iget-object v0, v4, Lcom/google/ads/interactivemedia/v3/a/c/c/b$d;->b:Lcom/google/ads/interactivemedia/v3/a/p;

    move-object/from16 v22, v0

    iget-object v0, v4, Lcom/google/ads/interactivemedia/v3/a/c/c/b$d;->a:[Lcom/google/ads/interactivemedia/v3/a/c/c/j;

    move-object/from16 v23, v0

    iget v0, v4, Lcom/google/ads/interactivemedia/v3/a/c/c/b$d;->c:I

    move/from16 v24, v0

    iget-object v0, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, [J

    iget-object v0, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, [J

    move-wide/from16 v18, v6

    move-wide/from16 v20, v10

    invoke-direct/range {v13 .. v26}, Lcom/google/ads/interactivemedia/v3/a/c/c/i;-><init>(IIJJJLcom/google/ads/interactivemedia/v3/a/p;[Lcom/google/ads/interactivemedia/v3/a/c/c/j;I[J[J)V

    goto/16 :goto_29

    :cond_cd
    move-wide/from16 v2, p2

    goto/16 :goto_42
.end method

.method public static a(Lcom/google/ads/interactivemedia/v3/a/c/c/i;Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;)Lcom/google/ads/interactivemedia/v3/a/c/c/l;
    .registers 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/r;
        }
    .end annotation

    .prologue
    .line 100
    sget v2, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->ap:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->d(I)Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;

    move-result-object v3

    .line 101
    if-eqz v3, :cond_28

    .line 102
    new-instance v2, Lcom/google/ads/interactivemedia/v3/a/c/c/b$e;

    invoke-direct {v2, v3}, Lcom/google/ads/interactivemedia/v3/a/c/c/b$e;-><init>(Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;)V

    .line 111
    :goto_f
    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/a/c/c/b$c;->a()I

    move-result v26

    .line 112
    if-nez v26, :cond_40

    .line 113
    new-instance v2, Lcom/google/ads/interactivemedia/v3/a/c/c/l;

    const/4 v3, 0x0

    new-array v3, v3, [J

    const/4 v4, 0x0

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [J

    const/4 v7, 0x0

    new-array v7, v7, [I

    invoke-direct/range {v2 .. v7}, Lcom/google/ads/interactivemedia/v3/a/c/c/l;-><init>([J[II[J[I)V

    .line 359
    :goto_27
    return-object v2

    .line 104
    :cond_28
    sget v2, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->aq:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->d(I)Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;

    move-result-object v3

    .line 105
    if-nez v3, :cond_3a

    .line 106
    new-instance v2, Lcom/google/ads/interactivemedia/v3/a/r;

    const-string v3, "Track has no sample table size information"

    invoke-direct {v2, v3}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v2

    .line 108
    :cond_3a
    new-instance v2, Lcom/google/ads/interactivemedia/v3/a/c/c/b$f;

    invoke-direct {v2, v3}, Lcom/google/ads/interactivemedia/v3/a/c/c/b$f;-><init>(Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;)V

    goto :goto_f

    .line 117
    :cond_40
    const/4 v4, 0x0

    .line 118
    sget v3, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->ar:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->d(I)Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;

    move-result-object v3

    .line 119
    if-nez v3, :cond_54

    .line 120
    const/4 v4, 0x1

    .line 121
    sget v3, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->as:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->d(I)Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;

    move-result-object v3

    .line 123
    :cond_54
    iget-object v6, v3, Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;->aN:Lcom/google/ads/interactivemedia/v3/a/f/m;

    .line 125
    sget v3, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->ao:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->d(I)Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;

    move-result-object v3

    iget-object v7, v3, Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;->aN:Lcom/google/ads/interactivemedia/v3/a/f/m;

    .line 127
    sget v3, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->al:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->d(I)Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;

    move-result-object v3

    iget-object v0, v3, Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;->aN:Lcom/google/ads/interactivemedia/v3/a/f/m;

    move-object/from16 v27, v0

    .line 129
    sget v3, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->am:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->d(I)Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;

    move-result-object v3

    .line 130
    if-eqz v3, :cond_13a

    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;->aN:Lcom/google/ads/interactivemedia/v3/a/f/m;

    .line 132
    :goto_78
    sget v5, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->an:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->d(I)Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;

    move-result-object v5

    .line 133
    if-eqz v5, :cond_13d

    iget-object v5, v5, Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;->aN:Lcom/google/ads/interactivemedia/v3/a/f/m;

    .line 136
    :goto_84
    new-instance v28, Lcom/google/ads/interactivemedia/v3/a/c/c/b$b;

    move-object/from16 v0, v28

    invoke-direct {v0, v7, v6, v4}, Lcom/google/ads/interactivemedia/v3/a/c/c/b$b;-><init>(Lcom/google/ads/interactivemedia/v3/a/f/m;Lcom/google/ads/interactivemedia/v3/a/f/m;Z)V

    .line 139
    const/16 v4, 0xc

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 140
    invoke-virtual/range {v27 .. v27}, Lcom/google/ads/interactivemedia/v3/a/f/m;->s()I

    move-result v4

    add-int/lit8 v23, v4, -0x1

    .line 141
    invoke-virtual/range {v27 .. v27}, Lcom/google/ads/interactivemedia/v3/a/f/m;->s()I

    move-result v22

    .line 142
    invoke-virtual/range {v27 .. v27}, Lcom/google/ads/interactivemedia/v3/a/f/m;->s()I

    move-result v21

    .line 145
    const/16 v20, 0x0

    .line 146
    const/16 v17, 0x0

    .line 147
    const/16 v16, 0x0

    .line 148
    if-eqz v5, :cond_b1

    .line 149
    const/16 v4, 0xc

    invoke-virtual {v5, v4}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 150
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/a/f/m;->s()I

    move-result v17

    .line 153
    :cond_b1
    const/4 v6, -0x1

    .line 154
    const/4 v4, 0x0

    .line 155
    if-eqz v3, :cond_421

    .line 156
    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 157
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/a/f/m;->s()I

    move-result v4

    .line 158
    if-lez v4, :cond_140

    .line 159
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/a/f/m;->s()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    move/from16 v32, v4

    move v4, v6

    move-object v6, v3

    move/from16 v3, v32

    .line 167
    :goto_cc
    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/a/c/c/b$c;->c()Z

    move-result v7

    if-eqz v7, :cond_148

    const-string v7, "audio/raw"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/i;->k:Lcom/google/ads/interactivemedia/v3/a/p;

    iget-object v8, v8, Lcom/google/ads/interactivemedia/v3/a/p;->b:Ljava/lang/String;

    .line 168
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_148

    if-nez v23, :cond_148

    if-nez v17, :cond_148

    if-nez v3, :cond_148

    const/4 v7, 0x1

    .line 175
    :goto_e7
    const/4 v8, 0x0

    .line 179
    if-nez v7, :cond_247

    .line 180
    move/from16 v0, v26

    new-array v15, v0, [J

    .line 181
    move/from16 v0, v26

    new-array v14, v0, [I

    .line 182
    move/from16 v0, v26

    new-array v13, v0, [J

    .line 183
    move/from16 v0, v26

    new-array v12, v0, [I

    .line 184
    const-wide/16 v10, 0x0

    .line 185
    const-wide/16 v18, 0x0

    .line 186
    const/4 v9, 0x0

    .line 188
    const/4 v7, 0x0

    move-wide/from16 v24, v10

    move/from16 v10, v21

    move/from16 v11, v23

    move/from16 v23, v22

    move/from16 v22, v7

    move/from16 v7, v20

    move/from16 v32, v17

    move/from16 v17, v4

    move/from16 v4, v32

    move/from16 v33, v16

    move/from16 v16, v3

    move/from16 v3, v33

    :goto_118
    move/from16 v0, v22

    move/from16 v1, v26

    if-ge v0, v1, :cond_1bd

    move-wide/from16 v20, v18

    move/from16 v18, v9

    .line 190
    :goto_122
    if-nez v18, :cond_14a

    .line 191
    invoke-virtual/range {v28 .. v28}, Lcom/google/ads/interactivemedia/v3/a/c/c/b$b;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/google/ads/interactivemedia/v3/a/f/b;->b(Z)V

    .line 192
    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$b;->d:J

    move-wide/from16 v18, v0

    .line 193
    move-object/from16 v0, v28

    iget v9, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$b;->c:I

    move-wide/from16 v20, v18

    move/from16 v18, v9

    goto :goto_122

    .line 130
    :cond_13a
    const/4 v3, 0x0

    goto/16 :goto_78

    .line 133
    :cond_13d
    const/4 v5, 0x0

    goto/16 :goto_84

    .line 162
    :cond_140
    const/4 v3, 0x0

    move/from16 v32, v4

    move v4, v6

    move-object v6, v3

    move/from16 v3, v32

    goto :goto_cc

    .line 168
    :cond_148
    const/4 v7, 0x0

    goto :goto_e7

    .line 197
    :cond_14a
    if-eqz v5, :cond_15d

    .line 198
    :goto_14c
    if-nez v7, :cond_15b

    if-lez v4, :cond_15b

    .line 199
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/a/f/m;->s()I

    move-result v7

    .line 205
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v3

    .line 206
    add-int/lit8 v4, v4, -0x1

    goto :goto_14c

    .line 208
    :cond_15b
    add-int/lit8 v7, v7, -0x1

    .line 211
    :cond_15d
    aput-wide v20, v15, v22

    .line 212
    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/a/c/c/b$c;->b()I

    move-result v9

    aput v9, v14, v22

    .line 213
    aget v9, v14, v22

    if-le v9, v8, :cond_16b

    .line 214
    aget v8, v14, v22

    .line 216
    :cond_16b
    int-to-long v0, v3

    move-wide/from16 v30, v0

    add-long v30, v30, v24

    aput-wide v30, v13, v22

    .line 219
    if-nez v6, :cond_1bb

    const/4 v9, 0x1

    :goto_175
    aput v9, v12, v22

    .line 220
    move/from16 v0, v22

    move/from16 v1, v17

    if-ne v0, v1, :cond_18e

    .line 221
    const/4 v9, 0x1

    aput v9, v12, v22

    .line 222
    add-int/lit8 v9, v16, -0x1

    .line 223
    if-lez v9, :cond_41d

    .line 224
    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/a/f/m;->s()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v17, v16

    move/from16 v16, v9

    .line 229
    :cond_18e
    :goto_18e
    int-to-long v0, v10

    move-wide/from16 v30, v0

    add-long v24, v24, v30

    .line 230
    add-int/lit8 v9, v23, -0x1

    .line 231
    if-nez v9, :cond_416

    if-lez v11, :cond_416

    .line 232
    invoke-virtual/range {v27 .. v27}, Lcom/google/ads/interactivemedia/v3/a/f/m;->s()I

    move-result v10

    .line 233
    invoke-virtual/range {v27 .. v27}, Lcom/google/ads/interactivemedia/v3/a/f/m;->s()I

    move-result v9

    .line 234
    add-int/lit8 v11, v11, -0x1

    .line 237
    :goto_1a3
    aget v19, v14, v22

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v30, v0

    add-long v20, v20, v30

    .line 238
    add-int/lit8 v19, v18, -0x1

    .line 188
    add-int/lit8 v18, v22, 0x1

    move/from16 v22, v18

    move/from16 v23, v10

    move v10, v9

    move/from16 v9, v19

    move-wide/from16 v18, v20

    goto/16 :goto_118

    .line 219
    :cond_1bb
    const/4 v9, 0x0

    goto :goto_175

    .line 241
    :cond_1bd
    if-nez v7, :cond_1d5

    const/4 v2, 0x1

    :goto_1c0
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/a/f/b;->a(Z)V

    .line 243
    :goto_1c3
    if-lez v4, :cond_1d9

    .line 244
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/a/f/m;->s()I

    move-result v2

    if-nez v2, :cond_1d7

    const/4 v2, 0x1

    :goto_1cc
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/a/f/b;->a(Z)V

    .line 245
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    .line 246
    add-int/lit8 v4, v4, -0x1

    goto :goto_1c3

    .line 241
    :cond_1d5
    const/4 v2, 0x0

    goto :goto_1c0

    .line 244
    :cond_1d7
    const/4 v2, 0x0

    goto :goto_1cc

    .line 251
    :cond_1d9
    if-nez v16, :cond_1e1

    if-nez v23, :cond_1e1

    if-nez v9, :cond_1e1

    if-eqz v11, :cond_22b

    .line 253
    :cond_1e1
    const-string v2, "AtomParsers"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/i;->f:I

    const/16 v4, 0xd7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Inconsistent stbl box for track "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": remainingSynchronizationSamples "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", remainingSamplesInChunk "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", remainingTimestampDeltaChanges "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22b
    move-object v7, v12

    move-object v6, v13

    move-object v4, v14

    move-object v3, v15

    move v5, v8

    .line 276
    :goto_230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/i;->m:[J

    if-nez v2, :cond_284

    .line 277
    const-wide/32 v8, 0xf4240

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/i;->h:J

    invoke-static {v6, v8, v9, v10, v11}, Lcom/google/ads/interactivemedia/v3/a/f/q;->a([JJJ)V

    .line 278
    new-instance v2, Lcom/google/ads/interactivemedia/v3/a/c/c/l;

    invoke-direct/range {v2 .. v7}, Lcom/google/ads/interactivemedia/v3/a/c/c/l;-><init>([J[II[J[I)V

    goto/16 :goto_27

    .line 260
    :cond_247
    move-object/from16 v0, v28

    iget v3, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$b;->a:I

    new-array v3, v3, [J

    .line 261
    move-object/from16 v0, v28

    iget v4, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$b;->a:I

    new-array v4, v4, [I

    .line 262
    :goto_253
    invoke-virtual/range {v28 .. v28}, Lcom/google/ads/interactivemedia/v3/a/c/c/b$b;->a()Z

    move-result v5

    if-eqz v5, :cond_26e

    .line 263
    move-object/from16 v0, v28

    iget v5, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$b;->b:I

    move-object/from16 v0, v28

    iget-wide v6, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$b;->d:J

    aput-wide v6, v3, v5

    .line 264
    move-object/from16 v0, v28

    iget v5, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$b;->b:I

    move-object/from16 v0, v28

    iget v6, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$b;->c:I

    aput v6, v4, v5

    goto :goto_253

    .line 266
    :cond_26e
    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/a/c/c/b$c;->b()I

    move-result v2

    .line 267
    move/from16 v0, v21

    int-to-long v6, v0

    invoke-static {v2, v3, v4, v6, v7}, Lcom/google/ads/interactivemedia/v3/a/c/c/d;->a(I[J[IJ)Lcom/google/ads/interactivemedia/v3/a/c/c/d$a;

    move-result-object v2

    .line 269
    iget-object v3, v2, Lcom/google/ads/interactivemedia/v3/a/c/c/d$a;->a:[J

    .line 270
    iget-object v4, v2, Lcom/google/ads/interactivemedia/v3/a/c/c/d$a;->b:[I

    .line 271
    iget v5, v2, Lcom/google/ads/interactivemedia/v3/a/c/c/d$a;->c:I

    .line 272
    iget-object v6, v2, Lcom/google/ads/interactivemedia/v3/a/c/c/d$a;->d:[J

    .line 273
    iget-object v7, v2, Lcom/google/ads/interactivemedia/v3/a/c/c/d$a;->e:[I

    goto :goto_230

    .line 286
    :cond_284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/i;->m:[J

    array-length v2, v2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_2be

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/i;->m:[J

    const/4 v8, 0x0

    aget-wide v8, v2, v8

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-nez v2, :cond_2be

    .line 290
    const/4 v2, 0x0

    :goto_29a
    array-length v8, v6

    if-ge v2, v8, :cond_2b7

    .line 291
    aget-wide v8, v6, v2

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/i;->n:[J

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    sub-long/2addr v8, v10

    const-wide/32 v10, 0xf4240

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/i;->h:J

    invoke-static/range {v8 .. v13}, Lcom/google/ads/interactivemedia/v3/a/f/q;->a(JJJ)J

    move-result-wide v8

    aput-wide v8, v6, v2

    .line 290
    add-int/lit8 v2, v2, 0x1

    goto :goto_29a

    .line 294
    :cond_2b7
    new-instance v2, Lcom/google/ads/interactivemedia/v3/a/c/c/l;

    invoke-direct/range {v2 .. v7}, Lcom/google/ads/interactivemedia/v3/a/c/c/l;-><init>([J[II[J[I)V

    goto/16 :goto_27

    .line 298
    :cond_2be
    const/4 v10, 0x0

    .line 299
    const/4 v9, 0x0

    .line 300
    const/4 v8, 0x0

    .line 301
    const/4 v2, 0x0

    move v14, v8

    move v15, v9

    move/from16 v16, v10

    :goto_2c6
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/i;->m:[J

    array-length v8, v8

    if-ge v2, v8, :cond_30c

    .line 302
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/i;->n:[J

    aget-wide v18, v8, v2

    .line 303
    const-wide/16 v8, -0x1

    cmp-long v8, v18, v8

    if-eqz v8, :cond_410

    .line 304
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/i;->m:[J

    aget-wide v8, v8, v2

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/i;->h:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/i;->i:J

    invoke-static/range {v8 .. v13}, Lcom/google/ads/interactivemedia/v3/a/f/q;->a(JJJ)J

    move-result-wide v8

    .line 306
    const/4 v10, 0x1

    const/4 v11, 0x1

    move-wide/from16 v0, v18

    invoke-static {v6, v0, v1, v10, v11}, Lcom/google/ads/interactivemedia/v3/a/f/q;->b([JJZZ)I

    move-result v11

    .line 307
    add-long v8, v8, v18

    const/4 v10, 0x1

    const/4 v12, 0x0

    invoke-static {v6, v8, v9, v10, v12}, Lcom/google/ads/interactivemedia/v3/a/f/q;->b([JJZZ)I

    move-result v9

    .line 308
    sub-int v8, v9, v11

    add-int v10, v16, v8

    .line 309
    if-eq v15, v11, :cond_30a

    const/4 v8, 0x1

    :goto_302
    or-int/2addr v8, v14

    .line 301
    :goto_303
    add-int/lit8 v2, v2, 0x1

    move v14, v8

    move v15, v9

    move/from16 v16, v10

    goto :goto_2c6

    .line 309
    :cond_30a
    const/4 v8, 0x0

    goto :goto_302

    .line 313
    :cond_30c
    move/from16 v0, v16

    move/from16 v1, v26

    if-eq v0, v1, :cond_3bf

    const/4 v2, 0x1

    :goto_313
    or-int v23, v14, v2

    .line 316
    if-eqz v23, :cond_3c2

    move/from16 v0, v16

    new-array v2, v0, [J

    move-object/from16 v22, v2

    .line 317
    :goto_31d
    if-eqz v23, :cond_3c6

    move/from16 v0, v16

    new-array v2, v0, [I

    move-object/from16 v21, v2

    .line 318
    :goto_325
    if-eqz v23, :cond_3ca

    const/4 v10, 0x0

    .line 319
    :goto_328
    if-eqz v23, :cond_3cd

    move/from16 v0, v16

    new-array v2, v0, [I

    move-object/from16 v17, v2

    .line 320
    :goto_330
    move/from16 v0, v16

    new-array v0, v0, [J

    move-object/from16 v24, v0

    .line 321
    const-wide/16 v8, 0x0

    .line 322
    const/4 v5, 0x0

    .line 323
    const/4 v2, 0x0

    move v14, v5

    move-wide/from16 v18, v8

    move v5, v10

    :goto_33e
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/i;->m:[J

    array-length v8, v8

    if-ge v2, v8, :cond_3de

    .line 324
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/i;->n:[J

    aget-wide v26, v8, v2

    .line 325
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/i;->m:[J

    aget-wide v8, v8, v2

    .line 326
    const-wide/16 v10, -0x1

    cmp-long v10, v26, v10

    if-eqz v10, :cond_40d

    .line 327
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/i;->h:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/i;->i:J

    invoke-static/range {v8 .. v13}, Lcom/google/ads/interactivemedia/v3/a/f/q;->a(JJJ)J

    move-result-wide v10

    add-long v12, v26, v10

    .line 329
    const/4 v10, 0x1

    const/4 v11, 0x1

    move-wide/from16 v0, v26

    invoke-static {v6, v0, v1, v10, v11}, Lcom/google/ads/interactivemedia/v3/a/f/q;->b([JJZZ)I

    move-result v10

    .line 330
    const/4 v11, 0x1

    const/4 v15, 0x0

    invoke-static {v6, v12, v13, v11, v15}, Lcom/google/ads/interactivemedia/v3/a/f/q;->b([JJZZ)I

    move-result v25

    .line 331
    if-eqz v23, :cond_386

    .line 332
    sub-int v11, v25, v10

    .line 333
    move-object/from16 v0, v22

    invoke-static {v3, v10, v0, v14, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 334
    move-object/from16 v0, v21

    invoke-static {v4, v10, v0, v14, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 335
    move-object/from16 v0, v17

    invoke-static {v7, v10, v0, v14, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_386
    move/from16 v20, v10

    move/from16 v16, v14

    .line 337
    :goto_38a
    move/from16 v0, v20

    move/from16 v1, v25

    if-ge v0, v1, :cond_3d1

    .line 338
    const-wide/32 v12, 0xf4240

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/i;->i:J

    move-wide/from16 v10, v18

    invoke-static/range {v10 .. v15}, Lcom/google/ads/interactivemedia/v3/a/f/q;->a(JJJ)J

    move-result-wide v28

    .line 339
    aget-wide v10, v6, v20

    sub-long v10, v10, v26

    const-wide/32 v12, 0xf4240

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/i;->h:J

    invoke-static/range {v10 .. v15}, Lcom/google/ads/interactivemedia/v3/a/f/q;->a(JJJ)J

    move-result-wide v10

    .line 341
    add-long v10, v10, v28

    aput-wide v10, v24, v16

    .line 342
    if-eqz v23, :cond_3b8

    aget v10, v21, v16

    if-le v10, v5, :cond_3b8

    .line 343
    aget v5, v4, v20

    .line 345
    :cond_3b8
    add-int/lit8 v16, v16, 0x1

    .line 337
    add-int/lit8 v10, v20, 0x1

    move/from16 v20, v10

    goto :goto_38a

    .line 313
    :cond_3bf
    const/4 v2, 0x0

    goto/16 :goto_313

    :cond_3c2
    move-object/from16 v22, v3

    .line 316
    goto/16 :goto_31d

    :cond_3c6
    move-object/from16 v21, v4

    .line 317
    goto/16 :goto_325

    :cond_3ca
    move v10, v5

    .line 318
    goto/16 :goto_328

    :cond_3cd
    move-object/from16 v17, v7

    .line 319
    goto/16 :goto_330

    :cond_3d1
    move v10, v5

    move/from16 v5, v16

    .line 348
    :goto_3d4
    add-long v8, v8, v18

    .line 323
    add-int/lit8 v2, v2, 0x1

    move v14, v5

    move-wide/from16 v18, v8

    move v5, v10

    goto/16 :goto_33e

    .line 351
    :cond_3de
    const/4 v3, 0x0

    .line 352
    const/4 v2, 0x0

    :goto_3e0
    move-object/from16 v0, v17

    array-length v4, v0

    if-ge v2, v4, :cond_3f4

    if-nez v3, :cond_3f4

    .line 353
    aget v4, v17, v2

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3f2

    const/4 v4, 0x1

    :goto_3ee
    or-int/2addr v3, v4

    .line 352
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e0

    .line 353
    :cond_3f2
    const/4 v4, 0x0

    goto :goto_3ee

    .line 355
    :cond_3f4
    if-nez v3, :cond_3fe

    .line 356
    new-instance v2, Lcom/google/ads/interactivemedia/v3/a/r;

    const-string v3, "The edited sample sequence does not contain a sync sample."

    invoke-direct {v2, v3}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v2

    .line 359
    :cond_3fe
    new-instance v2, Lcom/google/ads/interactivemedia/v3/a/c/c/l;

    move-object/from16 v3, v22

    move-object/from16 v4, v21

    move-object/from16 v6, v24

    move-object/from16 v7, v17

    invoke-direct/range {v2 .. v7}, Lcom/google/ads/interactivemedia/v3/a/c/c/l;-><init>([J[II[J[I)V

    goto/16 :goto_27

    :cond_40d
    move v10, v5

    move v5, v14

    goto :goto_3d4

    :cond_410
    move v8, v14

    move v9, v15

    move/from16 v10, v16

    goto/16 :goto_303

    :cond_416
    move/from16 v32, v10

    move v10, v9

    move/from16 v9, v32

    goto/16 :goto_1a3

    :cond_41d
    move/from16 v16, v9

    goto/16 :goto_18e

    :cond_421
    move/from16 v32, v4

    move v4, v6

    move-object v6, v3

    move/from16 v3, v32

    goto/16 :goto_cc
.end method

.method public static a(Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;Z)Lcom/google/ads/interactivemedia/v3/a/c/i;
    .registers 8

    .prologue
    const/4 v0, 0x0

    const/16 v5, 0x8

    .line 371
    if-eqz p1, :cond_6

    .line 389
    :cond_5
    :goto_5
    return-object v0

    .line 376
    :cond_6
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;->aN:Lcom/google/ads/interactivemedia/v3/a/f/m;

    .line 377
    invoke-virtual {v1, v5}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 378
    :goto_b
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b()I

    move-result v2

    if-lt v2, v5, :cond_5

    .line 379
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v2

    .line 380
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v3

    .line 381
    sget v4, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->az:I

    if-ne v3, v4, :cond_33

    .line 382
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 383
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b(I)V

    .line 384
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/a/c/c/b;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;)Lcom/google/ads/interactivemedia/v3/a/c/i;

    move-result-object v0

    goto :goto_5

    .line 386
    :cond_33
    add-int/lit8 v2, v2, -0x8

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    goto :goto_b
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/a/f/m;)Lcom/google/ads/interactivemedia/v3/a/c/i;
    .registers 5

    .prologue
    .line 393
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 394
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;-><init>()V

    .line 395
    :goto_a
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b()I

    move-result v0

    const/16 v2, 0x8

    if-lt v0, v2, :cond_3c

    .line 396
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v0

    add-int/lit8 v2, v0, -0x8

    .line 397
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v0

    .line 398
    sget v3, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->aA:I

    if-ne v0, v3, :cond_38

    .line 399
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v0, v3}, Lcom/google/ads/interactivemedia/v3/a/f/m;->a([BI)V

    .line 400
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 401
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/a/c/c/b;->b(Lcom/google/ads/interactivemedia/v3/a/f/m;)Lcom/google/ads/interactivemedia/v3/a/c/i;

    move-result-object v0

    .line 402
    if-eqz v0, :cond_38

    .line 408
    :goto_37
    return-object v0

    .line 406
    :cond_38
    invoke-virtual {p0, v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    goto :goto_a

    .line 408
    :cond_3c
    const/4 v0, 0x0

    goto :goto_37
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/a/f/m;IIIIJILcom/google/ads/interactivemedia/v3/a/c/c/b$d;I)V
    .registers 29

    .prologue
    .line 611
    add-int/lit8 v6, p2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 613
    const/16 v6, 0x18

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 614
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->g()I

    move-result v12

    .line 615
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->g()I

    move-result v13

    .line 616
    const/4 v9, 0x0

    .line 617
    const/high16 v16, 0x3f800000

    .line 618
    const/16 v6, 0x32

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 620
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d()I

    move-result v6

    .line 621
    sget v7, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->Y:I

    move/from16 v0, p1

    if-ne v0, v7, :cond_3c

    .line 622
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p8

    move/from16 v4, p9

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/a/c/c/b;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;IILcom/google/ads/interactivemedia/v3/a/c/c/b$d;I)I

    .line 623
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 626
    :cond_3c
    const/4 v14, 0x0

    .line 627
    const/4 v7, 0x0

    .line 628
    const/16 v17, 0x0

    .line 629
    const/16 v18, -0x1

    move v10, v6

    .line 630
    :goto_43
    sub-int v6, v10, p2

    move/from16 v0, p3

    if-ge v6, v0, :cond_62

    .line 631
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 632
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d()I

    move-result v11

    .line 633
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v15

    .line 634
    if-nez v15, :cond_65

    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d()I

    move-result v6

    sub-int v6, v6, p2

    move/from16 v0, p3

    if-ne v6, v0, :cond_65

    .line 696
    :cond_62
    if-nez v7, :cond_155

    .line 703
    :goto_64
    return-void

    .line 638
    :cond_65
    if-lez v15, :cond_98

    const/4 v6, 0x1

    :goto_68
    const-string v8, "childAtomSize should be positive"

    invoke-static {v6, v8}, Lcom/google/ads/interactivemedia/v3/a/f/b;->a(ZLjava/lang/Object;)V

    .line 639
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v6

    .line 640
    sget v8, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->G:I

    if-ne v6, v8, :cond_9c

    .line 641
    if-nez v7, :cond_9a

    const/4 v6, 0x1

    :goto_78
    invoke-static {v6}, Lcom/google/ads/interactivemedia/v3/a/f/b;->b(Z)V

    .line 642
    const-string/jumbo v7, "video/avc"

    .line 643
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/google/ads/interactivemedia/v3/a/c/c/b;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;I)Lcom/google/ads/interactivemedia/v3/a/c/c/b$a;

    move-result-object v6

    .line 644
    iget-object v14, v6, Lcom/google/ads/interactivemedia/v3/a/c/c/b$a;->a:Ljava/util/List;

    .line 645
    iget v8, v6, Lcom/google/ads/interactivemedia/v3/a/c/c/b$a;->b:I

    move-object/from16 v0, p8

    iput v8, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$d;->c:I

    .line 646
    if-nez v9, :cond_92

    .line 647
    iget v0, v6, Lcom/google/ads/interactivemedia/v3/a/c/c/b$a;->c:F

    move/from16 v16, v0

    :cond_92
    move v6, v9

    .line 692
    :goto_93
    add-int v8, v10, v15

    move v10, v8

    move v9, v6

    .line 693
    goto :goto_43

    .line 638
    :cond_98
    const/4 v6, 0x0

    goto :goto_68

    .line 641
    :cond_9a
    const/4 v6, 0x0

    goto :goto_78

    .line 649
    :cond_9c
    sget v8, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->H:I

    if-ne v6, v8, :cond_c5

    .line 650
    if-nez v7, :cond_c3

    const/4 v6, 0x1

    :goto_a3
    invoke-static {v6}, Lcom/google/ads/interactivemedia/v3/a/f/b;->b(Z)V

    .line 651
    const-string/jumbo v8, "video/hevc"

    .line 652
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/google/ads/interactivemedia/v3/a/c/c/b;->b(Lcom/google/ads/interactivemedia/v3/a/f/m;I)Landroid/util/Pair;

    move-result-object v7

    .line 653
    iget-object v6, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    .line 654
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object/from16 v0, p8

    iput v7, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$d;->c:I

    move-object v7, v8

    move-object v14, v6

    move v6, v9

    .line 655
    goto :goto_93

    .line 650
    :cond_c3
    const/4 v6, 0x0

    goto :goto_a3

    .line 655
    :cond_c5
    sget v8, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->g:I

    if-ne v6, v8, :cond_d6

    .line 656
    if-nez v7, :cond_d4

    const/4 v6, 0x1

    :goto_cc
    invoke-static {v6}, Lcom/google/ads/interactivemedia/v3/a/f/b;->b(Z)V

    .line 657
    const-string/jumbo v7, "video/3gpp"

    move v6, v9

    goto :goto_93

    .line 656
    :cond_d4
    const/4 v6, 0x0

    goto :goto_cc

    .line 658
    :cond_d6
    sget v8, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->I:I

    if-ne v6, v8, :cond_f7

    .line 659
    if-nez v7, :cond_f5

    const/4 v6, 0x1

    :goto_dd
    invoke-static {v6}, Lcom/google/ads/interactivemedia/v3/a/f/b;->b(Z)V

    .line 661
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/google/ads/interactivemedia/v3/a/c/c/b;->d(Lcom/google/ads/interactivemedia/v3/a/f/m;I)Landroid/util/Pair;

    move-result-object v7

    .line 662
    iget-object v6, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 663
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, [B

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    move-object v7, v6

    move v6, v9

    .line 664
    goto :goto_93

    .line 659
    :cond_f5
    const/4 v6, 0x0

    goto :goto_dd

    .line 664
    :cond_f7
    sget v8, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->ah:I

    if-ne v6, v8, :cond_103

    .line 665
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/google/ads/interactivemedia/v3/a/c/c/b;->c(Lcom/google/ads/interactivemedia/v3/a/f/m;I)F

    move-result v16

    .line 666
    const/4 v6, 0x1

    goto :goto_93

    .line 667
    :cond_103
    sget v8, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->aK:I

    if-ne v6, v8, :cond_11f

    .line 668
    if-nez v7, :cond_119

    const/4 v6, 0x1

    :goto_10a
    invoke-static {v6}, Lcom/google/ads/interactivemedia/v3/a/f/b;->b(Z)V

    .line 669
    sget v6, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->aI:I

    move/from16 v0, p1

    if-ne v0, v6, :cond_11b

    const-string/jumbo v7, "video/x-vnd.on2.vp8"

    :goto_116
    move v6, v9

    goto/16 :goto_93

    .line 668
    :cond_119
    const/4 v6, 0x0

    goto :goto_10a

    .line 669
    :cond_11b
    const-string/jumbo v7, "video/x-vnd.on2.vp9"

    goto :goto_116

    .line 670
    :cond_11f
    sget v8, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->aG:I

    if-ne v6, v8, :cond_12c

    .line 671
    move-object/from16 v0, p0

    invoke-static {v0, v11, v15}, Lcom/google/ads/interactivemedia/v3/a/c/c/b;->d(Lcom/google/ads/interactivemedia/v3/a/f/m;II)[B

    move-result-object v17

    move v6, v9

    goto/16 :goto_93

    .line 672
    :cond_12c
    sget v8, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->aF:I

    if-ne v6, v8, :cond_143

    .line 673
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v6

    .line 674
    const/4 v8, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 675
    if-nez v6, :cond_143

    .line 676
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v6

    .line 677
    packed-switch v6, :pswitch_data_16a

    :cond_143
    move v6, v9

    goto/16 :goto_93

    .line 679
    :pswitch_146
    const/16 v18, 0x0

    move v6, v9

    .line 680
    goto/16 :goto_93

    .line 682
    :pswitch_14b
    const/16 v18, 0x1

    move v6, v9

    .line 683
    goto/16 :goto_93

    .line 685
    :pswitch_150
    const/16 v18, 0x2

    move v6, v9

    .line 686
    goto/16 :goto_93

    .line 700
    :cond_155
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, -0x1

    const/4 v9, -0x1

    move-wide/from16 v10, p5

    move/from16 v15, p7

    invoke-static/range {v6 .. v18}, Lcom/google/ads/interactivemedia/v3/a/p;->a(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;IF[BI)Lcom/google/ads/interactivemedia/v3/a/p;

    move-result-object v6

    move-object/from16 v0, p8

    iput-object v6, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$d;->b:Lcom/google/ads/interactivemedia/v3/a/p;

    goto/16 :goto_64

    .line 677
    nop

    :pswitch_data_16a
    .packed-switch 0x0
        :pswitch_146
        :pswitch_14b
        :pswitch_150
    .end packed-switch
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/a/f/m;IIIIJLjava/lang/String;ZLcom/google/ads/interactivemedia/v3/a/c/c/b$d;I)V
    .registers 30

    .prologue
    .line 819
    add-int/lit8 v6, p2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 821
    const/4 v6, 0x0

    .line 822
    if-eqz p8, :cond_c7

    .line 823
    const/16 v6, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 824
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->g()I

    move-result v6

    .line 825
    const/4 v7, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    move v8, v6

    .line 833
    :goto_1c
    if-eqz v8, :cond_21

    const/4 v6, 0x1

    if-ne v8, v6, :cond_d1

    .line 834
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->g()I

    move-result v7

    .line 835
    const/4 v6, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 836
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->q()I

    move-result v6

    .line 838
    const/4 v9, 0x1

    if-ne v8, v9, :cond_39

    .line 839
    const/16 v8, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 855
    :cond_39
    :goto_39
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d()I

    move-result v16

    .line 856
    sget v8, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->Z:I

    move/from16 v0, p1

    if-ne v0, v8, :cond_58

    .line 857
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p9

    move/from16 v4, p10

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/a/c/c/b;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;IILcom/google/ads/interactivemedia/v3/a/c/c/b$d;I)I

    move-result p1

    .line 858
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 862
    :cond_58
    const/4 v8, 0x0

    .line 863
    sget v9, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->m:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_f1

    .line 864
    const-string v8, "audio/ac3"

    .line 881
    :cond_61
    :goto_61
    const/16 v17, 0x0

    move v13, v6

    move v12, v7

    move-object v7, v8

    .line 882
    :goto_66
    sub-int v6, v16, p2

    move/from16 v0, p3

    if-ge v6, v0, :cond_1a9

    .line 883
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 884
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v18

    .line 885
    if-lez v18, :cond_143

    const/4 v6, 0x1

    :goto_7a
    const-string v8, "childAtomSize should be positive"

    invoke-static {v6, v8}, Lcom/google/ads/interactivemedia/v3/a/f/b;->a(ZLjava/lang/Object;)V

    .line 886
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v6

    .line 887
    sget v8, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->I:I

    if-eq v6, v8, :cond_8d

    if-eqz p8, :cond_152

    sget v8, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->j:I

    if-ne v6, v8, :cond_152

    .line 888
    :cond_8d
    sget v8, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->I:I

    if-ne v6, v8, :cond_146

    move/from16 v6, v16

    .line 890
    :goto_93
    const/4 v8, -0x1

    if-eq v6, v8, :cond_1d9

    .line 892
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/google/ads/interactivemedia/v3/a/c/c/b;->d(Lcom/google/ads/interactivemedia/v3/a/f/m;I)Landroid/util/Pair;

    move-result-object v8

    .line 893
    iget-object v6, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    .line 894
    iget-object v6, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v8, v6

    check-cast v8, [B

    .line 895
    const-string v6, "audio/mp4a-latm"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c2

    .line 899
    invoke-static {v8}, Lcom/google/ads/interactivemedia/v3/a/f/c;->a([B)Landroid/util/Pair;

    move-result-object v9

    .line 900
    iget-object v6, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 901
    iget-object v6, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v12

    :cond_c2
    :goto_c2
    move-object/from16 v17, v8

    .line 917
    :cond_c4
    :goto_c4
    add-int v16, v16, v18

    .line 918
    goto :goto_66

    .line 827
    :cond_c7
    const/16 v7, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    move v8, v6

    goto/16 :goto_1c

    .line 841
    :cond_d1
    const/4 v6, 0x2

    if-ne v8, v6, :cond_1d0

    .line 842
    const/16 v6, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 844
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->v()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    .line 845
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->s()I

    move-result v7

    .line 849
    const/16 v8, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    goto/16 :goto_39

    .line 865
    :cond_f1
    sget v9, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->o:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_fb

    .line 866
    const-string v8, "audio/eac3"

    goto/16 :goto_61

    .line 867
    :cond_fb
    sget v9, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->q:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_105

    .line 868
    const-string v8, "audio/vnd.dts"

    goto/16 :goto_61

    .line 869
    :cond_105
    sget v9, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->r:I

    move/from16 v0, p1

    if-eq v0, v9, :cond_111

    sget v9, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->s:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_115

    .line 870
    :cond_111
    const-string v8, "audio/vnd.dts.hd"

    goto/16 :goto_61

    .line 871
    :cond_115
    sget v9, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->t:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_11f

    .line 872
    const-string v8, "audio/vnd.dts.hd;profile=lbr"

    goto/16 :goto_61

    .line 873
    :cond_11f
    sget v9, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->aw:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_129

    .line 874
    const-string v8, "audio/3gpp"

    goto/16 :goto_61

    .line 875
    :cond_129
    sget v9, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->ax:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_133

    .line 876
    const-string v8, "audio/amr-wb"

    goto/16 :goto_61

    .line 877
    :cond_133
    sget v9, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->k:I

    move/from16 v0, p1

    if-eq v0, v9, :cond_13f

    sget v9, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->l:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_61

    .line 878
    :cond_13f
    const-string v8, "audio/raw"

    goto/16 :goto_61

    .line 885
    :cond_143
    const/4 v6, 0x0

    goto/16 :goto_7a

    .line 889
    :cond_146
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/a/c/c/b;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;II)I

    move-result v6

    goto/16 :goto_93

    .line 904
    :cond_152
    sget v8, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->n:I

    if-ne v6, v8, :cond_171

    .line 905
    add-int/lit8 v6, v16, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 906
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-object/from16 v3, p7

    invoke-static {v0, v6, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/a/f/a;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;Ljava/lang/String;JLjava/lang/String;)Lcom/google/ads/interactivemedia/v3/a/p;

    move-result-object v6

    move-object/from16 v0, p9

    iput-object v6, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$d;->b:Lcom/google/ads/interactivemedia/v3/a/p;

    goto/16 :goto_c4

    .line 908
    :cond_171
    sget v8, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->p:I

    if-ne v6, v8, :cond_190

    .line 909
    add-int/lit8 v6, v16, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 910
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-object/from16 v3, p7

    invoke-static {v0, v6, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/a/f/a;->b(Lcom/google/ads/interactivemedia/v3/a/f/m;Ljava/lang/String;JLjava/lang/String;)Lcom/google/ads/interactivemedia/v3/a/p;

    move-result-object v6

    move-object/from16 v0, p9

    iput-object v6, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$d;->b:Lcom/google/ads/interactivemedia/v3/a/p;

    goto/16 :goto_c4

    .line 912
    :cond_190
    sget v8, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->u:I

    if-ne v6, v8, :cond_c4

    .line 913
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v14, 0x0

    move-wide/from16 v10, p5

    move-object/from16 v15, p7

    invoke-static/range {v6 .. v15}, Lcom/google/ads/interactivemedia/v3/a/p;->a(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/a/p;

    move-result-object v6

    move-object/from16 v0, p9

    iput-object v6, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$d;->b:Lcom/google/ads/interactivemedia/v3/a/p;

    goto/16 :goto_c4

    .line 920
    :cond_1a9
    move-object/from16 v0, p9

    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$d;->b:Lcom/google/ads/interactivemedia/v3/a/p;

    if-nez v6, :cond_1d0

    if-eqz v7, :cond_1d0

    .line 922
    const-string v6, "audio/raw"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d1

    const/16 v16, 0x2

    .line 924
    :goto_1bb
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, -0x1

    const/4 v9, -0x1

    if-nez v17, :cond_1d4

    .line 926
    const/4 v14, 0x0

    :goto_1c4
    move-wide/from16 v10, p5

    move-object/from16 v15, p7

    .line 924
    invoke-static/range {v6 .. v16}, Lcom/google/ads/interactivemedia/v3/a/p;->a(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;I)Lcom/google/ads/interactivemedia/v3/a/p;

    move-result-object v6

    move-object/from16 v0, p9

    iput-object v6, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$d;->b:Lcom/google/ads/interactivemedia/v3/a/p;

    .line 929
    :cond_1d0
    return-void

    .line 923
    :cond_1d1
    const/16 v16, -0x1

    goto :goto_1bb

    .line 926
    :cond_1d4
    invoke-static/range {v17 .. v17}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    goto :goto_1c4

    :cond_1d9
    move-object/from16 v8, v17

    goto/16 :goto_c2
.end method

.method private static b(Lcom/google/ads/interactivemedia/v3/a/f/m;I)Landroid/util/Pair;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/a/f/m;",
            "I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v1, 0x0

    .line 737
    add-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, 0x15

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 738
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v0

    and-int/lit8 v5, v0, 0x3

    .line 741
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v6

    .line 743
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d()I

    move-result v7

    move v3, v1

    move v4, v1

    .line 744
    :goto_19
    if-ge v3, v6, :cond_38

    .line 745
    invoke-virtual {p0, v12}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 746
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->g()I

    move-result v8

    move v0, v1

    move v2, v4

    .line 747
    :goto_24
    if-ge v0, v8, :cond_33

    .line 748
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->g()I

    move-result v4

    .line 749
    add-int/lit8 v9, v4, 0x4

    add-int/2addr v2, v9

    .line 750
    invoke-virtual {p0, v4}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 747
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 744
    :cond_33
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v4, v2

    goto :goto_19

    .line 755
    :cond_38
    invoke-virtual {p0, v7}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 756
    new-array v7, v4, [B

    move v3, v1

    move v0, v1

    .line 758
    :goto_3f
    if-ge v3, v6, :cond_71

    .line 759
    invoke-virtual {p0, v12}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 760
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->g()I

    move-result v8

    move v2, v0

    move v0, v1

    .line 761
    :goto_4a
    if-ge v0, v8, :cond_6c

    .line 762
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->g()I

    move-result v9

    .line 763
    sget-object v10, Lcom/google/ads/interactivemedia/v3/a/f/k;->a:[B

    sget-object v11, Lcom/google/ads/interactivemedia/v3/a/f/k;->a:[B

    array-length v11, v11

    invoke-static {v10, v1, v7, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 765
    sget-object v10, Lcom/google/ads/interactivemedia/v3/a/f/k;->a:[B

    array-length v10, v10

    add-int/2addr v2, v10

    .line 766
    iget-object v10, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d()I

    move-result v11

    invoke-static {v10, v11, v7, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 767
    add-int/2addr v2, v9

    .line 768
    invoke-virtual {p0, v9}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 761
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    .line 758
    :cond_6c
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v2

    goto :goto_3f

    .line 772
    :cond_71
    if-nez v4, :cond_7f

    const/4 v0, 0x0

    .line 773
    :goto_74
    add-int/lit8 v1, v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 772
    :cond_7f
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_74
.end method

.method private static b(Lcom/google/ads/interactivemedia/v3/a/f/m;II)Landroid/util/Pair;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/a/f/m;",
            "II)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/ads/interactivemedia/v3/a/c/c/j;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1053
    add-int/lit8 v0, p1, 0x8

    move-object v1, v5

    move v2, v4

    move v6, v0

    move-object v0, v5

    .line 1058
    :goto_9
    sub-int v7, v6, p1

    if-ge v7, p2, :cond_43

    .line 1059
    invoke-virtual {p0, v6}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 1060
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v7

    .line 1061
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v8

    .line 1062
    sget v9, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->aa:I

    if-ne v8, v9, :cond_26

    .line 1063
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1070
    :cond_24
    :goto_24
    add-int/2addr v6, v7

    .line 1071
    goto :goto_9

    .line 1064
    :cond_26
    sget v9, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->V:I

    if-ne v8, v9, :cond_3a

    .line 1065
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 1066
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v2

    sget v8, Lcom/google/ads/interactivemedia/v3/a/c/c/b;->a:I

    if-ne v2, v8, :cond_38

    move v2, v3

    goto :goto_24

    :cond_38
    move v2, v4

    goto :goto_24

    .line 1067
    :cond_3a
    sget v9, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->W:I

    if-ne v8, v9, :cond_24

    .line 1068
    invoke-static {p0, v6, v7}, Lcom/google/ads/interactivemedia/v3/a/c/c/b;->c(Lcom/google/ads/interactivemedia/v3/a/f/m;II)Lcom/google/ads/interactivemedia/v3/a/c/c/j;

    move-result-object v1

    goto :goto_24

    .line 1073
    :cond_43
    if-eqz v2, :cond_5d

    .line 1074
    if-eqz v0, :cond_59

    move v2, v3

    :goto_48
    const-string v5, "frma atom is mandatory"

    invoke-static {v2, v5}, Lcom/google/ads/interactivemedia/v3/a/f/b;->a(ZLjava/lang/Object;)V

    .line 1075
    if-eqz v1, :cond_5b

    :goto_4f
    const-string v2, "schi->tenc atom is mandatory"

    invoke-static {v3, v2}, Lcom/google/ads/interactivemedia/v3/a/f/b;->a(ZLjava/lang/Object;)V

    .line 1076
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 1078
    :goto_58
    return-object v0

    :cond_59
    move v2, v4

    .line 1074
    goto :goto_48

    :cond_5b
    move v3, v4

    .line 1075
    goto :goto_4f

    :cond_5d
    move-object v0, v5

    .line 1078
    goto :goto_58
.end method

.method private static b(Lcom/google/ads/interactivemedia/v3/a/f/m;)Lcom/google/ads/interactivemedia/v3/a/c/i;
    .registers 10

    .prologue
    const/4 v8, 0x4

    const/4 v3, 0x0

    .line 412
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b()I

    move-result v0

    if-lez v0, :cond_64

    .line 413
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d()I

    move-result v0

    .line 414
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v1

    add-int v4, v0, v1

    .line 415
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v0

    .line 416
    sget v1, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->aL:I

    if-ne v0, v1, :cond_65

    move-object v0, v3

    move-object v1, v3

    move-object v2, v3

    .line 420
    :goto_1d
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d()I

    move-result v5

    if-ge v5, v4, :cond_54

    .line 421
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v5

    add-int/lit8 v5, v5, -0xc

    .line 422
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v6

    .line 423
    invoke-virtual {p0, v8}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 424
    sget v7, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->aB:I

    if-ne v6, v7, :cond_39

    .line 425
    invoke-virtual {p0, v5}, Lcom/google/ads/interactivemedia/v3/a/f/m;->e(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1d

    .line 426
    :cond_39
    sget v7, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->aC:I

    if-ne v6, v7, :cond_42

    .line 427
    invoke-virtual {p0, v5}, Lcom/google/ads/interactivemedia/v3/a/f/m;->e(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1d

    .line 428
    :cond_42
    sget v7, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->aD:I

    if-ne v6, v7, :cond_50

    .line 429
    invoke-virtual {p0, v8}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 430
    add-int/lit8 v0, v5, -0x4

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->e(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    .line 432
    :cond_50
    invoke-virtual {p0, v5}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    goto :goto_1d

    .line 435
    :cond_54
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    const-string v4, "com.apple.iTunes"

    .line 436
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 437
    invoke-static {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/c/i;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/a/c/i;

    move-result-object v3

    .line 443
    :cond_64
    return-object v3

    .line 440
    :cond_65
    invoke-virtual {p0, v4}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    goto :goto_2
.end method

.method private static c(Lcom/google/ads/interactivemedia/v3/a/f/m;I)F
    .registers 4

    .prologue
    .line 810
    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 811
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->s()I

    move-result v0

    .line 812
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->s()I

    move-result v1

    .line 813
    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private static c(Lcom/google/ads/interactivemedia/v3/a/f/m;)J
    .registers 3

    .prologue
    const/16 v0, 0x8

    .line 453
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 455
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v1

    .line 456
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->a(I)I

    move-result v1

    .line 458
    if-nez v1, :cond_17

    :goto_f
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 460
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->k()J

    move-result-wide v0

    return-wide v0

    .line 458
    :cond_17
    const/16 v0, 0x10

    goto :goto_f
.end method

.method private static c(Lcom/google/ads/interactivemedia/v3/a/f/m;II)Lcom/google/ads/interactivemedia/v3/a/c/c/j;
    .registers 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1084
    add-int/lit8 v2, p1, 0x8

    .line 1085
    :goto_4
    sub-int v3, v2, p1

    if-ge v3, p2, :cond_38

    .line 1086
    invoke-virtual {p0, v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 1087
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v3

    .line 1088
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v4

    .line 1089
    sget v5, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->X:I

    if-ne v4, v5, :cond_36

    .line 1090
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 1091
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v2

    if-ne v2, v0, :cond_34

    .line 1092
    :goto_21
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v2

    .line 1093
    const/16 v3, 0x10

    new-array v3, v3, [B

    .line 1094
    array-length v4, v3

    invoke-virtual {p0, v3, v1, v4}, Lcom/google/ads/interactivemedia/v3/a/f/m;->a([BII)V

    .line 1095
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/c/c/j;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/a/c/c/j;-><init>(ZI[B)V

    move-object v0, v1

    .line 1099
    :goto_33
    return-object v0

    :cond_34
    move v0, v1

    .line 1091
    goto :goto_21

    .line 1097
    :cond_36
    add-int/2addr v2, v3

    .line 1098
    goto :goto_4

    .line 1099
    :cond_38
    const/4 v0, 0x0

    goto :goto_33
.end method

.method private static d(Lcom/google/ads/interactivemedia/v3/a/f/m;I)Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/a/f/m;",
            "I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 953
    add-int/lit8 v1, p1, 0x8

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 955
    invoke-virtual {p0, v3}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 956
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/a/c/c/b;->g(Lcom/google/ads/interactivemedia/v3/a/f/m;)I

    .line 957
    invoke-virtual {p0, v4}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 959
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v1

    .line 960
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_1e

    .line 961
    invoke-virtual {p0, v4}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 963
    :cond_1e
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_29

    .line 964
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->g()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 966
    :cond_29
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_30

    .line 967
    invoke-virtual {p0, v4}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 971
    :cond_30
    invoke-virtual {p0, v3}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 972
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/a/c/c/b;->g(Lcom/google/ads/interactivemedia/v3/a/f/m;)I

    .line 975
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v1

    .line 977
    sparse-switch v1, :sswitch_data_7e

    .line 1015
    :goto_3d
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 1018
    invoke-virtual {p0, v3}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 1019
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/a/c/c/b;->g(Lcom/google/ads/interactivemedia/v3/a/f/m;)I

    move-result v1

    .line 1020
    new-array v2, v1, [B

    .line 1021
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->a([BII)V

    .line 1022
    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    :goto_53
    return-object v0

    .line 979
    :sswitch_54
    const-string v1, "audio/mpeg"

    .line 980
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_53

    .line 982
    :sswitch_5b
    const-string/jumbo v0, "video/mp4v-es"

    goto :goto_3d

    .line 985
    :sswitch_5f
    const-string/jumbo v0, "video/avc"

    goto :goto_3d

    .line 988
    :sswitch_63
    const-string/jumbo v0, "video/hevc"

    goto :goto_3d

    .line 994
    :sswitch_67
    const-string v0, "audio/mp4a-latm"

    goto :goto_3d

    .line 997
    :sswitch_6a
    const-string v0, "audio/ac3"

    goto :goto_3d

    .line 1000
    :sswitch_6d
    const-string v0, "audio/eac3"

    goto :goto_3d

    .line 1004
    :sswitch_70
    const-string v1, "audio/vnd.dts"

    .line 1005
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_53

    .line 1008
    :sswitch_77
    const-string v1, "audio/vnd.dts.hd"

    .line 1009
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_53

    .line 977
    :sswitch_data_7e
    .sparse-switch
        0x20 -> :sswitch_5b
        0x21 -> :sswitch_5f
        0x23 -> :sswitch_63
        0x40 -> :sswitch_67
        0x66 -> :sswitch_67
        0x67 -> :sswitch_67
        0x68 -> :sswitch_67
        0x6b -> :sswitch_54
        0xa5 -> :sswitch_6a
        0xa6 -> :sswitch_6d
        0xa9 -> :sswitch_70
        0xaa -> :sswitch_77
        0xab -> :sswitch_77
        0xac -> :sswitch_70
    .end sparse-switch
.end method

.method private static d(Lcom/google/ads/interactivemedia/v3/a/f/m;)Lcom/google/ads/interactivemedia/v3/a/c/c/b$g;
    .registers 14

    .prologue
    const-wide/16 v4, -0x1

    const/16 v2, 0x10

    const/16 v1, 0x8

    const/4 v3, 0x4

    const/4 v6, 0x0

    .line 469
    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 470
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v0

    .line 471
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->a(I)I

    move-result v8

    .line 473
    if-nez v8, :cond_64

    move v0, v1

    :goto_16
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 474
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v9

    .line 476
    invoke-virtual {p0, v3}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 477
    const/4 v0, 0x1

    .line 478
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d()I

    move-result v10

    .line 479
    if-nez v8, :cond_28

    move v1, v3

    :cond_28
    move v7, v6

    .line 480
    :goto_29
    if-ge v7, v1, :cond_35

    .line 481
    iget-object v11, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    add-int v12, v10, v7

    aget-byte v11, v11, v12

    const/4 v12, -0x1

    if-eq v11, v12, :cond_66

    move v0, v6

    .line 487
    :cond_35
    if-eqz v0, :cond_69

    .line 488
    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    move-wide v0, v4

    .line 499
    :cond_3b
    :goto_3b
    invoke-virtual {p0, v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 500
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v2

    .line 501
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v4

    .line 502
    invoke-virtual {p0, v3}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 503
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v3

    .line 504
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v5

    .line 507
    const/high16 v7, 0x10000

    .line 508
    if-nez v2, :cond_7c

    if-ne v4, v7, :cond_7c

    neg-int v8, v7

    if-ne v3, v8, :cond_7c

    if-nez v5, :cond_7c

    .line 509
    const/16 v2, 0x5a

    .line 519
    :goto_5e
    new-instance v3, Lcom/google/ads/interactivemedia/v3/a/c/c/b$g;

    invoke-direct {v3, v9, v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/a/c/c/b$g;-><init>(IJI)V

    return-object v3

    :cond_64
    move v0, v2

    .line 473
    goto :goto_16

    .line 480
    :cond_66
    add-int/lit8 v7, v7, 0x1

    goto :goto_29

    .line 491
    :cond_69
    if-nez v8, :cond_77

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->k()J

    move-result-wide v0

    .line 492
    :goto_6f
    const-wide/16 v10, 0x0

    cmp-long v7, v0, v10

    if-nez v7, :cond_3b

    move-wide v0, v4

    .line 495
    goto :goto_3b

    .line 491
    :cond_77
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->u()J

    move-result-wide v0

    goto :goto_6f

    .line 510
    :cond_7c
    if-nez v2, :cond_88

    neg-int v8, v7

    if-ne v4, v8, :cond_88

    if-ne v3, v7, :cond_88

    if-nez v5, :cond_88

    .line 511
    const/16 v2, 0x10e

    goto :goto_5e

    .line 512
    :cond_88
    neg-int v8, v7

    if-ne v2, v8, :cond_95

    if-nez v4, :cond_95

    if-nez v3, :cond_95

    neg-int v2, v7

    if-ne v5, v2, :cond_95

    .line 513
    const/16 v2, 0xb4

    goto :goto_5e

    :cond_95
    move v2, v6

    .line 516
    goto :goto_5e
.end method

.method private static d(Lcom/google/ads/interactivemedia/v3/a/f/m;II)[B
    .registers 7

    .prologue
    .line 1105
    add-int/lit8 v0, p1, 0x8

    .line 1106
    :goto_2
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_1f

    .line 1107
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 1108
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v1

    .line 1109
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v2

    .line 1110
    sget v3, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->aH:I

    if-ne v2, v3, :cond_1d

    .line 1111
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    add-int/2addr v1, v0

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 1115
    :goto_1c
    return-object v0

    .line 1113
    :cond_1d
    add-int/2addr v0, v1

    .line 1114
    goto :goto_2

    .line 1115
    :cond_1f
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method private static e(Lcom/google/ads/interactivemedia/v3/a/f/m;)I
    .registers 2

    .prologue
    .line 529
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 530
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v0

    return v0
.end method

.method private static f(Lcom/google/ads/interactivemedia/v3/a/f/m;)Landroid/util/Pair;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/a/f/m;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    .line 541
    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 542
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v0

    .line 543
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->a(I)I

    move-result v2

    .line 544
    if-nez v2, :cond_53

    move v0, v1

    :goto_10
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 545
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->k()J

    move-result-wide v4

    .line 546
    if-nez v2, :cond_1a

    const/4 v1, 0x4

    :cond_1a
    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 547
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->g()I

    move-result v0

    .line 548
    shr-int/lit8 v1, v0, 0xa

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x60

    int-to-char v1, v1

    shr-int/lit8 v2, v0, 0x5

    and-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x60

    int-to-char v2, v2

    and-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x60

    int-to-char v0, v0

    const/4 v3, 0x3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 551
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 544
    :cond_53
    const/16 v0, 0x10

    goto :goto_10
.end method

.method private static g(Lcom/google/ads/interactivemedia/v3/a/f/m;)I
    .registers 4

    .prologue
    .line 1123
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v1

    .line 1124
    and-int/lit8 v0, v1, 0x7f

    .line 1125
    :goto_6
    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_16

    .line 1126
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v1

    .line 1127
    shl-int/lit8 v0, v0, 0x7

    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    goto :goto_6

    .line 1129
    :cond_16
    return v0
.end method
