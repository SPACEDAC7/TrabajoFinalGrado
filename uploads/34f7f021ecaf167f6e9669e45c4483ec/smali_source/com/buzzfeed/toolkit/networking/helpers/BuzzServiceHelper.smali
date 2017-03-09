.class public Lcom/buzzfeed/toolkit/networking/helpers/BuzzServiceHelper;
.super Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper;
.source "BuzzServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/toolkit/networking/helpers/BuzzServiceHelper$BuzzService;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper",
        "<",
        "Lcom/buzzfeed/toolkit/networking/helpers/BuzzServiceHelper$BuzzService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method


# virtual methods
.method protected createService(Lretrofit2/Retrofit;)Lcom/buzzfeed/toolkit/networking/helpers/BuzzServiceHelper$BuzzService;
    .registers 3
    .param p1, "retrofit"    # Lretrofit2/Retrofit;

    .prologue
    .line 31
    const-class v0, Lcom/buzzfeed/toolkit/networking/helpers/BuzzServiceHelper$BuzzService;

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/networking/helpers/BuzzServiceHelper$BuzzService;

    return-object v0
.end method

.method protected bridge synthetic createService(Lretrofit2/Retrofit;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/buzzfeed/toolkit/networking/helpers/BuzzServiceHelper;->createService(Lretrofit2/Retrofit;)Lcom/buzzfeed/toolkit/networking/helpers/BuzzServiceHelper$BuzzService;

    move-result-object v0

    return-object v0
.end method

.method public getBuzzWithUrl(Ljava/lang/String;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;
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
    .local p2, "callback":Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback<Lokhttp3/ResponseBody;>;"
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/networking/helpers/BuzzServiceHelper;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/networking/helpers/BuzzServiceHelper$BuzzService;

    invoke-interface {v0, p1}, Lcom/buzzfeed/toolkit/networking/helpers/BuzzServiceHelper$BuzzService;->getBuzzWithUrl(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/buzzfeed/toolkit/networking/helpers/BuzzServiceHelper;->enqueueSafeRequest(Lretrofit2/Call;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    move-result-object v0

    return-object v0
.end method
