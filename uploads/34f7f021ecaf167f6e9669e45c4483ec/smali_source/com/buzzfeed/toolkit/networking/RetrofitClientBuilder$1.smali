.class Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder$1;
.super Ljava/lang/Object;
.source "RetrofitClientBuilder.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->provideCacheNetworkInterceptor()Lokhttp3/Interceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;


# direct methods
.method constructor <init>(Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder$1;->this$0:Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .registers 7
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 106
    .local v0, "request":Lokhttp3/Request;
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v1

    .line 107
    .local v1, "response":Lokhttp3/Response;
    # getter for: Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cache save url = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v2

    const/16 v3, 0x130

    if-ne v2, v3, :cond_3b

    # getter for: Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Server Response not modified, cache response used"

    invoke-static {v2, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_3b
    invoke-virtual {v1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v2

    const-string v3, "Pragma"

    .line 110
    invoke-virtual {v2, v3}, Lokhttp3/Response$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object v2

    const-string v3, "Cache-Control"

    .line 111
    invoke-virtual {v2, v3}, Lokhttp3/Response$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object v2

    const-string v3, "Cache-Control"

    const-string v4, "public, max-age=300"

    .line 112
    invoke-virtual {v2, v3, v4}, Lokhttp3/Response$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object v2

    .line 113
    invoke-virtual {v2}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v2

    return-object v2
.end method
