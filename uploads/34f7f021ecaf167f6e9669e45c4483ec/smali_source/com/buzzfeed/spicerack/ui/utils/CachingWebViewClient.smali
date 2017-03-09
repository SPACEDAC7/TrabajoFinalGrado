.class public Lcom/buzzfeed/spicerack/ui/utils/CachingWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "CachingWebViewClient.java"


# static fields
.field private static final CACHEABLE_DOMAINS:[Ljava/lang/String;

.field private static final CHARSET:Ljava/lang/String; = "UTF-8"

.field public static final MIME_TYPE_CSS:Ljava/lang/String; = "text/css"

.field public static final MIME_TYPE_FONT:Ljava/lang/String; = "application/octet-stream"

.field public static final MIME_TYPE_JS:Ljava/lang/String; = "application/javascript"

.field private static final TAG:Ljava/lang/String;

.field private static WEBVIEW_CACHE_NAME:Ljava/lang/String;

.field private static WEBVIEW_MAX_ITEMS:J

.field private static WEBVIEW_MAX_SIZE:J

.field private static WEBVIEW_MAX_TIME_TO_LIVE:J


# instance fields
.field private mCachedDomains:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mSpicyServiceHelper:Lcom/buzzfeed/toolkit/networking/helpers/SpicyServiceHelper;

.field private mStreamCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/ByteArrayInputStream;",
            ">;"
        }
    .end annotation
.end field

.field private mUseCache:Z

