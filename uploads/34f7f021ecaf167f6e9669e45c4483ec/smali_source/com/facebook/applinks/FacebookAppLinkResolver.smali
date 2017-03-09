.class public Lcom/facebook/applinks/FacebookAppLinkResolver;
.super Ljava/lang/Object;
.source "FacebookAppLinkResolver.java"

# interfaces
.implements Lbolts/AppLinkResolver;


# static fields
.field private static final APP_LINK_ANDROID_TARGET_KEY:Ljava/lang/String; = "android"

.field private static final APP_LINK_KEY:Ljava/lang/String; = "app_links"

.field private static final APP_LINK_TARGET_APP_NAME_KEY:Ljava/lang/String; = "app_name"

.field private static final APP_LINK_TARGET_CLASS_KEY:Ljava/lang/String; = "class"

.field private static final APP_LINK_TARGET_PACKAGE_KEY:Ljava/lang/String; = "package"

.field private static final APP_LINK_TARGET_SHOULD_FALLBACK_KEY:Ljava/lang/String; = "should_fallback"

.field private static final APP_LINK_TARGET_URL_KEY:Ljava/lang/String; = "url"

.field private static final APP_LINK_WEB_TARGET_KEY:Ljava/lang/String; = "web"


# instance fields
.field private final cachedAppLinks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Lbolts/AppLink;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/applinks/FacebookAppLinkResolver;->cachedAppLinks:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lorg/json/JSONObject;)Lbolts/AppLink$Target;
    .registers 2
    .param p0, "x0"    # Lorg/json/JSONObject;

    .prologue
    .line 45
    invoke-static {p0}, Lcom/facebook/applinks/FacebookAppLinkResolver;->getAndroidTargetFromJson(Lorg/json/JSONObject;)Lbolts/AppLink$Target;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/net/Uri;Lorg/json/JSONObject;)Landroid/net/Uri;
    .registers 3
    .param p0, "x0"    # Landroid/net/Uri;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 45
    invoke-static {p0, p1}, Lcom/facebook/applinks/FacebookAppLinkResolver;->getWebFallbackUriFromJson(Landroid/net/Uri;Lorg/json/JSONObject;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/applinks/FacebookAppLinkResolver;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/applinks/FacebookAppLinkResolver;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/applinks/FacebookAppLinkResolver;->cachedAppLinks:Ljava/util/HashMap;

    return-object v0
.end method

.method private static getAndroidTargetFromJson(Lorg/json/JSONObject;)Lbolts/AppLink$Target;
    .registers 8
    .param p0, "targetJson"    # Lorg/json/JSONObject;

    .prologue
    const/4 v5, 0x0

    .line 196
    const-string v6, "package"

    invoke-static {p0, v6, v5}, Lcom/facebook/applinks/FacebookAppLinkResolver;->tryGetStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, "packageName":Ljava/lang/String;
    if-nez v2, :cond_a

    .line 209
    :goto_9
    return-object v5

    .line 201
    :cond_a
    const-string v6, "class"

    invoke-static {p0, v6, v5}, Lcom/facebook/applinks/FacebookAppLinkResolver;->tryGetStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "className":Ljava/lang/String;
    const-string v6, "app_name"

    invoke-static {p0, v6, v5}, Lcom/facebook/applinks/FacebookAppLinkResolver;->tryGetStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "appName":Ljava/lang/String;
    const-string/jumbo v6, "url"

    invoke-static {p0, v6, v5}, Lcom/facebook/applinks/FacebookAppLinkResolver;->tryGetStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 204
    .local v4, "targetUrlString":Ljava/lang/String;
    const/4 v3, 0x0

    .line 205
    .local v3, "targetUri":Landroid/net/Uri;
    if-eqz v4, :cond_24

    .line 206
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 209
    :cond_24
    new-instance v5, Lbolts/AppLink$Target;

    invoke-direct {v5, v2, v1, v3, v0}, Lbolts/AppLink$Target;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_9
.end method

.method private static getWebFallbackUriFromJson(Landroid/net/Uri;Lorg/json/JSONObject;)Landroid/net/Uri;
    .registers 9
    .param p0, "sourceUrl"    # Landroid/net/Uri;
    .param p1, "urlData"    # Lorg/json/JSONObject;

    .prologue
    const/4 v4, 0x0

    .line 216
    :try_start_1
    const-string/jumbo v5, "web"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 217
    .local v2, "webTarget":Lorg/json/JSONObject;
    const-string v5, "should_fallback"

    const/4 v6, 0x1

    invoke-static {v2, v5, v6}, Lcom/facebook/applinks/FacebookAppLinkResolver;->tryGetBooleanFromJson(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    .line 219
    .local v1, "shouldFallback":Z
    if-nez v1, :cond_12

    .line 235
    .end local v1    # "shouldFallback":Z
    .end local v2    # "webTarget":Lorg/json/JSONObject;
    :cond_11
    :goto_11
    return-object v4

    .line 224
    .restart local v1    # "shouldFallback":Z
    .restart local v2    # "webTarget":Lorg/json/JSONObject;
    :cond_12
    const-string/jumbo v5, "url"

    const/4 v6, 0x0

    invoke-static {v2, v5, v6}, Lcom/facebook/applinks/FacebookAppLinkResolver;->tryGetStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 226
    .local v3, "webTargetUrlString":Ljava/lang/String;
    const/4 v4, 0x0

    .line 227
    .local v4, "webUri":Landroid/net/Uri;
    if-eqz v3, :cond_21

    .line 228
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_20} :catch_25

    move-result-object v4

    .line 232
    :cond_21
    if-nez v4, :cond_11

    move-object v4, p0

    goto :goto_11

    .line 233
    .end local v1    # "shouldFallback":Z
    .end local v2    # "webTarget":Lorg/json/JSONObject;
    .end local v3    # "webTargetUrlString":Ljava/lang/String;
    .end local v4    # "webUri":Landroid/net/Uri;
    :catch_25
    move-exception v0

    .local v0, "e":Lorg/json/JSONException;
    move-object v4, p0

    .line 235
    goto :goto_11
.end method

.method private static tryGetBooleanFromJson(Lorg/json/JSONObject;Ljava/lang/String;Z)Z
    .registers 4
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 255
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3} :catch_5

    move-result p2

    .line 257
    .end local p2    # "defaultValue":Z
    :goto_4
    return p2

    .line 256
    .restart local p2    # "defaultValue":Z
    :catch_5
    move-exception v0

    .line 257
    .local v0, "e":Lorg/json/JSONException;
    goto :goto_4
