.class public Lcom/adjust/sdk/SdkClickHandler;
.super Ljava/lang/Object;
.source "SdkClickHandler.java"

# interfaces
.implements Lcom/adjust/sdk/ISdkClickHandler;


# instance fields
.field private backoffStrategy:Lcom/adjust/sdk/BackoffStrategy;

.field private logger:Lcom/adjust/sdk/ILogger;

.field private packageQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adjust/sdk/ActivityPackage;",
            ">;"
        }
    .end annotation
.end field

.field private paused:Z

.field private scheduledExecutor:Lcom/adjust/sdk/CustomScheduledExecutor;


# direct methods
.method public constructor <init>(Z)V
    .registers 4
    .param p1, "startsSending"    # Z

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p0, p1}, Lcom/adjust/sdk/SdkClickHandler;->init(Z)V

    .line 42
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/SdkClickHandler;->logger:Lcom/adjust/sdk/ILogger;

    .line 43
    new-instance v0, Lcom/adjust/sdk/CustomScheduledExecutor;

    const-string v1, "SdkClickHandler"

    invoke-direct {v0, v1}, Lcom/adjust/sdk/CustomScheduledExecutor;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adjust/sdk/SdkClickHandler;->scheduledExecutor:Lcom/adjust/sdk/CustomScheduledExecutor;

    .line 44
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getSdkClickBackoffStrategy()Lcom/adjust/sdk/BackoffStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/SdkClickHandler;->backoffStrategy:Lcom/adjust/sdk/BackoffStrategy;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/adjust/sdk/SdkClickHandler;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/adjust/sdk/SdkClickHandler;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/adjust/sdk/SdkClickHandler;->packageQueue:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adjust/sdk/SdkClickHandler;)Lcom/adjust/sdk/ILogger;
    .registers 2
    .param p0, "x0"    # Lcom/adjust/sdk/SdkClickHandler;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/adjust/sdk/SdkClickHandler;->logger:Lcom/adjust/sdk/ILogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/adjust/sdk/SdkClickHandler;)V
    .registers 1
    .param p0, "x0"    # Lcom/adjust/sdk/SdkClickHandler;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/adjust/sdk/SdkClickHandler;->sendNextSdkClick()V

    return-void
.end method

.method static synthetic access$300(Lcom/adjust/sdk/SdkClickHandler;)V
    .registers 1
    .param p0, "x0"    # Lcom/adjust/sdk/SdkClickHandler;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/adjust/sdk/SdkClickHandler;->sendNextSdkClickI()V

    return-void
.end method

.method static synthetic access$400(Lcom/adjust/sdk/SdkClickHandler;Lcom/adjust/sdk/ActivityPackage;)V
    .registers 2
    .param p0, "x0"    # Lcom/adjust/sdk/SdkClickHandler;
    .param p1, "x1"    # Lcom/adjust/sdk/ActivityPackage;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/adjust/sdk/SdkClickHandler;->sendSdkClickI(Lcom/adjust/sdk/ActivityPackage;)V

    return-void
.end method

.method private logErrorMessageI(Lcom/adjust/sdk/ActivityPackage;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 11
    .param p1, "sdkClickPackage"    # Lcom/adjust/sdk/ActivityPackage;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    const/4 v6, 0x0

    .line 157
    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->getFailureMessage()Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "packageMessage":Ljava/lang/String;
    invoke-static {p2, p3}, Lcom/adjust/sdk/Util;->getReasonString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "reasonString":Ljava/lang/String;
    const-string v3, "%s. (%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v6

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "finalMessage":Ljava/lang/String;
    iget-object v3, p0, Lcom/adjust/sdk/SdkClickHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v3, v0, v4}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    return-void
.end method

.method private retrySendingI(Lcom/adjust/sdk/ActivityPackage;)V
    .registers 8
    .param p1, "sdkClickPackage"    # Lcom/adjust/sdk/ActivityPackage;

    .prologue
    .line 150
    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->increaseRetries()I

    move-result v0

    .line 152
    .local v0, "retries":I
    iget-object v1, p0, Lcom/adjust/sdk/SdkClickHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v2, "Retrying sdk_click package for the %d time"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    invoke-virtual {p0, p1}, Lcom/adjust/sdk/SdkClickHandler;->sendSdkClick(Lcom/adjust/sdk/ActivityPackage;)V

    .line 154
    return-void
.end method

.method private sendNextSdkClick()V
    .registers 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/adjust/sdk/SdkClickHandler;->scheduledExecutor:Lcom/adjust/sdk/CustomScheduledExecutor;

    new-instance v1, Lcom/adjust/sdk/SdkClickHandler$2;

    invoke-direct {v1, p0}, Lcom/adjust/sdk/SdkClickHandler$2;-><init>(Lcom/adjust/sdk/SdkClickHandler;)V

    invoke-virtual {v0, v1}, Lcom/adjust/sdk/CustomScheduledExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 85
    return-void
.end method

