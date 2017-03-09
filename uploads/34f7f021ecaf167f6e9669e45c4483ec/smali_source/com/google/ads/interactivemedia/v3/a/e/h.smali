.class public Lcom/google/ads/interactivemedia/v3/a/e/h;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/a/e/k;


# static fields
.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final d:Z

.field private final e:I

.field private final f:I

.field private final g:Ljava/lang/String;

.field private final h:Lcom/google/ads/interactivemedia/v3/a/f/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/a/f/n",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/google/ads/interactivemedia/v3/a/e/m;

.field private k:Lcom/google/ads/interactivemedia/v3/a/e/f;

.field private l:Ljava/net/HttpURLConnection;

.field private m:Ljava/io/InputStream;

.field private n:Z

.field private o:J

.field private p:J

.field private q:J

.field private r:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 61
    const-string v0, "^bytes (\\d+)-(\\d+)/(\\d+)$"

    .line 62
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/a/e/h;->b:Ljava/util/regex/Pattern;

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/a/e/h;->c:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/a/f/n;Lcom/google/ads/interactivemedia/v3/a/e/m;IIZ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/a/f/n",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/ads/interactivemedia/v3/a/e/m;",
            "IIZ)V"
        }
    .end annotation

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/a/f/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->g:Ljava/lang/String;

    .line 141
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->h:Lcom/google/ads/interactivemedia/v3/a/f/n;

    .line 142
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->j:Lcom/google/ads/interactivemedia/v3/a/e/m;

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->i:Ljava/util/HashMap;

    .line 144
    iput p4, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->e:I

    .line 145
    iput p5, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->f:I

    .line 146
    iput-boolean p6, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->d:Z

    .line 147
    return-void
.end method

