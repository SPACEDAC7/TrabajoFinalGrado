.class public Lcom/buzzfeed/toolkit/util/MultipartRequestHelper;
.super Ljava/lang/Object;
.source "MultipartRequestHelper.java"


# static fields
.field private static final MULTIPART_FORM_DATA:Ljava/lang/String; = "multipart/form-data"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPartFromString(Ljava/lang/String;)Lokhttp3/RequestBody;
    .registers 2
    .param p0, "descriptionString"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 16
    const-string v0, "multipart/form-data"

    .line 17
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    .line 16
    invoke-static {v0, p0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    return-object v0
.end method

.method public static prepareFilePart(Ljava/lang/String;Ljava/io/File;)Lokhttp3/MultipartBody$Part;
    .registers 4
    .param p0, "partName"    # Ljava/lang/String;
    .param p1, "file"    # Ljava/io/File;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 23
    const-string v1, "multipart/form-data"

    .line 24
    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-static {v1, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 27
    .local v0, "requestFile":Lokhttp3/RequestBody;
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lokhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object v1

    return-object v1
.end method