.method private sendNextSdkClickI()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    .line 88
    iget-boolean v8, p0, Lcom/adjust/sdk/SdkClickHandler;->paused:Z

    if-eqz v8, :cond_6

    .line 119
    :cond_5
    :goto_5
    return-void

    .line 92
    :cond_6
    iget-object v8, p0, Lcom/adjust/sdk/SdkClickHandler;->packageQueue:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    .line 96
    iget-object v8, p0, Lcom/adjust/sdk/SdkClickHandler;->packageQueue:Ljava/util/List;

    invoke-interface {v8, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adjust/sdk/ActivityPackage;

    .line 97
    .local v2, "sdkClickPackage":Lcom/adjust/sdk/ActivityPackage;
    invoke-virtual {v2}, Lcom/adjust/sdk/ActivityPackage;->getRetries()I

    move-result v0

    .line 99
    .local v0, "retries":I
    new-instance v1, Lcom/adjust/sdk/SdkClickHandler$3;

    invoke-direct {v1, p0, v2}, Lcom/adjust/sdk/SdkClickHandler$3;-><init>(Lcom/adjust/sdk/SdkClickHandler;Lcom/adjust/sdk/ActivityPackage;)V

    .line 107
    .local v1, "runnable":Ljava/lang/Runnable;
    if-gtz v0, :cond_25

    .line 108
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_5

    .line 112
    :cond_25
    iget-object v8, p0, Lcom/adjust/sdk/SdkClickHandler;->backoffStrategy:Lcom/adjust/sdk/BackoffStrategy;

    invoke-static {v0, v8}, Lcom/adjust/sdk/Util;->getWaitingTime(ILcom/adjust/sdk/BackoffStrategy;)J

    move-result-wide v4

    .line 114
    .local v4, "waitTimeMilliSeconds":J
    long-to-double v8, v4

    const-wide v10, 0x408f400000000000L

    div-double v6, v8, v10

    .line 115
    .local v6, "waitTimeSeconds":D
    sget-object v8, Lcom/adjust/sdk/Util;->SecondsDisplayFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v8, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, "secondsString":Ljava/lang/String;
    iget-object v8, p0, Lcom/adjust/sdk/SdkClickHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v9, "Waiting for %s seconds before retrying sdk_click for the %d time"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v3, v10, v12

    const/4 v11, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-interface {v8, v9, v10}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    iget-object v8, p0, Lcom/adjust/sdk/SdkClickHandler;->scheduledExecutor:Lcom/adjust/sdk/CustomScheduledExecutor;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v1, v4, v5, v9}, Lcom/adjust/sdk/CustomScheduledExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_5
.end method

