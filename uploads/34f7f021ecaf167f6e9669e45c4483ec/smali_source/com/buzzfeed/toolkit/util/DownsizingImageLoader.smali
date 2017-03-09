.class public Lcom/buzzfeed/toolkit/util/DownsizingImageLoader;
.super Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;
.source "DownsizingImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/toolkit/util/DownsizingImageLoader$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final IMAGE_WIDTH_BUCKETS:[I

.field private static final MAX_IMAGE_WIDTH:I = 0x780

.field private static final METHOD_DOWNSIZE:Ljava/lang/String; = "downsize"

.field private static final METHOD_OUTPUT_FORMAT:Ljava/lang/String; = "output-format"

.field private static final METHOD_OUTPUT_QUALITY:Ljava/lang/String; = "output-quality"

.field private static final METHOD_RESIZE:Ljava/lang/String; = "resize"

.field private static final PARAM_MAINTAIN_RATIO:Ljava/lang/String; = ":*"

.field private static final VALUE_OUTPUT_FORMAT:Ljava/lang/String; = "image/webp"

.field private static final VALUE_OUTPUT_QUALITY:Ljava/lang/String; = "80"


# instance fields
.field private final mImageProcessingEndpoints:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/buzzfeed/toolkit/util/DownsizingImageLoader;->IMAGE_WIDTH_BUCKETS:[I

    return-void

    :array_a
    .array-data 4
        0x32
        0x64
        0xc8
        0x190
        0x258
        0x320
        0x3e8
        0x4b0
        0x640
        0x780
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/model/ModelLoader;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p2, "urlLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<Lcom/bumptech/glide/load/model/GlideUrl;Ljava/io/InputStream;>;"
    invoke-direct {p0, p2}, Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;-><init>(Lcom/bumptech/glide/load/model/ModelLoader;)V

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/buzzfeed/toolkit/R$array;->image_processing_endpoints:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/util/DownsizingImageLoader;->mImageProcessingEndpoints:[Ljava/lang/String;

    .line 56
    return-void
.end method

.method private ensureImageProcessingEndpoint(Ljava/lang/String;)Z
    .registers 8
    .param p1, "model"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 112
    iget-object v2, p0, Lcom/buzzfeed/toolkit/util/DownsizingImageLoader;->mImageProcessingEndpoints:[Ljava/lang/String;

    if-nez v2, :cond_6

    .line 122
    :cond_5
    :goto_5
    return v1

    .line 116
    :cond_6
    iget-object v3, p0, Lcom/buzzfeed/toolkit/util/DownsizingImageLoader;->mImageProcessingEndpoints:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_a
    if-ge v2, v4, :cond_5

    aget-object v0, v3, v2

    .line 117
    .local v0, "domain":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 118
    const/4 v1, 0x1

    goto :goto_5

    .line 116
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_a
.end method

.method private findBestImageBucket(I)I
    .registers 7
    .param p1, "width"    # I

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "bestBucket":I
    sget-object v3, Lcom/buzzfeed/toolkit/util/DownsizingImageLoader;->IMAGE_WIDTH_BUCKETS:[I

    array-length v4, v3

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v4, :cond_c

    aget v1, v3, v2

    .line 96
    .local v1, "bucket":I
    move v0, v1

    .line 97
    if-lt v0, p1, :cond_d

    .line 102
    .end local v1    # "bucket":I
    :cond_c
    return v0

    .line 95
    .restart local v1    # "bucket":I
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_5
.end method


# virtual methods
.method protected bridge synthetic getUrl(Ljava/lang/Object;II)Ljava/lang/String;
    .registers 5

    .prologue
    .line 26
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/buzzfeed/toolkit/util/DownsizingImageLoader;->getUrl(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUrl(Ljava/lang/String;II)Ljava/lang/String;
    .registers 11
    .param p1, "model"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 60
    if-eqz p2, :cond_a

    if-eqz p3, :cond_a

    invoke-direct {p0, p1}, Lcom/buzzfeed/toolkit/util/DownsizingImageLoader;->ensureImageProcessingEndpoint(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 81
    .end local p1    # "model":Ljava/lang/String;
    :cond_a
    :goto_a
    return-object p1

    .line 64
    .restart local p1    # "model":Ljava/lang/String;
    :cond_b
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 65
    .local v3, "modelUri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 66
    .local v1, "modelBuilder":Landroid/net/Uri$Builder;
    invoke-virtual {v3}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v2

    .line 68
    .local v2, "modelParameters":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v4, "downsize"

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_43

    const-string v4, "resize"

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_43

    .line 69
    invoke-direct {p0, p2}, Lcom/buzzfeed/toolkit/util/DownsizingImageLoader;->findBestImageBucket(I)I

    move-result v0

    .line 70
    .local v0, "imageBucket":I
    const-string v4, "downsize"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 73
    .end local v0    # "imageBucket":I
    :cond_43
    const-string v4, "output-format"

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_52

    .line 74
    const-string v4, "output-format"

    const-string v5, "image/webp"

    invoke-virtual {v1, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 77
    :cond_52
    const-string v4, "output-quality"

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_61

    .line 78
    const-string v4, "output-quality"

    const-string v5, "80"

    invoke-virtual {v1, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 81
    :cond_61
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_a
.end method
