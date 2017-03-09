.class public final Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$ImageSaveParamBuilder;
.super Ljava/lang/Object;
.source "CommentServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImageSaveParamBuilder"
.end annotation


# static fields
.field private static final IMAGE_CONTRIBUTION_BLURB:Ljava/lang/String; = "blurb"

.field private static final IMAGE_CONTRIBUTION_BUZZ_ID:Ljava/lang/String; = "buzz_id"

.field private static final IMAGE_CONTRIBUTION_FORM:Ljava/lang/String; = "form"

.field private static final IMAGE_CONTRIBUTION_HEIGHT:Ljava/lang/String; = "height"

.field private static final IMAGE_CONTRIBUTION_URL:Ljava/lang/String; = "url"

.field private static final IMAGE_CONTRIBUTION_WIDTH:Ljava/lang/String; = "width"


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
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$ImageSaveParamBuilder;->mParamMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public blurb(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$ImageSaveParamBuilder;
    .registers 4
    .param p1, "blurb"    # Ljava/lang/String;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$ImageSaveParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "blurb"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
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
    .line 227
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$ImageSaveParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "api_client"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$ImageSaveParamBuilder;->mParamMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public buzzId(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$ImageSaveParamBuilder;
    .registers 4
    .param p1, "buzzId"    # Ljava/lang/String;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$ImageSaveParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "buzz_id"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    return-object p0
.end method

.method public form(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$ImageSaveParamBuilder;
    .registers 4
    .param p1, "form"    # Ljava/lang/String;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$ImageSaveParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "form"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    return-object p0
.end method

.method public height(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$ImageSaveParamBuilder;
    .registers 4
    .param p1, "height"    # Ljava/lang/String;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$ImageSaveParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "height"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    return-object p0
.end method

.method public sessionKey(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$ImageSaveParamBuilder;
    .registers 4
    .param p1, "sessionKey"    # Ljava/lang/String;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$ImageSaveParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "session_key"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    return-object p0
.end method

.method public url(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$ImageSaveParamBuilder;
    .registers 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$ImageSaveParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    return-object p0
.end method

.method public width(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$ImageSaveParamBuilder;
    .registers 4
    .param p1, "width"    # Ljava/lang/String;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$ImageSaveParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string/jumbo v1, "width"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    return-object p0
.end method
