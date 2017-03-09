.class final Lcom/google/ads/interactivemedia/v3/a/c/k;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/a/c/k$b;,
        Lcom/google/ads/interactivemedia/v3/a/c/k$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/a/e/b;

.field private final b:I

.field private final c:Lcom/google/ads/interactivemedia/v3/a/c/k$a;

.field private final d:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<",
            "Lcom/google/ads/interactivemedia/v3/a/e/a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/ads/interactivemedia/v3/a/c/k$b;

.field private final f:Lcom/google/ads/interactivemedia/v3/a/f/m;

.field private g:J

.field private h:J

.field private i:Lcom/google/ads/interactivemedia/v3/a/e/a;

.field private j:I


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/a/e/b;)V
    .registers 4

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->a:Lcom/google/ads/interactivemedia/v3/a/e/b;

    .line 58
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/a/e/b;->b()I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->b:I

    .line 59
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/c/k$a;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/a/c/k$a;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->c:Lcom/google/ads/interactivemedia/v3/a/c/k$a;

    .line 60
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 61
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/c/k$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/c/k$b;-><init>(Lcom/google/ads/interactivemedia/v3/a/c/k$1;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->e:Lcom/google/ads/interactivemedia/v3/a/c/k$b;

    .line 62
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f/m;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->f:Lcom/google/ads/interactivemedia/v3/a/f/m;

    .line 63
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->b:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->j:I

    .line 64
    return-void
.end method

.method private a(I)I
    .registers 4

    .prologue
    .line 437
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->j:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->b:I

    if-ne v0, v1, :cond_18

    .line 438
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->j:I

    .line 439
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->a:Lcom/google/ads/interactivemedia/v3/a/e/b;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/a/e/b;->a()Lcom/google/ads/interactivemedia/v3/a/e/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->i:Lcom/google/ads/interactivemedia/v3/a/e/a;

    .line 440
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->i:Lcom/google/ads/interactivemedia/v3/a/e/a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->add(Ljava/lang/Object;)Z

    .line 442
    :cond_18
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->b:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->j:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private a(JLjava/nio/ByteBuffer;I)V
    .registers 10

    .prologue
    .line 277
    .line 278
    :goto_0
    if-lez p4, :cond_26

    .line 279
    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/a/c/k;->b(J)V

    .line 280
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->g:J

    sub-long v0, p1, v0

    long-to-int v1, v0

    .line 281
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->b:I

    sub-int/2addr v0, v1

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 282
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/e/a;

    .line 283
    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/a/e/a;->a:[B

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/e/a;->a(I)I

    move-result v0

    invoke-virtual {p3, v3, v0, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 284
    int-to-long v0, v2

    add-long/2addr p1, v0

    .line 285
    sub-int/2addr p4, v2

    .line 286
    goto :goto_0

    .line 287
    :cond_26
    return-void
.end method

.method private a(J[BI)V
    .registers 12

    .prologue
    .line 298
    const/4 v0, 0x0

    move v1, v0

    .line 299
    :goto_2
    if-ge v1, p4, :cond_2c

    .line 300
    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/a/c/k;->b(J)V

    .line 301
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->g:J

    sub-long v2, p1, v2

    long-to-int v2, v2

    .line 302
    sub-int v0, p4, v1

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->b:I

    sub-int/2addr v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 303
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/e/a;

    .line 304
    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/a/e/a;->a:[B

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/a/e/a;->a(I)I

    move-result v0

    invoke-static {v4, v0, p3, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 306
    int-to-long v4, v3

    add-long/2addr p1, v4

    .line 307
    add-int v0, v1, v3

    move v1, v0

    .line 308
    goto :goto_2

    .line 309
    :cond_2c
    return-void
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/a/s;Lcom/google/ads/interactivemedia/v3/a/c/k$b;)V
    .registers 15

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 208
    iget-wide v0, p2, Lcom/google/ads/interactivemedia/v3/a/c/k$b;->a:J

    .line 211
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->f:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    invoke-direct {p0, v0, v1, v2, v6}, Lcom/google/ads/interactivemedia/v3/a/c/k;->a(J[BI)V

    .line 212
    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    .line 213
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->f:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    aget-byte v1, v0, v4

    .line 214
    and-int/lit16 v0, v1, 0x80

    if-eqz v0, :cond_8d

    move v0, v6

    .line 215
    :goto_19
    and-int/lit8 v1, v1, 0x7f

    .line 218
    iget-object v5, p1, Lcom/google/ads/interactivemedia/v3/a/s;->a:Lcom/google/ads/interactivemedia/v3/a/d;

    iget-object v5, v5, Lcom/google/ads/interactivemedia/v3/a/d;->a:[B

    if-nez v5, :cond_29

    .line 219
    iget-object v5, p1, Lcom/google/ads/interactivemedia/v3/a/s;->a:Lcom/google/ads/interactivemedia/v3/a/d;

    const/16 v7, 0x10

    new-array v7, v7, [B

    iput-object v7, v5, Lcom/google/ads/interactivemedia/v3/a/d;->a:[B

    .line 221
    :cond_29
    iget-object v5, p1, Lcom/google/ads/interactivemedia/v3/a/s;->a:Lcom/google/ads/interactivemedia/v3/a/d;

    iget-object v5, v5, Lcom/google/ads/interactivemedia/v3/a/d;->a:[B

    invoke-direct {p0, v2, v3, v5, v1}, Lcom/google/ads/interactivemedia/v3/a/c/k;->a(J[BI)V

    .line 222
    int-to-long v8, v1

    add-long/2addr v2, v8

    .line 226
    if-eqz v0, :cond_8f

    .line 227
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->f:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    const/4 v5, 0x2

    invoke-direct {p0, v2, v3, v1, v5}, Lcom/google/ads/interactivemedia/v3/a/c/k;->a(J[BI)V

    .line 228
    const-wide/16 v8, 0x2

    add-long/2addr v2, v8

    .line 229
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->f:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v1, v4}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 230
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->f:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->g()I

    move-result v1

    move-wide v8, v2

    .line 236
    :goto_4b
    iget-object v2, p1, Lcom/google/ads/interactivemedia/v3/a/s;->a:Lcom/google/ads/interactivemedia/v3/a/d;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/a/d;->d:[I

    .line 237
    if-eqz v2, :cond_54

    array-length v3, v2

    if-ge v3, v1, :cond_56

    .line 238
    :cond_54
    new-array v2, v1, [I

    .line 240
    :cond_56
    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/a/s;->a:Lcom/google/ads/interactivemedia/v3/a/d;

    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/a/d;->e:[I

    .line 241
    if-eqz v3, :cond_5f

    array-length v5, v3

    if-ge v5, v1, :cond_61

    .line 242
    :cond_5f
    new-array v3, v1, [I

    .line 244
    :cond_61
    if-eqz v0, :cond_92

    .line 245
    mul-int/lit8 v0, v1, 0x6

    .line 246
    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->f:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-static {v5, v0}, Lcom/google/ads/interactivemedia/v3/a/c/k;->b(Lcom/google/ads/interactivemedia/v3/a/f/m;I)V

    .line 247
    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->f:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v5, v5, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    invoke-direct {p0, v8, v9, v5, v0}, Lcom/google/ads/interactivemedia/v3/a/c/k;->a(J[BI)V

    .line 248
    int-to-long v10, v0

    add-long/2addr v8, v10

    .line 249
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->f:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0, v4}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 250
    :goto_78
    if-ge v4, v1, :cond_9e

    .line 251
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->f:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->g()I

    move-result v0

    aput v0, v2, v4

    .line 252
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->f:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->s()I

    move-result v0

    aput v0, v3, v4

    .line 250
    add-int/lit8 v4, v4, 0x1

    goto :goto_78

    :cond_8d
    move v0, v4

    .line 214
    goto :goto_19

    :cond_8f
    move v1, v6

    move-wide v8, v2

    .line 232
    goto :goto_4b

    .line 255
    :cond_92
    aput v4, v2, v4

    .line 256
    iget v0, p1, Lcom/google/ads/interactivemedia/v3/a/s;->c:I

    iget-wide v10, p2, Lcom/google/ads/interactivemedia/v3/a/c/k$b;->a:J

    sub-long v10, v8, v10

    long-to-int v5, v10

    sub-int/2addr v0, v5

    aput v0, v3, v4

    .line 260
    :cond_9e
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/a/s;->a:Lcom/google/ads/interactivemedia/v3/a/d;

    iget-object v4, p2, Lcom/google/ads/interactivemedia/v3/a/c/k$b;->b:[B

    iget-object v5, p1, Lcom/google/ads/interactivemedia/v3/a/s;->a:Lcom/google/ads/interactivemedia/v3/a/d;

    iget-object v5, v5, Lcom/google/ads/interactivemedia/v3/a/d;->a:[B

    invoke-virtual/range {v0 .. v6}, Lcom/google/ads/interactivemedia/v3/a/d;->a(I[I[I[B[BI)V

    .line 264
    iget-wide v0, p2, Lcom/google/ads/interactivemedia/v3/a/c/k$b;->a:J

    sub-long v0, v8, v0

    long-to-int v0, v0

    .line 265
    iget-wide v2, p2, Lcom/google/ads/interactivemedia/v3/a/c/k$b;->a:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p2, Lcom/google/ads/interactivemedia/v3/a/c/k$b;->a:J

    .line 266
    iget v1, p1, Lcom/google/ads/interactivemedia/v3/a/s;->c:I

    sub-int v0, v1, v0

    iput v0, p1, Lcom/google/ads/interactivemedia/v3/a/s;->c:I

    .line 267
    return-void
.end method

.method private b(J)V
    .registers 12

    .prologue
    .line 318
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->g:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    .line 319
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->b:I

    div-int v2, v0, v1

    .line 320
    const/4 v0, 0x0

    move v1, v0

    :goto_b
    if-ge v1, v2, :cond_26

    .line 321
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->a:Lcom/google/ads/interactivemedia/v3/a/e/b;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/e/a;

    invoke-interface {v3, v0}, Lcom/google/ads/interactivemedia/v3/a/e/b;->a(Lcom/google/ads/interactivemedia/v3/a/e/a;)V

    .line 322
    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->g:J

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->b:I

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->g:J

    .line 320
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    .line 324
    :cond_26
    return-void
.end method

.method private static b(Lcom/google/ads/interactivemedia/v3/a/f/m;I)V
    .registers 3

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c()I

    move-result v0

    if-ge v0, p1, :cond_b

    .line 331
    new-array v0, p1, [B

    invoke-virtual {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->a([BI)V

    .line 333
    :cond_b
    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/a/c/f;IZ)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 387
    invoke-direct {p0, p2}, Lcom/google/ads/interactivemedia/v3/a/c/k;->a(I)I

    move-result v1

    .line 388
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->i:Lcom/google/ads/interactivemedia/v3/a/e/a;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/a/e/a;->a:[B

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->i:Lcom/google/ads/interactivemedia/v3/a/e/a;

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->j:I

    .line 389
    invoke-virtual {v3, v4}, Lcom/google/ads/interactivemedia/v3/a/e/a;->a(I)I

    move-result v3

    .line 388
    invoke-interface {p1, v2, v3, v1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->a([BII)I

    move-result v1

    .line 390
    if-ne v1, v0, :cond_20

    .line 391
    if-eqz p3, :cond_1a

    .line 398
    :goto_19
    return v0

    .line 394
    :cond_1a
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 396
    :cond_20
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->j:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->j:I

    .line 397
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->h:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->h:J

    move v0, v1

    .line 398
    goto :goto_19
.end method

.method public a()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 72
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->c:Lcom/google/ads/interactivemedia/v3/a/c/k$a;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->a()V

    .line 74
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->a:Lcom/google/ads/interactivemedia/v3/a/e/b;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/ads/interactivemedia/v3/a/e/a;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/LinkedBlockingDeque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/interactivemedia/v3/a/e/a;

    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/e/b;->a([Lcom/google/ads/interactivemedia/v3/a/e/a;)V

    .line 75
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    .line 77
    iput-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->g:J

    .line 78
    iput-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->h:J

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->i:Lcom/google/ads/interactivemedia/v3/a/e/a;

    .line 80
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->b:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->j:I

    .line 81
    return-void
.end method

.method public a(JIJI[B)V
    .registers 16

    .prologue
    .line 429
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->c:Lcom/google/ads/interactivemedia/v3/a/c/k$a;

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->a(JIJI[B)V

    .line 430
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/a/f/m;I)V
    .registers 9

    .prologue
    .line 408
    :goto_0
    if-lez p2, :cond_22

    .line 409
    invoke-direct {p0, p2}, Lcom/google/ads/interactivemedia/v3/a/c/k;->a(I)I

    move-result v0

    .line 410
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->i:Lcom/google/ads/interactivemedia/v3/a/e/a;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/a/e/a;->a:[B

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->i:Lcom/google/ads/interactivemedia/v3/a/e/a;

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->j:I

    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/a/e/a;->a(I)I

    move-result v2

    invoke-virtual {p1, v1, v2, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->a([BII)V

    .line 412
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->j:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->j:I

    .line 413
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->h:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->h:J

    .line 414
    sub-int/2addr p2, v0

    .line 415
    goto :goto_0

    .line 416
    :cond_22
    return-void
.end method

.method public a(J)Z
    .registers 8

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->c:Lcom/google/ads/interactivemedia/v3/a/c/k$a;

    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->a(J)J

    move-result-wide v0

    .line 164
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_e

    .line 165
    const/4 v0, 0x0

    .line 168
    :goto_d
    return v0

    .line 167
    :cond_e
    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/a/c/k;->b(J)V

    .line 168
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/a/s;)Z
    .registers 4

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->c:Lcom/google/ads/interactivemedia/v3/a/c/k$a;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->e:Lcom/google/ads/interactivemedia/v3/a/c/k$b;

    invoke-virtual {v0, p1, v1}, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->a(Lcom/google/ads/interactivemedia/v3/a/s;Lcom/google/ads/interactivemedia/v3/a/c/k$b;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .registers 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->c:Lcom/google/ads/interactivemedia/v3/a/c/k$a;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->b()J

    move-result-wide v0

    .line 153
    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/a/c/k;->b(J)V

    .line 154
    return-void
.end method

.method public b(Lcom/google/ads/interactivemedia/v3/a/s;)Z
    .registers 6

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->c:Lcom/google/ads/interactivemedia/v3/a/c/k$a;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->e:Lcom/google/ads/interactivemedia/v3/a/c/k$b;

    invoke-virtual {v0, p1, v1}, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->a(Lcom/google/ads/interactivemedia/v3/a/s;Lcom/google/ads/interactivemedia/v3/a/c/k$b;)Z

    move-result v0

    .line 180
    if-nez v0, :cond_c

    .line 181
    const/4 v0, 0x0

    .line 194
    :goto_b
    return v0

    .line 185
    :cond_c
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/s;->a()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 186
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->e:Lcom/google/ads/interactivemedia/v3/a/c/k$b;

    invoke-direct {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/a/c/k;->a(Lcom/google/ads/interactivemedia/v3/a/s;Lcom/google/ads/interactivemedia/v3/a/c/k$b;)V

    .line 189
    :cond_17
    iget v0, p1, Lcom/google/ads/interactivemedia/v3/a/s;->c:I

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/a/s;->a(I)V

    .line 190
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->e:Lcom/google/ads/interactivemedia/v3/a/c/k$b;

    iget-wide v0, v0, Lcom/google/ads/interactivemedia/v3/a/c/k$b;->a:J

    iget-object v2, p1, Lcom/google/ads/interactivemedia/v3/a/s;->b:Ljava/nio/ByteBuffer;

    iget v3, p1, Lcom/google/ads/interactivemedia/v3/a/s;->c:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/a/c/k;->a(JLjava/nio/ByteBuffer;I)V

    .line 192
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->c:Lcom/google/ads/interactivemedia/v3/a/c/k$a;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/c/k$a;->b()J

    move-result-wide v0

    .line 193
    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/a/c/k;->b(J)V

    .line 194
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public c()J
    .registers 3

    .prologue
    .line 343
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/k;->h:J

    return-wide v0
.end method
