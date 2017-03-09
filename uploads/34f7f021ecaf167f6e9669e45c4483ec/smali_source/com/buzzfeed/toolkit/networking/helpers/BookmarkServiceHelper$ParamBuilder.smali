.class public final Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper$ParamBuilder;
.super Ljava/lang/Object;
.source "BookmarkServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParamBuilder"
.end annotation


# static fields
.field private static final KEY_BOOKMARKS:Ljava/lang/String; = "bookmarks"

.field private static final KEY_BUZZ_ID:Ljava/lang/String; = "buzz_id"

.field private static final KEY_FILTER:Ljava/lang/String; = "filter"

.field private static final KEY_METHOD:Ljava/lang/String; = "_method"

.field private static final KEY_NO_CACHE:Ljava/lang/String; = "no_cache"

.field private static final KEY_SESSION_KEY:Ljava/lang/String; = "session_key"

.field private static final KEY_SYNC_ID:Ljava/lang/String; = "sync_id"

.field private static final KEY_USER_ID:Ljava/lang/String; = "user_id"


# instance fields
.field private mParamMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper$ParamBuilder;->mParamMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public bookmarks(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper$ParamBuilder;
    .registers 4
    .param p1, "bookmarks"    # Ljava/lang/String;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper$ParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "bookmarks"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    return-object p0
.end method

.method public build()Ljava/util/Map;
    .registers 4
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

    .prologue
    .line 113
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper$ParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "api_client"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper$ParamBuilder;->mParamMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public buzzId(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper$ParamBuilder;
    .registers 4
    .param p1, "buzzId"    # Ljava/lang/String;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper$ParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "buzz_id"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    return-object p0
.end method

.method public filter(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper$ParamBuilder;
    .registers 4
    .param p1, "filter"    # Ljava/lang/String;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper$ParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "filter"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    return-object p0
.end method

.method public method(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper$ParamBuilder;
    .registers 4
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper$ParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "_method"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    return-object p0
.end method

.method public noCache(Z)Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper$ParamBuilder;
    .registers 5
    .param p1, "refresh"    # Z

    .prologue
    .line 107
    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper$ParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "no_cache"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_e
    return-object p0
.end method

.method public sessionKey(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper$ParamBuilder;
    .registers 4
    .param p1, "sessionKey"    # Ljava/lang/String;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper$ParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "session_key"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-object p0
.end method

.method public syncId(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper$ParamBuilder;
    .registers 4
    .param p1, "syncId"    # Ljava/lang/String;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper$ParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string/jumbo v1, "sync_id"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    return-object p0
.end method

.method public userId(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper$ParamBuilder;
    .registers 4
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper$ParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    return-object p0
.end method
