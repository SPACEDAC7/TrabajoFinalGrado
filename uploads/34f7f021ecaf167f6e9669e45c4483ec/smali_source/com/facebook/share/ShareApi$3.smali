.class Lcom/facebook/share/ShareApi$3;
.super Ljava/lang/Object;
.source "ShareApi.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/ShareApi;->sharePhotoContent(Lcom/facebook/share/model/SharePhotoContent;Lcom/facebook/FacebookCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/ShareApi;

.field final synthetic val$callback:Lcom/facebook/FacebookCallback;

.field final synthetic val$errorResponses:Ljava/util/ArrayList;

.field final synthetic val$requestCount:Lcom/facebook/internal/Mutable;

.field final synthetic val$results:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/facebook/share/ShareApi;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/facebook/internal/Mutable;Lcom/facebook/FacebookCallback;)V
    .registers 6

    .prologue
    .line 241
    iput-object p1, p0, Lcom/facebook/share/ShareApi$3;->this$0:Lcom/facebook/share/ShareApi;

    iput-object p2, p0, Lcom/facebook/share/ShareApi$3;->val$results:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/facebook/share/ShareApi$3;->val$errorResponses:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/facebook/share/ShareApi$3;->val$requestCount:Lcom/facebook/internal/Mutable;

    iput-object p5, p0, Lcom/facebook/share/ShareApi$3;->val$callback:Lcom/facebook/FacebookCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .registers 8
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    const/4 v5, 0x0

    .line 244
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 245
    .local v1, "result":Lorg/json/JSONObject;
    if-eqz v1, :cond_c

    .line 246
    iget-object v2, p0, Lcom/facebook/share/ShareApi$3;->val$results:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_c
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 249
    iget-object v2, p0, Lcom/facebook/share/ShareApi$3;->val$errorResponses:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    :cond_17
    iget-object v3, p0, Lcom/facebook/share/ShareApi$3;->val$requestCount:Lcom/facebook/internal/Mutable;

    iget-object v2, p0, Lcom/facebook/share/ShareApi$3;->val$requestCount:Lcom/facebook/internal/Mutable;

    iget-object v2, v2, Lcom/facebook/internal/Mutable;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v3, Lcom/facebook/internal/Mutable;->value:Ljava/lang/Object;

    .line 252
    iget-object v2, p0, Lcom/facebook/share/ShareApi$3;->val$requestCount:Lcom/facebook/internal/Mutable;

    iget-object v2, v2, Lcom/facebook/internal/Mutable;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_4d

    .line 253
    iget-object v2, p0, Lcom/facebook/share/ShareApi$3;->val$errorResponses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4e

    .line 254
    iget-object v3, p0, Lcom/facebook/share/ShareApi$3;->val$callback:Lcom/facebook/FacebookCallback;

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/facebook/share/ShareApi$3;->val$errorResponses:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/GraphResponse;

    invoke-static {v3, v4, v2}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeCallbackWithResults(Lcom/facebook/FacebookCallback;Ljava/lang/String;Lcom/facebook/GraphResponse;)V

    .line 266
    :cond_4d
    :goto_4d
    return-void

    .line 258
    :cond_4e
    iget-object v2, p0, Lcom/facebook/share/ShareApi$3;->val$results:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4d

    .line 259
    iget-object v2, p0, Lcom/facebook/share/ShareApi$3;->val$results:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "postId":Ljava/lang/String;
    iget-object v2, p0, Lcom/facebook/share/ShareApi$3;->val$callback:Lcom/facebook/FacebookCallback;

    invoke-static {v2, v0, p1}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeCallbackWithResults(Lcom/facebook/FacebookCallback;Ljava/lang/String;Lcom/facebook/GraphResponse;)V

    goto :goto_4d
.end method
