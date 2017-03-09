.class public Lcom/adjust/sdk/AttributionHandler;
.super Ljava/lang/Object;
.source "AttributionHandler.java"

# interfaces
.implements Lcom/adjust/sdk/IAttributionHandler;


# static fields
.field private static final ATTRIBUTION_TIMER_NAME:Ljava/lang/String; = "Attribution timer"


# instance fields
.field private activityHandlerWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/adjust/sdk/IActivityHandler;",
            ">;"
        }
    .end annotation
.end field

.field private attributionPackage:Lcom/adjust/sdk/ActivityPackage;

.field public lastUrlUsed:Ljava/net/URL;

.field private logger:Lcom/adjust/sdk/ILogger;

.field private paused:Z

.field private scheduledExecutor:Lcom/adjust/sdk/CustomScheduledExecutor;

.field private timer:Lcom/adjust/sdk/TimerOnce;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/IActivityHandler;Lcom/adjust/sdk/ActivityPackage;Z)V
    .registers 8
    .param p1, "activityHandler"    # Lcom/adjust/sdk/IActivityHandler;
    .param p2, "attributionPackage"    # Lcom/adjust/sdk/ActivityPackage;
    .param p3, "startsSending"    # Z

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/adjust/sdk/CustomScheduledExecutor;

    const-string v1, "AttributionHandler"

    invoke-direct {v0, v1}, Lcom/adjust/sdk/CustomScheduledExecutor;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->scheduledExecutor:Lcom/adjust/sdk/CustomScheduledExecutor;

    .line 51
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->logger:Lcom/adjust/sdk/ILogger;

    .line 53
    new-instance v0, Lcom/adjust/sdk/TimerOnce;

    iget-object v1, p0, Lcom/adjust/sdk/AttributionHandler;->scheduledExecutor:Lcom/adjust/sdk/CustomScheduledExecutor;

    new-instance v2, Lcom/adjust/sdk/AttributionHandler$1;

    invoke-direct {v2, p0}, Lcom/adjust/sdk/AttributionHandler$1;-><init>(Lcom/adjust/sdk/AttributionHandler;)V

    const-string v3, "Attribution timer"

    invoke-direct {v0, v1, v2, v3}, Lcom/adjust/sdk/TimerOnce;-><init>(Lcom/adjust/sdk/CustomScheduledExecutor;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->timer:Lcom/adjust/sdk/TimerOnce;

    .line 60
    invoke-virtual {p0, p1, p2, p3}, Lcom/adjust/sdk/AttributionHandler;->init(Lcom/adjust/sdk/IActivityHandler;Lcom/adjust/sdk/ActivityPackage;Z)V

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/adjust/sdk/AttributionHandler;)V
    .registers 1
    .param p0, "x0"    # Lcom/adjust/sdk/AttributionHandler;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/adjust/sdk/AttributionHandler;->sendAttributionRequestI()V

    return-void
.end method

.method static synthetic access$100(Lcom/adjust/sdk/AttributionHandler;J)V
    .registers 4
    .param p0, "x0"    # Lcom/adjust/sdk/AttributionHandler;
    .param p1, "x1"    # J

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/adjust/sdk/AttributionHandler;->getAttributionI(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/adjust/sdk/AttributionHandler;)Ljava/lang/ref/WeakReference;
    .registers 2
    .param p0, "x0"    # Lcom/adjust/sdk/AttributionHandler;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->activityHandlerWeakRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/adjust/sdk/AttributionHandler;Lcom/adjust/sdk/IActivityHandler;Lcom/adjust/sdk/SessionResponseData;)V
    .registers 3
    .param p0, "x0"    # Lcom/adjust/sdk/AttributionHandler;
    .param p1, "x1"    # Lcom/adjust/sdk/IActivityHandler;
    .param p2, "x2"    # Lcom/adjust/sdk/SessionResponseData;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/adjust/sdk/AttributionHandler;->checkSessionResponseI(Lcom/adjust/sdk/IActivityHandler;Lcom/adjust/sdk/SessionResponseData;)V

    return-void
.end method

