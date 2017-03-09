.class public Lcom/android/volley/toolbox/Volley;
.super Ljava/lang/Object;
.source "Volley.java"


# static fields
.field private static final DEFAULT_CACHE_DIR:Ljava/lang/String; = "volley"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    return-object v0
.end method

.method public static newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stack"    # Lcom/android/volley/toolbox/HttpStack;

    .prologue
    .line 43
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    const-string/jumbo v7, "volley"

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 45
    .local v0, "cacheDir":Ljava/io/File;
    const-string/jumbo v5, "volley/0"

    .line 47
    .local v5, "userAgent":Ljava/lang/String;
    :try_start_f
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 49
    .local v1, "info":Landroid/content/pm/PackageInfo;
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget v7, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0xc

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_42
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_42} :catch_6d

    move-result-object v5

    .line 53
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "packageName":Ljava/lang/String;
    :goto_43
    if-nez p1, :cond_50

    .line 54
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x9

    if-lt v6, v7, :cond_63

    .line 55
    new-instance p1, Lcom/android/volley/toolbox/HurlStack;

    .end local p1    # "stack":Lcom/android/volley/toolbox/HttpStack;
    invoke-direct {p1}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    .line 63
    .restart local p1    # "stack":Lcom/android/volley/toolbox/HttpStack;
    :cond_50
    :goto_50
    new-instance v2, Lcom/android/volley/toolbox/BasicNetwork;

    invoke-direct {v2, p1}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/HttpStack;)V

    .line 65
    .local v2, "network":Lcom/android/volley/Network;
    new-instance v4, Lcom/android/volley/RequestQueue;

    new-instance v6, Lcom/android/volley/toolbox/DiskBasedCache;

    invoke-direct {v6, v0}, Lcom/android/volley/toolbox/DiskBasedCache;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6, v2}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;)V

    .line 66
    .local v4, "queue":Lcom/android/volley/RequestQueue;
    invoke-virtual {v4}, Lcom/android/volley/RequestQueue;->start()V

    .line 68
    return-object v4

    .line 59
    .end local v2    # "network":Lcom/android/volley/Network;
    .end local v4    # "queue":Lcom/android/volley/RequestQueue;
    :cond_63
    new-instance p1, Lcom/android/volley/toolbox/HttpClientStack;

    .end local p1    # "stack":Lcom/android/volley/toolbox/HttpStack;
    invoke-static {v5}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v6

    invoke-direct {p1, v6}, Lcom/android/volley/toolbox/HttpClientStack;-><init>(Lorg/apache/http/client/HttpClient;)V

    .restart local p1    # "stack":Lcom/android/volley/toolbox/HttpStack;
    goto :goto_50

    .line 50
    :catch_6d
    move-exception v6

    goto :goto_43
.end method
