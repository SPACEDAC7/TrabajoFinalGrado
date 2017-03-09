.class public Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper;
.super Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper;
.source "ReactionsServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$CrsfTokenRequestParamBuilder;,
        Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionRequestParamBuilder;,
        Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$CategoryValues;,
        Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ParamKeys;,
        Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionsService;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper",
        "<",
        "Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionsService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/buzzfeed/toolkit/networking/Environment;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "environment"    # Lcom/buzzfeed/toolkit/networking/Environment;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper;-><init>(Landroid/content/Context;Lcom/buzzfeed/toolkit/networking/Environment;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected createService(Lretrofit2/Retrofit;)Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionsService;
    .registers 3
    .param p1, "retrofit"    # Lretrofit2/Retrofit;

    .prologue
    .line 53
    const-class v0, Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionsService;

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionsService;

    return-object v0
.end method

.method protected bridge synthetic createService(Lretrofit2/Retrofit;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper;->createService(Lretrofit2/Retrofit;)Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionsService;

    move-result-object v0

    return-object v0
.end method

.method public getCsrfTokenInternal(Ljava/util/Map;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;
    .registers 3
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/buzzfeed/toolkit/util/retrofit/SafeCall",
            "<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionsService;

    invoke-interface {v0, p1}, Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionsService;->getCsrfTokenInternal(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper;->createSafeRequest(Lretrofit2/Call;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    move-result-object v0

    return-object v0
.end method

.method public postReactionToServer(Ljava/util/Map;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;
    .registers 3
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/buzzfeed/toolkit/util/retrofit/SafeCall",
            "<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "voteParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionsService;

    invoke-interface {v0, p1}, Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionsService;->postReactionToServer(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper;->createSafeRequest(Lretrofit2/Call;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    move-result-object v0

    return-object v0
.end method
