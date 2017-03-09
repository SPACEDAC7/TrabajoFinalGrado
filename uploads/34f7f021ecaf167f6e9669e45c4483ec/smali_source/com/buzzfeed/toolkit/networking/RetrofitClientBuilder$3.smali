.class Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder$3;
.super Ljava/lang/Object;
.source "RetrofitClientBuilder.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->provideOfflineCacheInterceptor()Lokhttp3/Interceptor;
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
    .line 171
    iput-object p1, p0, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder$3;->this$0:Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .registers 6
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v1

    .line 177
    .local v1, "request":Lokhttp3/Request;
    invoke-virtual {v1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    .line 178
    .local v0, "builder":Lokhttp3/Request$Builder;
    iget-object v2, p0, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder$3;->this$0:Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;

    # invokes: Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->sortParamsForCachingSupport(Lokhttp3/Request;Lokhttp3/Request$Builder;)V
    invoke-static {v2, v1, v0}, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->access$100(Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;Lokhttp3/Request;Lokhttp3/Request$Builder;)V

    .line 180
    iget-object v2, p0, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder$3;->this$0:Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;

    invoke-virtual {v2}, Lcom/buzzfeed/toolkit/networking/RetrofitClientBuilder;->isConnectedToNetwork()Z

    move-result v2

    if-nez v2, :cond_21

    .line 181
    const-string v2, "Cache-Control"

    const-string v3, "public, only-if-cached, max-stale=604800"

    invoke-virtual {v0, v2, v3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 183
    :cond_21
    invoke-interface {p1, v1}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v2

    return-object v2
.end method
