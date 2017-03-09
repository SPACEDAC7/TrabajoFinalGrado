.class public Lcom/google/ads/interactivemedia/v3/a/o;
.super Lcom/google/ads/interactivemedia/v3/a/m;
.source "IMASDK"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/a/o$a;
    }
.end annotation


# instance fields
.field private final c:Lcom/google/ads/interactivemedia/v3/a/x;

.field private final d:Lcom/google/ads/interactivemedia/v3/a/o$a;

.field private final e:J

.field private final f:I

.field private final g:I

.field private h:Landroid/view/Surface;

.field private i:Z

.field private j:Z

.field private k:J

.field private l:J

.field private m:I

.field private n:I

.field private o:I

.field private p:F

.field private q:I

.field private r:I

.field private s:I

.field private t:F

.field private u:I

.field private v:I

.field private w:I

.field private x:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/a/t;Lcom/google/ads/interactivemedia/v3/a/l;IJLandroid/os/Handler;Lcom/google/ads/interactivemedia/v3/a/o$a;I)V
    .registers 23

    .prologue
    .line 172
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    invoke-direct/range {v1 .. v12}, Lcom/google/ads/interactivemedia/v3/a/o;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/a/t;Lcom/google/ads/interactivemedia/v3/a/l;IJLcom/google/ads/interactivemedia/v3/a/b/b;ZLandroid/os/Handler;Lcom/google/ads/interactivemedia/v3/a/o$a;I)V

    .line 174
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/a/t;Lcom/google/ads/interactivemedia/v3/a/l;IJLcom/google/ads/interactivemedia/v3/a/b/b;ZLandroid/os/Handler;Lcom/google/ads/interactivemedia/v3/a/o$a;I)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/ads/interactivemedia/v3/a/t;",
            "Lcom/google/ads/interactivemedia/v3/a/l;",
            "IJ",
            "Lcom/google/ads/interactivemedia/v3/a/b/b",
            "<",
            "Lcom/google/ads/interactivemedia/v3/a/b/d;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lcom/google/ads/interactivemedia/v3/a/o$a;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 202
    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p7

    move/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    invoke-direct/range {v2 .. v8}, Lcom/google/ads/interactivemedia/v3/a/m;-><init>(Lcom/google/ads/interactivemedia/v3/a/t;Lcom/google/ads/interactivemedia/v3/a/l;Lcom/google/ads/interactivemedia/v3/a/b/b;ZLandroid/os/Handler;Lcom/google/ads/interactivemedia/v3/a/m$b;)V

    .line 204
    new-instance v2, Lcom/google/ads/interactivemedia/v3/a/x;

    invoke-direct {v2, p1}, Lcom/google/ads/interactivemedia/v3/a/x;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/o;->c:Lcom/google/ads/interactivemedia/v3/a/x;

    .line 205
    iput p4, p0, Lcom/google/ads/interactivemedia/v3/a/o;->f:I

    .line 206
    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p5

    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/o;->e:J

    .line 207
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->d:Lcom/google/ads/interactivemedia/v3/a/o$a;

    .line 208
    move/from16 v0, p11

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->g:I

    .line 209
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/o;->k:J

    .line 210
    const/4 v2, -0x1

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/o;->q:I

    .line 211
    const/4 v2, -0x1

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/o;->r:I

    .line 212
    const/high16 v2, -0x40800000

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/o;->t:F

    .line 213
    const/high16 v2, -0x40800000

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/o;->p:F

    .line 214
    const/4 v2, -0x1

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/o;->u:I

    .line 215
    const/4 v2, -0x1

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/o;->v:I

    .line 216
    const/high16 v2, -0x40800000

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/o;->x:F

    .line 217
    return-void
.end method

.method private A()V
    .registers 8

    .prologue
    .line 593
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->b:Landroid/os/Handler;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->d:Lcom/google/ads/interactivemedia/v3/a/o$a;

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->m:I

    if-nez v0, :cond_d

    .line 609
    :cond_c
    :goto_c
    return-void

    .line 596
    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 598
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/o;->m:I

    .line 599
    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/o;->l:J

    sub-long v4, v0, v4

    .line 600
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/o;->b:Landroid/os/Handler;

    new-instance v6, Lcom/google/ads/interactivemedia/v3/a/o$3;

    invoke-direct {v6, p0, v2, v4, v5}, Lcom/google/ads/interactivemedia/v3/a/o$3;-><init>(Lcom/google/ads/interactivemedia/v3/a/o;IJ)V

    invoke-virtual {v3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 607
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/o;->m:I

    .line 608
    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->l:J

    goto :goto_c
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/a/o;)Lcom/google/ads/interactivemedia/v3/a/o$a;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->d:Lcom/google/ads/interactivemedia/v3/a/o$a;

    return-object v0
