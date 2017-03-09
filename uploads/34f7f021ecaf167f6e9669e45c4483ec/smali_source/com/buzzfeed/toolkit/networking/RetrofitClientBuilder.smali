.class public Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;
.super Ljava/lang/Object;
.source "RetrofitClientBuilder.java"


# static fields
.field private static final ACCEPT_LANGUAGE:Ljava/lang/String; = "Accept-Language"

.field private static final CONNECT_TIMEOUT:J = 0xaL

.field private static final HEADER_CACHE_CONTROL:Ljava/lang/String; = "Cache-Control"

.field private static final MAX_CACHE_SIZE:I = 0xa00000

.field private static final MAX_OFFLINE_CACHE_EXPIRATION_TIME:I = 0x93a80

.field private static final MAX_ONLINE_CACHE_EXPIRATION_TIME:I = 0x12c

.field private static final PRAGMA:Ljava/lang/String; = "Pragma"

.field private static final READ_TIMEOUT:J = 0x1eL

.field private static final TAG:Ljava/lang/String;

.field private static final UNSATISFIABLE_REQUEST_ONLY_IF_CACHED:Ljava/lang/String; = "Unsatisfiable Request (only-if-cached)"

.field private static final USER_AGENT:Ljava/lang/String; = "User-Agent"


# instance fields
.field private isCached:Z

.field private isGzipped:Z

.field private mContext:Landroid/content/Context;

.field private mHttpClient:Lokhttp3/OkHttpClient;

.field private mInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private usesRandomAgent:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const-class v0, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->mInterceptors:Ljava/util/List;

    .line 40
    iput-boolean v1, p0, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->isGzipped:Z

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->isCached:Z

    .line 42
    iput-boolean v1, p0, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->usesRandomAgent:Z

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;Lokhttp3/Request;Lokhttp3/Request$Builder;)V
    .registers 3
    .param p0, "x0"    # Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;
    .param p1, "x1"    # Lokhttp3/Request;
    .param p2, "x2"    # Lokhttp3/Request$Builder;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->sortParamsForCachingSupport(Lokhttp3/Request;Lokhttp3/Request$Builder;)V

    return-void
.end method

.method static synthetic access$200(Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;Lokhttp3/Response;)Z
    .registers 3
    .param p0, "x0"    # Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;
    .param p1, "x1"    # Lokhttp3/Response;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->isCacheMiss(Lokhttp3/Response;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;Lokhttp3/Request;)Lokhttp3/Request;
    .registers 3
    .param p0, "x0"    # Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;
    .param p1, "x1"    # Lokhttp3/Request;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->createCacheOnServerResponseRequest(Lokhttp3/Request;)Lokhttp3/Request;

    move-result-object v0

    return-object v0
.end method

.method private addCacheInterceptor(Lokhttp3/OkHttpClient$Builder;)V
    .registers 4
    .param p1, "mHttpClient"    # Lokhttp3/OkHttpClient$Builder;

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->getCache()Lokhttp3/Cache;

    move-result-object v0

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 89
    invoke-direct {p0}, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->provideOfflineCacheInterceptor()Lokhttp3/Interceptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 90
    invoke-direct {p0}, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->provideOnlineCacheInterceptor()Lokhttp3/Interceptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 91
    invoke-direct {p0}, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->provideCacheNetworkInterceptor()Lokhttp3/Interceptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 92
    return-void
.end method

.method private addGzipInterceptor(Lokhttp3/OkHttpClient$Builder;)V
    .registers 3
    .param p1, "mHttpClient"    # Lokhttp3/OkHttpClient$Builder;

    .prologue
    .line 234
    new-instance v0, Lcom/buzzfeed/toolkit/util/GzipRequestInterceptor;

    invoke-direct {v0}, Lcom/buzzfeed/toolkit/util/GzipRequestInterceptor;-><init>()V

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 235
    return-void
.end method

