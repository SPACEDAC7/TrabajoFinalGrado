.class public Lcom/buzzfeed/android/data/loader/LocalWeaverLoader;
.super Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;
.source "LocalWeaverLoader.java"


# static fields
.field private static final LOCAL_WEAVER_ASSET:Ljava/lang/String; = "local_weaver.json"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAppContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-class v0, Lcom/buzzfeed/android/data/loader/LocalWeaverLoader;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/data/loader/LocalWeaverLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const/4 v2, 0x0

    invoke-static {}, Lcom/buzzfeed/toolkit/networking/NetworkService;->getWeaverService()Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper;

    move-result-object v3

    const-string v4, "local_weaver.json"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;-><init>(Landroid/content/Context;Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper;Ljava/lang/String;Z)V

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/data/loader/LocalWeaverLoader;->mAppContext:Landroid/content/Context;

    .line 31
    return-void
.end method

.method private loadFromAssets()Ljava/lang/String;
    .registers 4

    .prologue
    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/buzzfeed/android/data/loader/LocalWeaverLoader;->mAppContext:Landroid/content/Context;

    const-string v2, "local_weaver.json"

    invoke-static {v1, v2}, Lcom/buzzfeed/toolkit/util/EZUtil;->readStringFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 58
    :goto_8
    return-object v1

    .line 54
    :catch_9
    move-exception v0

    .line 55
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/buzzfeed/android/data/loader/LocalWeaverLoader;->TAG:Ljava/lang/String;

    const-string v2, "Unable to load local Weaver asset: local_weaver.json"

    invoke-static {v1, v2, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    const/4 v1, 0x0

    goto :goto_8
.end method


# virtual methods
.method public hasMorePages()Z
    .registers 2

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public load(ZILcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;)V
    .registers 9
    .param p1, "refresh"    # Z
    .param p2, "page"    # I
    .param p3, "callback"    # Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/buzzfeed/android/data/loader/LocalWeaverLoader;->loadFromAssets()Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "response":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 37
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "Unable to perform load. Empty response."

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v3}, Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;->onError(Ljava/lang/Exception;)V

    .line 49
    :goto_14
    return-void

    .line 42
    :cond_15
    :try_start_15
    invoke-static {v1}, Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;->fromJson(Ljava/lang/String;)Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;

    move-result-object v2

    .line 43
    .local v2, "weaverResponse":Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;
    invoke-virtual {p0, v2}, Lcom/buzzfeed/android/data/loader/LocalWeaverLoader;->parseModules(Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;)Lcom/buzzfeed/toolkit/content/FlowList;

    move-result-object v3

    iput-object v3, p0, Lcom/buzzfeed/android/data/loader/LocalWeaverLoader;->mLocalFlowList:Lcom/buzzfeed/toolkit/content/FlowList;

    .line 44
    invoke-interface {p3}, Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;->onLoadComplete()V
    :try_end_22
    .catch Lcom/google/gson/JsonParseException; {:try_start_15 .. :try_end_22} :catch_23

    goto :goto_14

    .line 45
    .end local v2    # "weaverResponse":Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;
    :catch_23
    move-exception v0

    .line 46
    .local v0, "e":Lcom/google/gson/JsonParseException;
    sget-object v3, Lcom/buzzfeed/android/data/loader/LocalWeaverLoader;->TAG:Ljava/lang/String;

    const-string v4, "Unable to parse local response."

    invoke-static {v3, v4, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    invoke-interface {p3, v0}, Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;->onError(Ljava/lang/Exception;)V

    goto :goto_14
.end method

.method public shouldShowAds()Z
    .registers 2

    .prologue
    .line 68
    const/4 v0, 0x1

    return v0
.end method
