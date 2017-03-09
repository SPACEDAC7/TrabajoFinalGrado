.class Lcom/bumptech/glide/integration/volley/VolleyStreamFetcher$GlideRequest;
.super Lcom/android/volley/Request;
.source "VolleyStreamFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/integration/volley/VolleyStreamFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GlideRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/Request",
        "<[B>;"
    }
.end annotation


# instance fields
.field private final future:Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/integration/volley/VolleyRequestFuture",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final priority:Lcom/android/volley/Request$Priority;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;Lcom/android/volley/Request$Priority;)V
    .registers 5
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "priority"    # Lcom/android/volley/Request$Priority;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/integration/volley/VolleyRequestFuture",
            "<",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/android/volley/Request$Priority;",
            ")V"
        }
    .end annotation

    .prologue
    .line 109
    .local p2, "future":Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;, "Lcom/bumptech/glide/integration/volley/VolleyRequestFuture<Ljava/io/InputStream;>;"
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/bumptech/glide/integration/volley/VolleyStreamFetcher$GlideRequest;-><init>(Ljava/lang/String;Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;Lcom/android/volley/Request$Priority;Ljava/util/Map;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;Lcom/android/volley/Request$Priority;Ljava/util/Map;)V
    .registers 6
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "priority"    # Lcom/android/volley/Request$Priority;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/integration/volley/VolleyRequestFuture",
            "<",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/android/volley/Request$Priority;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p2, "future":Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;, "Lcom/bumptech/glide/integration/volley/VolleyRequestFuture<Ljava/io/InputStream;>;"
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 115
    iput-object p2, p0, Lcom/bumptech/glide/integration/volley/VolleyStreamFetcher$GlideRequest;->future:Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;

    .line 116
    iput-object p3, p0, Lcom/bumptech/glide/integration/volley/VolleyStreamFetcher$GlideRequest;->priority:Lcom/android/volley/Request$Priority;

    .line 117
    iput-object p4, p0, Lcom/bumptech/glide/integration/volley/VolleyStreamFetcher$GlideRequest;->headers:Ljava/util/Map;

    .line 118
    return-void
.end method


# virtual methods
.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 103
    check-cast p1, [B

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/integration/volley/VolleyStreamFetcher$GlideRequest;->deliverResponse([B)V

    return-void
.end method

.method protected deliverResponse([B)V
    .registers 4
    .param p1, "response"    # [B

    .prologue
    .line 137
    iget-object v0, p0, Lcom/bumptech/glide/integration/volley/VolleyStreamFetcher$GlideRequest;->future:Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;->onResponse(Ljava/lang/Object;)V

    .line 138
    return-void
.end method

.method public getHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/bumptech/glide/integration/volley/VolleyStreamFetcher$GlideRequest;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getPriority()Lcom/android/volley/Request$Priority;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/bumptech/glide/integration/volley/VolleyStreamFetcher$GlideRequest;->priority:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .registers 4
    .param p1, "response"    # Lcom/android/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->data:[B

    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v0

    return-object v0
.end method
