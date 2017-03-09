.class Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder$2;
.super Ljava/lang/Object;
.source "RetrofitClientBuilder.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->provideOnlineCacheInterceptor()Lokhttp3/Interceptor;
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
    .line 126
    iput-object p1, p0, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder$2;->this$0:Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .registers 12
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v3

    .line 131
    .local v3, "request":Lokhttp3/Request;
    invoke-virtual {v3}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    .line 132
    .local v0, "builder":Lokhttp3/Request$Builder;
    iget-object v7, p0, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder$2;->this$0:Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;

    # invokes: Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->sortParamsForCachingSupport(Lokhttp3/Request;Lokhttp3/Request$Builder;)V
    invoke-static {v7, v3, v0}, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->access$100(Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;Lokhttp3/Request;Lokhttp3/Request$Builder;)V

    .line 134
    iget-object v7, p0, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder$2;->this$0:Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;

    invoke-virtual {v7}, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->isConnectedToNetwork()Z

    move-result v7

    if-eqz v7, :cond_94

    .line 137
    const-string v7, "Cache-Control"

    const-string v8, "public, only-if-cached, max-stale=300"

    invoke-virtual {v0, v7, v8}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v5

    .line 138
    .local v5, "sortedRequest":Lokhttp3/Request;
    # getter for: Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cache look-up url = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-interface {p1, v5}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v4

    .line 143
    .local v4, "response":Lokhttp3/Response;
    iget-object v7, p0, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder$2;->this$0:Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;

    # invokes: Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->isCacheMiss(Lokhttp3/Response;)Z
    invoke-static {v7, v4}, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->access$200(Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;Lokhttp3/Response;)Z

    move-result v1

    .line 144
    .local v1, "cacheMiss":Z
    # getter for: Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Response is not Cached or Expired = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v4}, Lokhttp3/Response;->isSuccessful()Z

    move-result v7

    if-nez v7, :cond_93

    if-eqz v1, :cond_93

    .line 147
    invoke-virtual {v3}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v7

    const-string v8, "no_cache"

    invoke-virtual {v7, v8}, Lokhttp3/HttpUrl$Builder;->removeAllQueryParameters(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v6

    .line 148
    .local v6, "url":Lokhttp3/HttpUrl;
    invoke-virtual {v3}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    .line 150
    .local v2, "newRequest":Lokhttp3/Request;
    iget-object v7, p0, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder$2;->this$0:Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;

    # invokes: Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->createCacheOnServerResponseRequest(Lokhttp3/Request;)Lokhttp3/Request;
    invoke-static {v7, v2}, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->access$300(Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;Lokhttp3/Request;)Lokhttp3/Request;

    move-result-object v2

    .line 151
    invoke-interface {p1, v2}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v4

    .line 159
    .end local v1    # "cacheMiss":Z
    .end local v2    # "newRequest":Lokhttp3/Request;
    .end local v4    # "response":Lokhttp3/Response;
    .end local v6    # "url":Lokhttp3/HttpUrl;
    :cond_93
    :goto_93
    return-object v4

    .line 158
    .end local v5    # "sortedRequest":Lokhttp3/Request;
    :cond_94
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v5

    .line 159
    .restart local v5    # "sortedRequest":Lokhttp3/Request;
    invoke-interface {p1, v5}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v4

    goto :goto_93
.end method
