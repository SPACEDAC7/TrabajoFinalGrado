.class public Lcom/bumptech/glide/integration/volley/VolleyStreamFetcher;
.super Ljava/lang/Object;
.source "VolleyStreamFetcher.java"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/integration/volley/VolleyStreamFetcher$2;,
        Lcom/bumptech/glide/integration/volley/VolleyStreamFetcher$GlideRequest;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataFetcher",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_REQUEST_FACTORY:Lcom/bumptech/glide/integration/volley/VolleyRequestFactory;


# instance fields
.field private final requestFactory:Lcom/bumptech/glide/integration/volley/VolleyRequestFactory;

.field private requestFuture:Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/integration/volley/VolleyRequestFuture",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final requestQueue:Lcom/android/volley/RequestQueue;

.field private final url:Lcom/bumptech/glide/load/model/GlideUrl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    new-instance v0, Lcom/bumptech/glide/integration/volley/VolleyStreamFetcher$1;

    invoke-direct {v0}, Lcom/bumptech/glide/integration/volley/VolleyStreamFetcher$1;-><init>()V

    sput-object v0, Lcom/bumptech/glide/integration/volley/VolleyStreamFetcher;->DEFAULT_REQUEST_FACTORY:Lcom/bumptech/glide/integration/volley/VolleyRequestFactory;

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/RequestQueue;Lcom/bumptech/glide/load/model/GlideUrl;)V
    .registers 4
    .param p1, "requestQueue"    # Lcom/android/volley/RequestQueue;
    .param p2, "url"    # Lcom/bumptech/glide/load/model/GlideUrl;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/integration/volley/VolleyStreamFetcher;-><init>(Lcom/android/volley/RequestQueue;Lcom/bumptech/glide/load/model/GlideUrl;Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/android/volley/RequestQueue;Lcom/bumptech/glide/load/model/GlideUrl;Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;)V
    .registers 5
    .param p1, "requestQueue"    # Lcom/android/volley/RequestQueue;
    .param p2, "url"    # Lcom/bumptech/glide/load/model/GlideUrl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/RequestQueue;",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            "Lcom/bumptech/glide/integration/volley/VolleyRequestFuture",
            "<",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p3, "requestFuture":Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;, "Lcom/bumptech/glide/integration/volley/VolleyRequestFuture<Ljava/io/InputStream;>;"
    sget-object v0, Lcom/bumptech/glide/integration/volley/VolleyStreamFetcher;->DEFAULT_REQUEST_FACTORY:Lcom/bumptech/glide/integration/volley/VolleyRequestFactory;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/bumptech/glide/integration/volley/VolleyStreamFetcher;-><init>(Lcom/android/volley/RequestQueue;Lcom/bumptech/glide/load/model/GlideUrl;Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;Lcom/bumptech/glide/integration/volley/VolleyRequestFactory;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/android/volley/RequestQueue;Lcom/bumptech/glide/load/model/GlideUrl;Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;Lcom/bumptech/glide/integration/volley/VolleyRequestFactory;)V
    .registers 6
    .param p1, "requestQueue"    # Lcom/android/volley/RequestQueue;
    .param p2, "url"    # Lcom/bumptech/glide/load/model/GlideUrl;
    .param p4, "requestFactory"    # Lcom/bumptech/glide/integration/volley/VolleyRequestFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/RequestQueue;",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            "Lcom/bumptech/glide/integration/volley/VolleyRequestFuture",
            "<",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/bumptech/glide/integration/volley/VolleyRequestFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    .local p3, "requestFuture":Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;, "Lcom/bumptech/glide/integration/volley/VolleyRequestFuture<Ljava/io/InputStream;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/bumptech/glide/integration/volley/VolleyStreamFetcher;->requestQueue:Lcom/android/volley/RequestQueue;

    .line 51
    iput-object p2, p0, Lcom/bumptech/glide/integration/volley/VolleyStreamFetcher;->url:Lcom/bumptech/glide/load/model/GlideUrl;

    .line 52
    iput-object p4, p0, Lcom/bumptech/glide/integration/volley/VolleyStreamFetcher;->requestFactory:Lcom/bumptech/glide/integration/volley/VolleyRequestFactory;

    .line 53
    iput-object p3, p0, Lcom/bumptech/glide/integration/volley/VolleyStreamFetcher;->requestFuture:Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;

    .line 54
    if-nez p3, :cond_13

    .line 55
    invoke-static {}, Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;->newFuture()Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/integration/volley/VolleyStreamFetcher;->requestFuture:Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;

    .line 57
    :cond_13
    return-void
