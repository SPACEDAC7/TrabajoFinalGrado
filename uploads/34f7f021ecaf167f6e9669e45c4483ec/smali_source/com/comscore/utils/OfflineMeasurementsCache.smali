.class public Lcom/comscore/utils/OfflineMeasurementsCache;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Lcom/comscore/analytics/Core;

.field private b:I

.field private c:I

.field private d:I

.field private e:J

.field private f:J

.field private g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field private k:I

.field private l:J

.field private m:J


# direct methods
.method public constructor <init>(Lcom/comscore/analytics/Core;)V
    .registers 3

    const-string v0, "cs_cache_"

    invoke-direct {p0, p1, v0}, Lcom/comscore/utils/OfflineMeasurementsCache;-><init>(Lcom/comscore/analytics/Core;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Lcom/comscore/analytics/Core;Ljava/lang/String;)V
    .registers 7

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->i:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->j:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->k:I

    iput-wide v2, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->l:J

    iput-wide v2, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->m:J

    iput-object p1, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->a:Lcom/comscore/analytics/Core;

    iput-object p2, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->h:Ljava/lang/String;

    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/comscore/utils/OfflineMeasurementsCache;->setCacheMaxMeasurements(I)V

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/comscore/utils/OfflineMeasurementsCache;->setCacheMaxBatchFiles(I)V

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/comscore/utils/OfflineMeasurementsCache;->setCacheMaxPosts(I)V

    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lcom/comscore/utils/OfflineMeasurementsCache;->setCacheWaitMinutes(I)V

    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Lcom/comscore/utils/OfflineMeasurementsCache;->setCacheMeasurementExpiry(I)V

    invoke-direct {p0}, Lcom/comscore/utils/OfflineMeasurementsCache;->e()V

    return-void
.end method

