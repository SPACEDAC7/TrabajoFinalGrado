.class Lcom/buzzfeed/toolkit/util/GzipRequestInterceptor$1;
.super Lokhttp3/RequestBody;
.source "GzipRequestInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/toolkit/util/GzipRequestInterceptor;->forceContentLength(Lokhttp3/RequestBody;)Lokhttp3/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/toolkit/util/GzipRequestInterceptor;

.field final synthetic val$buffer:Lokio/Buffer;

.field final synthetic val$requestBody:Lokhttp3/RequestBody;


# direct methods
.method constructor <init>(Lcom/buzzfeed/toolkit/util/GzipRequestInterceptor;Lokhttp3/RequestBody;Lokio/Buffer;)V
    .registers 4
    .param p1, "this$0"    # Lcom/buzzfeed/toolkit/util/GzipRequestInterceptor;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/buzzfeed/toolkit/util/GzipRequestInterceptor$1;->this$0:Lcom/buzzfeed/toolkit/util/GzipRequestInterceptor;

    iput-object p2, p0, Lcom/buzzfeed/toolkit/util/GzipRequestInterceptor$1;->val$requestBody:Lokhttp3/RequestBody;

    iput-object p3, p0, Lcom/buzzfeed/toolkit/util/GzipRequestInterceptor$1;->val$buffer:Lokio/Buffer;

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .registers 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/GzipRequestInterceptor$1;->val$buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/GzipRequestInterceptor$1;->val$requestBody:Lokhttp3/RequestBody;

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .registers 3
    .param p1, "sink"    # Lokio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/GzipRequestInterceptor$1;->val$buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->snapshot()Lokio/ByteString;

    move-result-object v0

    invoke-interface {p1, v0}, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    .line 50
    return-void
.end method
