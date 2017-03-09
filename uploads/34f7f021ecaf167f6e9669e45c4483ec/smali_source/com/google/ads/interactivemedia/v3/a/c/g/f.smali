.class public final Lcom/google/ads/interactivemedia/v3/a/c/g/f;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/a/c/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;,
        Lcom/google/ads/interactivemedia/v3/a/c/g/f$a;
    }
.end annotation


# static fields
.field private static final a:[B

.field private static final b:[B

.field private static final c:Ljava/util/UUID;


# instance fields
.field private A:Z

.field private B:J

.field private C:J

.field private D:J

.field private E:Lcom/google/ads/interactivemedia/v3/a/f/h;

.field private F:Lcom/google/ads/interactivemedia/v3/a/f/h;

.field private G:Z

.field private H:I

.field private I:J

.field private J:J

.field private K:I

.field private L:I

.field private M:[I

.field private N:I

.field private O:I

.field private P:I

.field private Q:I

.field private R:Z

.field private S:Z

.field private T:Z

.field private U:Z

.field private V:B

.field private W:I

.field private X:I

.field private Y:I

.field private Z:Z

.field private aa:Z

.field private ab:Lcom/google/ads/interactivemedia/v3/a/c/g;

.field private final d:Lcom/google/ads/interactivemedia/v3/a/c/g/b;

.field private final e:Lcom/google/ads/interactivemedia/v3/a/c/g/e;

.field private final f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/ads/interactivemedia/v3/a/f/m;

.field private final h:Lcom/google/ads/interactivemedia/v3/a/f/m;

.field private final i:Lcom/google/ads/interactivemedia/v3/a/f/m;

.field private final j:Lcom/google/ads/interactivemedia/v3/a/f/m;

.field private final k:Lcom/google/ads/interactivemedia/v3/a/f/m;

.field private final l:Lcom/google/ads/interactivemedia/v3/a/f/m;

.field private final m:Lcom/google/ads/interactivemedia/v3/a/f/m;

.field private final n:Lcom/google/ads/interactivemedia/v3/a/f/m;

.field private final o:Lcom/google/ads/interactivemedia/v3/a/f/m;

.field private p:Ljava/nio/ByteBuffer;

.field private q:J

.field private r:J

.field private s:J

.field private t:J

.field private u:J

.field private v:Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;

.field private w:Z

.field private x:Z

.field private y:I

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 171
    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_24

    sput-object v0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->a:[B

    .line 179
    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_38

    sput-object v0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->b:[B

    .line 205
    new-instance v0, Ljava/util/UUID;

    const-wide v2, 0x100000000001000L

    const-wide v4, -0x7fffff55ffc7648fL

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->c:Ljava/util/UUID;

    return-void

    .line 171
    :array_24
    .array-data 1
        0x31t
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data

    .line 179
    :array_38
    .array-data 1
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 277
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/c/g/a;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/a/c/g/a;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/c/g/f;-><init>(Lcom/google/ads/interactivemedia/v3/a/c/g/b;)V

    .line 278
    return-void
.end method

.method constructor <init>(Lcom/google/ads/interactivemedia/v3/a/c/g/b;)V
    .registers 6

    .prologue
    const/4 v3, 0x4

    const-wide/16 v0, -0x1

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->q:J

    .line 224
    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->r:J

    .line 225
    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->s:J

    .line 226
    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->t:J

    .line 227
    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->u:J

    .line 242
    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->B:J

    .line 243
    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->C:J

    .line 244
    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->D:J

    .line 281
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->d:Lcom/google/ads/interactivemedia/v3/a/c/g/b;

    .line 282
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->d:Lcom/google/ads/interactivemedia/v3/a/c/g/b;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/c/g/f$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/ads/interactivemedia/v3/a/c/g/f$a;-><init>(Lcom/google/ads/interactivemedia/v3/a/c/g/f;Lcom/google/ads/interactivemedia/v3/a/c/g/f$1;)V

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/c/g/b;->a(Lcom/google/ads/interactivemedia/v3/a/c/g/c;)V

    .line 283
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/c/g/e;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/a/c/g/e;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->e:Lcom/google/ads/interactivemedia/v3/a/c/g/e;

    .line 284
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->f:Landroid/util/SparseArray;

    .line 285
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-direct {v0, v3}, Lcom/google/ads/interactivemedia/v3/a/f/m;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    .line 286
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;-><init>([B)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->j:Lcom/google/ads/interactivemedia/v3/a/f/m;

    .line 287
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-direct {v0, v3}, Lcom/google/ads/interactivemedia/v3/a/f/m;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->k:Lcom/google/ads/interactivemedia/v3/a/f/m;

    .line 288
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f/m;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/a/f/k;->a:[B

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;-><init>([B)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->g:Lcom/google/ads/interactivemedia/v3/a/f/m;

    .line 289
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-direct {v0, v3}, Lcom/google/ads/interactivemedia/v3/a/f/m;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->h:Lcom/google/ads/interactivemedia/v3/a/f/m;

    .line 290
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->l:Lcom/google/ads/interactivemedia/v3/a/f/m;

    .line 291
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->m:Lcom/google/ads/interactivemedia/v3/a/f/m;

    .line 292
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f/m;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->n:Lcom/google/ads/interactivemedia/v3/a/f/m;

    .line 293
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->o:Lcom/google/ads/interactivemedia/v3/a/f/m;

    .line 294
    return-void
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/a/c/f;Lcom/google/ads/interactivemedia/v3/a/c/m;I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->l:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b()I

    move-result v0

    .line 1112
    if-lez v0, :cond_1c

    .line 1113
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1114
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->l:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-interface {p2, v1, v0}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;I)V

    .line 1118
    :goto_11
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->Q:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->Q:I

    .line 1119
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->Y:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->Y:I

    .line 1120
    return v0

    .line 1116
    :cond_1c
    const/4 v0, 0x0

    invoke-interface {p2, p1, p3, v0}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(Lcom/google/ads/interactivemedia/v3/a/c/f;IZ)I

    move-result v0

    goto :goto_11
.end method

.method private a(J)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/r;
        }
    .end annotation

    .prologue
    .line 1186
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->s:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    .line 1187
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    const-string v1, "Can\'t scale timecode prior to timecodeScale being set."

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1189
    :cond_10
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->s:J

    const-wide/16 v4, 0x3e8

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/a/f/q;->a(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a()Ljava/util/UUID;
    .registers 1

    .prologue
    .line 56
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->c:Ljava/util/UUID;

    return-object v0
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/a/c/f;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 891
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c()I

    move-result v0

    if-lt v0, p2, :cond_9

    .line 900
    :goto_8
    return-void

    .line 894
    :cond_9
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->e()I

    move-result v0

    if-ge v0, p2, :cond_2f

    .line 895
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    .line 896
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c()I

    move-result v2

    .line 895
    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->a([BI)V

    .line 898
    :cond_2f
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c()I

    move-result v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c()I

    move-result v2

    sub-int v2, p2, v2

    invoke-interface {p1, v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b([BII)V

    .line 899
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b(I)V

    goto :goto_8
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/a/c/f;Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;I)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 904
    const-string v0, "S_TEXT/UTF8"

    iget-object v3, p2, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 905
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->a:[B

    array-length v0, v0

    add-int/2addr v0, p3

    .line 906
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->m:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->e()I

    move-result v1

    if-ge v1, v0, :cond_28

    .line 909
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->m:Lcom/google/ads/interactivemedia/v3/a/f/m;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->a:[B

    add-int v4, v0, p3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    iput-object v3, v1, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    .line 911
    :cond_28
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->m:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    sget-object v3, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->a:[B

    array-length v3, v3

    invoke-interface {p1, v1, v3, p3}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b([BII)V

    .line 912
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->m:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 913
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->m:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b(I)V

    .line 1061
    :cond_3c
    :goto_3c
    return-void

    .line 919
    :cond_3d
    iget-object v5, p2, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->u:Lcom/google/ads/interactivemedia/v3/a/c/m;

    .line 920
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->R:Z

    if-nez v0, :cond_198

    .line 921
    iget-boolean v0, p2, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->e:Z

    if-eqz v0, :cond_1f8

    .line 924
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->P:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->P:I

    .line 925
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->S:Z

    if-nez v0, :cond_7c

    .line 926
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    invoke-interface {p1, v0, v2, v1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b([BII)V

    .line 927
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->Q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->Q:I

    .line 928
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0x80

    const/16 v3, 0x80

    if-ne v0, v3, :cond_72

    .line 929
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    const-string v1, "Extension bit is set in signal byte"

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 931
    :cond_72
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    aget-byte v0, v0, v2

    iput-byte v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->V:B

    .line 932
    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->S:Z

    .line 934
    :cond_7c
    iget-byte v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->V:B

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_160

    move v0, v1

    .line 935
    :goto_83
    if-eqz v0, :cond_196

    .line 936
    iget-byte v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->V:B

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v8, :cond_163

    move v0, v1

    .line 937
    :goto_8c
    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->P:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->P:I

    .line 938
    iget-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->T:Z

    if-nez v3, :cond_d2

    .line 939
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->n:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    invoke-interface {p1, v3, v2, v6}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b([BII)V

    .line 940
    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->Q:I

    add-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->Q:I

    .line 941
    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->T:Z

    .line 943
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v4, v3, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    if-eqz v0, :cond_166

    const/16 v3, 0x80

    :goto_ad
    or-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v4, v2

    .line 944
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v3, v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 945
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-interface {v5, v3, v1}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;I)V

    .line 946
    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->Y:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->Y:I

    .line 948
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->n:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v3, v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 949
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->n:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-interface {v5, v3, v6}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;I)V

    .line 950
    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->Y:I

    add-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->Y:I

    .line 952
    :cond_d2
    if-eqz v0, :cond_196

    .line 953
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->U:Z

    if-nez v0, :cond_f4

    .line 954
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    invoke-interface {p1, v0, v2, v1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b([BII)V

    .line 955
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->Q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->Q:I

    .line 956
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 957
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->W:I

    .line 958
    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->U:Z

    .line 960
    :cond_f4
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->W:I

    mul-int/lit8 v0, v0, 0x4

    .line 961
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c()I

    move-result v3

    if-ge v3, v0, :cond_107

    .line 962
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    new-array v4, v0, [B

    invoke-virtual {v3, v4, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->a([BI)V

    .line 964
    :cond_107
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    invoke-interface {p1, v3, v2, v0}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b([BII)V

    .line 965
    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->Q:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->Q:I

    .line 966
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v3, v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 967
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v3, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b(I)V

    .line 968
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->W:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    .line 969
    mul-int/lit8 v3, v0, 0x6

    add-int/lit8 v6, v3, 0x2

    .line 970
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->p:Ljava/nio/ByteBuffer;

    if-eqz v3, :cond_134

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->p:Ljava/nio/ByteBuffer;

    .line 971
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ge v3, v6, :cond_13a

    .line 972
    :cond_134
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->p:Ljava/nio/ByteBuffer;

    .line 974
    :cond_13a
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->p:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 975
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->p:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move v0, v2

    move v3, v2

    .line 983
    :goto_146
    iget v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->W:I

    if-ge v0, v4, :cond_171

    .line 985
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/a/f/m;->s()I

    move-result v4

    .line 986
    rem-int/lit8 v7, v0, 0x2

    if-nez v7, :cond_169

    .line 987
    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->p:Ljava/nio/ByteBuffer;

    sub-int v3, v4, v3

    int-to-short v3, v3

    invoke-virtual {v7, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 983
    :goto_15c
    add-int/lit8 v0, v0, 0x1

    move v3, v4

    goto :goto_146

    :cond_160
    move v0, v2

    .line 934
    goto/16 :goto_83

    :cond_163
    move v0, v2

    .line 936
    goto/16 :goto_8c

    :cond_166
    move v3, v2

    .line 943
    goto/16 :goto_ad

    .line 990
    :cond_169
    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->p:Ljava/nio/ByteBuffer;

    sub-int v3, v4, v3

    invoke-virtual {v7, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_15c

    .line 993
    :cond_171
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->Q:I

    sub-int v0, p3, v0

    sub-int/2addr v0, v3

    .line 994
    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->W:I

    rem-int/lit8 v3, v3, 0x2

    if-ne v3, v1, :cond_1ec

    .line 995
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->p:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1000
    :goto_181
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->o:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->p:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v0, v3, v6}, Lcom/google/ads/interactivemedia/v3/a/f/m;->a([BI)V

    .line 1001
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->o:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-interface {v5, v0, v6}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;I)V

    .line 1002
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->Y:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->Y:I

    .line 1009
    :cond_196
    :goto_196
    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->R:Z

    .line 1011
    :cond_198
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->l:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c()I

    move-result v0

    add-int/2addr v0, p3

    .line 1013
    const-string v3, "V_MPEG4/ISO/AVC"

    iget-object v4, p2, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b3

    const-string v3, "V_MPEGH/ISO/HEVC"

    iget-object v4, p2, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_213

    .line 1018
    :cond_1b3
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->h:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    .line 1019
    aput-byte v2, v3, v2

    .line 1020
    aput-byte v2, v3, v1

    .line 1021
    aput-byte v2, v3, v8

    .line 1022
    iget v1, p2, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->v:I

    .line 1023
    iget v4, p2, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->v:I

    rsub-int/lit8 v4, v4, 0x4

    .line 1027
    :goto_1c3
    iget v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->Q:I

    if-ge v6, v0, :cond_21f

    .line 1028
    iget v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->X:I

    if-nez v6, :cond_207

    .line 1030
    invoke-direct {p0, p1, v3, v4, v1}, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->a(Lcom/google/ads/interactivemedia/v3/a/c/f;[BII)V

    .line 1032
    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->h:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v6, v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 1033
    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->h:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/a/f/m;->s()I

    move-result v6

    iput v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->X:I

    .line 1035
    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->g:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v6, v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 1036
    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->g:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-interface {v5, v6, v9}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;I)V

    .line 1037
    iget v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->Y:I

    add-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->Y:I

    goto :goto_1c3

    .line 997
    :cond_1ec
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->p:Ljava/nio/ByteBuffer;

    int-to-short v0, v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 998
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->p:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_181

    .line 1005
    :cond_1f8
    iget-object v0, p2, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->f:[B

    if-eqz v0, :cond_196

    .line 1007
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->l:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v3, p2, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->f:[B

    iget-object v4, p2, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->f:[B

    array-length v4, v4

    invoke-virtual {v0, v3, v4}, Lcom/google/ads/interactivemedia/v3/a/f/m;->a([BI)V

    goto :goto_196

    .line 1040
    :cond_207
    iget v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->X:I

    iget v7, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->X:I

    .line 1041
    invoke-direct {p0, p1, v5, v7}, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->a(Lcom/google/ads/interactivemedia/v3/a/c/f;Lcom/google/ads/interactivemedia/v3/a/c/m;I)I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->X:I

    goto :goto_1c3

    .line 1045
    :cond_213
    :goto_213
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->Q:I

    if-ge v1, v0, :cond_21f

    .line 1046
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->Q:I

    sub-int v1, v0, v1

    invoke-direct {p0, p1, v5, v1}, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->a(Lcom/google/ads/interactivemedia/v3/a/c/f;Lcom/google/ads/interactivemedia/v3/a/c/m;I)I

    goto :goto_213

    .line 1050
    :cond_21f
    const-string v0, "A_VORBIS"

    iget-object v1, p2, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1057
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->j:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 1058
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->j:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-interface {v5, v0, v9}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;I)V

    .line 1059
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->Y:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->Y:I

    goto/16 :goto_3c
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/a/c/f;[BII)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->l:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b()I

    move-result v0

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1097
    add-int v1, p3, v0

    sub-int v2, p4, v0

    invoke-interface {p1, p2, v1, v2}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b([BII)V

    .line 1098
    if-lez v0, :cond_18

    .line 1099
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->l:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v1, p2, p3, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->a([BII)V

    .line 1101
    :cond_18
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->Q:I

    add-int/2addr v0, p4

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->Q:I

    .line 1102
    return-void
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;)V
    .registers 6

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->m:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->J:J

    invoke-static {v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->a([BJ)V

    .line 1067
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->u:Lcom/google/ads/interactivemedia/v3/a/c/m;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->m:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->m:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;I)V

    .line 1068
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->Y:I

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->m:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->Y:I

    .line 1069
    return-void
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;J)V
    .registers 12

    .prologue
    .line 864
    const-string v0, "S_TEXT/UTF8"

    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 865
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->a(Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;)V

    .line 867
    :cond_d
    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->u:Lcom/google/ads/interactivemedia/v3/a/c/m;

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->P:I

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->Y:I

    const/4 v6, 0x0

    iget-object v7, p1, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->g:[B

    move-wide v2, p2

    invoke-interface/range {v1 .. v7}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(JIII[B)V

    .line 868
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->Z:Z

    .line 869
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->d()V

    .line 870
    return-void
.end method

.method private static a([BJ)V
    .registers 12

    .prologue
    const-wide v4, 0xd693a400L

    const/4 v8, 0x0

    .line 1073
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    .line 1074
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->b:[B

    .line 1086
    :goto_e
    const/16 v1, 0x13

    const/16 v2, 0xc

    invoke-static {v0, v8, p0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1088
    return-void

    .line 1076
    :cond_16
    div-long v0, p1, v4

    long-to-int v0, v0

    .line 1077
    int-to-long v2, v0

    mul-long/2addr v2, v4

    sub-long v2, p1, v2

    .line 1078
    const-wide/32 v4, 0x3938700

    div-long v4, v2, v4

    long-to-int v1, v4

    .line 1079
    const v4, 0x3938700

    mul-int/2addr v4, v1

    int-to-long v4, v4

    sub-long/2addr v2, v4

    .line 1080
    const-wide/32 v4, 0xf4240

    div-long v4, v2, v4

    long-to-int v4, v4

    .line 1081
    const v5, 0xf4240

    mul-int/2addr v5, v4

    int-to-long v6, v5

    sub-long/2addr v2, v6

    .line 1082
    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    long-to-int v2, v2

    .line 1083
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%02d:%02d:%02d,%03d"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    .line 1084
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v8

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    const/4 v0, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    .line 1083
    invoke-static {v3, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1084
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_e
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/a/c/j;J)Z
    .registers 10

    .prologue
    const-wide/16 v4, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1169
    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->A:Z

    if-eqz v2, :cond_11

    .line 1170
    iput-wide p2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->C:J

    .line 1171
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->B:J

    iput-wide v2, p1, Lcom/google/ads/interactivemedia/v3/a/c/j;->a:J

    .line 1172
    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->A:Z

    .line 1182
    :goto_10
    return v0

    .line 1177
    :cond_11
    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->x:Z

    if-eqz v2, :cond_22

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->C:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_22

    .line 1178
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->C:J

    iput-wide v2, p1, Lcom/google/ads/interactivemedia/v3/a/c/j;->a:J

    .line 1179
    iput-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->C:J

    goto :goto_10

    :cond_22
    move v0, v1

    .line 1182
    goto :goto_10
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 1193
    const-string v0, "V_VP8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    const-string v0, "V_VP9"

    .line 1194
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    const-string v0, "V_MPEG2"

    .line 1195
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    const-string v0, "V_MPEG4/ISO/SP"

    .line 1196
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    const-string v0, "V_MPEG4/ISO/ASP"

    .line 1197
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    const-string v0, "V_MPEG4/ISO/AP"

    .line 1198
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    const-string v0, "V_MPEG4/ISO/AVC"

    .line 1199
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    const-string v0, "V_MPEGH/ISO/HEVC"

    .line 1200
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    const-string v0, "V_MS/VFW/FOURCC"

    .line 1201
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    const-string v0, "A_OPUS"

    .line 1202
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    const-string v0, "A_VORBIS"

    .line 1203
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    const-string v0, "A_AAC"

    .line 1204
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    const-string v0, "A_MPEG/L3"

    .line 1205
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    const-string v0, "A_AC3"

    .line 1206
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    const-string v0, "A_EAC3"

    .line 1207
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    const-string v0, "A_TRUEHD"

    .line 1208
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    const-string v0, "A_DTS"

    .line 1209
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    const-string v0, "A_DTS/EXPRESS"

    .line 1210
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    const-string v0, "A_DTS/LOSSLESS"

    .line 1211
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    const-string v0, "A_FLAC"

    .line 1212
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    const-string v0, "A_MS/ACM"

    .line 1213
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    const-string v0, "A_PCM/INT/LIT"

    .line 1214
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    const-string v0, "S_TEXT/UTF8"

    .line 1215
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    const-string v0, "S_VOBSUB"

    .line 1216
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    const-string v0, "S_HDMV/PGS"

    .line 1217
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ca

    :cond_c8
    const/4 v0, 0x1

    .line 1193
    :goto_c9
    return v0

    .line 1217
    :cond_ca
    const/4 v0, 0x0

    goto :goto_c9
.end method

.method private static a([II)[I
    .registers 3

    .prologue
    .line 1225
    if-nez p0, :cond_5

    .line 1226
    new-array p0, p1, [I

    .line 1231
    :cond_4
    :goto_4
    return-object p0

    .line 1227
    :cond_5
    array-length v0, p0

    if-ge v0, p1, :cond_4

    .line 1231
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array p0, v0, [I

    goto :goto_4
.end method

.method private d()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 873
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->Q:I

    .line 874
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->Y:I

    .line 875
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->X:I

    .line 876
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->R:Z

    .line 877
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->S:Z

    .line 878
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->U:Z

    .line 879
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->W:I

    .line 880
    iput-byte v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->V:B

    .line 881
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->T:Z

    .line 882
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->l:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->a()V

    .line 883
    return-void
.end method

.method private e()Lcom/google/ads/interactivemedia/v3/a/c/l;
    .registers 14

    .prologue
    const-wide/16 v4, -0x1

    const/4 v0, 0x0

    const/4 v12, 0x0

    .line 1130
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->q:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2e

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->u:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->E:Lcom/google/ads/interactivemedia/v3/a/f/h;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->E:Lcom/google/ads/interactivemedia/v3/a/f/h;

    .line 1131
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/a/f/h;->a()I

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->F:Lcom/google/ads/interactivemedia/v3/a/f/h;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->F:Lcom/google/ads/interactivemedia/v3/a/f/h;

    .line 1132
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/a/f/h;->a()I

    move-result v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->E:Lcom/google/ads/interactivemedia/v3/a/f/h;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/a/f/h;->a()I

    move-result v2

    if-eq v1, v2, :cond_35

    .line 1134
    :cond_2e
    iput-object v12, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->E:Lcom/google/ads/interactivemedia/v3/a/f/h;

    .line 1135
    iput-object v12, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->F:Lcom/google/ads/interactivemedia/v3/a/f/h;

    .line 1136
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/c/l;->f:Lcom/google/ads/interactivemedia/v3/a/c/l;

    .line 1156
    :goto_34
    return-object v0

    .line 1138
    :cond_35
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->E:Lcom/google/ads/interactivemedia/v3/a/f/h;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/a/f/h;->a()I

    move-result v2

    .line 1139
    new-array v3, v2, [I

    .line 1140
    new-array v4, v2, [J

    .line 1141
    new-array v5, v2, [J

    .line 1142
    new-array v6, v2, [J

    move v1, v0

    .line 1143
    :goto_44
    if-ge v1, v2, :cond_5c

    .line 1144
    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->E:Lcom/google/ads/interactivemedia/v3/a/f/h;

    invoke-virtual {v7, v1}, Lcom/google/ads/interactivemedia/v3/a/f/h;->a(I)J

    move-result-wide v8

    aput-wide v8, v6, v1

    .line 1145
    iget-wide v8, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->q:J

    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->F:Lcom/google/ads/interactivemedia/v3/a/f/h;

    invoke-virtual {v7, v1}, Lcom/google/ads/interactivemedia/v3/a/f/h;->a(I)J

    move-result-wide v10

    add-long/2addr v8, v10

    aput-wide v8, v4, v1

    .line 1143
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 1147
    :cond_5c
    :goto_5c
    add-int/lit8 v1, v2, -0x1

    if-ge v0, v1, :cond_76

    .line 1148
    add-int/lit8 v1, v0, 0x1

    aget-wide v8, v4, v1

    aget-wide v10, v4, v0

    sub-long/2addr v8, v10

    long-to-int v1, v8

    aput v1, v3, v0

    .line 1149
    add-int/lit8 v1, v0, 0x1

    aget-wide v8, v6, v1

    aget-wide v10, v6, v0

    sub-long/2addr v8, v10

    aput-wide v8, v5, v0

    .line 1147
    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    .line 1151
    :cond_76
    add-int/lit8 v0, v2, -0x1

    iget-wide v8, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->q:J

    iget-wide v10, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->r:J

    add-long/2addr v8, v10

    add-int/lit8 v1, v2, -0x1

    aget-wide v10, v4, v1

    sub-long/2addr v8, v10

    long-to-int v1, v8

    aput v1, v3, v0

    .line 1153
    add-int/lit8 v0, v2, -0x1

    iget-wide v8, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->u:J

    add-int/lit8 v1, v2, -0x1

    aget-wide v10, v6, v1

    sub-long/2addr v8, v10

    aput-wide v8, v5, v0

    .line 1154
    iput-object v12, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->E:Lcom/google/ads/interactivemedia/v3/a/f/h;

    .line 1155
    iput-object v12, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->F:Lcom/google/ads/interactivemedia/v3/a/f/h;

    .line 1156
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/c/a;

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/google/ads/interactivemedia/v3/a/c/a;-><init>([I[J[J[J)V

    goto :goto_34
.end method


# virtual methods
.method a(I)I
    .registers 3

    .prologue
    .line 335
    sparse-switch p1, :sswitch_data_10

    .line 401
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 356
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 384
    :sswitch_7
    const/4 v0, 0x2

    goto :goto_4

    .line 388
    :sswitch_9
    const/4 v0, 0x3

    goto :goto_4

    .line 396
    :sswitch_b
    const/4 v0, 0x4

    goto :goto_4

    .line 399
    :sswitch_d
    const/4 v0, 0x5

    goto :goto_4

    .line 335
    nop

    :sswitch_data_10
    .sparse-switch
        0x83 -> :sswitch_7
        0x86 -> :sswitch_9
        0x9b -> :sswitch_7
        0x9f -> :sswitch_7
        0xa0 -> :sswitch_5
        0xa1 -> :sswitch_b
        0xa3 -> :sswitch_b
        0xae -> :sswitch_5
        0xb0 -> :sswitch_7
        0xb3 -> :sswitch_7
        0xb5 -> :sswitch_d
        0xb7 -> :sswitch_5
        0xba -> :sswitch_7
        0xbb -> :sswitch_5
        0xd7 -> :sswitch_7
        0xe0 -> :sswitch_5
        0xe1 -> :sswitch_5
        0xe7 -> :sswitch_7
        0xf1 -> :sswitch_7
        0xfb -> :sswitch_7
        0x4254 -> :sswitch_7
        0x4255 -> :sswitch_b
        0x4282 -> :sswitch_9
        0x4285 -> :sswitch_7
        0x42f7 -> :sswitch_7
        0x4489 -> :sswitch_d
        0x47e1 -> :sswitch_7
        0x47e2 -> :sswitch_b
        0x47e7 -> :sswitch_5
        0x47e8 -> :sswitch_7
        0x4dbb -> :sswitch_5
        0x5031 -> :sswitch_7
        0x5032 -> :sswitch_7
        0x5034 -> :sswitch_5
        0x5035 -> :sswitch_5
        0x53ab -> :sswitch_b
        0x53ac -> :sswitch_7
        0x53b8 -> :sswitch_7
        0x54b0 -> :sswitch_7
        0x54b2 -> :sswitch_7
        0x54ba -> :sswitch_7
        0x56aa -> :sswitch_7
        0x56bb -> :sswitch_7
        0x6240 -> :sswitch_5
        0x6264 -> :sswitch_7
        0x63a2 -> :sswitch_b
        0x6d80 -> :sswitch_5
        0x7670 -> :sswitch_5
        0x7672 -> :sswitch_b
        0x22b59c -> :sswitch_9
        0x23e383 -> :sswitch_7
        0x2ad7b1 -> :sswitch_7
        0x114d9b74 -> :sswitch_5
        0x1549a966 -> :sswitch_5
        0x1654ae6b -> :sswitch_5
        0x18538067 -> :sswitch_5
        0x1a45dfa3 -> :sswitch_5
        0x1c53bb6b -> :sswitch_5
        0x1f43b675 -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/a/c/f;Lcom/google/ads/interactivemedia/v3/a/c/j;)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 323
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->Z:Z

    move v2, v1

    .line 325
    :cond_5
    if-eqz v2, :cond_1f

    iget-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->Z:Z

    if-nez v3, :cond_1f

    .line 326
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->d:Lcom/google/ads/interactivemedia/v3/a/c/g/b;

    invoke-interface {v2, p1}, Lcom/google/ads/interactivemedia/v3/a/c/g/b;->a(Lcom/google/ads/interactivemedia/v3/a/c/f;)Z

    move-result v2

    .line 327
    if-eqz v2, :cond_5

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c()J

    move-result-wide v4

    invoke-direct {p0, p2, v4, v5}, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->a(Lcom/google/ads/interactivemedia/v3/a/c/j;J)Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v1

    .line 331
    :cond_1e
    :goto_1e
    return v0

    :cond_1f
    if-nez v2, :cond_1e

    const/4 v0, -0x1

    goto :goto_1e
.end method

.method a(ID)V
    .registers 6

    .prologue
    .line 668
    sparse-switch p1, :sswitch_data_e

    .line 676
    :goto_3
    return-void

    .line 670
    :sswitch_4
    double-to-long v0, p2

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->t:J

    goto :goto_3

    .line 673
    :sswitch_8
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->v:Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;

    double-to-int v1, p2

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->r:I

    goto :goto_3

    .line 668
    :sswitch_data_e
    .sparse-switch
        0xb5 -> :sswitch_8
        0x4489 -> :sswitch_4
    .end sparse-switch
.end method

.method a(IILcom/google/ads/interactivemedia/v3/a/c/f;)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 701
    sparse-switch p1, :sswitch_data_308

    .line 859
    new-instance v2, Lcom/google/ads/interactivemedia/v3/a/r;

    const/16 v3, 0x1a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected id: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v2

    .line 703
    :sswitch_20
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->k:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 704
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->k:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    rsub-int/lit8 v3, p2, 0x4

    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-interface {v0, v2, v3, v1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b([BII)V

    .line 705
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->k:Lcom/google/ads/interactivemedia/v3/a/f/m;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 706
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->k:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->k()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->y:I

    .line 857
    :goto_44
    return-void

    .line 709
    :sswitch_45
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->v:Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;

    move/from16 v0, p2

    new-array v3, v0, [B

    iput-object v3, v2, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->h:[B

    .line 710
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->v:Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->h:[B

    const/4 v3, 0x0

    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-interface {v0, v2, v3, v1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b([BII)V

    goto :goto_44

    .line 713
    :sswitch_5a
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->v:Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;

    move/from16 v0, p2

    new-array v3, v0, [B

    iput-object v3, v2, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->n:[B

    .line 714
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->v:Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->n:[B

    const/4 v3, 0x0

    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-interface {v0, v2, v3, v1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b([BII)V

    goto :goto_44

    .line 718
    :sswitch_6f
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->v:Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;

    move/from16 v0, p2

    new-array v3, v0, [B

    iput-object v3, v2, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->f:[B

    .line 719
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->v:Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->f:[B

    const/4 v3, 0x0

    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-interface {v0, v2, v3, v1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b([BII)V

    goto :goto_44

    .line 722
    :sswitch_84
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->v:Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;

    move/from16 v0, p2

    new-array v3, v0, [B

    iput-object v3, v2, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->g:[B

    .line 723
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->v:Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->g:[B

    const/4 v3, 0x0

    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-interface {v0, v2, v3, v1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b([BII)V

    goto :goto_44

    .line 732
    :sswitch_99
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->H:I

    if-nez v2, :cond_c0

    .line 733
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->e:Lcom/google/ads/interactivemedia/v3/a/c/g/e;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x8

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/a/c/g/e;->a(Lcom/google/ads/interactivemedia/v3/a/c/f;ZZI)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->N:I

    .line 734
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->e:Lcom/google/ads/interactivemedia/v3/a/c/g/e;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/a/c/g/e;->b()I

    move-result v2

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->O:I

    .line 735
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->J:J

    .line 736
    const/4 v2, 0x1

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->H:I

    .line 737
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->a()V

    .line 740
    :cond_c0
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->f:Landroid/util/SparseArray;

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->N:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;

    .line 743
    if-nez v2, :cond_da

    .line 744
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->O:I

    sub-int v2, p2, v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b(I)V

    .line 745
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->H:I

    goto/16 :goto_44

    .line 749
    :cond_da
    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->H:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_15d

    .line 751
    const/4 v3, 0x3

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v3}, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->a(Lcom/google/ads/interactivemedia/v3/a/c/f;I)V

    .line 752
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    and-int/lit8 v3, v3, 0x6

    shr-int/lit8 v3, v3, 0x1

    .line 753
    if-nez v3, :cond_189

    .line 754
    const/4 v3, 0x1

    iput v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->L:I

    .line 755
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->M:[I

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->a([II)[I

    move-result-object v3

    iput-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->M:[I

    .line 756
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->M:[I

    const/4 v4, 0x0

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->O:I

    sub-int v5, p2, v5

    add-int/lit8 v5, v5, -0x3

    aput v5, v3, v4

    .line 830
    :goto_109
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    shl-int/lit8 v3, v3, 0x8

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v4, v4, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    .line 831
    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->D:J

    int-to-long v6, v3

    invoke-direct {p0, v6, v7}, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->a(J)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->I:J

    .line 832
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2eb

    const/4 v3, 0x1

    .line 833
    :goto_134
    iget v4, v2, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->c:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_14c

    const/16 v4, 0xa3

    move/from16 v0, p1

    if-ne v0, v4, :cond_2ee

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v4, v4, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_2ee

    :cond_14c
    const/4 v4, 0x1

    .line 835
    :goto_14d
    if-eqz v4, :cond_2f1

    const/4 v4, 0x1

    :goto_150
    if-eqz v3, :cond_2f4

    .line 836
    const/high16 v3, 0x8000000

    :goto_154
    or-int/2addr v3, v4

    iput v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->P:I

    .line 837
    const/4 v3, 0x2

    iput v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->H:I

    .line 838
    const/4 v3, 0x0

    iput v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->K:I

    .line 841
    :cond_15d
    const/16 v3, 0xa3

    move/from16 v0, p1

    if-ne v0, v3, :cond_2fc

    .line 843
    :goto_163
    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->K:I

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->L:I

    if-ge v3, v4, :cond_2f7

    .line 844
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->M:[I

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->K:I

    aget v3, v3, v4

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->a(Lcom/google/ads/interactivemedia/v3/a/c/f;Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;I)V

    .line 845
    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->I:J

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->K:I

    iget v6, v2, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->d:I

    mul-int/2addr v3, v6

    div-int/lit16 v3, v3, 0x3e8

    int-to-long v6, v3

    add-long/2addr v4, v6

    .line 847
    invoke-direct {p0, v2, v4, v5}, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->a(Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;J)V

    .line 848
    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->K:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->K:I

    goto :goto_163

    .line 758
    :cond_189
    const/16 v4, 0xa3

    move/from16 v0, p1

    if-eq v0, v4, :cond_197

    .line 759
    new-instance v2, Lcom/google/ads/interactivemedia/v3/a/r;

    const-string v3, "Lacing only supported in SimpleBlocks."

    invoke-direct {v2, v3}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v2

    .line 763
    :cond_197
    const/4 v4, 0x4

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v4}, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->a(Lcom/google/ads/interactivemedia/v3/a/c/f;I)V

    .line 764
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v4, v4, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->L:I

    .line 765
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->M:[I

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->L:I

    .line 766
    invoke-static {v4, v5}, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->a([II)[I

    move-result-object v4

    iput-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->M:[I

    .line 767
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1ca

    .line 768
    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->O:I

    sub-int v3, p2, v3

    add-int/lit8 v3, v3, -0x4

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->L:I

    div-int/2addr v3, v4

    .line 770
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->M:[I

    const/4 v5, 0x0

    iget v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->L:I

    invoke-static {v4, v5, v6, v3}, Ljava/util/Arrays;->fill([IIII)V

    goto/16 :goto_109

    .line 771
    :cond_1ca
    const/4 v4, 0x1

    if-ne v3, v4, :cond_210

    .line 772
    const/4 v5, 0x0

    .line 773
    const/4 v4, 0x4

    .line 774
    const/4 v3, 0x0

    :goto_1d0
    iget v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->L:I

    add-int/lit8 v6, v6, -0x1

    if-ge v3, v6, :cond_1ff

    .line 775
    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->M:[I

    const/4 v7, 0x0

    aput v7, v6, v3

    .line 778
    :cond_1db
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v4}, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->a(Lcom/google/ads/interactivemedia/v3/a/c/f;I)V

    .line 779
    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v6, v6, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    add-int/lit8 v7, v4, -0x1

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    .line 780
    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->M:[I

    aget v8, v7, v3

    add-int/2addr v8, v6

    aput v8, v7, v3

    .line 781
    const/16 v7, 0xff

    if-eq v6, v7, :cond_1db

    .line 782
    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->M:[I

    aget v6, v6, v3

    add-int/2addr v5, v6

    .line 774
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d0

    .line 784
    :cond_1ff
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->M:[I

    iget v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->L:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->O:I

    sub-int v7, p2, v7

    sub-int v4, v7, v4

    sub-int/2addr v4, v5

    aput v4, v3, v6

    goto/16 :goto_109

    .line 786
    :cond_210
    const/4 v4, 0x3

    if-ne v3, v4, :cond_2d0

    .line 787
    const/4 v5, 0x0

    .line 788
    const/4 v4, 0x4

    .line 789
    const/4 v3, 0x0

    :goto_216
    iget v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->L:I

    add-int/lit8 v6, v6, -0x1

    if-ge v3, v6, :cond_2bf

    .line 790
    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->M:[I

    const/4 v7, 0x0

    aput v7, v6, v3

    .line 791
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v4}, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->a(Lcom/google/ads/interactivemedia/v3/a/c/f;I)V

    .line 792
    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v6, v6, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    add-int/lit8 v7, v4, -0x1

    aget-byte v6, v6, v7

    if-nez v6, :cond_23a

    .line 793
    new-instance v2, Lcom/google/ads/interactivemedia/v3/a/r;

    const-string v3, "No valid varint length mask found"

    invoke-direct {v2, v3}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v2

    .line 795
    :cond_23a
    const-wide/16 v6, 0x0

    .line 796
    const/4 v8, 0x0

    move v10, v8

    :goto_23e
    const/16 v8, 0x8

    if-ge v10, v8, :cond_28d

    .line 797
    const/4 v8, 0x1

    rsub-int/lit8 v9, v10, 0x7

    shl-int/2addr v8, v9

    .line 798
    iget-object v9, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v9, v9, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    add-int/lit8 v11, v4, -0x1

    aget-byte v9, v9, v11

    and-int/2addr v9, v8

    if-eqz v9, :cond_2a3

    .line 799
    add-int/lit8 v7, v4, -0x1

    .line 800
    add-int/2addr v4, v10

    .line 801
    move-object/from16 v0, p3

    invoke-direct {p0, v0, v4}, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->a(Lcom/google/ads/interactivemedia/v3/a/c/f;I)V

    .line 802
    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v9, v6, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    add-int/lit8 v6, v7, 0x1

    aget-byte v7, v9, v7

    and-int/lit16 v7, v7, 0xff

    xor-int/lit8 v8, v8, -0x1

    and-int/2addr v7, v8

    int-to-long v8, v7

    move v14, v6

    move-wide v6, v8

    move v8, v14

    .line 803
    :goto_26a
    if-ge v8, v4, :cond_280

    .line 804
    const/16 v9, 0x8

    shl-long v12, v6, v9

    .line 805
    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v7, v6, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    add-int/lit8 v6, v8, 0x1

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    int-to-long v8, v7

    or-long/2addr v8, v12

    move v14, v6

    move-wide v6, v8

    move v8, v14

    goto :goto_26a

    .line 808
    :cond_280
    if-lez v3, :cond_28d

    .line 809
    const-wide/16 v8, 0x1

    mul-int/lit8 v10, v10, 0x7

    add-int/lit8 v10, v10, 0x6

    shl-long/2addr v8, v10

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    sub-long/2addr v6, v8

    .line 814
    :cond_28d
    const-wide/32 v8, -0x80000000

    cmp-long v8, v6, v8

    if-ltz v8, :cond_29b

    const-wide/32 v8, 0x7fffffff

    cmp-long v8, v6, v8

    if-lez v8, :cond_2a7

    .line 815
    :cond_29b
    new-instance v2, Lcom/google/ads/interactivemedia/v3/a/r;

    const-string v3, "EBML lacing sample size out of range."

    invoke-direct {v2, v3}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v2

    .line 796
    :cond_2a3
    add-int/lit8 v8, v10, 0x1

    move v10, v8

    goto :goto_23e

    .line 817
    :cond_2a7
    long-to-int v6, v6

    .line 818
    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->M:[I

    if-nez v3, :cond_2b7

    .line 819
    :goto_2ac
    aput v6, v7, v3

    .line 820
    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->M:[I

    aget v6, v6, v3

    add-int/2addr v5, v6

    .line 789
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_216

    .line 819
    :cond_2b7
    iget-object v8, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->M:[I

    add-int/lit8 v9, v3, -0x1

    aget v8, v8, v9

    add-int/2addr v6, v8

    goto :goto_2ac

    .line 822
    :cond_2bf
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->M:[I

    iget v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->L:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->O:I

    sub-int v7, p2, v7

    sub-int v4, v7, v4

    sub-int/2addr v4, v5

    aput v4, v3, v6

    goto/16 :goto_109

    .line 826
    :cond_2d0
    new-instance v2, Lcom/google/ads/interactivemedia/v3/a/r;

    const/16 v4, 0x24

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unexpected lacing value: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v2

    .line 832
    :cond_2eb
    const/4 v3, 0x0

    goto/16 :goto_134

    .line 833
    :cond_2ee
    const/4 v4, 0x0

    goto/16 :goto_14d

    .line 835
    :cond_2f1
    const/4 v4, 0x0

    goto/16 :goto_150

    .line 836
    :cond_2f4
    const/4 v3, 0x0

    goto/16 :goto_154

    .line 850
    :cond_2f7
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->H:I

    goto/16 :goto_44

    .line 854
    :cond_2fc
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->M:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->a(Lcom/google/ads/interactivemedia/v3/a/c/f;Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;I)V

    goto/16 :goto_44

    .line 701
    :sswitch_data_308
    .sparse-switch
        0xa1 -> :sswitch_99
        0xa3 -> :sswitch_99
        0x4255 -> :sswitch_6f
        0x47e2 -> :sswitch_84
        0x53ab -> :sswitch_20
        0x63a2 -> :sswitch_45
        0x7672 -> :sswitch_5a
    .end sparse-switch
.end method

.method a(IJ)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/r;
        }
    .end annotation

    .prologue
    const/16 v4, 0x37

    const/16 v3, 0x32

    const/4 v2, 0x1

    const-wide/16 v0, 0x1

    .line 538
    sparse-switch p1, :sswitch_data_1ae

    .line 663
    :cond_a
    :goto_a
    return-void

    .line 541
    :sswitch_b
    cmp-long v0, p2, v0

    if-eqz v0, :cond_a

    .line 542
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "EBMLReadVersion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 547
    :sswitch_2e
    cmp-long v0, p2, v0

    if-ltz v0, :cond_38

    const-wide/16 v0, 0x2

    cmp-long v0, p2, v0

    if-lez v0, :cond_a

    .line 548
    :cond_38
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    const/16 v1, 0x35

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "DocTypeReadVersion "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 554
    :sswitch_59
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->q:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->z:J

    goto :goto_a

    .line 557
    :sswitch_5f
    iput-wide p2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->s:J

    goto :goto_a

    .line 560
    :sswitch_62
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->v:Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->i:I

    goto :goto_a

    .line 563
    :sswitch_68
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->v:Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->j:I

    goto :goto_a

    .line 566
    :sswitch_6e
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->v:Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->k:I

    goto :goto_a

    .line 569
    :sswitch_74
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->v:Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->l:I

    goto :goto_a

    .line 572
    :sswitch_7a
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->v:Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->m:I

    goto :goto_a

    .line 575
    :sswitch_80
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->v:Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->b:I

    goto :goto_a

    .line 578
    :sswitch_86
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->v:Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->c:I

    goto/16 :goto_a

    .line 581
    :sswitch_8d
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->v:Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->d:I

    goto/16 :goto_a

    .line 584
    :sswitch_94
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->v:Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;

    iput-wide p2, v0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->s:J

    goto/16 :goto_a

    .line 587
    :sswitch_9a
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->v:Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;

    iput-wide p2, v0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->t:J

    goto/16 :goto_a

    .line 590
    :sswitch_a0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->v:Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->p:I

    goto/16 :goto_a

    .line 593
    :sswitch_a7
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->v:Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->q:I

    goto/16 :goto_a

    .line 596
    :sswitch_ae
    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->aa:Z

    goto/16 :goto_a

    .line 600
    :sswitch_b2
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_a

    .line 601
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "ContentEncodingOrder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 606
    :sswitch_d7
    cmp-long v0, p2, v0

    if-eqz v0, :cond_a

    .line 607
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "ContentEncodingScope "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 612
    :sswitch_fa
    const-wide/16 v0, 0x3

    cmp-long v0, p2, v0

    if-eqz v0, :cond_a

    .line 613
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "ContentCompAlgo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 618
    :sswitch_11f
    const-wide/16 v0, 0x5

    cmp-long v0, p2, v0

    if-eqz v0, :cond_a

    .line 619
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    const/16 v1, 0x31

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ContentEncAlgo "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 624
    :sswitch_146
    cmp-long v0, p2, v0

    if-eqz v0, :cond_a

    .line 625
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    const/16 v1, 0x38

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "AESSettingsCipherMode "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 629
    :sswitch_16b
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->E:Lcom/google/ads/interactivemedia/v3/a/f/h;

    invoke-direct {p0, p2, p3}, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->a(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/a/f/h;->a(J)V

    goto/16 :goto_a

    .line 632
    :sswitch_176
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->G:Z

    if-nez v0, :cond_a

    .line 636
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->F:Lcom/google/ads/interactivemedia/v3/a/f/h;

    invoke-virtual {v0, p2, p3}, Lcom/google/ads/interactivemedia/v3/a/f/h;->a(J)V

    .line 637
    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->G:Z

    goto/16 :goto_a

    .line 641
    :sswitch_183
    invoke-direct {p0, p2, p3}, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->a(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->D:J

    goto/16 :goto_a

    .line 644
    :sswitch_18b
    invoke-direct {p0, p2, p3}, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->a(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->J:J

    goto/16 :goto_a

    .line 647
    :sswitch_193
    long-to-int v0, p2

    .line 648
    packed-switch v0, :pswitch_data_21c

    :pswitch_197
    goto/16 :goto_a

    .line 650
    :pswitch_199
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->v:Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->o:I

    goto/16 :goto_a

    .line 653
    :pswitch_1a0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->v:Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;

    const/4 v1, 0x2

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->o:I

    goto/16 :goto_a

    .line 656
    :pswitch_1a7
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->v:Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;

    iput v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->o:I

    goto/16 :goto_a

    .line 538
    nop

    :sswitch_data_1ae
    .sparse-switch
        0x83 -> :sswitch_86
        0x9b -> :sswitch_18b
        0x9f -> :sswitch_a0
        0xb0 -> :sswitch_62
        0xb3 -> :sswitch_16b
        0xba -> :sswitch_68
        0xd7 -> :sswitch_80
        0xe7 -> :sswitch_183
        0xf1 -> :sswitch_176
        0xfb -> :sswitch_ae
        0x4254 -> :sswitch_fa
        0x4285 -> :sswitch_2e
        0x42f7 -> :sswitch_b
        0x47e1 -> :sswitch_11f
        0x47e8 -> :sswitch_146
        0x5031 -> :sswitch_b2
        0x5032 -> :sswitch_d7
        0x53ac -> :sswitch_59
        0x53b8 -> :sswitch_193
        0x54b0 -> :sswitch_6e
        0x54b2 -> :sswitch_7a
        0x54ba -> :sswitch_74
        0x56aa -> :sswitch_94
        0x56bb -> :sswitch_9a
        0x6264 -> :sswitch_a7
        0x23e383 -> :sswitch_8d
        0x2ad7b1 -> :sswitch_5f
    .end sparse-switch

    .line 648
    :pswitch_data_21c
    .packed-switch 0x0
        :pswitch_199
        :pswitch_1a0
        :pswitch_197
        :pswitch_1a7
    .end packed-switch
.end method

.method a(IJJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/r;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const-wide/16 v4, -0x1

    const/4 v2, 0x1

    .line 411
    sparse-switch p1, :sswitch_data_62

    .line 457
    :cond_7
    :goto_7
    :sswitch_7
    return-void

    .line 413
    :sswitch_8
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->q:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1c

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->q:J

    cmp-long v0, v0, p2

    if-eqz v0, :cond_1c

    .line 414
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    const-string v1, "Multiple Segment elements not supported"

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :cond_1c
    iput-wide p2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->q:J

    .line 417
    iput-wide p4, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->r:J

    goto :goto_7

    .line 420
    :sswitch_21
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->y:I

    .line 421
    iput-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->z:J

    goto :goto_7

    .line 424
    :sswitch_27
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f/h;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/a/f/h;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->E:Lcom/google/ads/interactivemedia/v3/a/f/h;

    .line 425
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f/h;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/a/f/h;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->F:Lcom/google/ads/interactivemedia/v3/a/f/h;

    goto :goto_7

    .line 428
    :sswitch_36
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->G:Z

    goto :goto_7

    .line 431
    :sswitch_39
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->x:Z

    if-nez v0, :cond_7

    .line 433
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->B:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_46

    .line 435
    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->A:Z

    goto :goto_7

    .line 439
    :cond_46
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->ab:Lcom/google/ads/interactivemedia/v3/a/c/g;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/a/c/l;->f:Lcom/google/ads/interactivemedia/v3/a/c/l;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/c/g;->a(Lcom/google/ads/interactivemedia/v3/a/c/l;)V

    .line 440
    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->x:Z

    goto :goto_7

    .line 445
    :sswitch_50
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->aa:Z

    goto :goto_7

    .line 451
    :sswitch_53
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->v:Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;

    iput-boolean v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->e:Z

    goto :goto_7

    .line 454
    :sswitch_58
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;-><init>(Lcom/google/ads/interactivemedia/v3/a/c/g/f$1;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->v:Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;

    goto :goto_7

    .line 411
    nop

    :sswitch_data_62
    .sparse-switch
        0xa0 -> :sswitch_50
        0xae -> :sswitch_58
        0xbb -> :sswitch_36
        0x4dbb -> :sswitch_21
        0x5035 -> :sswitch_53
        0x6240 -> :sswitch_7
        0x18538067 -> :sswitch_8
        0x1c53bb6b -> :sswitch_27
        0x1f43b675 -> :sswitch_39
    .end sparse-switch
.end method

.method a(ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/r;
        }
    .end annotation

    .prologue
    .line 681
    sparse-switch p1, :sswitch_data_4a

    .line 695
    :cond_3
    :goto_3
    return-void

    .line 684
    :sswitch_4
    const-string/jumbo v0, "webm"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "matroska"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 685
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "DocType "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 689
    :sswitch_3e
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->v:Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;

    iput-object p2, v0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->a:Ljava/lang/String;

    goto :goto_3

    .line 692
    :sswitch_43
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->v:Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;

    invoke-static {v0, p2}, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->a(Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_3

    .line 681
    nop

    :sswitch_data_4a
    .sparse-switch
        0x86 -> :sswitch_3e
        0x4282 -> :sswitch_4
        0x22b59c -> :sswitch_43
    .end sparse-switch
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/a/c/g;)V
    .registers 2

    .prologue
    .line 303
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->ab:Lcom/google/ads/interactivemedia/v3/a/c/g;

    .line 304
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/a/c/f;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 298
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/c/g/d;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/a/c/g/d;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/a/c/g/d;->a(Lcom/google/ads/interactivemedia/v3/a/c/f;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .registers 3

    .prologue
    .line 308
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->D:J

    .line 309
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->H:I

    .line 310
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->d:Lcom/google/ads/interactivemedia/v3/a/c/g/b;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/a/c/g/b;->a()V

    .line 311
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->e:Lcom/google/ads/interactivemedia/v3/a/c/g/e;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/c/g/e;->a()V

    .line 312
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->d()V

    .line 313
    return-void
.end method

.method b(I)Z
    .registers 3

    .prologue
    .line 406
    const v0, 0x1549a966

    if-eq p1, v0, :cond_14

    const v0, 0x1f43b675

    if-eq p1, v0, :cond_14

    const v0, 0x1c53bb6b

    if-eq p1, v0, :cond_14

    const v0, 0x1654ae6b

    if-ne p1, v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public c()V
    .registers 1

    .prologue
    .line 318
    return-void
.end method

.method c(I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/r;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const-wide/16 v2, -0x1

    .line 462
    sparse-switch p1, :sswitch_data_102

    .line 533
    :cond_6
    :goto_6
    return-void

    .line 464
    :sswitch_7
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->s:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    .line 466
    const-wide/32 v0, 0xf4240

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->s:J

    .line 468
    :cond_12
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->t:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    .line 469
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->t:J

    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->a(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->u:J

    goto :goto_6

    .line 473
    :sswitch_21
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2c

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->z:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_34

    .line 474
    :cond_2c
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    const-string v1, "Mandatory element SeekID or SeekPosition not found"

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 476
    :cond_34
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->y:I

    const v1, 0x1c53bb6b

    if-ne v0, v1, :cond_6

    .line 477
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->z:J

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->B:J

    goto :goto_6

    .line 481
    :sswitch_40
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->x:Z

    if-nez v0, :cond_6

    .line 482
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->ab:Lcom/google/ads/interactivemedia/v3/a/c/g;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->e()Lcom/google/ads/interactivemedia/v3/a/c/l;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/c/g;->a(Lcom/google/ads/interactivemedia/v3/a/c/l;)V

    .line 483
    iput-boolean v5, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->x:Z

    goto :goto_6

    .line 489
    :sswitch_50
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->H:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 494
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->aa:Z

    if-nez v0, :cond_5f

    .line 495
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->P:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->P:I

    .line 497
    :cond_5f
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->f:Landroid/util/SparseArray;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->N:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->I:J

    invoke-direct {p0, v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->a(Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;J)V

    .line 498
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->H:I

    goto :goto_6

    .line 501
    :sswitch_72
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->v:Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;

    iget-boolean v0, v0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->e:Z

    if-eqz v0, :cond_6

    .line 502
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->v:Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->g:[B

    if-nez v0, :cond_86

    .line 503
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    const-string v1, "Encrypted Track found but ContentEncKeyID was not found"

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 505
    :cond_86
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->w:Z

    if-nez v0, :cond_6

    .line 506
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->ab:Lcom/google/ads/interactivemedia/v3/a/c/g;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/b/a$c;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/a/b/a$b;

    const-string/jumbo v3, "video/webm"

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->v:Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;

    iget-object v4, v4, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->g:[B

    invoke-direct {v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/a/b/a$b;-><init>(Ljava/lang/String;[B)V

    invoke-direct {v1, v2}, Lcom/google/ads/interactivemedia/v3/a/b/a$c;-><init>(Lcom/google/ads/interactivemedia/v3/a/b/a$b;)V

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/c/g;->a(Lcom/google/ads/interactivemedia/v3/a/b/a;)V

    .line 508
    iput-boolean v5, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->w:Z

    goto/16 :goto_6

    .line 513
    :sswitch_a4
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->v:Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;

    iget-boolean v0, v0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->e:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->v:Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->f:[B

    if-eqz v0, :cond_6

    .line 514
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    const-string v1, "Combining encryption and compression is not supported"

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 518
    :sswitch_b8
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->f:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->v:Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;

    iget v1, v1, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->b:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e6

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->v:Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e6

    .line 519
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->v:Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->ab:Lcom/google/ads/interactivemedia/v3/a/c/g;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->v:Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;

    iget v2, v2, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->b:I

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->u:J

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->a(Lcom/google/ads/interactivemedia/v3/a/c/g;IJ)V

    .line 520
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->f:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->v:Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;

    iget v1, v1, Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;->b:I

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->v:Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 524
    :cond_e6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->v:Lcom/google/ads/interactivemedia/v3/a/c/g/f$b;

    goto/16 :goto_6

    .line 527
    :sswitch_eb
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->f:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_fb

    .line 528
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    const-string v1, "No valid tracks were found"

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 530
    :cond_fb
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/g/f;->ab:Lcom/google/ads/interactivemedia/v3/a/c/g;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/a/c/g;->f()V

    goto/16 :goto_6

    .line 462
    :sswitch_data_102
    .sparse-switch
        0xa0 -> :sswitch_50
        0xae -> :sswitch_b8
        0x4dbb -> :sswitch_21
        0x6240 -> :sswitch_72
        0x6d80 -> :sswitch_a4
        0x1549a966 -> :sswitch_7
        0x1654ae6b -> :sswitch_eb
        0x1c53bb6b -> :sswitch_40
    .end sparse-switch
.end method
