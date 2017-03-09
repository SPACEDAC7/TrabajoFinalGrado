.class interface abstract Lcom/buzzfeed/toolkit/networking/urbanairship/UAApiHelper$UAApiService;
.super Ljava/lang/Object;
.source "UAApiHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/toolkit/networking/urbanairship/UAApiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "UAApiService"
.end annotation


# virtual methods
.method public abstract postNotification(Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody;)Lretrofit2/Call;
    .param p1    # Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/json",
            "Accept: application/vnd.urbanairship+json; version=3"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api/push"
    .end annotation
.end method
