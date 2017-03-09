.class public Lcom/bumptech/glide/integration/volley/VolleyUrlLoader$Factory;
.super Ljava/lang/Object;
.source "VolleyUrlLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoaderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/integration/volley/VolleyUrlLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoaderFactory",
        "<",
        "Lcom/bumptech/glide/load/model/GlideUrl;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field private static internalQueue:Lcom/android/volley/RequestQueue;


# instance fields
.field private final requestFactory:Lcom/bumptech/glide/integration/volley/VolleyRequestFactory;

.field private requestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-static {p1}, Lcom/bumptech/glide/integration/volley/VolleyUrlLoader$Factory;->getInternalQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/integration/volley/VolleyUrlLoader$Factory;-><init>(Lcom/android/volley/RequestQueue;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/android/volley/RequestQueue;)V
    .registers 3
    .param p1, "requestQueue"    # Lcom/android/volley/RequestQueue;

    .prologue
    .line 50
    sget-object v0, Lcom/bumptech/glide/integration/volley/VolleyStreamFetcher;->DEFAULT_REQUEST_FACTORY:Lcom/bumptech/glide/integration/volley/VolleyRequestFactory;

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/integration/volley/VolleyUrlLoader$Factory;-><init>(Lcom/android/volley/RequestQueue;Lcom/bumptech/glide/integration/volley/VolleyRequestFactory;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/android/volley/RequestQueue;Lcom/bumptech/glide/integration/volley/VolleyRequestFactory;)V
    .registers 3
    .param p1, "requestQueue"    # Lcom/android/volley/RequestQueue;
    .param p2, "requestFactory"    # Lcom/bumptech/glide/integration/volley/VolleyRequestFactory;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p2, p0, Lcom/bumptech/glide/integration/volley/VolleyUrlLoader$Factory;->requestFactory:Lcom/bumptech/glide/integration/volley/VolleyRequestFactory;

    .line 59
    iput-object p1, p0, Lcom/bumptech/glide/integration/volley/VolleyUrlLoader$Factory;->requestQueue:Lcom/android/volley/RequestQueue;

    .line 60
    return-void
.end method

.method private static getInternalQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    sget-object v0, Lcom/bumptech/glide/integration/volley/VolleyUrlLoader$Factory;->internalQueue:Lcom/android/volley/RequestQueue;

    if-nez v0, :cond_12

    .line 30
    const-class v1, Lcom/bumptech/glide/integration/volley/VolleyUrlLoader$Factory;

    monitor-enter v1

    .line 31
    :try_start_7
    sget-object v0, Lcom/bumptech/glide/integration/volley/VolleyUrlLoader$Factory;->internalQueue:Lcom/android/volley/RequestQueue;

    if-nez v0, :cond_11

    .line 32
    invoke-static {p0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/integration/volley/VolleyUrlLoader$Factory;->internalQueue:Lcom/android/volley/RequestQueue;

    .line 34
    :cond_11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_15

    .line 36
    :cond_12
    sget-object v0, Lcom/bumptech/glide/integration/volley/VolleyUrlLoader$Factory;->internalQueue:Lcom/android/volley/RequestQueue;

    return-object v0

    .line 34
    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method


# virtual methods
.method public build(Landroid/content/Context;Lcom/bumptech/glide/load/model/GenericLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "factories"    # Lcom/bumptech/glide/load/model/GenericLoaderFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/model/GenericLoaderFactory;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Lcom/bumptech/glide/integration/volley/VolleyUrlLoader;

    iget-object v1, p0, Lcom/bumptech/glide/integration/volley/VolleyUrlLoader$Factory;->requestQueue:Lcom/android/volley/RequestQueue;

    iget-object v2, p0, Lcom/bumptech/glide/integration/volley/VolleyUrlLoader$Factory;->requestFactory:Lcom/bumptech/glide/integration/volley/VolleyRequestFactory;

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/integration/volley/VolleyUrlLoader;-><init>(Lcom/android/volley/RequestQueue;Lcom/bumptech/glide/integration/volley/VolleyRequestFactory;)V

    return-object v0
.end method

.method public teardown()V
    .registers 1

    .prologue
    .line 70
    return-void
.end method
