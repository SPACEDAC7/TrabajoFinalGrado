.class Lcom/google/ads/interactivemedia/v3/impl/z$1;
.super Landroid/os/AsyncTask;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/impl/z;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Exception;

.field final synthetic b:Lcom/google/ads/interactivemedia/v3/impl/z;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/z;)V
    .registers 3

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/z$1;->b:Lcom/google/ads/interactivemedia/v3/impl/z;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/z$1;->a:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .registers 4

    .prologue
    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/z$1;->b:Lcom/google/ads/interactivemedia/v3/impl/z;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/z$1;->b:Lcom/google/ads/interactivemedia/v3/impl/z;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/z;->a(Lcom/google/ads/interactivemedia/v3/impl/z;)Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;->src()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/z;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v0

    .line 65
    :goto_10
    return-object v0

    .line 63
    :catch_11
    move-exception v0

    .line 64
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/z$1;->a:Ljava/lang/Exception;

    .line 65
    const/4 v0, 0x0

    goto :goto_10
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .registers 7

    .prologue
    .line 71
    if-nez p1, :cond_4c

    .line 72
    const-string v0, "IMASDK"

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/z$1;->b:Lcom/google/ads/interactivemedia/v3/impl/z;

    .line 73
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/z;->a(Lcom/google/ads/interactivemedia/v3/impl/z;)Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;->src()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/z$1;->a:Ljava/lang/Exception;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x21

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Loading image companion "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " failed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :goto_4b
    return-void

    .line 76
    :cond_4c
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/z$1;->b:Lcom/google/ads/interactivemedia/v3/impl/z;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/z;->b(Lcom/google/ads/interactivemedia/v3/impl/z;)V

    .line 77
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/z$1;->b:Lcom/google/ads/interactivemedia/v3/impl/z;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/z;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4b
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 55
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/z$1;->a([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 55
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/z$1;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
