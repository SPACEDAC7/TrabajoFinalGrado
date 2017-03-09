.class public abstract Lcom/google/a/a/d;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/a/a/c;


# instance fields
.field protected a:Landroid/view/MotionEvent;

.field protected b:Landroid/util/DisplayMetrics;

.field protected c:Lcom/google/a/a/i;

.field private d:Lcom/google/a/a/j;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/a/a/i;Lcom/google/a/a/j;)V
    .registers 6

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p2, p0, Lcom/google/a/a/d;->c:Lcom/google/a/a/i;

    .line 162
    iput-object p3, p0, Lcom/google/a/a/d;->d:Lcom/google/a/a/j;

    .line 165
    :try_start_7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/d;->b:Landroid/util/DisplayMetrics;
    :try_end_11
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_7 .. :try_end_11} :catch_12

    .line 171
    :goto_11
    return-void

    .line 166
    :catch_12
    move-exception v0

    .line 168
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/d;->b:Landroid/util/DisplayMetrics;

    .line 169
    iget-object v0, p0, Lcom/google/a/a/d;->b:Landroid/util/DisplayMetrics;

    const/high16 v1, 0x3f800000

    iput v1, v0, Landroid/util/DisplayMetrics;->density:F

    goto :goto_11
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v2, 0x7

    .line 259
    :try_start_1
    monitor-enter p0
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_2} :catch_1f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_2} :catch_2a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2} :catch_30

    .line 260
    :try_start_2
    invoke-direct {p0}, Lcom/google/a/a/d;->a()V

    .line 261
    if-eqz p3, :cond_18

    .line 262
    invoke-virtual {p0, p1}, Lcom/google/a/a/d;->c(Landroid/content/Context;)V

    .line 266
    :goto_a
    invoke-direct {p0}, Lcom/google/a/a/d;->b()[B

    move-result-object v0

    .line 267
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_1c

    .line 269
    :try_start_f
    array-length v1, v0

    if-nez v1, :cond_25

    .line 270
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_16
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_f .. :try_end_16} :catch_1f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f .. :try_end_16} :catch_2a
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_16} :catch_30

    move-result-object v0

    .line 285
    :goto_17
    return-object v0

    .line 264
    :cond_18
    :try_start_18
    invoke-virtual {p0, p1}, Lcom/google/a/a/d;->b(Landroid/content/Context;)V

    goto :goto_a

    .line 267
    :catchall_1c
    move-exception v0

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw v0
    :try_end_1f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1e .. :try_end_1f} :catch_1f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1e .. :try_end_1f} :catch_2a
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1f} :catch_30

    .line 274
    :catch_1f
    move-exception v0

    .line 276
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 272
    :cond_25
    :try_start_25
    invoke-virtual {p0, v0, p2}, Lcom/google/a/a/d;->a([BLjava/lang/String;)Ljava/lang/String;
    :try_end_28
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_25 .. :try_end_28} :catch_1f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_25 .. :try_end_28} :catch_2a
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_30

    move-result-object v0

    goto :goto_17

    .line 277
    :catch_2a
    move-exception v0

    .line 279
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 280
    :catch_30
    move-exception v0

    .line 282
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_17
.end method

.method private a()V
    .registers 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/google/a/a/d;->d:Lcom/google/a/a/j;

    invoke-interface {v0}, Lcom/google/a/a/j;->a()V

    .line 327
    return-void
.end method

.method private b()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/a/a/d;->d:Lcom/google/a/a/j;

    invoke-interface {v0}, Lcom/google/a/a/j;->b()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 201
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/a/a/d;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 206
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/a/a/d;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    .line 434
    if-eqz p1, :cond_2b

    const-string v0, "^[a-fA-F0-9]{8}-([a-fA-F0-9]{4}-){3}[a-fA-F0-9]{12}$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 437
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 438
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 439
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 440
    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 441
    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 442
    iget-object v0, p0, Lcom/google/a/a/d;->c:Lcom/google/a/a/i;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/a/a/i;->a([BZ)Ljava/lang/String;

    move-result-object p1

    .line 444
    :cond_2b
    return-object p1
.end method

.method a([BLjava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x100

    const/16 v4, 0xf0

    const/16 v1, 0xef

    .line 365
    array-length v0, p1

    if-le v0, v1, :cond_17

    .line 367
    invoke-direct {p0}, Lcom/google/a/a/d;->a()V

    .line 368
    const/16 v0, 0x14

    const-wide/16 v2, 0x1

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/a/a/d;->a(IJ)V

    .line 369
    invoke-direct {p0}, Lcom/google/a/a/d;->b()[B

    move-result-object p1

    .line 373
    :cond_17
    array-length v0, p1

    if-ge v0, v1, :cond_77

    .line 375
    array-length v0, p1

    rsub-int v0, v0, 0xef

    new-array v0, v0, [B

    .line 376
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 377
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    array-length v2, p1

    int-to-byte v2, v2

    .line 378
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 379
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 380
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 381
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 391
    :goto_3d
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 392
    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 393
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 396
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 397
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 398
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 399
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 400
    new-array v1, v5, [B

    .line 404
    new-instance v2, Lcom/google/a/a/b;

    invoke-direct {v2}, Lcom/google/a/a/b;-><init>()V

    invoke-virtual {v2, v0, v1}, Lcom/google/a/a/b;->a([B[B)V

    .line 407
    if-eqz p2, :cond_6f

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6f

    .line 408
    invoke-virtual {p0, p2, v1}, Lcom/google/a/a/d;->a(Ljava/lang/String;[B)V

    .line 412
    :cond_6f
    iget-object v0, p0, Lcom/google/a/a/d;->c:Lcom/google/a/a/i;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/a/a/i;->a([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 384
    :cond_77
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    array-length v1, p1

    int-to-byte v1, v1

    .line 385
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 386
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 387
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    goto :goto_3d
.end method

.method protected a(IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    iget-object v0, p0, Lcom/google/a/a/d;->d:Lcom/google/a/a/j;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/a/a/j;->a(IJ)V

    .line 300
    return-void
.end method

.method protected a(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    iget-object v0, p0, Lcom/google/a/a/d;->d:Lcom/google/a/a/j;

    invoke-interface {v0, p1, p2}, Lcom/google/a/a/j;->a(ILjava/lang/String;)V

    .line 314
    return-void
.end method

.method a(Ljava/lang/String;[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x20

    .line 417
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_d

    .line 419
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 424
    :cond_d
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 425
    new-instance v1, Lcom/google/d/a/a;

    invoke-direct {v1, v0}, Lcom/google/d/a/a;-><init>([B)V

    invoke-virtual {v1, p2}, Lcom/google/d/a/a;->a([B)V

    .line 426
    return-void
.end method

.method protected abstract b(Landroid/content/Context;)V
.end method

.method protected abstract c(Landroid/content/Context;)V
.end method
