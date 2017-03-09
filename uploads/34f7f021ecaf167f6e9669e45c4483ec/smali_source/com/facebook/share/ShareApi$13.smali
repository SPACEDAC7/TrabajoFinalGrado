.class final Lcom/facebook/share/ShareApi$13;
.super Ljava/lang/Object;
.source "ShareApi.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/ShareApi;->stagePhoto(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$onPhotoStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

.field final synthetic val$photo:Lcom/facebook/share/model/SharePhoto;


# direct methods
.method constructor <init>(Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;Lcom/facebook/share/model/SharePhoto;)V
    .registers 3

    .prologue
    .line 576
    iput-object p1, p0, Lcom/facebook/share/ShareApi$13;->val$onPhotoStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    iput-object p2, p0, Lcom/facebook/share/ShareApi$13;->val$photo:Lcom/facebook/share/model/SharePhoto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .registers 11
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 579
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    .line 580
    .local v1, "error":Lcom/facebook/FacebookRequestError;
    if-eqz v1, :cond_19

    .line 581
    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    .line 582
    .local v3, "message":Ljava/lang/String;
    if-nez v3, :cond_e

    .line 583
    const-string v3, "Error staging photo."

    .line 585
    :cond_e
    iget-object v6, p0, Lcom/facebook/share/ShareApi$13;->val$onPhotoStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    new-instance v7, Lcom/facebook/FacebookGraphResponseException;

    invoke-direct {v7, p1, v3}, Lcom/facebook/FacebookGraphResponseException;-><init>(Lcom/facebook/GraphResponse;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onError(Lcom/facebook/FacebookException;)V

    .line 615
    .end local v3    # "message":Ljava/lang/String;
    :goto_18
    return-void

    .line 589
    :cond_19
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 590
    .local v0, "data":Lorg/json/JSONObject;
    if-nez v0, :cond_2c

    .line 591
    iget-object v6, p0, Lcom/facebook/share/ShareApi$13;->val$onPhotoStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    new-instance v7, Lcom/facebook/FacebookException;

    const-string v8, "Error staging photo."

    invoke-direct {v7, v8}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v7}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onError(Lcom/facebook/FacebookException;)V

    goto :goto_18

    .line 595
    :cond_2c
    const-string/jumbo v6, "uri"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 596
    .local v4, "stagedImageUri":Ljava/lang/String;
    if-nez v4, :cond_42

    .line 597
    iget-object v6, p0, Lcom/facebook/share/ShareApi$13;->val$onPhotoStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    new-instance v7, Lcom/facebook/FacebookException;

    const-string v8, "Error staging photo."

    invoke-direct {v7, v8}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v7}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onError(Lcom/facebook/FacebookException;)V

    goto :goto_18

    .line 602
    :cond_42
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 604
    .local v5, "stagedObject":Lorg/json/JSONObject;
    :try_start_47
    const-string/jumbo v6, "url"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 605
    const-string/jumbo v6, "user_generated"

    iget-object v7, p0, Lcom/facebook/share/ShareApi$13;->val$photo:Lcom/facebook/share/model/SharePhoto;

    invoke-virtual {v7}, Lcom/facebook/share/model/SharePhoto;->getUserGenerated()Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_59
    .catch Lorg/json/JSONException; {:try_start_47 .. :try_end_59} :catch_5f

    .line 614
    iget-object v6, p0, Lcom/facebook/share/ShareApi$13;->val$onPhotoStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    invoke-interface {v6, v5}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onComplete(Ljava/lang/Object;)V

    goto :goto_18

    .line 606
    :catch_5f
    move-exception v2

    .line 607
    .local v2, "ex":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    .line 608
    .restart local v3    # "message":Ljava/lang/String;
    if-nez v3, :cond_68

    .line 609
    const-string v3, "Error staging photo."

    .line 611
    :cond_68
    iget-object v6, p0, Lcom/facebook/share/ShareApi$13;->val$onPhotoStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    new-instance v7, Lcom/facebook/FacebookException;

    invoke-direct {v7, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v7}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onError(Lcom/facebook/FacebookException;)V

    goto :goto_18
.end method
