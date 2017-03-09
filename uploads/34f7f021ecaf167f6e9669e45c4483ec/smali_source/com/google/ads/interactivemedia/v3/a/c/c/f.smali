.class public final Lcom/google/ads/interactivemedia/v3/a/c/c/f;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/a/c/e;
.implements Lcom/google/ads/interactivemedia/v3/a/c/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/a/c/c/f$a;
    }
.end annotation


# static fields
.field private static final a:I


# instance fields
.field private final b:Lcom/google/ads/interactivemedia/v3/a/f/m;

.field private final c:Lcom/google/ads/interactivemedia/v3/a/f/m;

.field private final d:Lcom/google/ads/interactivemedia/v3/a/f/m;

.field private final e:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:I

.field private i:J

.field private j:I

.field private k:Lcom/google/ads/interactivemedia/v3/a/f/m;

.field private l:I

.field private m:I

.field private n:I

.field private o:Lcom/google/ads/interactivemedia/v3/a/c/g;

.field private p:[Lcom/google/ads/interactivemedia/v3/a/c/c/f$a;

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    const-string v0, "qt  "

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/q;->c(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->a:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f/m;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->d:Lcom/google/ads/interactivemedia/v3/a/f/m;

    .line 81
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->e:Ljava/util/Stack;

    .line 82
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f/m;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/a/f/k;->a:[B

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;-><init>([B)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->b:Lcom/google/ads/interactivemedia/v3/a/f/m;

    .line 83
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f/m;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->c:Lcom/google/ads/interactivemedia/v3/a/f/m;

    .line 84
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->d()V

    .line 85
    return-void
.end method

.method private a(J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/r;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    .line 249
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->e:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->e:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;

    iget-wide v0, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->aN:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_44

    .line 250
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->e:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;

    .line 251
    iget v1, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->aM:I

    sget v2, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->A:I

    if-ne v1, v2, :cond_30

    .line 253
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->a(Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;)V

    .line 254
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->e:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 255
    iput v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->g:I

    goto :goto_1

    .line 256
    :cond_30
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->e:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 257
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->e:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;

    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->a(Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;)V

    goto :goto_1

    .line 260
    :cond_44
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->g:I

    if-eq v0, v3, :cond_4b

    .line 261
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->d()V

    .line 263
    :cond_4b
    return-void
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/r;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 290
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 291
    const-wide v4, 0x7fffffffffffffffL

    .line 292
    const/4 v0, 0x0

    .line 293
    sget v1, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->ay:I

    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->d(I)Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;

    move-result-object v1

    .line 294
    if-eqz v1, :cond_a6

    .line 295
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->q:Z

    invoke-static {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/c/c/b;->a(Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;Z)Lcom/google/ads/interactivemedia/v3/a/c/i;

    move-result-object v0

    move-object v1, v0

    :goto_1b
    move v2, v3

    .line 297
    :goto_1c
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->aP:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_91

    .line 298
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->aP:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;

    .line 299
    iget v6, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->aM:I

    sget v7, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->C:I

    if-eq v6, v7, :cond_36

    .line 297
    :cond_32
    :goto_32
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1c

    .line 303
    :cond_36
    sget v6, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->B:I

    invoke-virtual {p1, v6}, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->d(I)Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;

    move-result-object v6

    const-wide/16 v10, -0x1

    iget-boolean v7, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->q:Z

    invoke-static {v0, v6, v10, v11, v7}, Lcom/google/ads/interactivemedia/v3/a/c/c/b;->a(Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;JZ)Lcom/google/ads/interactivemedia/v3/a/c/c/i;

    move-result-object v6

    .line 305
    if-eqz v6, :cond_32

    .line 309
    sget v7, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->D:I

    invoke-virtual {v0, v7}, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->e(I)Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;

    move-result-object v0

    sget v7, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->E:I

    .line 310
    invoke-virtual {v0, v7}, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->e(I)Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;

    move-result-object v0

    sget v7, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->F:I

    invoke-virtual {v0, v7}, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->e(I)Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;

    move-result-object v0

    .line 311
    invoke-static {v6, v0}, Lcom/google/ads/interactivemedia/v3/a/c/c/b;->a(Lcom/google/ads/interactivemedia/v3/a/c/c/i;Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;)Lcom/google/ads/interactivemedia/v3/a/c/c/l;

    move-result-object v7

    .line 312
    iget v0, v7, Lcom/google/ads/interactivemedia/v3/a/c/c/l;->a:I

    if-eqz v0, :cond_32

    .line 316
    new-instance v9, Lcom/google/ads/interactivemedia/v3/a/c/c/f$a;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->o:Lcom/google/ads/interactivemedia/v3/a/c/g;

    invoke-interface {v0, v2}, Lcom/google/ads/interactivemedia/v3/a/c/g;->d(I)Lcom/google/ads/interactivemedia/v3/a/c/m;

    move-result-object v0

    invoke-direct {v9, v6, v7, v0}, Lcom/google/ads/interactivemedia/v3/a/c/c/f$a;-><init>(Lcom/google/ads/interactivemedia/v3/a/c/c/i;Lcom/google/ads/interactivemedia/v3/a/c/c/l;Lcom/google/ads/interactivemedia/v3/a/c/m;)V

    .line 319
    iget v0, v7, Lcom/google/ads/interactivemedia/v3/a/c/c/l;->d:I

    add-int/lit8 v0, v0, 0x1e

    .line 320
    iget-object v6, v6, Lcom/google/ads/interactivemedia/v3/a/c/c/i;->k:Lcom/google/ads/interactivemedia/v3/a/p;

    invoke-virtual {v6, v0}, Lcom/google/ads/interactivemedia/v3/a/p;->a(I)Lcom/google/ads/interactivemedia/v3/a/p;

    move-result-object v0

    .line 321
    if-eqz v1, :cond_7f

    .line 322
    iget v6, v1, Lcom/google/ads/interactivemedia/v3/a/c/i;->a:I

    iget v10, v1, Lcom/google/ads/interactivemedia/v3/a/c/i;->b:I

    .line 323
    invoke-virtual {v0, v6, v10}, Lcom/google/ads/interactivemedia/v3/a/p;->a(II)Lcom/google/ads/interactivemedia/v3/a/p;

    move-result-object v0

    .line 325
    :cond_7f
    iget-object v6, v9, Lcom/google/ads/interactivemedia/v3/a/c/c/f$a;->c:Lcom/google/ads/interactivemedia/v3/a/c/m;

    invoke-interface {v6, v0}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(Lcom/google/ads/interactivemedia/v3/a/p;)V

    .line 326
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    iget-object v0, v7, Lcom/google/ads/interactivemedia/v3/a/c/c/l;->b:[J

    aget-wide v6, v0, v3

    .line 329
    cmp-long v0, v6, v4

    if-gez v0, :cond_32

    move-wide v4, v6

    .line 330
    goto :goto_32

    .line 333
    :cond_91
    new-array v0, v3, [Lcom/google/ads/interactivemedia/v3/a/c/c/f$a;

    invoke-interface {v8, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/interactivemedia/v3/a/c/c/f$a;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->p:[Lcom/google/ads/interactivemedia/v3/a/c/c/f$a;

    .line 334
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->o:Lcom/google/ads/interactivemedia/v3/a/c/g;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/a/c/g;->f()V

    .line 335
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->o:Lcom/google/ads/interactivemedia/v3/a/c/g;

    invoke-interface {v0, p0}, Lcom/google/ads/interactivemedia/v3/a/c/g;->a(Lcom/google/ads/interactivemedia/v3/a/c/l;)V

    .line 336
    return-void

    :cond_a6
    move-object v1, v0

    goto/16 :goto_1b
.end method

.method private static a(I)Z
    .registers 2

    .prologue
    .line 444
    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->Q:I

    if-eq p0, v0, :cond_40

    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->B:I

    if-eq p0, v0, :cond_40

    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->R:I

    if-eq p0, v0, :cond_40

    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->S:I

    if-eq p0, v0, :cond_40

    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->al:I

    if-eq p0, v0, :cond_40

    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->am:I

    if-eq p0, v0, :cond_40

    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->an:I

    if-eq p0, v0, :cond_40

    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->P:I

    if-eq p0, v0, :cond_40

    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->ao:I

    if-eq p0, v0, :cond_40

    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->ap:I

    if-eq p0, v0, :cond_40

    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->aq:I

    if-eq p0, v0, :cond_40

    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->ar:I

    if-eq p0, v0, :cond_40

    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->as:I

    if-eq p0, v0, :cond_40

    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->N:I

    if-eq p0, v0, :cond_40

    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->a:I

    if-eq p0, v0, :cond_40

    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->ay:I

    if-ne p0, v0, :cond_42

    :cond_40
    const/4 v0, 0x1

    :goto_41
    return v0

    :cond_42
    const/4 v0, 0x0

    goto :goto_41
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/a/f/m;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 272
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 273
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v1

    .line 274
    sget v2, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->a:I

    if-ne v1, v2, :cond_f

    .line 283
    :goto_e
    return v0

    .line 277
    :cond_f
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 278
    :cond_13
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b()I

    move-result v1

    if-lez v1, :cond_22

    .line 279
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v1

    sget v2, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->a:I

    if-ne v1, v2, :cond_13

    goto :goto_e

    .line 283
    :cond_22
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private static b(I)Z
    .registers 2

    .prologue
    .line 456
    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->A:I

    if-eq p0, v0, :cond_18

    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->C:I

    if-eq p0, v0, :cond_18

    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->D:I

    if-eq p0, v0, :cond_18

    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->E:I

    if-eq p0, v0, :cond_18

    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->F:I

    if-eq p0, v0, :cond_18

    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->O:I

    if-ne p0, v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private b(Lcom/google/ads/interactivemedia/v3/a/c/f;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v1, 0x1

    const/16 v8, 0x8

    const/4 v2, 0x0

    .line 174
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->j:I

    if-nez v0, :cond_2b

    .line 176
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->d:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    invoke-interface {p1, v0, v2, v8, v1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->a([BIIZ)Z

    move-result v0

    if-nez v0, :cond_14

    .line 215
    :goto_13
    return v2

    .line 179
    :cond_14
    iput v8, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->j:I

    .line 180
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->d:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 181
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->d:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->k()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->i:J

    .line 182
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->d:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->h:I

    .line 185
    :cond_2b
    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->i:J

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_47

    .line 188
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->d:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    invoke-interface {p1, v0, v8, v8}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b([BII)V

    .line 189
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->j:I

    add-int/2addr v0, v8

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->j:I

    .line 190
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->d:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->u()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->i:J

    .line 193
    :cond_47
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->h:I

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->b(I)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 194
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->i:J

    add-long/2addr v2, v4

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->j:I

    int-to-long v4, v0

    sub-long/2addr v2, v4

    .line 195
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->e:Ljava/util/Stack;

    new-instance v4, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->h:I

    invoke-direct {v4, v5, v2, v3}, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;-><init>(IJ)V

    invoke-virtual {v0, v4}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 196
    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->i:J

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->j:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-nez v0, :cond_74

    .line 197
    invoke-direct {p0, v2, v3}, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->a(J)V

    :goto_72
    move v2, v1

    .line 215
    goto :goto_13

    .line 200
    :cond_74
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->d()V

    goto :goto_72

    .line 202
    :cond_78
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->h:I

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->a(I)Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 205
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->j:I

    if-ne v0, v8, :cond_ad

    move v0, v1

    :goto_85
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/b;->b(Z)V

    .line 206
    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->i:J

    const-wide/32 v6, 0x7fffffff

    cmp-long v0, v4, v6

    if-gtz v0, :cond_af

    move v0, v1

    :goto_92
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/b;->b(Z)V

    .line 207
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->i:J

    long-to-int v3, v4

    invoke-direct {v0, v3}, Lcom/google/ads/interactivemedia/v3/a/f/m;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->k:Lcom/google/ads/interactivemedia/v3/a/f/m;

    .line 208
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->d:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->k:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    invoke-static {v0, v2, v3, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    iput v9, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->g:I

    goto :goto_72

    :cond_ad
    move v0, v2

    .line 205
    goto :goto_85

    :cond_af
    move v0, v2

    .line 206
    goto :goto_92

    .line 211
    :cond_b1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->k:Lcom/google/ads/interactivemedia/v3/a/f/m;

    .line 212
    iput v9, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->g:I

    goto :goto_72
.end method

.method private b(Lcom/google/ads/interactivemedia/v3/a/c/f;Lcom/google/ads/interactivemedia/v3/a/c/j;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 225
    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->i:J

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->j:I

    int-to-long v6, v0

    sub-long/2addr v4, v6

    .line 226
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c()J

    move-result-wide v6

    add-long/2addr v6, v4

    .line 228
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->k:Lcom/google/ads/interactivemedia/v3/a/f/m;

    if-eqz v0, :cond_53

    .line 229
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->k:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->j:I

    long-to-int v4, v4

    invoke-interface {p1, v0, v3, v4}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b([BII)V

    .line 230
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->h:I

    sget v3, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->a:I

    if-ne v0, v3, :cond_35

    .line 231
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->k:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->q:Z

    move v0, v1

    .line 244
    :goto_2a
    invoke-direct {p0, v6, v7}, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->a(J)V

    .line 245
    if-eqz v0, :cond_69

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->g:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_69

    :goto_34
    return v2

    .line 232
    :cond_35
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->e:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6b

    .line 233
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->e:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;

    new-instance v3, Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->h:I

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->k:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-direct {v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;-><init>(ILcom/google/ads/interactivemedia/v3/a/f/m;)V

    invoke-virtual {v0, v3}, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->a(Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;)V

    move v0, v1

    goto :goto_2a

    .line 237
    :cond_53
    const-wide/32 v8, 0x40000

    cmp-long v0, v4, v8

    if-gez v0, :cond_60

    .line 238
    long-to-int v0, v4

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b(I)V

    move v0, v1

    goto :goto_2a

    .line 240
    :cond_60
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c()J

    move-result-wide v8

    add-long/2addr v4, v8

    iput-wide v4, p2, Lcom/google/ads/interactivemedia/v3/a/c/j;->a:J

    move v0, v2

    .line 241
    goto :goto_2a

    :cond_69
    move v2, v1

    .line 245
    goto :goto_34

    :cond_6b
    move v0, v1

    goto :goto_2a
.end method

.method private c(Lcom/google/ads/interactivemedia/v3/a/c/f;Lcom/google/ads/interactivemedia/v3/a/c/j;)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 356
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->e()I

    move-result v0

    .line 357
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 358
    const/4 v0, -0x1

    .line 413
    :goto_8
    return v0

    .line 360
    :cond_9
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->p:[Lcom/google/ads/interactivemedia/v3/a/c/c/f$a;

    aget-object v0, v1, v0

    .line 361
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/f$a;->c:Lcom/google/ads/interactivemedia/v3/a/c/m;

    .line 362
    iget v4, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/f$a;->d:I

    .line 363
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/f$a;->b:Lcom/google/ads/interactivemedia/v3/a/c/c/l;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/a/c/c/l;->b:[J

    aget-wide v2, v2, v4

    .line 364
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c()J

    move-result-wide v6

    sub-long v6, v2, v6

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->m:I

    int-to-long v8, v5

    add-long/2addr v6, v8

    .line 365
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-ltz v5, :cond_2e

    const-wide/32 v8, 0x40000

    cmp-long v5, v6, v8

    if-ltz v5, :cond_32

    .line 366
    :cond_2e
    iput-wide v2, p2, Lcom/google/ads/interactivemedia/v3/a/c/j;->a:J

    .line 367
    const/4 v0, 0x1

    goto :goto_8

    .line 369
    :cond_32
    long-to-int v2, v6

    invoke-interface {p1, v2}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b(I)V

    .line 370
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/f$a;->b:Lcom/google/ads/interactivemedia/v3/a/c/c/l;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/a/c/c/l;->c:[I

    aget v2, v2, v4

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->l:I

    .line 371
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/f$a;->a:Lcom/google/ads/interactivemedia/v3/a/c/c/i;

    iget v2, v2, Lcom/google/ads/interactivemedia/v3/a/c/c/i;->o:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_a9

    .line 374
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->c:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    .line 375
    const/4 v3, 0x0

    const/4 v5, 0x0

    aput-byte v5, v2, v3

    .line 376
    const/4 v3, 0x1

    const/4 v5, 0x0

    aput-byte v5, v2, v3

    .line 377
    const/4 v3, 0x2

    const/4 v5, 0x0

    aput-byte v5, v2, v3

    .line 378
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/f$a;->a:Lcom/google/ads/interactivemedia/v3/a/c/c/i;

    iget v2, v2, Lcom/google/ads/interactivemedia/v3/a/c/c/i;->o:I

    .line 379
    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/f$a;->a:Lcom/google/ads/interactivemedia/v3/a/c/c/i;

    iget v3, v3, Lcom/google/ads/interactivemedia/v3/a/c/c/i;->o:I

    rsub-int/lit8 v3, v3, 0x4

    .line 383
    :goto_5f
    iget v5, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->m:I

    iget v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->l:I

    if-ge v5, v6, :cond_c5

    .line 384
    iget v5, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->n:I

    if-nez v5, :cond_96

    .line 386
    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->c:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v5, v5, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    invoke-interface {p1, v5, v3, v2}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b([BII)V

    .line 387
    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->c:Lcom/google/ads/interactivemedia/v3/a/f/m;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 388
    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->c:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/a/f/m;->s()I

    move-result v5

    iput v5, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->n:I

    .line 390
    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->b:Lcom/google/ads/interactivemedia/v3/a/f/m;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 391
    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->b:Lcom/google/ads/interactivemedia/v3/a/f/m;

    const/4 v6, 0x4

    invoke-interface {v1, v5, v6}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;I)V

    .line 392
    iget v5, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->m:I

    add-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->m:I

    .line 393
    iget v5, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->l:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->l:I

    goto :goto_5f

    .line 396
    :cond_96
    iget v5, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->n:I

    const/4 v6, 0x0

    invoke-interface {v1, p1, v5, v6}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(Lcom/google/ads/interactivemedia/v3/a/c/f;IZ)I

    move-result v5

    .line 397
    iget v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->m:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->m:I

    .line 398
    iget v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->n:I

    sub-int v5, v6, v5

    iput v5, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->n:I

    goto :goto_5f

    .line 402
    :cond_a9
    :goto_a9
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->m:I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->l:I

    if-ge v2, v3, :cond_c5

    .line 403
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->l:I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->m:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-interface {v1, p1, v2, v3}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(Lcom/google/ads/interactivemedia/v3/a/c/f;IZ)I

    move-result v2

    .line 404
    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->m:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->m:I

    .line 405
    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->n:I

    sub-int v2, v3, v2

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->n:I

    goto :goto_a9

    .line 408
    :cond_c5
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/f$a;->b:Lcom/google/ads/interactivemedia/v3/a/c/c/l;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/a/c/c/l;->e:[J

    aget-wide v2, v2, v4

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/f$a;->b:Lcom/google/ads/interactivemedia/v3/a/c/c/l;

    iget-object v5, v5, Lcom/google/ads/interactivemedia/v3/a/c/c/l;->f:[I

    aget v4, v5, v4

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->l:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(JIII[B)V

    .line 410
    iget v1, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/f$a;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/f$a;->d:I

    .line 411
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->m:I

    .line 412
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->n:I

    .line 413
    const/4 v0, 0x0

    goto/16 :goto_8
.end method

.method private d()V
    .registers 2

    .prologue
    .line 169
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->g:I

    .line 170
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->j:I

    .line 171
    return-void
.end method

.method private e()I
    .registers 8

    .prologue
    .line 421
    const/4 v1, -0x1

    .line 422
    const-wide v2, 0x7fffffffffffffffL

    .line 423
    const/4 v0, 0x0

    :goto_7
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->p:[Lcom/google/ads/interactivemedia/v3/a/c/c/f$a;

    array-length v4, v4

    if-ge v0, v4, :cond_28

    .line 424
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->p:[Lcom/google/ads/interactivemedia/v3/a/c/c/f$a;

    aget-object v4, v4, v0

    .line 425
    iget v5, v4, Lcom/google/ads/interactivemedia/v3/a/c/c/f$a;->d:I

    .line 426
    iget-object v6, v4, Lcom/google/ads/interactivemedia/v3/a/c/c/f$a;->b:Lcom/google/ads/interactivemedia/v3/a/c/c/l;

    iget v6, v6, Lcom/google/ads/interactivemedia/v3/a/c/c/l;->a:I

    if-ne v5, v6, :cond_1b

    .line 423
    :cond_18
    :goto_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 430
    :cond_1b
    iget-object v4, v4, Lcom/google/ads/interactivemedia/v3/a/c/c/f$a;->b:Lcom/google/ads/interactivemedia/v3/a/c/c/l;

    iget-object v4, v4, Lcom/google/ads/interactivemedia/v3/a/c/c/l;->b:[J

    aget-wide v4, v4, v5

    .line 431
    cmp-long v6, v4, v2

    if-gez v6, :cond_18

    move-wide v2, v4

    move v1, v0

    .line 433
    goto :goto_18

    .line 437
    :cond_28
    return v1
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/a/c/f;Lcom/google/ads/interactivemedia/v3/a/c/j;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 115
    :cond_0
    :goto_0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->g:I

    packed-switch v0, :pswitch_data_2c

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->c(Lcom/google/ads/interactivemedia/v3/a/c/f;Lcom/google/ads/interactivemedia/v3/a/c/j;)I

    move-result v0

    :goto_9
    return v0

    .line 117
    :pswitch_a
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    .line 118
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->d()V

    goto :goto_0

    .line 120
    :cond_18
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->g:I

    goto :goto_0

    .line 124
    :pswitch_1c
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->b(Lcom/google/ads/interactivemedia/v3/a/c/f;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    const/4 v0, -0x1

    goto :goto_9

    .line 129
    :pswitch_24
    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->b(Lcom/google/ads/interactivemedia/v3/a/c/f;Lcom/google/ads/interactivemedia/v3/a/c/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    const/4 v0, 0x1

    goto :goto_9

    .line 115
    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_a
        :pswitch_1c
        :pswitch_24
    .end packed-switch
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/a/c/g;)V
    .registers 2

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->o:Lcom/google/ads/interactivemedia/v3/a/c/g;

    .line 95
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 143
    const/4 v0, 0x1

    return v0
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
    .line 89
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/a/c/c/h;->b(Lcom/google/ads/interactivemedia/v3/a/c/f;)Z

    move-result v0

    return v0
.end method

.method public b(J)J
    .registers 10

    .prologue
    .line 148
    const-wide v2, 0x7fffffffffffffffL

    .line 149
    const/4 v0, 0x0

    :goto_6
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->p:[Lcom/google/ads/interactivemedia/v3/a/c/c/f$a;

    array-length v1, v1

    if-ge v0, v1, :cond_2e

    .line 150
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->p:[Lcom/google/ads/interactivemedia/v3/a/c/c/f$a;

    aget-object v1, v1, v0

    iget-object v4, v1, Lcom/google/ads/interactivemedia/v3/a/c/c/f$a;->b:Lcom/google/ads/interactivemedia/v3/a/c/c/l;

    .line 151
    invoke-virtual {v4, p1, p2}, Lcom/google/ads/interactivemedia/v3/a/c/c/l;->a(J)I

    move-result v1

    .line 152
    const/4 v5, -0x1

    if-ne v1, v5, :cond_1c

    .line 154
    invoke-virtual {v4, p1, p2}, Lcom/google/ads/interactivemedia/v3/a/c/c/l;->b(J)I

    move-result v1

    .line 156
    :cond_1c
    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->p:[Lcom/google/ads/interactivemedia/v3/a/c/c/f$a;

    aget-object v5, v5, v0

    iput v1, v5, Lcom/google/ads/interactivemedia/v3/a/c/c/f$a;->d:I

    .line 158
    iget-object v4, v4, Lcom/google/ads/interactivemedia/v3/a/c/c/l;->b:[J

    aget-wide v4, v4, v1

    .line 159
    cmp-long v1, v4, v2

    if-gez v1, :cond_2b

    move-wide v2, v4

    .line 149
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 163
    :cond_2e
    return-wide v2
.end method

.method public b()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 99
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->e:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 100
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->j:I

    .line 101
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->m:I

    .line 102
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->n:I

    .line 103
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/f;->g:I

    .line 104
    return-void
.end method

.method public c()V
    .registers 1

    .prologue
    .line 109
    return-void
.end method
