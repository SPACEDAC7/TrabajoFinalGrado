.class public Lcom/buzzfeed/toolkit/networking/urbanairship/UAApiHelper;
.super Ljava/lang/Object;
.source "UAApiHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/toolkit/networking/urbanairship/UAApiHelper$AuthInterceptor;,
        Lcom/buzzfeed/toolkit/networking/urbanairship/UAApiHelper$UAApiService;
    }
.end annotation


# static fields
.field private static final BASE_URL:Ljava/lang/String; = "https://go.urbanairship.com/"

.field private static final TAG:Ljava/lang/String; = "UAApiHelper"


# instance fields
.field private mService:Lcom/buzzfeed/toolkit/networking/urbanairship/UAApiHelper$UAApiService;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/buzzfeed/toolkit/networking/urbanairship/UAApiHelper;->createService(Ljava/lang/String;Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/urbanairship/UAApiHelper$UAApiService;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/networking/urbanairship/UAApiHelper;->mService:Lcom/buzzfeed/toolkit/networking/urbanairship/UAApiHelper$UAApiService;

    .line 46
    return-void
.end method

.method private createService(Ljava/lang/String;Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/urbanairship/UAApiHelper$UAApiService;
    .registers 7
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 50
    new-instance v2, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v2}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    new-instance v3, Lcom/buzzfeed/toolkit/networking/urbanairship/UAApiHelper$AuthInterceptor;

    invoke-direct {v3, p0, p1, p2}, Lcom/buzzfeed/toolkit/networking/urbanairship/UAApiHelper$AuthInterceptor;-><init>(Lcom/buzzfeed/toolkit/networking/urbanairship/UAApiHelper;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v2, v3}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    .line 52
    invoke-static {}, Lcom/buzzfeed/toolkit/networking/NetworkConfig;->getInstance()Lcom/buzzfeed/toolkit/networking/NetworkConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/buzzfeed/toolkit/networking/NetworkConfig;->getHttpLoggingInterceptor()Lokhttp3/logging/HttpLoggingInterceptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    .line 53
    invoke-virtual {v2}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 55
    .local v0, "client":Lokhttp3/OkHttpClient;
    new-instance v2, Lretrofit2/Retrofit$Builder;

    invoke-direct {v2}, Lretrofit2/Retrofit$Builder;-><init>()V

    const-string v3, "https://go.urbanairship.com/"

    .line 56
    invoke-virtual {v2, v3}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v2

    .line 57
    invoke-virtual {v2, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v2

    .line 58
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v3

    invoke-virtual {v2, v3}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v2

    .line 59
    invoke-virtual {v2}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v1

    .line 61
    .local v1, "retrofit":Lretrofit2/Retrofit;
    const-class v2, Lcom/buzzfeed/toolkit/networking/urbanairship/UAApiHelper$UAApiService;

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/buzzfeed/toolkit/networking/urbanairship/UAApiHelper$UAApiService;

    return-object v2
.end method


# virtual methods
.method public postNotification(Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody;Lretrofit2/Callback;)V
    .registers 4
    .param p1, "body"    # Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody;",
            "Lretrofit2/Callback",
            "<",
            "Lokhttp3/ResponseBody;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p2, "callback":Lretrofit2/Callback;, "Lretrofit2/Callback<Lokhttp3/ResponseBody;>;"
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/urbanairship/UAApiHelper;->mService:Lcom/buzzfeed/toolkit/networking/urbanairship/UAApiHelper$UAApiService;

    invoke-interface {v0, p1}, Lcom/buzzfeed/toolkit/networking/urbanairship/UAApiHelper$UAApiService;->postNotification(Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody;)Lretrofit2/Call;

    move-result-object v0

    invoke-interface {v0, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 69
    return-void
.end method
