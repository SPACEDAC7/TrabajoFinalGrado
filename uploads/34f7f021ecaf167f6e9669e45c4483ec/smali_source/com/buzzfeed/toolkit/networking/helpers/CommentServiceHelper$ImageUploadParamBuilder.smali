.class public final Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$ImageUploadParamBuilder;
.super Ljava/lang/Object;
.source "CommentServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImageUploadParamBuilder"
.end annotation


# static fields
.field static final IMAGE_CONTRIBUTION_ACTION:Ljava/lang/String; = "action"

.field static final IMAGE_CONTRIBUTION_MIN_HEIGHT:Ljava/lang/String; = "minHeight"

.field static final IMAGE_CONTRIBUTION_MIN_WIDTH:Ljava/lang/String; = "minWidth"

.field static final PARAM_MIN_HEIGHT:Ljava/lang/String; = "1"

.field static final PARAM_MIN_WIDTH:Ljava/lang/String; = "1"

.field static final PARAM_UPLOAD_ACTION:Ljava/lang/String; = "imageupload"


# instance fields
.field private mParamMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lokhttp3/RequestBody;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$ImageUploadParamBuilder;->mParamMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public build()Ljava/util/HashMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lokhttp3/RequestBody;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    const-string v4, "android"

    invoke-static {v4}, Lcom/buzzfeed/toolkit/util/MultipartRequestHelper;->createPartFromString(Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 168
    .local v0, "apiClientKey":Lokhttp3/RequestBody;
    const-string v4, "1"

    invoke-static {v4}, Lcom/buzzfeed/toolkit/util/MultipartRequestHelper;->createPartFromString(Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v1

    .line 169
    .local v1, "minHeight":Lokhttp3/RequestBody;
    const-string v4, "1"

    invoke-static {v4}, Lcom/buzzfeed/toolkit/util/MultipartRequestHelper;->createPartFromString(Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v2

    .line 170
    .local v2, "minWidth":Lokhttp3/RequestBody;
    const-string v4, "imageupload"

    invoke-static {v4}, Lcom/buzzfeed/toolkit/util/MultipartRequestHelper;->createPartFromString(Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v3

    .line 172
    .local v3, "uploadAction":Lokhttp3/RequestBody;
    iget-object v4, p0, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$ImageUploadParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v5, "minHeight"

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v4, p0, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$ImageUploadParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v5, "minWidth"

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v4, p0, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$ImageUploadParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v5, "action"

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v4, p0, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$ImageUploadParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v5, "api_client"

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v4, p0, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$ImageUploadParamBuilder;->mParamMap:Ljava/util/HashMap;

    return-object v4
.end method
