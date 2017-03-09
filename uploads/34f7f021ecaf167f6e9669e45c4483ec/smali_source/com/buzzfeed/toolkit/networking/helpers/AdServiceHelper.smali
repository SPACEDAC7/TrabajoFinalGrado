.class public Lcom/buzzfeed/toolkit/networking/helpers/AdServiceHelper;
.super Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper;
.source "AdServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/toolkit/networking/helpers/AdServiceHelper$AdTrackParamsBuilder;,
        Lcom/buzzfeed/toolkit/networking/helpers/AdServiceHelper$AdService;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper",
        "<",
        "Lcom/buzzfeed/toolkit/networking/helpers/AdServiceHelper$AdService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper;-><init>(Landroid/content/Context;)V

    .line 32
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/AdServiceHelper;->mRetrofitClient:Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->useRandomUserAgent()V

    .line 33
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/networking/helpers/AdServiceHelper;->noCache()V

    .line 34
    return-void
.end method


# virtual methods
.method protected createService(Lretrofit2/Retrofit;)Lcom/buzzfeed/toolkit/networking/helpers/AdServiceHelper$AdService;
    .registers 3
    .param p1, "retrofit"    # Lretrofit2/Retrofit;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 40
    const-class v0, Lcom/buzzfeed/toolkit/networking/helpers/AdServiceHelper$AdService;

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/networking/helpers/AdServiceHelper$AdService;

    return-object v0
.end method

.method protected bridge synthetic createService(Lretrofit2/Retrofit;)Ljava/lang/Object;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/buzzfeed/toolkit/networking/helpers/AdServiceHelper;->createService(Lretrofit2/Retrofit;)Lcom/buzzfeed/toolkit/networking/helpers/AdServiceHelper$AdService;

    move-result-object v0

    return-object v0
.end method

.method public loadAdUrl(Ljava/lang/String;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;
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
    .line 44
    .local p2, "safeCallback":Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback<Lokhttp3/ResponseBody;>;"
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/networking/helpers/AdServiceHelper;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/networking/helpers/AdServiceHelper$AdService;

    invoke-interface {v0, p1}, Lcom/buzzfeed/toolkit/networking/helpers/AdServiceHelper$AdService;->loadAdUrl(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/buzzfeed/toolkit/networking/helpers/AdServiceHelper;->enqueueSafeRequest(Lretrofit2/Call;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    move-result-object v0

    return-object v0
.end method

.method public trackAdUrls(Ljava/lang/String;Ljava/util/Map;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;
    .registers 5
    .param p1, "url"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Url;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
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
            "Lokhttp3/ResponseBody;",
            ">;)",
            "Lcom/buzzfeed/toolkit/util/retrofit/SafeCall",
            "<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "callback":Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback<Lokhttp3/ResponseBody;>;"
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/networking/helpers/AdServiceHelper;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/networking/helpers/AdServiceHelper$AdService;

    invoke-interface {v0, p1, p2}, Lcom/buzzfeed/toolkit/networking/helpers/AdServiceHelper$AdService;->trackAdUrls(Ljava/lang/String;Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/buzzfeed/toolkit/networking/helpers/AdServiceHelper;->enqueueSafeRequest(Lretrofit2/Call;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    move-result-object v0

    return-object v0
.end method
