.class public Lcom/bumptech/glide/load/resource/file/FileResource;
.super Lcom/bumptech/glide/load/resource/SimpleResource;
.source "FileResource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/resource/SimpleResource",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/resource/SimpleResource;-><init>(Ljava/lang/Object;)V

    .line 13
    return-void
.end method
