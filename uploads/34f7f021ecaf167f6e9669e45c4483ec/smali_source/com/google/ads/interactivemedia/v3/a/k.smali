.class public Lcom/google/ads/interactivemedia/v3/a/k;
.super Lcom/google/ads/interactivemedia/v3/a/m;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/a/j;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/a/k$a;
    }
.end annotation


# instance fields
.field private final c:Lcom/google/ads/interactivemedia/v3/a/k$a;

.field private final d:Lcom/google/ads/interactivemedia/v3/a/a/b;

.field private e:Z

.field private f:Landroid/media/MediaFormat;

.field private g:I

.field private h:I

.field private i:J

.field private j:Z

.field private k:Z

.field private l:J


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/a/t;Lcom/google/ads/interactivemedia/v3/a/l;Lcom/google/ads/interactivemedia/v3/a/b/b;ZLandroid/os/Handler;Lcom/google/ads/interactivemedia/v3/a/k$a;Lcom/google/ads/interactivemedia/v3/a/a/a;I)V
    .registers 18

    .prologue
    .line 178
    const/4 v0, 0x1

    new-array v1, v0, [Lcom/google/ads/interactivemedia/v3/a/t;

    const/4 v0, 0x0

    aput-object p1, v1, v0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/google/ads/interactivemedia/v3/a/k;-><init>([Lcom/google/ads/interactivemedia/v3/a/t;Lcom/google/ads/interactivemedia/v3/a/l;Lcom/google/ads/interactivemedia/v3/a/b/b;ZLandroid/os/Handler;Lcom/google/ads/interactivemedia/v3/a/k$a;Lcom/google/ads/interactivemedia/v3/a/a/a;I)V

    .line 180
    return-void
.end method

.method public constructor <init>([Lcom/google/ads/interactivemedia/v3/a/t;Lcom/google/ads/interactivemedia/v3/a/l;Lcom/google/ads/interactivemedia/v3/a/b/b;ZLandroid/os/Handler;Lcom/google/ads/interactivemedia/v3/a/k$a;Lcom/google/ads/interactivemedia/v3/a/a/a;I)V
    .registers 10

    .prologue
    .line 203
    invoke-direct/range {p0 .. p6}, Lcom/google/ads/interactivemedia/v3/a/m;-><init>([Lcom/google/ads/interactivemedia/v3/a/t;Lcom/google/ads/interactivemedia/v3/a/l;Lcom/google/ads/interactivemedia/v3/a/b/b;ZLandroid/os/Handler;Lcom/google/ads/interactivemedia/v3/a/m$b;)V

    .line 205
    iput-object p6, p0, Lcom/google/ads/interactivemedia/v3/a/k;->c:Lcom/google/ads/interactivemedia/v3/a/k$a;

    .line 206
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/k;->h:I

    .line 207
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/a/b;

    invoke-direct {v0, p7, p8}, Lcom/google/ads/interactivemedia/v3/a/a/b;-><init>(Lcom/google/ads/interactivemedia/v3/a/a/a;I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/k;->d:Lcom/google/ads/interactivemedia/v3/a/a/b;

    .line 208
    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/a/k;)Lcom/google/ads/interactivemedia/v3/a/k$a;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/k;->c:Lcom/google/ads/interactivemedia/v3/a/k$a;

    return-object v0
.end method

.method private a(IJJ)V
    .registers 14

    .prologue
    .line 474
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/k;->b:Landroid/os/Handler;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/k;->c:Lcom/google/ads/interactivemedia/v3/a/k$a;

    if-eqz v0, :cond_16

    .line 475
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/k;->b:Landroid/os/Handler;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/k$3;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/ads/interactivemedia/v3/a/k$3;-><init>(Lcom/google/ads/interactivemedia/v3/a/k;IJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 482
    :cond_16
    return-void
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/a/a/b$d;)V
    .registers 4

    .prologue
    .line 451
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/k;->b:Landroid/os/Handler;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/k;->c:Lcom/google/ads/interactivemedia/v3/a/k$a;

    if-eqz v0, :cond_12

    .line 452
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/k;->b:Landroid/os/Handler;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/k$1;

    invoke-direct {v1, p0, p1}, Lcom/google/ads/interactivemedia/v3/a/k$1;-><init>(Lcom/google/ads/interactivemedia/v3/a/k;Lcom/google/ads/interactivemedia/v3/a/a/b$d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 459
    :cond_12
    return-void
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/a/a/b$f;)V
    .registers 4

    .prologue
    .line 462
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/k;->b:Landroid/os/Handler;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/k;->c:Lcom/google/ads/interactivemedia/v3/a/k$a;

    if-eqz v0, :cond_12

    .line 463
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/k;->b:Landroid/os/Handler;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/k$2;

    invoke-direct {v1, p0, p1}, Lcom/google/ads/interactivemedia/v3/a/k$2;-><init>(Lcom/google/ads/interactivemedia/v3/a/k;Lcom/google/ads/interactivemedia/v3/a/a/b$f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 470
    :cond_12
    return-void
.end method


# virtual methods
.method public a()J
    .registers 5

    .prologue
    .line 327
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/k;->d:Lcom/google/ads/interactivemedia/v3/a/a/b;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/k;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/a/b;->a(Z)J

    move-result-wide v0

    .line 328
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_19

    .line 329
    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/k;->j:Z

    if-eqz v2, :cond_1c

    .line 330
    :goto_14
    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/k;->i:J

    .line 331
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/k;->j:Z

    .line 333
    :cond_19
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/k;->i:J

    return-wide v0

    .line 330
    :cond_1c
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/k;->i:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_14
.end method

.method protected a(Lcom/google/ads/interactivemedia/v3/a/l;Ljava/lang/String;Z)Lcom/google/ads/interactivemedia/v3/a/e;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/n$b;
        }
    .end annotation

    .prologue
    .line 222
    invoke-virtual {p0, p2}, Lcom/google/ads/interactivemedia/v3/a/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 223
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/a/l;->a()Lcom/google/ads/interactivemedia/v3/a/e;

    move-result-object v0

    .line 224
    if-eqz v0, :cond_10

    .line 225
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/a/k;->e:Z

    .line 230
    :goto_f
    return-object v0

    .line 229
    :cond_10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/k;->e:Z

    .line 230
    invoke-super {p0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/a/m;->a(Lcom/google/ads/interactivemedia/v3/a/l;Ljava/lang/String;Z)Lcom/google/ads/interactivemedia/v3/a/e;

    move-result-object v0

    goto :goto_f
.end method

.method protected a(I)V
    .registers 2

    .prologue
    .line 301
    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation

    .prologue
    .line 437
    packed-switch p1, :pswitch_data_1c

    .line 445
    invoke-super {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/a/m;->a(ILjava/lang/Object;)V

    .line 448
    :goto_6
    return-void

    .line 439
    :pswitch_7
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/k;->d:Lcom/google/ads/interactivemedia/v3/a/a/b;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/a/b;->a(F)V

    goto :goto_6

    .line 442
    :pswitch_13
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/k;->d:Lcom/google/ads/interactivemedia/v3/a/a/b;

    check-cast p2, Landroid/media/PlaybackParams;

    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/a/a/b;->a(Landroid/media/PlaybackParams;)V

    goto :goto_6

    .line 437
    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_7
        :pswitch_13
    .end packed-switch
.end method

.method protected a(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation

    .prologue
    .line 348
    invoke-super {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/a/m;->a(J)V

    .line 349
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/k;->d:Lcom/google/ads/interactivemedia/v3/a/a/b;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/a/b;->j()V

    .line 350
    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/a/k;->i:J

    .line 351
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/k;->j:Z

    .line 352
    return-void
.end method

.method protected a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .registers 8

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/k;->f:Landroid/media/MediaFormat;

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    move v1, v0

    .line 278
    :goto_6
    if-eqz v1, :cond_2b

    .line 279
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/k;->f:Landroid/media/MediaFormat;

    const-string v2, "mime"

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    :goto_10
    if-eqz v1, :cond_14

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/a/k;->f:Landroid/media/MediaFormat;

    .line 282
    :cond_14
    const-string v1, "channel-count"

    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 283
    const-string v2, "sample-rate"

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    .line 284
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/k;->d:Lcom/google/ads/interactivemedia/v3/a/a/b;

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/a/k;->g:I

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/google/ads/interactivemedia/v3/a/a/b;->a(Ljava/lang/String;III)V

    .line 285
    return-void

    .line 277
    :cond_28
    const/4 v0, 0x0

    move v1, v0

    goto :goto_6

    .line 280
    :cond_2b
    const-string v0, "audio/raw"

    goto :goto_10
.end method

.method protected a(Landroid/media/MediaCodec;ZLandroid/media/MediaFormat;Landroid/media/MediaCrypto;)V
    .registers 10

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 248
    const-string v0, "mime"

    invoke-virtual {p3, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/a/k;->e:Z

    if-eqz v1, :cond_1e

    .line 251
    const-string v1, "mime"

    const-string v2, "audio/raw"

    invoke-virtual {p3, v1, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p1, p3, v3, p4, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 253
    const-string v1, "mime"

    invoke-virtual {p3, v1, v0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/a/k;->f:Landroid/media/MediaFormat;

    .line 259
    :goto_1d
    return-void

    .line 256
    :cond_1e
    invoke-virtual {p1, p3, v3, p4, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 257
    iput-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/k;->f:Landroid/media/MediaFormat;

    goto :goto_1d
.end method

.method protected a(Lcom/google/ads/interactivemedia/v3/a/q;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation

    .prologue
    .line 268
    invoke-super {p0, p1}, Lcom/google/ads/interactivemedia/v3/a/m;->a(Lcom/google/ads/interactivemedia/v3/a/q;)V

    .line 271
    const-string v0, "audio/raw"

    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/a/q;->a:Lcom/google/ads/interactivemedia/v3/a/p;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/a/p;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/a/q;->a:Lcom/google/ads/interactivemedia/v3/a/p;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/a/p;->r:I

    .line 272
    :goto_13
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/k;->g:I

    .line 273
    return-void

    .line 272
    :cond_16
    const/4 v0, 0x2

    goto :goto_13
.end method

.method protected a(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;IZ)Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation

    .prologue
    .line 358
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/k;->e:Z

    if-eqz v0, :cond_10

    iget v0, p7, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_10

    .line 360
    const/4 v0, 0x0

    invoke-virtual {p5, p8, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 361
    const/4 v0, 0x1

    .line 423
    :goto_f
    return v0

    .line 364
    :cond_10
    if-eqz p9, :cond_25

    .line 365
    const/4 v0, 0x0

    invoke-virtual {p5, p8, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 366
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/k;->a:Lcom/google/ads/interactivemedia/v3/a/c;

    iget v1, v0, Lcom/google/ads/interactivemedia/v3/a/c;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/a/c;->g:I

    .line 367
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/k;->d:Lcom/google/ads/interactivemedia/v3/a/a/b;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/a/b;->f()V

    .line 368
    const/4 v0, 0x1

    goto :goto_f

    .line 371
    :cond_25
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/k;->d:Lcom/google/ads/interactivemedia/v3/a/a/b;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/a/b;->a()Z

    move-result v0

    if-nez v0, :cond_8e

    .line 374
    :try_start_2d
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/k;->h:I

    if-eqz v0, :cond_76

    .line 375
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/k;->d:Lcom/google/ads/interactivemedia/v3/a/a/b;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/k;->h:I

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/a/b;->a(I)I

    .line 380
    :goto_38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/k;->k:Z
    :try_end_3b
    .catch Lcom/google/ads/interactivemedia/v3/a/a/b$d; {:try_start_2d .. :try_end_3b} :catch_84

    .line 385
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/k;->v()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_47

    .line 386
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/k;->d:Lcom/google/ads/interactivemedia/v3/a/a/b;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/a/b;->e()V

    .line 402
    :cond_47
    :goto_47
    :try_start_47
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/k;->d:Lcom/google/ads/interactivemedia/v3/a/a/b;

    iget v2, p7, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v3, p7, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v4, p7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-object v1, p6

    invoke-virtual/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/a/a/b;->a(Ljava/nio/ByteBuffer;IIJ)I

    move-result v0

    .line 404
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/k;->l:J
    :try_end_5a
    .catch Lcom/google/ads/interactivemedia/v3/a/a/b$f; {:try_start_47 .. :try_end_5a} :catch_cb

    .line 411
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_64

    .line 412
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/k;->i()V

    .line 413
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/a/k;->j:Z

    .line 417
    :cond_64
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_d5

    .line 418
    const/4 v0, 0x0

    invoke-virtual {p5, p8, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 419
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/k;->a:Lcom/google/ads/interactivemedia/v3/a/c;

    iget v1, v0, Lcom/google/ads/interactivemedia/v3/a/c;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/a/c;->f:I

    .line 420
    const/4 v0, 0x1

    goto :goto_f

    .line 377
    :cond_76
    :try_start_76
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/k;->d:Lcom/google/ads/interactivemedia/v3/a/a/b;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/a/b;->b()I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/k;->h:I

    .line 378
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/k;->h:I

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/k;->a(I)V
    :try_end_83
    .catch Lcom/google/ads/interactivemedia/v3/a/a/b$d; {:try_start_76 .. :try_end_83} :catch_84

    goto :goto_38

    .line 381
    :catch_84
    move-exception v0

    .line 382
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/k;->a(Lcom/google/ads/interactivemedia/v3/a/a/b$d;)V

    .line 383
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/f;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/f;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 390
    :cond_8e
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/k;->k:Z

    .line 391
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/k;->d:Lcom/google/ads/interactivemedia/v3/a/a/b;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/a/a/b;->h()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/a/k;->k:Z

    .line 392
    if-eqz v0, :cond_47

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/k;->k:Z

    if-nez v0, :cond_47

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/k;->v()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_47

    .line 393
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/k;->l:J

    sub-long v4, v0, v2

    .line 394
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/k;->d:Lcom/google/ads/interactivemedia/v3/a/a/b;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/a/b;->d()J

    move-result-wide v0

    .line 395
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_c6

    const-wide/16 v2, -0x1

    .line 396
    :goto_bb
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/k;->d:Lcom/google/ads/interactivemedia/v3/a/a/b;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/a/b;->c()I

    move-result v1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/a/k;->a(IJJ)V

    goto :goto_47

    .line 395
    :cond_c6
    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    goto :goto_bb

    .line 405
    :catch_cb
    move-exception v0

    .line 406
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/k;->a(Lcom/google/ads/interactivemedia/v3/a/a/b$f;)V

    .line 407
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/f;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/f;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 423
    :cond_d5
    const/4 v0, 0x0

    goto/16 :goto_f
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

    .line 213
    iget-object v1, p2, Lcom/google/ads/interactivemedia/v3/a/p;->b:Ljava/lang/String;

    .line 214
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/a/f/i;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    const-string v2, "audio/x-unknown"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 215
    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/a/k;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/a/l;->a()Lcom/google/ads/interactivemedia/v3/a/e;

    move-result-object v2

    if-nez v2, :cond_23

    .line 216
    :cond_1d
    invoke-interface {p1, v1, v0}, Lcom/google/ads/interactivemedia/v3/a/l;->a(Ljava/lang/String;Z)Lcom/google/ads/interactivemedia/v3/a/e;

    move-result-object v1

    if-eqz v1, :cond_24

    :cond_23
    const/4 v0, 0x1

    .line 214
    :cond_24
    return v0
.end method

.method protected a(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/k;->d:Lcom/google/ads/interactivemedia/v3/a/a/b;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/a/a/b;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected b()Lcom/google/ads/interactivemedia/v3/a/j;
    .registers 1

    .prologue
    .line 263
    return-object p0
.end method

.method protected c()V
    .registers 2

    .prologue
    .line 305
    invoke-super {p0}, Lcom/google/ads/interactivemedia/v3/a/m;->c()V

    .line 306
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/k;->d:Lcom/google/ads/interactivemedia/v3/a/a/b;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/a/b;->e()V

    .line 307
    return-void
.end method

.method protected d()V
    .registers 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/k;->d:Lcom/google/ads/interactivemedia/v3/a/a/b;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/a/b;->i()V

    .line 312
    invoke-super {p0}, Lcom/google/ads/interactivemedia/v3/a/m;->d()V

    .line 313
    return-void
.end method

.method protected e()Z
    .registers 2

    .prologue
    .line 317
    invoke-super {p0}, Lcom/google/ads/interactivemedia/v3/a/m;->e()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/k;->d:Lcom/google/ads/interactivemedia/v3/a/a/b;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/a/b;->h()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected f()Z
    .registers 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/k;->d:Lcom/google/ads/interactivemedia/v3/a/a/b;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/a/b;->h()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-super {p0}, Lcom/google/ads/interactivemedia/v3/a/m;->f()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected g()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation

    .prologue
    .line 338
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/k;->h:I

    .line 340
    :try_start_3
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/k;->d:Lcom/google/ads/interactivemedia/v3/a/a/b;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/a/b;->k()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_c

    .line 342
    invoke-super {p0}, Lcom/google/ads/interactivemedia/v3/a/m;->g()V

    .line 344
    return-void

    .line 342
    :catchall_c
    move-exception v0

    invoke-super {p0}, Lcom/google/ads/interactivemedia/v3/a/m;->g()V

    throw v0
.end method

.method protected h()V
    .registers 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/k;->d:Lcom/google/ads/interactivemedia/v3/a/a/b;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/a/b;->g()V

    .line 429
    return-void
.end method

.method protected i()V
    .registers 1

    .prologue
    .line 433
    return-void
.end method