.end method

.method private static tryGetStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 244
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object p2

    .line 246
    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_4
    return-object p2

    .line 245
    .restart local p2    # "defaultValue":Ljava/lang/String;
    :catch_5
    move-exception v0

    .line 246
    .local v0, "e":Lorg/json/JSONException;
    goto :goto_4
.end method


# virtual methods
.method public getAppLinkFromUrlInBackground(Landroid/net/Uri;)Lbolts/Task;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lbolts/Task",
            "<",
            "Lbolts/AppLink;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v1, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {p0, v1}, Lcom/facebook/applinks/FacebookAppLinkResolver;->getAppLinkFromUrlsInBackground(Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    .line 72
    .local v0, "resolveTask":Lbolts/Task;, "Lbolts/Task<Ljava/util/Map<Landroid/net/Uri;Lbolts/AppLink;>;>;"
    new-instance v2, Lcom/facebook/applinks/FacebookAppLinkResolver$1;

    invoke-direct {v2, p0, p1}, Lcom/facebook/applinks/FacebookAppLinkResolver$1;-><init>(Lcom/facebook/applinks/FacebookAppLinkResolver;Landroid/net/Uri;)V

    invoke-virtual {v0, v2}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    return-object v2
.end method

.method public getAppLinkFromUrlsInBackground(Ljava/util/List;)Lbolts/Task;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lbolts/AppLink;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 91
    .local v8, "appLinkResults":Ljava/util/Map;, "Ljava/util/Map<Landroid/net/Uri;Lbolts/AppLink;>;"
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 92
    .local v13, "urisToRequest":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .local v9, "graphRequestFields":Ljava/lang/StringBuilder;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_13
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/Uri;

    .line 95
    .local v12, "uri":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 96
    .local v7, "appLink":Lbolts/AppLink;
    iget-object v3, p0, Lcom/facebook/applinks/FacebookAppLinkResolver;->cachedAppLinks:Ljava/util/HashMap;

    monitor-enter v3

    .line 97
    :try_start_23
    iget-object v2, p0, Lcom/facebook/applinks/FacebookAppLinkResolver;->cachedAppLinks:Ljava/util/HashMap;

    invoke-virtual {v2, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lbolts/AppLink;

    move-object v7, v0

    .line 98
    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_23 .. :try_end_2e} :catchall_34

    .line 100
    if-eqz v7, :cond_37

    .line 101
    invoke-interface {v8, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 98
    :catchall_34
    move-exception v2

    :try_start_35
    monitor-exit v3
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v2

    .line 103
    :cond_37
    invoke-virtual {v13}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_42

    .line 104
    const/16 v2, 0x2c

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    :cond_42
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v13, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 111
    .end local v7    # "appLink":Lbolts/AppLink;
    .end local v12    # "uri":Landroid/net/Uri;
    :cond_4d
    invoke-virtual {v13}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 112
    invoke-static {v8}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v2

    .line 192
    :goto_57
    return-object v2

    .line 115
    :cond_58
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    move-result-object v11

    .line 117
    .local v11, "taskCompletionSource":Lbolts/Task$TaskCompletionSource;, "Lbolts/Task<Ljava/util/Map<Landroid/net/Uri;Lbolts/AppLink;>;>.TaskCompletionSource;"
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 119
    .local v4, "appLinkRequestParameters":Landroid/os/Bundle;
    const-string v2, "ids"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v2, "fields"

    const-string v3, "%s.fields(%s,%s)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v14, "app_links"

    aput-object v14, v5, v6

    const/4 v6, 0x1

    const-string v14, "android"

    aput-object v14, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v14, "web"

    aput-object v14, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance v1, Lcom/facebook/GraphRequest;

    const/4 v2, 0x0

    const-string v3, ""

    const/4 v5, 0x0

    new-instance v6, Lcom/facebook/applinks/FacebookAppLinkResolver$2;

    invoke-direct {v6, p0, v11, v8, v13}, Lcom/facebook/applinks/FacebookAppLinkResolver$2;-><init>(Lcom/facebook/applinks/FacebookAppLinkResolver;Lbolts/Task$TaskCompletionSource;Ljava/util/Map;Ljava/util/HashSet;)V

    invoke-direct/range {v1 .. v6}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 190
    .local v1, "appLinkRequest":Lcom/facebook/GraphRequest;
    invoke-virtual {v1}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    .line 192
    invoke-virtual {v11}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v2

    goto :goto_57
.end method
