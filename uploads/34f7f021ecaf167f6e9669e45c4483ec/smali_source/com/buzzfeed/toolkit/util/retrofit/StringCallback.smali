.class public abstract Lcom/buzzfeed/toolkit/util/retrofit/StringCallback;
.super Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;
.source "StringCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback",
        "<",
        "Lokhttp3/ResponseBody;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected onSafeResponse(Lretrofit2/Call;Lretrofit2/Response;)V
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
    .line 18
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lokhttp3/ResponseBody;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lokhttp3/ResponseBody;>;"
    :try_start_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/ResponseBody;

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1

    .line 19
    .local v1, "jsonResponse":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/buzzfeed/toolkit/util/retrofit/StringCallback;->onStringResponse(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_e

    .line 23
    .end local v1    # "jsonResponse":Ljava/lang/String;
    :goto_d
    return-void

    .line 20
    :catch_e
    move-exception v0

    .line 21
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, p1, v0}, Lcom/buzzfeed/toolkit/util/retrofit/StringCallback;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V

    goto :goto_d
.end method

.method protected abstract onStringResponse(Ljava/lang/String;)V
.end method