.method private addInterceptors(Lokhttp3/OkHttpClient$Builder;)V
    .registers 5
    .param p1, "httpClient"    # Lokhttp3/OkHttpClient$Builder;

    .prologue
    .line 279
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->mInterceptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_17

    .line 280
    iget-object v2, p0, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->mInterceptors:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Interceptor;

    .line 281
    .local v1, "interceptor":Lokhttp3/Interceptor;
    invoke-virtual {p1, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 279
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 283
    .end local v1    # "interceptor":Lokhttp3/Interceptor;
    :cond_17
    return-void
.end method

.method private addLanguageHeader()Lokhttp3/Interceptor;
    .registers 4

    .prologue
    .line 261
    new-instance v0, Lcom/buzzfeed/toolkit/util/DynamicHeaderInterceptor;

    invoke-direct {v0}, Lcom/buzzfeed/toolkit/util/DynamicHeaderInterceptor;-><init>()V

    .line 262
    .local v0, "languageHeaderInterceptor":Lcom/buzzfeed/toolkit/util/DynamicHeaderInterceptor;
    const-string v1, "Accept-Language"

    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->getPreferredLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/buzzfeed/toolkit/util/DynamicHeaderInterceptor;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    return-object v0
.end method

.method private createCacheOnServerResponseRequest(Lokhttp3/Request;)Lokhttp3/Request;
    .registers 5
    .param p1, "newRequest"    # Lokhttp3/Request;

    .prologue
    .line 189
    invoke-virtual {p1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "Cache-Control"

    .line 190
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "Cache-Control"

    const-string v2, "public, max-age=300"

    .line 191
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    return-object v0
.end method

.method private isCacheMiss(Lokhttp3/Response;)Z
    .registers 5
    .param p1, "response"    # Lokhttp3/Response;

    .prologue
    .line 196
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v0

    .line 197
    .local v0, "code":I
    invoke-virtual {p1}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "message":Ljava/lang/String;
    const/16 v2, 0x1f8

    if-ne v0, v2, :cond_18

    if-eqz v1, :cond_18

    const-string v2, "Unsatisfiable Request (only-if-cached)"

    .line 200
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v2, 0x1

    :goto_17
    return v2

    :cond_18
    const/4 v2, 0x0

    goto :goto_17
.end method

.method private provideCacheNetworkInterceptor()Lokhttp3/Interceptor;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 102
    new-instance v0, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder$1;

    invoke-direct {v0, p0}, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder$1;-><init>(Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;)V

    return-object v0
.end method

.method private provideOfflineCacheInterceptor()Lokhttp3/Interceptor;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 171
    new-instance v0, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder$3;

    invoke-direct {v0, p0}, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder$3;-><init>(Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;)V

    return-object v0
.end method

.method private provideOnlineCacheInterceptor()Lokhttp3/Interceptor;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 126
    new-instance v0, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder$2;

    invoke-direct {v0, p0}, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder$2;-><init>(Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;)V

    return-object v0
.end method

.method private setDefaultUserAgent(Lokhttp3/OkHttpClient$Builder;)V
    .registers 5
    .param p1, "httpClient"    # Lokhttp3/OkHttpClient$Builder;

    .prologue
    .line 62
    new-instance v0, Lcom/buzzfeed/toolkit/util/DynamicHeaderInterceptor;

    invoke-direct {v0}, Lcom/buzzfeed/toolkit/util/DynamicHeaderInterceptor;-><init>()V

    .line 63
    .local v0, "dynamicHeaderInterceptor":Lcom/buzzfeed/toolkit/util/DynamicHeaderInterceptor;
    const-string v1, "User-Agent"

    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->getDefaultUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/buzzfeed/toolkit/util/DynamicHeaderInterceptor;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 65
    return-void
.end method

.method private setNetworkTimeout(Lokhttp3/OkHttpClient$Builder;)V
    .registers 6
    .param p1, "httpClient"    # Lokhttp3/OkHttpClient$Builder;

    .prologue
    .line 255
    const-wide/16 v0, 0x1e

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 256
    invoke-virtual {p1, v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const-wide/16 v2, 0xa

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 257
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 258
    return-void
.end method

.method private setRandomUserAgent(Lokhttp3/OkHttpClient$Builder;)V
    .registers 3
    .param p1, "httpClient"    # Lokhttp3/OkHttpClient$Builder;

    .prologue
    .line 72
    new-instance v0, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor;

    invoke-direct {v0}, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor;-><init>()V

    .line 73
    .local v0, "randomUserAgentInterceptor":Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor;
    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 74
    return-void
.end method

.method private setUserAgentHeader(Lokhttp3/OkHttpClient$Builder;)V
    .registers 3
    .param p1, "httpClient"    # Lokhttp3/OkHttpClient$Builder;

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->usesRandomAgent:Z

    if-eqz v0, :cond_8

    .line 272
    invoke-direct {p0, p1}, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->setRandomUserAgent(Lokhttp3/OkHttpClient$Builder;)V

    .line 276
    :goto_7
    return-void

    .line 274
    :cond_8
    invoke-direct {p0, p1}, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->setDefaultUserAgent(Lokhttp3/OkHttpClient$Builder;)V

    goto :goto_7
.end method

.method private sortParamsForCachingSupport(Lokhttp3/Request;Lokhttp3/Request$Builder;)V
    .registers 5
    .param p1, "request"    # Lokhttp3/Request;
    .param p2, "builder"    # Lokhttp3/Request$Builder;

    .prologue
    .line 204
    invoke-virtual {p1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0, p1, p2}, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->sortQueryParams(Lokhttp3/Request;Lokhttp3/Request$Builder;)V

    .line 205
    :cond_f
    return-void
.end method

.method private sortQueryParams(Lokhttp3/Request;Lokhttp3/Request$Builder;)V
    .registers 9
    .param p1, "request"    # Lokhttp3/Request;
    .param p2, "builder"    # Lokhttp3/Request$Builder;

    .prologue
    .line 217
    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v4

    .line 218
    .local v4, "url":Lokhttp3/HttpUrl;
    invoke-virtual {v4}, Lokhttp3/HttpUrl;->querySize()I

    move-result v5

    if-nez v5, :cond_b

    .line 231
    :goto_a
    return-void

    .line 220
    :cond_b
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v4}, Lokhttp3/HttpUrl;->queryParameterNames()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 221
    .local v3, "paramNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 222
    invoke-virtual {v4}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 224
    .local v0, "finalUrlBuilder":Lokhttp3/HttpUrl$Builder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_35

    .line 225
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 226
    .local v2, "paramName":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lokhttp3/HttpUrl$Builder;->removeAllQueryParameters(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 227
    invoke-virtual {v4, v2}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 224
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 230
    .end local v2    # "paramName":Ljava/lang/String;
    :cond_35
    invoke-virtual {v0}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v5

    invoke-virtual {p2, v5}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    goto :goto_a
.end method


# virtual methods
.method public addInterceptor(Lokhttp3/Interceptor;)Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;
    .registers 3
    .param p1, "interceptor"    # Lokhttp3/Interceptor;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->mInterceptors:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->mInterceptors:Ljava/util/List;

    .line 53
    :cond_b
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->mInterceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    return-object p0
.end method

.method public buildClient()Lokhttp3/OkHttpClient;
    .registers 4

    .prologue
    .line 239
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 240
    invoke-direct {p0}, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->addLanguageHeader()Lokhttp3/Interceptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 241
    invoke-static {}, Lcom/buzzfeed/toolkit/networking/NetworkConfig;->getInstance()Lcom/buzzfeed/toolkit/networking/NetworkConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/buzzfeed/toolkit/networking/NetworkConfig;->getHttpLoggingInterceptor()Lokhttp3/logging/HttpLoggingInterceptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 243
    .local v0, "httpClient":Lokhttp3/OkHttpClient$Builder;
    iget-boolean v1, p0, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->isGzipped:Z

    if-eqz v1, :cond_20

    invoke-direct {p0, v0}, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->addGzipInterceptor(Lokhttp3/OkHttpClient$Builder;)V

    .line 244
    :cond_20
    iget-boolean v1, p0, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->isCached:Z

    if-eqz v1, :cond_27

    invoke-direct {p0, v0}, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->addCacheInterceptor(Lokhttp3/OkHttpClient$Builder;)V

    .line 246
    :cond_27
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->hasInterceptors()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-direct {p0, v0}, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->addInterceptors(Lokhttp3/OkHttpClient$Builder;)V

    .line 248
    :cond_30
    invoke-direct {p0, v0}, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->setUserAgentHeader(Lokhttp3/OkHttpClient$Builder;)V

    .line 249
    invoke-direct {p0, v0}, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->setNetworkTimeout(Lokhttp3/OkHttpClient$Builder;)V

    .line 250
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    iput-object v1, p0, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->mHttpClient:Lokhttp3/OkHttpClient;

    .line 251
    iget-object v1, p0, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->mHttpClient:Lokhttp3/OkHttpClient;

    return-object v1
.end method

.method getCache()Lokhttp3/Cache;
    .registers 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 209
    new-instance v0, Lokhttp3/Cache;

    iget-object v1, p0, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-wide/32 v2, 0xa00000

    invoke-direct {v0, v1, v2, v3}, Lokhttp3/Cache;-><init>(Ljava/io/File;J)V

    return-object v0
.end method

.method protected getDefaultUserAgent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/NetworkUtil;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPreferredLanguage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public gzip()Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;
    .registers 2

    .prologue
    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->isGzipped:Z

    .line 79
    return-object p0
.end method

.method protected hasInterceptors()Z
    .registers 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->mInterceptors:Ljava/util/List;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->mInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method isConnectedToNetwork()Z
    .registers 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/NetworkUtil;->isConnectedToNetwork(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public noCache()Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;
    .registers 2

    .prologue
    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->isCached:Z

    .line 84
    return-object p0
.end method

.method public useRandomUserAgent()V
    .registers 2

    .prologue
    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->usesRandomAgent:Z

    .line 59
    return-void
.end method
