.class public interface abstract Lcom/twitter/sdk/android/core/services/MediaService;
.super Ljava/lang/Object;
.source "MediaService.java"


# virtual methods
.method public abstract upload(Lretrofit/mime/TypedFile;Lretrofit/mime/TypedFile;Lretrofit/mime/TypedString;Lcom/twitter/sdk/android/core/Callback;)V
    .param p1    # Lretrofit/mime/TypedFile;
        .annotation runtime Lretrofit/http/Part;
            value = "media"
        .end annotation
    .end param
    .param p2    # Lretrofit/mime/TypedFile;
        .annotation runtime Lretrofit/http/Part;
            value = "media_data"
        .end annotation
    .end param
    .param p3    # Lretrofit/mime/TypedString;
        .annotation runtime Lretrofit/http/Part;
            value = "additional_owners"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/mime/TypedFile;",
            "Lretrofit/mime/TypedFile;",
            "Lretrofit/mime/TypedString;",
            "Lcom/twitter/sdk/android/core/Callback",
            "<",
            "Lcom/twitter/sdk/android/core/models/Media;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/Multipart;
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/1.1/media/upload.json"
    .end annotation
.end method
