.class public final Lcom/facebook/share/ShareApi;
.super Ljava/lang/Object;
.source "ShareApi.java"


# instance fields
.field private final shareContent:Lcom/facebook/share/model/ShareContent;


# direct methods
.method public constructor <init>(Lcom/facebook/share/model/ShareContent;)V
    .registers 2
    .param p1, "shareContent"    # Lcom/facebook/share/model/ShareContent;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/facebook/share/ShareApi;->shareContent:Lcom/facebook/share/model/ShareContent;

    .line 78
    return-void
.end method

.method static synthetic access$000(Landroid/os/Bundle;)V
    .registers 1
    .param p0, "x0"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-static {p0}, Lcom/facebook/share/ShareApi;->handleImagesOnAction(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$100(Ljava/util/ArrayList;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
    .registers 2
    .param p0, "x0"    # Ljava/util/ArrayList;
    .param p1, "x1"    # Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    .prologue
    .line 55
    invoke-static {p0, p1}, Lcom/facebook/share/ShareApi;->stageArrayList(Ljava/util/ArrayList;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/facebook/share/model/ShareOpenGraphObject;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/ShareOpenGraphObject;
    .param p1, "x1"    # Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    .prologue
    .line 55
    invoke-static {p0, p1}, Lcom/facebook/share/ShareApi;->stageOpenGraphObject(Lcom/facebook/share/model/ShareOpenGraphObject;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V

    return-void
.end method

.method static synthetic access$300(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/SharePhoto;
    .param p1, "x1"    # Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    .prologue
    .line 55
    invoke-static {p0, p1}, Lcom/facebook/share/ShareApi;->stagePhoto(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V

    return-void
.end method

.method private static handleImagesOnAction(Landroid/os/Bundle;)V
    .registers 12
    .param p0, "parameters"    # Landroid/os/Bundle;

    .prologue
    .line 189
    const-string v6, "image"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, "imageStr":Ljava/lang/String;
    if-eqz v2, :cond_49

    .line 193
    :try_start_8
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 194
    .local v3, "images":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_4a

    .line 195
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 196
    .local v4, "jsonImage":Lorg/json/JSONObject;
    if-eqz v4, :cond_20

    .line 197
    invoke-static {p0, v0, v4}, Lcom/facebook/share/ShareApi;->putImageInBundleWithArrayFormat(Landroid/os/Bundle;ILorg/json/JSONObject;)V

    .line 194
    :goto_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 200
    :cond_20
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 201
    .local v5, "url":Ljava/lang/String;
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v7, "image[%d][url]"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_39} :catch_3a

    goto :goto_1d

    .line 206
    .end local v0    # "i":I
    .end local v3    # "images":Lorg/json/JSONArray;
    .end local v4    # "jsonImage":Lorg/json/JSONObject;
    .end local v5    # "url":Ljava/lang/String;
    :catch_3a
    move-exception v6

    .line 212
    :try_start_3b
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 213
    .local v1, "image":Lorg/json/JSONObject;
    const/4 v6, 0x0

    invoke-static {p0, v6, v1}, Lcom/facebook/share/ShareApi;->putImageInBundleWithArrayFormat(Landroid/os/Bundle;ILorg/json/JSONObject;)V

    .line 214
    const-string v6, "image"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_49
    .catch Lorg/json/JSONException; {:try_start_3b .. :try_end_49} :catch_50

    .line 220
    .end local v1    # "image":Lorg/json/JSONObject;
    :cond_49
    :goto_49
    return-void

    .line 204
    .restart local v0    # "i":I
    .restart local v3    # "images":Lorg/json/JSONArray;
    :cond_4a
    :try_start_4a
    const-string v6, "image"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_4f
    .catch Lorg/json/JSONException; {:try_start_4a .. :try_end_4f} :catch_3a

    goto :goto_49

    .line 215
    .end local v0    # "i":I
    .end local v3    # "images":Lorg/json/JSONArray;
    :catch_50
    move-exception v6

    goto :goto_49
.end method

.method private static putImageInBundleWithArrayFormat(Landroid/os/Bundle;ILorg/json/JSONObject;)V
    .registers 11
    .param p0, "parameters"    # Landroid/os/Bundle;
    .param p1, "index"    # I
    .param p2, "image"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 226
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 227
    .local v1, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 228
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 229
    .local v2, "property":Ljava/lang/String;
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v4, "image[%d][%s]"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 232
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "property":Ljava/lang/String;
    :cond_31
    return-void
.end method

.method public static share(Lcom/facebook/share/model/ShareContent;Lcom/facebook/FacebookCallback;)V
    .registers 3
    .param p0, "shareContent"    # Lcom/facebook/share/model/ShareContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/share/model/ShareContent;",
            "Lcom/facebook/FacebookCallback",
            "<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    new-instance v0, Lcom/facebook/share/ShareApi;

    invoke-direct {v0, p0}, Lcom/facebook/share/ShareApi;-><init>(Lcom/facebook/share/model/ShareContent;)V

    invoke-virtual {v0, p1}, Lcom/facebook/share/ShareApi;->share(Lcom/facebook/FacebookCallback;)V

    .line 69
    return-void
.end method

.method private shareLinkContent(Lcom/facebook/share/model/ShareLinkContent;Lcom/facebook/FacebookCallback;)V
    .registers 9
    .param p1, "linkContent"    # Lcom/facebook/share/model/ShareLinkContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/share/model/ShareLinkContent;",
            "Lcom/facebook/FacebookCallback",
            "<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 295
    .local p2, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    new-instance v5, Lcom/facebook/share/ShareApi$4;

    invoke-direct {v5, p0, p2}, Lcom/facebook/share/ShareApi$4;-><init>(Lcom/facebook/share/ShareApi;Lcom/facebook/FacebookCallback;)V

    .line 303
    .local v5, "requestCallback":Lcom/facebook/GraphRequest$Callback;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 304
    .local v3, "parameters":Landroid/os/Bundle;
    const-string v0, "link"

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareLinkContent;->getContentUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/Utility;->getUriString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v0, "picture"

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareLinkContent;->getImageUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/Utility;->getUriString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v0, "name"

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareLinkContent;->getContentTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v0, "description"

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareLinkContent;->getContentDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v0, "ref"

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareLinkContent;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    new-instance v0, Lcom/facebook/GraphRequest;

    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    const-string v2, "/me/feed"

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    .line 315
    return-void
.end method

.method private shareOpenGraphContent(Lcom/facebook/share/model/ShareOpenGraphContent;Lcom/facebook/FacebookCallback;)V
    .registers 9
    .param p1, "openGraphContent"    # Lcom/facebook/share/model/ShareOpenGraphContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/share/model/ShareOpenGraphContent;",
            "Lcom/facebook/FacebookCallback",
            "<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p2, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    new-instance v4, Lcom/facebook/share/ShareApi$1;

    invoke-direct {v4, p0, p2}, Lcom/facebook/share/ShareApi$1;-><init>(Lcom/facebook/share/ShareApi;Lcom/facebook/FacebookCallback;)V

    .line 157
    .local v4, "requestCallback":Lcom/facebook/GraphRequest$Callback;
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareOpenGraphContent;->getAction()Lcom/facebook/share/model/ShareOpenGraphAction;

    move-result-object v3

    .line 158
    .local v3, "action":Lcom/facebook/share/model/ShareOpenGraphAction;
    invoke-virtual {v3}, Lcom/facebook/share/model/ShareOpenGraphAction;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 159
    .local v2, "parameters":Landroid/os/Bundle;
    new-instance v0, Lcom/facebook/share/ShareApi$2;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/share/ShareApi$2;-><init>(Lcom/facebook/share/ShareApi;Landroid/os/Bundle;Lcom/facebook/share/model/ShareOpenGraphAction;Lcom/facebook/GraphRequest$Callback;Lcom/facebook/FacebookCallback;)V

    .line 182
    .local v0, "stageCallback":Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;
    invoke-static {v2, v0}, Lcom/facebook/share/ShareApi;->stageOpenGraphAction(Landroid/os/Bundle;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V

    .line 183
    return-void
.end method

.method private sharePhotoContent(Lcom/facebook/share/model/SharePhotoContent;Lcom/facebook/FacebookCallback;)V
    .registers 18
    .param p1, "photoContent"    # Lcom/facebook/share/model/SharePhotoContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/share/model/SharePhotoContent;",
            "Lcom/facebook/FacebookCallback",
            "<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p2, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    new-instance v5, Lcom/facebook/internal/Mutable;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v5, v2}, Lcom/facebook/internal/Mutable;-><init>(Ljava/lang/Object;)V

    .line 237
    .local v5, "requestCount":Lcom/facebook/internal/Mutable;, "Lcom/facebook/internal/Mutable<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v7

    .line 238
    .local v7, "accessToken":Lcom/facebook/AccessToken;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v14, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/GraphRequest;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v3, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v4, "errorResponses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/GraphResponse;>;"
    new-instance v1, Lcom/facebook/share/ShareApi$3;

    move-object v2, p0

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/facebook/share/ShareApi$3;-><init>(Lcom/facebook/share/ShareApi;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/facebook/internal/Mutable;Lcom/facebook/FacebookCallback;)V

    .line 269
    .local v1, "requestCallback":Lcom/facebook/GraphRequest$Callback;
    :try_start_25
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/share/model/SharePhotoContent;->getPhotos()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_2d
    :goto_2d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/share/model/SharePhoto;

    .line 270
    .local v11, "photo":Lcom/facebook/share/model/SharePhoto;
    invoke-virtual {v11}, Lcom/facebook/share/model/SharePhoto;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    .line 271
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v11}, Lcom/facebook/share/model/SharePhoto;->getImageUrl()Landroid/net/Uri;

    move-result-object v12

    .line 272
    .local v12, "photoUri":Landroid/net/Uri;
    if-eqz v8, :cond_52

    .line 273
    invoke-static {v7, v8, v1}, Lcom/facebook/share/internal/ShareInternalUtility;->newUploadPhotoRequest(Lcom/facebook/AccessToken;Landroid/graphics/Bitmap;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4a
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_4a} :catch_4b

    goto :goto_2d

    .line 288
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "photo":Lcom/facebook/share/model/SharePhoto;
    .end local v12    # "photoUri":Landroid/net/Uri;
    :catch_4b
    move-exception v9

    .line 289
    .local v9, "ex":Ljava/io/FileNotFoundException;
    move-object/from16 v0, p2

    invoke-static {v0, v9}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeCallbackWithException(Lcom/facebook/FacebookCallback;Ljava/lang/Exception;)V

    .line 291
    .end local v9    # "ex":Ljava/io/FileNotFoundException;
    :cond_51
    return-void

    .line 277
    .restart local v8    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v11    # "photo":Lcom/facebook/share/model/SharePhoto;
    .restart local v12    # "photoUri":Landroid/net/Uri;
    :cond_52
    if-eqz v12, :cond_2d

    .line 278
    :try_start_54
    invoke-static {v7, v12, v1}, Lcom/facebook/share/internal/ShareInternalUtility;->newUploadPhotoRequest(Lcom/facebook/AccessToken;Landroid/net/Uri;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 284
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .end local v11    # "photo":Lcom/facebook/share/model/SharePhoto;
    .end local v12    # "photoUri":Landroid/net/Uri;
    :cond_5c
    iget-object v2, v5, Lcom/facebook/internal/Mutable;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v5, Lcom/facebook/internal/Mutable;->value:Ljava/lang/Object;

    .line 285
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_73
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/facebook/GraphRequest;

    .line 286
    .local v13, "request":Lcom/facebook/GraphRequest;
    invoke-virtual {v13}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;
    :try_end_82
    .catch Ljava/io/FileNotFoundException; {:try_start_54 .. :try_end_82} :catch_4b

    goto :goto_73
.end method

.method private shareVideoContent(Lcom/facebook/share/model/ShareVideoContent;Lcom/facebook/FacebookCallback;)V
    .registers 9
    .param p1, "videoContent"    # Lcom/facebook/share/model/ShareVideoContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/share/model/ShareVideoContent;",
            "Lcom/facebook/FacebookCallback",
            "<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 319
    .local p2, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    new-instance v2, Lcom/facebook/share/ShareApi$5;

    invoke-direct {v2, p0, p2}, Lcom/facebook/share/ShareApi$5;-><init>(Lcom/facebook/share/ShareApi;Lcom/facebook/FacebookCallback;)V

    .line 335
    .local v2, "requestCallback":Lcom/facebook/GraphRequest$Callback;
    :try_start_5
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v4

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareVideoContent;->getVideo()Lcom/facebook/share/model/ShareVideo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/share/model/ShareVideo;->getLocalUrl()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/facebook/share/internal/ShareInternalUtility;->newUploadVideoRequest(Lcom/facebook/AccessToken;Landroid/net/Uri;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_14} :catch_3c

    move-result-object v3

    .line 344
    .local v3, "videoRequest":Lcom/facebook/GraphRequest;
    invoke-virtual {v3}, Lcom/facebook/GraphRequest;->getParameters()Landroid/os/Bundle;

    move-result-object v1

    .line 345
    .local v1, "parameters":Landroid/os/Bundle;
    const-string/jumbo v4, "title"

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareVideoContent;->getContentTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string v4, "description"

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareVideoContent;->getContentDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string v4, "ref"

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareVideoContent;->getRef()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-virtual {v3, v1}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 350
    invoke-virtual {v3}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    .line 351
    .end local v1    # "parameters":Landroid/os/Bundle;
    .end local v3    # "videoRequest":Lcom/facebook/GraphRequest;
    :goto_3b
    return-void

    .line 339
    :catch_3c
    move-exception v0

    .line 340
    .local v0, "ex":Ljava/io/FileNotFoundException;
    invoke-static {p2, v0}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeCallbackWithException(Lcom/facebook/FacebookCallback;Ljava/lang/Exception;)V

    goto :goto_3b
.end method

.method private static stageArrayList(Ljava/util/ArrayList;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
    .registers 5
    .param p0, "arrayList"    # Ljava/util/ArrayList;
    .param p1, "onArrayListStagedListener"    # Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    .prologue
    .line 356
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 357
    .local v2, "stagedObject":Lorg/json/JSONArray;
    new-instance v0, Lcom/facebook/share/ShareApi$6;

    invoke-direct {v0, p0, v2}, Lcom/facebook/share/ShareApi$6;-><init>(Ljava/util/ArrayList;Lorg/json/JSONArray;)V

    .line 400
    .local v0, "collection":Lcom/facebook/internal/CollectionMapper$Collection;, "Lcom/facebook/internal/CollectionMapper$Collection<Ljava/lang/Integer;>;"
    new-instance v1, Lcom/facebook/share/ShareApi$7;

    invoke-direct {v1, p1, v2}, Lcom/facebook/share/ShareApi$7;-><init>(Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;Lorg/json/JSONArray;)V

    .line 412
    .local v1, "onStagedArrayMapperCompleteListener":Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;
    invoke-static {v0, v1}, Lcom/facebook/share/ShareApi;->stageCollectionValues(Lcom/facebook/internal/CollectionMapper$Collection;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V

    .line 413
    return-void
.end method

.method private static stageCollectionValues(Lcom/facebook/internal/CollectionMapper$Collection;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V
    .registers 3
    .param p1, "onCollectionValuesStagedListener"    # Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/internal/CollectionMapper$Collection",
            "<TT;>;",
            "Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 418
    .local p0, "collection":Lcom/facebook/internal/CollectionMapper$Collection;, "Lcom/facebook/internal/CollectionMapper$Collection<TT;>;"
    new-instance v0, Lcom/facebook/share/ShareApi$8;

    invoke-direct {v0}, Lcom/facebook/share/ShareApi$8;-><init>()V

    .line 436
    .local v0, "valueMapper":Lcom/facebook/internal/CollectionMapper$ValueMapper;
    invoke-static {p0, v0, p1}, Lcom/facebook/internal/CollectionMapper;->iterate(Lcom/facebook/internal/CollectionMapper$Collection;Lcom/facebook/internal/CollectionMapper$ValueMapper;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V

    .line 437
    return-void
.end method

.method private static stageOpenGraphAction(Landroid/os/Bundle;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V
    .registers 3
    .param p0, "parameters"    # Landroid/os/Bundle;
    .param p1, "onOpenGraphActionStagedListener"    # Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;

    .prologue
    .line 442
    new-instance v0, Lcom/facebook/share/ShareApi$9;

    invoke-direct {v0, p0}, Lcom/facebook/share/ShareApi$9;-><init>(Landroid/os/Bundle;)V

    .line 464
    .local v0, "collection":Lcom/facebook/internal/CollectionMapper$Collection;, "Lcom/facebook/internal/CollectionMapper$Collection<Ljava/lang/String;>;"
    invoke-static {v0, p1}, Lcom/facebook/share/ShareApi;->stageCollectionValues(Lcom/facebook/internal/CollectionMapper$Collection;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V

    .line 465
    return-void
.end method

.method private static stageOpenGraphObject(Lcom/facebook/share/model/ShareOpenGraphObject;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
    .registers 10
    .param p0, "object"    # Lcom/facebook/share/model/ShareOpenGraphObject;
    .param p1, "onOpenGraphObjectStagedListener"    # Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    .prologue
    .line 470
    const-string/jumbo v6, "type"

    invoke-virtual {p0, v6}, Lcom/facebook/share/model/ShareOpenGraphObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 471
    .local v5, "type":Ljava/lang/String;
    if-nez v5, :cond_f

    .line 472
    const-string v6, "og:type"

    invoke-virtual {p0, v6}, Lcom/facebook/share/model/ShareOpenGraphObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 475
    :cond_f
    if-nez v5, :cond_1c

    .line 476
    new-instance v6, Lcom/facebook/FacebookException;

    const-string v7, "Open Graph objects must contain a type value."

    invoke-direct {v6, v7}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v6}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onError(Lcom/facebook/FacebookException;)V

    .line 568
    :goto_1b
    return-void

    .line 480
    :cond_1c
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 481
    .local v4, "stagedObject":Lorg/json/JSONObject;
    new-instance v0, Lcom/facebook/share/ShareApi$10;

    invoke-direct {v0, p0, v4}, Lcom/facebook/share/ShareApi$10;-><init>(Lcom/facebook/share/model/ShareOpenGraphObject;Lorg/json/JSONObject;)V

    .line 508
    .local v0, "collection":Lcom/facebook/internal/CollectionMapper$Collection;, "Lcom/facebook/internal/CollectionMapper$Collection<Ljava/lang/String;>;"
    new-instance v3, Lcom/facebook/share/ShareApi$11;

    invoke-direct {v3, p1}, Lcom/facebook/share/ShareApi$11;-><init>(Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V

    .line 538
    .local v3, "requestCallback":Lcom/facebook/GraphRequest$Callback;
    move-object v1, v5

    .line 539
    .local v1, "ogType":Ljava/lang/String;
    new-instance v2, Lcom/facebook/share/ShareApi$12;

    invoke-direct {v2, v4, v1, v3, p1}, Lcom/facebook/share/ShareApi$12;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V

    .line 567
    .local v2, "onMapperCompleteListener":Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;
    invoke-static {v0, v2}, Lcom/facebook/share/ShareApi;->stageCollectionValues(Lcom/facebook/internal/CollectionMapper$Collection;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V

    goto :goto_1b
.end method

.method private static stagePhoto(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
    .registers 9
    .param p0, "photo"    # Lcom/facebook/share/model/SharePhoto;
    .param p1, "onPhotoStagedListener"    # Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    .prologue
    .line 573
    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhoto;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 574
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhoto;->getImageUrl()Landroid/net/Uri;

    move-result-object v2

    .line 575
    .local v2, "imageUrl":Landroid/net/Uri;
    if-nez v0, :cond_c

    if-eqz v2, :cond_3d

    .line 576
    :cond_c
    new-instance v4, Lcom/facebook/share/ShareApi$13;

    invoke-direct {v4, p1, p0}, Lcom/facebook/share/ShareApi$13;-><init>(Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;Lcom/facebook/share/model/SharePhoto;)V

    .line 617
    .local v4, "requestCallback":Lcom/facebook/GraphRequest$Callback;
    if-eqz v0, :cond_1f

    .line 618
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v5

    invoke-static {v5, v0, v4}, Lcom/facebook/share/internal/ShareInternalUtility;->newUploadStagingResourceWithImageRequest(Lcom/facebook/AccessToken;Landroid/graphics/Bitmap;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    .line 640
    .end local v4    # "requestCallback":Lcom/facebook/GraphRequest$Callback;
    :goto_1e
    return-void

    .line 624
    .restart local v4    # "requestCallback":Lcom/facebook/GraphRequest$Callback;
    :cond_1f
    :try_start_1f
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v5

    invoke-static {v5, v2, v4}, Lcom/facebook/share/internal/ShareInternalUtility;->newUploadStagingResourceWithImageRequest(Lcom/facebook/AccessToken;Landroid/net/Uri;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;
    :try_end_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_2a} :catch_2b

    goto :goto_1e

    .line 628
    :catch_2b
    move-exception v1

    .line 629
    .local v1, "ex":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    .line 630
    .local v3, "message":Ljava/lang/String;
    if-nez v3, :cond_34

    .line 631
    const-string v3, "Error staging photo."

    .line 633
    :cond_34
    new-instance v5, Lcom/facebook/FacebookException;

    invoke-direct {v5, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v5}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onError(Lcom/facebook/FacebookException;)V

    goto :goto_1e

    .line 637
    .end local v1    # "ex":Ljava/io/FileNotFoundException;
    .end local v3    # "message":Ljava/lang/String;
    .end local v4    # "requestCallback":Lcom/facebook/GraphRequest$Callback;
    :cond_3d
    new-instance v5, Lcom/facebook/FacebookException;

    const-string v6, "Photos must have an imageURL or bitmap."

    invoke-direct {v5, v6}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v5}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onError(Lcom/facebook/FacebookException;)V

    goto :goto_1e
.end method


# virtual methods
.method public canShare()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 95
    invoke-virtual {p0}, Lcom/facebook/share/ShareApi;->getShareContent()Lcom/facebook/share/model/ShareContent;

    move-result-object v3

    if-nez v3, :cond_8

    .line 106
    :cond_7
    :goto_7
    return v2

    .line 98
    :cond_8
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 99
    .local v0, "accessToken":Lcom/facebook/AccessToken;
    if-eqz v0, :cond_7

    .line 102
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v1

    .line 103
    .local v1, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_7

    .line 106
    const-string v2, "publish_actions"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_7
.end method

.method public getShareContent()Lcom/facebook/share/model/ShareContent;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/facebook/share/ShareApi;->shareContent:Lcom/facebook/share/model/ShareContent;

    return-object v0
.end method

.method public share(Lcom/facebook/FacebookCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/FacebookCallback",
            "<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    invoke-virtual {p0}, Lcom/facebook/share/ShareApi;->canShare()Z

    move-result v2

    if-nez v2, :cond_c

    .line 116
    const-string v2, "Insufficient permissions for sharing content via Api."

    invoke-static {p1, v2}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeCallbackWithError(Lcom/facebook/FacebookCallback;Ljava/lang/String;)V

    .line 140
    :cond_b
    :goto_b
    return-void

    .line 120
    :cond_c
    invoke-virtual {p0}, Lcom/facebook/share/ShareApi;->getShareContent()Lcom/facebook/share/model/ShareContent;

    move-result-object v1

    .line 124
    .local v1, "shareContent":Lcom/facebook/share/model/ShareContent;
    :try_start_10
    invoke-static {v1}, Lcom/facebook/share/internal/ShareContentValidation;->validateForApiShare(Lcom/facebook/share/model/ShareContent;)V
    :try_end_13
    .catch Lcom/facebook/FacebookException; {:try_start_10 .. :try_end_13} :catch_1d

    .line 130
    instance-of v2, v1, Lcom/facebook/share/model/ShareLinkContent;

    if-eqz v2, :cond_22

    .line 131
    check-cast v1, Lcom/facebook/share/model/ShareLinkContent;

    .end local v1    # "shareContent":Lcom/facebook/share/model/ShareContent;
    invoke-direct {p0, v1, p1}, Lcom/facebook/share/ShareApi;->shareLinkContent(Lcom/facebook/share/model/ShareLinkContent;Lcom/facebook/FacebookCallback;)V

    goto :goto_b

    .line 125
    .restart local v1    # "shareContent":Lcom/facebook/share/model/ShareContent;
    :catch_1d
    move-exception v0

    .line 126
    .local v0, "ex":Lcom/facebook/FacebookException;
    invoke-static {p1, v0}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeCallbackWithException(Lcom/facebook/FacebookCallback;Ljava/lang/Exception;)V

    goto :goto_b

    .line 132
    .end local v0    # "ex":Lcom/facebook/FacebookException;
    :cond_22
    instance-of v2, v1, Lcom/facebook/share/model/SharePhotoContent;

    if-eqz v2, :cond_2c

    .line 133
    check-cast v1, Lcom/facebook/share/model/SharePhotoContent;

    .end local v1    # "shareContent":Lcom/facebook/share/model/ShareContent;
    invoke-direct {p0, v1, p1}, Lcom/facebook/share/ShareApi;->sharePhotoContent(Lcom/facebook/share/model/SharePhotoContent;Lcom/facebook/FacebookCallback;)V

    goto :goto_b

    .line 134
    .restart local v1    # "shareContent":Lcom/facebook/share/model/ShareContent;
    :cond_2c
    instance-of v2, v1, Lcom/facebook/share/model/ShareVideoContent;

    if-eqz v2, :cond_36

    .line 135
    check-cast v1, Lcom/facebook/share/model/ShareVideoContent;

    .end local v1    # "shareContent":Lcom/facebook/share/model/ShareContent;
    invoke-direct {p0, v1, p1}, Lcom/facebook/share/ShareApi;->shareVideoContent(Lcom/facebook/share/model/ShareVideoContent;Lcom/facebook/FacebookCallback;)V

    goto :goto_b

    .line 136
    .restart local v1    # "shareContent":Lcom/facebook/share/model/ShareContent;
    :cond_36
    instance-of v2, v1, Lcom/facebook/share/model/ShareOpenGraphContent;

    if-eqz v2, :cond_b

    .line 137
    check-cast v1, Lcom/facebook/share/model/ShareOpenGraphContent;

    .end local v1    # "shareContent":Lcom/facebook/share/model/ShareContent;
    invoke-direct {p0, v1, p1}, Lcom/facebook/share/ShareApi;->shareOpenGraphContent(Lcom/facebook/share/model/ShareOpenGraphContent;Lcom/facebook/FacebookCallback;)V

    goto :goto_b
.end method
