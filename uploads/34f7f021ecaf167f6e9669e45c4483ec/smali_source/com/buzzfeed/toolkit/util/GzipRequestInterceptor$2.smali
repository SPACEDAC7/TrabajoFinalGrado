.class Lcom/buzzfeed/toolkit/util/GzipRequestInterceptor$2;
.super Lokhttp3/RequestBody;
.source "GzipRequestInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/toolkit/util/GzipRequestInterceptor;->gzip(Lokhttp3/RequestBody;)Lokhttp3/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/toolkit/util/GzipRequestInterceptor;

.field final synthetic val$body:Lokhttp3/RequestBody;


# direct methods
.method constructor <init>(Lcom/buzzfeed/toolkit/util/GzipRequestInterceptor;Lokhttp3/RequestBody;)V
    .registers 3
    .param p1, "this$0"    # Lcom/buzzfeed/toolkit/util/GzipRequestInterceptor;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/buzzfeed/toolkit/util/GzipRequestInterceptor$2;->this$0:Lcom/buzzfeed/toolkit/util/GzipRequestInterceptor;

    iput-object p2, p0, Lcom/buzzfeed/toolkit/util/GzipRequestInterceptor$2;->val$body:Lokhttp3/RequestBody;

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .registers 3

    .prologue
    .line 61
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/GzipRequestInterceptor$2;->val$body:Lokhttp3/RequestBody;

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .registers 4
    .param p1, "sink"    # Lokio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    new-instance v1, Lokio/GzipSink;

    invoke-direct {v1, p1}, Lokio/GzipSink;-><init>(Lokio/Sink;)V

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0

    .line 66
    .local v0, "gzipSink":Lokio/BufferedSink;
    iget-object v1, p0, Lcom/buzzfeed/toolkit/util/GzipRequestInterceptor$2;->val$body:Lokhttp3/RequestBody;

    invoke-virtual {v1, v0}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 67
    invoke-interface {v0}, Lokio/BufferedSink;->close()V

    .line 68
    return-void
.end method
