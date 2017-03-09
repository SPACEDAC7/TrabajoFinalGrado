.class public Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper;
.super Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper;
.source "WeaverServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;,
        Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$WeaverService;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper",
        "<",
        "Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$WeaverService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/buzzfeed/toolkit/networking/Environment;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "environment"    # Lcom/buzzfeed/toolkit/networking/Environment;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper;-><init>(Landroid/content/Context;Lcom/buzzfeed/toolkit/networking/Environment;)V

    .line 28
    return-void
.end method


# virtual methods
.method protected createService(Lretrofit2/Retrofit;)Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$WeaverService;
    .registers 3
    .param p1, "retrofit"    # Lretrofit2/Retrofit;

    .prologue
    .line 50
    const-class v0, Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$WeaverService;

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$WeaverService;

    return-object v0
.end method

.method protected bridge synthetic createService(Lretrofit2/Retrofit;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper;->createService(Lretrofit2/Retrofit;)Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$WeaverService;

    move-result-object v0

    return-object v0
.end method

.method public loadFeeds(Ljava/lang/String;Ljava/util/Map;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;
    .registers 6
    .param p1, "feed"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback",
            "<",
            "Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;",
            ">;)",
            "Lcom/buzzfeed/toolkit/util/retrofit/SafeCall",
            "<",
            "Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "callback":Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback<Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;>;"
    new-instance v0, Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper;->getService()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$WeaverService;

    invoke-interface {v1, p1, p2}, Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$WeaverService;->loadFeeds(Ljava/lang/String;Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;-><init>(Lretrofit2/Call;)V

    .line 61
    .local v0, "request":Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCall<Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;>;"
    invoke-virtual {v0, p3}, Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;->safeEnqueue(Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)V

    .line 62
    return-object v0
.end method

.method public loadShowsList(Ljava/util/Map;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback",
            "<",
            "Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;",
            ">;)",
            "Lcom/buzzfeed/toolkit/util/retrofit/SafeCall",
            "<",
            "Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "callback":Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback<Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;>;"
    new-instance v0, Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper;->getService()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$WeaverService;

    invoke-interface {v1, p1}, Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$WeaverService;->loadShowsList(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;-><init>(Lretrofit2/Call;)V

    .line 55
    .local v0, "request":Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCall<Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;>;"
    invoke-virtual {v0, p2}, Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;->safeEnqueue(Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)V

    .line 56
    return-object v0
.end method

.method protected onCreateRetrofit(Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;)Lretrofit2/Retrofit;
    .registers 5
    .param p1, "retrofitClientBuilder"    # Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;

    .prologue
    .line 41
    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 42
    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->buildClient()Lokhttp3/OkHttpClient;

    move-result-object v2

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    sget-object v2, Lcom/buzzfeed/toolkit/weaver/constant/WeaverConfig;->WEAVER_URL:Ljava/lang/String;

    .line 43
    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 44
    invoke-static {}, Lcom/buzzfeed/toolkit/content/WeaverItem;->getGson()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-static {v2}, Lretrofit2/converter/gson/GsonConverterFactory;->create(Lcom/google/gson/Gson;)Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 45
    .local v0, "builder":Lretrofit2/Retrofit$Builder;
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v1

    return-object v1
.end method
