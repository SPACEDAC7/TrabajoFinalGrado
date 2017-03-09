.class public Lcom/buzzfeed/toolkit/util/GzipRequestInterceptor;
.super Ljava/lang/Object;
.source "GzipRequestInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private forceContentLength(Lokhttp3/RequestBody;)Lokhttp3/RequestBody;
    .registers 4
    .param p1, "requestBody"    # Lokhttp3/RequestBody;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 35
    .local v0, "buffer":Lokio/Buffer;
    invoke-virtual {p1, v0}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 36
    new-instance v1, Lcom/buzzfeed/toolkit/util/GzipRequestInterceptor$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/buzzfeed/toolkit/util/GzipRequestInterceptor$1;-><init>(Lcom/buzzfeed/toolkit/util/GzipRequestInterceptor;Lokhttp3/RequestBody;Lokio/Buffer;)V

    return-object v1
.end method

.method private gzip(Lokhttp3/RequestBody;)Lokhttp3/RequestBody;
    .registers 3
    .param p1, "body"    # Lokhttp3/RequestBody;

    .prologue
    .line 55
    new-instance v0, Lcom/buzzfeed/toolkit/util/GzipRequestInterceptor$2;

    invoke-direct {v0, p0, p1}, Lcom/buzzfeed/toolkit/util/GzipRequestInterceptor$2;-><init>(Lcom/buzzfeed/toolkit/util/GzipRequestInterceptor;Lokhttp3/RequestBody;)V

    return-object v0
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
    .line 20
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v1

    .line 21
    .local v1, "originalRequest":Lokhttp3/Request;
    invoke-virtual {v1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v2

    if-eqz v2, :cond_12

    const-string v2, "Content-Encoding"

    invoke-virtual {v1, v2}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 22
    :cond_12
    invoke-interface {p1, v1}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v2

    .line 29
    :goto_16
    return-object v2

    .line 25
    :cond_17
    invoke-virtual {v1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v2

    const-string v3, "Content-Encoding"

    const-string v4, "gzip"

    .line 26
    invoke-virtual {v2, v3, v4}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 27
    invoke-virtual {v1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/buzzfeed/toolkit/util/GzipRequestInterceptor;->gzip(Lokhttp3/RequestBody;)Lokhttp3/RequestBody;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/buzzfeed/toolkit/util/GzipRequestInterceptor;->forceContentLength(Lokhttp3/RequestBody;)Lokhttp3/RequestBody;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 28
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 29
    .local v0, "compressedRequest":Lokhttp3/Request;
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v2

    goto :goto_16
.end method
