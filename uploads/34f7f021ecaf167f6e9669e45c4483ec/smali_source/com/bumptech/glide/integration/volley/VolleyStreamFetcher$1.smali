.class final Lcom/bumptech/glide/integration/volley/VolleyStreamFetcher$1;
.super Ljava/lang/Object;
.source "VolleyStreamFetcher.java"

# interfaces
.implements Lcom/bumptech/glide/integration/volley/VolleyRequestFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/integration/volley/VolleyStreamFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;Lcom/android/volley/Request$Priority;Ljava/util/Map;)Lcom/android/volley/Request;
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
            ">;)",
            "Lcom/android/volley/Request",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, "future":Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;, "Lcom/bumptech/glide/integration/volley/VolleyRequestFuture<Ljava/io/InputStream;>;"
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/bumptech/glide/integration/volley/VolleyStreamFetcher$GlideRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/bumptech/glide/integration/volley/VolleyStreamFetcher$GlideRequest;-><init>(Ljava/lang/String;Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;Lcom/android/volley/Request$Priority;Ljava/util/Map;)V

    return-object v0
.end method