.method private a(I)V
    .registers 5

    iget-object v0, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getStorage()Lcom/comscore/utils/Storage;

    move-result-object v0

    const-string v1, "CACHE_DROPPED_MEASUREMENTS"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/Storage;->has(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_21

    const-string v1, "CACHE_DROPPED_MEASUREMENTS"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/Storage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr p1, v1

    :cond_21
    const-string v1, "CACHE_DROPPED_MEASUREMENTS"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getStorage()Lcom/comscore/utils/Storage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/comscore/utils/Storage;->has(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {v0, p1}, Lcom/comscore/utils/Storage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/comscore/utils/OfflineMeasurementsCache;->a(I)V

    :cond_1f
    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .registers 4

    if-eqz p1, :cond_11

    if-eqz p2, :cond_7

    invoke-direct {p0, p1}, Lcom/comscore/utils/OfflineMeasurementsCache;->a(Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->a:Lcom/comscore/analytics/Core;

    invoke-static {v0, p1}, Lcom/comscore/utils/FileUtils;->deleteFile(Lcom/comscore/analytics/Core;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_11
    return-void
.end method

.method private a(J)Z
    .registers 12

    const-wide/16 v6, 0x3c

    invoke-static {}, Lcom/comscore/utils/Date;->unixTime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iget-wide v2, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->f:J

    const-wide/16 v4, 0x18

    mul-long/2addr v2, v4

    mul-long/2addr v2, v6

    mul-long/2addr v2, v6

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    sub-long v0, v2, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1b

    const/4 v0, 0x1

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    const/4 v0, 0x1

    invoke-static {}, Lcom/comscore/utils/Connectivity;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    :try_start_a
    new-instance v3, Lorg/apache/http/entity/StringEntity;

    const-string v4, "UTF-8"

    invoke-direct {v3, p1, v4}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "text/xml"

    invoke-virtual {v3, v4}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    const-string v4, "http.agent"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "User-Agent"

    invoke-virtual {v2, v5, v4}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    const-string v3, "Sending POST request"

    invoke-static {p0, v3}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Response:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "Cache flushed"

    invoke-static {p0, v3}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_7e

    invoke-static {v1}, Lcom/comscore/utils/Utils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7e

    const-string v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_68
    .catch Ljavax/net/ssl/SSLException; {:try_start_a .. :try_end_68} :catch_6c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_68} :catch_80

    move-result v1

    if-eqz v1, :cond_7e

    :goto_6b
    return v0

    :catch_6c
    move-exception v1

    invoke-virtual {v1}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/comscore/utils/CSLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->a:Lcom/comscore/analytics/Core;

    sget-object v2, Lcom/comscore/utils/TransmissionMode;->DISABLED:Lcom/comscore/utils/TransmissionMode;

    invoke-virtual {v1, v2, v0}, Lcom/comscore/analytics/Core;->allowOfflineTransmission(Lcom/comscore/utils/TransmissionMode;Z)V

    invoke-virtual {p0}, Lcom/comscore/utils/OfflineMeasurementsCache;->clear()V

    :cond_7e
    :goto_7e
    const/4 v0, 0x0

    goto :goto_6b

    :catch_80
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in flush:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/comscore/utils/CSLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/comscore/utils/CSLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_7e
.end method

.method private static a([Ljava/lang/String;II)[Ljava/lang/String;
    .registers 6

    if-le p1, p2, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_8
    array-length v0, p0

    if-ltz p1, :cond_d

    if-le p1, v0, :cond_13

    :cond_d
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_13
    sub-int v1, p2, p1

    sub-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method private b(Ljava/lang/String;)V
    .registers 5

    const-string v0, "Creating new cache batch file"

    invoke-static {p0, v0}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ns_ts"

    invoke-static {p1, v1}, Lcom/comscore/utils/XMLBuilder;->getLabelFromEvent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->a:Lcom/comscore/analytics/Core;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, p1}, Lcom/comscore/utils/FileUtils;->writeEvent(Lcom/comscore/analytics/Core;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->i:Ljava/util/ArrayList;

    if-nez v1, :cond_2f

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->i:Ljava/util/ArrayList;

    :cond_2f
    iget-object v1, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/comscore/utils/OfflineMeasurementsCache;->c()V

    return-void
.end method

.method private b()Z
    .registers 11

    const-wide/16 v8, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/comscore/utils/OfflineMeasurementsCache;->d()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-virtual {p0}, Lcom/comscore/utils/OfflineMeasurementsCache;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6d

    iget-object v2, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v2}, Lcom/comscore/analytics/Core;->getCustomerC2()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6d

    iget v2, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->k:I

    iget v3, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->d:I

    if-lt v2, v3, :cond_3a

    iget-wide v2, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->e:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x3c

    mul-long/2addr v2, v4

    invoke-static {}, Lcom/comscore/utils/Date;->unixTime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->m:J

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    cmp-long v4, v2, v8

    if-gtz v4, :cond_3b

    iput v1, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->k:I

    iput-wide v8, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->m:J

    :cond_3a
    :goto_3a
    return v0

    :cond_3b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Max flushes in a row ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->d:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ") reached. Waiting "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x404e000000000000L

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " minutes"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6d
    move v0, v1

    goto :goto_3a
.end method

.method private c(Ljava/lang/String;)I
    .registers 4

    iget-object v0, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getStorage()Lcom/comscore/utils/Storage;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz p1, :cond_1f

    invoke-virtual {v1, p1}, Lcom/comscore/utils/Storage;->has(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {v1, p1}, Lcom/comscore/utils/Storage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_1f
    :goto_1f
    return v0

    :cond_20
    iget-object v0, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/comscore/utils/FileUtils;->readCachedEvents(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    goto :goto_1f
.end method

.method private c()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->l:J

    iget-object v0, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->j:Ljava/lang/String;

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->j:Ljava/lang/String;

    :cond_b
    return-void
.end method

.method private d()Ljava/lang/Boolean;
    .registers 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/comscore/utils/Connectivity;->isEmulator()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_11
    return-object v0

    :cond_12
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0, v1}, Lcom/comscore/utils/Permissions;->check(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_23

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_11

    :cond_23
    invoke-static {v0}, Lcom/comscore/utils/Connectivity;->isConnectedWiFi(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_11

    :cond_2e
    invoke-static {v0}, Lcom/comscore/utils/Connectivity;->isConnectedMobile(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_11

    :cond_39
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_11
.end method

.method private d(Ljava/lang/String;)[Ljava/lang/String;
    .registers 11

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/comscore/utils/FileUtils;->readCachedEvents(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move v0, v1

    move v2, v1

    :goto_e
    array-length v5, v4

    if-ge v2, v5, :cond_3c

    :try_start_11
    aget-object v5, v4, v2

    const-string v6, "ns_ts"

    invoke-static {v5, v6}, Lcom/comscore/utils/XMLBuilder;->getLabelFromEvent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/comscore/utils/OfflineMeasurementsCache;->a(J)Z

    move-result v0

    if-nez v0, :cond_5f

    move v0, v3

    :goto_24
    if-eqz v0, :cond_62

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Valid timestamp found: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_3c} :catch_61

    :cond_3c
    if-nez v0, :cond_65

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "All events in the file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " are expired"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v3}, Lcom/comscore/utils/OfflineMeasurementsCache;->a(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    :goto_5e
    return-object v0

    :cond_5f
    move v0, v1

    goto :goto_24

    :catch_61
    move-exception v5

    :cond_62
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_65
    invoke-direct {p0, v2}, Lcom/comscore/utils/OfflineMeasurementsCache;->a(I)V

    array-length v0, v4

    invoke-static {v4, v2, v0}, Lcom/comscore/utils/OfflineMeasurementsCache;->a([Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v0

    goto :goto_5e
.end method

.method private e(Ljava/lang/String;)J
    .registers 4

    iget-object v0, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private e()V
    .registers 7

    invoke-direct {p0}, Lcom/comscore/utils/OfflineMeasurementsCache;->f()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_b
    if-ltz v1, :cond_47

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/comscore/utils/OfflineMeasurementsCache;->e(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/comscore/utils/OfflineMeasurementsCache;->a(J)Z

    move-result v0

    if-eqz v0, :cond_43

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleting expired cache file "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/comscore/utils/OfflineMeasurementsCache;->a(Ljava/lang/String;Z)V

    :cond_43
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_b

    :cond_47
    return-void
.end method

.method private f()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/utils/FileUtils;->getFileList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->i:Ljava/util/ArrayList;

    :cond_10
    iget-object v0, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method private g()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_16

    iget-object v0, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->i:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_15
    return-object v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private h()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1d

    iget-object v0, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->i:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_1c
    return-object v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 7

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->g:Ljava/lang/String;

    if-eqz v0, :cond_7b

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->g:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_d
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_8f

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    :goto_1c
    iget-object v4, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v4}, Lcom/comscore/analytics/Core;->getCustomerC2()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3c

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3c

    if-eqz v1, :cond_33

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_33
    const-string v1, "c2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v3

    :cond_3c
    const-string v4, "JetportGotAMaskOfThe%sS.D_K-"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v5}, Lcom/comscore/analytics/Core;->getPublisherSecret()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/comscore/utils/Utils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_69

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_69

    if-eqz v1, :cond_61

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_61
    const-string v1, "s="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/Locale;

    const-string v2, "en"

    const-string v3, "US"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7b
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_8c

    const-string v0, "https://udm.scorecardresearch.com/offline"

    :goto_87
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_d

    :cond_8c
    const-string v0, "http://udm.scorecardresearch.com/offline"

    goto :goto_87

    :cond_8f
    move v1, v3

    goto :goto_1c
.end method

.method public clear()V
    .registers 5

    iget-object v0, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    return-void

    :cond_9
    invoke-direct {p0}, Lcom/comscore/utils/OfflineMeasurementsCache;->f()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    :goto_12
    if-lez v1, :cond_8

    add-int/lit8 v0, v1, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/comscore/utils/OfflineMeasurementsCache;->a(Ljava/lang/String;Z)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_12
.end method

.method public declared-synchronized flush()Z
    .registers 13

    const-wide/16 v10, 0x0

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_4
    iget-object v1, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v1}, Lcom/comscore/analytics/Core;->isEnabled()Z
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_dc

    move-result v1

    if-nez v1, :cond_e

    :cond_c
    :goto_c
    monitor-exit p0

    return v0

    :cond_e
    :try_start_e
    iget-object v1, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v1}, Lcom/comscore/analytics/Core;->getStorage()Lcom/comscore/utils/Storage;

    move-result-object v3

    invoke-direct {p0}, Lcom/comscore/utils/OfflineMeasurementsCache;->e()V

    iget-wide v4, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->e:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3c

    mul-long/2addr v4, v6

    invoke-static {}, Lcom/comscore/utils/Date;->unixTime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->l:J

    sub-long/2addr v6, v8

    sub-long/2addr v4, v6

    cmp-long v1, v4, v10

    if-gtz v1, :cond_ea

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->l:J

    :cond_2f
    :goto_2f
    invoke-direct {p0}, Lcom/comscore/utils/OfflineMeasurementsCache;->b()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cache is not empty, contains "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->i:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " files"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->j:Ljava/lang/String;

    if-nez v2, :cond_97

    invoke-direct {p0}, Lcom/comscore/utils/OfflineMeasurementsCache;->h()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reading events from the file "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/comscore/utils/OfflineMeasurementsCache;->d(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_97

    array-length v2, v4

    if-lez v2, :cond_97

    const-string v2, "CACHE_DROPPED_MEASUREMENTS"

    invoke-virtual {v3, v2}, Lcom/comscore/utils/Storage;->has(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_df

    const-string v2, "CACHE_DROPPED_MEASUREMENTS"

    invoke-virtual {v3, v2}, Lcom/comscore/utils/Storage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_91
    invoke-static {v4, v2}, Lcom/comscore/utils/XMLBuilder;->generateXMLRequestString([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->j:Ljava/lang/String;

    :cond_97
    iget-object v2, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->j:Ljava/lang/String;

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->j:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2f

    iget-object v0, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/comscore/utils/OfflineMeasurementsCache;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/comscore/utils/OfflineMeasurementsCache;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e2

    iget v2, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->k:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->k:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/comscore/utils/OfflineMeasurementsCache;->a(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/comscore/utils/OfflineMeasurementsCache;->c()V

    invoke-static {}, Lcom/comscore/utils/Date;->unixTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->m:J

    const-string v1, "CACHE_DROPPED_MEASUREMENTS"

    invoke-virtual {v3, v1}, Lcom/comscore/utils/Storage;->remove(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v1}, Lcom/comscore/analytics/Core;->getStorage()Lcom/comscore/utils/Storage;

    move-result-object v1

    const-string v2, "lastMeasurementProcessedTimestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_da
    .catchall {:try_start_e .. :try_end_da} :catchall_dc

    goto/16 :goto_2f

    :catchall_dc
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_df
    :try_start_df
    const-string v2, "0"

    goto :goto_91

    :cond_e2
    invoke-static {}, Lcom/comscore/utils/Date;->unixTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->l:J

    goto/16 :goto_c

    :cond_ea
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Waiting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    long-to-double v2, v4

    const-wide v4, 0x408f400000000000L

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x404e000000000000L

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " minutes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_110
    .catchall {:try_start_df .. :try_end_110} :catchall_dc

    goto/16 :goto_c
.end method

.method public getCacheMaxBatchFiles()I
    .registers 2

    iget v0, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->c:I

    return v0
.end method

.method public getCacheMaxMeasurements()I
    .registers 2

    iget v0, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->b:I

    return v0
.end method

.method public getCacheMaxPosts()I
    .registers 2

    iget v0, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->d:I

    return v0
.end method

.method public getCacheMeasurementExpiry()J
    .registers 3

    iget-wide v0, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->f:J

    return-wide v0
.end method

.method public getCacheWaitMinutes()J
    .registers 3

    iget-wide v0, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->e:J

    return-wide v0
.end method

.method public getEventCount()I
    .registers 4

    invoke-direct {p0}, Lcom/comscore/utils/OfflineMeasurementsCache;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/comscore/utils/OfflineMeasurementsCache;->c(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0}, Lcom/comscore/utils/OfflineMeasurementsCache;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1e

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0}, Lcom/comscore/utils/OfflineMeasurementsCache;->getCacheMaxBatchFiles()I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_1e
    return v0
.end method

.method public isEmpty()Z
    .registers 2

    invoke-virtual {p0}, Lcom/comscore/utils/OfflineMeasurementsCache;->getEventCount()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public saveApplicationMeasurement(Lcom/comscore/applications/EventType;Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/comscore/applications/EventType;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/comscore/utils/OfflineMeasurementsCache;->saveApplicationMeasurement(Lcom/comscore/applications/EventType;Ljava/util/HashMap;Z)V

    return-void
.end method

.method public saveApplicationMeasurement(Lcom/comscore/applications/EventType;Ljava/util/HashMap;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/comscore/applications/EventType;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->a:Lcom/comscore/analytics/Core;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/comscore/applications/ApplicationMeasurement;->newApplicationMeasurement(Lcom/comscore/analytics/Core;Lcom/comscore/applications/EventType;Ljava/util/HashMap;Ljava/lang/String;)Lcom/comscore/applications/ApplicationMeasurement;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v1}, Lcom/comscore/analytics/Core;->getMeasurementDispatcher()Lcom/comscore/measurement/MeasurementDispatcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/comscore/measurement/MeasurementDispatcher;->addAggregateData(Lcom/comscore/measurement/Measurement;)V

    iget-object v1, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v1}, Lcom/comscore/analytics/Core;->getMeasurementDispatcher()Lcom/comscore/measurement/MeasurementDispatcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/comscore/measurement/MeasurementDispatcher;->addEventCounter(Lcom/comscore/measurement/Measurement;)V

    invoke-virtual {p0, v0, p3}, Lcom/comscore/utils/OfflineMeasurementsCache;->saveEvent(Lcom/comscore/measurement/Measurement;Z)V

    goto :goto_8
.end method

.method public saveEvent(Lcom/comscore/measurement/Measurement;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/comscore/utils/OfflineMeasurementsCache;->saveEvent(Lcom/comscore/measurement/Measurement;Z)V

    return-void
.end method

.method public saveEvent(Lcom/comscore/measurement/Measurement;Z)V
    .registers 6

    iget-object v0, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    if-eqz p2, :cond_1b

    iget-object v0, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getTaskExecutor()Lcom/comscore/utils/task/TaskExecutor;

    move-result-object v0

    new-instance v1, Lcom/comscore/utils/c;

    invoke-direct {v1, p0, p1}, Lcom/comscore/utils/c;-><init>(Lcom/comscore/utils/OfflineMeasurementsCache;Lcom/comscore/measurement/Measurement;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/task/TaskExecutor;->execute(Ljava/lang/Runnable;Z)Z

    goto :goto_8

    :cond_1b
    iget-object v0, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getMeasurementLabelOrder()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/comscore/measurement/Measurement;->retrieveLabelsAsString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comscore/utils/OfflineMeasurementsCache;->saveEvent(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public declared-synchronized saveEvent(Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_58

    move-result v0

    if-nez v0, :cond_b

    :cond_9
    :goto_9
    monitor-exit p0

    return-void

    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getOfflineTransmissionMode()Lcom/comscore/utils/TransmissionMode;

    move-result-object v0

    sget-object v1, Lcom/comscore/utils/TransmissionMode;->DISABLED:Lcom/comscore/utils/TransmissionMode;

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getCustomerC2()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v0, "ns_ts"

    invoke-static {p1, v0}, Lcom/comscore/utils/XMLBuilder;->getLabelFromEvent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/utils/Utils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/comscore/utils/OfflineMeasurementsCache;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a0

    invoke-direct {p0, v0}, Lcom/comscore/utils/OfflineMeasurementsCache;->c(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcom/comscore/utils/OfflineMeasurementsCache;->getCacheMaxBatchFiles()I

    move-result v2

    if-ge v1, v2, :cond_5b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->a:Lcom/comscore/analytics/Core;

    const v3, 0x8000

    invoke-static {v2, v0, v3, v1}, Lcom/comscore/utils/FileUtils;->writeEvent(Lcom/comscore/analytics/Core;Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/comscore/utils/OfflineMeasurementsCache;->c()V
    :try_end_57
    .catchall {:try_start_b .. :try_end_57} :catchall_58

    goto :goto_9

    :catchall_58
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5b
    :try_start_5b
    const-string v0, "The newest cache batch file is full"

    invoke-static {p0, v0}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/comscore/utils/OfflineMeasurementsCache;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/comscore/utils/OfflineMeasurementsCache;->getCacheMaxMeasurements()I

    move-result v1

    invoke-virtual {p0}, Lcom/comscore/utils/OfflineMeasurementsCache;->getCacheMaxBatchFiles()I

    move-result v2

    div-int/2addr v1, v2

    if-lt v0, v1, :cond_9b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reached the cache max ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/comscore/utils/OfflineMeasurementsCache;->getCacheMaxMeasurements()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") size"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/comscore/utils/OfflineMeasurementsCache;->g()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/comscore/utils/OfflineMeasurementsCache;->a(Ljava/lang/String;Z)V

    :cond_9b
    invoke-direct {p0, p1}, Lcom/comscore/utils/OfflineMeasurementsCache;->b(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_a0
    invoke-direct {p0, p1}, Lcom/comscore/utils/OfflineMeasurementsCache;->b(Ljava/lang/String;)V
    :try_end_a3
    .catchall {:try_start_5b .. :try_end_a3} :catchall_58

    goto/16 :goto_9
.end method

.method public setCacheMaxBatchFiles(I)V
    .registers 3

    iget-object v0, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    if-lez p1, :cond_8

    iput p1, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->c:I

    goto :goto_8
.end method

.method public setCacheMaxMeasurements(I)V
    .registers 3

    iget-object v0, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iput p1, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->b:I

    goto :goto_8
.end method

.method public setCacheMaxPosts(I)V
    .registers 2

    iput p1, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->d:I

    return-void
.end method

.method public setCacheMeasurementExpiry(I)V
    .registers 4

    iget-object v0, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->f:J

    goto :goto_8
.end method

.method public setCacheWaitMinutes(I)V
    .registers 4

    iget-object v0, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->e:J

    goto :goto_8
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iput-object p1, p0, Lcom/comscore/utils/OfflineMeasurementsCache;->g:Ljava/lang/String;

    goto :goto_8
.end method