.end method

.method private a()V
    .registers 8

    .prologue
    .line 551
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->b:Landroid/os/Handler;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->d:Lcom/google/ads/interactivemedia/v3/a/o$a;

    if-eqz v0, :cond_22

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->u:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/o;->q:I

    if-ne v0, v1, :cond_23

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->v:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/o;->r:I

    if-ne v0, v1, :cond_23

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->w:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/o;->s:I

    if-ne v0, v1, :cond_23

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->x:F

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/o;->t:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_23

    .line 574
    :cond_22
    :goto_22
    return-void

    .line 558
    :cond_23
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/o;->q:I

    .line 559
    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/o;->r:I

    .line 560
    iget v4, p0, Lcom/google/ads/interactivemedia/v3/a/o;->s:I

    .line 561
    iget v5, p0, Lcom/google/ads/interactivemedia/v3/a/o;->t:F

    .line 562
    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/a/o;->b:Landroid/os/Handler;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/o$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/a/o$1;-><init>(Lcom/google/ads/interactivemedia/v3/a/o;IIIF)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 570
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/o;->u:I

    .line 571
    iput v3, p0, Lcom/google/ads/interactivemedia/v3/a/o;->v:I

    .line 572
    iput v4, p0, Lcom/google/ads/interactivemedia/v3/a/o;->w:I

    .line 573
    iput v5, p0, Lcom/google/ads/interactivemedia/v3/a/o;->x:F

    goto :goto_22
.end method