.method static synthetic access$400(Lcom/adjust/sdk/AttributionHandler;Lcom/adjust/sdk/IActivityHandler;Lcom/adjust/sdk/AttributionResponseData;)V
    .registers 3
    .param p0, "x0"    # Lcom/adjust/sdk/AttributionHandler;
    .param p1, "x1"    # Lcom/adjust/sdk/IActivityHandler;
    .param p2, "x2"    # Lcom/adjust/sdk/AttributionResponseData;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/adjust/sdk/AttributionHandler;->checkAttributionResponseI(Lcom/adjust/sdk/IActivityHandler;Lcom/adjust/sdk/AttributionResponseData;)V

    return-void
.end method

.method private buildUriI(Ljava/lang/String;Ljava/util/Map;)Landroid/net/Uri;
    .registers 11
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .prologue
    .line 217
    .local p2, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    .line 219
    .local v4, "uriBuilder":Landroid/net/Uri$Builder;
    const-string v5, "https"

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 220
    const-string v5, "app.adjust.com"

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 221
    invoke-virtual {v4, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 223
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 224
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1a

    .line 227
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 228
    .local v2, "now":J
    sget-object v5, Lcom/adjust/sdk/Util;->dateFormatter:Ljava/text/SimpleDateFormat;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "dateString":Ljava/lang/String;
    const-string v5, "sent_at"

    invoke-virtual {v4, v5, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 232
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    return-object v5
.end method

.method private checkAttributionI(Lcom/adjust/sdk/IActivityHandler;Lcom/adjust/sdk/ResponseData;)V
    .registers 11
    .param p1, "activityHandler"    # Lcom/adjust/sdk/IActivityHandler;
    .param p2, "responseData"    # Lcom/adjust/sdk/ResponseData;

    .prologue
    .line 138
    iget-object v1, p2, Lcom/adjust/sdk/ResponseData;->jsonResponse:Lorg/json/JSONObject;

    if-nez v1, :cond_5

    .line 155
    :goto_4
    return-void

    .line 142
    :cond_5
    iget-object v1, p2, Lcom/adjust/sdk/ResponseData;->jsonResponse:Lorg/json/JSONObject;

    const-string v4, "ask_in"

    const-wide/16 v6, -0x1

    invoke-virtual {v1, v4, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 144
    .local v2, "timerMilliseconds":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1d

    .line 145
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lcom/adjust/sdk/IActivityHandler;->setAskingAttribution(Z)V

    .line 147
    invoke-direct {p0, v2, v3}, Lcom/adjust/sdk/AttributionHandler;->getAttributionI(J)V

    goto :goto_4

    .line 151
    :cond_1d
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/adjust/sdk/IActivityHandler;->setAskingAttribution(Z)V

    .line 153
    iget-object v1, p2, Lcom/adjust/sdk/ResponseData;->jsonResponse:Lorg/json/JSONObject;

    const-string v4, "attribution"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 154
    .local v0, "attributionJson":Lorg/json/JSONObject;
    iget-object v1, p2, Lcom/adjust/sdk/ResponseData;->adid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/adjust/sdk/AdjustAttribution;->fromJson(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/adjust/sdk/AdjustAttribution;

    move-result-object v1

    iput-object v1, p2, Lcom/adjust/sdk/ResponseData;->attribution:Lcom/adjust/sdk/AdjustAttribution;

    goto :goto_4
.end method

.method private checkAttributionResponseI(Lcom/adjust/sdk/IActivityHandler;Lcom/adjust/sdk/AttributionResponseData;)V
    .registers 3
    .param p1, "activityHandler"    # Lcom/adjust/sdk/IActivityHandler;
    .param p2, "attributionResponseData"    # Lcom/adjust/sdk/AttributionResponseData;

    .prologue
    .line 164
    invoke-direct {p0, p1, p2}, Lcom/adjust/sdk/AttributionHandler;->checkAttributionI(Lcom/adjust/sdk/IActivityHandler;Lcom/adjust/sdk/ResponseData;)V

    .line 166
    invoke-direct {p0, p2}, Lcom/adjust/sdk/AttributionHandler;->checkDeeplinkI(Lcom/adjust/sdk/AttributionResponseData;)V

    .line 168
    invoke-interface {p1, p2}, Lcom/adjust/sdk/IActivityHandler;->launchAttributionResponseTasks(Lcom/adjust/sdk/AttributionResponseData;)V

    .line 169
    return-void
.end method

.method private checkDeeplinkI(Lcom/adjust/sdk/AttributionResponseData;)V
    .registers 6
    .param p1, "attributionResponseData"    # Lcom/adjust/sdk/AttributionResponseData;

    .prologue
    .line 172
    iget-object v2, p1, Lcom/adjust/sdk/AttributionResponseData;->jsonResponse:Lorg/json/JSONObject;

    if-nez v2, :cond_5

    .line 187
    :cond_4
    :goto_4
    return-void

    .line 176
    :cond_5
    iget-object v2, p1, Lcom/adjust/sdk/AttributionResponseData;->jsonResponse:Lorg/json/JSONObject;

    const-string v3, "attribution"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 177
    .local v0, "attributionJson":Lorg/json/JSONObject;
    if-eqz v0, :cond_4

    .line 181
    const-string v2, "deeplink"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "deeplinkString":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 186
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p1, Lcom/adjust/sdk/AttributionResponseData;->deeplink:Landroid/net/Uri;

    goto :goto_4
.end method

.method private checkSessionResponseI(Lcom/adjust/sdk/IActivityHandler;Lcom/adjust/sdk/SessionResponseData;)V
    .registers 3
    .param p1, "activityHandler"    # Lcom/adjust/sdk/IActivityHandler;
    .param p2, "sessionResponseData"    # Lcom/adjust/sdk/SessionResponseData;

    .prologue
    .line 158
    invoke-direct {p0, p1, p2}, Lcom/adjust/sdk/AttributionHandler;->checkAttributionI(Lcom/adjust/sdk/IActivityHandler;Lcom/adjust/sdk/ResponseData;)V

    .line 160
    invoke-interface {p1, p2}, Lcom/adjust/sdk/IActivityHandler;->launchSessionResponseTasks(Lcom/adjust/sdk/SessionResponseData;)V

    .line 161
    return-void
.end method

.method private getAttributionI(J)V
    .registers 12
    .param p1, "delayInMilliseconds"    # J

    .prologue
    .line 122
    iget-object v1, p0, Lcom/adjust/sdk/AttributionHandler;->timer:Lcom/adjust/sdk/TimerOnce;

    invoke-virtual {v1}, Lcom/adjust/sdk/TimerOnce;->getFireIn()J

    move-result-wide v4

    cmp-long v1, v4, p1

    if-lez v1, :cond_b

    .line 135
    :goto_a
    return-void

    .line 126
    :cond_b
    const-wide/16 v4, 0x0

    cmp-long v1, p1, v4

    if-eqz v1, :cond_2c

    .line 127
    long-to-double v4, p1

    const-wide v6, 0x408f400000000000L

    div-double v2, v4, v6

    .line 128
    .local v2, "waitTimeSeconds":D
    sget-object v1, Lcom/adjust/sdk/Util;->SecondsDisplayFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "secondsString":Ljava/lang/String;
    iget-object v1, p0, Lcom/adjust/sdk/AttributionHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v4, "Waiting to query attribution in %s seconds"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-interface {v1, v4, v5}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    .end local v0    # "secondsString":Ljava/lang/String;
    .end local v2    # "waitTimeSeconds":D
    :cond_2c
    iget-object v1, p0, Lcom/adjust/sdk/AttributionHandler;->timer:Lcom/adjust/sdk/TimerOnce;

    invoke-virtual {v1, p1, p2}, Lcom/adjust/sdk/TimerOnce;->startIn(J)V

    goto :goto_a
.end method

.method private sendAttributionRequestI()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 190
    iget-boolean v3, p0, Lcom/adjust/sdk/AttributionHandler;->paused:Z

    if-eqz v3, :cond_10

    .line 191
    iget-object v3, p0, Lcom/adjust/sdk/AttributionHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v4, "Attribution handler is paused"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    :cond_f
    :goto_f
    return-void

    .line 195
    :cond_10
    iget-object v3, p0, Lcom/adjust/sdk/AttributionHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v4, "%s"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/adjust/sdk/AttributionHandler;->attributionPackage:Lcom/adjust/sdk/ActivityPackage;

    invoke-virtual {v6}, Lcom/adjust/sdk/ActivityPackage;->getExtendedString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-interface {v3, v4, v5}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    :try_start_21
    iget-object v3, p0, Lcom/adjust/sdk/AttributionHandler;->attributionPackage:Lcom/adjust/sdk/ActivityPackage;

    .line 199
    invoke-virtual {v3}, Lcom/adjust/sdk/ActivityPackage;->getPath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/adjust/sdk/AttributionHandler;->attributionPackage:Lcom/adjust/sdk/ActivityPackage;

    invoke-virtual {v4}, Lcom/adjust/sdk/ActivityPackage;->getParameters()Ljava/util/Map;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/adjust/sdk/AttributionHandler;->buildUriI(Ljava/lang/String;Ljava/util/Map;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/adjust/sdk/AttributionHandler;->attributionPackage:Lcom/adjust/sdk/ActivityPackage;

    .line 200
    invoke-virtual {v4}, Lcom/adjust/sdk/ActivityPackage;->getClientSdk()Ljava/lang/String;

    move-result-object v4

    .line 198
    invoke-static {v3, v4}, Lcom/adjust/sdk/Util;->createGETHttpsURLConnection(Ljava/lang/String;Ljava/lang/String;)Lcom/adjust/sdk/AdjustFactory$URLGetConnection;

    move-result-object v2

    .line 202
    .local v2, "urlGetConnection":Lcom/adjust/sdk/AdjustFactory$URLGetConnection;
    iget-object v3, v2, Lcom/adjust/sdk/AdjustFactory$URLGetConnection;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    iget-object v4, p0, Lcom/adjust/sdk/AttributionHandler;->attributionPackage:Lcom/adjust/sdk/ActivityPackage;

    invoke-static {v3, v4}, Lcom/adjust/sdk/Util;->readHttpResponse(Ljavax/net/ssl/HttpsURLConnection;Lcom/adjust/sdk/ActivityPackage;)Lcom/adjust/sdk/ResponseData;

    move-result-object v1

    .line 203
    .local v1, "responseData":Lcom/adjust/sdk/ResponseData;
    iget-object v3, v2, Lcom/adjust/sdk/AdjustFactory$URLGetConnection;->url:Ljava/net/URL;

    iput-object v3, p0, Lcom/adjust/sdk/AttributionHandler;->lastUrlUsed:Ljava/net/URL;

    .line 205
    instance-of v3, v1, Lcom/adjust/sdk/AttributionResponseData;

    if-eqz v3, :cond_f

    .line 209
    check-cast v1, Lcom/adjust/sdk/AttributionResponseData;

    .end local v1    # "responseData":Lcom/adjust/sdk/ResponseData;
    invoke-virtual {p0, v1}, Lcom/adjust/sdk/AttributionHandler;->checkAttributionResponse(Lcom/adjust/sdk/AttributionResponseData;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_54} :catch_55

    goto :goto_f

    .line 210
    .end local v2    # "urlGetConnection":Lcom/adjust/sdk/AdjustFactory$URLGetConnection;
    :catch_55
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/adjust/sdk/AttributionHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v4, "Failed to get attribution (%s)"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-interface {v3, v4, v5}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_f
.end method


# virtual methods
.method public checkAttributionResponse(Lcom/adjust/sdk/AttributionResponseData;)V
    .registers 4
    .param p1, "attributionResponseData"    # Lcom/adjust/sdk/AttributionResponseData;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->scheduledExecutor:Lcom/adjust/sdk/CustomScheduledExecutor;

    new-instance v1, Lcom/adjust/sdk/AttributionHandler$4;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/AttributionHandler$4;-><init>(Lcom/adjust/sdk/AttributionHandler;Lcom/adjust/sdk/AttributionResponseData;)V

    invoke-virtual {v0, v1}, Lcom/adjust/sdk/CustomScheduledExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 108
    return-void
.end method

.method public checkSessionResponse(Lcom/adjust/sdk/SessionResponseData;)V
    .registers 4
    .param p1, "sessionResponseData"    # Lcom/adjust/sdk/SessionResponseData;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->scheduledExecutor:Lcom/adjust/sdk/CustomScheduledExecutor;

    new-instance v1, Lcom/adjust/sdk/AttributionHandler$3;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/AttributionHandler$3;-><init>(Lcom/adjust/sdk/AttributionHandler;Lcom/adjust/sdk/SessionResponseData;)V

    invoke-virtual {v0, v1}, Lcom/adjust/sdk/CustomScheduledExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 94
    return-void
.end method

.method public getAttribution()V
    .registers 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->scheduledExecutor:Lcom/adjust/sdk/CustomScheduledExecutor;

    new-instance v1, Lcom/adjust/sdk/AttributionHandler$2;

    invoke-direct {v1, p0}, Lcom/adjust/sdk/AttributionHandler$2;-><init>(Lcom/adjust/sdk/AttributionHandler;)V

    invoke-virtual {v0, v1}, Lcom/adjust/sdk/CustomScheduledExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 80
    return-void
.end method

.method public init(Lcom/adjust/sdk/IActivityHandler;Lcom/adjust/sdk/ActivityPackage;Z)V
    .registers 5
    .param p1, "activityHandler"    # Lcom/adjust/sdk/IActivityHandler;
    .param p2, "attributionPackage"    # Lcom/adjust/sdk/ActivityPackage;
    .param p3, "startsSending"    # Z

    .prologue
    .line 67
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->activityHandlerWeakRef:Ljava/lang/ref/WeakReference;

    .line 68
    iput-object p2, p0, Lcom/adjust/sdk/AttributionHandler;->attributionPackage:Lcom/adjust/sdk/ActivityPackage;

    .line 69
    if-nez p3, :cond_f

    const/4 v0, 0x1

    :goto_c
    iput-boolean v0, p0, Lcom/adjust/sdk/AttributionHandler;->paused:Z

    .line 70
    return-void

    .line 69
    :cond_f
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public pauseSending()V
    .registers 2

    .prologue
    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adjust/sdk/AttributionHandler;->paused:Z

    .line 113
    return-void
.end method

.method public resumeSending()V
    .registers 2

    .prologue
    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adjust/sdk/AttributionHandler;->paused:Z

    .line 118
    return-void
.end method

.method public teardown()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 28
    iget-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v1, "AttributionHandler teardown"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    iget-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->timer:Lcom/adjust/sdk/TimerOnce;

    if-eqz v0, :cond_14

    .line 30
    iget-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->timer:Lcom/adjust/sdk/TimerOnce;

    invoke-virtual {v0}, Lcom/adjust/sdk/TimerOnce;->teardown()V

    .line 32
    :cond_14
    iget-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->scheduledExecutor:Lcom/adjust/sdk/CustomScheduledExecutor;

    if-eqz v0, :cond_1d

    .line 34
    :try_start_18
    iget-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->scheduledExecutor:Lcom/adjust/sdk/CustomScheduledExecutor;

    invoke-virtual {v0}, Lcom/adjust/sdk/CustomScheduledExecutor;->shutdownNow()V
    :try_end_1d
    .catch Ljava/lang/SecurityException; {:try_start_18 .. :try_end_1d} :catch_31

    .line 37
    :cond_1d
    :goto_1d
    iget-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->activityHandlerWeakRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_26

    .line 38
    iget-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->activityHandlerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 40
    :cond_26
    iput-object v3, p0, Lcom/adjust/sdk/AttributionHandler;->scheduledExecutor:Lcom/adjust/sdk/CustomScheduledExecutor;

    .line 41
    iput-object v3, p0, Lcom/adjust/sdk/AttributionHandler;->activityHandlerWeakRef:Ljava/lang/ref/WeakReference;

    .line 42
    iput-object v3, p0, Lcom/adjust/sdk/AttributionHandler;->logger:Lcom/adjust/sdk/ILogger;

    .line 43
    iput-object v3, p0, Lcom/adjust/sdk/AttributionHandler;->attributionPackage:Lcom/adjust/sdk/ActivityPackage;

    .line 44
    iput-object v3, p0, Lcom/adjust/sdk/AttributionHandler;->timer:Lcom/adjust/sdk/TimerOnce;

    .line 45
    return-void

    .line 35
    :catch_31
    move-exception v0

    goto :goto_1d
.end method
