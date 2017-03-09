.class public abstract Lcom/google/ads/interactivemedia/v3/a/m;
.super Lcom/google/ads/interactivemedia/v3/a/u;
.source "IMASDK"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/a/m$a;,
        Lcom/google/ads/interactivemedia/v3/a/m$b;
    }
.end annotation


# static fields
.field private static final c:[B


# instance fields
.field private A:J

.field private B:I

.field private C:I

.field private D:Z

.field private E:Z

.field private F:I

.field private G:I

.field private H:Z

.field private I:Z

.field private J:I

.field private K:Z

.field private L:Z

.field private M:Z

.field private N:Z

.field public final a:Lcom/google/ads/interactivemedia/v3/a/c;

.field protected final b:Landroid/os/Handler;

.field private final d:Lcom/google/ads/interactivemedia/v3/a/l;

.field private final e:Lcom/google/ads/interactivemedia/v3/a/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/a/b/b",
            "<",
            "Lcom/google/ads/interactivemedia/v3/a/b/d;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Z

.field private final g:Lcom/google/ads/interactivemedia/v3/a/s;

.field private final h:Lcom/google/ads/interactivemedia/v3/a/q;

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Landroid/media/MediaCodec$BufferInfo;

.field private final k:Lcom/google/ads/interactivemedia/v3/a/m$b;

.field private final l:Z

.field private m:Lcom/google/ads/interactivemedia/v3/a/p;

.field private n:Lcom/google/ads/interactivemedia/v3/a/b/a;

.field private o:Landroid/media/MediaCodec;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:[Ljava/nio/ByteBuffer;

.field private z:[Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 201
    const-string v0, "0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78"

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/q;->d(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/a/m;->c:[B

    return-void
.end method

.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/a/t;Lcom/google/ads/interactivemedia/v3/a/l;Lcom/google/ads/interactivemedia/v3/a/b/b;ZLandroid/os/Handler;Lcom/google/ads/interactivemedia/v3/a/m$b;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/a/t;",
            "Lcom/google/ads/interactivemedia/v3/a/l;",
            "Lcom/google/ads/interactivemedia/v3/a/b/b",
            "<",
            "Lcom/google/ads/interactivemedia/v3/a/b/d;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lcom/google/ads/interactivemedia/v3/a/m$b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 265
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

    invoke-direct/range {v0 .. v6}, Lcom/google/ads/interactivemedia/v3/a/m;-><init>([Lcom/google/ads/interactivemedia/v3/a/t;Lcom/google/ads/interactivemedia/v3/a/l;Lcom/google/ads/interactivemedia/v3/a/b/b;ZLandroid/os/Handler;Lcom/google/ads/interactivemedia/v3/a/m$b;)V

    .line 267
    return-void
.end method

.method public constructor <init>([Lcom/google/ads/interactivemedia/v3/a/t;Lcom/google/ads/interactivemedia/v3/a/l;Lcom/google/ads/interactivemedia/v3/a/b/b;ZLandroid/os/Handler;Lcom/google/ads/interactivemedia/v3/a/m$b;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/ads/interactivemedia/v3/a/t;",
            "Lcom/google/ads/interactivemedia/v3/a/l;",
            "Lcom/google/ads/interactivemedia/v3/a/b/b",
            "<",
            "Lcom/google/ads/interactivemedia/v3/a/b/d;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lcom/google/ads/interactivemedia/v3/a/m$b;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 286
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/a/u;-><init>([Lcom/google/ads/interactivemedia/v3/a/t;)V

    .line 287
    sget v0, Lcom/google/ads/interactivemedia/v3/a/f/q;->a:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_4c

    const/4 v0, 0x1

    :goto_b
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/b;->b(Z)V

    .line 288
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/a/f/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/l;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->d:Lcom/google/ads/interactivemedia/v3/a/l;

    .line 289
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/a/m;->e:Lcom/google/ads/interactivemedia/v3/a/b/b;

    .line 290
    iput-boolean p4, p0, Lcom/google/ads/interactivemedia/v3/a/m;->f:Z

    .line 291
    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/a/m;->b:Landroid/os/Handler;

    .line 292
    iput-object p6, p0, Lcom/google/ads/interactivemedia/v3/a/m;->k:Lcom/google/ads/interactivemedia/v3/a/m$b;

    .line 293
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/a/m;->B()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->l:Z

    .line 294
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/c;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/a/c;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->a:Lcom/google/ads/interactivemedia/v3/a/c;

    .line 295
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/s;

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/s;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->g:Lcom/google/ads/interactivemedia/v3/a/s;

    .line 296
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/q;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/a/q;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->h:Lcom/google/ads/interactivemedia/v3/a/q;

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->i:Ljava/util/List;

    .line 298
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->j:Landroid/media/MediaCodec$BufferInfo;

    .line 299
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/m;->F:I

    .line 300
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/m;->G:I

    .line 301
    return-void

    :cond_4c
    move v0, v1

    .line 287
    goto :goto_b
.end method

.method private A()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation

    .prologue
    .line 1007
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->G:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 1009
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/m;->m()V

    .line 1010
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/m;->j()V

    .line 1015
    :goto_b
    return-void

    .line 1012
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->L:Z

    .line 1013
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/m;->h()V

    goto :goto_b
.end method

.method private static B()Z
    .registers 2

    .prologue
    .line 1178
    sget v0, Lcom/google/ads/interactivemedia/v3/a/f/q;->a:I

    const/16 v1, 0x16

    if-gt v0, v1, :cond_1c

    const-string v0, "foster"

    sget-object v1, Lcom/google/ads/interactivemedia/v3/a/f/q;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "NVIDIA"

    sget-object v1, Lcom/google/ads/interactivemedia/v3/a/f/q;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/a/s;I)Landroid/media/MediaCodec$CryptoInfo;
    .registers 6

    .prologue
    .line 738
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/s;->a:Lcom/google/ads/interactivemedia/v3/a/d;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/d;->a()Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v0

    .line 739
    if-nez p1, :cond_9

    .line 749
    :goto_8
    return-object v0

    .line 745
    :cond_9
    iget-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    if-nez v1, :cond_12

    .line 746
    const/4 v1, 0x1

    new-array v1, v1, [I

    iput-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 748
    :cond_12
    iget-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    add-int/2addr v3, p1

    aput v3, v1, v2

    goto :goto_8
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/a/m;)Lcom/google/ads/interactivemedia/v3/a/m$b;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->k:Lcom/google/ads/interactivemedia/v3/a/m$b;

    return-object v0
.end method

.method private a(Landroid/media/MediaCodec$CryptoException;)V
    .registers 4

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->b:Landroid/os/Handler;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->k:Lcom/google/ads/interactivemedia/v3/a/m$b;

    if-eqz v0, :cond_12

    .line 1030
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->b:Landroid/os/Handler;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/m$2;

    invoke-direct {v1, p0, p1}, Lcom/google/ads/interactivemedia/v3/a/m$2;-><init>(Lcom/google/ads/interactivemedia/v3/a/m;Landroid/media/MediaCodec$CryptoException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1037
    :cond_12
    return-void
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/a/m$a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation

    .prologue
    .line 426
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/a/m;->b(Lcom/google/ads/interactivemedia/v3/a/m$a;)V

    .line 427
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f;

    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/a/f;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private a(Ljava/lang/String;JJ)V
    .registers 14

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->b:Landroid/os/Handler;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->k:Lcom/google/ads/interactivemedia/v3/a/m$b;

    if-eqz v0, :cond_16

    .line 1042
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->b:Landroid/os/Handler;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/m$3;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/ads/interactivemedia/v3/a/m$3;-><init>(Lcom/google/ads/interactivemedia/v3/a/m;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1050
    :cond_16
    return-void
.end method

.method private a()Z
    .registers 7

    .prologue
    .line 898
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/m;->A:J

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private a(JZ)Z
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation

    .prologue
    .line 583
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->K:Z

    if-nez v0, :cond_9

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->G:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 587
    :cond_9
    const/4 v0, 0x0

    .line 733
    :goto_a
    return v0

    .line 590
    :cond_b
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->B:I

    if-gez v0, :cond_2e

    .line 591
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->o:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->B:I

    .line 592
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->B:I

    if-gez v0, :cond_1f

    .line 593
    const/4 v0, 0x0

    goto :goto_a

    .line 595
    :cond_1f
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->g:Lcom/google/ads/interactivemedia/v3/a/s;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/m;->y:[Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/m;->B:I

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/google/ads/interactivemedia/v3/a/s;->b:Ljava/nio/ByteBuffer;

    .line 596
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->g:Lcom/google/ads/interactivemedia/v3/a/s;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/s;->d()V

    .line 599
    :cond_2e
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->G:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4f

    .line 602
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->t:Z

    if-eqz v0, :cond_3c

    .line 609
    :goto_37
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->G:I

    .line 610
    const/4 v0, 0x0

    goto :goto_a

    .line 605
    :cond_3c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->I:Z

    .line 606
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->o:Landroid/media/MediaCodec;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/m;->B:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 607
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->B:I

    goto :goto_37

    .line 613
    :cond_4f
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->w:Z

    if-eqz v0, :cond_75

    .line 614
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->w:Z

    .line 615
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->g:Lcom/google/ads/interactivemedia/v3/a/s;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/s;->b:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/a/m;->c:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 616
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->o:Landroid/media/MediaCodec;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/m;->B:I

    const/4 v2, 0x0

    sget-object v3, Lcom/google/ads/interactivemedia/v3/a/m;->c:[B

    array-length v3, v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 617
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->B:I

    .line 618
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->H:Z

    .line 619
    const/4 v0, 0x1

    goto :goto_a

    .line 623
    :cond_75
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->M:Z

    if-eqz v0, :cond_7f

    .line 625
    const/4 v0, -0x3

    .line 642
    :cond_7a
    :goto_7a
    const/4 v1, -0x2

    if-ne v0, v1, :cond_be

    .line 643
    const/4 v0, 0x0

    goto :goto_a

    .line 629
    :cond_7f
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->F:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a8

    .line 630
    const/4 v0, 0x0

    move v1, v0

    :goto_86
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->m:Lcom/google/ads/interactivemedia/v3/a/p;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/p;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_a5

    .line 631
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->m:Lcom/google/ads/interactivemedia/v3/a/p;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/p;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 632
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/m;->g:Lcom/google/ads/interactivemedia/v3/a/s;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/a/s;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 630
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_86

    .line 634
    :cond_a5
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->F:I

    .line 636
    :cond_a8
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->h:Lcom/google/ads/interactivemedia/v3/a/q;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/m;->g:Lcom/google/ads/interactivemedia/v3/a/s;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/ads/interactivemedia/v3/a/m;->a(JLcom/google/ads/interactivemedia/v3/a/q;Lcom/google/ads/interactivemedia/v3/a/s;)I

    move-result v0

    .line 637
    if-eqz p3, :cond_7a

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/m;->J:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7a

    const/4 v1, -0x2

    if-ne v0, v1, :cond_7a

    .line 638
    const/4 v1, 0x2

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/m;->J:I

    goto :goto_7a

    .line 645
    :cond_be
    const/4 v1, -0x4

    if-ne v0, v1, :cond_d6

    .line 646
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->F:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_ce

    .line 649
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->g:Lcom/google/ads/interactivemedia/v3/a/s;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/s;->d()V

    .line 650
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->F:I

    .line 652
    :cond_ce
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->h:Lcom/google/ads/interactivemedia/v3/a/q;

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/m;->a(Lcom/google/ads/interactivemedia/v3/a/q;)V

    .line 653
    const/4 v0, 0x1

    goto/16 :goto_a

    .line 655
    :cond_d6
    const/4 v1, -0x1

    if-ne v0, v1, :cond_117

    .line 656
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->F:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e6

    .line 660
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->g:Lcom/google/ads/interactivemedia/v3/a/s;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/s;->d()V

    .line 661
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->F:I

    .line 663
    :cond_e6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->K:Z

    .line 664
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->H:Z

    if-nez v0, :cond_f3

    .line 665
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/m;->A()V

    .line 666
    const/4 v0, 0x0

    goto/16 :goto_a

    .line 669
    :cond_f3
    :try_start_f3
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->t:Z

    if-eqz v0, :cond_fa

    .line 680
    :goto_f7
    const/4 v0, 0x0

    goto/16 :goto_a

    .line 672
    :cond_fa
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->I:Z

    .line 673
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->o:Landroid/media/MediaCodec;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/m;->B:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 674
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->B:I
    :try_end_10c
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_f3 .. :try_end_10c} :catch_10d

    goto :goto_f7

    .line 676
    :catch_10d
    move-exception v0

    .line 677
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/m;->a(Landroid/media/MediaCodec$CryptoException;)V

    .line 678
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/f;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/f;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 682
    :cond_117
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->N:Z

    if-eqz v0, :cond_136

    .line 685
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->g:Lcom/google/ads/interactivemedia/v3/a/s;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/s;->c()Z

    move-result v0

    if-nez v0, :cond_133

    .line 686
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->g:Lcom/google/ads/interactivemedia/v3/a/s;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/s;->d()V

    .line 687
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->F:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_130

    .line 690
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->F:I

    .line 692
    :cond_130
    const/4 v0, 0x1

    goto/16 :goto_a

    .line 694
    :cond_133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->N:Z

    .line 696
    :cond_136
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->g:Lcom/google/ads/interactivemedia/v3/a/s;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/s;->a()Z

    move-result v6

    .line 697
    invoke-direct {p0, v6}, Lcom/google/ads/interactivemedia/v3/a/m;->a(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->M:Z

    .line 698
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->M:Z

    if-eqz v0, :cond_149

    .line 699
    const/4 v0, 0x0

    goto/16 :goto_a

    .line 701
    :cond_149
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->q:Z

    if-eqz v0, :cond_166

    if-nez v6, :cond_166

    .line 702
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->g:Lcom/google/ads/interactivemedia/v3/a/s;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/s;->b:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/k;->a(Ljava/nio/ByteBuffer;)V

    .line 703
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->g:Lcom/google/ads/interactivemedia/v3/a/s;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/s;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-nez v0, :cond_163

    .line 704
    const/4 v0, 0x1

    goto/16 :goto_a

    .line 706
    :cond_163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->q:Z

    .line 709
    :cond_166
    :try_start_166
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->g:Lcom/google/ads/interactivemedia/v3/a/s;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/s;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 710
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->g:Lcom/google/ads/interactivemedia/v3/a/s;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/a/s;->c:I

    sub-int v0, v5, v0

    .line 711
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/m;->g:Lcom/google/ads/interactivemedia/v3/a/s;

    iget-wide v2, v1, Lcom/google/ads/interactivemedia/v3/a/s;->e:J

    .line 712
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/m;->g:Lcom/google/ads/interactivemedia/v3/a/s;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/a/s;->b()Z

    move-result v1

    if-eqz v1, :cond_189

    .line 713
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/m;->i:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 716
    :cond_189
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/m;->g:Lcom/google/ads/interactivemedia/v3/a/s;

    iget-object v4, v1, Lcom/google/ads/interactivemedia/v3/a/s;->b:Ljava/nio/ByteBuffer;

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/ads/interactivemedia/v3/a/m;->a(JLjava/nio/ByteBuffer;IZ)V

    .line 718
    if-eqz v6, :cond_1b7

    .line 719
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/m;->g:Lcom/google/ads/interactivemedia/v3/a/s;

    invoke-static {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/m;->a(Lcom/google/ads/interactivemedia/v3/a/s;I)Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v7

    .line 721
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/m;->o:Landroid/media/MediaCodec;

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/a/m;->B:I

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-wide v8, v2

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    .line 725
    :goto_1a3
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->B:I

    .line 726
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->H:Z

    .line 727
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->F:I

    .line 728
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->a:Lcom/google/ads/interactivemedia/v3/a/c;

    iget v1, v0, Lcom/google/ads/interactivemedia/v3/a/c;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/a/c;->c:I

    .line 733
    const/4 v0, 0x1

    goto/16 :goto_a

    .line 723
    :cond_1b7
    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/a/m;->o:Landroid/media/MediaCodec;

    iget v7, p0, Lcom/google/ads/interactivemedia/v3/a/m;->B:I

    const/4 v8, 0x0

    const/4 v12, 0x0

    move v9, v5

    move-wide v10, v2

    invoke-virtual/range {v6 .. v12}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_1c2
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_166 .. :try_end_1c2} :catch_1c3

    goto :goto_1a3

    .line 729
    :catch_1c3
    move-exception v0

    .line 730
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/m;->a(Landroid/media/MediaCodec$CryptoException;)V

    .line 731
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/f;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/f;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 3

    .prologue
    const/16 v1, 0x12

    .line 1072
    sget v0, Lcom/google/ads/interactivemedia/v3/a/f/q;->a:I

    if-lt v0, v1, :cond_3a

    sget v0, Lcom/google/ads/interactivemedia/v3/a/f/q;->a:I

    if-ne v0, v1, :cond_1a

    const-string v0, "OMX.SEC.avc.dec"

    .line 1074
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string v0, "OMX.SEC.avc.dec.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    :cond_1a
    sget v0, Lcom/google/ads/interactivemedia/v3/a/f/q;->a:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_3c

    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/f/q;->d:Ljava/lang/String;

    const-string v1, "SM-G800"

    .line 1075
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const-string v0, "OMX.Exynos.avc.dec"

    .line 1076
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string v0, "OMX.Exynos.avc.dec.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    :cond_3a
    const/4 v0, 0x1

    .line 1072
    :goto_3b
    return v0

    .line 1076
    :cond_3c
    const/4 v0, 0x0

    goto :goto_3b
.end method

.method private static a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/a/p;)Z
    .registers 4

    .prologue
    .line 1109
    sget v0, Lcom/google/ads/interactivemedia/v3/a/f/q;->a:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_18

    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/a/p;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "OMX.MTK.VIDEO.DECODER.AVC"

    .line 1110
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    .line 1109
    :goto_17
    return v0

    .line 1110
    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private a(Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 761
    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/a/m;->D:Z

    if-nez v1, :cond_6

    .line 772
    :cond_5
    :goto_5
    return v0

    .line 764
    :cond_6
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/m;->e:Lcom/google/ads/interactivemedia/v3/a/b/b;

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/a/b/b;->b()I

    move-result v1

    .line 765
    if-nez v1, :cond_1a

    .line 766
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/m;->e:Lcom/google/ads/interactivemedia/v3/a/b/b;

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/a/b/b;->d()Ljava/lang/Exception;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 768
    :cond_1a
    const/4 v2, 0x4

    if-eq v1, v2, :cond_5

    if-nez p1, :cond_23

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/a/m;->f:Z

    if-nez v1, :cond_5

    .line 770
    :cond_23
    const/4 v0, 0x1

    goto :goto_5
.end method

.method private b(Lcom/google/ads/interactivemedia/v3/a/p;)Landroid/media/MediaFormat;
    .registers 5

    .prologue
    .line 753
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/p;->b()Landroid/media/MediaFormat;

    move-result-object v0

    .line 754
    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/a/m;->l:Z

    if-eqz v1, :cond_e

    .line 755
    const-string v1, "auto-frc"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 757
    :cond_e
    return-object v0
.end method

.method private b(Lcom/google/ads/interactivemedia/v3/a/m$a;)V
    .registers 4

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->b:Landroid/os/Handler;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->k:Lcom/google/ads/interactivemedia/v3/a/m$b;

    if-eqz v0, :cond_12

    .line 1019
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->b:Landroid/os/Handler;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/m$1;

    invoke-direct {v1, p0, p1}, Lcom/google/ads/interactivemedia/v3/a/m$1;-><init>(Lcom/google/ads/interactivemedia/v3/a/m;Lcom/google/ads/interactivemedia/v3/a/m$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1026
    :cond_12
    return-void
.end method

.method private b(JJ)Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation

    .prologue
    .line 917
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->L:Z

    if-eqz v0, :cond_6

    .line 918
    const/4 v0, 0x0

    .line 964
    :goto_5
    return v0

    .line 921
    :cond_6
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->C:I

    if-gez v0, :cond_18

    .line 922
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->o:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/m;->j:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/m;->p()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->C:I

    .line 925
    :cond_18
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->C:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_22

    .line 926
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/m;->i()V

    .line 927
    const/4 v0, 0x1

    goto :goto_5

    .line 928
    :cond_22
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->C:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_39

    .line 929
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->o:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->z:[Ljava/nio/ByteBuffer;

    .line 930
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->a:Lcom/google/ads/interactivemedia/v3/a/c;

    iget v1, v0, Lcom/google/ads/interactivemedia/v3/a/c;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/a/c;->e:I

    .line 931
    const/4 v0, 0x1

    goto :goto_5

    .line 932
    :cond_39
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->C:I

    if-gez v0, :cond_51

    .line 933
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->t:Z

    if-eqz v0, :cond_4f

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->K:Z

    if-nez v0, :cond_4a

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->G:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4f

    .line 935
    :cond_4a
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/m;->A()V

    .line 936
    const/4 v0, 0x1

    goto :goto_5

    .line 938
    :cond_4f
    const/4 v0, 0x0

    goto :goto_5

    .line 941
    :cond_51
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->x:Z

    if-eqz v0, :cond_65

    .line 942
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->x:Z

    .line 943
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->o:Landroid/media/MediaCodec;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/m;->C:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 944
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->C:I

    .line 945
    const/4 v0, 0x1

    goto :goto_5

    .line 948
    :cond_65
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->j:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_72

    .line 949
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/m;->A()V

    .line 950
    const/4 v0, 0x0

    goto :goto_5

    .line 953
    :cond_72
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->j:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/a/m;->h(J)I

    move-result v0

    .line 954
    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/a/m;->o:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/m;->z:[Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/m;->C:I

    aget-object v7, v1, v2

    iget-object v8, p0, Lcom/google/ads/interactivemedia/v3/a/m;->j:Landroid/media/MediaCodec$BufferInfo;

    iget v9, p0, Lcom/google/ads/interactivemedia/v3/a/m;->C:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a8

    const/4 v10, 0x1

    :goto_8a
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v10}, Lcom/google/ads/interactivemedia/v3/a/m;->a(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;IZ)Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 956
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/m;->j:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {p0, v2, v3}, Lcom/google/ads/interactivemedia/v3/a/m;->b(J)V

    .line 957
    const/4 v1, -0x1

    if-eq v0, v1, :cond_a2

    .line 958
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/m;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 960
    :cond_a2
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->C:I

    .line 961
    const/4 v0, 0x1

    goto/16 :goto_5

    .line 954
    :cond_a8
    const/4 v10, 0x0

    goto :goto_8a

    .line 964
    :cond_aa
    const/4 v0, 0x0

    goto/16 :goto_5
.end method

.method private static b(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 1092
    sget v0, Lcom/google/ads/interactivemedia/v3/a/f/q;->a:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_41

    const-string v0, "OMX.Nvidia.h264.decode"

    .line 1093
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "OMX.Nvidia.h264.decode.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    :cond_16
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/f/q;->b:Ljava/lang/String;

    const-string v1, "flounder"

    .line 1094
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/f/q;->b:Ljava/lang/String;

    const-string v1, "flounder_lte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/f/q;->b:Ljava/lang/String;

    const-string v1, "grouper"

    .line 1095
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/f/q;->b:Ljava/lang/String;

    const-string/jumbo v1, "tilapia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    :cond_3f
    const/4 v0, 0x1

    .line 1092
    :goto_40
    return v0

    .line 1095
    :cond_41
    const/4 v0, 0x0

    goto :goto_40
.end method

.method private static b(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/a/p;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 1159
    sget v1, Lcom/google/ads/interactivemedia/v3/a/f/q;->a:I

    const/16 v2, 0x12

    if-gt v1, v2, :cond_14

    iget v1, p1, Lcom/google/ads/interactivemedia/v3/a/p;->p:I

    if-ne v1, v0, :cond_14

    const-string v1, "OMX.MTK.AUDIO.DECODER.MP3"

    .line 1160
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1159
    :goto_13
    return v0

    .line 1160
    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private static c(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 1126
    sget v0, Lcom/google/ads/interactivemedia/v3/a/f/q;->a:I

    const/16 v1, 0x11

    if-gt v0, v1, :cond_18

    const-string v0, "OMX.rk.video_decoder.avc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "OMX.allwinner.video.decoder.avc"

    .line 1127
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    .line 1126
    :goto_17
    return v0

    .line 1127
    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private static d(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 1142
    sget v0, Lcom/google/ads/interactivemedia/v3/a/f/q;->a:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_10

    const-string v0, "OMX.google.vorbis.decoder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private g(J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation

    .prologue
    .line 538
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->h:Lcom/google/ads/interactivemedia/v3/a/q;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/ads/interactivemedia/v3/a/m;->a(JLcom/google/ads/interactivemedia/v3/a/q;Lcom/google/ads/interactivemedia/v3/a/s;)I

    move-result v0

    .line 539
    const/4 v1, -0x4

    if-ne v0, v1, :cond_f

    .line 540
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->h:Lcom/google/ads/interactivemedia/v3/a/q;

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/m;->a(Lcom/google/ads/interactivemedia/v3/a/q;)V

    .line 542
    :cond_f
    return-void
.end method

.method private h(J)I
    .registers 10

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 1054
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v2, :cond_1e

    .line 1055
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v4, p1

    if-nez v0, :cond_1b

    move v0, v1

    .line 1059
    :goto_1a
    return v0

    .line 1054
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1059
    :cond_1e
    const/4 v0, -0x1

    goto :goto_1a
.end method

.method private i()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation

    .prologue
    const/16 v3, 0x20

    const/4 v2, 0x1

    .line 973
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->o:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 974
    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/a/m;->s:Z

    if-eqz v1, :cond_21

    const-string/jumbo v1, "width"

    .line 975
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_21

    const-string v1, "height"

    .line 977
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_21

    .line 980
    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/m;->x:Z

    .line 988
    :goto_20
    return-void

    .line 983
    :cond_21
    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/a/m;->v:Z

    if-eqz v1, :cond_2a

    .line 984
    const-string v1, "channel-count"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 986
    :cond_2a
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/m;->o:Landroid/media/MediaCodec;

    invoke-virtual {p0, v1, v0}, Lcom/google/ads/interactivemedia/v3/a/m;->a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    .line 987
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->a:Lcom/google/ads/interactivemedia/v3/a/c;

    iget v1, v0, Lcom/google/ads/interactivemedia/v3/a/c;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/a/c;->d:I

    goto :goto_20
.end method


# virtual methods
.method protected a(Lcom/google/ads/interactivemedia/v3/a/l;Ljava/lang/String;Z)Lcom/google/ads/interactivemedia/v3/a/e;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/n$b;
        }
    .end annotation

    .prologue
    .line 331
    invoke-interface {p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/a/l;->a(Ljava/lang/String;Z)Lcom/google/ads/interactivemedia/v3/a/e;

    move-result-object v0

    return-object v0
.end method

.method protected a(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 498
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->J:I

    .line 499
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->K:Z

    .line 500
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->L:Z

    .line 501
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->o:Landroid/media/MediaCodec;

    if-eqz v0, :cond_e

    .line 502
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/m;->n()V

    .line 504
    :cond_e
    return-void
.end method

.method protected a(JJZ)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 519
    if-eqz p5, :cond_3c

    .line 520
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->J:I

    if-nez v0, :cond_39

    move v0, v1

    .line 521
    :goto_9
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->J:I

    .line 522
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->m:Lcom/google/ads/interactivemedia/v3/a/p;

    if-nez v0, :cond_12

    .line 523
    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/a/m;->g(J)V

    .line 525
    :cond_12
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/m;->j()V

    .line 526
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->o:Landroid/media/MediaCodec;

    if-eqz v0, :cond_33

    .line 527
    const-string v0, "drainAndFeed"

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/p;->a(Ljava/lang/String;)V

    .line 528
    :cond_1e
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/ads/interactivemedia/v3/a/m;->b(JJ)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 529
    invoke-direct {p0, p1, p2, v1}, Lcom/google/ads/interactivemedia/v3/a/m;->a(JZ)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 530
    :cond_2a
    invoke-direct {p0, p1, p2, v2}, Lcom/google/ads/interactivemedia/v3/a/m;->a(JZ)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 532
    :cond_30
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/a/f/p;->a()V

    .line 534
    :cond_33
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->a:Lcom/google/ads/interactivemedia/v3/a/c;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/c;->a()V

    .line 535
    return-void

    .line 520
    :cond_39
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->J:I

    goto :goto_9

    :cond_3c
    move v0, v2

    .line 521
    goto :goto_9
.end method

.method protected a(JLjava/nio/ByteBuffer;IZ)V
    .registers 6

    .prologue
    .line 843
    return-void
.end method

.method protected a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation

    .prologue
    .line 817
    return-void
.end method

.method protected abstract a(Landroid/media/MediaCodec;ZLandroid/media/MediaFormat;Landroid/media/MediaCrypto;)V
.end method

.method protected a(Lcom/google/ads/interactivemedia/v3/a/q;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 782
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/m;->m:Lcom/google/ads/interactivemedia/v3/a/p;

    .line 783
    iget-object v2, p1, Lcom/google/ads/interactivemedia/v3/a/q;->a:Lcom/google/ads/interactivemedia/v3/a/p;

    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/m;->m:Lcom/google/ads/interactivemedia/v3/a/p;

    .line 784
    iget-object v2, p1, Lcom/google/ads/interactivemedia/v3/a/q;->b:Lcom/google/ads/interactivemedia/v3/a/b/a;

    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/m;->n:Lcom/google/ads/interactivemedia/v3/a/b/a;

    .line 785
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/m;->m:Lcom/google/ads/interactivemedia/v3/a/p;

    invoke-static {v2, v1}, Lcom/google/ads/interactivemedia/v3/a/f/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 803
    :goto_13
    return-void

    .line 788
    :cond_14
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/m;->o:Landroid/media/MediaCodec;

    if-eqz v2, :cond_41

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/m;->o:Landroid/media/MediaCodec;

    iget-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/a/m;->p:Z

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/m;->m:Lcom/google/ads/interactivemedia/v3/a/p;

    invoke-virtual {p0, v2, v3, v1, v4}, Lcom/google/ads/interactivemedia/v3/a/m;->a(Landroid/media/MediaCodec;ZLcom/google/ads/interactivemedia/v3/a/p;Lcom/google/ads/interactivemedia/v3/a/p;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 789
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->E:Z

    .line 790
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->F:I

    .line 791
    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/m;->s:Z

    if-eqz v2, :cond_3f

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/m;->m:Lcom/google/ads/interactivemedia/v3/a/p;

    iget v2, v2, Lcom/google/ads/interactivemedia/v3/a/p;->h:I

    iget v3, v1, Lcom/google/ads/interactivemedia/v3/a/p;->h:I

    if-ne v2, v3, :cond_3f

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/m;->m:Lcom/google/ads/interactivemedia/v3/a/p;

    iget v2, v2, Lcom/google/ads/interactivemedia/v3/a/p;->i:I

    iget v1, v1, Lcom/google/ads/interactivemedia/v3/a/p;->i:I

    if-ne v2, v1, :cond_3f

    :goto_3c
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->w:Z

    goto :goto_13

    :cond_3f
    const/4 v0, 0x0

    goto :goto_3c

    .line 794
    :cond_41
    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/a/m;->H:Z

    if-eqz v1, :cond_48

    .line 796
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->G:I

    goto :goto_13

    .line 799
    :cond_48
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/m;->m()V

    .line 800
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/m;->j()V

    goto :goto_13
.end method

.method protected abstract a(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;IZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation
.end method

.method protected a(Landroid/media/MediaCodec;ZLcom/google/ads/interactivemedia/v3/a/p;Lcom/google/ads/interactivemedia/v3/a/p;)Z
    .registers 6

    .prologue
    .line 873
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract a(Lcom/google/ads/interactivemedia/v3/a/l;Lcom/google/ads/interactivemedia/v3/a/p;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/n$b;
        }
    .end annotation
.end method

.method protected final a(Lcom/google/ads/interactivemedia/v3/a/p;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/n$b;
        }
    .end annotation

    .prologue
    .line 305
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->d:Lcom/google/ads/interactivemedia/v3/a/l;

    invoke-virtual {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/a/m;->a(Lcom/google/ads/interactivemedia/v3/a/l;Lcom/google/ads/interactivemedia/v3/a/p;)Z

    move-result v0

    return v0
.end method

.method protected b(J)V
    .registers 3

    .prologue
    .line 854
    return-void
.end method

.method protected c()V
    .registers 1

    .prologue
    .line 509
    return-void
.end method

.method protected d()V
    .registers 1

    .prologue
    .line 514
    return-void
.end method

.method protected e()Z
    .registers 2

    .prologue
    .line 878
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->L:Z

    return v0
.end method

.method protected f()Z
    .registers 2

    .prologue
    .line 883
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->m:Lcom/google/ads/interactivemedia/v3/a/p;

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->M:Z

    if-nez v0, :cond_18

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->J:I

    if-nez v0, :cond_16

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->C:I

    if-gez v0, :cond_16

    .line 884
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/m;->a()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    .line 883
    :goto_17
    return v0

    .line 884
    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method protected g()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 444
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->m:Lcom/google/ads/interactivemedia/v3/a/p;

    .line 445
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->n:Lcom/google/ads/interactivemedia/v3/a/b/a;

    .line 447
    :try_start_5
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/m;->m()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_1d

    .line 450
    :try_start_8
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->D:Z

    if-eqz v0, :cond_14

    .line 451
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->e:Lcom/google/ads/interactivemedia/v3/a/b/b;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/a/b/b;->a()V

    .line 452
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->D:Z
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_18

    .line 455
    :cond_14
    invoke-super {p0}, Lcom/google/ads/interactivemedia/v3/a/u;->g()V

    .line 458
    return-void

    .line 455
    :catchall_18
    move-exception v0

    invoke-super {p0}, Lcom/google/ads/interactivemedia/v3/a/u;->g()V

    throw v0

    .line 449
    :catchall_1d
    move-exception v0

    .line 450
    :try_start_1e
    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/a/m;->D:Z

    if-eqz v1, :cond_2a

    .line 451
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/m;->e:Lcom/google/ads/interactivemedia/v3/a/b/b;

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/a/b/b;->a()V

    .line 452
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/a/m;->D:Z
    :try_end_2a
    .catchall {:try_start_1e .. :try_end_2a} :catchall_2e

    .line 455
    :cond_2a
    invoke-super {p0}, Lcom/google/ads/interactivemedia/v3/a/u;->g()V

    throw v0

    :catchall_2e
    move-exception v0

    invoke-super {p0}, Lcom/google/ads/interactivemedia/v3/a/u;->g()V

    throw v0
.end method

.method protected h()V
    .registers 1

    .prologue
    .line 828
    return-void
.end method

.method protected final j()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v2, 0x0

    .line 347
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/m;->k()Z

    move-result v0

    if-nez v0, :cond_b

    .line 422
    :cond_a
    :goto_a
    return-void

    .line 351
    :cond_b
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->m:Lcom/google/ads/interactivemedia/v3/a/p;

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/a/p;->b:Ljava/lang/String;

    .line 353
    const/4 v0, 0x0

    .line 354
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/m;->n:Lcom/google/ads/interactivemedia/v3/a/b/a;

    if-eqz v1, :cond_149

    .line 355
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->e:Lcom/google/ads/interactivemedia/v3/a/b/b;

    if-nez v0, :cond_20

    .line 356
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f;

    const-string v1, "Media requires a DrmSessionManager"

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_20
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->D:Z

    if-nez v0, :cond_2d

    .line 359
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->e:Lcom/google/ads/interactivemedia/v3/a/b/b;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/m;->n:Lcom/google/ads/interactivemedia/v3/a/b/a;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/b/b;->a(Lcom/google/ads/interactivemedia/v3/a/b/a;)V

    .line 360
    iput-boolean v9, p0, Lcom/google/ads/interactivemedia/v3/a/m;->D:Z

    .line 362
    :cond_2d
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->e:Lcom/google/ads/interactivemedia/v3/a/b/b;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/a/b/b;->b()I

    move-result v0

    .line 363
    if-nez v0, :cond_41

    .line 364
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/m;->e:Lcom/google/ads/interactivemedia/v3/a/b/b;

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/a/b/b;->d()Ljava/lang/Exception;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 365
    :cond_41
    if-eq v0, v10, :cond_46

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    .line 367
    :cond_46
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->e:Lcom/google/ads/interactivemedia/v3/a/b/b;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/a/b/b;->c()Lcom/google/ads/interactivemedia/v3/a/b/c;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/b/d;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/b/d;->a()Landroid/media/MediaCrypto;

    move-result-object v1

    .line 368
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->e:Lcom/google/ads/interactivemedia/v3/a/b/b;

    invoke-interface {v0, v3}, Lcom/google/ads/interactivemedia/v3/a/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    move v6, v0

    move-object v0, v1

    .line 377
    :goto_5a
    :try_start_5a
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/m;->d:Lcom/google/ads/interactivemedia/v3/a/l;

    invoke-virtual {p0, v1, v3, v6}, Lcom/google/ads/interactivemedia/v3/a/m;->a(Lcom/google/ads/interactivemedia/v3/a/l;Ljava/lang/String;Z)Lcom/google/ads/interactivemedia/v3/a/e;
    :try_end_5f
    .catch Lcom/google/ads/interactivemedia/v3/a/n$b; {:try_start_5a .. :try_end_5f} :catch_129

    move-result-object v1

    move-object v3, v1

    .line 383
    :goto_61
    if-nez v3, :cond_70

    .line 384
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/m$a;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/m;->m:Lcom/google/ads/interactivemedia/v3/a/p;

    const v5, -0xc34f

    invoke-direct {v1, v4, v2, v6, v5}, Lcom/google/ads/interactivemedia/v3/a/m$a;-><init>(Lcom/google/ads/interactivemedia/v3/a/p;Ljava/lang/Throwable;ZI)V

    invoke-direct {p0, v1}, Lcom/google/ads/interactivemedia/v3/a/m;->a(Lcom/google/ads/interactivemedia/v3/a/m$a;)V

    .line 388
    :cond_70
    iget-object v1, v3, Lcom/google/ads/interactivemedia/v3/a/e;->a:Ljava/lang/String;

    .line 389
    iget-boolean v2, v3, Lcom/google/ads/interactivemedia/v3/a/e;->c:Z

    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/m;->p:Z

    .line 390
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/m;->m:Lcom/google/ads/interactivemedia/v3/a/p;

    invoke-static {v1, v2}, Lcom/google/ads/interactivemedia/v3/a/m;->a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/a/p;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/m;->q:Z

    .line 391
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/a/m;->a(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/m;->r:Z

    .line 392
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/a/m;->b(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/m;->s:Z

    .line 393
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/a/m;->c(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/m;->t:Z

    .line 394
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/a/m;->d(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/m;->u:Z

    .line 395
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/m;->m:Lcom/google/ads/interactivemedia/v3/a/p;

    invoke-static {v1, v2}, Lcom/google/ads/interactivemedia/v3/a/m;->b(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/a/p;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/m;->v:Z

    .line 397
    :try_start_9e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 398
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x13

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "createByCodecName("

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ")"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/a/f/p;->a(Ljava/lang/String;)V

    .line 399
    invoke-static {v1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/m;->o:Landroid/media/MediaCodec;

    .line 400
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/a/f/p;->a()V

    .line 401
    const-string v2, "configureCodec"

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/a/f/p;->a(Ljava/lang/String;)V

    .line 402
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/m;->o:Landroid/media/MediaCodec;

    iget-boolean v3, v3, Lcom/google/ads/interactivemedia/v3/a/e;->c:Z

    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/a/m;->m:Lcom/google/ads/interactivemedia/v3/a/p;

    invoke-direct {p0, v7}, Lcom/google/ads/interactivemedia/v3/a/m;->b(Lcom/google/ads/interactivemedia/v3/a/p;)Landroid/media/MediaFormat;

    move-result-object v7

    invoke-virtual {p0, v2, v3, v7, v0}, Lcom/google/ads/interactivemedia/v3/a/m;->a(Landroid/media/MediaCodec;ZLandroid/media/MediaFormat;Landroid/media/MediaCrypto;)V

    .line 403
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/a/f/p;->a()V

    .line 404
    const-string v0, "codec.start()"

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/p;->a(Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->o:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 406
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/a/f/p;->a()V

    .line 407
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 408
    sub-long v4, v2, v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/a/m;->a(Ljava/lang/String;JJ)V

    .line 410
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->o:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->y:[Ljava/nio/ByteBuffer;

    .line 411
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->o:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->z:[Ljava/nio/ByteBuffer;
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_10d} :catch_13a

    .line 416
    :goto_10d
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/m;->v()I

    move-result v0

    if-ne v0, v10, :cond_146

    .line 417
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :goto_117
    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->A:J

    .line 418
    iput v8, p0, Lcom/google/ads/interactivemedia/v3/a/m;->B:I

    .line 419
    iput v8, p0, Lcom/google/ads/interactivemedia/v3/a/m;->C:I

    .line 420
    iput-boolean v9, p0, Lcom/google/ads/interactivemedia/v3/a/m;->N:Z

    .line 421
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->a:Lcom/google/ads/interactivemedia/v3/a/c;

    iget v1, v0, Lcom/google/ads/interactivemedia/v3/a/c;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/a/c;->a:I

    goto/16 :goto_a

    .line 378
    :catch_129
    move-exception v1

    .line 379
    new-instance v3, Lcom/google/ads/interactivemedia/v3/a/m$a;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/m;->m:Lcom/google/ads/interactivemedia/v3/a/p;

    const v5, -0xc34e

    invoke-direct {v3, v4, v1, v6, v5}, Lcom/google/ads/interactivemedia/v3/a/m$a;-><init>(Lcom/google/ads/interactivemedia/v3/a/p;Ljava/lang/Throwable;ZI)V

    invoke-direct {p0, v3}, Lcom/google/ads/interactivemedia/v3/a/m;->a(Lcom/google/ads/interactivemedia/v3/a/m$a;)V

    move-object v3, v2

    goto/16 :goto_61

    .line 412
    :catch_13a
    move-exception v0

    .line 413
    new-instance v2, Lcom/google/ads/interactivemedia/v3/a/m$a;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/m;->m:Lcom/google/ads/interactivemedia/v3/a/p;

    invoke-direct {v2, v3, v0, v6, v1}, Lcom/google/ads/interactivemedia/v3/a/m$a;-><init>(Lcom/google/ads/interactivemedia/v3/a/p;Ljava/lang/Throwable;ZLjava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/google/ads/interactivemedia/v3/a/m;->a(Lcom/google/ads/interactivemedia/v3/a/m$a;)V

    goto :goto_10d

    .line 417
    :cond_146
    const-wide/16 v0, -0x1

    goto :goto_117

    :cond_149
    move v6, v0

    move-object v0, v2

    goto/16 :goto_5a
.end method

.method protected k()Z
    .registers 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->o:Landroid/media/MediaCodec;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->m:Lcom/google/ads/interactivemedia/v3/a/p;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected final l()Z
    .registers 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->o:Landroid/media/MediaCodec;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected m()V
    .registers 6

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 461
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->o:Landroid/media/MediaCodec;

    if-eqz v0, :cond_4a

    .line 462
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->A:J

    .line 463
    iput v4, p0, Lcom/google/ads/interactivemedia/v3/a/m;->B:I

    .line 464
    iput v4, p0, Lcom/google/ads/interactivemedia/v3/a/m;->C:I

    .line 465
    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/m;->M:Z

    .line 466
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 467
    iput-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/m;->y:[Ljava/nio/ByteBuffer;

    .line 468
    iput-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/m;->z:[Ljava/nio/ByteBuffer;

    .line 469
    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/m;->E:Z

    .line 470
    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/m;->H:Z

    .line 471
    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/m;->p:Z

    .line 472
    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/m;->q:Z

    .line 473
    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/m;->r:Z

    .line 474
    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/m;->s:Z

    .line 475
    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/m;->t:Z

    .line 476
    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/m;->u:Z

    .line 477
    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/m;->v:Z

    .line 478
    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/m;->w:Z

    .line 479
    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/m;->x:Z

    .line 480
    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/m;->I:Z

    .line 481
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/m;->F:I

    .line 482
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/m;->G:I

    .line 483
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->a:Lcom/google/ads/interactivemedia/v3/a/c;

    iget v1, v0, Lcom/google/ads/interactivemedia/v3/a/c;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/a/c;->b:I

    .line 485
    :try_start_3e
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->o:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_43
    .catchall {:try_start_3e .. :try_end_43} :catchall_4f

    .line 488
    :try_start_43
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->o:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_48
    .catchall {:try_start_43 .. :try_end_48} :catchall_4b

    .line 490
    iput-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/m;->o:Landroid/media/MediaCodec;

    .line 494
    :cond_4a
    return-void

    .line 490
    :catchall_4b
    move-exception v0

    iput-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/m;->o:Landroid/media/MediaCodec;

    throw v0

    .line 487
    :catchall_4f
    move-exception v0

    .line 488
    :try_start_50
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/m;->o:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V
    :try_end_55
    .catchall {:try_start_50 .. :try_end_55} :catchall_58

    .line 490
    iput-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/m;->o:Landroid/media/MediaCodec;

    throw v0

    :catchall_58
    move-exception v0

    iput-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/m;->o:Landroid/media/MediaCodec;

    throw v0
.end method

.method protected n()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/f;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 545
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->A:J

    .line 546
    iput v3, p0, Lcom/google/ads/interactivemedia/v3/a/m;->B:I

    .line 547
    iput v3, p0, Lcom/google/ads/interactivemedia/v3/a/m;->C:I

    .line 548
    iput-boolean v4, p0, Lcom/google/ads/interactivemedia/v3/a/m;->N:Z

    .line 549
    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/m;->M:Z

    .line 550
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 551
    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/m;->w:Z

    .line 552
    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/m;->x:Z

    .line 553
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->r:Z

    if-nez v0, :cond_24

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->u:Z

    if-eqz v0, :cond_35

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->I:Z

    if-eqz v0, :cond_35

    .line 555
    :cond_24
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/m;->m()V

    .line 556
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/m;->j()V

    .line 567
    :goto_2a
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->E:Z

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->m:Lcom/google/ads/interactivemedia/v3/a/p;

    if-eqz v0, :cond_34

    .line 570
    iput v4, p0, Lcom/google/ads/interactivemedia/v3/a/m;->F:I

    .line 572
    :cond_34
    return-void

    .line 557
    :cond_35
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->G:I

    if-eqz v0, :cond_40

    .line 560
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/m;->m()V

    .line 561
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/m;->j()V

    goto :goto_2a

    .line 564
    :cond_40
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->o:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 565
    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/m;->H:Z

    goto :goto_2a
.end method

.method protected final o()I
    .registers 2

    .prologue
    .line 894
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/m;->J:I

    return v0
.end method

.method protected p()J
    .registers 3

    .prologue
    .line 907
    const-wide/16 v0, 0x0

    return-wide v0
.end method