.method private a(Landroid/media/MediaFormat;Z)V
    .registers 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    .line 501
    const-string v0, "max-input-size"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 548
    :cond_a
    :goto_a
    return-void

    .line 505
    :cond_b
    const-string v0, "height"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 506
    if-eqz p2, :cond_25

    const-string v1, "max-height"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 507
    const-string v1, "max-height"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 509
    :cond_25
    const-string/jumbo v1, "width"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 510
    if-eqz p2, :cond_40

    const-string v4, "max-width"

    invoke-virtual {p1, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 511
    const-string v1, "max-width"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 515
    :cond_40
    const-string v4, "mime"

    invoke-virtual {p1, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v4, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_c6

    :cond_4e
    :goto_4e
    packed-switch v4, :pswitch_data_e0

    goto :goto_a

    .line 518
    :pswitch_52
    mul-int/2addr v0, v1

    move v1, v0

    move v0, v2

    .line 546
    :goto_55
    mul-int/lit8 v1, v1, 0x3

    mul-int/lit8 v0, v0, 0x2

    div-int v0, v1, v0

    .line 547
    const-string v1, "max-input-size"

    invoke-virtual {p1, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_a

    .line 515
    :sswitch_61
    const-string/jumbo v6, "video/3gpp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e

    const/4 v4, 0x0

    goto :goto_4e

    :sswitch_6c
    const-string/jumbo v6, "video/mp4v-es"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e

    const/4 v4, 0x1

    goto :goto_4e

    :sswitch_77
    const-string/jumbo v6, "video/avc"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e

    move v4, v2

    goto :goto_4e

    :sswitch_82
    const-string/jumbo v6, "video/x-vnd.on2.vp8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e

    const/4 v4, 0x3

    goto :goto_4e

    :sswitch_8d
    const-string/jumbo v6, "video/hevc"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e

    move v4, v3

    goto :goto_4e

    :sswitch_98
    const-string/jumbo v6, "video/x-vnd.on2.vp9"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e

    const/4 v4, 0x5

    goto :goto_4e

    .line 522
    :pswitch_a3
    const-string v3, "BRAVIA 4K 2015"

    sget-object v4, Lcom/google/ads/interactivemedia/v3/a/f/q;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 528
    add-int/lit8 v1, v1, 0xf

    div-int/lit8 v1, v1, 0x10

    add-int/lit8 v0, v0, 0xf

    div-int/lit8 v0, v0, 0x10

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x10

    move v1, v0

    move v0, v2

    .line 530
    goto :goto_55

    .line 533
    :pswitch_bd
    mul-int/2addr v0, v1

    move v1, v0

    move v0, v2

    .line 535
    goto :goto_55

    .line 538
    :pswitch_c1
    mul-int/2addr v0, v1

    move v1, v0

    move v0, v3

    .line 540
    goto :goto_55

    .line 515
    nop

    :sswitch_data_c6
    .sparse-switch
        -0x63306f58 -> :sswitch_61
        -0x63185e82 -> :sswitch_8d
        0x46cdc642 -> :sswitch_6c
        0x4f62373a -> :sswitch_77
        0x5f50bed8 -> :sswitch_82
        0x5f50bed9 -> :sswitch_98
    .end sparse-switch

    :pswitch_data_e0
    .packed-switch 0x0
        :pswitch_52
        :pswitch_52
        :pswitch_a3
        :pswitch_bd
        :pswitch_c1
        :pswitch_c1
    .end packed-switch
.end method

.method private a(Landroid/view/Surface;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->h:Landroid/view/Surface;

    if-ne v0, p1, :cond_5

    .line 316
    :cond_4
    :goto_4
    return-void

    .line 309
    :cond_5
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/o;->h:Landroid/view/Surface;

    .line 310
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->i:Z

    .line 311
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/o;->v()I

    move-result v0

    .line 312
    const/4 v1, 0x2

    if-eq v0, v1, :cond_14

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 313
    :cond_14
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/o;->m()V

    .line 314
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/o;->j()V

    goto :goto_4
.end method

.method private i()V
    .registers 4

    .prologue
    .line 577
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->b:Landroid/os/Handler;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->d:Lcom/google/ads/interactivemedia/v3/a/o$a;

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->i:Z

    if-eqz v0, :cond_d

    .line 590
    :cond_c
    :goto_c
    return-void

    .line 581
    :cond_d
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->h:Landroid/view/Surface;

    .line 582
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/o;->b:Landroid/os/Handler;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/a/o$2;

    invoke-direct {v2, p0, v0}, Lcom/google/ads/interactivemedia/v3/a/o$2;-><init>(Lcom/google/ads/interactivemedia/v3/a/o;Landroid/view/Surface;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 589
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->i:Z

    goto :goto_c
.end method


# virtual methods
.method protected a(IJZ)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation

    .prologue
    .line 230
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/ads/interactivemedia/v3/a/m;->a(IJZ)V

    .line 231
    if-eqz p4, :cond_19

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_19

    .line 232
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/o;->e:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->k:J

    .line 234
    :cond_19
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->c:Lcom/google/ads/interactivemedia/v3/a/x;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/x;->a()V

    .line 235
    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation

    .prologue
    .line 294
    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    .line 295
    check-cast p2, Landroid/view/Surface;

    invoke-direct {p0, p2}, Lcom/google/ads/interactivemedia/v3/a/o;->a(Landroid/view/Surface;)V

    .line 299
    :goto_8
    return-void

    .line 297
    :cond_9
    invoke-super {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/a/m;->a(ILjava/lang/Object;)V

    goto :goto_8
.end method

.method protected a(J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 239
    invoke-super {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/a/m;->a(J)V

    .line 240
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->j:Z

    .line 241
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->n:I

    .line 242
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->k:J

    .line 243
    return-void
.end method

.method protected a(Landroid/media/MediaCodec;I)V
    .registers 5

    .prologue
    .line 458
    const-string v0, "skipVideoBuffer"

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/p;->a(Ljava/lang/String;)V

    .line 459
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 460
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/a/f/p;->a()V

    .line 461
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->a:Lcom/google/ads/interactivemedia/v3/a/c;

    iget v1, v0, Lcom/google/ads/interactivemedia/v3/a/c;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/a/c;->g:I

    .line 462
    return-void
.end method

.method protected a(Landroid/media/MediaCodec;IJ)V
    .registers 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 490
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/o;->a()V

    .line 491
    const-string v0, "releaseOutputBuffer"

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/p;->a(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p1, p2, p3, p4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    .line 493
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/a/f/p;->a()V

    .line 494
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->a:Lcom/google/ads/interactivemedia/v3/a/c;

    iget v1, v0, Lcom/google/ads/interactivemedia/v3/a/c;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/a/c;->f:I

    .line 495
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->j:Z

    .line 496
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/o;->i()V

    .line 497
    return-void
.end method

.method protected a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .registers 6

    .prologue
    .line 349
    const-string v0, "crop-right"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_73

    const-string v0, "crop-left"

    .line 350
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_73

    const-string v0, "crop-bottom"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_73

    const-string v0, "crop-top"

    .line 351
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_73

    const/4 v0, 0x1

    move v1, v0

    .line 352
    :goto_22
    if-eqz v1, :cond_76

    .line 353
    const-string v0, "crop-right"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string v2, "crop-left"

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    .line 354
    :goto_33
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->q:I

    .line 355
    if-eqz v1, :cond_7e

    .line 356
    const-string v0, "crop-bottom"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string v1, "crop-top"

    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 357
    :goto_46
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->r:I

    .line 358
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->p:F

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->t:F

    .line 359
    sget v0, Lcom/google/ads/interactivemedia/v3/a/f/q;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_85

    .line 363
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->o:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_5e

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->o:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_6d

    .line 364
    :cond_5e
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->q:I

    .line 365
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/o;->r:I

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/o;->q:I

    .line 366
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->r:I

    .line 367
    const/high16 v0, 0x3f800000

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/o;->t:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->t:F

    .line 374
    :cond_6d
    :goto_6d
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->f:I

    invoke-virtual {p1, v0}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    .line 375
    return-void

    .line 351
    :cond_73
    const/4 v0, 0x0

    move v1, v0

    goto :goto_22

    .line 354
    :cond_76
    const-string/jumbo v0, "width"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_33

    .line 357
    :cond_7e
    const-string v0, "height"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_46

    .line 371
    :cond_85
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->o:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->s:I

    goto :goto_6d
.end method

.method protected a(Landroid/media/MediaCodec;ZLandroid/media/MediaFormat;Landroid/media/MediaCrypto;)V
    .registers 7

    .prologue
    .line 327
    invoke-direct {p0, p3, p2}, Lcom/google/ads/interactivemedia/v3/a/o;->a(Landroid/media/MediaFormat;Z)V

    .line 328
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->h:Landroid/view/Surface;

    const/4 v1, 0x0

    invoke-virtual {p1, p3, v0, p4, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 329
    return-void
.end method

.method protected a(Lcom/google/ads/interactivemedia/v3/a/q;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation

    .prologue
    .line 333
    invoke-super {p0, p1}, Lcom/google/ads/interactivemedia/v3/a/m;->a(Lcom/google/ads/interactivemedia/v3/a/q;)V

    .line 334
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/a/q;->a:Lcom/google/ads/interactivemedia/v3/a/p;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/a/p;->m:F

    const/high16 v1, -0x40800000

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1c

    const/high16 v0, 0x3f800000

    .line 335
    :goto_f
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->p:F

    .line 336
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/a/q;->a:Lcom/google/ads/interactivemedia/v3/a/p;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/a/p;->l:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_21

    const/4 v0, 0x0

    .line 337
    :goto_19
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->o:I

    .line 338
    return-void

    .line 335
    :cond_1c
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/a/q;->a:Lcom/google/ads/interactivemedia/v3/a/p;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/a/p;->m:F

    goto :goto_f

    .line 337
    :cond_21
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/a/q;->a:Lcom/google/ads/interactivemedia/v3/a/p;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/a/p;->l:I

    goto :goto_19
.end method

.method protected a(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;IZ)Z
    .registers 21

    .prologue
    .line 388
    if-eqz p9, :cond_e

    .line 389
    move-object/from16 v0, p5

    move/from16 v1, p8

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/a/o;->a(Landroid/media/MediaCodec;I)V

    .line 390
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/o;->n:I

    .line 391
    const/4 v2, 0x1

    .line 454
    :goto_d
    return v2

    .line 394
    :cond_e
    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/o;->j:Z

    if-nez v2, :cond_30

    .line 395
    sget v2, Lcom/google/ads/interactivemedia/v3/a/f/q;->a:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_28

    .line 396
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    move-object/from16 v0, p5

    move/from16 v1, p8

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/a/o;->a(Landroid/media/MediaCodec;IJ)V

    .line 400
    :goto_23
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/o;->n:I

    .line 401
    const/4 v2, 0x1

    goto :goto_d

    .line 398
    :cond_28
    move-object/from16 v0, p5

    move/from16 v1, p8

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/a/o;->c(Landroid/media/MediaCodec;I)V

    goto :goto_23

    .line 404
    :cond_30
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/o;->v()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_39

    .line 405
    const/4 v2, 0x0

    goto :goto_d

    .line 409
    :cond_39
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    sub-long/2addr v2, p3

    .line 410
    move-object/from16 v0, p7

    iget-wide v4, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long/2addr v4, p1

    sub-long v2, v4, v2

    .line 413
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 414
    const-wide/16 v6, 0x3e8

    mul-long/2addr v2, v6

    add-long/2addr v2, v4

    .line 417
    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/a/o;->c:Lcom/google/ads/interactivemedia/v3/a/x;

    move-object/from16 v0, p7

    iget-wide v8, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v6, v8, v9, v2, v3}, Lcom/google/ads/interactivemedia/v3/a/x;->a(JJ)J

    move-result-wide v2

    .line 419
    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 421
    const-wide/16 v6, -0x7530

    cmp-long v6, v4, v6

    if-gez v6, :cond_6e

    .line 423
    move-object/from16 v0, p5

    move/from16 v1, p8

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/a/o;->b(Landroid/media/MediaCodec;I)V

    .line 424
    const/4 v2, 0x1

    goto :goto_d

    .line 427
    :cond_6e
    sget v6, Lcom/google/ads/interactivemedia/v3/a/f/q;->a:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_87

    .line 429
    const-wide/32 v6, 0xc350

    cmp-long v4, v4, v6

    if-gez v4, :cond_b3

    .line 430
    move-object/from16 v0, p5

    move/from16 v1, p8

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/a/o;->a(Landroid/media/MediaCodec;IJ)V

    .line 431
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/o;->n:I

    .line 432
    const/4 v2, 0x1

    goto :goto_d

    .line 436
    :cond_87
    const-wide/16 v2, 0x7530

    cmp-long v2, v4, v2

    if-gez v2, :cond_b3

    .line 437
    const-wide/16 v2, 0x2af8

    cmp-long v2, v4, v2

    if-lez v2, :cond_9d

    .line 442
    const-wide/16 v2, 0x2710

    sub-long v2, v4, v2

    const-wide/16 v4, 0x3e8

    :try_start_99
    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9d
    .catch Ljava/lang/InterruptedException; {:try_start_99 .. :try_end_9d} :catch_aa

    .line 447
    :cond_9d
    :goto_9d
    move-object/from16 v0, p5

    move/from16 v1, p8

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/a/o;->c(Landroid/media/MediaCodec;I)V

    .line 448
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/o;->n:I

    .line 449
    const/4 v2, 0x1

    goto/16 :goto_d

    .line 443
    :catch_aa
    move-exception v2

    .line 444
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_9d

    .line 454
    :cond_b3
    const/4 v2, 0x0

    goto/16 :goto_d
.end method

.method protected a(Landroid/media/MediaCodec;ZLcom/google/ads/interactivemedia/v3/a/p;Lcom/google/ads/interactivemedia/v3/a/p;)Z
    .registers 7

    .prologue
    .line 380
    iget-object v0, p4, Lcom/google/ads/interactivemedia/v3/a/p;->b:Ljava/lang/String;

    iget-object v1, p3, Lcom/google/ads/interactivemedia/v3/a/p;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    if-nez p2, :cond_18

    iget v0, p3, Lcom/google/ads/interactivemedia/v3/a/p;->h:I

    iget v1, p4, Lcom/google/ads/interactivemedia/v3/a/p;->h:I

    if-ne v0, v1, :cond_1a

    iget v0, p3, Lcom/google/ads/interactivemedia/v3/a/p;->i:I

    iget v1, p4, Lcom/google/ads/interactivemedia/v3/a/p;->i:I

    if-ne v0, v1, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method protected a(Lcom/google/ads/interactivemedia/v3/a/l;Lcom/google/ads/interactivemedia/v3/a/p;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/n$b;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 222
    iget-object v1, p2, Lcom/google/ads/interactivemedia/v3/a/p;->b:Ljava/lang/String;

    .line 223
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/a/f/i;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    const-string/jumbo v2, "video/x-unknown"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 224
    invoke-interface {p1, v1, v0}, Lcom/google/ads/interactivemedia/v3/a/l;->a(Ljava/lang/String;Z)Lcom/google/ads/interactivemedia/v3/a/e;

    move-result-object v1

    if-eqz v1, :cond_19

    :cond_18
    const/4 v0, 0x1

    .line 223
    :cond_19
    return v0
.end method

.method protected b(Landroid/media/MediaCodec;I)V
    .registers 6

    .prologue
    .line 465
    const-string v0, "dropVideoBuffer"

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/p;->a(Ljava/lang/String;)V

    .line 466
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 467
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/a/f/p;->a()V

    .line 468
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->a:Lcom/google/ads/interactivemedia/v3/a/c;

    iget v1, v0, Lcom/google/ads/interactivemedia/v3/a/c;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/a/c;->h:I

    .line 469
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->m:I

    .line 470
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->n:I

    .line 471
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->a:Lcom/google/ads/interactivemedia/v3/a/c;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/o;->n:I

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/o;->a:Lcom/google/ads/interactivemedia/v3/a/c;

    iget v2, v2, Lcom/google/ads/interactivemedia/v3/a/c;->i:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/a/c;->i:I

    .line 473
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->m:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/o;->g:I

    if-ne v0, v1, :cond_37

    .line 474
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/o;->A()V

    .line 476
    :cond_37
    return-void
.end method

.method protected c()V
    .registers 3

    .prologue
    .line 267
    invoke-super {p0}, Lcom/google/ads/interactivemedia/v3/a/m;->c()V

    .line 268
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->m:I

    .line 269
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->l:J

    .line 270
    return-void
.end method

.method protected c(Landroid/media/MediaCodec;I)V
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 479
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/o;->a()V

    .line 480
    const-string v0, "releaseOutputBuffer"

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/p;->a(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p1, p2, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 482
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/a/f/p;->a()V

    .line 483
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->a:Lcom/google/ads/interactivemedia/v3/a/c;

    iget v1, v0, Lcom/google/ads/interactivemedia/v3/a/c;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/a/c;->f:I

    .line 484
    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/o;->j:Z

    .line 485
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/o;->i()V

    .line 486
    return-void
.end method

.method protected d()V
    .registers 3

    .prologue
    .line 274
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->k:J

    .line 275
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/o;->A()V

    .line 276
    invoke-super {p0}, Lcom/google/ads/interactivemedia/v3/a/m;->d()V

    .line 277
    return-void
.end method

.method protected f()Z
    .registers 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v6, -0x1

    .line 247
    invoke-super {p0}, Lcom/google/ads/interactivemedia/v3/a/m;->f()Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/o;->j:Z

    if-nez v2, :cond_1b

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/o;->l()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 248
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/o;->o()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1e

    .line 250
    :cond_1b
    iput-wide v6, p0, Lcom/google/ads/interactivemedia/v3/a/o;->k:J

    .line 261
    :cond_1d
    :goto_1d
    return v0

    .line 252
    :cond_1e
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/o;->k:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_26

    move v0, v1

    .line 254
    goto :goto_1d

    .line 255
    :cond_26
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/o;->k:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1d

    .line 260
    iput-wide v6, p0, Lcom/google/ads/interactivemedia/v3/a/o;->k:J

    move v0, v1

    .line 261
    goto :goto_1d
.end method

.method protected g()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation

    .prologue
    const/high16 v1, -0x40800000

    const/4 v0, -0x1

    .line 281
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->q:I

    .line 282
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->r:I

    .line 283
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/o;->t:F

    .line 284
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/o;->p:F

    .line 285
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->u:I

    .line 286
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->v:I

    .line 287
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/o;->x:F

    .line 288
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->c:Lcom/google/ads/interactivemedia/v3/a/x;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/x;->b()V

    .line 289
    invoke-super {p0}, Lcom/google/ads/interactivemedia/v3/a/m;->g()V

    .line 290
    return-void
.end method

.method protected k()Z
    .registers 2

    .prologue
    .line 320
    invoke-super {p0}, Lcom/google/ads/interactivemedia/v3/a/m;->k()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->h:Landroid/view/Surface;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->h:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method
