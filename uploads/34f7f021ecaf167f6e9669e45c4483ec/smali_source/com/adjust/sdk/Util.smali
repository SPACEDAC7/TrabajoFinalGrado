.class public Lcom/adjust/sdk/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'Z"

.field public static final SecondsDisplayFormat:Ljava/text/DecimalFormat;

.field public static final dateFormatter:Ljava/text/SimpleDateFormat;

.field private static final fieldReadErrorMessage:Ljava/lang/String; = "Unable to read \'%s\' field in migration device with message (%s)"

.field private static userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 64
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/adjust/sdk/Util;->SecondsDisplayFormat:Ljava/text/DecimalFormat;

    .line 65
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/adjust/sdk/Util;->dateFormatter:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 384
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 385
    .local v0, "result":I
    if-nez v0, :cond_8

    const/4 v1, 0x1

    :goto_7
    return v1

    :cond_8
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public static convertToHex([B)Ljava/lang/String;
    .registers 6
    .param p0, "bytes"    # [B

    .prologue
    const/4 v4, 0x1

    .line 519
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v4, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 520
    .local v0, "bigInt":Ljava/math/BigInteger;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p0

    shl-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 521
    .local v1, "formatString":Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static createGETHttpsURLConnection(Ljava/lang/String;Ljava/lang/String;)Lcom/adjust/sdk/AdjustFactory$URLGetConnection;
    .registers 7
    .param p0, "urlString"    # Ljava/lang/String;
    .param p1, "clientSdk"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 290
    const/4 v0, 0x0

    .line 292
    .local v0, "connection":Ljavax/net/ssl/HttpsURLConnection;
    :try_start_1
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 293
    .local v2, "url":Ljava/net/URL;
    invoke-static {v2}, Lcom/adjust/sdk/AdjustFactory;->getHttpsURLGetConnection(Ljava/net/URL;)Lcom/adjust/sdk/AdjustFactory$URLGetConnection;

    move-result-object v3

    .line 295
    .local v3, "urlGetConnection":Lcom/adjust/sdk/AdjustFactory$URLGetConnection;
    iget-object v0, v3, Lcom/adjust/sdk/AdjustFactory$URLGetConnection;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    .line 296
    invoke-static {v0, p1}, Lcom/adjust/sdk/Util;->setDefaultHttpsUrlConnectionProperties(Ljavax/net/ssl/HttpsURLConnection;Ljava/lang/String;)V

    .line 298
    const-string v4, "GET"

    invoke-virtual {v0, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_14} :catch_15

    .line 300
    return-object v3

    .line 301
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "urlGetConnection":Lcom/adjust/sdk/AdjustFactory$URLGetConnection;
    :catch_15
    move-exception v1

    .line 302
    .local v1, "e":Ljava/io/IOException;
    throw v1
.end method

.method public static createPOSTHttpsURLConnection(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)Ljavax/net/ssl/HttpsURLConnection;
    .registers 11
    .param p0, "urlString"    # Ljava/lang/String;
    .param p1, "clientSdk"    # Ljava/lang/String;
    .param p3, "queueSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Ljavax/net/ssl/HttpsURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    .local p2, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 312
    .local v3, "wr":Ljava/io/DataOutputStream;
    const/4 v0, 0x0

    .line 314
    .local v0, "connection":Ljavax/net/ssl/HttpsURLConnection;
    :try_start_2
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 315
    .local v2, "url":Ljava/net/URL;
    invoke-static {v2}, Lcom/adjust/sdk/AdjustFactory;->getHttpsURLConnection(Ljava/net/URL;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    .line 317
    invoke-static {v0, p1}, Lcom/adjust/sdk/Util;->setDefaultHttpsUrlConnectionProperties(Ljavax/net/ssl/HttpsURLConnection;Ljava/lang/String;)V

    .line 318
    const-string v5, "POST"

    invoke-virtual {v0, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 320
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    .line 321
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 322
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 324
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_28} :catch_38
    .catchall {:try_start_2 .. :try_end_28} :catchall_3a

    .line 325
    .end local v3    # "wr":Ljava/io/DataOutputStream;
    .local v4, "wr":Ljava/io/DataOutputStream;
    :try_start_28
    invoke-static {p2, p3}, Lcom/adjust/sdk/Util;->getPostDataString(Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2f} :catch_49
    .catchall {:try_start_28 .. :try_end_2f} :catchall_46

    .line 332
    if-eqz v4, :cond_37

    .line 333
    :try_start_31
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 334
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_37} :catch_4c

    .line 327
    :cond_37
    :goto_37
    return-object v0

    .line 328
    .end local v2    # "url":Ljava/net/URL;
    .end local v4    # "wr":Ljava/io/DataOutputStream;
    .restart local v3    # "wr":Ljava/io/DataOutputStream;
    :catch_38
    move-exception v1

    .line 329
    .local v1, "e":Ljava/io/IOException;
    :goto_39
    :try_start_39
    throw v1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_3a

    .line 331
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_3a
    move-exception v5

    .line 332
    :goto_3b
    if-eqz v3, :cond_43

    .line 333
    :try_start_3d
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 334
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_43} :catch_44

    .line 336
    :cond_43
    :goto_43
    throw v5

    :catch_44
    move-exception v6

    goto :goto_43

    .line 331
    .end local v3    # "wr":Ljava/io/DataOutputStream;
    .restart local v2    # "url":Ljava/net/URL;
    .restart local v4    # "wr":Ljava/io/DataOutputStream;
    :catchall_46
    move-exception v5

    move-object v3, v4

    .end local v4    # "wr":Ljava/io/DataOutputStream;
    .restart local v3    # "wr":Ljava/io/DataOutputStream;
    goto :goto_3b

    .line 328
    .end local v3    # "wr":Ljava/io/DataOutputStream;
    .restart local v4    # "wr":Ljava/io/DataOutputStream;
    :catch_49
    move-exception v1

    move-object v3, v4

    .end local v4    # "wr":Ljava/io/DataOutputStream;
    .restart local v3    # "wr":Ljava/io/DataOutputStream;
    goto :goto_39

    .line 336
    .end local v3    # "wr":Ljava/io/DataOutputStream;
    .restart local v4    # "wr":Ljava/io/DataOutputStream;
    :catch_4c
    move-exception v5

    goto :goto_37
