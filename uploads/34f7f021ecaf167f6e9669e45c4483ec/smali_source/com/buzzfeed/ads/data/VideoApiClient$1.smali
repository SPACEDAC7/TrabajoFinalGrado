.class final Lcom/buzzfeed/ads/data/VideoApiClient$1;
.super Lcom/buzzfeed/toolkit/util/retrofit/StringCallback;
.source "VideoApiClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/ads/data/VideoApiClient;->getVideo(Lcom/buzzfeed/ads/data/VideoApiClient$ResponseListener;Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/buzzfeed/ads/data/VideoApiClient$ResponseListener;


# direct methods
.method constructor <init>(Lcom/buzzfeed/ads/data/VideoApiClient$ResponseListener;)V
    .registers 2

    .prologue
    .line 32
    iput-object p1, p0, Lcom/buzzfeed/ads/data/VideoApiClient$1;->val$listener:Lcom/buzzfeed/ads/data/VideoApiClient$ResponseListener;

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
    .line 47
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lokhttp3/ResponseBody;>;"
    # getter for: Lcom/buzzfeed/ads/data/VideoApiClient;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/buzzfeed/ads/data/VideoApiClient;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method protected onNetworkError(Lretrofit2/Call;Lretrofit2/Response;)V
    .registers 7
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
    .line 40
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lokhttp3/ResponseBody;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lokhttp3/ResponseBody;>;"
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-static {v1}, Lcom/buzzfeed/toolkit/util/HttpErrorParser;->createExceptionOnHttpError(I)Lcom/buzzfeed/toolkit/util/HttpException;

    move-result-object v0

    .line 41
    .local v0, "httpError":Ljava/lang/Exception;
    # getter for: Lcom/buzzfeed/ads/data/VideoApiClient;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/buzzfeed/ads/data/VideoApiClient;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network Response Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    iget-object v1, p0, Lcom/buzzfeed/ads/data/VideoApiClient$1;->val$listener:Lcom/buzzfeed/ads/data/VideoApiClient$ResponseListener;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/buzzfeed/ads/data/VideoApiClient$ResponseListener;->onErrorResponse(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public onStringResponse(Ljava/lang/String;)V
    .registers 3
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/buzzfeed/ads/data/VideoApiClient$1;->val$listener:Lcom/buzzfeed/ads/data/VideoApiClient$ResponseListener;

    invoke-static {v0, p1}, Lcom/buzzfeed/ads/data/VideoApiClient;->parseResponse(Lcom/buzzfeed/ads/data/VideoApiClient$ResponseListener;Ljava/lang/String;)V

    .line 36
    return-void
.end method
