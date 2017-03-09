.class final Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;
.super Lcom/google/ads/interactivemedia/v3/a/c/e/o$d;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/a/c/e/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/a/c/e/e;

.field private final b:Lcom/google/ads/interactivemedia/v3/a/c/e/m;

.field private final c:Lcom/google/ads/interactivemedia/v3/a/f/l;

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private k:Z

.field private l:J


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/a/c/e/e;Lcom/google/ads/interactivemedia/v3/a/c/e/m;)V
    .registers 5

    .prologue
    .line 574
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/c/e/o$d;-><init>(Lcom/google/ads/interactivemedia/v3/a/c/e/o$1;)V

    .line 575
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->a:Lcom/google/ads/interactivemedia/v3/a/c/e/e;

    .line 576
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->b:Lcom/google/ads/interactivemedia/v3/a/c/e/m;

    .line 577
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f/l;

    const/16 v1, 0xa

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/l;-><init>([B)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    .line 578
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->d:I

    .line 579
    return-void
.end method

.method private a(I)V
    .registers 3

    .prologue
    .line 657
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->d:I

    .line 658
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->e:I

    .line 659
    return-void
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/a/f/m;[BI)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 671
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b()I

    move-result v1

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->e:I

    sub-int v2, p3, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 672
    if-gtz v1, :cond_10

    .line 680
    :cond_f
    :goto_f
    return v0

    .line 674
    :cond_10
    if-nez p2, :cond_20

    .line 675
    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 679
    :goto_15
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->e:I

    .line 680
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->e:I

    if-eq v1, p3, :cond_f

    const/4 v0, 0x0

    goto :goto_f

    .line 677
    :cond_20
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->e:I

    invoke-virtual {p1, p2, v2, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->a([BII)V

    goto :goto_15
.end method

.method private b()Z
    .registers 7

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v5, -0x1

    .line 686
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v2, v0}, Lcom/google/ads/interactivemedia/v3/a/f/l;->a(I)V

    .line 687
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/a/f/l;->c(I)I

    move-result v2

    .line 688
    if-eq v2, v1, :cond_31

    .line 689
    const-string v1, "TsExtractor"

    const/16 v3, 0x29

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected start code prefix: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    iput v5, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->j:I

    .line 712
    :goto_30
    return v0

    .line 694
    :cond_31
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v0, v4}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b(I)V

    .line 695
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/a/f/l;->c(I)I

    move-result v0

    .line 696
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b(I)V

    .line 697
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->k:Z

    .line 698
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b(I)V

    .line 699
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->f:Z

    .line 700
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->g:Z

    .line 703
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b(I)V

    .line 704
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v2, v4}, Lcom/google/ads/interactivemedia/v3/a/f/l;->c(I)I

    move-result v2

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->i:I

    .line 706
    if-nez v0, :cond_76

    .line 707
    iput v5, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->j:I

    :goto_74
    move v0, v1

    .line 712
    goto :goto_30

    .line 709
    :cond_76
    add-int/lit8 v0, v0, 0x6

    add-int/lit8 v0, v0, -0x9

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->i:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->j:I

    goto :goto_74
.end method