.method private sendSdkClickI(Lcom/adjust/sdk/ActivityPackage;)V
    .registers 9
    .param p1, "sdkClickPackage"    # Lcom/adjust/sdk/ActivityPackage;

    .prologue
    .line 122
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://app.adjust.com"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, "targetURL":Ljava/lang/String;
    :try_start_17
    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->getClientSdk()Ljava/lang/String;

    move-result-object v4

    .line 128
    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->getParameters()Ljava/util/Map;

    move-result-object v5

    iget-object v6, p0, Lcom/adjust/sdk/SdkClickHandler;->packageQueue:Ljava/util/List;

    .line 129
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .line 125
    invoke-static {v3, v4, v5, v6}, Lcom/adjust/sdk/Util;->createPOSTHttpsURLConnection(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    .line 131
    .local v0, "connection":Ljavax/net/ssl/HttpsURLConnection;
    invoke-static {v0, p1}, Lcom/adjust/sdk/Util;->readHttpResponse(Ljavax/net/ssl/HttpsURLConnection;Lcom/adjust/sdk/ActivityPackage;)Lcom/adjust/sdk/ResponseData;

    move-result-object v2

    .line 133
    .local v2, "responseData":Lcom/adjust/sdk/ResponseData;
    iget-object v4, v2, Lcom/adjust/sdk/ResponseData;->jsonResponse:Lorg/json/JSONObject;

    if-nez v4, :cond_36

    .line 134
    invoke-direct {p0, p1}, Lcom/adjust/sdk/SdkClickHandler;->retrySendingI(Lcom/adjust/sdk/ActivityPackage;)V
    :try_end_36
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_17 .. :try_end_36} :catch_37
    .catch Ljava/net/SocketTimeoutException; {:try_start_17 .. :try_end_36} :catch_3e
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_36} :catch_48
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_36} :catch_52

    .line 147
    .end local v0    # "connection":Ljavax/net/ssl/HttpsURLConnection;
    .end local v2    # "responseData":Lcom/adjust/sdk/ResponseData;
    :cond_36
    :goto_36
    return-void

    .line 136
    :catch_37
    move-exception v1

    .line 137
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v4, "Sdk_click failed to encode parameters"

    invoke-direct {p0, p1, v4, v1}, Lcom/adjust/sdk/SdkClickHandler;->logErrorMessageI(Lcom/adjust/sdk/ActivityPackage;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_36

    .line 138
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_3e
    move-exception v1

    .line 139
    .local v1, "e":Ljava/net/SocketTimeoutException;
    const-string v4, "Sdk_click request timed out. Will retry later"

    invoke-direct {p0, p1, v4, v1}, Lcom/adjust/sdk/SdkClickHandler;->logErrorMessageI(Lcom/adjust/sdk/ActivityPackage;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    invoke-direct {p0, p1}, Lcom/adjust/sdk/SdkClickHandler;->retrySendingI(Lcom/adjust/sdk/ActivityPackage;)V

    goto :goto_36

    .line 141
    .end local v1    # "e":Ljava/net/SocketTimeoutException;
    :catch_48
    move-exception v1

    .line 142
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "Sdk_click request failed. Will retry later"

    invoke-direct {p0, p1, v4, v1}, Lcom/adjust/sdk/SdkClickHandler;->logErrorMessageI(Lcom/adjust/sdk/ActivityPackage;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    invoke-direct {p0, p1}, Lcom/adjust/sdk/SdkClickHandler;->retrySendingI(Lcom/adjust/sdk/ActivityPackage;)V

    goto :goto_36

    .line 144
    .end local v1    # "e":Ljava/io/IOException;
    :catch_52
    move-exception v1

    .line 145
    .local v1, "e":Ljava/lang/Throwable;
    const-string v4, "Sdk_click runtime exception"

    invoke-direct {p0, p1, v4, v1}, Lcom/adjust/sdk/SdkClickHandler;->logErrorMessageI(Lcom/adjust/sdk/ActivityPackage;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_36
.end method


# virtual methods
.method public init(Z)V
    .registers 3
    .param p1, "startsSending"    # Z

    .prologue
    .line 49
    if-nez p1, :cond_d

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/adjust/sdk/SdkClickHandler;->paused:Z

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adjust/sdk/SdkClickHandler;->packageQueue:Ljava/util/List;

    .line 51
    return-void

    .line 49
    :cond_d
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public pauseSending()V
    .registers 2

    .prologue
    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adjust/sdk/SdkClickHandler;->paused:Z

    .line 56
    return-void
.end method

.method public resumeSending()V
    .registers 2

    .prologue
    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adjust/sdk/SdkClickHandler;->paused:Z

    .line 62
    invoke-direct {p0}, Lcom/adjust/sdk/SdkClickHandler;->sendNextSdkClick()V

    .line 63
    return-void
.end method

.method public sendSdkClick(Lcom/adjust/sdk/ActivityPackage;)V
    .registers 4
    .param p1, "sdkClick"    # Lcom/adjust/sdk/ActivityPackage;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/adjust/sdk/SdkClickHandler;->scheduledExecutor:Lcom/adjust/sdk/CustomScheduledExecutor;

    new-instance v1, Lcom/adjust/sdk/SdkClickHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/SdkClickHandler$1;-><init>(Lcom/adjust/sdk/SdkClickHandler;Lcom/adjust/sdk/ActivityPackage;)V

    invoke-virtual {v0, v1}, Lcom/adjust/sdk/CustomScheduledExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 76
    return-void
.end method

.method public teardown()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 24
    iget-object v0, p0, Lcom/adjust/sdk/SdkClickHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v1, "SdkClickHandler teardown"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    iget-object v0, p0, Lcom/adjust/sdk/SdkClickHandler;->scheduledExecutor:Lcom/adjust/sdk/CustomScheduledExecutor;

    if-eqz v0, :cond_14

    .line 27
    :try_start_f
    iget-object v0, p0, Lcom/adjust/sdk/SdkClickHandler;->scheduledExecutor:Lcom/adjust/sdk/CustomScheduledExecutor;

    invoke-virtual {v0}, Lcom/adjust/sdk/CustomScheduledExecutor;->shutdownNow()V
    :try_end_14
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_14} :catch_26

    .line 30
    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/adjust/sdk/SdkClickHandler;->packageQueue:Ljava/util/List;

    if-eqz v0, :cond_1d

    .line 31
    iget-object v0, p0, Lcom/adjust/sdk/SdkClickHandler;->packageQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 34
    :cond_1d
    iput-object v3, p0, Lcom/adjust/sdk/SdkClickHandler;->scheduledExecutor:Lcom/adjust/sdk/CustomScheduledExecutor;

    .line 35
    iput-object v3, p0, Lcom/adjust/sdk/SdkClickHandler;->logger:Lcom/adjust/sdk/ILogger;

    .line 36
    iput-object v3, p0, Lcom/adjust/sdk/SdkClickHandler;->packageQueue:Ljava/util/List;

    .line 37
    iput-object v3, p0, Lcom/adjust/sdk/SdkClickHandler;->backoffStrategy:Lcom/adjust/sdk/BackoffStrategy;

    .line 38
    return-void

    .line 28
    :catch_26
    move-exception v0

    goto :goto_14
.end method
