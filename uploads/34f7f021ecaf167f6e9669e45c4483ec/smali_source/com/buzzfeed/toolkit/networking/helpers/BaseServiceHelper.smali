.class public abstract Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper;
.super Ljava/lang/Object;
.source "BaseServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final API_CLIENT:Ljava/lang/String; = "api_client"

.field static final API_CLIENT_VALUE:Ljava/lang/String; = "android"

.field public static final HEADER_CONTENT_TYPE_APPLICATION_JSON_CHARSET_UTF_8:Ljava/lang/String; = "Content-Type: application/json;charset=utf-8"

.field public static final KEY_CONTRIBUTION_JSON_ERROR:Ljava/lang/String; = "error"

.field public static final KEY_CONTRIBUTION_JSON_SUCCESS:Ljava/lang/String; = "success"

.field public static final USER_AGENT:Ljava/lang/String; = "User-agent"


# instance fields
.field private isCached:Z

.field private isGzipped:Z

.field protected mEnvironment:Lcom/buzzfeed/toolkit/networking/Environment;

.field private mRetrofit:Lretrofit2/Retrofit;

.field protected mRetrofitClient:Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    .local p0, "this":Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper;, "Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper;-><init>(Landroid/content/Context;Lcom/buzzfeed/toolkit/networking/Environment;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/buzzfeed/toolkit/networking/Environment;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "environment"    # Lcom/buzzfeed/toolkit/networking/Environment;

    .prologue
    .line 39
    .local p0, "this":Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper;, "Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper;->isGzipped:Z

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper;->isCached:Z

    .line 41
    new-instance v0, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;

    invoke-direct {v0, p1}, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper;->mRetrofitClient:Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;

    .line 42
    iput-object p2, p0, Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper;->mEnvironment:Lcom/buzzfeed/toolkit/networking/Environment;

    .line 43
    return-void
.end method


# virtual methods
.method protected createSafeRequest(Lretrofit2/Call;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
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
    .line 85
    .local p0, "this":Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper;, "Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper<TT;>;"
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lokhttp3/ResponseBody;>;"
    new-instance v0, Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    invoke-direct {v0, p1}, Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;-><init>(Lretrofit2/Call;)V

    return-object v0
.end method

.method protected abstract createService(Lretrofit2/Retrofit;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Retrofit;",
            ")TT;"
        }
    .end annotation
.end method

.method protected enqueueSafeRequest(Lretrofit2/Call;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Lokhttp3/ResponseBody;",
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
    .line 78
    .local p0, "this":Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper;, "Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper<TT;>;"
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lokhttp3/ResponseBody;>;"
    .local p2, "callback":Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback<Lokhttp3/ResponseBody;>;"
    new-instance v0, Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    invoke-direct {v0, p1}, Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;-><init>(Lretrofit2/Call;)V

    .line 79
    .local v0, "request":Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCall<Lokhttp3/ResponseBody;>;"
    invoke-virtual {v0, p2}, Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;->safeEnqueue(Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)V

    .line 80
    return-object v0
.end method

.method protected getService()Ljava/lang/Object;
    .registers 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper;, "Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper<TT;>;"
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper;->mRetrofit:Lretrofit2/Retrofit;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper;->mRetrofit:Lretrofit2/Retrofit;

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper;->createService(Lretrofit2/Retrofit;)Ljava/lang/Object;

    move-result-object v0

    .line 63
    :goto_a
    return-object v0

    .line 60
    :cond_b
    iget-boolean v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper;->isCached:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper;->mRetrofitClient:Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->noCache()Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;

    .line 61
    :cond_14
    iget-boolean v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper;->isGzipped:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper;->mRetrofitClient:Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->gzip()Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;

    .line 62
    :cond_1d
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper;->mRetrofitClient:Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper;->onCreateRetrofit(Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;)Lretrofit2/Retrofit;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper;->mRetrofit:Lretrofit2/Retrofit;

    .line 63
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper;->mRetrofit:Lretrofit2/Retrofit;

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper;->createService(Lretrofit2/Retrofit;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a
.end method

.method public final gzip()V
    .registers 2

    .prologue
    .line 46
    .local p0, "this":Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper;, "Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper;->isGzipped:Z

    .line 47
    return-void
.end method

.method public final noCache()V
    .registers 2

    .prologue
    .line 50
    .local p0, "this":Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper;, "Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper;->isCached:Z

    .line 51
    return-void
.end method

.method protected onCreateRetrofit(Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;)Lretrofit2/Retrofit;
    .registers 3
    .param p1, "retrofitClientBuilder"    # Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;

    .prologue
    .line 67
    .local p0, "this":Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper;, "Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper<TT;>;"
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper;->mEnvironment:Lcom/buzzfeed/toolkit/networking/Environment;

    if-eqz v0, :cond_d

    .line 68
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper;->mEnvironment:Lcom/buzzfeed/toolkit/networking/Environment;

    iget-object v0, v0, Lcom/buzzfeed/toolkit/networking/Environment;->BASE_SERVICE_URL:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/networking/RetrofitFactory;->with(Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;Ljava/lang/String;)Lretrofit2/Retrofit;

    move-result-object v0

    .line 70
    :goto_c
    return-object v0

    :cond_d
    invoke-static {p1}, Lcom/buzzfeed/toolkit/networking/RetrofitFactory;->with(Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;)Lretrofit2/Retrofit;

    move-result-object v0

    goto :goto_c
.end method
