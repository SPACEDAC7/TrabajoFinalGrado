.class public Lcom/buzzfeed/android/util/BuzzApiClient;
.super Ljava/lang/Object;
.source "BuzzApiClient.java"


# static fields
.field public static final KEY_BUZZ_ID:Ljava/lang/String; = "buzz_id"

.field public static final KEY_DATE_ADDED:Ljava/lang/String; = "date_added"

.field public static final KEY_LOGIN:Ljava/lang/String; = "login"

.field public static final KEY_SESSION_KEY:Ljava/lang/String; = "session_key"

.field public static final LOGIN_BUZZFEED_ACCOUNT:Ljava/lang/String; = "buzzfeedAccount"

.field public static final LOGIN_FACEBOOK_ACCOUNT:Ljava/lang/String; = "facebookAccount"

.field public static final LOGIN_GOOGLE_ACCOUNT:Ljava/lang/String; = "googleAccount"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const-class v0, Lcom/buzzfeed/android/util/BuzzApiClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/util/BuzzApiClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBookmarks(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)V
    .registers 16
    .param p1, "sessionKey"    # Ljava/lang/String;
    .param p2, "syncId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/content/Buzz;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback",
            "<",
            "Lokhttp3/ResponseBody;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 352
    .local p0, "buzzes":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/toolkit/content/Buzz;>;"
    .local p3, "callback":Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback<Lokhttp3/ResponseBody;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/buzzfeed/android/util/BuzzApiClient;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".addBookmarks"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, "TAG":Ljava/lang/String;
    :try_start_15
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 355
    .local v3, "bookmarks":Lorg/json/JSONArray;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/toolkit/content/Buzz;

    .line 356
    .local v1, "b":Lcom/buzzfeed/toolkit/content/Buzz;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 357
    .local v2, "bookmark":Lorg/json/JSONObject;
    const-string v7, "buzz_id"

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/content/Buzz;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 358
    const-string v7, "date_added"

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/content/Buzz;->getBookmarked()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-virtual {v2, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 359
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_47} :catch_48

    goto :goto_1e

    .line 371
    .end local v1    # "b":Lcom/buzzfeed/toolkit/content/Buzz;
    .end local v2    # "bookmark":Lorg/json/JSONObject;
    .end local v3    # "bookmarks":Lorg/json/JSONArray;
    :catch_48
    move-exception v4

    .line 372
    .local v4, "e":Ljava/lang/Exception;
    const-string v6, "Error adding bookmarks"

    invoke-static {v0, v6, v4}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 374
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_4e
    return-void

    .line 362
    .restart local v3    # "bookmarks":Lorg/json/JSONArray;
    :cond_4f
    :try_start_4f
    new-instance v6, Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper$ParamBuilder;

    invoke-direct {v6}, Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper$ParamBuilder;-><init>()V

    .line 363
    invoke-virtual {v6, p1}, Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper$ParamBuilder;->sessionKey(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper$ParamBuilder;

    move-result-object v6

    .line 364
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper$ParamBuilder;->bookmarks(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper$ParamBuilder;

    move-result-object v6

    const/4 v7, 0x1

    .line 365
    invoke-virtual {v6, v7}, Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper$ParamBuilder;->noCache(Z)Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper$ParamBuilder;

    move-result-object v6

    .line 366
    invoke-virtual {v6, p2}, Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper$ParamBuilder;->syncId(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper$ParamBuilder;

    move-result-object v6

    .line 367
    invoke-virtual {v6}, Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper$ParamBuilder;->build()Ljava/util/Map;

    move-result-object v5

    .line 369
    .local v5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p3, v5}, Lcom/buzzfeed/android/util/BuzzApiClient;->syncBookmarkData(Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;Ljava/util/Map;)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_70} :catch_48

    goto :goto_4e
.end method

.method public static deleteBookmark(Lcom/buzzfeed/toolkit/content/Buzz;Ljava/lang/String;Ljava/lang/String;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)V
    .registers 10
    .param p0, "buzz"    # Lcom/buzzfeed/toolkit/content/Buzz;
    .param p1, "sessionKey"    # Ljava/lang/String;
    .param p2, "syncId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/buzzfeed/toolkit/content/Buzz;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback",
            "<",
            "Lokhttp3/ResponseBody;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 385
    .local p3, "callback":Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback<Lokhttp3/ResponseBody;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/buzzfeed/android/util/BuzzApiClient;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".deleteBookmark"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, "TAG":Ljava/lang/String;
    if-eqz p2, :cond_40

    move-object v3, p2

    .line 389
    .local v3, "sId":Ljava/lang/String;
    :goto_18
    :try_start_18
    new-instance v4, Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper$ParamBuilder;

    invoke-direct {v4}, Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper$ParamBuilder;-><init>()V

    .line 390
    invoke-virtual {v4, p1}, Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper$ParamBuilder;->sessionKey(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper$ParamBuilder;

    move-result-object v4

    const-string v5, "delete"

    .line 391
    invoke-virtual {v4, v5}, Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper$ParamBuilder;->method(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper$ParamBuilder;

    move-result-object v4

    .line 392
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/Buzz;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper$ParamBuilder;->buzzId(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper$ParamBuilder;

    move-result-object v4

    const/4 v5, 0x1

    .line 393
    invoke-virtual {v4, v5}, Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper$ParamBuilder;->noCache(Z)Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper$ParamBuilder;

    move-result-object v4

    .line 394
    invoke-virtual {v4, v3}, Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper$ParamBuilder;->syncId(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper$ParamBuilder;

    move-result-object v4

    .line 395
    invoke-virtual {v4}, Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper$ParamBuilder;->build()Ljava/util/Map;

    move-result-object v2

    .line 397
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p3, v2}, Lcom/buzzfeed/android/util/BuzzApiClient;->syncBookmarkData(Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;Ljava/util/Map;)V

    .line 402
    .end local v2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "sId":Ljava/lang/String;
    :goto_3f
    return-void

    .line 387
    :cond_40
    const-string v3, ""
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_42} :catch_43

    goto :goto_18

    .line 399
    :catch_43
    move-exception v1

    .line 400
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "Error deleting bookmarks"

    invoke-static {v0, v4, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3f
.end method

.method public static getBookmarksList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;
    .registers 10
    .param p0, "sessionKey"    # Ljava/lang/String;
    .param p1, "syncId"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback",
            "<",
            "Lokhttp3/ResponseBody;",
            ">;)",
            "Lcom/buzzfeed/toolkit/util/retrofit/SafeCall",
            "<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .prologue
    .line 419
    .local p3, "callback":Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback<Lokhttp3/ResponseBody;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/buzzfeed/android/util/BuzzApiClient;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".getBookmarksList"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, "TAG":Ljava/lang/String;
    if-eqz p1, :cond_3c

    move-object v3, p1

    .line 423
    .local v3, "sId":Ljava/lang/String;
    :goto_18
    :try_start_18
    new-instance v4, Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper$ParamBuilder;

    invoke-direct {v4}, Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper$ParamBuilder;-><init>()V

    .line 424
    invoke-virtual {v4, p0}, Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper$ParamBuilder;->sessionKey(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper$ParamBuilder;

    move-result-object v4

    .line 425
    invoke-virtual {v4, p2}, Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper$ParamBuilder;->userId(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper$ParamBuilder;

    move-result-object v4

    .line 426
    invoke-virtual {v4, v3}, Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper$ParamBuilder;->syncId(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper$ParamBuilder;

    move-result-object v4

    const-string v5, "mobile_app"

    .line 427
    invoke-virtual {v4, v5}, Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper$ParamBuilder;->filter(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper$ParamBuilder;

    move-result-object v4

    .line 428
    invoke-virtual {v4}, Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper$ParamBuilder;->build()Ljava/util/Map;

    move-result-object v2

    .line 431
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/buzzfeed/toolkit/networking/NetworkService;->getBookmarkService()Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper;

    move-result-object v4

    invoke-virtual {v4, v2, p3}, Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper;->getBookmarksList(Ljava/util/Map;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    move-result-object v4

    .line 434
    .end local v2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "sId":Ljava/lang/String;
    :goto_3b
    return-object v4

    .line 421
    :cond_3c
    const-string v3, ""
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_3e} :catch_3f

    goto :goto_18

    .line 432
    :catch_3f
    move-exception v1

    .line 433
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "Error getting bookmarks bookmarks"

    invoke-static {v0, v4, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 434
    const/4 v4, 0x0

    goto :goto_3b
.end method

.method public static loginToBuzzFeedWithAccount(Ljava/lang/String;Ljava/lang/String;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)V
    .registers 8
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback",
            "<",
            "Lokhttp3/ResponseBody;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p2, "responseBodyCallback":Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback<Lokhttp3/ResponseBody;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/buzzfeed/android/util/BuzzApiClient;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".loginToBuzzFeedWithAccount"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "TAG":Ljava/lang/String;
    :try_start_15
    new-instance v3, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$BfLoginParamBuilder;

    invoke-direct {v3}, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$BfLoginParamBuilder;-><init>()V

    .line 82
    invoke-virtual {v3, p0}, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$BfLoginParamBuilder;->username(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$BfLoginParamBuilder;

    move-result-object v3

    .line 83
    invoke-virtual {v3, p1}, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$BfLoginParamBuilder;->password(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$BfLoginParamBuilder;

    move-result-object v3

    .line 84
    invoke-virtual {v3}, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$BfLoginParamBuilder;->build()Ljava/util/Map;

    move-result-object v2

    .line 87
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/buzzfeed/toolkit/networking/NetworkService;->getAuthService()Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper;

    move-result-object v3

    .line 88
    invoke-virtual {v3, v2, p2}, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper;->loginToBuzzfeed(Ljava/util/Map;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2d} :catch_2e

    .line 92
    .end local v2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_2d
    return-void

    .line 89
    :catch_2e
    move-exception v1

    .line 90
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Error logging in via BuzzFeed"

    invoke-static {v0, v3, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2d
.end method

.method public static loginToBuzzFeedWithFacebook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)V
    .registers 9
    .param p0, "fbUserId"    # Ljava/lang/String;
    .param p1, "fbUserName"    # Ljava/lang/String;
    .param p2, "accessToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback",
            "<",
            "Lokhttp3/ResponseBody;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p3, "responseBodyCallback":Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback<Lokhttp3/ResponseBody;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/buzzfeed/android/util/BuzzApiClient;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".loginToBuzzFeedWithFacebook"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "TAG":Ljava/lang/String;
    :try_start_15
    new-instance v3, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$FbAuthParamBuilder;

    invoke-direct {v3}, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$FbAuthParamBuilder;-><init>()V

    .line 58
    invoke-virtual {v3, p0}, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$FbAuthParamBuilder;->uID(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$FbAuthParamBuilder;

    move-result-object v3

    .line 59
    invoke-virtual {v3, p1}, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$FbAuthParamBuilder;->username(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$FbAuthParamBuilder;

    move-result-object v3

    .line 60
    invoke-virtual {v3, p2}, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$FbAuthParamBuilder;->accessToken(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$FbAuthParamBuilder;

    move-result-object v3

    .line 61
    invoke-virtual {v3}, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$FbAuthParamBuilder;->build()Ljava/util/Map;

    move-result-object v2

    .line 64
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/buzzfeed/toolkit/networking/NetworkService;->getAuthService()Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper;

    move-result-object v3

    .line 65
    invoke-virtual {v3, v2, p3}, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper;->loginToBuzzfeed(Ljava/util/Map;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_31} :catch_32

    .line 69
    .end local v2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_31
    return-void

    .line 66
    :catch_32
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Error logging in via Facebook"

    invoke-static {v0, v3, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_31
.end method

.method public static loginToBuzzFeedWithGooglePlus(Ljava/lang/String;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)V
    .registers 7
    .param p0, "otc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback",
            "<",
            "Lokhttp3/ResponseBody;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, "responseBodyCallback":Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback<Lokhttp3/ResponseBody;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/buzzfeed/android/util/BuzzApiClient;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".loginToBuzzFeedWithGooglePlus"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "TAG":Ljava/lang/String;
    :try_start_15
    new-instance v3, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$GoogleLoginParamBuilder;

    invoke-direct {v3}, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$GoogleLoginParamBuilder;-><init>()V

    .line 104
    invoke-virtual {v3, p0}, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$GoogleLoginParamBuilder;->otc(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$GoogleLoginParamBuilder;

    move-result-object v3

    .line 105
    invoke-virtual {v3}, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$GoogleLoginParamBuilder;->build()Ljava/util/Map;

    move-result-object v2

    .line 108
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/buzzfeed/toolkit/networking/NetworkService;->getAuthService()Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper;

    move-result-object v3

    .line 109
    invoke-virtual {v3, v2, p1}, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper;->loginToBuzzfeed(Ljava/util/Map;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_29} :catch_2a

    .line 113
    .end local v2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_29
    return-void

    .line 110
    :catch_2a
    move-exception v1

    .line 111
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Error logging in via Google Plus"

    invoke-static {v0, v3, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_29
.end method

.method public static retrieveBuzzWithURL(Ljava/lang/String;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)V
    .registers 8
    .param p0, "urlString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback",
            "<",
            "Lokhttp3/ResponseBody;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 329
    .local p1, "callback":Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback<Lokhttp3/ResponseBody;>;"
    if-eqz p0, :cond_3b

    invoke-static {p0}, Lcom/buzzfeed/android/util/BuzzUtils;->standardizeBuzzFeedUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 330
    .local v2, "url":Ljava/lang/String;
    :goto_6
    if-eqz v2, :cond_33

    .line 331
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 332
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".mobile.js"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 333
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 336
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_33
    invoke-static {}, Lcom/buzzfeed/toolkit/networking/NetworkService;->getBuzzService()Lcom/buzzfeed/toolkit/networking/helpers/BuzzServiceHelper;

    move-result-object v3

    invoke-virtual {v3, v2, p1}, Lcom/buzzfeed/toolkit/networking/helpers/BuzzServiceHelper;->getBuzzWithUrl(Ljava/lang/String;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    .line 337
    return-void

    .line 329
    .end local v2    # "url":Ljava/lang/String;
    :cond_3b
    const/4 v2, 0x0

    goto :goto_6
.end method

.method public static signUpWithUserInfoUsingGPlus(Lorg/json/JSONObject;Ljava/lang/String;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)V
    .registers 9
    .param p0, "bfInfo"    # Lorg/json/JSONObject;
    .param p1, "country"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback",
            "<",
            "Lokhttp3/ResponseBody;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p2, "responseBodyCallback":Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback<Lokhttp3/ResponseBody;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/buzzfeed/android/util/BuzzApiClient;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".signUpWithUserInfoUsingGPlus"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "TAG":Ljava/lang/String;
    :try_start_15
    invoke-static {}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getEnvironment()Lcom/buzzfeed/toolkit/networking/Environment;

    move-result-object v2

    .line 156
    .local v2, "environment":Lcom/buzzfeed/toolkit/networking/Environment;
    new-instance v4, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$GoogleSignUpParamBuilder;

    invoke-direct {v4}, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$GoogleSignUpParamBuilder;-><init>()V

    iget-object v5, v2, Lcom/buzzfeed/toolkit/networking/Environment;->BUZZFEED_ANDROID_DOMAIN:Ljava/lang/String;

    .line 157
    invoke-virtual {v4, v5}, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$GoogleSignUpParamBuilder;->host(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$GoogleSignUpParamBuilder;

    move-result-object v4

    .line 158
    invoke-virtual {v4, p0}, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$GoogleSignUpParamBuilder;->userInfo(Lorg/json/JSONObject;)Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$GoogleSignUpParamBuilder;

    move-result-object v4

    .line 159
    invoke-virtual {v4, p1}, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$GoogleSignUpParamBuilder;->country(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$GoogleSignUpParamBuilder;

    move-result-object v4

    .line 160
    invoke-virtual {v4}, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$GoogleSignUpParamBuilder;->build()Ljava/util/Map;

    move-result-object v3

    .line 163
    .local v3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/buzzfeed/toolkit/networking/NetworkService;->getAuthService()Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper;

    move-result-object v4

    .line 164
    invoke-virtual {v4, v3, p2}, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper;->signUpToBuzzfeed(Ljava/util/Map;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_37} :catch_38

    .line 169
    .end local v2    # "environment":Lcom/buzzfeed/toolkit/networking/Environment;
    .end local v3    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_37
    return-void

    .line 166
    :catch_38
    move-exception v1

    .line 167
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "Error signing user up via Google Plus"

    invoke-static {v0, v4, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_37
.end method

.method public static signupWithUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)V
    .registers 10
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback",
            "<",
            "Lokhttp3/ResponseBody;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p3, "responseBodyCallback":Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback<Lokhttp3/ResponseBody;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/buzzfeed/android/util/BuzzApiClient;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".signupWithUserInfo"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "TAG":Ljava/lang/String;
    :try_start_15
    invoke-static {}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getEnvironment()Lcom/buzzfeed/toolkit/networking/Environment;

    move-result-object v2

    .line 128
    .local v2, "environment":Lcom/buzzfeed/toolkit/networking/Environment;
    new-instance v4, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$BfSignUpParamBuilder;

    invoke-direct {v4}, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$BfSignUpParamBuilder;-><init>()V

    iget-object v5, v2, Lcom/buzzfeed/toolkit/networking/Environment;->BUZZFEED_ANDROID_DOMAIN:Ljava/lang/String;

    .line 129
    invoke-virtual {v4, v5}, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$BfSignUpParamBuilder;->host(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$BfSignUpParamBuilder;

    move-result-object v4

    .line 130
    invoke-virtual {v4, p0}, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$BfSignUpParamBuilder;->name(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$BfSignUpParamBuilder;

    move-result-object v4

    .line 131
    invoke-virtual {v4, p0}, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$BfSignUpParamBuilder;->username(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$BfSignUpParamBuilder;

    move-result-object v4

    .line 132
    invoke-virtual {v4, p2}, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$BfSignUpParamBuilder;->password(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$BfSignUpParamBuilder;

    move-result-object v4

    .line 133
    invoke-virtual {v4, p1}, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$BfSignUpParamBuilder;->email(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$BfSignUpParamBuilder;

    move-result-object v4

    .line 134
    invoke-virtual {v4}, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$BfSignUpParamBuilder;->build()Ljava/util/Map;

    move-result-object v3

    .line 137
    .local v3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/buzzfeed/toolkit/networking/NetworkService;->getAuthService()Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper;

    move-result-object v4

    .line 138
    invoke-virtual {v4, v3, p3}, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper;->signUpToBuzzfeed(Ljava/util/Map;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_3f} :catch_40

    .line 142
    .end local v2    # "environment":Lcom/buzzfeed/toolkit/networking/Environment;
    .end local v3    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_3f
    return-void

    .line 139
    :catch_40
    move-exception v1

    .line 140
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "Error signing user up via BuzzFeed"

    invoke-static {v0, v4, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3f
.end method

.method private static syncBookmarkData(Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback",
            "<",
            "Lokhttp3/ResponseBody;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 406
    .local p0, "callback":Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback<Lokhttp3/ResponseBody;>;"
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/buzzfeed/toolkit/networking/NetworkService;->getBookmarkService()Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper;

    move-result-object v0

    .line 407
    invoke-virtual {v0, p1, p0}, Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper;->addBookmarks(Ljava/util/Map;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    .line 408
    return-void
.end method

.method public static updateSessionToken(Lcom/buzzfeed/android/data/BuzzUser;Ljava/lang/String;)V
    .registers 6
    .param p0, "user"    # Lcom/buzzfeed/android/data/BuzzUser;
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/buzzfeed/android/util/BuzzApiClient;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".updateSessionToken(BuzzUser,String,Response.Listener,Response.ErrorListener)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "TAG":Ljava/lang/String;
    const-string/jumbo v2, "updating session token"

    invoke-static {v0, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/BuzzUser;->getLoginType()Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, "loginType":Ljava/lang/String;
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_62

    :cond_27
    :goto_27
    packed-switch v2, :pswitch_data_6c

    .line 217
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/buzzfeed/android/data/BuzzUser;->setSessionKey(Ljava/lang/String;)V

    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not update session token. Could not resolve login type."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :goto_44
    return-void

    .line 209
    :sswitch_45
    const-string v3, "buzzfeedAccount"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    const/4 v2, 0x0

    goto :goto_27

    :sswitch_4f
    const-string v3, "facebookAccount"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    const/4 v2, 0x1

    goto :goto_27

    .line 211
    :pswitch_59
    invoke-static {p0, p1}, Lcom/buzzfeed/android/util/BuzzApiClient;->updateSessionTokenWithBF(Lcom/buzzfeed/android/data/BuzzUser;Ljava/lang/String;)V

    goto :goto_44

    .line 214
    :pswitch_5d
    invoke-static {p0}, Lcom/buzzfeed/android/util/BuzzApiClient;->updateSessionTokenWithFB(Lcom/buzzfeed/android/data/BuzzUser;)V

    goto :goto_44

    .line 209
    nop

    :sswitch_data_62
    .sparse-switch
        -0x266ff604 -> :sswitch_45
        0x6571fc87 -> :sswitch_4f
    .end sparse-switch

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_59
        :pswitch_5d
    .end packed-switch
.end method

.method public static updateSessionToken(Lcom/buzzfeed/android/data/BuzzUser;Landroid/content/Context;)Z
    .registers 8
    .param p0, "user"    # Lcom/buzzfeed/android/data/BuzzUser;
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 183
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/buzzfeed/android/util/BuzzApiClient;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".updateSessionToken(BuzzUser,Context)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "TAG":Ljava/lang/String;
    if-eqz p0, :cond_30

    invoke-virtual {p0}, Lcom/buzzfeed/android/data/BuzzUser;->isLogin()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 186
    :try_start_1e
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/BuzzUser;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/buzzfeed/android/util/AESCryptUtils;->decrypt(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, "password":Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/buzzfeed/android/util/BuzzApiClient;->updateSessionToken(Lcom/buzzfeed/android/data/BuzzUser;Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_29} :catch_31

    .line 192
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/BuzzUser;->getSessionKey()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_30

    const/4 v3, 0x1

    .line 194
    .end local v2    # "password":Ljava/lang/String;
    :cond_30
    :goto_30
    return v3

    .line 188
    :catch_31
    move-exception v1

    .line 189
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "Error updating token"

    invoke-static {v0, v4, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_30
.end method

.method private static updateSessionTokenWithBF(Lcom/buzzfeed/android/data/BuzzUser;Ljava/lang/String;)V
    .registers 7
    .param p0, "user"    # Lcom/buzzfeed/android/data/BuzzUser;
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 230
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/buzzfeed/android/util/BuzzApiClient;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".updateSessionTokenWithBF"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "TAG":Ljava/lang/String;
    :try_start_15
    new-instance v3, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$BfLoginParamBuilder;

    invoke-direct {v3}, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$BfLoginParamBuilder;-><init>()V

    .line 233
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/BuzzUser;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$BfLoginParamBuilder;->username(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$BfLoginParamBuilder;

    move-result-object v3

    .line 234
    invoke-virtual {v3, p1}, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$BfLoginParamBuilder;->password(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$BfLoginParamBuilder;

    move-result-object v3

    .line 235
    invoke-virtual {v3}, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$BfLoginParamBuilder;->build()Ljava/util/Map;

    move-result-object v2

    .line 237
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/buzzfeed/android/data/BuzzUser;->setSessionKey(Ljava/lang/String;)V

    .line 239
    invoke-static {}, Lcom/buzzfeed/toolkit/networking/NetworkService;->getAuthService()Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper;

    move-result-object v3

    new-instance v4, Lcom/buzzfeed/android/util/BuzzApiClient$1;

    invoke-direct {v4, p0, v0}, Lcom/buzzfeed/android/util/BuzzApiClient$1;-><init>(Lcom/buzzfeed/android/data/BuzzUser;Ljava/lang/String;)V

    .line 240
    invoke-virtual {v3, v2, v4}, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper;->loginToBuzzfeed(Ljava/util/Map;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_3a} :catch_3b

    .line 271
    .end local v2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_3a
    return-void

    .line 268
    :catch_3b
    move-exception v1

    .line 269
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Error updating session token with buzzfeed account"

    invoke-static {v0, v3, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3a
.end method

.method private static updateSessionTokenWithFB(Lcom/buzzfeed/android/data/BuzzUser;)V
    .registers 6
    .param p0, "user"    # Lcom/buzzfeed/android/data/BuzzUser;

    .prologue
    .line 279
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/buzzfeed/android/util/BuzzApiClient;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".updateSessionTokenWithFB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "TAG":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/buzzfeed/android/data/BuzzUser;->setSessionKey(Ljava/lang/String;)V

    .line 282
    :try_start_19
    new-instance v3, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$FbAuthParamBuilder;

    invoke-direct {v3}, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$FbAuthParamBuilder;-><init>()V

    .line 283
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/BuzzUser;->getFacebookUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$FbAuthParamBuilder;->uID(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$FbAuthParamBuilder;

    move-result-object v3

    .line 284
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/BuzzUser;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$FbAuthParamBuilder;->username(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$FbAuthParamBuilder;

    move-result-object v3

    .line 285
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$FbAuthParamBuilder;->accessToken(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$FbAuthParamBuilder;

    move-result-object v3

    .line 286
    invoke-virtual {v3}, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$FbAuthParamBuilder;->build()Ljava/util/Map;

    move-result-object v2

    .line 288
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/buzzfeed/toolkit/networking/NetworkService;->getAuthService()Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper;

    move-result-object v3

    new-instance v4, Lcom/buzzfeed/android/util/BuzzApiClient$2;

    invoke-direct {v4, p0, v0}, Lcom/buzzfeed/android/util/BuzzApiClient$2;-><init>(Lcom/buzzfeed/android/data/BuzzUser;Ljava/lang/String;)V

    .line 289
    invoke-virtual {v3, v2, v4}, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper;->loginToBuzzfeed(Ljava/util/Map;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_4a} :catch_4b

    .line 320
    .end local v2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_4a
    return-void

    .line 317
    :catch_4b
    move-exception v1

    .line 318
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Error updating session token with facebook credentials"

    invoke-static {v0, v3, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4a
.end method