.end method

.method protected static createUuid()Ljava/lang/String;
    .registers 1

    .prologue
    .line 74
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static equalBoolean(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z
    .registers 3
    .param p0, "first"    # Ljava/lang/Boolean;
    .param p1, "second"    # Ljava/lang/Boolean;

    .prologue
    .line 459
    invoke-static {p0, p1}, Lcom/adjust/sdk/Util;->equalObject(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static equalEnum(Ljava/lang/Enum;Ljava/lang/Enum;)Z
    .registers 3
    .param p0, "first"    # Ljava/lang/Enum;
    .param p1, "second"    # Ljava/lang/Enum;

    .prologue
    .line 447
    invoke-static {p0, p1}, Lcom/adjust/sdk/Util;->equalObject(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static equalInt(Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .registers 3
    .param p0, "first"    # Ljava/lang/Integer;
    .param p1, "second"    # Ljava/lang/Integer;

    .prologue
    .line 455
    invoke-static {p0, p1}, Lcom/adjust/sdk/Util;->equalObject(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static equalLong(Ljava/lang/Long;Ljava/lang/Long;)Z
    .registers 3
    .param p0, "first"    # Ljava/lang/Long;
    .param p1, "second"    # Ljava/lang/Long;

    .prologue
    .line 451
    invoke-static {p0, p1}, Lcom/adjust/sdk/Util;->equalObject(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static equalObject(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "first"    # Ljava/lang/Object;
    .param p1, "second"    # Ljava/lang/Object;

    .prologue
    .line 429
    if-eqz p0, :cond_4

    if-nez p1, :cond_c

    .line 430
    :cond_4
    if-nez p0, :cond_a

    if-nez p1, :cond_a

    const/4 v0, 0x1

    .line 432
    :goto_9
    return v0

    .line 430
    :cond_a
    const/4 v0, 0x0

    goto :goto_9

    .line 432
    :cond_c
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_9
.end method

.method public static equalString(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "first"    # Ljava/lang/String;
    .param p1, "second"    # Ljava/lang/String;

    .prologue
    .line 443
    invoke-static {p0, p1}, Lcom/adjust/sdk/Util;->equalObject(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static equalsDouble(Ljava/lang/Double;Ljava/lang/Double;)Z
    .registers 8
    .param p0, "first"    # Ljava/lang/Double;
    .param p1, "second"    # Ljava/lang/Double;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 436
    if-eqz p0, :cond_6

    if-nez p1, :cond_d

    .line 437
    :cond_6
    if-nez p0, :cond_b

    if-nez p1, :cond_b

    .line 439
    :cond_a
    :goto_a
    return v0

    :cond_b
    move v0, v1

    .line 437
    goto :goto_a

    .line 439
    :cond_d
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_a

    move v0, v1

    goto :goto_a
.end method

.method public static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 137
    invoke-static {p0}, Lcom/adjust/sdk/Reflection;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCpuAbi()Ljava/lang/String;
    .registers 1

    .prologue
    .line 529
    invoke-static {}, Lcom/adjust/sdk/Reflection;->getCpuAbi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFireAdvertisingId(Landroid/content/ContentResolver;)Ljava/lang/String;
    .registers 3
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v0, 0x0

    .line 619
    if-nez p0, :cond_4

    .line 628
    :goto_3
    return-object v0

    .line 624
    :cond_4
    :try_start_4
    const-string v1, "advertising_id"

    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v0

    goto :goto_3

    .line 625
    :catch_b
    move-exception v1

    goto :goto_3
.end method

.method public static getFireTrackingEnabled(Landroid/content/ContentResolver;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 634
    :try_start_0
    const-string v0, "limit_ad_tracking"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_10

    move-result-object v0

    .line 638
    :goto_d
    return-object v0

    .line 634
    :cond_e
    const/4 v0, 0x0

    goto :goto_9

    .line 635
    :catch_10
    move-exception v0

    .line 638
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static getGoogleAdId(Landroid/content/Context;Lcom/adjust/sdk/OnDeviceIdsRead;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "onDeviceIdRead"    # Lcom/adjust/sdk/OnDeviceIdsRead;

    .prologue
    const/4 v4, 0x0

    .line 96
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v1

    .line 97
    .local v1, "logger":Lcom/adjust/sdk/ILogger;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_36

    .line 98
    const-string v2, "GoogleAdId being read in the background"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    invoke-static {p0}, Lcom/adjust/sdk/Util;->getPlayAdId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "GoogleAdId":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GoogleAdId read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    invoke-interface {p1, v0}, Lcom/adjust/sdk/OnDeviceIdsRead;->onGoogleAdIdRead(Ljava/lang/String;)V

    .line 123
    .end local v0    # "GoogleAdId":Ljava/lang/String;
    :goto_35
    return-void

    .line 106
    :cond_36
    const-string v2, "GoogleAdId being read in the foreground"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    new-instance v2, Lcom/adjust/sdk/Util$1;

    invoke-direct {v2, p1}, Lcom/adjust/sdk/Util$1;-><init>(Lcom/adjust/sdk/OnDeviceIdsRead;)V

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/content/Context;

    aput-object p0, v3, v4

    .line 122
    invoke-virtual {v2, v3}, Lcom/adjust/sdk/Util$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_35
.end method

.method public static getLocale(Landroid/content/res/Configuration;)Ljava/util/Locale;
    .registers 2
    .param p0, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    .line 611
    invoke-static {p0}, Lcom/adjust/sdk/Reflection;->getLocaleFromLocaleList(Landroid/content/res/Configuration;)Ljava/util/Locale;

    move-result-object v0

    .line 612
    .local v0, "locale":Ljava/util/Locale;
    if-eqz v0, :cond_7

    .line 615
    .end local v0    # "locale":Ljava/util/Locale;
    :goto_6
    return-object v0

    .restart local v0    # "locale":Ljava/util/Locale;
    :cond_7
    invoke-static {p0}, Lcom/adjust/sdk/Reflection;->getLocaleFromField(Landroid/content/res/Configuration;)Ljava/util/Locale;

    move-result-object v0

    goto :goto_6
.end method

.method private static getLogger()Lcom/adjust/sdk/ILogger;
    .registers 1

    .prologue
    .line 70
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    return-object v0
.end method

.method public static getMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 130
    invoke-static {p0}, Lcom/adjust/sdk/Reflection;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPlayAdId(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    invoke-static {p0}, Lcom/adjust/sdk/Reflection;->getPlayAdId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPluginKeys(Landroid/content/Context;)Ljava/util/Map;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    invoke-static {p0}, Lcom/adjust/sdk/Reflection;->getPluginKeys(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static getPostDataString(Ljava/util/Map;I)Ljava/lang/String;
    .registers 13
    .param p1, "queueSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 341
    .local p0, "body":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 343
    .local v6, "result":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 344
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v10, "UTF-8"

    invoke-static {v8, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 345
    .local v1, "encodedName":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 346
    .local v7, "value":Ljava/lang/String;
    if-eqz v7, :cond_4a

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 347
    .local v2, "encodedValue":Ljava/lang/String;
    :goto_33
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_3e

    .line 348
    const-string v8, "&"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    :cond_3e
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    const-string v8, "="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 346
    .end local v2    # "encodedValue":Ljava/lang/String;
    :cond_4a
    const-string v2, ""

    goto :goto_33

    .line 356
    .end local v1    # "encodedName":Ljava/lang/String;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "value":Ljava/lang/String;
    :cond_4d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 357
    .local v4, "now":J
    sget-object v8, Lcom/adjust/sdk/Util;->dateFormatter:Ljava/text/SimpleDateFormat;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, "dateString":Ljava/lang/String;
    const-string v8, "&"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    const-string v8, "sent_at"

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    const-string v8, "="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    const-string v8, "UTF-8"

    invoke-static {v0, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    if-lez p1, :cond_ac

    .line 365
    const-string v8, "&"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    const-string v8, "queue_size"

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    const-string v8, "="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    :cond_ac
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public static getReasonString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 7
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 533
    if-eqz p1, :cond_14

    .line 534
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    aput-object p1, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 536
    :goto_13
    return-object v0

    :cond_14
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method

.method public static getSupportedAbis()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 525
    invoke-static {}, Lcom/adjust/sdk/Reflection;->getSupportedAbis()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVmInstructionSet()Ljava/lang/String;
    .registers 1

    .prologue
    .line 607
    invoke-static {}, Lcom/adjust/sdk/Reflection;->getVmInstructionSet()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWaitingTime(ILcom/adjust/sdk/BackoffStrategy;)J
    .registers 16
    .param p0, "retries"    # I
    .param p1, "backoffStrategy"    # Lcom/adjust/sdk/BackoffStrategy;

    .prologue
    .line 541
    iget v3, p1, Lcom/adjust/sdk/BackoffStrategy;->minRetries:I

    if-ge p0, v3, :cond_7

    .line 542
    const-wide/16 v10, 0x0

    .line 554
    :goto_6
    return-wide v10

    .line 545
    :cond_7
    iget v3, p1, Lcom/adjust/sdk/BackoffStrategy;->minRetries:I

    sub-int v2, p0, v3

    .line 547
    .local v2, "expon":I
    const-wide/high16 v10, 0x4000000000000000L

    int-to-double v12, v2

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-long v10, v10

    iget-wide v12, p1, Lcom/adjust/sdk/BackoffStrategy;->milliSecondMultiplier:J

    mul-long v4, v10, v12

    .line 549
    .local v4, "exponentialTime":J
    iget-wide v10, p1, Lcom/adjust/sdk/BackoffStrategy;->maxWait:J

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 551
    .local v0, "ceilingTime":J
    iget-wide v10, p1, Lcom/adjust/sdk/BackoffStrategy;->minRange:D

    iget-wide v12, p1, Lcom/adjust/sdk/BackoffStrategy;->maxRange:D

    invoke-static {v10, v11, v12, v13}, Lcom/adjust/sdk/Util;->randomInRange(DD)D

    move-result-wide v6

    .line 553
    .local v6, "randomDouble":D
    long-to-double v10, v0

    mul-double v8, v10, v6

    .line 554
    .local v8, "waitingTime":D
    double-to-long v10, v8

    goto :goto_6
.end method

.method public static hash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 506
    const/4 v2, 0x0

    .line 508
    .local v2, "hashString":Ljava/lang/String;
    :try_start_1
    const-string v4, "UTF-8"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 509
    .local v0, "bytes":[B
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 510
    .local v3, "mesd":Ljava/security/MessageDigest;
    const/4 v4, 0x0

    array-length v5, v0

    invoke-virtual {v3, v0, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    .line 511
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 512
    .local v1, "hash":[B
    invoke-static {v1}, Lcom/adjust/sdk/Util;->convertToHex([B)Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_19

    move-result-object v2

    .line 515
    .end local v0    # "bytes":[B
    .end local v1    # "hash":[B
    .end local v3    # "mesd":Ljava/security/MessageDigest;
    :goto_18
    return-object v2

    .line 513
    :catch_19
    move-exception v4

    goto :goto_18
.end method

.method public static hashBoolean(Ljava/lang/Boolean;)I
    .registers 2
    .param p0, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 463
    if-nez p0, :cond_4

    .line 464
    const/4 v0, 0x0

    .line 466
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_3
.end method

.method public static hashEnum(Ljava/lang/Enum;)I
    .registers 2
    .param p0, "value"    # Ljava/lang/Enum;

    .prologue
    .line 484
    if-nez p0, :cond_4

    .line 485
    const/4 v0, 0x0

    .line 487
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    goto :goto_3
.end method

.method public static hashLong(Ljava/lang/Long;)I
    .registers 2
    .param p0, "value"    # Ljava/lang/Long;

    .prologue
    .line 470
    if-nez p0, :cond_4

    .line 471
    const/4 v0, 0x0

    .line 473
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_3
.end method

.method public static hashObject(Ljava/lang/Object;)I
    .registers 2
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 491
    if-nez p0, :cond_4

    .line 492
    const/4 v0, 0x0

    .line 494
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_3
.end method

.method public static hashString(Ljava/lang/String;)I
    .registers 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 477
    if-nez p0, :cond_4

    .line 478
    const/4 v0, 0x0

    .line 480
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3
.end method

.method public static isPlayTrackingEnabled(Landroid/content/Context;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    invoke-static {p0}, Lcom/adjust/sdk/Reflection;->isPlayTrackingEnabled(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static isValidParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p0, "attribute"    # Ljava/lang/String;
    .param p1, "attributeType"    # Ljava/lang/String;
    .param p2, "parameterName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 566
    if-nez p0, :cond_15

    .line 567
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v2

    const-string v3, "%s parameter %s is missing"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v0

    aput-object p1, v4, v1

    invoke-interface {v2, v3, v4}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 575
    :goto_14
    return v0

    .line 570
    :cond_15
    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 571
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v2

    const-string v3, "%s parameter %s is empty"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v0

    aput-object p1, v4, v1

    invoke-interface {v2, v3, v4}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_14

    :cond_2d
    move v0, v1

    .line 575
    goto :goto_14
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 502
    const-string v0, "MD5"

    invoke-static {p0, v0}, Lcom/adjust/sdk/Util;->hash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static mergeParameters(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    .registers 12
    .param p2, "parameterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 581
    .local p0, "target":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p1, "source":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_3

    .line 599
    .end local p1    # "source":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_2
    return-object p1

    .line 584
    .restart local p1    # "source":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    if-nez p1, :cond_7

    move-object p1, p0

    .line 585
    goto :goto_2

    .line 587
    :cond_7
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 588
    .local v1, "mergedParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    .line 589
    .local v0, "logger":Lcom/adjust/sdk/ILogger;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_18
    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_51

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 590
    .local v3, "parameterSourceEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 591
    .local v2, "oldValue":Ljava/lang/String;
    if-eqz v2, :cond_18

    .line 592
    const-string v5, "Key %s with value %s from %s parameter was replaced by value %s"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 593
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    const/4 v7, 0x2

    aput-object p2, v6, v7

    const/4 v7, 0x3

    .line 596
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    .line 592
    invoke-interface {v0, v5, v6}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_18

    .end local v2    # "oldValue":Ljava/lang/String;
    .end local v3    # "parameterSourceEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_51
    move-object p1, v1

    .line 599
    goto :goto_2
.end method

.method public static quote(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 78
    if-nez p0, :cond_4

    .line 79
    const/4 p0, 0x0

    .line 88
    .end local p0    # "string":Ljava/lang/String;
    .local v0, "matcher":Ljava/util/regex/Matcher;
    .local v1, "pattern":Ljava/util/regex/Pattern;
    :cond_3
    :goto_3
    return-object p0

    .line 82
    .end local v0    # "matcher":Ljava/util/regex/Matcher;
    .end local v1    # "pattern":Ljava/util/regex/Pattern;
    .restart local p0    # "string":Ljava/lang/String;
    :cond_4
    const-string v2, "\\s"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 83
    .restart local v1    # "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 84
    .restart local v0    # "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 88
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "\'%s\'"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3
.end method

.method private static randomInRange(DD)D
    .registers 14
    .param p0, "minRange"    # D
    .param p2, "maxRange"    # D

    .prologue
    .line 558
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 559
    .local v0, "random":Ljava/util/Random;
    sub-double v2, p2, p0

    .line 560
    .local v2, "range":D
    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v8

    mul-double v4, v8, v2

    .line 561
    .local v4, "scaled":D
    add-double v6, v4, p0

    .line 562
    .local v6, "shifted":D
    return-wide v6
.end method

.method public static readBooleanField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Z)Z
    .registers 9
    .param p0, "fields"    # Ljava/io/ObjectInputStream$GetField;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 403
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result p2

    .line 406
    .end local p2    # "defaultValue":Z
    :goto_4
    return p2

    .line 404
    .restart local p2    # "defaultValue":Z
    :catch_5
    move-exception v0

    .line 405
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v1

    const-string v2, "Unable to read \'%s\' field in migration device with message (%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4
.end method

.method public static readHttpResponse(Ljavax/net/ssl/HttpsURLConnection;Lcom/adjust/sdk/ActivityPackage;)Lcom/adjust/sdk/ResponseData;
    .registers 19
    .param p0, "connection"    # Ljavax/net/ssl/HttpsURLConnection;
    .param p1, "activityPackage"    # Lcom/adjust/sdk/ActivityPackage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 211
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 212
    .local v11, "sb":Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v7

    .line 213
    .local v7, "logger":Lcom/adjust/sdk/ILogger;
    const/4 v9, 0x0

    .line 215
    .local v9, "responseCode":Ljava/lang/Integer;
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 217
    invoke-virtual/range {p0 .. p0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 220
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/16 v14, 0x190

    if-lt v13, v14, :cond_4d

    .line 221
    invoke-virtual/range {p0 .. p0}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    .line 226
    .local v2, "inputStream":Ljava/io/InputStream;
    :goto_21
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 227
    .local v3, "inputStreamReader":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 230
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    :goto_2b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "line":Ljava/lang/String;
    if-eqz v6, :cond_52

    .line 231
    invoke-virtual {v11, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_34} :catch_35
    .catchall {:try_start_a .. :try_end_34} :catchall_46

    goto :goto_2b

    .line 233
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v6    # "line":Ljava/lang/String;
    :catch_35
    move-exception v1

    .line 234
    .local v1, "e":Ljava/lang/Exception;
    :try_start_36
    const-string v13, "Failed to read response. (%s)"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-interface {v7, v13, v14}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    throw v1
    :try_end_46
    .catchall {:try_start_36 .. :try_end_46} :catchall_46

    .line 237
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_46
    move-exception v13

    if-eqz p0, :cond_4c

    .line 238
    invoke-virtual/range {p0 .. p0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_4c
    throw v13

    .line 223
    :cond_4d
    :try_start_4d
    invoke-virtual/range {p0 .. p0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_50} :catch_35
    .catchall {:try_start_4d .. :try_end_50} :catchall_46

    move-result-object v2

    .restart local v2    # "inputStream":Ljava/io/InputStream;
    goto :goto_21

    .line 237
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v6    # "line":Ljava/lang/String;
    :cond_52
    if-eqz p0, :cond_57

    .line 238
    invoke-virtual/range {p0 .. p0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 242
    :cond_57
    invoke-static/range {p1 .. p1}, Lcom/adjust/sdk/ResponseData;->buildResponseData(Lcom/adjust/sdk/ActivityPackage;)Lcom/adjust/sdk/ResponseData;

    move-result-object v10

    .line 244
    .local v10, "responseData":Lcom/adjust/sdk/ResponseData;
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    .line 245
    .local v12, "stringResponse":Ljava/lang/String;
    const-string v13, "Response: %s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v12, v14, v15

    invoke-interface {v7, v13, v14}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    if-eqz v12, :cond_72

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_73

    .line 284
    :cond_72
    :goto_72
    return-object v10

    .line 251
    :cond_73
    const/4 v4, 0x0

    .line 253
    .local v4, "jsonResponse":Lorg/json/JSONObject;
    :try_start_74
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_79
    .catch Lorg/json/JSONException; {:try_start_74 .. :try_end_79} :catch_b7

    .end local v4    # "jsonResponse":Lorg/json/JSONObject;
    .local v5, "jsonResponse":Lorg/json/JSONObject;
    move-object v4, v5

    .line 260
    .end local v5    # "jsonResponse":Lorg/json/JSONObject;
    .restart local v4    # "jsonResponse":Lorg/json/JSONObject;
    :goto_7a
    if-eqz v4, :cond_72

    .line 264
    iput-object v4, v10, Lcom/adjust/sdk/ResponseData;->jsonResponse:Lorg/json/JSONObject;

    .line 266
    const-string v13, "message"

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 268
    .local v8, "message":Ljava/lang/String;
    iput-object v8, v10, Lcom/adjust/sdk/ResponseData;->message:Ljava/lang/String;

    .line 269
    const-string/jumbo v13, "timestamp"

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v10, Lcom/adjust/sdk/ResponseData;->timestamp:Ljava/lang/String;

    .line 270
    const-string v13, "adid"

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v10, Lcom/adjust/sdk/ResponseData;->adid:Ljava/lang/String;

    .line 272
    if-nez v8, :cond_9e

    .line 273
    const-string v8, "No message found"

    .line 276
    :cond_9e
    if-eqz v9, :cond_d1

    .line 277
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/16 v14, 0xc8

    if-ne v13, v14, :cond_d1

    .line 278
    const-string v13, "%s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v8, v14, v15

    invoke-interface {v7, v13, v14}, Lcom/adjust/sdk/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    const/4 v13, 0x1

    iput-boolean v13, v10, Lcom/adjust/sdk/ResponseData;->success:Z

    goto :goto_72

    .line 254
    .end local v8    # "message":Ljava/lang/String;
    :catch_b7
    move-exception v1

    .line 255
    .local v1, "e":Lorg/json/JSONException;
    const-string v13, "Failed to parse json response. (%s)"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 256
    .restart local v8    # "message":Ljava/lang/String;
    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-interface {v7, v8, v13}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    iput-object v8, v10, Lcom/adjust/sdk/ResponseData;->message:Ljava/lang/String;

    goto :goto_7a

    .line 281
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_d1
    const-string v13, "%s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v8, v14, v15

    invoke-interface {v7, v13, v14}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_72
.end method

.method public static readIntField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;I)I
    .registers 9
    .param p0, "fields"    # Ljava/io/ObjectInputStream$GetField;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 412
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result p2

    .line 415
    .end local p2    # "defaultValue":I
    :goto_4
    return p2

    .line 413
    .restart local p2    # "defaultValue":I
    :catch_5
    move-exception v0

    .line 414
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v1

    const-string v2, "Unable to read \'%s\' field in migration device with message (%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4
.end method

.method public static readLongField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;J)J
    .registers 10
    .param p0, "fields"    # Ljava/io/ObjectInputStream$GetField;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 421
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;J)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result-wide p2

    .line 424
    .end local p2    # "defaultValue":J
    :goto_4
    return-wide p2

    .line 422
    .restart local p2    # "defaultValue":J
    :catch_5
    move-exception v0

    .line 423
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v1

    const-string v2, "Unable to read \'%s\' field in migration device with message (%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4
.end method

.method public static readObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "objectName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 141
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v1, 0x0

    .line 142
    .local v1, "closable":Ljava/io/Closeable;
    const/4 v4, 0x0

    .line 144
    .local v4, "object":Ljava/lang/Object;, "TT;"
    :try_start_2
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 145
    .local v3, "inputStream":Ljava/io/FileInputStream;
    move-object v1, v3

    .line 147
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 148
    .local v0, "bufferedStream":Ljava/io/BufferedInputStream;
    move-object v1, v0

    .line 150
    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_12} :catch_4b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_74

    .line 151
    .local v5, "objectStream":Ljava/io/ObjectInputStream;
    move-object v1, v5

    .line 154
    :try_start_13
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 155
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v6

    const-string v7, "Read %s: %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    invoke-interface {v6, v7, v8}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_13 .. :try_end_2d} :catch_33
    .catch Ljava/lang/ClassCastException; {:try_start_13 .. :try_end_2d} :catch_5c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_2d} :catch_88
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_2d} :catch_4b

    .line 169
    .end local v0    # "bufferedStream":Ljava/io/BufferedInputStream;
    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .end local v4    # "object":Ljava/lang/Object;, "TT;"
    .end local v5    # "objectStream":Ljava/io/ObjectInputStream;
    :goto_2d
    if-eqz v1, :cond_32

    .line 170
    :try_start_2f
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_a0

    .line 176
    :cond_32
    :goto_32
    return-object v4

    .line 156
    .restart local v0    # "bufferedStream":Ljava/io/BufferedInputStream;
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v5    # "objectStream":Ljava/io/ObjectInputStream;
    :catch_33
    move-exception v2

    .line 157
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    :try_start_34
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v6

    const-string v7, "Failed to find %s class (%s)"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v6, v7, v8}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4a
    .catch Ljava/io/FileNotFoundException; {:try_start_34 .. :try_end_4a} :catch_4b
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_4a} :catch_74

    goto :goto_2d

    .line 163
    .end local v0    # "bufferedStream":Ljava/io/BufferedInputStream;
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .end local v5    # "objectStream":Ljava/io/ObjectInputStream;
    :catch_4b
    move-exception v2

    .line 164
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v6

    const-string v7, "%s file not found"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    invoke-interface {v6, v7, v8}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2d

    .line 158
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "bufferedStream":Ljava/io/BufferedInputStream;
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v5    # "objectStream":Ljava/io/ObjectInputStream;
    :catch_5c
    move-exception v2

    .line 159
    .local v2, "e":Ljava/lang/ClassCastException;
    :try_start_5d
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v6

    const-string v7, "Failed to cast %s object (%s)"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v2}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v6, v7, v8}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_73
    .catch Ljava/io/FileNotFoundException; {:try_start_5d .. :try_end_73} :catch_4b
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_73} :catch_74

    goto :goto_2d

    .line 165
    .end local v0    # "bufferedStream":Ljava/io/BufferedInputStream;
    .end local v2    # "e":Ljava/lang/ClassCastException;
    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .end local v5    # "objectStream":Ljava/io/ObjectInputStream;
    :catch_74
    move-exception v2

    .line 166
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v6

    const-string v7, "Failed to open %s file for reading (%s)"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    const/4 v9, 0x1

    aput-object v2, v8, v9

    invoke-interface {v6, v7, v8}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2d

    .line 160
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "bufferedStream":Ljava/io/BufferedInputStream;
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v5    # "objectStream":Ljava/io/ObjectInputStream;
    :catch_88
    move-exception v2

    .line 161
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_89
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v6

    const-string v7, "Failed to read %s object (%s)"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v6, v7, v8}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9f
    .catch Ljava/io/FileNotFoundException; {:try_start_89 .. :try_end_9f} :catch_4b
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_9f} :catch_74

    goto :goto_2d

    .line 172
    .end local v0    # "bufferedStream":Ljava/io/BufferedInputStream;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .end local v5    # "objectStream":Ljava/io/ObjectInputStream;
    :catch_a0
    move-exception v2

    .line 173
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v6

    const-string v7, "Failed to close %s file for reading (%s)"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    const/4 v9, 0x1

    aput-object v2, v8, v9

    invoke-interface {v6, v7, v8}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_32
.end method

.method public static readObjectField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .param p0, "fields"    # Ljava/io/ObjectInputStream$GetField;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/ObjectInputStream$GetField;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 394
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object p2

    .line 397
    .end local p2    # "defaultValue":Ljava/lang/Object;, "TT;"
    :goto_4
    return-object p2

    .line 395
    .restart local p2    # "defaultValue":Ljava/lang/Object;, "TT;"
    :catch_5
    move-exception v0

    .line 396
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v1

    const-string v2, "Unable to read \'%s\' field in migration device with message (%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4
.end method

.method public static readStringField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "fields"    # Ljava/io/ObjectInputStream$GetField;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 389
    invoke-static {p0, p1, p2}, Lcom/adjust/sdk/Util;->readObjectField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static setDefaultHttpsUrlConnectionProperties(Ljavax/net/ssl/HttpsURLConnection;Ljava/lang/String;)V
    .registers 4
    .param p0, "connection"    # Ljavax/net/ssl/HttpsURLConnection;
    .param p1, "clientSdk"    # Ljava/lang/String;

    .prologue
    const v1, 0xea60

    .line 375
    const-string v0, "Client-SDK"

    invoke-virtual {p0, v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-virtual {p0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 377
    invoke-virtual {p0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 378
    sget-object v0, Lcom/adjust/sdk/Util;->userAgent:Ljava/lang/String;

    if-eqz v0, :cond_19

    .line 379
    const-string v0, "User-Agent"

    sget-object v1, Lcom/adjust/sdk/Util;->userAgent:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    :cond_19
    return-void
.end method

.method public static setUserAgent(Ljava/lang/String;)V
    .registers 1
    .param p0, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 603
    sput-object p0, Lcom/adjust/sdk/Util;->userAgent:Ljava/lang/String;

    .line 604
    return-void
.end method

.method public static sha1(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 498
    const-string v0, "SHA-1"

    invoke-static {p0, v0}, Lcom/adjust/sdk/Util;->hash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static writeObject(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "objectName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "object":Ljava/lang/Object;, "TT;"
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 180
    const/4 v1, 0x0

    .line 182
    .local v1, "closable":Ljava/io/Closeable;
    const/4 v5, 0x0

    :try_start_5
    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    .line 183
    .local v4, "outputStream":Ljava/io/FileOutputStream;
    move-object v1, v4

    .line 185
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 186
    .local v0, "bufferedStream":Ljava/io/BufferedOutputStream;
    move-object v1, v0

    .line 188
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_15} :catch_42

    .line 189
    .local v3, "objectStream":Ljava/io/ObjectOutputStream;
    move-object v1, v3

    .line 192
    :try_start_16
    invoke-virtual {v3, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 194
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v5

    const-string v6, "Wrote %s: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p3, v7, v8

    const/4 v8, 0x1

    aput-object p0, v7, v8

    invoke-interface {v5, v6, v7}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2b
    .catch Ljava/io/NotSerializableException; {:try_start_16 .. :try_end_2b} :catch_31
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_2b} :catch_42

    .line 202
    .end local v0    # "bufferedStream":Ljava/io/BufferedOutputStream;
    .end local v3    # "objectStream":Ljava/io/ObjectOutputStream;
    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    :goto_2b
    if-eqz v1, :cond_30

    .line 203
    :try_start_2d
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_53

    .line 208
    :cond_30
    :goto_30
    return-void

    .line 195
    .restart local v0    # "bufferedStream":Ljava/io/BufferedOutputStream;
    .restart local v3    # "objectStream":Ljava/io/ObjectOutputStream;
    .restart local v4    # "outputStream":Ljava/io/FileOutputStream;
    :catch_31
    move-exception v2

    .line 196
    .local v2, "e":Ljava/io/NotSerializableException;
    :try_start_32
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v5

    const-string v6, "Failed to serialize %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p3, v7, v8

    invoke-interface {v5, v6, v7}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_41} :catch_42

    goto :goto_2b

    .line 198
    .end local v0    # "bufferedStream":Ljava/io/BufferedOutputStream;
    .end local v2    # "e":Ljava/io/NotSerializableException;
    .end local v3    # "objectStream":Ljava/io/ObjectOutputStream;
    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    :catch_42
    move-exception v2

    .line 199
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v5

    const-string v6, "Failed to open %s for writing (%s)"

    new-array v7, v11, [Ljava/lang/Object;

    aput-object p3, v7, v9

    aput-object v2, v7, v10

    invoke-interface {v5, v6, v7}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2b

    .line 205
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_53
    move-exception v2

    .line 206
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v5

    const-string v6, "Failed to close %s file for writing (%s)"

    new-array v7, v11, [Ljava/lang/Object;

    aput-object p3, v7, v9

    aput-object v2, v7, v10

    invoke-interface {v5, v6, v7}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_30
.end method
