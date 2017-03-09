.class public Lcom/adjust/sdk/RequestHandler;
.super Ljava/lang/Object;
.source "RequestHandler.java"

# interfaces
.implements Lcom/adjust/sdk/IRequestHandler;


# instance fields
.field private logger:Lcom/adjust/sdk/ILogger;

.field private packageHandlerWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/adjust/sdk/IPackageHandler;",
            ">;"
        }
    .end annotation
.end field

.field private scheduledExecutor:Lcom/adjust/sdk/CustomScheduledExecutor;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/IPackageHandler;)V
    .registers 4
    .param p1, "packageHandler"    # Lcom/adjust/sdk/IPackageHandler;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/RequestHandler;->logger:Lcom/adjust/sdk/ILogger;

    .line 26
    new-instance v0, Lcom/adjust/sdk/CustomScheduledExecutor;

    const-string v1, "RequestHandler"

    invoke-direct {v0, v1}, Lcom/adjust/sdk/CustomScheduledExecutor;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adjust/sdk/RequestHandler;->scheduledExecutor:Lcom/adjust/sdk/CustomScheduledExecutor;

    .line 27
    invoke-virtual {p0, p1}, Lcom/adjust/sdk/RequestHandler;->init(Lcom/adjust/sdk/IPackageHandler;)V

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/adjust/sdk/RequestHandler;Lcom/adjust/sdk/ActivityPackage;I)V
    .registers 3
    .param p0, "x0"    # Lcom/adjust/sdk/RequestHandler;
    .param p1, "x1"    # Lcom/adjust/sdk/ActivityPackage;
    .param p2, "x2"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/adjust/sdk/RequestHandler;->sendI(Lcom/adjust/sdk/ActivityPackage;I)V

    return-void
.end method

