.class public Lcom/buzzfeed/ads/data/VideoServiceHelper;
.super Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper;
.source "VideoServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/ads/data/VideoServiceHelper$AdService;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper",
        "<",
        "Lcom/buzzfeed/ads/data/VideoServiceHelper$AdService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-virtual {p0}, Lcom/buzzfeed/ads/data/VideoServiceHelper;->noCache()V

    .line 26
    return-void
.end method


# virtual methods
.method protected createService(Lretrofit2/Retrofit;)Lcom/buzzfeed/ads/data/VideoServiceHelper$AdService;
    .registers 3
    .param p1, "retrofit"    # Lretrofit2/Retrofit;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 31
    const-class v0, Lcom/buzzfeed/ads/data/VideoServiceHelper$AdService;

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/ads/data/VideoServiceHelper$AdService;

    return-object v0
.end method

.method protected bridge synthetic createService(Lretrofit2/Retrofit;)Ljava/lang/Object;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/buzzfeed/ads/data/VideoServiceHelper;->createService(Lretrofit2/Retrofit;)Lcom/buzzfeed/ads/data/VideoServiceHelper$AdService;

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
    .line 35
    .local p2, "safeCallback":Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback<Lokhttp3/ResponseBody;>;"
    invoke-virtual {p0}, Lcom/buzzfeed/ads/data/VideoServiceHelper;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/ads/data/VideoServiceHelper$AdService;

    invoke-interface {v0, p1}, Lcom/buzzfeed/ads/data/VideoServiceHelper$AdService;->loadAdUrl(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/buzzfeed/ads/data/VideoServiceHelper;->enqueueSafeRequest(Lretrofit2/Call;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    move-result-object v0

    return-object v0
.end method
