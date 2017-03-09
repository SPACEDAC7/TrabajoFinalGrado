.class public Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper;
.super Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper;
.source "AuthServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$GoogleSignUpParamBuilder;,
        Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$GoogleLoginParamBuilder;,
        Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$BfSignUpParamBuilder;,
        Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$BfLoginParamBuilder;,
        Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$FbAuthParamBuilder;,
        Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$BuzzfeedAuthService;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper",
        "<",
        "Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$BuzzfeedAuthService;",
        ">;"
    }
.end annotation


# static fields
.field private static final API_CLIENT_KEY:Ljava/lang/String; = "api_client"

.field private static final API_CLIENT_VALUE:Ljava/lang/String; = "android"

.field private static final KEY_CONTRIBUTE:Ljava/lang/String; = "contribute"

.field private static final KEY_DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field private static final KEY_EMAIL:Ljava/lang/String; = "email"

.field private static final KEY_GOOGLEPLUS:Ljava/lang/String; = "googleplus"

.field private static final KEY_HOST:Ljava/lang/String; = "host"

.field public static final KEY_LOGIN_PASSWORD:Ljava/lang/String; = "password"

.field public static final KEY_LOGIN_PW:Ljava/lang/String; = "pw"

.field private static final KEY_NAME:Ljava/lang/String; = "name"

.field public static final KEY_SESSION_KEY:Ljava/lang/String; = "session_key"

.field public static final KEY_USERNAME:Ljava/lang/String; = "username"

.field public static final KEY_VALIDATION_JSON_VALIDATED:Ljava/lang/String; = "validated"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/buzzfeed/toolkit/networking/Environment;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "environment"    # Lcom/buzzfeed/toolkit/networking/Environment;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper;-><init>(Landroid/content/Context;Lcom/buzzfeed/toolkit/networking/Environment;)V

    .line 44
    return-void
.end method


# virtual methods
.method public authorizeViaSessionKey(Ljava/util/Map;)Lretrofit2/Call;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lretrofit2/Call",
            "<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "authParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$BuzzfeedAuthService;

    invoke-interface {v0, p1}, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$BuzzfeedAuthService;->buzzfeedAuthRequest(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    return-object v0
.end method

.method protected createService(Lretrofit2/Retrofit;)Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$BuzzfeedAuthService;
    .registers 3
    .param p1, "retrofit"    # Lretrofit2/Retrofit;

    .prologue
    .line 64
    const-class v0, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$BuzzfeedAuthService;

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$BuzzfeedAuthService;

    return-object v0
.end method

.method protected bridge synthetic createService(Lretrofit2/Retrofit;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper;->createService(Lretrofit2/Retrofit;)Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$BuzzfeedAuthService;

    move-result-object v0

    return-object v0
.end method

.method public loginToBuzzfeed(Ljava/util/Map;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;
    .registers 4
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
    .line 68
    .local p1, "authParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "callback":Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback<Lokhttp3/ResponseBody;>;"
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$BuzzfeedAuthService;

    invoke-interface {v0, p1}, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$BuzzfeedAuthService;->buzzfeedAuthRequest(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper;->enqueueSafeRequest(Lretrofit2/Call;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    move-result-object v0

    return-object v0
.end method

.method public signUpToBuzzfeed(Ljava/util/Map;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;
    .registers 4
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
    .line 72
    .local p1, "authParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "callback":Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback<Lokhttp3/ResponseBody;>;"
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$BuzzfeedAuthService;

    invoke-interface {v0, p1}, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$BuzzfeedAuthService;->signUpToBuzzfeed(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper;->enqueueSafeRequest(Lretrofit2/Call;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    move-result-object v0

    return-object v0
.end method

.method public validateRequest(Ljava/util/Map;)Lretrofit2/Call;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lretrofit2/Call",
            "<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "validateParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$BuzzfeedAuthService;

    invoke-interface {v0, p1}, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$BuzzfeedAuthService;->validateRequest(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    return-object v0
.end method