.end method

.method private static glideToVolleyPriority(Lcom/bumptech/glide/Priority;)Lcom/android/volley/Request$Priority;
    .registers 3
    .param p0, "priority"    # Lcom/bumptech/glide/Priority;

    .prologue
    .line 90
    sget-object v0, Lcom/bumptech/glide/integration/volley/VolleyStreamFetcher$2;->$SwitchMap$com$bumptech$glide$Priority:[I

    invoke-virtual {p0}, Lcom/bumptech/glide/Priority;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_18

    .line 98
    sget-object v0, Lcom/android/volley/Request$Priority;->NORMAL:Lcom/android/volley/Request$Priority;

    :goto_d
    return-object v0

    .line 92
    :pswitch_e
    sget-object v0, Lcom/android/volley/Request$Priority;->LOW:Lcom/android/volley/Request$Priority;

    goto :goto_d

    .line 94
    :pswitch_11
    sget-object v0, Lcom/android/volley/Request$Priority;->HIGH:Lcom/android/volley/Request$Priority;

    goto :goto_d

    .line 96
    :pswitch_14
    sget-object v0, Lcom/android/volley/Request$Priority;->IMMEDIATE:Lcom/android/volley/Request$Priority;

    goto :goto_d

    .line 90
    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_e
        :pswitch_11
        :pswitch_14
    .end packed-switch
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/bumptech/glide/integration/volley/VolleyStreamFetcher;->requestFuture:Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;

    .line 84
    .local v0, "localFuture":Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;, "Lcom/bumptech/glide/integration/volley/VolleyRequestFuture<Ljava/io/InputStream;>;"
    if-eqz v0, :cond_8

    .line 85
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;->cancel(Z)Z

    .line 87
    :cond_8
    return-void
.end method

.method public cleanup()V
    .registers 1

    .prologue
    .line 74
    return-void
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/bumptech/glide/integration/volley/VolleyStreamFetcher;->url:Lcom/bumptech/glide/load/model/GlideUrl;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/model/GlideUrl;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadData(Lcom/bumptech/glide/Priority;)Ljava/io/InputStream;
    .registers 8
    .param p1, "priority"    # Lcom/bumptech/glide/Priority;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v2, p0, Lcom/bumptech/glide/integration/volley/VolleyStreamFetcher;->url:Lcom/bumptech/glide/load/model/GlideUrl;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/model/GlideUrl;->toStringUrl()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "stringUrl":Ljava/lang/String;
    iget-object v2, p0, Lcom/bumptech/glide/integration/volley/VolleyStreamFetcher;->requestFactory:Lcom/bumptech/glide/integration/volley/VolleyRequestFactory;

    iget-object v3, p0, Lcom/bumptech/glide/integration/volley/VolleyStreamFetcher;->requestFuture:Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;

    invoke-static {p1}, Lcom/bumptech/glide/integration/volley/VolleyStreamFetcher;->glideToVolleyPriority(Lcom/bumptech/glide/Priority;)Lcom/android/volley/Request$Priority;

    move-result-object v4

    iget-object v5, p0, Lcom/bumptech/glide/integration/volley/VolleyStreamFetcher;->url:Lcom/bumptech/glide/load/model/GlideUrl;

    invoke-virtual {v5}, Lcom/bumptech/glide/load/model/GlideUrl;->getHeaders()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v2, v1, v3, v4, v5}, Lcom/bumptech/glide/integration/volley/VolleyRequestFactory;->create(Ljava/lang/String;Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;Lcom/android/volley/Request$Priority;Ljava/util/Map;)Lcom/android/volley/Request;

    move-result-object v0

    .line 66
    .local v0, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<[B>;"
    iget-object v2, p0, Lcom/bumptech/glide/integration/volley/VolleyStreamFetcher;->requestFuture:Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;

    iget-object v3, p0, Lcom/bumptech/glide/integration/volley/VolleyStreamFetcher;->requestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v3, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;->setRequest(Lcom/android/volley/Request;)V

    .line 68
    iget-object v2, p0, Lcom/bumptech/glide/integration/volley/VolleyStreamFetcher;->requestFuture:Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;

    invoke-virtual {v2}, Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    return-object v2
.end method

.method public bridge synthetic loadData(Lcom/bumptech/glide/Priority;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Lcom/bumptech/glide/Priority;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/integration/volley/VolleyStreamFetcher;->loadData(Lcom/bumptech/glide/Priority;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
