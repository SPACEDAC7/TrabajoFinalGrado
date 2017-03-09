.class public Lcom/buzzfeed/toolkit/networking/helpers/SpicyServiceHelper;
.super Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper;
.source "SpicyServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/toolkit/networking/helpers/SpicyServiceHelper$SpicyService;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper",
        "<",
        "Lcom/buzzfeed/toolkit/networking/helpers/SpicyServiceHelper$SpicyService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v0, Lcom/buzzfeed/toolkit/util/DynamicHeaderInterceptor;

    invoke-direct {v0}, Lcom/buzzfeed/toolkit/util/DynamicHeaderInterceptor;-><init>()V

    .line 39
    .local v0, "spicyInterceptor":Lcom/buzzfeed/toolkit/util/DynamicHeaderInterceptor;
    const-string v1, "User-agent"

    invoke-virtual {v0, v1, p2}, Lcom/buzzfeed/toolkit/util/DynamicHeaderInterceptor;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v1, p0, Lcom/buzzfeed/toolkit/networking/helpers/SpicyServiceHelper;->mRetrofitClient:Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;

    invoke-virtual {v1, v0}, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->addInterceptor(Lokhttp3/Interceptor;)Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;

    .line 41
    return-void
.end method


# virtual methods
.method protected createService(Lretrofit2/Retrofit;)Lcom/buzzfeed/toolkit/networking/helpers/SpicyServiceHelper$SpicyService;
    .registers 3
    .param p1, "retrofit"    # Lretrofit2/Retrofit;

    .prologue
    .line 45
    const-class v0, Lcom/buzzfeed/toolkit/networking/helpers/SpicyServiceHelper$SpicyService;

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/networking/helpers/SpicyServiceHelper$SpicyService;

    return-object v0
.end method

.method protected bridge synthetic createService(Lretrofit2/Retrofit;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/buzzfeed/toolkit/networking/helpers/SpicyServiceHelper;->createService(Lretrofit2/Retrofit;)Lcom/buzzfeed/toolkit/networking/helpers/SpicyServiceHelper$SpicyService;

    move-result-object v0

    return-object v0
.end method

.method public getSpiceContentById(Ljava/lang/String;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;
    .registers 4
    .param p1, "spiceId"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Url;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback",
            "<",
            "Lokhttp3/ResponseBody;",
            ">;)",
            "Lcom/buzzfeed/toolkit/util/retrofit/SafeCall",
            "<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    .local p2, "callback":Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback<Lokhttp3/ResponseBody;>;"
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/networking/helpers/SpicyServiceHelper;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/networking/helpers/SpicyServiceHelper$SpicyService;

    invoke-interface {v0, p1}, Lcom/buzzfeed/toolkit/networking/helpers/SpicyServiceHelper$SpicyService;->getSpiceContentById(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/buzzfeed/toolkit/networking/helpers/SpicyServiceHelper;->enqueueSafeRequest(Lretrofit2/Call;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    move-result-object v0

    return-object v0
.end method

.method public getSpiceContentByUrl(Ljava/lang/String;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;
    .registers 4
    .param p1, "url"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Url;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback",
            "<",
            "Lokhttp3/ResponseBody;",
            ">;)",
            "Lcom/buzzfeed/toolkit/util/retrofit/SafeCall",
            "<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    .local p2, "callback":Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback<Lokhttp3/ResponseBody;>;"
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/networking/helpers/SpicyServiceHelper;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/networking/helpers/SpicyServiceHelper$SpicyService;

    invoke-interface {v0, p1}, Lcom/buzzfeed/toolkit/networking/helpers/SpicyServiceHelper$SpicyService;->getSpiceContentByUrl(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/buzzfeed/toolkit/networking/helpers/SpicyServiceHelper;->enqueueSafeRequest(Lretrofit2/Call;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    move-result-object v0

    return-object v0
.end method

.method public getWebResourceResponseFromCache(Ljava/lang/String;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;
    .registers 3
    .param p1, "url"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Url;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/buzzfeed/toolkit/util/retrofit/SafeCall",
            "<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/networking/helpers/SpicyServiceHelper;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/networking/helpers/SpicyServiceHelper$SpicyService;

    invoke-interface {v0, p1}, Lcom/buzzfeed/toolkit/networking/helpers/SpicyServiceHelper$SpicyService;->getWebResourceResponseFromCache(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/networking/helpers/SpicyServiceHelper;->createSafeRequest(Lretrofit2/Call;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    move-result-object v0

    return-object v0
.end method
