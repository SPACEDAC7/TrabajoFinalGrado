.class final Lcom/buzzfeed/android/util/BuzzApiClient$1;
.super Lcom/buzzfeed/toolkit/util/retrofit/StringCallback;
.source "BuzzApiClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/util/BuzzApiClient;->updateSessionTokenWithBF(Lcom/buzzfeed/android/data/BuzzUser;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$TAG:Ljava/lang/String;

.field final synthetic val$user:Lcom/buzzfeed/android/data/BuzzUser;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/data/BuzzUser;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 240
    iput-object p1, p0, Lcom/buzzfeed/android/util/BuzzApiClient$1;->val$user:Lcom/buzzfeed/android/data/BuzzUser;

    iput-object p2, p0, Lcom/buzzfeed/android/util/BuzzApiClient$1;->val$TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/buzzfeed/toolkit/util/retrofit/StringCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .registers 5
    .param p2, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Lokhttp3/ResponseBody;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 264
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lokhttp3/ResponseBody;>;"
    iget-object v0, p0, Lcom/buzzfeed/android/util/BuzzApiClient$1;->val$TAG:Ljava/lang/String;

    const-string v1, "Error updating session token"

    invoke-static {v0, v1, p2}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 265
    return-void
.end method

.method protected onNetworkError(Lretrofit2/Call;Lretrofit2/Response;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Lokhttp3/ResponseBody;",
            ">;",
            "Lretrofit2/Response",
            "<",
            "Lokhttp3/ResponseBody;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 258
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lokhttp3/ResponseBody;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lokhttp3/ResponseBody;>;"
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-static {v1}, Lcom/buzzfeed/toolkit/util/HttpErrorParser;->createExceptionOnHttpError(I)Lcom/buzzfeed/toolkit/util/HttpException;

    move-result-object v0

    .line 259
    .local v0, "httpError":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/buzzfeed/android/util/BuzzApiClient$1;->val$TAG:Ljava/lang/String;

    const-string v2, "Network Error"

    invoke-static {v1, v2, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 260
    return-void
.end method

.method public onStringResponse(Ljava/lang/String;)V
    .registers 6
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 244
    if-eqz p1, :cond_25

    .line 245
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 246
    .local v1, "userJson":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/buzzfeed/android/util/BuzzApiClient$1;->val$user:Lcom/buzzfeed/android/data/BuzzUser;

    const-string v3, "login"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/data/BuzzUser;->setLogin(Z)V

    .line 247
    iget-object v2, p0, Lcom/buzzfeed/android/util/BuzzApiClient$1;->val$user:Lcom/buzzfeed/android/data/BuzzUser;

    invoke-virtual {v2}, Lcom/buzzfeed/android/data/BuzzUser;->isLogin()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 248
    iget-object v2, p0, Lcom/buzzfeed/android/util/BuzzApiClient$1;->val$user:Lcom/buzzfeed/android/data/BuzzUser;

    const-string v3, "session_key"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/data/BuzzUser;->setSessionKey(Ljava/lang/String;)V
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_25} :catch_26

    .line 254
    .end local v1    # "userJson":Lorg/json/JSONObject;
    :cond_25
    :goto_25
    return-void

    .line 251
    :catch_26
    move-exception v0

    .line 252
    .local v0, "e":Lorg/json/JSONException;
    iget-object v2, p0, Lcom/buzzfeed/android/util/BuzzApiClient$1;->val$TAG:Ljava/lang/String;

    const-string v3, "Error parsing json response "

    invoke-static {v2, v3, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_25
.end method