.method private c()V
    .registers 10

    .prologue
    const/16 v8, 0x1e

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/16 v7, 0xf

    const/4 v6, 0x1

    .line 716
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/l;->a(I)V

    .line 717
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->l:J

    .line 718
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->f:Z

    if-eqz v0, :cond_88

    .line 719
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v0, v5}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b(I)V

    .line 720
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v0, v4}, Lcom/google/ads/interactivemedia/v3/a/f/l;->c(I)I

    move-result v0

    int-to-long v0, v0

    shl-long/2addr v0, v8

    .line 721
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v2, v6}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b(I)V

    .line 722
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v2, v7}, Lcom/google/ads/interactivemedia/v3/a/f/l;->c(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0xf

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 723
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v2, v6}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b(I)V

    .line 724
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v2, v7}, Lcom/google/ads/interactivemedia/v3/a/f/l;->c(I)I

    move-result v2

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 725
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v2, v6}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b(I)V

    .line 726
    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->h:Z

    if-nez v2, :cond_80

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->g:Z

    if-eqz v2, :cond_80

    .line 727
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v2, v5}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b(I)V

    .line 728
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v2, v4}, Lcom/google/ads/interactivemedia/v3/a/f/l;->c(I)I

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v8

    .line 729
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v4, v6}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b(I)V

    .line 730
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v4, v7}, Lcom/google/ads/interactivemedia/v3/a/f/l;->c(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0xf

    int-to-long v4, v4

    or-long/2addr v2, v4

    .line 731
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v4, v6}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b(I)V

    .line 732
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v4, v7}, Lcom/google/ads/interactivemedia/v3/a/f/l;->c(I)I

    move-result v4

    int-to-long v4, v4

    or-long/2addr v2, v4

    .line 733
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v4, v6}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b(I)V

    .line 739
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->b:Lcom/google/ads/interactivemedia/v3/a/c/e/m;

    invoke-virtual {v4, v2, v3}, Lcom/google/ads/interactivemedia/v3/a/c/e/m;->a(J)J

    .line 740
    iput-boolean v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->h:Z

    .line 742
    :cond_80
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->b:Lcom/google/ads/interactivemedia/v3/a/c/e/m;

    invoke-virtual {v2, v0, v1}, Lcom/google/ads/interactivemedia/v3/a/c/e/m;->a(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->l:J

    .line 744
    :cond_88
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 583
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->d:I

    .line 584
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->e:I

    .line 585
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->h:Z

    .line 586
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->a:Lcom/google/ads/interactivemedia/v3/a/c/e/e;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/c/e/e;->a()V

    .line 587
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/a/f/m;ZLcom/google/ads/interactivemedia/v3/a/c/g;)V
    .registers 11

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v5, -0x1

    .line 592
    if-eqz p2, :cond_d

    .line 593
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->d:I

    packed-switch v0, :pswitch_data_d2

    .line 613
    :goto_a
    :pswitch_a
    invoke-direct {p0, v6}, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->a(I)V

    .line 616
    :cond_d
    :goto_d
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b()I

    move-result v0

    if-lez v0, :cond_d1

    .line 617
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->d:I

    packed-switch v0, :pswitch_data_de

    goto :goto_d

    .line 619
    :pswitch_19
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    goto :goto_d

    .line 599
    :pswitch_21
    const-string v0, "TsExtractor"

    const-string v2, "Unexpected start indicator reading extended header"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 606
    :pswitch_29
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->j:I

    if-eq v0, v5, :cond_4f

    .line 607
    const-string v0, "TsExtractor"

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->j:I

    const/16 v3, 0x3b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected start indicator: expected "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " more bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_4f
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->a:Lcom/google/ads/interactivemedia/v3/a/c/e/e;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/c/e/e;->b()V

    goto :goto_a

    .line 622
    :pswitch_55
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/f/l;->a:[B

    const/16 v2, 0x9

    invoke-direct {p0, p1, v0, v2}, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;[BI)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 623
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->b()Z

    move-result v0

    if-eqz v0, :cond_6c

    const/4 v0, 0x2

    :goto_68
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->a(I)V

    goto :goto_d

    :cond_6c
    move v0, v1

    goto :goto_68

    .line 627
    :pswitch_6e
    const/16 v0, 0xa

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->i:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 629
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/a/f/l;->a:[B

    invoke-direct {p0, p1, v2, v0}, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;[BI)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->i:I

    .line 630
    invoke-direct {p0, p1, v0, v2}, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;[BI)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 631
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->c()V

    .line 632
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->a:Lcom/google/ads/interactivemedia/v3/a/c/e/e;

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->l:J

    iget-boolean v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->k:Z

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/a/c/e/e;->a(JZ)V

    .line 633
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->a(I)V

    goto/16 :goto_d

    .line 637
    :pswitch_9b
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b()I

    move-result v0

    .line 638
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->j:I

    if-ne v2, v5, :cond_cc

    move v2, v1

    .line 639
    :goto_a4
    if-lez v2, :cond_af

    .line 640
    sub-int/2addr v0, v2

    .line 641
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1, v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b(I)V

    .line 643
    :cond_af
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->a:Lcom/google/ads/interactivemedia/v3/a/c/e/e;

    invoke-virtual {v2, p1}, Lcom/google/ads/interactivemedia/v3/a/c/e/e;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;)V

    .line 644
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->j:I

    if-eq v2, v5, :cond_d

    .line 645
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->j:I

    sub-int v0, v2, v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->j:I

    .line 646
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->j:I

    if-nez v0, :cond_d

    .line 647
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->a:Lcom/google/ads/interactivemedia/v3/a/c/e/e;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/c/e/e;->b()V

    .line 648
    invoke-direct {p0, v6}, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->a(I)V

    goto/16 :goto_d

    .line 638
    :cond_cc
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;->j:I

    sub-int v2, v0, v2

    goto :goto_a4

    .line 654
    :cond_d1
    return-void

    .line 593
    :pswitch_data_d2
    .packed-switch 0x0
        :pswitch_a
        :pswitch_a
        :pswitch_21
        :pswitch_29
    .end packed-switch

    .line 617
    :pswitch_data_de
    .packed-switch 0x0
        :pswitch_19
        :pswitch_55
        :pswitch_6e
        :pswitch_9b
    .end packed-switch
.end method
