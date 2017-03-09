.class public Lcom/bumptech/glide/integration/volley/VolleyUrlLoader;
.super Ljava/lang/Object;
.source "VolleyUrlLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/integration/volley/VolleyUrlLoader$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoader",
        "<",
        "Lcom/bumptech/glide/load/model/GlideUrl;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final requestFactory:Lcom/bumptech/glide/integration/volley/VolleyRequestFactory;

.field private final requestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method public constructor <init>(Lcom/android/volley/RequestQueue;)V
    .registers 3
    .param p1, "requestQueue"    # Lcom/android/volley/RequestQueue;

    .prologue
    .line 77
    sget-object v0, Lcom/bumptech/glide/integration/volley/VolleyStreamFetcher;->DEFAULT_REQUEST_FACTORY:Lcom/bumptech/glide/integration/volley/VolleyRequestFactory;

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/integration/volley/VolleyUrlLoader;-><init>(Lcom/android/volley/RequestQueue;Lcom/bumptech/glide/integration/volley/VolleyRequestFactory;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lcom/android/volley/RequestQueue;Lcom/bumptech/glide/integration/volley/VolleyRequestFactory;)V
    .registers 3
    .param p1, "requestQueue"    # Lcom/android/volley/RequestQueue;
    .param p2, "requestFactory"    # Lcom/bumptech/glide/integration/volley/VolleyRequestFactory;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/bumptech/glide/integration/volley/VolleyUrlLoader;->requestQueue:Lcom/android/volley/RequestQueue;

    .line 82
    iput-object p2, p0, Lcom/bumptech/glide/integration/volley/VolleyUrlLoader;->requestFactory:Lcom/bumptech/glide/integration/volley/VolleyRequestFactory;

    .line 83
    return-void
.end method


# virtual methods
.method public getResourceFetcher(Lcom/bumptech/glide/load/model/GlideUrl;II)Lcom/bumptech/glide/load/data/DataFetcher;
    .registers 8
    .param p1, "url"    # Lcom/bumptech/glide/load/model/GlideUrl;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            "II)",
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    new-instance v0, Lcom/bumptech/glide/integration/volley/VolleyStreamFetcher;

    iget-object v1, p0, Lcom/bumptech/glide/integration/volley/VolleyUrlLoader;->requestQueue:Lcom/android/volley/RequestQueue;

    new-instance v2, Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;

    invoke-direct {v2}, Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;-><init>()V

    iget-object v3, p0, Lcom/bumptech/glide/integration/volley/VolleyUrlLoader;->requestFactory:Lcom/bumptech/glide/integration/volley/VolleyRequestFactory;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/bumptech/glide/integration/volley/VolleyStreamFetcher;-><init>(Lcom/android/volley/RequestQueue;Lcom/bumptech/glide/load/model/GlideUrl;Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;Lcom/bumptech/glide/integration/volley/VolleyRequestFactory;)V

    return-object v0
.end method

.method public bridge synthetic getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;
    .registers 5
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .prologue
    .line 18
    check-cast p1, Lcom/bumptech/glide/load/model/GlideUrl;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/integration/volley/VolleyUrlLoader;->getResourceFetcher(Lcom/bumptech/glide/load/model/GlideUrl;II)Lcom/bumptech/glide/load/data/DataFetcher;

    move-result-object v0

    return-object v0
.end method
