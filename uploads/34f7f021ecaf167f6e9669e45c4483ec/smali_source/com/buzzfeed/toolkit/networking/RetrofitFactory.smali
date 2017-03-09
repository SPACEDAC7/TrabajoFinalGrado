.class public Lcom/buzzfeed/toolkit/networking/RetrofitFactory;
.super Ljava/lang/Object;
.source "RetrofitFactory.java"


# static fields
.field public static final BUZZFEED_DOMAIN:Ljava/lang/String; = "https://buzzfeed.com/"

.field protected static builder:Lretrofit2/Retrofit$Builder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 14
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 15
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    const-string v1, "https://buzzfeed.com/"

    .line 16
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/toolkit/networking/RetrofitFactory;->builder:Lretrofit2/Retrofit$Builder;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static with(Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;)Lretrofit2/Retrofit;
    .registers 2
    .param p0, "client"    # Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/buzzfeed/toolkit/networking/RetrofitFactory;->with(Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;Ljava/lang/String;)Lretrofit2/Retrofit;

    move-result-object v0

    return-object v0
.end method

.method public static with(Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;Ljava/lang/String;)Lretrofit2/Retrofit;
    .registers 4
    .param p0, "client"    # Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;
    .param p1, "baseUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 23
    sget-object v0, Lcom/buzzfeed/toolkit/networking/RetrofitFactory;->builder:Lretrofit2/Retrofit$Builder;

    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->buildClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 24
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    .end local p1    # "baseUrl":Ljava/lang/String;
    :goto_10
    invoke-virtual {v0, p1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    return-object v0

    .line 24
    .restart local p1    # "baseUrl":Ljava/lang/String;
    :cond_19
    const-string p1, "https://buzzfeed.com/"

    goto :goto_10
.end method