.method private static a(Ljava/net/HttpURLConnection;)J
    .registers 10

    .prologue
    .line 458
    const-wide/16 v0, -0x1

    .line 459
    const-string v2, "Content-Length"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 460
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 462
    :try_start_e
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_11} :catch_49

    move-result-wide v0

    .line 467
    :cond_12
    :goto_12
    const-string v2, "Content-Range"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 468
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_48

    .line 469
    sget-object v2, Lcom/google/ads/interactivemedia/v3/a/e/h;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 470
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 472
    const/4 v3, 0x2

    .line 473
    :try_start_2b
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3b
    .catch Ljava/lang/NumberFormatException; {:try_start_2b .. :try_end_3b} :catch_b7

    move-result-wide v2

    sub-long v2, v6, v2

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    .line 474
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gez v6, :cond_73

    move-wide v0, v2

    .line 492
    :cond_48
    :goto_48
    return-wide v0

    .line 463
    :catch_49
    move-exception v2

    .line 464
    const-string v2, "DefaultHttpDataSource"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected Content-Length ["

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 478
    :cond_73
    cmp-long v6, v0, v2

    if-eqz v6, :cond_48

    .line 483
    :try_start_77
    const-string v6, "DefaultHttpDataSource"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1a

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Inconsistent headers ["

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "] ["

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "]"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J
    :try_end_b5
    .catch Ljava/lang/NumberFormatException; {:try_start_77 .. :try_end_b5} :catch_b7

    move-result-wide v0

    goto :goto_48

    .line 487
    :catch_b7
    move-exception v2

    .line 488
    const-string v2, "DefaultHttpDataSource"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected Content-Range ["

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_48
.end method

.method private a(Ljava/net/URL;[BJJZZ)Ljava/net/HttpURLConnection;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 384
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 385
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->e:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 386
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->f:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 387
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->i:Ljava/util/HashMap;

    monitor-enter v3

    .line 388
    :try_start_13
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->i:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 389
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    .line 391
    :catchall_39
    move-exception v0

    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_13 .. :try_end_3b} :catchall_39

    throw v0

    :cond_3c
    :try_start_3c
    monitor-exit v3
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_39

    .line 392
    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-nez v1, :cond_49

    const-wide/16 v2, -0x1

    cmp-long v1, p5, v2

    if-eqz v1, :cond_93

    .line 393
    :cond_49
    const/16 v1, 0x1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "bytes="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 394
    const-wide/16 v2, -0x1

    cmp-long v2, p5, v2

    if-eqz v2, :cond_8e

    .line 395
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    add-long v2, p3, p5

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x14

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 397
    :cond_8e
    const-string v2, "Range"

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    :cond_93
    const-string v1, "User-Agent"

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    if-nez p7, :cond_a3

    .line 401
    const-string v1, "Accept-Encoding"

    const-string v2, "identity"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :cond_a3
    invoke-virtual {v0, p8}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 404
    if-eqz p2, :cond_ba

    const/4 v1, 0x1

    :goto_a9
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 405
    if-eqz p2, :cond_ce

    .line 406
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 407
    array-length v1, p2

    if-nez v1, :cond_bc

    .line 408
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 419
    :goto_b9
    return-object v0

    .line 404
    :cond_ba
    const/4 v1, 0x0

    goto :goto_a9

    .line 410
    :cond_bc
    array-length v1, p2

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 411
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 412
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 413
    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 414
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto :goto_b9

    .line 417
    :cond_ce
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    goto :goto_b9
.end method

.method private static a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 431
    if-nez p1, :cond_a

    .line 432
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Null location redirect"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :cond_a
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 437
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 438
    const-string v2, "https"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    const-string v2, "http"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 439
    new-instance v2, Ljava/net/ProtocolException;

    const-string v3, "Unsupported protocol redirect: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_39

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_35
    invoke-direct {v2, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_39
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_35

    .line 448
    :cond_3f
    return-object v0
.end method

.method private b([BII)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 548
    if-nez p3, :cond_5

    .line 549
    const/4 v0, 0x0

    .line 565
    :cond_4
    :goto_4
    return v0

    .line 552
    :cond_5
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->m:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 553
    if-ne v1, v0, :cond_23

    .line 554
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->p:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->p:J

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->r:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    .line 556
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 561
    :cond_23
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->r:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->r:J

    .line 562
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->j:Lcom/google/ads/interactivemedia/v3/a/e/m;

    if-eqz v0, :cond_32

    .line 563
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->j:Lcom/google/ads/interactivemedia/v3/a/e/m;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/e/m;->a(I)V

    :cond_32
    move v0, v1

    .line 565
    goto :goto_4
.end method

.method private b(Lcom/google/ads/interactivemedia/v3/a/e/f;)Ljava/net/HttpURLConnection;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v0, 0x0

    .line 330
    new-instance v2, Ljava/net/URL;

    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/a/e/f;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 331
    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/a/e/f;->b:[B

    .line 332
    iget-wide v4, p1, Lcom/google/ads/interactivemedia/v3/a/e/f;->d:J

    .line 333
    iget-wide v6, p1, Lcom/google/ads/interactivemedia/v3/a/e/f;->e:J

    .line 334
    iget v1, p1, Lcom/google/ads/interactivemedia/v3/a/e/f;->g:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_24

    move v8, v9

    .line 336
    :goto_1a
    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->d:Z

    if-nez v1, :cond_26

    move-object v1, p0

    .line 339
    invoke-direct/range {v1 .. v9}, Lcom/google/ads/interactivemedia/v3/a/e/h;->a(Ljava/net/URL;[BJJZZ)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 364
    :goto_23
    return-object v0

    :cond_24
    move v8, v0

    .line 334
    goto :goto_1a

    :cond_26
    move v1, v0

    .line 346
    :goto_27
    add-int/lit8 v10, v1, 0x1

    const/16 v9, 0x14

    if-gt v1, v9, :cond_63

    move-object v1, p0

    move v9, v0

    .line 347
    invoke-direct/range {v1 .. v9}, Lcom/google/ads/interactivemedia/v3/a/e/h;->a(Ljava/net/URL;[BJJZZ)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 349
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    .line 350
    const/16 v11, 0x12c

    if-eq v9, v11, :cond_51

    const/16 v11, 0x12d

    if-eq v9, v11, :cond_51

    const/16 v11, 0x12e

    if-eq v9, v11, :cond_51

    const/16 v11, 0x12f

    if-eq v9, v11, :cond_51

    if-nez v3, :cond_61

    const/16 v3, 0x133

    if-eq v9, v3, :cond_51

    const/16 v3, 0x134

    if-ne v9, v3, :cond_61

    .line 359
    :cond_51
    const/4 v3, 0x0

    .line 360
    const-string v9, "Location"

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 361
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 362
    invoke-static {v2, v9}, Lcom/google/ads/interactivemedia/v3/a/e/h;->a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    move v1, v10

    .line 366
    goto :goto_27

    :cond_61
    move-object v0, v1

    .line 364
    goto :goto_23

    .line 369
    :cond_63
    new-instance v0, Ljava/net/NoRouteToHostException;

    const/16 v1, 0x1f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Too many redirects: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private c()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 504
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->q:J

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->o:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 531
    :goto_8
    return-void

    .line 509
    :cond_9
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/e/h;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 510
    if-nez v0, :cond_18

    .line 511
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 514
    :cond_18
    :goto_18
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->q:J

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->o:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_58

    .line 515
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->o:J

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->q:J

    sub-long/2addr v2, v4

    array-length v1, v0

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v1, v2

    .line 516
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->m:Ljava/io/InputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 517
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 518
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 520
    :cond_3f
    const/4 v2, -0x1

    if-ne v1, v2, :cond_48

    .line 521
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 523
    :cond_48
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->q:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->q:J

    .line 524
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->j:Lcom/google/ads/interactivemedia/v3/a/e/m;

    if-eqz v2, :cond_18

    .line 525
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->j:Lcom/google/ads/interactivemedia/v3/a/e/m;

    invoke-interface {v2, v1}, Lcom/google/ads/interactivemedia/v3/a/e/m;->a(I)V

    goto :goto_18

    .line 530
    :cond_58
    sget-object v1, Lcom/google/ads/interactivemedia/v3/a/e/h;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_8
.end method

.method private d()V
    .registers 4

    .prologue
    .line 572
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->l:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_c

    .line 574
    :try_start_4
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_d

    .line 578
    :goto_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->l:Ljava/net/HttpURLConnection;

    .line 580
    :cond_c
    return-void

    .line 575
    :catch_d
    move-exception v0

    .line 576
    const-string v1, "DefaultHttpDataSource"

    const-string v2, "Unexpected error while disconnecting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method


# virtual methods
.method public a([BII)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/e/k$a;
        }
    .end annotation

    .prologue
    .line 255
    :try_start_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/e/h;->c()V

    .line 256
    invoke-direct {p0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/a/e/h;->b([BII)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_8

    move-result v0

    return v0

    .line 257
    :catch_8
    move-exception v0

    .line 258
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/e/k$a;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->k:Lcom/google/ads/interactivemedia/v3/a/e/f;

    const/4 v3, 0x2

    invoke-direct {v1, v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/a/e/k$a;-><init>(Ljava/io/IOException;Lcom/google/ads/interactivemedia/v3/a/e/f;I)V

    throw v1
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/a/e/f;)J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/e/k$a;
        }
    .end annotation

    .prologue
    const/16 v8, 0xc8

    const-wide/16 v2, -0x1

    const-wide/16 v0, 0x0

    const/4 v7, 0x1

    .line 185
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->k:Lcom/google/ads/interactivemedia/v3/a/e/f;

    .line 186
    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->r:J

    .line 187
    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->q:J

    .line 189
    :try_start_d
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/a/e/h;->b(Lcom/google/ads/interactivemedia/v3/a/e/f;)Ljava/net/HttpURLConnection;

    move-result-object v4

    iput-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->l:Ljava/net/HttpURLConnection;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_13} :catch_2e

    .line 197
    :try_start_13
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_18} :catch_52

    move-result v4

    .line 205
    if-lt v4, v8, :cond_1f

    const/16 v5, 0x12b

    if-le v4, v5, :cond_79

    .line 206
    :cond_1f
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 207
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/e/h;->d()V

    .line 208
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/e/k$c;

    invoke-direct {v1, v4, v0, p1}, Lcom/google/ads/interactivemedia/v3/a/e/k$c;-><init>(ILjava/util/Map;Lcom/google/ads/interactivemedia/v3/a/e/f;)V

    throw v1

    .line 190
    :catch_2e
    move-exception v0

    move-object v1, v0

    .line 191
    new-instance v2, Lcom/google/ads/interactivemedia/v3/a/e/k$a;

    const-string v3, "Unable to connect to "

    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/a/e/f;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4c

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_48
    invoke-direct {v2, v0, v1, p1, v7}, Lcom/google/ads/interactivemedia/v3/a/e/k$a;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/ads/interactivemedia/v3/a/e/f;I)V

    throw v2

    :cond_4c
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_48

    .line 198
    :catch_52
    move-exception v0

    move-object v1, v0

    .line 199
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/e/h;->d()V

    .line 200
    new-instance v2, Lcom/google/ads/interactivemedia/v3/a/e/k$a;

    const-string v3, "Unable to connect to "

    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/a/e/f;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_73

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6f
    invoke-direct {v2, v0, v1, p1, v7}, Lcom/google/ads/interactivemedia/v3/a/e/k$a;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/ads/interactivemedia/v3/a/e/f;I)V

    throw v2

    :cond_73
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_6f

    .line 212
    :cond_79
    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v5

    .line 213
    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->h:Lcom/google/ads/interactivemedia/v3/a/f/n;

    if-eqz v6, :cond_94

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->h:Lcom/google/ads/interactivemedia/v3/a/f/n;

    invoke-interface {v6, v5}, Lcom/google/ads/interactivemedia/v3/a/f/n;->a(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_94

    .line 214
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/e/h;->d()V

    .line 215
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/e/k$b;

    invoke-direct {v0, v5, p1}, Lcom/google/ads/interactivemedia/v3/a/e/k$b;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/a/e/f;)V

    throw v0

    .line 221
    :cond_94
    if-ne v4, v8, :cond_9e

    iget-wide v4, p1, Lcom/google/ads/interactivemedia/v3/a/e/f;->d:J

    cmp-long v4, v4, v0

    if-eqz v4, :cond_9e

    iget-wide v0, p1, Lcom/google/ads/interactivemedia/v3/a/e/f;->d:J

    :cond_9e
    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->o:J

    .line 224
    iget v0, p1, Lcom/google/ads/interactivemedia/v3/a/e/f;->g:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_d6

    .line 225
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->l:Ljava/net/HttpURLConnection;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/e/h;->a(Ljava/net/HttpURLConnection;)J

    move-result-wide v0

    .line 226
    iget-wide v4, p1, Lcom/google/ads/interactivemedia/v3/a/e/f;->e:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_cc

    iget-wide v0, p1, Lcom/google/ads/interactivemedia/v3/a/e/f;->e:J

    .line 228
    :goto_b4
    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->p:J

    .line 238
    :goto_b6
    :try_start_b6
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->m:Ljava/io/InputStream;
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_be} :catch_db

    .line 244
    iput-boolean v7, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->n:Z

    .line 245
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->j:Lcom/google/ads/interactivemedia/v3/a/e/m;

    if-eqz v0, :cond_c9

    .line 246
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->j:Lcom/google/ads/interactivemedia/v3/a/e/m;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/a/e/m;->a()V

    .line 249
    :cond_c9
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->p:J

    return-wide v0

    .line 227
    :cond_cc
    cmp-long v4, v0, v2

    if-eqz v4, :cond_d4

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->o:J

    sub-long/2addr v0, v2

    goto :goto_b4

    :cond_d4
    move-wide v0, v2

    .line 228
    goto :goto_b4

    .line 234
    :cond_d6
    iget-wide v0, p1, Lcom/google/ads/interactivemedia/v3/a/e/f;->e:J

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->p:J

    goto :goto_b6

    .line 239
    :catch_db
    move-exception v0

    .line 240
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/e/h;->d()V

    .line 241
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/e/k$a;

    invoke-direct {v1, v0, p1, v7}, Lcom/google/ads/interactivemedia/v3/a/e/k$a;-><init>(Ljava/io/IOException;Lcom/google/ads/interactivemedia/v3/a/e/f;I)V

    throw v1
.end method

.method public a()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/e/k$a;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 265
    :try_start_2
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->m:Ljava/io/InputStream;

    if-eqz v0, :cond_14

    .line 266
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/e/h;->b()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/a/f/q;->a(Ljava/net/HttpURLConnection;J)V
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_33

    .line 268
    :try_start_f
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->m:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_14} :catch_29
    .catchall {:try_start_f .. :try_end_14} :catchall_33

    .line 274
    :cond_14
    iput-object v5, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->m:Ljava/io/InputStream;

    .line 275
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/e/h;->d()V

    .line 276
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->n:Z

    if-eqz v0, :cond_28

    .line 277
    iput-boolean v4, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->n:Z

    .line 278
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->j:Lcom/google/ads/interactivemedia/v3/a/e/m;

    if-eqz v0, :cond_28

    .line 279
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->j:Lcom/google/ads/interactivemedia/v3/a/e/m;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/a/e/m;->b()V

    .line 283
    :cond_28
    return-void

    .line 269
    :catch_29
    move-exception v0

    .line 270
    :try_start_2a
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/e/k$a;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->k:Lcom/google/ads/interactivemedia/v3/a/e/f;

    const/4 v3, 0x3

    invoke-direct {v1, v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/a/e/k$a;-><init>(Ljava/io/IOException;Lcom/google/ads/interactivemedia/v3/a/e/f;I)V

    throw v1
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_33

    .line 274
    :catchall_33
    move-exception v0

    iput-object v5, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->m:Ljava/io/InputStream;

    .line 275
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/e/h;->d()V

    .line 276
    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->n:Z

    if-eqz v1, :cond_48

    .line 277
    iput-boolean v4, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->n:Z

    .line 278
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->j:Lcom/google/ads/interactivemedia/v3/a/e/m;

    if-eqz v1, :cond_48

    .line 279
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->j:Lcom/google/ads/interactivemedia/v3/a/e/m;

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/a/e/m;->b()V

    :cond_48
    throw v0
.end method

.method protected final b()J
    .registers 5

    .prologue
    .line 323
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->p:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->p:J

    :goto_a
    return-wide v0

    :cond_b
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->p:J

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/e/h;->r:J

    sub-long/2addr v0, v2

    goto :goto_a
.end method