.field private mWebViewCache:Lcom/buzzfeed/spicerack/ui/utils/StringCache;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 27
    const-string/jumbo v0, "webViewCache"

    sput-object v0, Lcom/buzzfeed/spicerack/ui/utils/CachingWebViewClient;->WEBVIEW_CACHE_NAME:Ljava/lang/String;

    .line 28
    const-wide/16 v0, 0x64

    sput-wide v0, Lcom/buzzfeed/spicerack/ui/utils/CachingWebViewClient;->WEBVIEW_MAX_ITEMS:J

    .line 29
    const-wide/32 v0, 0x1e8480

    sput-wide v0, Lcom/buzzfeed/spicerack/ui/utils/CachingWebViewClient;->WEBVIEW_MAX_SIZE:J

    .line 30
    const-wide/32 v0, 0x44aa200

    sput-wide v0, Lcom/buzzfeed/spicerack/ui/utils/CachingWebViewClient;->WEBVIEW_MAX_TIME_TO_LIVE:J

    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "buzzfeed.com"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "buzzfed.com"

    aput-object v2, v0, v1

    sput-object v0, Lcom/buzzfeed/spicerack/ui/utils/CachingWebViewClient;->CACHEABLE_DOMAINS:[Ljava/lang/String;

    .line 36
    const-class v0, Lcom/buzzfeed/spicerack/ui/utils/CachingWebViewClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/spicerack/ui/utils/CachingWebViewClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/buzzfeed/spicerack/ui/utils/CachingWebViewClient;->mWebViewCache:Lcom/buzzfeed/spicerack/ui/utils/StringCache;

    .line 40
    iput-object v0, p0, Lcom/buzzfeed/spicerack/ui/utils/CachingWebViewClient;->mStreamCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 41
    iput-object v0, p0, Lcom/buzzfeed/spicerack/ui/utils/CachingWebViewClient;->mCachedDomains:[Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/buzzfeed/spicerack/ui/utils/CachingWebViewClient;->mUseCache:Z

    .line 46
    iput-object p1, p0, Lcom/buzzfeed/spicerack/ui/utils/CachingWebViewClient;->mContext:Landroid/content/Context;

    .line 47
    sget-object v0, Lcom/buzzfeed/spicerack/ui/utils/CachingWebViewClient;->WEBVIEW_CACHE_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->getInstance(Ljava/lang/String;)Lcom/buzzfeed/spicerack/ui/utils/StringCache;

    move-result-object v0

    sget-wide v2, Lcom/buzzfeed/spicerack/ui/utils/CachingWebViewClient;->WEBVIEW_MAX_ITEMS:J

    .line 48
    invoke-virtual {v0, v2, v3}, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->setMaxItems(J)Lcom/buzzfeed/spicerack/ui/utils/StringCache;

    move-result-object v0

    sget-wide v2, Lcom/buzzfeed/spicerack/ui/utils/CachingWebViewClient;->WEBVIEW_MAX_SIZE:J

    .line 49
    invoke-virtual {v0, v2, v3}, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->setMaxSize(J)Lcom/buzzfeed/spicerack/ui/utils/StringCache;

    move-result-object v0

    sget-wide v2, Lcom/buzzfeed/spicerack/ui/utils/CachingWebViewClient;->WEBVIEW_MAX_TIME_TO_LIVE:J

    .line 50
    invoke-virtual {v0, v2, v3}, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->setMaxTimeToLive(J)Lcom/buzzfeed/spicerack/ui/utils/StringCache;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/spicerack/ui/utils/CachingWebViewClient;->mWebViewCache:Lcom/buzzfeed/spicerack/ui/utils/StringCache;

    .line 51
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/spicerack/ui/utils/CachingWebViewClient;->mStreamCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 52
    sget-object v0, Lcom/buzzfeed/spicerack/ui/utils/CachingWebViewClient;->CACHEABLE_DOMAINS:[Ljava/lang/String;

    iput-object v0, p0, Lcom/buzzfeed/spicerack/ui/utils/CachingWebViewClient;->mCachedDomains:[Ljava/lang/String;

    .line 53
    new-instance v0, Lcom/buzzfeed/toolkit/networking/helpers/SpicyServiceHelper;

    invoke-direct {v0, p1}, Lcom/buzzfeed/toolkit/networking/helpers/SpicyServiceHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/buzzfeed/spicerack/ui/utils/CachingWebViewClient;->mSpicyServiceHelper:Lcom/buzzfeed/toolkit/networking/helpers/SpicyServiceHelper;

    .line 54
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/utils/CachingWebViewClient;->mSpicyServiceHelper:Lcom/buzzfeed/toolkit/networking/helpers/SpicyServiceHelper;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/networking/helpers/SpicyServiceHelper;->gzip()V

    .line 55
    return-void
.end method

.method private getWebResourceResponseFromCache(Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 11
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 100
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/buzzfeed/spicerack/ui/utils/CachingWebViewClient;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".getWebResourceResponseFromCache"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "TAG":Ljava/lang/String;
    iget-object v6, p0, Lcom/buzzfeed/spicerack/ui/utils/CachingWebViewClient;->mWebViewCache:Lcom/buzzfeed/spicerack/ui/utils/StringCache;

    invoke-virtual {v6, p2}, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_48

    .line 103
    iget-object v6, p0, Lcom/buzzfeed/spicerack/ui/utils/CachingWebViewClient;->mStreamCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, p2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 104
    iget-object v6, p0, Lcom/buzzfeed/spicerack/ui/utils/CachingWebViewClient;->mStreamCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/ByteArrayInputStream;

    .line 105
    .local v5, "stream":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 110
    :goto_30
    new-instance v6, Landroid/webkit/WebResourceResponse;

    const-string v7, "UTF-8"

    invoke-direct {v6, p1, v7, v5}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 126
    .end local v5    # "stream":Ljava/io/ByteArrayInputStream;
    :goto_37
    return-object v6

    .line 107
    :cond_38
    iget-object v6, p0, Lcom/buzzfeed/spicerack/ui/utils/CachingWebViewClient;->mWebViewCache:Lcom/buzzfeed/spicerack/ui/utils/StringCache;

    invoke-virtual {v6, p2}, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "response":Ljava/lang/String;
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .restart local v5    # "stream":Ljava/io/ByteArrayInputStream;
    goto :goto_30

    .line 113
    .end local v3    # "response":Ljava/lang/String;
    .end local v5    # "stream":Ljava/io/ByteArrayInputStream;
    :cond_48
    iget-object v6, p0, Lcom/buzzfeed/spicerack/ui/utils/CachingWebViewClient;->mSpicyServiceHelper:Lcom/buzzfeed/toolkit/networking/helpers/SpicyServiceHelper;

    invoke-virtual {v6, p2}, Lcom/buzzfeed/toolkit/networking/helpers/SpicyServiceHelper;->getWebResourceResponseFromCache(Ljava/lang/String;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    move-result-object v1

    .line 116
    .local v1, "call":Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCall<Lokhttp3/ResponseBody;>;"
    :try_start_4e
    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;->execute()Lretrofit2/Response;

    move-result-object v4

    .line 118
    .local v4, "responseFuture":Lretrofit2/Response;, "Lretrofit2/Response<Lokhttp3/ResponseBody;>;"
    invoke-virtual {v4}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lokhttp3/ResponseBody;

    invoke-virtual {v6}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v3

    .line 119
    .restart local v3    # "response":Ljava/lang/String;
    iget-object v6, p0, Lcom/buzzfeed/spicerack/ui/utils/CachingWebViewClient;->mWebViewCache:Lcom/buzzfeed/spicerack/ui/utils/StringCache;

    invoke-virtual {v6, p2, v3}, Lcom/buzzfeed/spicerack/ui/utils/StringCache;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 121
    .restart local v5    # "stream":Ljava/io/ByteArrayInputStream;
    iget-object v6, p0, Lcom/buzzfeed/spicerack/ui/utils/CachingWebViewClient;->mStreamCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, p2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    new-instance v6, Landroid/webkit/WebResourceResponse;

    const-string v7, "UTF-8"

    invoke-direct {v6, p1, v7, v5}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_76} :catch_77
    .catch Lcom/buzzfeed/toolkit/util/HttpException; {:try_start_4e .. :try_end_76} :catch_96

    goto :goto_37

    .line 123
    .end local v3    # "response":Ljava/lang/String;
    .end local v4    # "responseFuture":Lretrofit2/Response;, "Lretrofit2/Response<Lokhttp3/ResponseBody;>;"
    .end local v5    # "stream":Ljava/io/ByteArrayInputStream;
    :catch_77
    move-exception v2

    .line 124
    .local v2, "e":Ljava/lang/Exception;
    :goto_78
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "InterruptedException: Network error fetching "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for buzz feed page"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    const/4 v6, 0x0

    goto :goto_37

    .line 123
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_96
    move-exception v2

    goto :goto_78
.end method

.method private isCachableDomain(Ljava/lang/String;)Z
    .registers 10
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 84
    const/4 v1, 0x0

    .line 85
    .local v1, "result":Z
    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, "urlDomainParts":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x3

    if-lt v4, v5, :cond_1d

    .line 87
    const/4 v4, 0x2

    aget-object v2, v3, v4

    .line 88
    .local v2, "urlDomain":Ljava/lang/String;
    iget-object v5, p0, Lcom/buzzfeed/spicerack/ui/utils/CachingWebViewClient;->mCachedDomains:[Ljava/lang/String;

    array-length v6, v5

    const/4 v4, 0x0

    :goto_12
    if-ge v4, v6, :cond_1d

    aget-object v0, v5, v4

    .line 89
    .local v0, "domain":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 90
    const/4 v1, 0x1

    .line 96
    .end local v0    # "domain":Ljava/lang/String;
    .end local v2    # "urlDomain":Ljava/lang/String;
    :cond_1d
    return v1

    .line 88
    .restart local v0    # "domain":Ljava/lang/String;
    .restart local v2    # "urlDomain":Ljava/lang/String;
    :cond_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_12
.end method


# virtual methods
.method public setCacheDisabled()V
    .registers 2

    .prologue
    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/buzzfeed/spicerack/ui/utils/CachingWebViewClient;->mUseCache:Z

    .line 136
    return-void
.end method

.method public setCacheEnabled()V
    .registers 2

    .prologue
    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/spicerack/ui/utils/CachingWebViewClient;->mUseCache:Z

    .line 132
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/buzzfeed/spicerack/ui/utils/CachingWebViewClient;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".shouldInterceptRequest"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "TAG":Ljava/lang/String;
    const/4 v1, 0x0

    .line 62
    .local v1, "webResourceResponse":Landroid/webkit/WebResourceResponse;
    iget-boolean v2, p0, Lcom/buzzfeed/spicerack/ui/utils/CachingWebViewClient;->mUseCache:Z

    if-eqz v2, :cond_6e

    invoke-direct {p0, p2}, Lcom/buzzfeed/spicerack/ui/utils/CachingWebViewClient;->isCachableDomain(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 64
    const-string v2, ".css"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 65
    const-string/jumbo v2, "text/css"

    invoke-direct {p0, v2, p2}, Lcom/buzzfeed/spicerack/ui/utils/CachingWebViewClient;->getWebResourceResponseFromCache(Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v1

    .line 75
    :cond_2f
    :goto_2f
    if-eqz v1, :cond_85

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using web cache with url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .end local v1    # "webResourceResponse":Landroid/webkit/WebResourceResponse;
    :goto_47
    return-object v1

    .line 66
    .restart local v1    # "webResourceResponse":Landroid/webkit/WebResourceResponse;
    :cond_48
    const-string v2, ".js"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 67
    const-string v2, "application/javascript"

    invoke-direct {p0, v2, p2}, Lcom/buzzfeed/spicerack/ui/utils/CachingWebViewClient;->getWebResourceResponseFromCache(Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v1

    goto :goto_2f

    .line 68
    :cond_57
    const-string v2, ".ttf"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_67

    const-string v2, ".eot"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 69
    :cond_67
    const-string v2, "application/octet-stream"

    invoke-direct {p0, v2, p2}, Lcom/buzzfeed/spicerack/ui/utils/CachingWebViewClient;->getWebResourceResponseFromCache(Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v1

    goto :goto_2f

    .line 72
    :cond_6e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not using web cache with url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f

    .line 79
    :cond_85
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v1

    goto :goto_47
.end method
