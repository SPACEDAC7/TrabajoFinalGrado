.class public Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper;
.super Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper;
.source "CommentServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$ImageSaveParamBuilder;,
        Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$ImageUploadParamBuilder;,
        Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$PostTextParamBuilder;,
        Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$QueryParamsBuilder;,
        Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$CommentService;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper",
        "<",
        "Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$CommentService;",
        ">;"
    }
.end annotation


# static fields
.field private static final SESSION_KEY:Ljava/lang/String; = "session_key"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/buzzfeed/toolkit/networking/Environment;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "environment"    # Lcom/buzzfeed/toolkit/networking/Environment;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/buzzfeed/toolkit/networking/helpers/BaseServiceHelper;-><init>(Landroid/content/Context;Lcom/buzzfeed/toolkit/networking/Environment;)V

    .line 36
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper;->noCache()V

    .line 37
    return-void
.end method


# virtual methods
.method protected createService(Lretrofit2/Retrofit;)Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$CommentService;
    .registers 3
    .param p1, "retrofit"    # Lretrofit2/Retrofit;

    .prologue
    .line 56
    const-class v0, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$CommentService;

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$CommentService;

    return-object v0
.end method

.method protected bridge synthetic createService(Lretrofit2/Retrofit;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper;->createService(Lretrofit2/Retrofit;)Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$CommentService;

    move-result-object v0

    return-object v0
.end method

.method public getComments(Ljava/lang/String;Ljava/util/Map;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;
    .registers 5
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
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
    .line 60
    .local p2, "queryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "safeCallback":Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback<Lokhttp3/ResponseBody;>;"
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$CommentService;

    invoke-interface {v0, p1, p2}, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$CommentService;->getComments(Ljava/lang/String;Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper;->enqueueSafeRequest(Lretrofit2/Call;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    move-result-object v0

    return-object v0
.end method

.method public postText(Ljava/util/Map;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;
    .registers 3
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/buzzfeed/toolkit/util/retrofit/SafeCall",
            "<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$CommentService;

    invoke-interface {v0, p1}, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$CommentService;->postContent(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper;->createSafeRequest(Lretrofit2/Call;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    move-result-object v0

    return-object v0
.end method

.method public saveImage(Ljava/util/Map;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;
    .registers 3
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/buzzfeed/toolkit/util/retrofit/SafeCall",
            "<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$CommentService;

    invoke-interface {v0, p1}, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$CommentService;->postContent(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper;->createSafeRequest(Lretrofit2/Call;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    move-result-object v0

    return-object v0
.end method

.method public updateComment(Ljava/util/Map;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;
    .registers 4
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
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
    .line 80
    .local p1, "postTextParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "callback":Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback<Lokhttp3/ResponseBody;>;"
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$CommentService;

    invoke-interface {v0, p1}, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$CommentService;->postContent(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper;->enqueueSafeRequest(Lretrofit2/Call;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    move-result-object v0

    return-object v0
.end method

.method public uploadImage(Lokhttp3/MultipartBody$Part;Ljava/util/HashMap;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;
    .registers 4
    .param p1, "imageBody"    # Lokhttp3/MultipartBody$Part;
        .annotation runtime Lretrofit2/http/Part;
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation runtime Lretrofit2/http/PartMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/MultipartBody$Part;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lokhttp3/RequestBody;",
            ">;)",
            "Lcom/buzzfeed/toolkit/util/retrofit/SafeCall",
            "<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lokhttp3/RequestBody;>;"
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$CommentService;

    invoke-interface {v0, p1, p2}, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$CommentService;->uploadImage(Lokhttp3/MultipartBody$Part;Ljava/util/HashMap;)Lretrofit2/Call;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper;->createSafeRequest(Lretrofit2/Call;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    move-result-object v0

    return-object v0
.end method