.method private closePackageI(Lcom/adjust/sdk/ActivityPackage;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 13
    .param p1, "activityPackage"    # Lcom/adjust/sdk/ActivityPackage;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    const/4 v8, 0x0

    .line 98
    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->getFailureMessage()Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "packageMessage":Ljava/lang/String;
    invoke-static {p2, p3}, Lcom/adjust/sdk/Util;->getReasonString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, "reasonString":Ljava/lang/String;
    const-string v5, "%s. (%s) Will retry later"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v8

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "finalMessage":Ljava/lang/String;
    iget-object v5, p0, Lcom/adjust/sdk/RequestHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v6, v8, [Ljava/lang/Object;

    invoke-interface {v5, v0, v6}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    invoke-static {p1}, Lcom/adjust/sdk/ResponseData;->buildResponseData(Lcom/adjust/sdk/ActivityPackage;)Lcom/adjust/sdk/ResponseData;

    move-result-object v4

    .line 104
    .local v4, "responseData":Lcom/adjust/sdk/ResponseData;
    iput-object v0, v4, Lcom/adjust/sdk/ResponseData;->message:Ljava/lang/String;

    .line 106
    iget-object v5, p0, Lcom/adjust/sdk/RequestHandler;->packageHandlerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adjust/sdk/IPackageHandler;

    .line 107
    .local v1, "packageHandler":Lcom/adjust/sdk/IPackageHandler;
    if-nez v1, :cond_2f

    .line 112
    :goto_2e
    return-void

    .line 111
    :cond_2f
    invoke-interface {v1, v4, p1}, Lcom/adjust/sdk/IPackageHandler;->closeFirstPackage(Lcom/adjust/sdk/ResponseData;Lcom/adjust/sdk/ActivityPackage;)V

    goto :goto_2e
.end method

.method private sendI(Lcom/adjust/sdk/ActivityPackage;I)V
    .registers 10
    .param p1, "activityPackage"    # Lcom/adjust/sdk/ActivityPackage;
    .param p2, "queueSize"    # I

    .prologue
    .line 62
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "https://app.adjust.com"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, "targetURL":Ljava/lang/String;
    :try_start_17
    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->getClientSdk()Ljava/lang/String;

    move-result-object v5

    .line 68
    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->getParameters()Ljava/util/Map;

    move-result-object v6

    .line 65
    invoke-static {v4, v5, v6, p2}, Lcom/adjust/sdk/Util;->createPOSTHttpsURLConnection(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    .line 71
    .local v0, "connection":Ljavax/net/ssl/HttpsURLConnection;
    invoke-static {v0, p1}, Lcom/adjust/sdk/Util;->readHttpResponse(Ljavax/net/ssl/HttpsURLConnection;Lcom/adjust/sdk/ActivityPackage;)Lcom/adjust/sdk/ResponseData;

    move-result-object v3

    .line 73
    .local v3, "responseData":Lcom/adjust/sdk/ResponseData;
    iget-object v5, p0, Lcom/adjust/sdk/RequestHandler;->packageHandlerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adjust/sdk/IPackageHandler;

    .line 74
    .local v2, "packageHandler":Lcom/adjust/sdk/IPackageHandler;
    if-nez v2, :cond_32

    .line 94
    .end local v0    # "connection":Ljavax/net/ssl/HttpsURLConnection;
    .end local v2    # "packageHandler":Lcom/adjust/sdk/IPackageHandler;
    .end local v3    # "responseData":Lcom/adjust/sdk/ResponseData;
    :goto_31
    return-void

    .line 78
    .restart local v0    # "connection":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v2    # "packageHandler":Lcom/adjust/sdk/IPackageHandler;
    .restart local v3    # "responseData":Lcom/adjust/sdk/ResponseData;
    :cond_32
    iget-object v5, v3, Lcom/adjust/sdk/ResponseData;->jsonResponse:Lorg/json/JSONObject;

    if-nez v5, :cond_41

    .line 79
    invoke-interface {v2, v3, p1}, Lcom/adjust/sdk/IPackageHandler;->closeFirstPackage(Lcom/adjust/sdk/ResponseData;Lcom/adjust/sdk/ActivityPackage;)V
    :try_end_39
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_17 .. :try_end_39} :catch_3a
    .catch Ljava/net/SocketTimeoutException; {:try_start_17 .. :try_end_39} :catch_45
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_39} :catch_4c
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_39} :catch_53

    goto :goto_31

    .line 85
    .end local v0    # "connection":Ljavax/net/ssl/HttpsURLConnection;
    .end local v2    # "packageHandler":Lcom/adjust/sdk/IPackageHandler;
    .end local v3    # "responseData":Lcom/adjust/sdk/ResponseData;
    :catch_3a
    move-exception v1

    .line 86
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v5, "Failed to encode parameters"

    invoke-direct {p0, p1, v5, v1}, Lcom/adjust/sdk/RequestHandler;->sendNextPackageI(Lcom/adjust/sdk/ActivityPackage;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_31

    .line 83
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "connection":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v2    # "packageHandler":Lcom/adjust/sdk/IPackageHandler;
    .restart local v3    # "responseData":Lcom/adjust/sdk/ResponseData;
    :cond_41
    :try_start_41
    invoke-interface {v2, v3}, Lcom/adjust/sdk/IPackageHandler;->sendNextPackage(Lcom/adjust/sdk/ResponseData;)V
    :try_end_44
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_41 .. :try_end_44} :catch_3a
    .catch Ljava/net/SocketTimeoutException; {:try_start_41 .. :try_end_44} :catch_45
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_4c
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_44} :catch_53

    goto :goto_31

    .line 87
    .end local v0    # "connection":Ljavax/net/ssl/HttpsURLConnection;
    .end local v2    # "packageHandler":Lcom/adjust/sdk/IPackageHandler;
    .end local v3    # "responseData":Lcom/adjust/sdk/ResponseData;
    :catch_45
    move-exception v1

    .line 88
    .local v1, "e":Ljava/net/SocketTimeoutException;
    const-string v5, "Request timed out"

    invoke-direct {p0, p1, v5, v1}, Lcom/adjust/sdk/RequestHandler;->closePackageI(Lcom/adjust/sdk/ActivityPackage;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_31

    .line 89
    .end local v1    # "e":Ljava/net/SocketTimeoutException;
    :catch_4c
    move-exception v1

    .line 90
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "Request failed"

    invoke-direct {p0, p1, v5, v1}, Lcom/adjust/sdk/RequestHandler;->closePackageI(Lcom/adjust/sdk/ActivityPackage;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_31

    .line 91
    .end local v1    # "e":Ljava/io/IOException;
    :catch_53
    move-exception v1

    .line 92
    .local v1, "e":Ljava/lang/Throwable;
    const-string v5, "Runtime exception"

    invoke-direct {p0, p1, v5, v1}, Lcom/adjust/sdk/RequestHandler;->sendNextPackageI(Lcom/adjust/sdk/ActivityPackage;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_31
.end method

.method private sendNextPackageI(Lcom/adjust/sdk/ActivityPackage;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 13
    .param p1, "activityPackage"    # Lcom/adjust/sdk/ActivityPackage;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    const/4 v8, 0x0

    .line 116
    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->getFailureMessage()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "failureMessage":Ljava/lang/String;
    invoke-static {p2, p3}, Lcom/adjust/sdk/Util;->getReasonString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, "reasonString":Ljava/lang/String;
    const-string v5, "%s. (%s)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v8

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "finalMessage":Ljava/lang/String;
    iget-object v5, p0, Lcom/adjust/sdk/RequestHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v6, v8, [Ljava/lang/Object;

    invoke-interface {v5, v1, v6}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    invoke-static {p1}, Lcom/adjust/sdk/ResponseData;->buildResponseData(Lcom/adjust/sdk/ActivityPackage;)Lcom/adjust/sdk/ResponseData;

    move-result-object v4

    .line 122
    .local v4, "responseData":Lcom/adjust/sdk/ResponseData;
    iput-object v1, v4, Lcom/adjust/sdk/ResponseData;->message:Ljava/lang/String;

    .line 124
    iget-object v5, p0, Lcom/adjust/sdk/RequestHandler;->packageHandlerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adjust/sdk/IPackageHandler;

    .line 125
    .local v2, "packageHandler":Lcom/adjust/sdk/IPackageHandler;
    if-nez v2, :cond_2f

    .line 130
    :goto_2e
    return-void

    .line 129
    :cond_2f
    invoke-interface {v2, v4}, Lcom/adjust/sdk/IPackageHandler;->sendNextPackage(Lcom/adjust/sdk/ResponseData;)V

    goto :goto_2e
.end method


# virtual methods
.method public init(Lcom/adjust/sdk/IPackageHandler;)V
    .registers 3
    .param p1, "packageHandler"    # Lcom/adjust/sdk/IPackageHandler;

    .prologue
    .line 32
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adjust/sdk/RequestHandler;->packageHandlerWeakRef:Ljava/lang/ref/WeakReference;

    .line 33
    return-void
.end method

.method public sendPackage(Lcom/adjust/sdk/ActivityPackage;I)V
    .registers 5
    .param p1, "activityPackage"    # Lcom/adjust/sdk/ActivityPackage;
    .param p2, "queueSize"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lcom/adjust/sdk/RequestHandler;->scheduledExecutor:Lcom/adjust/sdk/CustomScheduledExecutor;

    new-instance v1, Lcom/adjust/sdk/RequestHandler$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/adjust/sdk/RequestHandler$1;-><init>(Lcom/adjust/sdk/RequestHandler;Lcom/adjust/sdk/ActivityPackage;I)V

    invoke-virtual {v0, v1}, Lcom/adjust/sdk/CustomScheduledExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 43
    return-void
.end method

.method public teardown()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 47
    iget-object v0, p0, Lcom/adjust/sdk/RequestHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v1, "RequestHandler teardown"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    iget-object v0, p0, Lcom/adjust/sdk/RequestHandler;->scheduledExecutor:Lcom/adjust/sdk/CustomScheduledExecutor;

    if-eqz v0, :cond_14

    .line 50
    :try_start_f
    iget-object v0, p0, Lcom/adjust/sdk/RequestHandler;->scheduledExecutor:Lcom/adjust/sdk/CustomScheduledExecutor;

    invoke-virtual {v0}, Lcom/adjust/sdk/CustomScheduledExecutor;->shutdownNow()V
    :try_end_14
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_14} :catch_24

    .line 53
    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/adjust/sdk/RequestHandler;->packageHandlerWeakRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1d

    .line 54
    iget-object v0, p0, Lcom/adjust/sdk/RequestHandler;->packageHandlerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 56
    :cond_1d
    iput-object v3, p0, Lcom/adjust/sdk/RequestHandler;->scheduledExecutor:Lcom/adjust/sdk/CustomScheduledExecutor;

    .line 57
    iput-object v3, p0, Lcom/adjust/sdk/RequestHandler;->packageHandlerWeakRef:Ljava/lang/ref/WeakReference;

    .line 58
    iput-object v3, p0, Lcom/adjust/sdk/RequestHandler;->logger:Lcom/adjust/sdk/ILogger;

    .line 59
    return-void

    .line 51
    :catch_24
    move-exception v0

    goto :goto_14
.end method
