.class Lcom/facebook/share/internal/LikeActionController$PublishLikeRequestWrapper;
.super Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;
.source "LikeActionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/LikeActionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PublishLikeRequestWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/internal/LikeActionController;

.field unlikeToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V
    .registers 9
    .param p2, "objectId"    # Ljava/lang/String;
    .param p3, "objectType"    # Lcom/facebook/share/widget/LikeView$ObjectType;

    .prologue
    .line 1372
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController$PublishLikeRequestWrapper;->this$0:Lcom/facebook/share/internal/LikeActionController;

    .line 1373
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;-><init>(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    .line 1375
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1376
    .local v0, "likeRequestParams":Landroid/os/Bundle;
    const-string v1, "object"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    new-instance v1, Lcom/facebook/GraphRequest;

    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v2

    const-string v3, "me/og.likes"

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V

    invoke-virtual {p0, v1}, Lcom/facebook/share/internal/LikeActionController$PublishLikeRequestWrapper;->setRequest(Lcom/facebook/GraphRequest;)V

    .line 1383
    return-void
.end method


# virtual methods
.method protected processError(Lcom/facebook/FacebookRequestError;)V
    .registers 9
    .param p1, "error"    # Lcom/facebook/FacebookRequestError;

    .prologue
    .line 1392
    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getErrorCode()I

    move-result v0

    .line 1393
    .local v0, "errorCode":I
    const/16 v1, 0xdad

    if-ne v0, v1, :cond_c

    .line 1398
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/share/internal/LikeActionController$PublishLikeRequestWrapper;->error:Lcom/facebook/FacebookRequestError;

    .line 1408
    :goto_b
    return-void

    .line 1400
    :cond_c
    sget-object v1, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    # getter for: Lcom/facebook/share/internal/LikeActionController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/share/internal/LikeActionController;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error liking object \'%s\' with type \'%s\' : %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/facebook/share/internal/LikeActionController$PublishLikeRequestWrapper;->objectId:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/facebook/share/internal/LikeActionController$PublishLikeRequestWrapper;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p1, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1406
    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController$PublishLikeRequestWrapper;->this$0:Lcom/facebook/share/internal/LikeActionController;

    const-string v2, "publish_like"

    # invokes: Lcom/facebook/share/internal/LikeActionController;->logAppEventForError(Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V
    invoke-static {v1, v2, p1}, Lcom/facebook/share/internal/LikeActionController;->access$2400(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V

    goto :goto_b
.end method

.method protected processSuccess(Lcom/facebook/GraphResponse;)V
    .registers 4
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 1387
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/facebook/internal/Utility;->safeGetStringFromResponse(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/LikeActionController$PublishLikeRequestWrapper;->unlikeToken:Ljava/lang/String;

    .line 1388
    return-void
.end method
